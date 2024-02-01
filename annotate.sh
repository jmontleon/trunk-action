#!/bin/bash

# shellcheck disable=SC2086

set -xeuo pipefail

"${TRUNK_PATH}" check github_annotate --help

"${TRUNK_PATH}" check github_annotate \
  --ci \
  --verbose \
  --upstream HEAD \
  --github-commit "${GITHUB_EVENT_WORKFLOW_RUN_HEAD_SHA}" \
  --github-label "${INPUT_LABEL}" \
  "${TRUNK_TMPDIR}/annotations.bin" \
  ${INPUT_ARGUMENTS}
