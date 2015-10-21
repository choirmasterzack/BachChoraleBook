\version "2.18.2"

\header {
  title = "Lord Jesus Christ, With Us Abide"
  subtitle = "Ach Bleib Bei Uns, Herr Jesu Christ"
  composer = "Harm. J.S. Bach"
  poet = "Nikolaus Selnecker"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  left-margin = 1.2\in
  %top-margin = 1\in
  right-margin = 1.2\in
  bottom-margin = 1\in
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  b4 b8( c) d4 b g a b c\fermata b a g g4.( a8 b4) 
  b a8( g) a4 g2. b4 a b g e fis g a\fermata b g g g4.( a8 b4) 
  b a8( g)  a4 g2. \bar "|."
}

alto = \relative c'' {
  \global
  % Music follows here.
  g4 g a g g f!8( e) d4 e\fermata d d8( c) b4 e2( d4) d 
  d4.( c8) b2. g'4 fis fis e8( d!) cis4 d4. cis8 d4\fermata
  dis4 b e d!( e8 fis g4) d d4. c8 b2. 
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  d4 d d d d8( c) c4 g g\fermata g fis g c2( b8 a) g4 g fis d2.
  d'4 d8( c) b4 b a a g fis\fermata fis g c! b8( c b a g4) g 
  g fis d2.
}

bass = \relative c {
  \global
  % Music follows here.
  g4 g' fis g e f! g c,\fermata g d' e8( d) c( d e fis g4) b,8( c) 
  d4 d g,2. g4 d' dis e a8( g) fis4 e d\fermata b 
  e8( d) e( fis) g( a g fis e4) b8( c) d4 d g,2.
}

sopranoVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Lord Je -- sus Christ, with us a -- bide, 
  For round us falls the ev -- en -- tide; 
  Let not Thy Word, that heav'n -- ly light, 
  For us be ev -- er veiled in night
}

altoVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
    Lord Je -- sus Christ, with us a -- bide, 
  For round us falls the ev -- en -- tide; 
  Let not Thy Word, that heav'n -- ly light, 
  For us be ev -- er veiled in night
}

tenorVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
    Lord Je -- sus Christ, with us a -- bide, 
  For round us falls the ev -- en -- tide; 
  Let not Thy Word, that heav'n -- ly light, 
  For us be ev -- er veiled in night
}

bassVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
    Lord Je -- sus Christ, with us a -- bide, 
  For round us falls the ev -- en -- tide; 
  Let not Thy Word, that heav'n -- ly light, 
  For us be ev -- er veiled in night
}

sopranoVerseTwo = \lyricmode {
  \set stanza = "3."
  O keep us in Thy Word, we pray; The guile and rage 
  of sa -- tan stay; Un -- to Thy Church grant, Lord, Thy grace, 
  Peace, con -- cord, pa -- tience, fear -- less -- ness.
}

sopranoVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Ach bleib bei uns, Herr Je -- su Christ,
  weil es nun A -- bend wor -- den ist;
  dein gött -- lich Wort, das hel -- le Licht
  laß ja bei uns aus -- lö -- schen nicht! 
}

altoVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  O keep us in Thy Word, we pray; The guile and rage 
  of sa -- tan stay; Un -- to Thy Church grant, Lord, Thy grace, 
  Peace, con -- cord, pa -- tience, fear -- less -- ness.
}

altoVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Ach bleib bei uns, Herr Je -- su Christ,
  weil es nun A -- bend wor -- den ist;
  dein gött -- lich Wort, das hel -- le Licht
  laß ja bei uns aus -- lö -- schen nicht! 
}

tenorVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  O keep us in Thy Word, we pray; The guile and rage 
  of sa -- tan stay; Un -- to Thy Church grant, Lord, Thy grace, 
  Peace, con -- cord, pa -- tience, fear -- less -- ness.
}

tenorVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Ach bleib bei uns, Herr Je -- su Christ,
  weil es nun A -- bend wor -- den ist;
  dein gött -- lich Wort, das hel -- le Licht
  laß ja bei uns aus -- lö -- schen nicht! 
}

bassVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  O keep us in Thy Word, we pray; The guile and rage 
  of sa -- tan stay; Un -- to Thy Church grant, Lord, Thy grace, 
  Peace, con -- cord, pa -- tience, fear -- less -- ness.
}

bassVerseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  Ach bleib bei uns, Herr Je -- su Christ,
  weil es nun A -- bend wor -- den ist;
  dein gött -- lich Wort, das hel -- le Licht
  laß ja bei uns aus -- lö -- schen nicht! 
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      instrumentName = "Soprano"
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \sopranoVerseOne }
    \addlyrics { \sopranoVerseTwo }
    \addlyrics { \sopranoVerseThree }
    \new Staff \with {
      instrumentName = "Alto"
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \altoVerseOne }
    \addlyrics { \altoVerseTwo }
    \addlyrics { \altoVerseThree }
    \new Staff \with {
      instrumentName = "Tenor"
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerseOne }
    \addlyrics { \tenorVerseTwo }
    \addlyrics { \sopranoVerseThree }
    \new Staff \with {
      instrumentName = "Bass"
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \bassVerseOne }
    \addlyrics { \bassVerseTwo }
    \addlyrics { \sopranoVerseThree }
  >>
  \layout { }
}
