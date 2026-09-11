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

## Skill guide

### Core workflow

#### 1. Constitution — Define project rules

[`speckit-constitution`](./skills/speckit-constitution/SKILL.md)

**What it does**

Defines or updates long-lived project principles and constraints so agents make decisions within a consistent engineering framework.

**Best used when**

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

**Example prompt**

```text
Use speckit-constitution to define the engineering principles for this project:
TypeScript only, test all public APIs, keep database migrations backward-compatible,
and never commit secrets to source control.
```

> **In one sentence:** What rules must this project follow?

#### 2. Specify — Turn an idea into a clear specification

[`speckit-specify`](./skills/speckit-specify/SKILL.md)

**What it does**

Transforms a natural-language feature idea into a structured Feature Specification focused on user needs, expected behavior, and acceptance criteria.

**Best used when**

- You have a feature idea but no formal specification yet
- Requirements are scattered across notes, conversations, or tickets
- You want to establish scope before discussing implementation details

**Example**

```text
Add GitHub OAuth login.
Administrators must be able to disable users,
and disabled users should no longer be able to access the application.
```

**Example prompt**

```text
Use speckit-specify to turn the following request into a complete Feature Specification:
Add GitHub OAuth login. Administrators can disable users,
and disabled users must lose access to the application.
```

> **In one sentence:** What exactly are we building?

#### 3. Clarify — Resolve ambiguity before design

[`speckit-clarify`](./skills/speckit-clarify/SKILL.md)

**What it does**

Examines the current specification for ambiguity, missing decisions, edge cases, and hidden assumptions, then asks focused questions to resolve them.

**Best used when**

- A specification already exists
- Important boundary conditions are still undefined
- Different interpretations could lead to different implementations
- You want to catch requirement gaps before coding starts

**Example**

```text
What happens when GitHub OAuth fails?
Can one GitHub identity be linked to multiple accounts?
Should disabling a user immediately invalidate active sessions?
```

**Example prompt**

```text
Use speckit-clarify to review the current authentication specification.
Ask only the questions that must be answered before technical planning can begin.
```

> **In one sentence:** What have we not made clear yet?

#### 4. Plan — Design how to build it

[`speckit-plan`](./skills/speckit-plan/SKILL.md)

**What it does**

Turns the approved specification into a technical implementation plan covering architecture, components, data model, interfaces, constraints, and implementation approach.

**Best used when**

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

**Example prompt**

```text
Use speckit-plan to create the technical implementation plan for the current specification.
Cover architecture, data model, APIs, dependencies, testing strategy, and implementation risks.
```

> **In one sentence:** How are we going to build this?

#### 5. Tasks — Break the plan into executable work

[`speckit-tasks`](./skills/speckit-tasks/SKILL.md)

**What it does**

Converts the implementation plan into concrete development tasks, including useful ordering and dependencies.

**Best used when**

- The technical plan is complete
- You are preparing to start implementation
- Work needs to be divided across phases, contributors, or agents

**Example**

```text
T001 Create User and OAuthIdentity data models
T002 Implement GitHub OAuth callback
T003 Add session management
T004 Add administrator disable-user API
T005 Add integration tests
```

**Example prompt**

```text
Use speckit-tasks to break the current implementation plan into executable tasks.
Preserve dependencies and identify tasks that can be worked on in parallel.
```

> **In one sentence:** What needs to be done, and in what order?

#### 6. Analyze — Check consistency before implementation

[`speckit-analyze`](./skills/speckit-analyze/SKILL.md)

**What it does**

Performs a non-destructive consistency and coverage review across the specification, plan, and tasks.

**Best used when**

- Specification, plan, and tasks are already available
- Before starting a significant implementation
- After major requirement or design changes
- You want to catch missing, duplicated, or conflicting work early

**Example**

```text
Does every requirement have a corresponding design decision?
Does every planned component have an implementation task?
Are there tasks that are not justified by the specification?
Are any requirements contradicted by the technical plan?
```

**Example prompt**

```text
Use speckit-analyze to check the current specification, plan, and tasks for gaps,
conflicts, missing coverage, and unnecessary work before implementation starts.
```

> **In one sentence:** Do the requirements, design, and tasks actually line up?

#### 7. Implement — Turn the prepared tasks into code

[`speckit-implement`](./skills/speckit-implement/SKILL.md)

**What it does**

Executes the implementation based on the prepared task list and the artifacts created earlier in the Spec Kit workflow.

**Best used when**

- Specification, plan, and tasks are ready
- Necessary clarification and analysis are complete
- You are ready for the agent to make code changes

**Example**

```text
Implement the authentication feature from tasks.md,
following the architecture and constraints defined in plan.md.
```

**Example prompt**

```text
Use speckit-implement to execute the current tasks.md.
Follow the specification and plan, complete tasks in dependency order,
and keep the implementation aligned with the defined constraints.
```

> **In one sentence:** Turn the plan into working code.

#### 8. Converge — Verify the implementation is truly complete

[`speckit-converge`](./skills/speckit-converge/SKILL.md)

**What it does**

Compares the current implementation against the specification and related artifacts, identifies remaining gaps, and helps finish incomplete work.

**Best used when**

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

**Example prompt**

```text
Use speckit-converge to compare the current implementation with the specification,
plan, and tasks. Identify remaining gaps and complete the work required to converge.
```

> **In one sentence:** The code exists — does it actually satisfy the specification?

### Supporting Skills

#### Checklist — Generate focused quality checks

[`speckit-checklist`](./skills/speckit-checklist/SKILL.md)

**What it does**

Generates a checklist tailored to the current feature and the type of review you want to perform.

**Best used when**

- Reviewing requirements or design
- Performing code review
- Preparing for a release
- Running a security, performance, or other focused quality gate

**Example**

```text
Generate a release-readiness checklist for the GitHub OAuth feature,
covering authentication failures, session invalidation,
security-sensitive logging, and regression tests.
```

**Example prompt**

```text
Use speckit-checklist to create a release-readiness checklist for this feature.
Focus on authentication failures, session invalidation, sensitive logging,
and regression coverage.
```

> **In one sentence:** What should we verify before moving forward?

#### Tasks to Issues — Move execution into GitHub Issues

[`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md)

**What it does**

Converts the prepared task list into dependency-aware GitHub Issues so work can be tracked and coordinated in GitHub.

**Best used when**

- Working as a team
- Using GitHub Projects or an Issue-driven workflow
- Coordinating work across multiple agents
- You want task dependencies visible in GitHub

**Example**

```text
Convert the authentication tasks into GitHub Issues,
preserving dependencies so session management cannot start
before the user and OAuth identity models are ready.
```

**Example prompt**

```text
Use speckit-taskstoissues to convert the current tasks into GitHub Issues.
Preserve task dependencies and make each issue independently actionable.
```

> **In one sentence:** How do we turn the task plan into trackable GitHub work?

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
