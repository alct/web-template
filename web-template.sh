#!/usr/bin/env bash

# get the absolute path of the script
script_source_path() {
  local source="${BASH_SOURCE[0]}"

  while [[ -h "${source}" ]]; do
    source="$(readlink "${source}")"
  done

  dirname "${source}" || exit 1
}

# named echo wrapper
status () {
  echo "web-template: ${1}"
}

main() {
  local src_dir
  local dst_dir

  src_dir="$(script_source_path)/src/"

  # if no dst_dir is provided, default to current directory
  dst_dir="${1:-.}"

  # if dst_dir is the current directory, ask for confirmation
  if [[ "${dst_dir}" == "." ]]; then
      read -p "web-template: copy files in the current directory? [y/N] " -n 1 -r

      if [[ ! "${REPLY}" =~ ^[Yy]$ ]]; then
          echo
          status "aborting"
          exit 1
      else
          echo
      fi
  fi

  # create destination directory if it does not exist
  if [[ ! -d "${dst_dir}" ]]; then
      status "creating destination directory"
      mkdir --parents "${dst_dir}"
  fi

  # copy files
  status "copying files"

  if ! cp --interactive --preserve=mode,ownership,timestamps --recursive "${src_dir}." "${dst_dir}"; then
    status "an error occured while copying files"
    exit 1
  fi

  status "thunderbirds are go!"
}

main "$@"
