# RGit

RGit is a simple Ruby implementation of Git used to learn how Git internals
work.

The purpose is **not** to be a robust or production-ready tool. Instead, it
exists as a learning aide to understand how git works. As such, many of the
implementation decisions favor a naive and over-simplified approach. Read the
[companion article] explaining the process of building this tool and how it
works.

[companion article]: https://robots.thoughtbot.com/rebuilding-git-in-ruby

## Support

RGit currently implements the following commands:

* `init`
* `add`
* `commit`

## Installation

To install, clone the repository and ensure that `bin/rgit` in accessible on
your `$PATH`.
