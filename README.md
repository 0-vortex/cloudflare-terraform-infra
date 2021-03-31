# cloudflare-terraform-infra

[![docs](https://github.com/0-vortex/cloudflare-terraform-infra/actions/workflows/docs.yml/badge.svg)](https://github.com/0-vortex/cloudflare-terraform-infra/actions/workflows/docs.yml)
 [![terraform](https://github.com/0-vortex/cloudflare-terraform-infra/actions/workflows/terraform.yml/badge.svg)](https://github.com/0-vortex/cloudflare-terraform-infra/actions/workflows/terraform.yml)

[![Commitizen Friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
 [![License](https://img.shields.io/github/license/0-vortex/workers-lastfm-shields)](./LICENSE)

## Overview

This is an infrastructure as code real time implementation built with:
- [Terraform](https://www.terraform.io) 
- [GitHub Actions](https://github.com/features/actions) 
- [Cloudflare DNS](https://www.cloudflare.com/en-gb/dns)

Modules used:
- [cloudflare/terraform-provider-cloudflare](https://github.com/cloudflare/terraform-provider-cloudflare)
- [cloudposse/terraform-aws-tfstate-backend](https://github.com/cloudposse/terraform-aws-tfstate-backend)

Deployments and resources:
- [vortex.name](https://vortex.name) with HCL [vortexdotname.tf](./vortexdotname.tf)
- [tiamat.tech](https://tiamat.tech) with HCL [tiamatdottech](./tiamatdottech.tf)

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
│  ├── backend.tf
│  ├── LICENSE
│  ├── main.tf
│  ├── Makefile
│  ├── README.md
│  ├── tiamatdottech.tf
│  ├── variables.tf
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

To be able to check changes before a pull request build set up environment variables
as defined in the repository secrets:

```shell
# setup aws backend credentials 
export AWS_ACCESS_KEY_ID=DDDD0000000000000000
export AWS_SECRET_ACCESS_KEY=DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
# setup cloudflare infrastructure credentials
export CLOUDFLARE_EMAIL=your.example@mail.com
export CLOUDFLARE_API_KEY=BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB
# enable logging
export CLOUDFLARE_API_CLIENT_LOGGING=true
```

The simplest way to do that is to dry-run as follows:

```shell
# see a list of all commands
make

# write some code
make format

# plan infrastructure changes
make plan

```
