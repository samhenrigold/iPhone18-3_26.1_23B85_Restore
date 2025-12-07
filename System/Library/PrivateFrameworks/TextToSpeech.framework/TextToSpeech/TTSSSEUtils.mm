@interface TTSSSEUtils
+ (id)combinedProsodyMarkupForString:(id)string rate:(id)rate pitch:(id)pitch volume:(id)volume;
+ (id)enclosedStringWithPhonemes:(id)phonemes originalString:(id)string;
+ (id)genericMarkerMarkupWithName:(id)name;
+ (id)speechMarkupStringForType:(int64_t)type string:(id)string;
@end

@implementation TTSSSEUtils

+ (id)enclosedStringWithPhonemes:(id)phonemes originalString:(id)string
{
  phonemesCopy = phonemes;
  v6 = MEMORY[0x1E696AEC0];
  xmlEscaped = [string xmlEscaped];
  v8 = [v6 stringWithFormat:@"<phoneme alphabet=ipa ph=%@>%@</phoneme>", phonemesCopy, xmlEscaped];

  return v8;
}

+ (id)genericMarkerMarkupWithName:(id)name
{
  name = [MEMORY[0x1E696AEC0] stringWithFormat:@"<mark name=%@ />", name];

  return name;
}

+ (id)speechMarkupStringForType:(int64_t)type string:(id)string
{
  stringCopy = string;
  v6 = stringCopy;
  if ((type - 1) < 2)
  {
LABEL_6:
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<say-as interpret-as=characters>%@</say-as>", v6];
    goto LABEL_9;
  }

  if (type)
  {
    if (type == 3)
    {
      if ([stringCopy length] == 1)
      {
        lowercaseString = [v6 lowercaseString];

        v6 = lowercaseString;
      }

      goto LABEL_6;
    }

    v8 = &stru_1F1CFF8D8;
  }

  else
  {
    v8 = @"<break time=%dms />";
  }

LABEL_9:

  return v8;
}

+ (id)combinedProsodyMarkupForString:(id)string rate:(id)rate pitch:(id)pitch volume:(id)volume
{
  stringCopy = string;
  rateCopy = rate;
  pitchCopy = pitch;
  volumeCopy = volume;
  v13 = +[_TtC12TextToSpeech12SSMLServices shared];
  v14 = [v13 makeProsodySnippetWithString:stringCopy rate:rateCopy pitch:pitchCopy volume:volumeCopy];

  if ([v14 isEqual:stringCopy])
  {
    v15 = stringCopy;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15;

  return v15;
}

@end