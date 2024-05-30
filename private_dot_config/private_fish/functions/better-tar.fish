function better-tar --argument path --argument outname
  if set -q path
    if set -q outname
      tar cf - $path -P | pv -s (du -sb $path| awk '{print $1}') | gzip > $outname
    else
      echo "Usage: better-tar --path <path> --outname <outname>"
    end
  else
    echo "Usage: better-tar --path <path> --outname <outname>"
  end
end
