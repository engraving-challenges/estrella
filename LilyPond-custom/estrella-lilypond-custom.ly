\version "2.19.1"

\header {
  subtitle = "Estrella"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key f \minor
  \numericTimeSignature
  \time 3/4
  \tempo "Con affetto"
}

right = \relative c'' {
  \global
  % Music follows here.
  
}

leftOne = \relative c' {
  \global
  % Music follows here.
  
}

leftTwo = \relative c' {
  \global
  % Music follows here.
  
}

\score {
  \new PianoStaff <<
    \new Staff = "right" \right
    \new Staff = "left" { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
}
