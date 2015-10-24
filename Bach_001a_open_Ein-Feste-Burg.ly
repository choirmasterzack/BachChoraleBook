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
  arranger = "Used in Cantata BWV 80"
  title = \markup { \override #'(font-name . "KaiserzeitGotisch") \fontsize #8 { "Ein' feste Burg ist unser Gott"}}
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
#(set-global-staff-size 17)

\paper {
#(set-paper-size "letter")
  page-break = #ly:minimal-breaking
   #(include-special-characters)
  two-sided = true
  top-margin = .3\in
  bottom-margin = .3\in 
  left-margin = .5\in
  right-margin = .5\in
  first-page-number = #1
  print-first-page-number =  ##t
  system-system-spacing.basic-distance = #18
  systems-per-page = #3
%  score-system-spacing =
%    #'((basic-distance . 12)
%       (minimum-distance . 6)
%       (padding . 1)
%       (stretchability . 12))
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
                      ragged-bottom = ##t
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
  \key d \major
  \time 4/4
  \partial 4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  d4 d d a8( b) cis4 d8( cis) b4 a\fermata d cis b a b g8( fis e4) d\fermata
  d'4 d d a8( b) cis4 d8( cis) b4 a\fermata d cis b a b g8( fis e4) d\fermata
  \bar "||" d a'( b) a gis a2\fermata d,4 a' b cis d\fermata cis d8 cis b4 a\fermata
  b b a b8( a) g4 fis\fermata d'cis b a b8( a) g4( fis e2) d4\fermata \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  a'4 d, d8( e) fis4 g a gis e b' e, d cis b cis8( d4 cis8)  d4\fermata
  a'4 d, d8( e) fis4 g a gis e\fermata b' e, d cis b cis8( d4 cis8) d4\fermata
  d4 cis( d) e8( d) b4 cis2\fermata 
  d8( e) fis4 g8( fis) e4 fis\fermata fis fis16( gis) a8 a( gis) e4\fermata g! 
  g dis8( e) fis4 e dis\fermata 
  fis fis8[( e)] d!( e) fis[( e)] d4 e8( a, d4~d cis) a\fermata
}

tenor = \relative c' {
  \global
  % Music follows here.
  fis4 fis b,8( cis) d4 e fis4. e16( d) cis4 fis,8( gis) ais4 b fis'8( e) d4 e8( a,4 gis8) fis4\fermata 
  fis'4 fis b,8( cis) d4 e fis4. e16( d) cis4\fermata fis,8( gis) ais4 b fis'8( e) d4 e8( a,4 gis8) fis4\fermata
  fis8( g?) a4( gis8[ fis)] e( fis) e4 e2\fermata
  a4 d d a a\fermata a b8[ e] fis( e) cis4\fermata e
  d8( e) fis4 b, b b\fermata b a b8( cis) d4 g,8( fis) e4( fis16 g a8 b4 a8 g) fis4\fermata
}

bass = \relative c {
  \global
  % Music follows here.
  d'8( cis) b4 a8( g) fis4 e d e a, b cis d8( e) fis4 g?8( fis) e( d a4) d\fermata
  d'8( cis) b4 a8( g) fis4 e d e a,\fermata b cis d8( e) fis4 g?8( fis) e( d a4) d\fermata
  d8( e) fis4( e8[ d)] cis( d) e4 
  a,2\fermata fis'4 e8( d) g4 a d,\fermata 
  fis b,8[ cis] d( e) a,4\fermata
  e'8( fis) g4 fis8( e) dis4 e b\fermata 
  b fis' g d8( cis) b4 cis( d g, a) d,\fermata
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Ein' fe -- ste Burg ist un -- ser Gott, 
  Ein' gu -- te Wehr und waf -- fen, 
  
  Er hilft uns frei aus al -- ler Not, 
  Die uns jetzt hat be -- trof -- fen.
  
  Der alt' bö -- se Feind, 
  Mit ernst er's jetzt meint, 
  Groß Macht und viel List 
  Sein' grau -- sam Rü -- ftung ist, 
  Auf Erb' ist nicht Sein's Glei -- chen.
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

\score {
  \new ChoirStaff <<
    \new Staff \with {
      %instrumentName = "S."
      \consists "Ambitus_engraver"
    } { \soprano }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
    \new Staff \with {
      %instrumentName = "A."
      \consists "Ambitus_engraver"
    } { \alto }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
    \new Staff \with {
      %instrumentName = "T."
      \consists "Ambitus_engraver"
    } { \clef "treble_8" \tenor }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
    \new Staff \with {
      %instrumentName = "B."
      \consists "Ambitus_engraver"
    } { \clef bass \bass }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
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

