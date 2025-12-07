@interface TTSGenericMarker
- (AVSpeechSynthesisMarker)avMark;
@end

@implementation TTSGenericMarker

- (AVSpeechSynthesisMarker)avMark
{
  v3 = objc_alloc(MEMORY[0x1E69584E0]);
  name = [(TTSGenericMarker *)self name];
  v5 = [v3 initWithBookmarkName:name atByteSampleOffset:{-[TTSGenericMarker byteOffset](self, "byteOffset")}];

  return v5;
}

@end