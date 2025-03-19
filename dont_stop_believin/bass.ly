\version "2.24"
\language "english"

bassline_A = {
  \relative e {
    e,,2~e8 fs gs b~|b2~b8 cs ds cs~|cs2~cs8 ds e a,~|a2~a8 ds e e,~|
    e2~e8 fs gs b~|b2~b8 cs ds gs,~|gs2~gs8 gs' gs, a~|a2~a8 ds e4|
    
    e,2~e4 gs8 b~|b2~b8 cs ds4 |cs2~cs8 ds e a,~|a2~a8 ds e4|
    e,2~e4 gs8 b~|b2~b8 cs ds4|gs,2~gs8 gs' gs, a~|a2~a8 ds e4|
  }
}

bass = {
  \new StaffGroup \with { instrumentName = "Electric Bass" shortInstrumentName = "B" } <<
    \new Staff {
      \clef "bass_15"
      \key e \major
      \bassline_A
      \bassline_A
    }
  >>
}