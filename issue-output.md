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


## Packages requireing linting
- [ ] ./client/v2        5
- [ ] ./cluster/internal       28
- [ ] ./cmd/influx/cli       15
- [ ] ./influxql       28
- [ ] ./meta/internal      381
- [ ] ./models       47
- [ ] ./monitor        9
- [ ] ./pkg/escape        6
- [ ] ./services/admin        2
- [ ] ./services/collectd        2
- [ ] ./services/continuous_querier        7
- [ ] ./services/copier/internal       10
- [ ] ./services/graphite       11
- [ ] ./services/hh       11
- [ ] ./services/httpd        7
- [ ] ./services/opentsdb        3
- [ ] ./services/precreator        1
- [ ] ./services/registration        4
- [ ] ./services/retention        2
- [ ] ./services/subscriber       15
- [ ] ./services/udp        6
- [ ] ./stress        7
- [ ] ./tests/urlgen        3
- [ ] ./tsdb      103
- [ ] ./tsdb/engine        1
- [ ] ./tsdb/engine/b1        5
- [ ] ./tsdb/engine/bz1        6
- [ ] ./tsdb/engine/tsm1       66
- [ ] ./tsdb/engine/wal       19
- [ ] ./tsdb/internal       24

packages passing lint
- [x] .        0
- [x] ./client        0
- [x] ./cluster        0
- [x] ./cmd/influx        0
- [x] ./cmd/influx_inspect        0
- [x] ./cmd/influx_stress        0
- [x] ./cmd/influxd        0
- [x] ./cmd/influxd/backup        0
- [x] ./cmd/influxd/help        0
- [x] ./cmd/influxd/restore        0
- [x] ./cmd/influxd/run        0
- [x] ./importer/v8        0
- [x] ./meta        0
- [x] ./pkg/slices        0
- [x] ./services/collectd/test_client        0
- [x] ./services/copier        0
- [x] ./services/snapshotter        0
- [x] ./snapshot        0
- [x] ./statik        0
- [x] ./tcp        0
- [x] ./toml        0
- [x] ./uuid        0
