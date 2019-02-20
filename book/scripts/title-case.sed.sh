#!/bin/sh

gsed -ri '/^[.=]/ s/\b(.)/\u\1/g' *.adoc

# Capitalize the first letter of every word
# Do not capitalize
    # Articles: a, an, the
    # Coordinating Conjunctions: and, but, or, for, nor, etc.
    # Prepositions (fewer than five letters): on, at, to, from, by, etc.

gsed -ri '/^[.=]/ s/\b(A|An|The|On|At|To|From|By|And|But|Or|For|Nor|With)\b/\l\1/g' *.adoc


# Always capitalize the first word
gsed -ri '/^[.=]/ s/^(..)/\U\1/' *.adoc

# Always capitalize the last word
gsed -ri '/^[.=]/ s/\b(\w)(\w*)$/\u\1\2/' *.adoc

