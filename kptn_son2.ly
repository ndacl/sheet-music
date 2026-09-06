\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

upper = \relative { \clef "bass" \key e \major
  s1
}

lower = \relative { \clef "bass" \key e \major
  <b, e,>8  \change Staff = "upper" <a' b e>8 gis \change Staff = "lower" <b, e,>
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
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>

  \midi { }
}