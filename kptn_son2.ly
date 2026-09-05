\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

upper = \relative { \clef "bass"
  r8 a b
}

lower = \relative { \clef "bass"
  \voiceOne \crossStaff <b, e,>8  {a'8} a
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
      \new Staff = "Upper" \upper
      \new Staff = "Lower" \lower
    >>
  >>

  \midi { }
}