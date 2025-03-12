function check_git_repos
    # Function to check git repository status
    function __check_git_repo
        set -l repo_path $argv[1]
        set -l repo_name (basename $repo_path)
        set -l has_changes 0
        set -l current_dir (pwd)

        # Change to the repository directory
        cd $repo_path

        # Check for uncommitted changes
        if test (git status --porcelain 2>/dev/null | wc -l) -gt 0
            set_color red
            echo "$repo_name: Has uncommitted changes"
            set_color normal
            set has_changes 1
        end

        # Get current branch
        set -l current_branch (git rev-parse --abbrev-ref HEAD 2>/dev/null)

        # Check for unpushed commits on current branch
        if test -n "$current_branch"; and test "$current_branch" != HEAD
            set -l remote (git config --get branch.$current_branch.remote 2>/dev/null)
            set -l remote_branch (git config --get branch.$current_branch.merge 2>/dev/null)

            if test -n "$remote"; and test -n "$remote_branch"
                set remote_branch (string replace "refs/heads/" "" $remote_branch)
                if test (git log $remote/$remote_branch..$current_branch --oneline 2>/dev/null | wc -l) -gt 0
                    set_color yellow
                    echo "$repo_name: Has unpushed commits on branch '$current_branch'"
                    set_color normal
                    set has_changes 1
                end
            else
                set_color yellow
                echo "$repo_name: Branch '$current_branch' is not tracking any remote branch"
                set_color normal
                set has_changes 1
            end
        end

        # Check for other local branches with unpushed commits
        for branch in (git for-each-ref --format='%(refname:short)' refs/heads/ | grep -v "^$current_branch\$")
            set -l remote (git config --get branch.$branch.remote 2>/dev/null)
            set -l remote_branch (git config --get branch.$branch.merge 2>/dev/null)

            if test -n "$remote"; and test -n "$remote_branch"
                set remote_branch (string replace "refs/heads/" "" $remote_branch)
                if test (git log $remote/$remote_branch..$branch --oneline 2>/dev/null | wc -l) -gt 0
                    set_color blue
                    echo "$repo_name: Branch '$branch' has unpushed commits"
                    set_color normal
                    set has_changes 1
                end
            else
                set_color cyan
                echo "$repo_name: Branch '$branch' is not tracking any remote branch"
                set_color normal
                set has_changes 1
            end
        end

        # Print "clean" message if no changes found
        if test $has_changes -eq 0
            set_color green
            echo "$repo_name: Clean"
            set_color normal
        end

        # Return to the original directory
        cd $current_dir
    end

    # Start from the specified directory or current directory
    set -l start_dir "."
    if test (count $argv) -gt 0
        set start_dir $argv[1]
    end

    echo "Checking Git repositories under $start_dir"
    echo -------------------------------------------

    # Find all git repositories and process them
    for repo in (fd -t d -H '.git$' $start_dir | string replace -r '/\.git/$' '')
        __check_git_repo $repo
    end

    echo -------------------------------------------
    echo "Done checking repositories"

    # Clean up the inner function
    functions -e __check_git_repo
end
