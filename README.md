<div align="center">

# Spec Kit Skills

**Ready-to-use [GitHub Spec Kit](https://github.com/github/spec-kit) Skills for CC Switch and other Skill-compatible AI coding agents.**

No local generation. No manual maintenance. Kept aligned with stable GitHub Spec Kit releases.

[English](./README.md) · [简体中文](./README.zh-CN.md)

[![Latest Release](https://img.shields.io/github/v/release/MuYiYong/spec-kit-skills?label=release)](https://github.com/MuYiYong/spec-kit-skills/releases/latest)
[![GitHub Stars](https://img.shields.io/github/stars/MuYiYong/spec-kit-skills?style=flat&logo=github)](https://github.com/MuYiYong/spec-kit-skills/stargazers)
[![GitHub Downloads](https://img.shields.io/github/downloads/MuYiYong/spec-kit-skills/total?label=downloads)](https://github.com/MuYiYong/spec-kit-skills/releases)
[![Upstream Spec Kit](https://img.shields.io/github/v/release/github/spec-kit?label=Spec%20Kit)](https://github.com/github/spec-kit/releases/latest)

**If this repository makes Spec Kit easier to use with your AI coding agents, please [⭐ star the repo](https://github.com/MuYiYong/spec-kit-skills).**

</div>

---

## What is this?

[GitHub Spec Kit](https://github.com/github/spec-kit) is a toolkit for **Spec-Driven Development**: a structured way to help AI coding agents move from an idea to a clear specification, implementation plan, executable tasks, and working code.

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

This repository packages the official Spec Kit Codex-generated Skills as a **ready-to-consume Skills repository**. You can point CC Switch or another compatible agent tool at this repo instead of generating and maintaining the Skills yourself.

## Why use this repository?

| | Feature | What it gives you |
|---|---|---|
| 🚀 | **Ready to use** | Add the repository and start using the Skills directly. |
| 🔄 | **Kept up to date** | Tracks stable upstream GitHub Spec Kit releases. |
| 📦 | **Versioned releases** | Mirrored versions are available as GitHub Releases. |
| ⬇️ | **Downloadable bundles** | ZIP and tar.gz archives are available with SHA-256 checksums. |
| 🔗 | **CC Switch friendly** | Designed to work as a custom Skills repository. |
| 🤖 | **Agent friendly** | Skills use the standard `skills/<skill-name>/SKILL.md` layout. |
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

Prefer a pinned version instead of tracking `main`? Download it from:

**[Latest Release →](https://github.com/MuYiYong/spec-kit-skills/releases/latest)**

Each release includes:

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

## Available Skills

### At a glance

| Skill | Purpose |
|---|---|
| [`speckit-constitution`](./skills/speckit-constitution/SKILL.md) | Define or update project-wide principles, constraints, and engineering rules. |
| [`speckit-specify`](./skills/speckit-specify/SKILL.md) | Turn a natural-language request into a structured Feature Specification. |
| [`speckit-clarify`](./skills/speckit-clarify/SKILL.md) | Find ambiguity, missing decisions, and underspecified requirements. |
| [`speckit-plan`](./skills/speckit-plan/SKILL.md) | Convert the specification into a technical implementation plan. |
| [`speckit-tasks`](./skills/speckit-tasks/SKILL.md) | Break the plan into executable tasks with ordering and dependencies. |
| [`speckit-checklist`](./skills/speckit-checklist/SKILL.md) | Generate targeted quality and review checklists. |
| [`speckit-analyze`](./skills/speckit-analyze/SKILL.md) | Check consistency and coverage across specification, plan, and tasks. |
| [`speckit-implement`](./skills/speckit-implement/SKILL.md) | Execute the prepared tasks and implement the feature. |
| [`speckit-converge`](./skills/speckit-converge/SKILL.md) | Compare implementation with the specification and close remaining gaps. |
| [`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md) | Convert tasks into dependency-aware GitHub Issues. |

> The contents under [`skills/`](./skills) are the source of truth for the currently available Skills.

## Skill guide

### Core workflow

<details>
<summary><strong>1. Constitution — Define project rules</strong></summary>

**Skill:** [`speckit-constitution`](./skills/speckit-constitution/SKILL.md)

**What it does**  
Defines or updates long-lived project principles and constraints so agents make decisions within a consistent engineering framework.

**When to use it**
- Starting a new project
- Establishing architecture or coding principles
- Defining testing, security, quality, or governance rules
- Aligning multiple agents or contributors on shared constraints

**Example**

```text
Define project principles that require:
- TypeScript for application code
- Tests for all public APIs
- Backward-compatible database migrations
- No direct secrets in source control
```

Think of it as: **What rules must this project follow?**

</details>

<details>
<summary><strong>2. Specify — Turn an idea into a clear specification</strong></summary>

**Skill:** [`speckit-specify`](./skills/speckit-specify/SKILL.md)

**What it does**  
Transforms a natural-language feature idea into a structured Feature Specification focused on user needs, expected behavior, and acceptance criteria.

**When to use it**
- You have a feature idea but no formal specification yet
- Requirements are still scattered across notes or conversation
- You want the agent to define scope before discussing implementation

**Example**

```text
Add GitHub OAuth login.
Administrators must be able to disable users,
and disabled users should no longer be able to access the application.
```

Think of it as: **What exactly are we building?**

</details>

<details>
<summary><strong>3. Clarify — Resolve ambiguity before design</strong></summary>

**Skill:** [`speckit-clarify`](./skills/speckit-clarify/SKILL.md)

**What it does**  
Examines the current specification for ambiguity, missing decisions, edge cases, and assumptions, then asks focused questions to resolve them.

**When to use it**
- A specification already exists
- Important boundary conditions are still undefined
- Different interpretations could lead to different implementations
- You want to avoid discovering requirement gaps during coding

**Example questions**

```text
What happens when GitHub OAuth fails?
Can one GitHub identity be linked to multiple accounts?
Should disabling a user immediately invalidate active sessions?
```

Think of it as: **What have we not made clear yet?**

</details>

<details>
<summary><strong>4. Plan — Design how to build it</strong></summary>

**Skill:** [`speckit-plan`](./skills/speckit-plan/SKILL.md)

**What it does**  
Turns the approved specification into a technical implementation plan covering architecture, components, data model, interfaces, constraints, and implementation approach.

**When to use it**
- Requirements are sufficiently clear
- You are ready to make technical decisions
- The feature spans multiple components or needs architectural thought

**Example**

```text
Plan GitHub OAuth using:
- /auth/github and /auth/github/callback endpoints
- User and OAuthIdentity tables
- Server-side session storage
- An admin endpoint for disabling users
```

Think of it as: **How are we going to build this?**

</details>

<details>
<summary><strong>5. Tasks — Break the plan into executable work</strong></summary>

**Skill:** [`speckit-tasks`](./skills/speckit-tasks/SKILL.md)

**What it does**  
Converts the implementation plan into concrete development tasks, including useful ordering and dependencies.

**When to use it**
- The technical plan is complete
- You are preparing to start implementation
- The work needs to be divided across phases, contributors, or agents

**Example**

```text
T001 Create User and OAuthIdentity data models
T002 Implement GitHub OAuth callback
T003 Add session management
T004 Add administrator disable-user API
T005 Add integration tests
```

Think of it as: **What exactly needs to be done, and in what order?**

</details>

<details>
<summary><strong>6. Analyze — Check consistency before implementation</strong></summary>

**Skill:** [`speckit-analyze`](./skills/speckit-analyze/SKILL.md)

**What it does**  
Performs a non-destructive consistency and coverage review across the specification, plan, and tasks.

**When to use it**
- Specification, plan, and tasks are already available
- Before starting a significant implementation
- After major requirement or design changes
- When you want to catch missing, duplicated, or conflicting work early

**Example checks**

```text
Does every requirement have a corresponding design decision?
Does every planned component have an implementation task?
Are there tasks that are not justified by the specification?
Are any requirements contradicted by the technical plan?
```

Think of it as: **Do the requirements, design, and tasks actually line up?**

</details>

<details>
<summary><strong>7. Implement — Turn the prepared tasks into code</strong></summary>

**Skill:** [`speckit-implement`](./skills/speckit-implement/SKILL.md)

**What it does**  
Executes the implementation based on the prepared task list and the artifacts created earlier in the Spec Kit workflow.

**When to use it**
- Specification, plan, and tasks are ready
- Necessary clarification and analysis are complete
- You are ready for the agent to make code changes

**Example**

```text
Implement the authentication feature from tasks.md,
following the architecture and constraints defined in plan.md.
```

Think of it as: **Turn the plan into working code.**

</details>

<details>
<summary><strong>8. Converge — Verify the implementation is truly complete</strong></summary>

**Skill:** [`speckit-converge`](./skills/speckit-converge/SKILL.md)

**What it does**  
Compares the current implementation against the specification and related artifacts, identifies remaining gaps, and helps finish incomplete work.

**When to use it**
- A first implementation pass is complete
- The feature looks done but you want a specification-level check
- Requirements changed during development
- You want to close gaps before review or release

**Example**

```text
Compare the implemented OAuth flow with the specification.
Identify unmet acceptance criteria, missing edge cases,
and any tasks that still need to be completed.
```

Think of it as: **The code exists — does it actually satisfy the specification?**

</details>

### Supporting Skills

<details>
<summary><strong>Checklist — Generate focused quality checks</strong></summary>

**Skill:** [`speckit-checklist`](./skills/speckit-checklist/SKILL.md)

**What it does**  
Generates a checklist tailored to the current feature and the type of review you want to perform.

**When to use it**
- Requirement review
- Design review
- Code review
- Pre-release validation
- Security, performance, or other focused quality gates

**Example**

```text
Generate a release-readiness checklist for the GitHub OAuth feature,
covering authentication failures, session invalidation,
security-sensitive logging, and regression tests.
```

</details>

<details>
<summary><strong>Tasks to Issues — Move execution into GitHub Issues</strong></summary>

**Skill:** [`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md)

**What it does**  
Converts the prepared task list into dependency-aware GitHub Issues so the work can be tracked and coordinated in GitHub.

**When to use it**
- Team development
- GitHub Projects or Issue-driven workflows
- Work shared across multiple agents
- You want task dependencies visible in GitHub

**Example**

```text
Convert the authentication tasks into GitHub Issues,
preserving dependencies so session management cannot start
before the user and OAuth identity models are ready.
```

</details>

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

Supporting Skills can be inserted where needed:
- **Checklist** at requirement, design, code-review, or release gates
- **Tasks to Issues** when work should be coordinated through GitHub

## Releases

This repository uses the same stable version numbers as upstream Spec Kit, making it easy to pin a known Skills bundle to a specific upstream release.

**[View the latest Release →](https://github.com/MuYiYong/spec-kit-skills/releases/latest)**

Available assets:

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

## Repository structure

```text
spec-kit-skills/
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

This repository is a **community-maintained distribution of generated Spec Kit Skills**. The upstream project itself is maintained by GitHub:

**[github/spec-kit →](https://github.com/github/spec-kit)**

For Spec-Driven Development concepts, Spec Kit CLI usage, templates, upstream bugs, and feature requests, please use the official project as the authoritative source.

## Disclaimer

This is not an official GitHub repository.

GitHub, Spec Kit, and related names and trademarks belong to their respective owners. Upstream behavior, documentation, licensing, and releases are governed by the official [`github/spec-kit`](https://github.com/github/spec-kit) project.

---

<div align="center">

### ⭐ Like the project?

If this repository saves you time, **[give it a Star](https://github.com/MuYiYong/spec-kit-skills)**. It helps more developers discover a simple way to use **Spec-Driven Development with AI coding agents**.

[![Star Spec Kit Skills](https://img.shields.io/github/stars/MuYiYong/spec-kit-skills?style=social)](https://github.com/MuYiYong/spec-kit-skills)

</div>
