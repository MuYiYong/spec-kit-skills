#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH="" cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(CDPATH="" cd "${SCRIPT_DIR}/.." && pwd)"
RUNTIME_DIR="${SKILL_DIR}/runtime/.specify"

if [[ ! -d "${RUNTIME_DIR}" ]]; then
  echo "ERROR: bundled Spec Kit runtime not found: ${RUNTIME_DIR}" >&2
  exit 1
fi

if [[ $# -gt 1 ]]; then
  echo "Usage: $0 [project-root]" >&2
  exit 2
fi

if [[ $# -eq 1 ]]; then
  PROJECT_ROOT="$(CDPATH="" cd "$1" && pwd)"
elif git_root="$(git rev-parse --show-toplevel 2>/dev/null)"; then
  PROJECT_ROOT="${git_root}"
else
  PROJECT_ROOT="$(pwd)"
fi

TARGET_DIR="${PROJECT_ROOT}/.specify"
mkdir -p "${TARGET_DIR}"

added=0

while IFS= read -r -d '' src_dir; do
  rel="${src_dir#${RUNTIME_DIR}/}"
  [[ "${src_dir}" == "${RUNTIME_DIR}" ]] && rel=""
  mkdir -p "${TARGET_DIR}${rel:+/${rel}}"
done < <(find "${RUNTIME_DIR}" -type d -print0)

while IFS= read -r -d '' src_file; do
  rel="${src_file#${RUNTIME_DIR}/}"
  dst_file="${TARGET_DIR}/${rel}"
  if [[ ! -e "${dst_file}" ]]; then
    mkdir -p "$(dirname "${dst_file}")"
    cp -p "${src_file}" "${dst_file}"
    echo "Added .specify/${rel}"
    added=$((added + 1))
  fi
done < <(find "${RUNTIME_DIR}" -type f -print0)

if [[ ! -e "${TARGET_DIR}/extensions.yml" ]]; then
  cat > "${TARGET_DIR}/extensions.yml" <<'EOF_EXTENSIONS'
# No Spec Kit extensions are configured yet.
hooks: {}
EOF_EXTENSIONS
  echo "Added .specify/extensions.yml"
  added=$((added + 1))
fi

if [[ -d "${TARGET_DIR}/scripts/bash" ]]; then
  find "${TARGET_DIR}/scripts/bash" -type f -name '*.sh' -exec chmod +x {} +
fi

echo "Spec Kit runtime ready at ${TARGET_DIR} (${added} missing file(s) added; existing files preserved)."
