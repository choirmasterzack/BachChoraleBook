\version "2.18.2"

\header {
  title = "Erhalt uns Herr"
  subtitle = "Descend, O Spirit"
  composer = "Geistliche Lieder, 1543"
  arranger = "J.S. Bach (1685-1750)"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
    top-margin = .2\in
  bottom-margin = .2\in
  %inner-margin = 1\in
  left-margin = .2\in
  right-margin = .2\in
  %page-count = 1
  %system-count = #2
  indent = #0
}

global = {
  \key e \minor
  \time 4/4
  \partial 4
}

soprano = \relative c' {
  \global
  % Music follows here.
  e8( fis) g4 fis8( e) dis4 e8( fis) g4 fis e \breathe
  g a a b g a a b \breathe b c b8( c) d( c) b4 
  a8( g) a4 g \breathe b g a g fis e dis e \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  b4 e8( d) c4 b b8( dis) e4 dis b \breathe e 
  d?8( e) fis4 g e e fis8( e) dis4 \breathe e4 e8( fis) g4 a g 
  fis8[ g](~g[ fis]) d4 \breathe fis e a, e' dis e8( c) b4 b
}

tenor = \relative c' {
  \global
  % Music follows here.
   g8( a) b4 a8( g) fis4 g8( a) b[( c)] fis,[( b)] g4 \breathe b 
   a d d b e8[( g)] a,4 fis \breathe g a d d d c8[( b)] c( a) b4 \breathe
   b4 b e8( dis) b4 b8( a) g4 fis8( g16 a) g4 
}

bass = \relative c {
  \global
  % Music follows here.
  <e e,> e a, b8[( a)] g( <fis fis'>) <e e'>[( a)] b4 e, \breathe
  e' fis d g8[( fis)] e( d) c( b) c4 b \breathe e a, g fis g 
  d' d g dis e8( e,) fis4 g8( a) b4 c8( a) b4 <e, e'> 
}

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
   De -- scend, O Spi -- rit, purg -- ing flame, 
   brand us this day with Je -- sus' Name! 
   Con -- firm our faith, con -- sume our doubt; 
   sign us as Christ's with -- in, with -- out.
}

verseII = \lyricmode {
    \set stanza = "2."
    For -- bid us not this sec -- ond birth; 
    grant un -- to us the great -- er worth! 
    En -- list us in your ser -- vice Lord;
    Bap -- tize all na -- tions with your Word.
    
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol #'staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

\score {
    \new ChoirStaff <<
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \soprano }
      \addlyrics { \verse }
      \addlyrics { \verseII }
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \alto }
      \addlyrics { \verse }
      \addlyrics { \verseII }
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \clef "treble_8" \tenor }
      \addlyrics { \verse }
      \addlyrics { \verseII }
      \new Staff \with {
        \consists "Ambitus_engraver"
      } { \clef bass \bass }
      \addlyrics { \verse }
      \addlyrics { \verseII }
    >>
  \layout { }
}
