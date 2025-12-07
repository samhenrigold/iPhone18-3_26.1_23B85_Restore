@interface TTSPhonemeMarker
- (AVSpeechSynthesisMarker)avMark;
- (id)toAVMarkAtOffset:(int64_t)offset;
@end

@implementation TTSPhonemeMarker

- (id)toAVMarkAtOffset:(int64_t)offset
{
  v5 = objc_alloc(MEMORY[0x1E69584E0]);
  phoneme = [(TTSPhonemeMarker *)self phoneme];
  v7 = [v5 initWithPhonemeString:phoneme atByteSampleOffset:offset];

  return v7;
}

- (AVSpeechSynthesisMarker)avMark
{
  v3 = objc_alloc(MEMORY[0x1E69584E0]);
  phoneme = [(TTSPhonemeMarker *)self phoneme];
  v5 = [v3 initWithPhonemeString:phoneme atByteSampleOffset:{-[TTSPhonemeMarker byteOffset](self, "byteOffset")}];

  return v5;
}

@end