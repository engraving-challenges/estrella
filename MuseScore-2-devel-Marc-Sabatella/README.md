# openLilyLib Engraving Challenges

## Challenge #02 - Schumann: Carnaval

### MuseScore 2.0 development version

This document will be the report of tackling the Schumann challenge
with the in-development version of
[MuseScore 2.0](http://musescore.org/en/developers-handbook/references/musescore-2.0-roadmap).
It is taken by Marc Sabatella, a peripheral member of the 2.0 team.

---

#### Journal

##### Initial thoughts

On examining the source, it looks mostly straightforward.  Aside from layout details, there are only two aspects that will need special intervention just to notate: the incomplete voice notation used through in the LH (two voices, but only one shows all three beats) and the similar notation in the RH in the third bar from the end (made trickier by the combination of two voices onto one stem).  Everything else should be completely straightforward.

Time spent: about 0:05

* [01-initial-commit.pdf](01-initial-commit.pdf)

##### Note entry

Convenient that even though the voice pattern changes at bar 13, it's still the case that voice 2 rests are the ones to be suppressed!

Making liberal use of copy & paste.

Selecting and hiding the voice 2 rests in the LH part is trivial.  Not sure the best way to hand the RH in bar 34.  The easy solution is to simply change the notehead for the top Gb on beat one to a half-note notehead.  But it would playback incorrectly, and this feels un-MuseScore-like.  So instead, I will make this two voices.

Time spent: about 1:15

* [02-note-entry.pdf](02-note-entry.pdf)
* [03-voice-manipulation.pdf](03-voice-manipulation.pdf)

##### Markings

Ran into a couple of bugs in this development version of MuseScore.  While placement of markings is far from ideal (*far* from it!) overall, the slur oiver bar 34 RH is just plain wrong - probably on account of the voice trickery going on there.

Time spent: about 0:15 

* [04-with-articulations-and-dynamics](04-with-articulations-and-dynamics)

##### Global layout

Some judgement calls to make here.  I elected to set this on Letter-sized paper, as I am in the US and this is most natural for me.  For this initial challenge at least, I decided to copy the original layout in terms of number of measures per line and overall density.  Trial and error led me to select staff space size of 1.6mm and "spacing" setting of 1.1 (a MuseScore-ism, I guess, that controls horizontal spacing, with manual line breaks inserted as necessary.

I kept the MuseScore default font face, FreeSerif, for the text, but set the "title" (which I typeset as a subtitle, since it is one movement of a larger work) to 16pt bold and the tempo to 12pt bold.  After a few experiments, I kept the default grand staff spacing of 6.5sp and set the system spacing to 12sp.

Time spent: 0:05

* [05-custom-spacing.pdf](05-custom-spacing.pdf)

##### Manual adjustments

I did my first round of manual adjustments in stages.

First, I added staff spacers to create extra distance between the staves in systems 2-4.  Again, I elected to more or less copy the model for now.

Next I adjusted the vertical position of dynamics and hairpins.  Some needed to be raised, others lowered.

Next I adjusted the horizonal position of articulations.  MuseScore defaulted to adding the accents quite far above the stems for the "outer" voices in the multi-voice context, but it is simple enough to select a group of them and apply an adjustment.

Next I adjusted the slurs.  A couple were on the "wrong" side of the notes compared to the original, and again, I chose to emulate the original here.  I also adjusted the starting point of a few to look better to my eyes - not necessarily using the original as a model.  The angle was odd on a couple of the short slurs in the LH of the middle section, so I adjusted that too.  I also changed the over slur middle thickness to emulate the heavier look of the original.  I also adjusted the length of the hairpins.

Throughout this stage, I actually used the keyboard rather than the mouse to make adjustments, or else I used the spinboxes in the Inspector, to make the adjustments in precise amounts.  For now, I made all my adjustments in 0.5sp increments only.

Time spent: 0:25

* [06-adjusted-articulations-and-dynamics.pdf](06-adjusted-articulations-and-dynamics.pdf)

##### MuseScore update

I have been using a development build of MuseScore, and from time time changes are made during a development cycle that invalidate scores made with previous builds.  A couple of recent bug fixes required me to update my score, and to re-enter and re-adjusted a few markings.  This is not something that would normally happen when using a stable / released version.  But needing to revisit these adjustments gave me incentive to do a more careful job in a couple of cases.

Time spent: 0:10

* [07-further-adjustments.pdf](07-further-adjustments.pdf)

##### Adjustments based on forum discussion

In comments to other entries in this challenge, there was mention that the initial tempo marking should align with the time signature, and that dynamics should not touch stems.  I add two small adjustments to my score as a result.

* [08-tempo-pos-and-last-system-space](08-tempo-pos-and-last-system-space)
