# openLilyLib Engraving Challenges

## Challenge #02 - Schumann: Carnaval

### LilyPond latest development/custom version

This document will be the report of tackling the Schumann challenge
with the latest builds of
[LilyPond](http://lilypond.org).

LilyPond will be regularly built from the latest `master` commits.  
It is possible to incorporate custom patches to test new functionality.  
It is taken by Urs Liska.

---

## Analysis

Structurally this piece isn't complicated at all:

- l.h. is with two voices, while voice one works with spacer rests
- Some consideration has to be done what happens at the change in models  
  (m. 13 and 29)
- r.h. is practically always one voice.
- m. 34 is non-standard, but this can easily be realized by giving
  both voices \voiceOne and suppressing the warnings.
- A question is if the octave should be typed out or done with a function.  
  A function may be faster but probably takes more time to set up,
  given the low number of 'instances'.
