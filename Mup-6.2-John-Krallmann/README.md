### Engraving Challenge: Schumann's _Estrella_ from _Carnaval_

This is a submission to [_Engraving Challenges_]
(https://github.com/engraving-challenges/main/blob/master/README.md),
an open contest in music engraving.

It was created by John Krallmann using Mup 6.2
You can see notes documenting the process of creating this score in the
[`progress-report.md`](progress-report.md) file.

I am one of the two co-authors of the Mup music publication program.
Mup was first made available as shareware in 1995 from arkkra.com.
In 2012 it was made freeware.

Mup takes a text file as input and produces
either PostScript or MIDI as output.
Mup itself in written in C and requires only libc and libm,
so can run on pretty much any system that has a C compiler.

Since Mup supports ifdefs that allow you to print many different variations
of printed output from a single file, rather than committing many different
copies of the file (that you would then have to extract from the git version
control and diff yourself), I provided one file
[estrella.mup](estrella.mup) for the simple default input,
and a second file [estrella2.mup](estrella2.mup)
that lets you see the input changes for all the tweaks from a single file,
where each tweak can easily be turned on and off
as desired to see its effects.
