# openLilyLib Engraving Challenges

## Challenge #01 - Schumann: Carnaval

### MuseScore 1.3

This document will be the report of tackling the Schumann challenge
with the stable version of
[MuseScore 1.3](http://musescore.org)
I'm working on a small netbook with no mouse, so I might be slower than being on a big workstation, but that's my problem :)

#### Analysis
- I usually don't do thorough analysis of scores with MuseScores, just start engraving.
- But looking at the score I cannot find anything which is not supported out-of-the box by MuseScore or needs some clever trick.

#### Note entry
- Empty page setup in 1 minute
- In measure 13 I was thinking about how to put in the dynamics mark: i just selected the note and double clicked on "p" in the toolbar, but often I drag them manually.
So sometimes in MuseScore you don't "tweak" "default" output, because there is no such thing...
- In measure 13 the voice 1 rest is not moved in MuseScore by default - not even if there is a collision. I got accustomed to move such rests manually, saying "that's the
way in MuseScore", but I kept it in place, to typeset it more LilyPondish...
- That's similar regarding crescendo marks: you have to manually put them, then manually position the begininning and the end.
- Bar 34 RH I switched the direction in the lower voice, as that's done as voice 2.

#### Proof-reading
- I'm asking Marc Sabatella to check my score using the secret link in MuseScore.com - this is a very powerful way of proofreading, I've done it several times with 
music teachers - they can easily get access to the latest version of the score. The score is up at http://mus.cr/19RFUzW
- Also on MuseScore.com you can have comments which can be attached to certain parts of the score - this could be ideal for proofreading.
- Unfortunately I had to make the score public to enable comments in place - a missing feature/bug at musescore.com

After this step I committed and pushed to my fork. PDF can be generated with the command `musescore -o Estrella.mscz`.
