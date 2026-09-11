# spec-kit-skills

Automatically generated Codex skills from the latest stable release of [`github/spec-kit`](https://github.com/github/spec-kit).

This repository is intended to be consumed as a skills repository by tools such as CC Switch. The generated skills are published under `skills/` and are produced by Spec Kit's official `codex` integration on GitHub-hosted Actions runners.

## Layout

```text
skills/
  speckit-constitution/SKILL.md
  speckit-specify/SKILL.md
  speckit-clarify/SKILL.md
  speckit-plan/SKILL.md
  speckit-tasks/SKILL.md
  speckit-analyze/SKILL.md
  speckit-implement/SKILL.md
  speckit-converge/SKILL.md
UPSTREAM_VERSION
```

## CC Switch

Use this repository as a custom skills repository and set the skills path to:

```text
skills
```

Repository:

```text
https://github.com/MuYiYong/spec-kit-skills
```

## Releases

Each mirrored Spec Kit version is published as a GitHub Release using the same upstream version tag. Every release contains downloadable installation archives:

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

The archives contain the generated `skills/` tree together with `README.md` and `UPSTREAM_VERSION`.

## Update policy

A GitHub Actions workflow checks `github/spec-kit` once per day. When a new stable GitHub Release is detected, the workflow:

1. Runs the matching Spec Kit release on a GitHub-hosted runner.
2. Generates the official Codex skills via `--integration codex`.
3. Replaces `skills/` with the generated output.
4. Updates `UPSTREAM_VERSION` and commits the generated skills to `main`.
5. Creates the matching version tag and GitHub Release.
6. Uploads ZIP, tar.gz, and SHA-256 checksum files as Release Assets.

GitHub Packages is intentionally not used because these artifacts are downloadable Skill bundles rather than npm, Maven, NuGet, RubyGems, or container packages.

## Source of truth

This repository does not hand-maintain the skill contents. Generated files come from the official Spec Kit release identified by `UPSTREAM_VERSION`.
