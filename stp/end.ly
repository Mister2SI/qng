\version "2.24"
\language "english"

\header {
  tagline = ##f
  title = "e"
}

lh_one = \fixed c' {
      f,4 c f af |
      c' af f c  |
      f,  c f af |
      c' af f c  |
      
      ef, bf, ef af|
      bf af ef bf  |
      ef, bf, ef af|
      bf af ef bf  |
      
      \clef bass
      c, g, c d |
      g d c g,  |
      c, g, c d |
      g d c g,  |
      
      bf,, f, bf, d|
      f d bf, f,   |
      bf,, f, bf, d|
      \clef treble
      f g af bf    |
    }

\new PianoStaff \with { instrumentName = "Piano" } <<
  \new Staff {
    \clef "treble^8"
    \time 4/4
    \key ef \major
    
    \fixed c'' {
      af8 af'4 g' af~8~|1|
      g8 g'4 f'8~2~|1|
      
      af8 af'4 g' af~8~|1|
      af8 ef'4 d'8~2~|1|
    }
  }
  \new Dynamics {}
  \new Staff {
    \clef treble
    \time 4/4
    \key ef \major
    
    \lh_one
  }
>>