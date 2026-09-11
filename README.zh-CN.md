<div align="center">

# Spec Kit Skills

**可直接使用的 [GitHub Spec Kit](https://github.com/github/spec-kit) Skills，适用于 CC Switch 及其他支持 Skills 的 AI 编程 Agent。**

无需在本地生成，无需手动维护。仓库会持续跟随 GitHub Spec Kit 的稳定版本更新。

[English](./README.md) · [简体中文](./README.zh-CN.md)

[![Latest Release](https://img.shields.io/github/v/release/MuYiYong/spec-kit-skills?label=release)](https://github.com/MuYiYong/spec-kit-skills/releases/latest)
[![GitHub Stars](https://img.shields.io/github/stars/MuYiYong/spec-kit-skills?style=flat&logo=github)](https://github.com/MuYiYong/spec-kit-skills/stargazers)
[![GitHub Downloads](https://img.shields.io/github/downloads/MuYiYong/spec-kit-skills/total?label=downloads)](https://github.com/MuYiYong/spec-kit-skills/releases)
[![Upstream Spec Kit](https://img.shields.io/github/v/release/github/spec-kit?label=Spec%20Kit)](https://github.com/github/spec-kit/releases/latest)

**如果这个仓库让你更方便地在 AI 编程 Agent 中使用 Spec Kit，欢迎 [⭐ Star 本仓库](https://github.com/MuYiYong/spec-kit-skills)。**

</div>

---

## 这是什么？

[GitHub Spec Kit](https://github.com/github/spec-kit) 是一套面向 **Spec-Driven Development（规范驱动开发）** 的工具。它通过结构化流程，帮助 AI 编程 Agent 从想法出发，逐步形成明确的需求、技术方案、可执行任务和最终代码。

典型流程如下：

```text
需求
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

本仓库将 Spec Kit 官方 Codex 集成生成的 Skills 整理为一套**可直接消费的 Skills 仓库**。你可以直接把本仓库加入 CC Switch 或其他兼容工具，而无需自己在本地生成和维护这些 Skills。

## 为什么使用这个仓库？

| | 特性 | 你能获得什么 |
|---|---|---|
| 🚀 | **开箱即用** | 添加仓库后即可直接使用 Skills。 |
| 🔄 | **自动更新** | 持续跟随 GitHub Spec Kit 的稳定版本。 |
| 📦 | **版本化发布** | 每个同步版本都有对应的 GitHub Release。 |
| ⬇️ | **可下载安装包** | 提供 ZIP、tar.gz 和 SHA-256 校验文件。 |
| 🔗 | **适合 CC Switch** | 可直接作为 CC Switch 的自定义 Skills 仓库。 |
| 🤖 | **Agent 友好** | Skills 采用 `skills/<skill-name>/SKILL.md` 结构。 |
| 🧩 | **完整工作流** | 覆盖需求、澄清、计划、任务、分析、实现和收敛。 |

## 快速开始

### CC Switch

在 CC Switch 中添加本仓库作为自定义 Skills 仓库：

```text
Repository:  https://github.com/MuYiYong/spec-kit-skills
Skills Path: skills
```

同步完成后，即可在 CC Switch 管理的兼容 Agent 中使用 Spec Kit Skills。

### 下载固定版本

如果你希望固定版本，而不是直接跟随 `main`，可以从这里下载：

**[查看最新 Release →](https://github.com/MuYiYong/spec-kit-skills/releases/latest)**

每个 Release 包含：

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

## Available Skills

### 主流程 Skills

| Skill | 作用 |
|---|---|
| [`speckit-constitution`](./skills/speckit-constitution/SKILL.md) | 定义或更新项目长期遵守的原则、约束和工程规则。 |
| [`speckit-specify`](./skills/speckit-specify/SKILL.md) | 将自然语言需求整理为结构化 Feature Specification。 |
| [`speckit-clarify`](./skills/speckit-clarify/SKILL.md) | 识别需求中的歧义、缺失决策和不明确内容。 |
| [`speckit-plan`](./skills/speckit-plan/SKILL.md) | 根据 Specification 生成技术实现方案。 |
| [`speckit-tasks`](./skills/speckit-tasks/SKILL.md) | 将实现计划拆分为有顺序和依赖关系的可执行任务。 |
| [`speckit-analyze`](./skills/speckit-analyze/SKILL.md) | 检查 Specification、Plan 和 Tasks 的覆盖与一致性。 |
| [`speckit-implement`](./skills/speckit-implement/SKILL.md) | 根据任务列表执行实际开发工作。 |
| [`speckit-converge`](./skills/speckit-converge/SKILL.md) | 对比实现与 Specification，补齐仍未完成的工作。 |

### 辅助 Skills

| Skill | 作用 |
|---|---|
| [`speckit-checklist`](./skills/speckit-checklist/SKILL.md) | 为当前 Feature 生成需求、设计、代码审查或发布检查清单。 |
| [`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md) | 将 Tasks 转换为具有依赖关系的 GitHub Issues，适合团队或多 Agent 协作。 |

> 当前实际可用的 Skills 以 [`skills/`](./skills) 目录为准。

## 推荐工作流

```text
1. Constitution   定义项目规则和长期约束
        ↓
2. Specify        描述要做什么
        ↓
3. Clarify        解决歧义和缺失决策
        ↓
4. Plan           设计怎么实现
        ↓
5. Tasks          拆成可执行工作
        ↓
6. Analyze        检查需求 / 设计 / 任务是否一致
        ↓
7. Implement      开始实现
        ↓
8. Converge       检查实现是否真正满足需求
```

并不是每个项目都必须执行全部步骤。可以根据项目规模、风险和成熟度选择需要的 Skill。

### 辅助 Skills 适合放在哪里？

- **Checklist**：适合用于需求评审、设计评审、代码评审和发布前检查。
- **Tasks to Issues**：适合团队开发、GitHub Project、Issue 驱动开发以及多 Agent 协作。

## Releases 与版本对应

本仓库与上游 Spec Kit 的稳定版本保持一致：

```text
GitHub Spec Kit                 spec-kit-skills
     v1.0.6          ───────▶        v1.0.6
     v1.0.7          ───────▶        v1.0.7
       ...                             ...
```

每次同步会自动执行：

1. 检查 [`github/spec-kit`](https://github.com/github/spec-kit) 最新稳定 Release。
2. 使用对应上游版本生成官方 Codex Skills。
3. 更新 `skills/` 和 [`UPSTREAM_VERSION`](./UPSTREAM_VERSION)。
4. 创建对应 Git tag 和 GitHub Release。
5. 发布 ZIP、tar.gz 和 SHA-256 校验文件作为 Release Assets。

Workflow 每天检查一次上游。如果没有新稳定版本，并且对应 Release 已经存在，就不会重复发布。

> 安装包使用 **GitHub Release Assets** 发布。这里不使用 GitHub Packages，因为这些文件属于可下载的 Skills Bundle，而不是 npm、Maven、NuGet、RubyGems 或容器镜像等 Registry Package。

## 仓库结构

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

## 兼容性

本仓库适用于能够读取基于 `SKILL.md` 的 Skills 目录结构的工具，包括：

- CC Switch 自定义 Skills Repository
- 支持 `SKILL.md` 的 AI 编程 Agent
- 支持外部或自定义 Skills Repository 的 Agent 工具

不同 Agent 对 Skills 的加载和调用方式可能不同，请以对应工具的实际使用方式为准。

## 与 GitHub Spec Kit 的关系

本仓库是一个**由社区维护的 Spec Kit Skills 分发镜像**。Spec Kit 本身由 GitHub 维护：

**[github/spec-kit →](https://github.com/github/spec-kit)**

如果你需要了解 Spec-Driven Development、Spec Kit CLI、模板机制、上游 Bug 或 Feature Request，请以官方项目为准。

## Disclaimer

本仓库并非 GitHub 官方仓库。

GitHub、Spec Kit 及相关名称和商标归各自权利人所有。上游行为、文档、许可和版本信息请以官方 [`github/spec-kit`](https://github.com/github/spec-kit) 项目为准。

---

<div align="center">

### ⭐ 如果这个项目对你有帮助

如果它帮你省去了生成和维护 Spec Kit Skills 的工作，欢迎 **[给仓库点一个 Star](https://github.com/MuYiYong/spec-kit-skills)**。

你的 Star 也能帮助更多需要 **Spec-Driven Development + AI Coding Agent** 的开发者发现这个项目。

[![Star Spec Kit Skills](https://img.shields.io/github/stars/MuYiYong/spec-kit-skills?style=social)](https://github.com/MuYiYong/spec-kit-skills)

</div>
