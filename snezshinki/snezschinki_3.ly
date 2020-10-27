\header {
  title = "*** Белые снежинки ***"
  subtitle = " "
  composer = " "
}

  \layout {
    indent = 0.0
    ragged-right = ##f
  }


verseI = \lyricmode {
  \set stanza = #"1."
Бе -- лы -- е сне -- жин -- ки кру -- жат -- ся с утра
вы -- рос -- ли суг -- ро -- бы пос -- ре -- ди дво -- ра
Ста -- ла от сне -- жи -- нок ули -- ца свет -- ле -- й
Толь -- ко о -- де -- вать -- ся нуж -- но по -- теп -- лей.
}

verseII = \lyricmode {
  \set stanza = #"2."
Прос -- то не -- воз -- мож -- но зи -- му не лю -- бить,
Ско -- ро бу -- дем ба -- бу снеж -- ну -- ю ле -- пить.
Ес -- ли на про -- гул -- ке в снег мы упа -- дем,
Вста -- нем, от -- рях -- нем -- ся и оп -- ять пой -- дем.

}

verseIII = \lyricmode {
  \set stanza = #"3."
При -- ве -- зут из ле -- са елку в детс -- кий сад,
Дед Мо -- роз позд -- ра -- вит с праздни -- ком ре -- бят.
Де -- сять раз в не -- делю мы счи -- та -- ем дни,
Чтоб зажг -- лись ско -- ре -- е яр -- ки -- е ог -- ни. 

}

theChordsIntro = \chordmode {
  % insert chords for chordnames and fretboards here
  c2 d:m e:m d4:m g4
}

staffMelodyIntro = \relative c {
   \key c \major
   \clef treble
   % Type notes for melody here
     \time 2/4
\tempo 4 = 80
  e'8 d e c 
  f e f d
  g f g e
  d16 e f g a b c d \break
}


theChordsCoda = \chordmode {
  % insert chords for chordnames and fretboards here
  c2 c c c
}

staffMelodyCoda = \relative c'' {
   \key c \major
   \clef treble
   % Type notes for melody here
     \time 2/4
\tempo 4 = 80
    d8 b g' d
    e g, d' a
    d8 b g' d
    c16 e g c <c, e g c>4
\break
}

theChords = \chordmode {
  % insert chords for chordnames and fretboards here
  c2 d:m g c
  a:m d:m g c
  c f f c
  c d:m g c
}

staffMelody = \relative c {
   \key c \major
   \clef treble
   % Type notes for melody here
     \time 2/4
\bar ".|:"
  e'8 d e c f4 d4
  d8 c d8 b e2 \break

 c8 b8 c8 a  d4 a4
  b8 a8 b8 g  c2 \break

 c8 e8 g8 b  c4 a4
  f8 e8 f8 d  g2 \break

  e8 d8 e8 c f4 d4
  d8 c8 d8 b8 c2 \break
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
  \context ChordNames { \theChordsCoda }
  \new Staff {
      \context Voice = "voiceMelody" { \staffMelodyCoda }
    }
    >>
}
