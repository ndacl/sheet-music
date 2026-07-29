\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

guitarMusic = \relative c' {
  \clef treble
  \key bes \minor
  \time 2/2
  \tempo \markup { \rhythm {8[8]} = \rhythm {\tuplet 3/2 {4 8}} } 2 = 100

  r1
}
upper = \relative c'' {
  \clef treble
  \key bes \minor
  \time 2/2
  
  r1 r2 aes'8 r f  r ees8 r4 8 r8 8 8 8 f r ees r des
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/2

  r1
}

\score { <<
    \new Staff = "Guitar" \with { instrumentName = "Guitar" } <<
      \guitarMusic
    >>

    \new PianoStaff = "Piano" \with { instrumentName = "Piano" } <<
      \new Staff = "Upper" \upper
      \new Staff = "Lower" \lower
    >>
  >>

  \layout { }
  \midi { }
}