gocloud() {
  # Set iCloud Folder as $base_dir
  local base_dir="${HOME}/Library/Mobile Documents/com~apple~CloudDocs"
  local target_dir="$base_dir/$1"

  if [[ -d "$target_dir" ]]; then
      # Perform the `cd` operation with the resolved directory
      cd $base_dir/$1
  else
      echo "Error: Folder '$1' does not exist in iCloud directory."
      echo
      echo "Usage: gocloud will allow you to cd into a folder inside your iCloud. It works relative to your iCloud folder and not your current directory."
      echo
      echo "Syntax: gocloud [folder]"
  fi
}
