Raw input
---------

No global settings and no forced line breaks. This was provided at Janek's request and derived from global-settings version.

1. Because the selection of postscript slurs is a global setting (which I always use), without that setting the code reverts to font-based slurs, which have some syntax differences and restrictions in PMX. I therefore had to make some minimal changes in some slur and tie commands from estrel1 just to get it to compile. In particular, those restrictions have led to different default horizontal positioning of tie ends on the tied octaves in bars 21-27.

2. With font-based slurs also come font-based hairpins, and there are no line-breaking hairpins available in this (default) case.

3. Default linebreaks put 9 bars in each system, although the PMX linebreak algorithm is far more sophisticated than putting the same number of bars in each system. For example, if I increased the first-line indent from 4% to 10%, default bars per system come out  8,9,9,10. Exactly why the prototype has 8,9,10,9 is somewhat of a mystery. One clue may be that there are two dotted patterns in the top system; many  schemes would allot more horizontal space to these than PMX does. Since there are no notes in the treble on the second beat, PMX's algorithm does not insert even as much extra space there as an eighth note would occupy.

4. File size is 1903 bytes.


Forced line breaks
------------------

Forced line breaks but still no global settings. All the above comments about the slurs  and hairpins still apply. I emphasize again that I never use font-based slurs. However, I left them as the PMX default for historical reasons: postscript slurs came along later, and I did not want to introduce a backward incompatibility. But since introducing postscript slurs as a global option, all improvements on slur-related matters, of which there have been many, have been in postscript slurs, leaving font-based slurs behind.


Global settings
---------------

I set several global options:

1. force use of
"postscript" slurs, as distinct from the older but default font-based slurs;

2. use only "big" accidentals rather than the older default choice of small
or big depending on available space;

3. "Keyboard" rest positioning, which
vertically adjusts rest positions in staves with two lines of music (this
only adjusted the quarter rest in bar 13).

It would be interesting to compare the
sizes of source files among programs. In this version mine is 1,918 bytes.


Individual adjustments
----------------------

These are the additional tweaks applied:

1. Tempo and dynamic marks shifted horizontally and/or vertically. Many
accent marks on notes in bass clef above the staff had to be lowered,
because PMX calculates position based on a fixed, baseline stem length, but
MusiXTeX shortened these particular stems.

2. Interstaff spacing decreased.

3. Many slurs adjusted. Many of these adjustments were applied using a new,
single-character input option (per slur-end) that I just coded, to simply
shift the slur end vertically by 4 note levels from the default position
just above or below the notehead, up or down depending on stem direction.
Others tweaks were applied to the two line-breaking slurs, to adjust the end
of the first segment and the start of the second. Finally, others were
individually tailored. I could have applied more individually tailored
tweaks to the stem-connecting slurs, but first I'd like to hear comments
about what the rules are for positioning them.
