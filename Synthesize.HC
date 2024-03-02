
class Phoneme{

 U8* name;
 F64 formants[2];
 F64 duration;

} phonemes;


// Define an array of phonemes
Phoneme phonemes[3] = {
    {"AH", {700.0, 1100.0}, 5000.0},
    {"EH", {600.0, 1700.0}, 60.0},
    {"S", {3000.0, 3500.0}, 40.0}
    // Add more phonemes as needed
};

U0 MainVoice()
{
 I64 i;
 //music.tempo = .05;
 Snd(Freq2Ona(500));
 for(i=phonemes[0].duration;i!=0;i--);
 {
  Snd(Freq2Ona(phonemes[0].formants[0]));
  Sleep(10);
 }
 Snd;

 for(i=phonemes[0].duration;i!=0;i--);
 {
  Snd(Freq2Ona(phonemes[0].formants[1]));
  Sleep(10);
 }
 Snd;
 // 
 //music.tempo = .05;
 //Snd(Freq2Ona(phonemes[0].formants[1])); 
};

MainVoice;