# GitHub Actions Demo

## Abstract

Welcome to the **GitHub Actions Demo** repository! This repository serves as a **playground and sandbox environment** for exploring, testing, and demonstrating various GitHub Actions workflows.

### What is GitHub Actions?

**GitHub Actions** is a continuous integration and continuous delivery (CI/CD) platform built directly into GitHub. It enables you to automate your software development workflow by creating custom workflows that run on specific events (such as push, pull request, schedule, or manual trigger). With GitHub Actions, you can:

- **Automate testing** - Run tests automatically when code is pushed
- **Build and deploy** - Compile applications and deploy to various environments
- **Manage workflows** - Execute custom scripts and actions across your repository
- **Integrate tools** - Connect with third-party services and tools seamlessly
- **Run on multiple platforms** - Execute workflows on Linux, Windows, and macOS runners

This repository demonstrates practical examples of GitHub Actions workflows, ranging from database migrations to containerized workloads, providing a foundation for understanding and implementing automation in your own projects.

---

## Available Workflows

| Workflow | README | Workflow File | Description |
|----------|--------|---------------|-------------|
| **Flyway Database Migration** | [README](./README/flyway/README.MD) | [test-flyway.yaml](./.github/workflows/test-flyway.yaml) | Automated database schema migration using Flyway CLI with SQL script validation, database migration execution, and migration history reporting. |
| **Docker Container Testing** | [README](./README/docker/README.MD) | [test-docker.yaml](./.github/workflows/test-docker.yaml) | Demonstrates Docker image execution capabilities in GitHub-hosted runners, validating containerized workload support for CI/CD pipelines. |

---

## Author & Attribution

**Author:** Cyrus Cheng  
**Website:** [https://cyrus822.com/personal](https://cyrus822.com/personal)  
**GitHub:** [https://github.com/t217145](https://github.com/t217145)

---

## License & Usage

This repository and all workflows are provided as-is for educational and commercial use.

**Important:** If you use, modify, or distribute these workflows, please provide proper attribution to **Cyrus Cheng**. Include a reference to the original source and indicate any modifications made.

**Attribution Example:**
> "Based on the GitHub Actions Demo by Cyrus Cheng (https://cyrus822.com/personal)"

For complete license information, please refer to individual workflow READMEs in the [README](./README) directory.

---

*Last Updated: February 2026*
