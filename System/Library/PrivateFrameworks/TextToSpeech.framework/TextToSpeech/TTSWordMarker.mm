@interface TTSWordMarker
- (AVSpeechSynthesisMarker)avMark;
- (_NSRange)wordRange;
@end

@implementation TTSWordMarker

- (AVSpeechSynthesisMarker)avMark
{
  v3 = objc_alloc(MEMORY[0x1E69584E0]);
  wordRange = [(TTSWordMarker *)self wordRange];
  v6 = [v3 initWithWordRange:wordRange atByteSampleOffset:{v5, -[TTSWordMarker byteOffset](self, "byteOffset")}];

  return v6;
}

- (_NSRange)wordRange
{
  length = self->_wordRange.length;
  location = self->_wordRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end