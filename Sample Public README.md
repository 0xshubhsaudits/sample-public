# Sample Security Test Repository

Synthetic Solidity contracts for authorized security testing.

## Purpose

This repository is used to test:

- Git repository import
- Repository cloning
- Branch and commit selection
- Project setup
- Foundry compilation
- Static analysis
- Security finding generation
- Proof-of-concept generation
- GitHub CI/CD scanning

## Contracts

### Vault.sol

Contains an intentionally vulnerable withdrawal authorization issue.

### AccessControl.sol

Contains intentionally vulnerable access-control logic.

### DelegateCall.sol

Contains an intentionally vulnerable caller-controlled delegatecall.

### SafeVault.sol

A control contract with per-user withdrawal authorization.

## Notice

This repository contains synthetic vulnerabilities for security testing only.

It contains no real credentials, secrets, production addresses, or customer data.