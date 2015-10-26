\version "2.19.28"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Template File cobbled together by Zack von Menchhofen 
%
% http://www.zacheryv.com
% http://www.choirmaster.ca
% http://www.choir.space
%
%
% Feel Free to Use
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
  %title = "Title"
  %subtitle = "Subtitle"
  composer = "Johann Sebastian Bach (1685-1750)"
  title = \markup { \override #'(font-name . "KaiserzeitGotisch") \fontsize #8 { "Title"}}
  %Make a Crown
  %title = \markup {   \override #'(font-name . "IntellectaCrowns") \fontsize #10 {
  %       Y
  %}}
  %Make a pretty border at the bottom
  %copyright = \markup {\override #'(font-name . "IntellectaHeraldics") \fontsize #13 {      "yyyyyy"    }}
  % Remove default LilyPond tagline
  tagline = ##f
}

%#(set! paper-alist (cons '("halfLegal" . (cons (* 8.5 in) (* 9 in))) paper-alist))
#(set-global-staff-size 18)

\paper {
  #(set-paper-size "letter")
  page-break = #ly:minimal-breaking
   #(include-special-characters)
  %between-system-space = 10\mm
  two-sided = true
  top-margin = .5\in
  bottom-margin = .5\in 
  %inner-margin = 1\in
  left-margin = .5\in
  right-margin = .5\in
  %outer-margin = 0.5\in
  %page-count = #2
  %between-system-space = 20\mm
  first-page-number = #18
  print-first-page-number =  ##t
  oddHeaderMarkup = \markup \fill-line { " "  }
  evenHeaderMarkup = \markup \fill-line { " "  }
  oddFooterMarkup = \markup { 
                        \fill-line {
                          \line {   \tiny \bold \smallCaps "Bach::Riemenschneider/vonMenchhofen "    }
                          \line { \tiny \bold \smallCaps "Page: "   \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string } 
                        } 
                      }
  evenFooterMarkup = \markup { 
                        \fill-line {
                          \line { \tiny \bold \smallCaps "Bach::Riemenschneider/vonMenchhofen"  }
                          \line { \tiny \bold \smallCaps  "    Page: "   \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string  } 
                        } 
                      }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
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
}

trumpetC = \relative c'' {
  \global
  % Music follows here.
  b,8( d) g4 g a a g d g\fermata g g d8( g) a( g) d4 b4 r8 \times 2/3 { d16 b d} b4 \bar "'"
  b8( d) g4 g a a g d g\fermata g g d8( g) a( g) d4 b4 r8 \times 2/3 { d16 b d} b4 \bar "'"
  b4 d g g, r4 a'8. b16 b4 r4 d, g a b a g r4 r g 
  g d8( g) a g4 b,8 b4 r8 \times 2/3 {d16 b d} b4\fermata 
}

soprano = \relative c'' {
  \global
  % Music follows here.
  g8( a) b4 c d c b a b\fermata b b a8[( b)] c( b) a4 g8.( a16) a4 g4\fermata
  g8( a) b4 c d c b a b\fermata b b a8[( b)] c( b) a4 g8.( a16) a4 g4\fermata
  
  g a b c b a4. gis8 a4\fermata a  b c d c b a b\fermata
  b b a8[( b)] c( b) a4 g8. a16 a4 g4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  d8( fis) g4 g fis e8( fis) g4. fis8 g4 g g fis8( g) a( g) fis4 g~g8( fis) d4 
  d8( fis) g4 g fis e8( fis) g4. fis8 g4 g g fis8( g) a( g) fis4 g~g8( fis) d4
  
  d4 d d e e e8[( c)] f!( e) e4 fis g f! e e8( fis) g4~g8( fis16 e) dis4
  e4 d!8[( e)] fis( g) a[( g)]~g( fis) e( d) e[( d)] d4  
}

tenor = \relative c' {
  \global
  % Music follows here.
  b8( c) d4 e a, a d d d e d d e8( d) d[( c)] b4 e8( d16 c) b4
  b8( c) d4 e a, a d d d e d d e8( d) d[( c)] b4 e8( d16 c) b4
  
  b4 a g g gis a d c a d c b c8( d) e4 e, fis g8( a) b[( c)] d( g,) fis( g16 fis) e8( fis) 
  g4. fis8 b4
}

bass = \relative c {
  \global
  % Music follows here.
  g4 g'8( fis) e4 d a b8( c) d4 g,_\fermata e' b8( c) d4 a8( b) c[( d)] e( d) c[( d)] g,4_\fermata
  g4 g'8( fis) e4 d a b8( c) d4 g,_\fermata e' b8( c) d4 a8( b) c[( d)] e( d) c[( d)] g,4_\fermata
  
  g' fis f! e d c8( f!) d[( e)] a,4_\fermata
  d8( c) b4 a gis a e'8( d) c4 b_\fermata
  e8( fis) g4 fis8( e) dis[( e)] cis( d) e( b) c![( d)] g,_\fermata
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  
}

