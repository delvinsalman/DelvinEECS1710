 // Use keyboard from 1-9 to have a different rhythm, and use letters A-Z to have other musicly sounds!!
 // The lines move higher and wave more depending on which key you click cause the each key has its own frequency.
 // each key has its own uniqueness in sound and loudness, ex, letter "A" is lower, compared to letter "Q" is higher pitch of tone and sound.
void keyPressed()
{
  SineWave mySine;
  MyNote newNote;

  float pitch = 0;
  switch(key) {
    case 'a': pitch = 262; break;
    case 'b': pitch = 277; break;
    case 'c': pitch = 294; break;
    case 'd': pitch = 311; break;
    case 'e': pitch = 330; break;
    case 'f': pitch = 349; break;
    case 'g': pitch = 370; break;
    case 'h': pitch = 392; break;
    case 'i': pitch = 415; break;
    case 'j': pitch = 440; break;
    case 'k': pitch = 466; break;
    case 'l': pitch = 494; break;
    case 'm': pitch = 523; break;
    case 'n': pitch = 554; break;
    case 'o': pitch = 587; break;
    case 'p': pitch = 622; break;
    case 'q': pitch = 659; break;
    case 'r': pitch = 679; break;
    case 's': pitch = 699; break;
    case 't': pitch = 739; break;
    case 'u': pitch = 769; break;
    case 'v': pitch = 789; break;
    case 'w': pitch = 819; break;
    case 'x': pitch = 838; break;
    case 'y': pitch = 856; break;
    case 'z': pitch = 877; break;
    case '1': pitch = 1500; break;
    case '2': pitch = 1600; break;
    case '3': pitch = 1700; break;
    case '4': pitch = 1800; break;
    case '5': pitch = 1900; break;
    case '6': pitch = 2000; break;
    case '7': pitch = 2100; break;
    case '8': pitch = 2200; break;
    case '9': pitch = 2300; break;
}
  if (pitch > 0) {
  newNote = new MyNote(pitch, 0.2);
  
   }
}
