<div align="center">

# Spec Kit Skills

**可直接使用的 [GitHub Spec Kit](https://github.com/github/spec-kit) Skills，适用于 CC Switch 及其他支持 Skills 的 AI 编程 Agent。**

无需在本地生成，无需手动维护。持续跟随 GitHub Spec Kit 的稳定版本。

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

本仓库将 Spec Kit 官方 Codex 集成生成的 Skills 整理为一套**可直接使用的 Skills 仓库**。你可以直接把本仓库加入 CC Switch 或其他兼容工具，而无需自己在本地生成和维护这些 Skills。

## 为什么使用这个仓库？

| | 特性 | 你能获得什么 |
|---|---|---|
| 🚀 | **开箱即用** | 添加仓库后即可直接使用 Skills。 |
| 🔄 | **持续更新** | 跟随 GitHub Spec Kit 的稳定版本。 |
| 📦 | **版本化发布** | 对应版本可直接通过 GitHub Release 获取。 |
| ⬇️ | **可下载安装包** | 提供 ZIP、tar.gz 和 SHA-256 校验文件。 |
| 🔗 | **适合 CC Switch** | 可直接作为 CC Switch 的自定义 Skills 仓库。 |
| 🤖 | **Agent 友好** | Skills 使用标准的 `skills/<skill-name>/SKILL.md` 目录结构。 |
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

如果希望固定版本，而不是直接跟随 `main`，可以从这里下载：

**[查看最新 Release →](https://github.com/MuYiYong/spec-kit-skills/releases/latest)**

每个 Release 包含：

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

## Available Skills

### 总览

| Skill | 作用 |
|---|---|
| [`speckit-constitution`](./skills/speckit-constitution/SKILL.md) | 定义或更新项目长期遵守的原则、约束和工程规则。 |
| [`speckit-specify`](./skills/speckit-specify/SKILL.md) | 将自然语言需求整理为结构化 Feature Specification。 |
| [`speckit-clarify`](./skills/speckit-clarify/SKILL.md) | 识别需求中的歧义、缺失决策和不明确内容。 |
| [`speckit-plan`](./skills/speckit-plan/SKILL.md) | 根据 Specification 生成技术实现方案。 |
| [`speckit-tasks`](./skills/speckit-tasks/SKILL.md) | 将实现计划拆分为有顺序和依赖关系的可执行任务。 |
| [`speckit-checklist`](./skills/speckit-checklist/SKILL.md) | 根据当前 Feature 生成有针对性的质量检查清单。 |
| [`speckit-analyze`](./skills/speckit-analyze/SKILL.md) | 检查 Specification、Plan 和 Tasks 的覆盖与一致性。 |
| [`speckit-implement`](./skills/speckit-implement/SKILL.md) | 根据已经准备好的 Tasks 执行实际开发工作。 |
| [`speckit-converge`](./skills/speckit-converge/SKILL.md) | 对比实现与 Specification，补齐尚未完成的工作。 |
| [`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md) | 将 Tasks 转换成具有依赖关系的 GitHub Issues。 |

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

辅助 Skills 可以按需要插入：

- **Checklist**：适合需求、设计、代码评审和 Release 前检查
- **Tasks to Issues**：适合需要通过 GitHub 管理和协作的工作

## Skill 使用指南

### 主流程 Skills

#### 1. Constitution — 定义项目规则

[`speckit-constitution`](./skills/speckit-constitution/SKILL.md)

**作用**

定义或更新项目需要长期遵守的原则和约束，让 AI Agent 在统一的工程规则下做决策。

**适合场景**

- 新项目刚开始
- 希望统一架构或编码原则
- 需要明确测试、安全、质量或治理要求
- 多个 Agent 或多人协作，需要统一长期约束

**示例**

```text
为项目定义以下规则：
- 应用代码统一使用 TypeScript
- 所有公开 API 都必须有测试
- 数据库迁移必须保持向后兼容
- 不允许在源码中直接保存 Secret
```

**使用示例**

```text
请使用 speckit-constitution，为当前项目建立以下工程原则：
应用代码统一使用 TypeScript，所有公开 API 都必须有测试，
数据库迁移保持向后兼容，并禁止将 Secret 提交到源码仓库。
```

> **一句话理解：** 这个项目开发时必须遵守什么规则？

#### 2. Specify — 把想法整理成清晰需求

[`speckit-specify`](./skills/speckit-specify/SKILL.md)

**作用**

把自然语言功能想法整理成结构化的 Feature Specification，重点描述用户需求、预期行为和验收标准。

**适合场景**

- 已经有功能想法，但还没有正式需求文档
- 需求散落在聊天、笔记或口头描述里
- 希望先明确范围，再讨论技术实现

**示例**

```text
增加 GitHub OAuth 登录。
管理员可以禁用用户，
被禁用的用户不能继续访问应用。
```

**使用示例**

```text
请使用 speckit-specify，把下面需求整理成完整的 Feature Specification：
增加 GitHub OAuth 登录。管理员可以禁用用户，
被禁用用户不能继续访问应用。
```

> **一句话理解：** 我们到底要做什么？

#### 3. Clarify — 在设计之前解决歧义

[`speckit-clarify`](./skills/speckit-clarify/SKILL.md)

**作用**

检查当前 Specification 中不明确、缺失、存在歧义或依赖隐含假设的内容，并通过有针对性的问题补充完整。

**适合场景**

- Specification 已经生成
- 还有重要边界条件没有定义
- 不同理解会导致不同实现方式
- 不希望问题拖到编码阶段才暴露

**示例**

```text
GitHub OAuth 登录失败后如何处理？
一个 GitHub 身份是否可以绑定多个账号？
管理员禁用用户后，已有 Session 是否立即失效？
```

**使用示例**

```text
请使用 speckit-clarify 检查当前认证功能的 Specification。
只提出在进入技术设计之前必须明确的问题，并帮助补齐缺失的边界条件。
```

> **一句话理解：** 还有哪些事情没有真正说清楚？

#### 4. Plan — 设计怎么实现

[`speckit-plan`](./skills/speckit-plan/SKILL.md)

**作用**

根据已经明确的 Specification 生成技术实现方案，覆盖架构、组件、数据模型、接口、约束和实现路径。

**适合场景**

- 需求已经基本明确
- 可以开始做技术决策
- 功能涉及多个组件或需要架构设计

**示例**

```text
为 GitHub OAuth 功能设计：
- /auth/github 和 /auth/github/callback 接口
- User 与 OAuthIdentity 数据表
- 服务端 Session 存储
- 管理员禁用用户 API
```

**使用示例**

```text
请使用 speckit-plan，根据当前 Specification 生成技术实现方案。
需要覆盖架构、数据模型、API、依赖、测试策略以及主要技术风险。
```

> **一句话理解：** 这个需求准备怎么做？

#### 5. Tasks — 拆成可以真正执行的任务

[`speckit-tasks`](./skills/speckit-tasks/SKILL.md)

**作用**

将实现计划拆解成具体开发任务，并整理合理的执行顺序和依赖关系。

**适合场景**

- 技术方案已经完成
- 准备正式进入开发阶段
- 工作需要按阶段、多人或多 Agent 拆分

**示例**

```text
T001 创建 User 和 OAuthIdentity 数据模型
T002 实现 GitHub OAuth Callback
T003 实现 Session 管理
T004 增加管理员禁用用户 API
T005 增加集成测试
```

**使用示例**

```text
请使用 speckit-tasks，把当前 Plan 拆成可以直接执行的开发任务。
保留任务依赖关系，并标出可以并行执行的任务。
```

> **一句话理解：** 具体要做哪些事情？先做什么，后做什么？

#### 6. Analyze — 开发前检查一致性

[`speckit-analyze`](./skills/speckit-analyze/SKILL.md)

**作用**

对 Specification、Plan 和 Tasks 做非破坏性的一致性与覆盖检查。

**适合场景**

- Specification、Plan 和 Tasks 已经准备好
- 开始重要实现之前
- 需求或设计发生较大变化之后
- 希望提前发现遗漏、重复或冲突

**示例**

```text
每一条需求是否都有对应设计？
Plan 中的每个组件是否都有实现任务？
是否存在与 Specification 无关的额外任务？
技术方案是否与原始需求发生冲突？
```

**使用示例**

```text
请使用 speckit-analyze，检查当前 Specification、Plan 和 Tasks。
找出缺失覆盖、冲突、重复任务以及不必要的工作，
确保开始实现前三者保持一致。
```

> **一句话理解：** 需求、设计和任务真的对得上吗？

#### 7. Implement — 把任务真正变成代码

[`speckit-implement`](./skills/speckit-implement/SKILL.md)

**作用**

根据已经准备好的任务列表，以及前面生成的 Spec Kit 工件，执行实际开发工作。

**适合场景**

- Specification、Plan 和 Tasks 都已准备好
- 必要的 Clarify 和 Analyze 已经完成
- 准备让 Agent 正式修改代码

**示例**

```text
按照 tasks.md 实现认证功能，
并遵循 plan.md 中定义的架构和约束。
```

**使用示例**

```text
请使用 speckit-implement 执行当前 tasks.md。
按照任务依赖顺序完成实现，并始终遵循 Specification 和 Plan 中定义的约束。
```

> **一句话理解：** 现在开始把计划变成代码。

#### 8. Converge — 检查是否真正完成

[`speckit-converge`](./skills/speckit-converge/SKILL.md)

**作用**

重新对比当前实现、Specification 和相关工件，识别遗漏并补齐尚未完成的工作。

**适合场景**

- 已经完成一轮 Implement
- 功能看起来做完了，但希望从需求层面再检查一次
- 开发过程中需求发生过变化
- Review 或 Release 前希望补齐最后的差距

**示例**

```text
将当前 OAuth 实现与 Specification 进行对比。
找出未满足的验收条件、遗漏的边界场景，
以及仍然没有完成的任务。
```

**使用示例**

```text
请使用 speckit-converge，对比当前实现、Specification、Plan 和 Tasks。
找出还没有满足的需求或遗漏的工作，并继续补齐直到实现收敛。
```

> **一句话理解：** 代码写完了，但需求真的全部完成了吗？

### 辅助 Skills

#### Checklist — 生成有针对性的质量检查清单

[`speckit-checklist`](./skills/speckit-checklist/SKILL.md)

**作用**

根据当前 Feature 和你希望执行的 Review 类型生成对应检查清单。

**适合场景**

- 需求评审
- 设计评审
- Code Review
- Release 前检查
- 安全、性能等专项质量检查

**示例**

```text
为 GitHub OAuth 功能生成 Release Readiness Checklist，
重点覆盖认证失败、Session 失效、敏感日志和回归测试。
```

**使用示例**

```text
请使用 speckit-checklist，为这个功能生成 Release Readiness Checklist。
重点检查认证失败、Session 失效、敏感日志以及回归测试覆盖。
```

> **一句话理解：** 在进入下一阶段之前，需要检查哪些事情？

#### Tasks to Issues — 把任务转成 GitHub Issues

[`speckit-taskstoissues`](./skills/speckit-taskstoissues/SKILL.md)

**作用**

将已经生成的 Tasks 转换成带依赖关系的 GitHub Issues，方便在 GitHub 中继续跟踪和协作。

**适合场景**

- 团队开发
- 使用 GitHub Projects 或 Issue 驱动开发
- 多 Agent 协作
- 希望在 GitHub 中明确展示任务依赖

**示例**

```text
将认证相关 Tasks 转换成 GitHub Issues，
并保留依赖关系：只有 User 和 OAuthIdentity 数据模型完成后，
才能开始 Session 管理相关工作。
```

**使用示例**

```text
请使用 speckit-taskstoissues，把当前 Tasks 转换成 GitHub Issues。
保留任务之间的依赖关系，并确保每个 Issue 都可以独立执行和跟踪。
```

> **一句话理解：** 如何把任务计划变成可以在 GitHub 中跟踪的工作？

## Releases

本仓库使用与上游 Spec Kit 稳定版本一致的版本号，方便将某个 Skills Bundle 固定到明确的上游版本。

**[查看最新 Release →](https://github.com/MuYiYong/spec-kit-skills/releases/latest)**

可下载文件：

```text
spec-kit-skills-vX.Y.Z.zip
spec-kit-skills-vX.Y.Z.tar.gz
SHA256SUMS
```

## 仓库结构

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

## 兼容性

本仓库适用于能够读取基于 `SKILL.md` 的 Skills 目录结构的工具，包括：

- CC Switch 自定义 Skills Repository
- 支持 `SKILL.md` 的 AI 编程 Agent
- 支持外部或自定义 Skills Repository 的 Agent 工具

不同 Agent 对 Skills 的加载和调用方式可能不同，请以对应工具的实际使用方式为准。

## 与 GitHub Spec Kit 的关系

本仓库是一个**由社区维护的 Spec Kit Skills 分发仓库**。Spec Kit 本身由 GitHub 维护：

**[github/spec-kit →](https://github.com/github/spec-kit)**

如果需要了解 Spec-Driven Development、Spec Kit CLI、模板机制、上游 Bug 或 Feature Request，请以官方项目为准。

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
