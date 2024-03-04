
#define LETTERS 1

class Formants:CQue{
  F64 freqHertz;
}

class Phoneme{

 U8* name;
 I64 duration;
 Formants *formantQue;

} phonemes[LETTERS];

//phonemes = CAlloc(sizeof(Phoneme)*LETTERS);

// Define an array of phonemes
/*Phoneme phonemes[3] = {
    {"A", {0x2B, 0xE5, 0x64, 0xA6}, 5000.0}
    //{"EH", {600.0, 1700.0}, 60.0},
    //{"S", {3000.0, 3500.0}, 40.0}
    // Add more phonemes as needed
};*/

U0 InsertHertz(F64 value)
{
   Formants *letter = CAlloc(sizeof(Formants));
   letter->freqHertz = value;
   QueIns(letter,phonemes[0].formantQue->last); 
}

U0 MainVoice()
{
 I64 i,j;//for loops
 phonemes[0].name= StrNew("A");
 phonemes[0].duration = 10;
 
 QueInit(&(phonemes[0].formantQue));
 
 for(i=0;i<LETTERS;i++)
 {
  switch(i)
  {
   case 0:
    InsertHertz(0x2B);
    InsertHertz(0xE5);
    InsertHertz(0x64);
    InsertHertz(0xA6);
    InsertHertz(0xDD);
    InsertHertz(0x73);
    InsertHertz(0x6F);
    InsertHertz(0xBA);
    InsertHertz(0xE9);
    InsertHertz(0xE6);
    InsertHertz(0x53);
    InsertHertz(0xB2);
    InsertHertz(0x53);
    InsertHertz(0xF5);
    InsertHertz(0x9E);
    InsertHertz(0x3A);
    InsertHertz(0xB7);
    InsertHertz(0xDC);
    InsertHertz(0x72);
    InsertHertz(0xCB);
    InsertHertz(0x29);
    InsertHertz(0xD5);
    InsertHertz(0x09);
    InsertHertz(0x5B);
    InsertHertz(0x6F);
    InsertHertz(0xED);
    InsertHertz(0x5B);
    InsertHertz(0x6E);
    InsertHertz(0xB9);
    InsertHertz(0xF9);
    InsertHertz(0x86);
    InsertHertz(0xED);
    InsertHertz(0xA6);
    InsertHertz(0xEB);
    InsertHertz(0xB6);
    InsertHertz(0xDA);
    InsertHertz(0x6C);
    InsertHertz(0xAD);
    InsertHertz(0x79);
  
   break;
  }
 }
 Print("\n%f\n", phonemes[0].duration);
 //Formants *printMe = phonemes[0].formantQue;
 

 Formants *speakMe = phonemes[0].formantQue->last;
 for(j=QueCnt(phonemes[0].formantQue);j!=-1;j--)
 {
  for(i=0;i<phonemes[0].duration;i++)
  {
  // P


   Snd(Freq2Ona(speakMe->freqHertz));
   Sleep(1);
  }
  Snd;
  //Print("\n%f\n\n", speakMe->freqHertz);

  speakMe = speakMe->last;
 }

  
 //music.tempo = .05;
 
 /*Snd(Freq2Ona(500));
 
 for(i=phonemes[0].duration;i!=0;i--);
 {
  Snd(Freq2Ona(phonemes[0].formants[1]));
  Sleep(10);
 }
 Snd;
 // 
 //music.tempo = .05;
 //Snd(Freq2Ona(phonemes[0].formants[1])); 
 */
 Free(&phonemes[0].name);
 QueDel(&phonemes[0].formantQue);
 //Free(&phonemes[0].formantQue);
 Free(phonemes[0]);
}

MainVoice;