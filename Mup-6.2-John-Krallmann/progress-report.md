# Task Analysis
===============

My first impression on looking at the original score was that it should
be very straightforward to enter and get good results, though
some things may look somewhat different from the original score,
and it may then be a matter of taste which is "better."

The next thing that jumped out was the crescendo hairpin
at the end of the first system. On the original score it is crashing
through a note stem and a slur. Mup is very careful to avoid such
collisions, so I expect Mup output will not do that.

Then I noticed the third to last measure, where a quarter note and half
note share a stem, which is one of the specific challenges.
Mup does support mixing head shapes like that,
so it should not be a problem.  It is so rarely used, however,
that I had to look in the manual to remember how to do it.
Mup does alternate head shapes through a level
of indirection, which can be a little confusing at first,
but it was deliberately implemented that way, because of the assumption that
the most common usage of alternate note heads would be for "Sacred Harp"
style shaped notes, so it was optimized for that case.
In this case we just want to force something on a quarter note stem to
look like a half note. That's still not hard to do: it just takes
a couple lines at the top to define a mapping from time value to headshape,
and then a headshape override at the appropriate place.

The other specific item mentioned, the "invisible rests,"
is no problem at all. Having a voice for only part of a measure
is very common, and just requires specifying "s" for "space" there.

# Initial Empty File
====================

I created an input file [empty.mup](empty.mup)
specifying the page size and margins as given
in the challenge. As for staff height, I never think about that in
terms like millimeters or points.  Mup has a default size,
and then the entire output or individual staffs can be scaled
from 1/10 to 10 times the default. So unless I know I'm going to want
certains staffs a different size than others, I don't think about staff
height at all at the beginning, only after the music has all been entered,
and then only if the default seems not the best for that particular piece.

But if a particular size is to be specified up front,
certainly that can be done.
Since a "stepsize" in the default scale factor is 3 points,
that means the default staff height is 24 points.
So if 20 points is desired, a scale of 0.833 should be good.

The instructions say to create a pdf snapshot after each step,
but since the file is supposed to contain only page setup
and no music input yet at this step, the output is a completely blank page,
so taking a snapshot at this step seems rather pointless.

# Raw Music Entry
=================

It took about 55 minutes to type in the raw music data and fix my typos.
Input file size was less than 3 K bytes.
It takes Mup about 20 milliseconds to generate the PostScript output
on my 2.2 GHz dual-core machine.

I did run into one thing that took a bit of thought,
that I hadn't noticed when just looking at the piece.
Three measures from the end, the left hand has a phrase mark below the
staff. Normally Mup will associate phrase marks below the staff with
voice 2, which would normally be stem-down notes, whereas here it was
wanting a phrase mark below associated with stem up notes. I decided the
easiest way to deal with that case was to just use voice 3 instead.
It could have also been done by forcing stem directions.

[01-estrella-raw-default.pdf with default layout](01-estrella-raw-default.pdf)

# Line Breaks
=============

I added an "ifdef" to make it possible to see the output with or without
forcing line breaks at specific places, from the same input file,
controlled by whether -D NO_LINE_BREAKS is specified on the command line.
By default, Mup had put one additional measure on the final score,
as compared with the original.

[estrella.mup input file](estrella.mup)

[02-estrella-raw-line-breaks.pdf with line breaks forced](02-estrella-raw-line-breaks.pdf)

# On/Off Operations
===================

I could not think of anything that fell into this category that would
make any improvements.




	NOTE: For the remaining parts of the challenge,
	I decided to create an [estrella2.mup](estrella2.mup) file that includes
	ifdefs for each change. That makes it possible to see
	all the changes without doing comparision of git versions.
	The single input file can be used to demonstrate the effects of
	including or not including various tweaks.
	Comments at the top of the file explain what can be set.




# Global Layout Settings
========================

There was a little more white space after the last score than I liked.
Mup provides several parameters to adjust spacing between scores
and staffs. I use scoresep most often in cases like this,
but in this case adjusting scorepad seemed the best choice.

Only the left and right margins had been specified in the challenge,
so I decided to make top and bottom margins the same for consistency.

I decided the text could be slightly larger, so set the size parameter.

[03-estrella-tweaked.pdf](03-estrella-tweaked.pdf)

These changes can be turned off using -D NO_GLOBAL_TWEAKS.

I thought of an alternate way to get the mixed note heads on a single stem,
of putting the half note in voice 1 and the quarter in voice 2,
but then forcing voice 2 stem up, and forcing them both to have
zero horizontal offset from each other, so it appears as a single chord.
-D ALT_MIXED_NOTEHEADS will cause that way to be used.

# Tweak to Usable Quality
=========================

I did not see anything that needed any additional tweaking.

# Tweak to Publication Quality
==============================

I did not see anything that needed additional tweaking.

# Proofreading
==============

The best way to proofread is to "proof listen" by having Mup generate
a MIDI file and listen to that. Errors that would slip by unnoticed by eye
tend to leap out to the ear.

# Version with Changed Layout
=============================

I added an ifdef for -D SMALLPAGE to support the smaller page size.
Since it was specified the staff size was to remain the same,
this caused the music to spill onto multiple pages.
There was nothing that looked bad,
although if this were actually to be published, I'd probably adjust
a few things, maybe force down to two pages.

[04-estrella-smallpage.pdf](04-estrella-smallpage.pdf)


# Transposed Version
====================

Mup (correctly) pointed out that transposing up a minor second would result
in an invalid key signature of 9 flats, and that transposing down by
a major third would result in an invalid key signature of 8 flats.

It had no problem transposing when given the correct equivalents of
up an augmented 1 and down a diminished fourth.

The transposition to three sharps needed no adjustments at all.
[05-estrella-up-aug-1.pdf](05-estrella-up-aug-1.pdf)

The wider key signature of six sharps did cause the music to spill onto
a second page.
[06-estrella-down-dim-4.pdf](06-estrella-down-dim-4.pdf)

But a simple one line adjustment to packfact
(controlled by -D PACK) fixed that.
[07-estrella-down-dim-4-packed.pdf](07-estrella-down-dim-4-packed.pdf)
