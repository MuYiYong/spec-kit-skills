<div align="center">

# Spec Kit Skills

**Ready-to-use [GitHub Spec Kit](https://github.com/github/spec-kit) Skills for CC Switch and other Skill-compatible AI coding agents.**

No local generation. No manual maintenance. Automatically kept in sync with stable GitHub Spec Kit releases.

[English](./README.md) · [简体中文](./README.zh-CN.md)

[![Latest Release](https://img.shields.io/github/v/release/MuYiYong/spec-kit-skills?label=release)](https://github.com/MuYiYong/spec-kit-skills/releases/latest)
[![GitHub Stars](https://img.shields.io/github/stars/MuYiYong/spec-kit-skills?style=flat&logo=github)](https://github.com/MuYiYong/spec-kit-skills/stargazers)
[![GitHub Downloads](https://img.shields.io/github/downloads/MuYiYong/spec-kit-skills/total?label=downloads)](https://github.com/MuYiYong/spec-kit-skills/releases)
[![Upstream Spec Kit](https://img.shields.io/github/v/release/github/spec-kit?label=Spec%20Kit)](https://github.com/github/spec-kit/releases/latest)

**If this repository makes Spec Kit easier to use with your AI coding agents, please [⭐ star the repo](https://github.com/MuYiYong/spec-kit-skills).**

</div>

---

## What is this?

[GitHub Spec Kit](https://github.com/github/spec-kit) is a toolkit for **Spec-Driven Development**: a structured way to help AI coding agents move from an idea to a well-defined specification, implementation plan, executable tasks, and working code.

A typical flow looks like this:

```text
Requirements
    ↓
Specification
    ↓
Clarification
    ↓
Plan
    ↓
Tasks
    ↓
Analysis
    ↓
Implementation
    ↓
Convergence
```

This repository turns the official Spec Kit Codex integration into a **ready-to-consume Skills repository**. You can point CC Switch or another compatible agent tool at this repo instead of generating and maintaining the Skills yourself.

## Why use this repository?

| | Feature | What it gives you |
|---|---|---|
| 🚀 | **Ready to use** | Add the repository and start using the Skills directly. |
| 🔄 | **Automatically updated** | Tracks stable upstream GitHub Spec Kit releases. |
| 📦 | **Versioned releases** | Every mirrored version gets a matching GitHub Release. |
| ⬇️ | **Downloadable bundles** | ZIP and tar.gz archives are published with SHA-256 checksums. |
| 🔗 | **CC Switch friendly** | Designed to work as a custom Skills repository. |
| 🤖 | **Agent friendly** | Skills are exposed as `skills/<skill-name>/SKILL.md`. |
| 🧩 | **Complete workflow** | Covers specification, clarification, planning, tasks, analysis, implementation, and convergence. |

## Quick start

### CC Switch

Add this repository as a custom Skills repository:

```text
Repository:  https://github.com/MuYiYong/spec-kit-skills
Skills Path: skills
```

After syncing, the Spec Kit Skills will be available to compatible agents managed by CC Switch.

### Download a fixed version

If you prefer a pinned version instead of tracking `main`, download it from:

**[Latest Release →](https://github.com/MuYiYong/spec-kit-skills/releases/latest)**

Each release includes:

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

## Available Skills

### Core workflow

| Skill | Purpose |
|---|---|
| [`speckit-constitution`](./skills/speckit-constitution/SKILL.md) | Define or update project-wide principles, constraints, and engineering rules. |
| [`speckit-specify`](./skills/speckit-specify/SKILL.md) | Turn a natural-language feature request into a structured Feature Specification. |
| [`speckit-clarify`](./skills/speckit-clarify/SKILL.md) | Identify ambiguity, missing decisions, and underspecified requirements. |
| [`speckit-plan`](./skills/speckit-plan/SKILL.md) | Convert the specification into a technical implementation plan. |
| [`speckit-tasks`](./skills/speckit-tasks/SKILL.md) | Break the plan into executable tasks with ordering and dependencies. |
| [`speckit-analyze`](./skills/speckit-analyze/SKILL.md) | Check consistency and coverage across the specification, plan, and tasks. |
| [`speckit-implement`](./skills/speckit-implement/SKILL.md) | Execute the implementation based on the prepared task list. |
| [`speckit-converge`](./skills/speckit-converge/SKILL.md) | Compare the implementation with the specification and close remaining gaps. |

### Supporting Skills

| Skill | Purpose |
|---|---|
| [`speckit-checklist`](./skills/speckit-checklist/SKILL.md) | Generate requirement, design, code-review, or release checklists for a feature. |
| [`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md) | Convert tasks into dependency-aware GitHub Issues for team or multi-agent workflows. |

> The repository contents under [`skills/`](./skills) are the source of truth for the currently available Skills.

## Recommended workflow

```text
1. Constitution   Define project rules and long-term constraints
        ↓
2. Specify        Describe what needs to be built
        ↓
3. Clarify        Resolve ambiguity and missing decisions
        ↓
4. Plan           Design how it will be implemented
        ↓
5. Tasks          Break the plan into executable work
        ↓
6. Analyze        Check specification / plan / task consistency
        ↓
7. Implement      Build the feature
        ↓
8. Converge       Verify the implementation matches the specification
```

You do **not** need to run every Skill for every project. Use the steps that match the size, risk, and maturity of the work.

### Where the supporting Skills fit

- **Checklist** can be used at review gates such as requirement review, design review, code review, or pre-release validation.
- **Tasks to Issues** is useful when development is coordinated through GitHub Issues, GitHub Projects, a team, or multiple agents.

## Releases and versioning

This repository mirrors the stable release version of upstream Spec Kit:

```text
GitHub Spec Kit                 spec-kit-skills
     v1.0.6          ───────▶        v1.0.6
     v1.0.7          ───────▶        v1.0.7
       ...                             ...
```

For each mirrored version, the automation:

1. Detects the latest stable [`github/spec-kit`](https://github.com/github/spec-kit) release.
2. Generates the official Codex Skills using that exact upstream tag.
3. Updates the `skills/` tree and [`UPSTREAM_VERSION`](./UPSTREAM_VERSION).
4. Creates the matching Git tag and GitHub Release.
5. Publishes ZIP, tar.gz, and SHA-256 checksum files as Release Assets.

The workflow checks upstream once per day. If there is no new stable version and the matching release already exists, nothing is republished.

> Release archives are published as **GitHub Release Assets**. GitHub Packages is intentionally not used because these artifacts are downloadable Skill bundles rather than registry packages such as npm, Maven, NuGet, RubyGems, or container images.

## Repository structure

```text
spec-kit-skills/
├── .github/
│   └── workflows/
│       └── sync-spec-kit.yml
├── skills/
│   ├── speckit-analyze/
│   │   └── SKILL.md
│   ├── speckit-checklist/
│   │   └── SKILL.md
│   ├── speckit-clarify/
│   │   └── SKILL.md
│   ├── speckit-constitution/
│   │   └── SKILL.md
│   ├── speckit-converge/
│   │   └── SKILL.md
│   ├── speckit-implement/
│   │   └── SKILL.md
│   ├── speckit-plan/
│   │   └── SKILL.md
│   ├── speckit-specify/
│   │   └── SKILL.md
│   ├── speckit-tasks/
│   │   └── SKILL.md
│   └── speckit-taskstoissues/
│       └── SKILL.md
├── README.md
├── README.zh-CN.md
└── UPSTREAM_VERSION
```

## Compatibility

This repository is intended for tools that can consume a Skills directory based on `SKILL.md` files, including:

- CC Switch custom Skills repositories
- AI coding agents with `SKILL.md` support
- Agent tools that support external or custom Skills repositories

Loading and invocation behavior can differ between agent products, so refer to the documentation of the tool you use.

## Relationship to GitHub Spec Kit

This repository is a **distribution mirror for generated Spec Kit Skills**. The upstream project itself is maintained by GitHub:

**[github/spec-kit →](https://github.com/github/spec-kit)**

For Spec-Driven Development concepts, Spec Kit CLI usage, templates, upstream bugs, and feature requests, please use the official project as the authoritative source.

## Disclaimer

This is a **community-maintained distribution repository** and is not an official GitHub repository.

GitHub, Spec Kit, and related names and trademarks belong to their respective owners. Upstream behavior, documentation, licensing, and releases are governed by the official [`github/spec-kit`](https://github.com/github/spec-kit) project.

---

<div align="center">

### ⭐ Like the project?

If this repository saves you time, **[give it a Star](https://github.com/MuYiYong/spec-kit-skills)**. It helps more developers discover a simple way to use **Spec-Driven Development with AI coding agents**.

[![Star Spec Kit Skills](https://img.shields.io/github/stars/MuYiYong/spec-kit-skills?style=social)](https://github.com/MuYiYong/spec-kit-skills)

</div>