verseFour = \lyricmode {
  \set stanza = "4."
  % Lyrics follow here.
  
}

figBass = \figuremode {
  \global
  % Figures follow here.
  %<5 3>1
}

trumpetCPart = \new Staff \with {
  fontSize = #-3
  \override StaffSymbol.staff-space = #(magstep -3)
  \consists "Ambitus_engraver"
  instrumentName = "Cor."
} \trumpetC

choirPart = \new ChoirStaff <<
  \new Staff \with {
    %instrumentName = \markup \center-column { "S." "A." }
  } <<
    \new Voice = "soprano" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \soprano }
    \new Voice = "alto" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verseOne
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verseTwo
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verseThree
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verseFour
  \new Staff \with {
    %instrumentName = \markup \center-column { "T." "B." }
  } <<
    \clef bass
    \new Voice = "tenor" \with {
      \consists "Ambitus_engraver"
    } { \voiceOne \tenor }
    \new Voice = "bass" \with {
      \consists "Ambitus_engraver"
      \override Ambitus #'X-offset = #2.0
    } { \voiceTwo \bass }
  >>
>>

bassFiguresPart = \new FiguredBass \figBass

\score {
  <<
    \trumpetCPart
    \choirPart
    \bassFiguresPart
  >>
  \layout {
    indent = 0
  }
}

%%%%%%%%%%% USE THIS SECTION FOR TWO COLUMN TEXT BELOW MUSIC
%
%#(define-markup-command (columns layout props args) (markup-list?)
%   (let ((line-width (/ (chain-assoc-get 'line-width props
%                         (ly:output-def-lookup layout 'line-width))
%                        (max (length args) 1))))
%     (interpret-markup layout props
%       (make-line-markup (map (lambda (line)
%                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
%                                  #:override `(line-width . ,line-width)
%                                  line))
%                               args)))))
%
%\markup {
%  \fill-line { 
%     \line { 
%       \override #'(font-name . "IntellectaHeraldics") \fontsize #20 {
%         b
%       }
%     }
%  }
%}

%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #17 {{\concat {\smallCaps "Ein Feste Burg ist Unser Gott "}}}
%\markup \abs-fontsize #17 {{\concat {
% \italic {"(A Mighty Fortress is our God)"}}}}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup 
%  \abs-fontsize #11  {
%    \wordwrap  { \justify {
%      In his book, \italic {Bach: Music in the Castle of Heaven,} Sir John Eliot Gardner shares a story of the Bach family.  Bach's whole family were musicians.  They would often get together for huge family affairs-Dinners and Picnics.  Apparently, the Bach family loved to sing "bawldy" drinking songs.  But being a good and faithful Lutheran family, they would often also sing hymns together. So I had to include the most famous of all the German hymns!}
%      }
%    }	   
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 \fill-line {\smallCaps { "- Translation -"} }
%\markup \abs-fontsize #12 {\null}
%\markup { \columns {
%  \column { 
%    \override #'(font-name . "PlakatFraktur") {
%    \wordwrap  { \justify {
%        "Ein' feste Burg ist unser Gott, Ein' gute Wehr und" 
%        "waffen, Er hilft uns frei aus aller Not, Die uns jetzt" 
%        "hat betroffen. Der alt' böse Feind, Mit ernst er's "
%        "jetzt meint, Groß Macht und viel List Sein' grausam" 
%        "Rüftung ist, Auf Erb' ist nicht Sein's Gleichen." 
%    }}  
%    }
%  }
%  \column \abs-fontsize #10 { 
%    \wordwrap  { \justify {
%      "A mighty fortress is our God, A bulwark "
%      "never failing, He helps us free from " 
%      "every need that affects us. The old evil" 
%      "enemy, thinks he's now a great power and" 
%      "much cunning - His cruelty has is not "
%      "an equal."
%    }}
%  }
%}
%}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup \abs-fontsize #12 {\null}
%\markup { \columns {
%  \column { 
%    \override #'(font-name . "PlakatFraktur")  {
%    \wordwrap  { \justify {
%        "Mit uns'rer Macht ist nichts gethan, Wir find gar" 
%        "bald verloren, Es streit' für uns der rechte Mann,"
%        "Den Gott hat selbst erforen. Fragst du, wer der" 
%        "ist? Er heißt Jesus Christ, Der Herr Zebaoth,"
%        "Und ist fein ander' Gott, Das feld"
%        "muß Er behalten." 
%    }}  
%    }
%  }
%  \column \abs-fontsize #10 { 
%    \wordwrap  { \justify {
%      "With our power nothing is done, we find we are"
%      "lost. For us the right man is on our side,"
%      "whom God Himself has given. Ask you who is"
%      "He? His name is Jesus Christ, the Lord of"
%      "Hosts, and He must win the battle."
%    }}
%  }
%}
%}
