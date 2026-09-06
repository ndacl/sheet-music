\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

melody = \relative { 
  s1
}

texture = \relative { 
  \stemUp <b, e,>8  \change Staff = "u" \stemDown <a' b e>8 gis \change Staff = "d" \stemUp <b, e,>
}

bass = \relative { 
  <>
}

\score { 
  \layout {
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
    }
  }

  <<
    \new PianoStaff = "Piano" <<
      \new Staff = "u" << \clef "treble" \key e \major \time 2/2
        \new Voice = "melody" \melody 
      >>
      \new Staff = "d" << \clef "bass" \key e \major \time 2/2
        \new Voice = "texture" \texture 
        \new Voice = "bass" \bass
      >>
    >>
  >>

  \midi { }
}