;; SPDX-License-Identifier: PMPL-1.0-or-later
;; STATE.scm - Project state for kea-wit

(state
  (metadata
    (version "0.1.0")
    (schema-version "1.0")
    (created "2024-06-01")
    (updated "2025-01-17")
    (project "kea-wit")
    (repo "hyperpolymath/kea-wit"))

  (project-context
    (name "Kea Wit")
    (tagline "Kea-based WIT (WebAssembly Interface Types) interface and tooling")
    (tech-stack ("wit" "wasm")))

  (current-position
    (phase "alpha")
    (overall-completion 15)
    (working-features
      ("WIT interface definitions"
       "Basic tooling scaffolding"))))
