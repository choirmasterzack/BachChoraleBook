\version "2.18.2"

\header {
  dedication = "(Benediction Response)"
  title = "O Be Glad, My Soul, Be Cheerful"
  subtitle = "Freu dich sehr, O meine Seele"
  composer = "Harm: J.S. Bach"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
    left-margin = 1.2\in
  %top-margin = 1\in
  bottom-margin = 1\in
  right-margin = 1.2\in
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key g \major
  \numericTimeSignature
  \time 3/4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  g2 a4 b2 a4 g fis e d2.\fermata
  g2 a4 b2 c4 b4 a2 g2.\fermata 
  g2 a4 b2 a4 g fis e d2.\fermata
  g2 a4 b2 c4 b4 a2 g2.\fermata
  b2 c4 d2 c4 b4 a2 b2.\fermata
  d2 d4 e2 d4 c b2 a2.\fermata 
  b4( c) d c2 b4 g2 a4 b2. 
  g2.\fermata 
  b4( c) d c2 b4 a b2 a2. g2.\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  d2 d4 d2 d4 e d cis a2.\fermata
  e'2 fis4 g2 g4 g2 fis4 d2.\fermata
  d2 d4 d2 d4 e d cis a2.\fermata
  e'2 fis4 g2 g4 g2 fis4 d2.\fermata
  g2 g4 fis( g) a g2 fis4 g2.\fermata
  g2 g4 g2 fis4 g g2 fis2.\fermata
  g2 a4 g2 fis4 e2 e4 e( dis8 cis dis4) e2.\fermata
  d!4( e) f! e( fis) g fis g2 g4( fis8 e fis4) d2.\fermata  
}

tenor = \relative c' {
  \global
  % Music follows here.
  b2 fis4 g2 a4 a a a fis2.\fermata
  b2 d4 d2 c4 d( e) d b2.\fermata
  b2 fis4 g2 a4 a a a fis2.\fermata
  b2 d4 d2 c4 d( e) d b2.\fermata
  d2 e4 a,2 d4 d( e) d4 d2.\fermata
  b4( c) d c( b) a e' d2 d2.\fermata
  d2 d4 g,( a) b b2 a4 g( fis b) b2.\fermata
  b2 b4 c2 d4 d2 e4 a,( b c) b2.\fermata
  
}

bass = \relative c {
  \global
  % Music follows here.
  g4( b) d g2 fis4 cis d a d2.\fermata
  e2 d4 g( fis) e d( c) d g,2.\fermata
  g4( b) d g2 fis4 cis d a d2.\fermata
  e2 d4 g( fis) e d( c) d g,2.\fermata
  g'4( fis) e d( e) fis g( c,) d g,2.\fermata
  g'4( a) b c( c,) d e8( fis) g4( g,) d'2.\fermata
  g2 fis4 e2 dis4 e( d!) c b2. e2.\fermata 
  g2 g,4 a2 b4 c4( b) c4 d2. g,2.\fermata
}

VerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  O be glad, my soul, be cheer -- ful, 
  now for -- get  thy grief, thy pain. 
  Je -- sus calls thee, be not fear -- ful, 
  thou shalt life in heav'n ob -- tain. 
  Je -- sus bids thee to de -- part 
  from life's cares and ills which smart, 
  to en -- joy e -- ter -- nal plea -- sure 
  which we mor -- tals can -- not mea -- sure.
}

GermanText = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Freu dich sehr, o mei -- ne See -- le,
und ver -- giß all Not und Qual,
weil dich nun Chris -- tus, dein Her -- re,
ruft aus die -- sem Jam -- mer --tal.
Aus Trüb -- sal und gro -- ßem Leid
sollst du fah -- ren in die Freud,
die kein Ohr hat je ge -- hö -- ret,
die in E -- wig -- keit auch wäh -- ret.
}

tenorVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  
}

bassVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  
}

sopranoVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

altoVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

tenorVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

bassVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "Soprano"
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \VerseOne }
    \addlyrics { \GermanText }
    \new Staff \with {
      instrumentName = "Alto"
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \VerseOne }
    \addlyrics { \GermanText }
    \new Staff \with {
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \VerseOne }
    \addlyrics { \GermanText }
    \new Staff \with {
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \VerseOne }
    \addlyrics { \GermanText }
  >>
  \layout { }
}
