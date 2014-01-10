# openLilyLib Engraving Challenges

## Challenge #02 - Schumann: Carnaval

### MuseScore 2.0 development version

This document will be the report of tackling the Schumann challenge
with the in-development version of
[MuseScore 2.0](http://musescore.org/en/developers-handbook/references/musescore-2.0-roadmap).
It is taken by Marc Sabatella, a "peripherical member of the 2.0 team".

---

#### Journal

##### Initial thoughts

On examining the source, it looks mostly straightforward.  Aside from layout details, there are only two aspects that will need special intervention just to notate: the incomplete voice notation used through in the LH (two voices, but only one shows all three beats) and the similar notation in the RH in the third bar from the end (made trickier by the combination of two voices onto one stem).  Everything else should be completely straightforward.

##### Thoughts on note entry

Convenient that even though the voice pattern changes at bar 13, it's still the case that voice 2 rests are the ones to be suppressed!

Making liberal use of copy & paste.

Selecting and hiding the voice 2 rests in the LH part is trivial.  Not sure the best way to hand the RH in bar 34.  The easy solution is to simply change the notehead for the top Gb on beat one to a half-note notehead.  But it would playback incorrectly, and this feels un-MuseScore-like.  So instead, I will make this two voices.

Note entry total time about 1:15

