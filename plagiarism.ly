\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

guitarMusic = \relative c' {
  \clef treble
  \key bes \minor
  \time 2/2
  \tempo \markup { \rhythm{8[8]} = \rhythm{\tuplet 3/2 {4 8}} } 2 = 100

  r1 r
  r r r r r r r r r r r r r r r r % 16 bars
}
upper = \relative c'' {
  \clef treble
  \key bes \minor
  \time 2/2
  
  r1 r2 aes'8 r f  r | ees8 r4 8 r8 8 8 8 | f r ees r des r4 
  aes8 | des8 8 8 8 8 8 8 8 | ees r des f ees r4 
  aes,8 | des4 8 8 8 8 8 8 |  c des8 8 4. r8 
  aes | des8 8 8 8 8 8 8 8 | c des8 8 4. r8
  aes | ges' aes8 8 8  8 r des,8 8 | c c des r4 
  aes8 des8 8 | 8 8 8 r f r ees r | des r4
  c8 des8 8 8 8 | 8 8 8 8 8 8 8 ees | des8 8 ees f ges f ees des |  c c des ees des

}

lower = \relative c {
  \clef bass
  \key c \major
  \time 2/2

  r1 r <aes des>8 r aes8 r8 8 r8 8 r8 | 8 r8 8 r8 8 r8 8 r8 | 
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