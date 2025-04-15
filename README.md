# LEGIONCORE

[![Average time to resolve an issue](http://isitmaintained.com/badge/resolution/levrules/legioncore.svg)](http://isitmaintained.com/project/levrules/legioncore "Average time to resolve an issue") [![Percentage of issues still open](http://isitmaintained.com/badge/open/levrules/legioncore.svg)](http://isitmaintained.com/project/levrules/legioncore "Percentage of issues still open")

> [!WARNING]
> This repository is based on the [The-Legion-Preservation-Project/LegionCore-7.3.5](https://github.com/The-Legion-Preservation-Project/LegionCore-7.3.5/) project and will be updated as soon as possible. Its main goal is to provide a more stable and up-to-date version of the core, as well as to unite the community not only around the Wrath of the "Lich King" expansion, but also around "Legion".

#### Table of Contents
* [Introduction](#introduction)
* [Requirements](#requirements)
* [Install](#install)
* [Data Files](#data-files)
* [Common Issues](#common-issues)
* [Reporting issues](#reporting-issues)
* [Submitting fixes](#submitting-fixes)
* [Thank you](#thank-you)

#### Introduction
LegionCore is a **MMORPG** framework for WOW Legion *(Build 26972)*. This core is based off of the UWOW core leak of 2020. Which was derived from an old version of [TrinityCore](https://github.com/TrinityCore/TrinityCore). LegionCore is completely opensource and is developed by the community. To submit a pull request please follow this template [here](submitting-fixes).

# Requirements
 
[Windows specific](https://www.trinitycore.info/en/install/requirements/windows)
  
[Linux specific](https://www.trinitycore.info/en/install/requirements/linux)

[Mac specific](https://www.trinitycore.info/en/install/requirements/macos)

# Install
Most of the install steps are the same as the TrinityCore ones [here](https://www.trinitycore.info/en/install/Core-Installation).

# Data Files
This core has been updated with tools to generate all required data files.

Run the tools in the following order, using client build 26972:

1. `mapextractor`
2. `vmap4extractor`
3. `vmap4assembler`
4. `mmaps_generator`

The generated folders `dbc`, `maps`, `vmaps`, `mmaps`, `cameras` and `gt` are all required.

# Common issues
TODO

# Reporting issues
Issues can be reported via the [Github issue tracker](https://github.com/levrules/legioncore/issues).

Please take the time to review existing issues before submitting your own to
prevent duplicates.

In addition, thoroughly read through the [issue tracker guide](https://community.trinitycore.org/topic/37-the-trinitycore-issuetracker-and-you/) to ensure
your report contains the required information. Incorrect or poorly formed
reports are wasteful and are subject to deletion.

Note that the issue tracker guide is from TrinityCore, but it also applies for this core.

# Submitting fixes
C++ fixes are submitted as pull requests via Github. For more information on how to
properly submit a pull request, read the [how-to: maintain a remote fork](https://community.trinitycore.org/topic/9002-howto-maintain-a-remote-fork-for-pull-requests-tortoisegit/).
For SQL only fixes, open a ticket; if a bug report exists for the bug, post on an existing ticket.

### Thank you
- [TrinityCore Authors](https://github.com/TrinityCore/TrinityCore/blob/master/AUTHORS)
- [LegionCore Contributors](https://github.com/levrules/legioncore/graphs/contributors)

> **License: GPL 2.0** read [COPYING](COPYING).

## Status content
> [!NOTE]
> Useful information that users should know, even when skimming content.

| Content                              | Status   |
|--------------------------------------|:--------:|
| Classic                              | ❌       |
| TBC                                  | ❌       |
| Wotlk                                | ❌       |
| Cataclysm                            | ❌       |
| Mists of Pandaria                    | ❌       |
| Warlords of Draenor                  | ❌       |
| Legion                               | ❌       |