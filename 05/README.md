Records and Maps
================

* records are just tuples
* maps are python dicts except you can't freely assign keys
* `-record(Name, {key = Default, ...})`, `rr("<file.hrl>").`
* `record` is not a shell command
* `V2 = V1#record{key=NewVal}.`
* `function(#record_name{key=V} = R) -> ...`
* `:=` vs `=>`
* maps are ordered
* `#{map}` syntax
* keys must be `grounded`
* map BIFs
* A < B map comparison compares number of keys
* JSON BIFs

Questions
---------

* How to install jiffy?
* How to rebar? Help.
* How to erlang packages, .beam, NIF, ...?
