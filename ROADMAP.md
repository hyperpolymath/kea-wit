= Kea-Wit: The Cognitive-Heuristic Engine
Jonathan D.A. Jewell
v1.0.0-draft.1, December 2025
:description: Logtalk-based reasoning engine for the Kea ecosystem.

== Purpose
Kea-Wit is the "Neural" core of the flock. It does not perform pattern matching; it performs **Inference**. It consumes findings from `Kea-Mandible` and evaluates them against the formal constraints defined in the `Refugia` SCM cluster.

== Architecture
* **Logic Engine:** Logtalk (encapsulated Prolog objects).
* **Verification:** Echidna (Neurosymbolic formal verification).
* **Communication:** Listens for `Kea-Calls` via the Deno Deploy bridge.

== Core Logic
[source,prolog]
----
:- object(kea_wit).
    :- public(evaluate_drift/2).
    evaluate_drift(State, Action) :-
        meta_constraints::verify(State),
        playbook_selector::match(State, Action).
:- end_object.
----

== Usage
[source,bash]
----
# Run formal verification on a proposed state change
just verify-state ./proposed_state.scm
----
