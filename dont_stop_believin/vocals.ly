\version "2.24"
\language "english"

vocals = {
  \new Staff \with { instrumentName = "Vocals" shortInstrumentName = "V" } {
    \key e \major
    \time 4/4
    \clef bass
    r1 r1 r1 r1 r1 r1 r1 r1
    % A
    <<
    \new Voice = "vocals_voice" \relative {
      r2 r4 gs8 fs | % just a
      fs8[fs~]fs gs r2 | %small town girl
      r2 cs,8 e e e | %li-vin' in a
      b'4 b8 gs~gs fs r4 | %lo-nley wo_rld
      r2 r8 b, gs' e | % she took the
      fs8 fs~fs gs~gs \tuplet 2/3 {fs e} | %mid-night train go-in' 
    }
  }
  \new Lyrics { 
    \lyricmode {
      \set associatedVoice = "vocals_voice"
      Just a
    }
  }
  >>
}