@interface VSVoiceAsset(SpeechService)
- (void)gainDecibelWithVolume:()SpeechService;
@end

@implementation VSVoiceAsset(SpeechService)

- (void)gainDecibelWithVolume:()SpeechService
{
  result = [self footprint];
  if (result != 1)
  {
    result = [self type];
    if (result != 2)
    {
      result = [self type];
      if (a2 < 1.0 || result != 3)
      {
        return [self type];
      }
    }
  }

  return result;
}

@end