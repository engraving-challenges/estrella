\version "2.19.1"

\header {
  subtitle = "Estrella"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key f \minor
  \time 3/4
  \tempo "Con affetto"
}

right = \relative as' {
  \global
  <as as'>2
}

leftOne = \relative f, {
  \global
  \voiceOne
  f4_\markup "Pedal" as'( c,)
  
}

leftTwo = \relative c' {
  \global
  \voiceTwo
  s4 as2
  
}
dynamics = {
  \global
  s2.*5\ff | %1-5
}

\score {
  \new PianoStaff <<
    \new Staff = "right" {
      \accidentalStyle piano
      \right
    }
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "left" { 
      \accidentalStyle piano
      \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
}
