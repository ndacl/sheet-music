\version "2.26.0"

\header {
  title = "Untitled"
  composer = "Composer"
}

guitarMusic = \relative c' {
  \clef treble
  \key bes \minor
  \time 2/2
  \tempo 2 = 100

  r1 r
  r r r r r r r r r r r r r r r r % 16 bars
}
upper = \relative c'' {
  \clef treble
  \key bes \minor
  \time 2/2
  
  r1 r2 aes'8 r f  r | ees8 r \tuplet 3/2 {r4 8} \tuplet 3/2 {r4 8} \tuplet 3/2 {4 8} | f r ees r des r8 
  \tuplet 3/2 {r4 aes8} | \tuplet 3/2 {des4 8} \tuplet 3/2 {4 8} \tuplet 3/2 {4 8} \tuplet 3/2 {4 8} | ees r \tuplet 3/2 {des4 f8} ees r8 
  \tuplet 3/2 {r4 aes,8} | des4 \tuplet 3/2 {4 8} \tuplet 3/2 {4 8} \tuplet 3/2 {4 8} | \tuplet 3/2 {c4 des8} 8 4.
  \tuplet 3/2 {r4 aes8} | \tuplet 3/2 {des4 8} \tuplet 3/2 {4 8} \tuplet 3/2 {4 8} \tuplet 3/2 {4 8} | \tuplet 3/2 {c4 des8} 8 4. r8
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