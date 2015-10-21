\version "2.18.2"

\header {
  title = "Break Forth, O Beauteous heavenly light"
  subtitle = "From the “Christmas Oratorio”"
  subsubtitle = "For Four-Part Chorus of Mixed Voices"
  instrument = "with Optional Organ Accompaniment"
  composer = "Johann Sebastian Bach"
  arranger = "Edited by Alice Parker"
  opus = "and Robert Shaw"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  page-count = 2
  
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key g \major
  \time 4/4
  \partial 4
  \tempo "Richly" 4=58
  
}

soprano = \relative c'' {
  \global
  % Music follows here.
  g4 g a b8( cis) d4 d cis d\fermata b 
  c! b a b a2 g4\fermata g 
  g a b8( cis) d4 d cis d\fermata b c b a b a2 g4\fermata
  a4 a b c c b8( a) b4 a\fermata b^\cresc b b c8( d) e4 e dis e\fermata
  fis^\ff
  g b, c b a2 a4\fermata d^\f e d c b8( c) a2 g4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
   d4 e fis d8( e) fis4 e8( fis) g4 fis\fermata 
   fis e d8( e) fis4 g g( fis) d\fermata d
   e fis d8( e) fis4 e8( fis) g4 fis\fermata fis e 
   d8( e) fis4 g g( fis) d\fermata
   fis8( g) a4. gis8 a( gis) a4 a gis e\fermata 
   e8( dis) e4 e e8[( fis)] g( fis) fis( g) a4 g\fermata 
   a g8( a) b4 b8[( a)] a( g) g2 fis4\fermata 
   g8( fis) e4 fis g8( a) d,4 e( d) d\fermata
}

tenor = \relative c' {
  \global
  % Music follows here.
  b4 b8( c4) d8 b( a) a4 a a a\fermata
  b8( a) g[( a)] b( c) d4 d d4.( c8) b4\fermata
  b4 b8( c4) d8 b( a) a4 a a a\fermata
  b8( a) g[( a)] b( c) d4 d d4.( c8) b4\fermata
  d8( e) fis( e) d4 e fis b, e8( d) c4\fermata
  g8^\cresc( a) b[( c)] d( e) c4 cis b b b\fermata 
  d^\ff d g g,8( a) b4 e8( d e cis) d4\fermata
  d d8[( c)] c( b) b( a) g4 g8( fis16 e fis4) b\fermata
}

bass = \relative c' {
  \global
  % Music follows here.
  g8( fis) e4 d g fis8( g) a4 a, d\fermata 
  dis e8[( fis)] g[( c,)] c'[( b)] a( g) d'4( d,) g\fermata
  g8( fis) e4 d g fis8( g) a4 a, d\fermata 
  dis e8[( fis)] g[( c,)] c'[( b)] a( g) d'4( d,) g\fermata
  d d'8( c) b4 a dis, e e a,\fermata e'8( fis) g4 gis a ais b 
  b, e\fermata d'8( c) b[( a)] g[( fis)] e[( fis)] 
  g( e) cis( b cis a) d4\fermata
  b c! d e8[( fis)] g4 c,( d) g,\fermata

}

verse = \lyricmode {
  % Lyrics follow here.
  Break forth, O beau -- teous heav'n -- ly light, 
  And ush -- er in the morn -- ing; 
  Ye shep -- herds, shrink not with af -- fright, 
  but hear the an -- gel's warn -- ing. 
  This Child, now weak in in -- fan -- cy, 
  Our con -- fi -- dence and joy shall be, 
  The pow'r of Sa -- tan break -- ing, 
  our peace e -- ter -- nal mak -- ing. 
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-2
  \override StaffSymbol #'staff-space = #(magstep -3)
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
  <<
    \new ChoirStaff <<

    \new Staff \with {
        instrumentName = "Soprano"
        \consists "Ambitus_engraver"
      } \new Voice = "soprano" \soprano
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verse

    \new Staff \with {
        instrumentName = "Alto"
        \consists "Ambitus_engraver"
      } \new Voice = "alto" \alto
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "alto" \verse

    \new Staff \with {
        instrumentName = "Tenor"
        \consists "Ambitus_engraver"
      } {
        \clef "treble_8"
        \new Voice = "tenor" \tenor
      }
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "tenor" \verse

      \new Staff \with {
        instrumentName = "Bass"
        \consists "Ambitus_engraver"
      } {
        \clef bass
        \new Voice = "bass" \bass
      }
      \new Lyrics \with {
        %\override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "bass" \verse
    >>
    \pianoReduction
  >>
  \layout { }
}
