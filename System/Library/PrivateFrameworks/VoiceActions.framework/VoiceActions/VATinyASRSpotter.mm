@interface VATinyASRSpotter
- (void)endOfAudioWithByteCountAfterEndOfSpeech:(unsigned int)speech;
@end

@implementation VATinyASRSpotter

- (void)endOfAudioWithByteCountAfterEndOfSpeech:(unsigned int)speech
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate);
  if (v3)
  {
    v4 = *&speech;
    if ([*(&self->super.super.super.isa + OBJC_IVAR____TtC12VoiceActions16VATinyASRSpotter_speechDetectorDelegate) respondsToSelector_])
    {

      [v3 endOfAudioWithByteCountAfterEndOfSpeech_];
    }
  }
}

@end