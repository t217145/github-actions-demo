# Docker Container Workflow

## Table of Contents

- [Abstract](#abstract)
- [Possible Use Cases](#possible-use-cases)
- [Author & Attribution](#author--attribution)
- [License & Usage](#license--usage)

---

## Abstract

This GitHub Actions workflow demonstrates the capability of running Docker images within GitHub-hosted runners. The workflow tests the basic functionality of pulling and executing a Docker container image in a CI/CD pipeline environment.

**Key Features:**
- Validates Docker runtime availability on GitHub-hosted runners
- Tests pulling Docker images from public registries
- Executes container images with standard Docker command options
- Provides a foundation for more complex containerized tasks in CI/CD pipelines

This simple yet effective workflow can be used as a baseline to verify Docker support and to prototype container-based automation before deploying production workloads.

---

## Possible Use Cases

### 1. **Custom Build Environments**
Run builds or tests in a custom containerized environment with specific language versions, dependencies, or tools pre-configured. Useful when the default GitHub-hosted runner environment doesn't provide a specific toolchain version.

**Example:** Running Java 8 builds in a container when the runner has Java 11+
```bash
docker run --rm -v ${{ github.workspace }}:/workspace myorg/java8-build:latest
```

### 2. **Database Testing**
Spin up temporary database containers (PostgreSQL, MySQL, Redis, etc.) for integration testing without installing services directly on the runner.

**Example:** Running tests against a PostgreSQL container
```bash
docker run --rm -d --name postgres postgres:15 -e POSTGRES_PASSWORD=test
```

### 3. **Integration Testing with Third-Party Services**
Run containerized mock servers or test doubles for external services not available in the default runner environment.

**Example:** Testing API integrations against a containerized mock API server
```bash
docker run --rm -d --name mock-api myorg/mock-api-server:latest
```

### 4. **Cross-Platform Builds**
Use specialized container images to build applications for different platforms or architectures without relying on complex native build tools.

**Example:** Building Go applications for multiple OS targets
```bash
docker run --rm -v ${{ github.workspace }}:/src myorg/go-cross-build:latest
```

### 5. **Dependency Isolation**
Isolate build dependencies in containers to avoid conflicts with the host runner or ensure consistent environments across different CI/CD servers.

**Example:** Running Node.js builds in a container to avoid global npm conflicts
```bash
docker run --rm -v ${{ github.workspace }}:/app node:18-alpine npm install && npm test
```

### 6. **Security Scanning & Code Analysis**
Execute security scanning tools (SAST, dependency checking, container scanning) within containerized environments that contain specialized security tools.

**Example:** Running SonarQube scanner in a container
```bash
docker run --rm -v ${{ github.workspace }}:/src sonarqube-scanner:latest
```

### 7. **Custom Scripts & Automation**
Create custom Docker images containing organization-specific tools, scripts, and configurations to run specialized automation tasks.

**Example:** Running organization-specific deployment or configuration scripts
```bash
docker run --rm -v ${{ github.workspace }}:/work myorg/deployment-tools:v1.0
```

### 8. **Multi-Stage Build Testing**
Test complex multi-stage Docker builds as part of continuous integration, ensuring Dockerfiles build correctly before merging.

**Example:** Building and testing a multi-stage Docker image
```bash
docker build -f Dockerfile.test -t myapp:test . && docker run --rm myapp:test
```

---

## Author & Attribution

**Author:** Cyrus Cheng  
**Website:** [https://cyrus822.com/personal](https://cyrus822.com/personal)  
**GitHub:** [https://github.com/t217145](https://github.com/t217145)

---

## License & Usage

This workflow and documentation are provided as-is for educational and commercial use. 

**Important:** If you use, modify, or distribute this workflow, please provide proper attribution to **Cyrus Cheng**. Include a reference to the original source and indicate any modifications made.

**Attribution Example:**
> "Based on the Docker Container Workflow by Cyrus Cheng (https://cyrus822.com/personal)"

For complete license information and terms of use, please refer to the [Flyway Database Migration Workflow README](../flyway/README.MD#license--usage).

---

*Last Updated: February 2026*
