\header {
  title = "*** дискотека серпантин ***"
  subtitle = " "
  composer = " "
}

  \layout {
    indent = 0.0
    ragged-right = ##f
  }


verseI = \lyricmode {
  \set stanza = #"1."
за -- ме -- ла ме -- те -- ли -- ца го -- род мой
по до -- ро -- гам сте -- лит -- ся пе -- ле -- ной
нра -- вят -- ся мо -- ро -- зы ей еще как
и ру -- мя -- нец ро -- зо -- вый на ще -- ках
}

verseII = \lyricmode {
  \set stanza = #"2."
от зи -- мы не спря -- тать -- ся не сбе -- жать
зна -- чит бу -- дем е -- лоч -- ку на -- ря -- жать
а -- пель -- си -- ны я -- бло -- ки а -- на -- нас
спря -- чем по -- ти -- хо -- неч -- ку про -- за -- пас
}

verseIII = \lyricmode {
  \set stanza = #"3."
  хит -- ро у -- лы -- ба -- ет -- с -- я Дед Мо -- ро -- з,
  что он при -- го -- то -- вил нам - вот воп -- рос!
  за -- га -- дай же -- ла -- ние, за -- сы -- пай,
  ут -- ром свой по -- да -- ро -- чек доставай!
}

theChordsIntro = \chordmode {
a:7  d:m  g  c   f  d:m  e  a:m      
a:7  d:m  g  c   f  a:m  e  a:m
}

staffMelodyIntro = \relative c'' {
   \key f \major
   \clef treble
   % Type notes for melody here
     \time 4/4
\tempo 4 = 80

a16 g a g a c c b a f e d d' c a8 \break
f16 e f e f a a g f e d c d e f g8 \break
a16 g a g a c c b a f e d d' c a8 \break
c16 b a g f e8 b'16 a g f e d d8 c2 d2 \break

}


theChordsVersus = \chordmode {
  % insert chords for chordnames and fretboards here
  d:m e:7 a d:m d:m e:7 a d:m d:m e:7 a d:m g:m a d:m
}

staffMelodyVersus = \relative c'' {
   \key f \major
   \clef treble
   % Type notes for melody here
     \time 4/4
\tempo 4 = 80
a8  f d4 c8 d e4 e8 e a b a g g f \break
a f d4 c8 d e4 e8 d c c d e f f \break
a f d4 c8 d e4 e8 e a b a g g f \break 
e d b'4 e,8 d a'4 e8 d c c a c d4 \break
\break
}

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
   d2:m e:7 a a d:m d:7
   g:m c f b g:m d:m a a
}

staffMelody = \relative c' {
   \key f \major
   \clef treble
   % Type notes for melody here
     \time 4/4
\bar ".|:"
  d8 d d d d d d f e c8 a4 a2
  a8 a c d e c a4 
  
  b'8 b b b e, e e e a4 f4 d2 
  d8 d d d f e d a'4 b4 a2 \break

  \bar ":|."
}
\score {
    <<
  \context ChordNames { \theChordsIntro }
  \new Staff {
      \context Voice = "voiceMelody" { \staffMelodyIntro }
    }
    >>
}



\score {
  <<
    \context ChordNames { \theChords }
%    \context FretBoards { \theChords }    
    \new Staff {
      \context Voice = "voiceMelody" { \staffMelody }
    }
    \new Lyrics = "lyricsI" {
      \lyricsto "voiceMelody" \verseI
    }
    \new Lyrics = "lyricsII" {
      \lyricsto "voiceMelody" \verseII
    }
    \new Lyrics = "lyricsIII" {
      \lyricsto "voiceMelody" \verseIII
    }

  >>
  \layout { }
  \midi { }

}


\score {
    <<
  \context ChordNames { \theChordsVersus }
  \new Staff {
      \context Voice = "voiceMelody" { \staffMelodyVersus }
    }
    >>
}
