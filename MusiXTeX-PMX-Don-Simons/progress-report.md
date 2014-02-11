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
