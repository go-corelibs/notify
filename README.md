[![godoc](https://img.shields.io/badge/godoc-reference-blue.svg)](https://pkg.go.dev/github.com/go-corelibs/notify)
[![codecov](https://codecov.io/gh/go-corelibs/notify/graph/badge.svg?token=7mk9JhvJRO)](https://codecov.io/gh/go-corelibs/notify)
[![Go Report Card](https://goreportcard.com/badge/github.com/go-corelibs/notify)](https://goreportcard.com/report/github.com/go-corelibs/notify)

# go-corelibs/notify - level managed stdout/stderr notifier

notify is a package for managing outputting various levels of informative
notices to STDOUT and STDERR.

# Installation

``` shell
> go get github.com/go-corelibs/notify@latest
```

# Examples

## Notifier

``` go
func main() {
    notifier := notify.New(notify.Info).Make()
    notifier.Error("this is printed to os.Stderr\n")
    notifier.Info("this is printed to os.Stdout\n")
    // the following Debug call will not output anything becuase the level
    // of the notifier is currently set to Info (which is less than Debug)
    notifier.Debug("this would be printed to os.Stdout\n")
    notifier.ModifyLevel(notify.Debug) // modifying built notifier at runtime
    notifier.Debug("this is printed to os.Stdout\n")
}
```

# Go-CoreLibs

[Go-CoreLibs] is a repository of shared code between the [Go-Curses] and
[Go-Enjin] projects.

# License

```
Copyright 2023 The Go-CoreLibs Authors

Licensed under the Apache License, Version 2.0 (the "License");
you may not use file except in compliance with the License.
You may obtain a copy of the license at

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

[Go-CoreLibs]: https://github.com/go-corelibs
[Go-Curses]: https://github.com/go-curses
[Go-Enjin]: https://github.com/go-enjin
