# cloudflare-terraform-infra

[![Commitizen Friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
 [![License](https://img.shields.io/github/license/0-vortex/workers-lastfm-shields)](./LICENSE)

- [Overview](#overview)
- [Folder structure](#folder-structure)
- [Installation](#installation)
- [Requirements](#requirements)
- [How to use](#how-to-use)

## Overview

Terraform infrastructure templates for our CloudFlare instances

## Folder structure

A quick look at the top-level files and directories you'll see in a Gatsby project.

```
├──── aws-terraform-infra
│  ├── .github/
│  ├── .editorconfig
│  ├── .gitattributes
│  ├── .gitignore
│  ├── .terraform.lock.hcl
│  ├── _config.yml
│  ├── LICENSE
│  ├── main.tf
│  ├── Makefile
│  ├── README.md
│  ├── versions.tf
│  └── vortexdotname.tf
```

## Installation

Clone the package via `git`:

```shell
git clone git@github.com:0-vortex/cloudflare-terraform-infra.git
```

## Requirements

This repository requires `terraform>=v0.14` and `gnumake>=3.82` to be installed.

## How to use

Local development should not write to an existing environment or the global state.

The simplest way to do that is to dry-run as follows:

```shell
# see a list of all commands
make

# plan infrastructure changes
make plan

# everything looks good
make apply
```
