\version "2.24"
\language "english"

\include "vocals.ly"
\include "piano.ly"
\include "bass.ly"
\include "drums.ly"

\header {
  dedication = "For Q & G"
  title = "D"
  composer = "By J"
  arranger = "Arr. Jonah Lotegeluaki"
  tagline = ##f
}
\layout {
  indent = 1.0\in
  short-indent = 0.2\in
}


<<
  \vocals
  \piano
  \bass
  \drumline
>>
