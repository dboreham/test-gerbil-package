#!/usr/bin/env gxi
;; Note that may you need to first:
;;   gxpkg install github.com/fare/gerbil-utils

(import :std/misc/process :clan/building :clan/multicall)
(init-build-environment!
 name: "test-gerbil-package"
 deps: '("clan"))

(define-entry-point (build-and-test)
  (help: "Run all build and test commands" getopt: [])
  (compile)
  (run-process/batch ["./unit-tests.ss"])
