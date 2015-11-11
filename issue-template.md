# Description

We want to enable [golint](https://github.com/golang/lint) on our codebase.

First, get golint:

```
go get -u github.com/golang/lint
```

Then run it on any package you want to lint:

```sh
# will lint entire project
golint ./...

# will lint single package in project
golint ./<package name>
```

We want to do this for several reasons:

- We want to improve code quality
- We need objective filters on quality to help us discriminate bad pull requests

# How to

Following is the list of all subpackages.  For each, we need to ubmit a PR cleaning all existing golint warnings.
One thing to keep in mind is that golint will require that every exported symbol has a comment:
favor making symbols private where possible before documenting.


