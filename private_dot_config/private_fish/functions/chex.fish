function chex --description 'Change file extension with confirmation'
    # Check if correct number of arguments are provided
    if test (count $argv) -ne 2
        echo "Usage: chex <filename> <new_extension>"
        return 1
    end

    # Store arguments
    set -l original_file $argv[1]
    set -l new_ext $argv[2]

    # Check if original file exists
    if not test -f "$original_file"
        echo "Error: File $original_file does not exist."
        return 1
    end

    # Get the base filename without extension
    set -l base_filename (string replace -r '\.[^.]*$' '' "$original_file")

    # Construct new filename
    set -l clean_ext (string trim -l -c '.' "$new_ext")
    set -l new_filename "$base_filename.$clean_ext"

    # Print confirmation message
    echo "About to rename:"
    echo "  From: $original_file"
    echo "  To:   $new_filename"

    # Ask for confirmation
    read -l -P "Proceed? (y/N) " confirm

    # Check confirmation
    switch $confirm
        case Y y
            # Rename the file
            mv "$original_file" "$new_filename"

            # Check if rename was successful
            if test $status -eq 0
                echo "File successfully renamed to $new_filename"
                return 0
            else
                echo "Error: Could not rename file"
                return 1
            end
        case '*'
            echo "Rename cancelled."
            return 1
    end
end
