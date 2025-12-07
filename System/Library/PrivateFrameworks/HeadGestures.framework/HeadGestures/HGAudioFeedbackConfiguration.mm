@interface HGAudioFeedbackConfiguration
- (BOOL)enableAudioFeedback;
- (BOOL)enableWaitingTone;
- (BOOL)invertedConfirmationAudioFeedbackMode;
- (HGAudioFeedbackConfiguration)init;
- (unsigned)audioSessionID;
- (void)enableAudioFeedbackForHeadGesture:(unint64_t)gesture toEnable:(BOOL)enable;
- (void)enableAudioFeedbackForHeadGesturePart:(unint64_t)part toEnable:(BOOL)enable;
- (void)setAudioSessionID:(unsigned int)d;
- (void)setEnableAudioFeedback:(BOOL)feedback;
- (void)setEnableWaitingTone:(BOOL)tone;
- (void)setInvertedConfirmationAudioFeedbackMode:(BOOL)mode;
@end

@implementation HGAudioFeedbackConfiguration

- (HGAudioFeedbackConfiguration)init
{
  v8.receiver = self;
  v8.super_class = HGAudioFeedbackConfiguration;
  v2 = [(HGAudioFeedbackConfiguration *)&v8 init];
  if (v2)
  {
    v3 = [[HGAudioFeedbackConfigurationInternal alloc] initWithEnableAudioFeedback:0 enableWaitingTone:0 audioSessionID:0];
    [(HGAudioFeedbackConfiguration *)v2 setInternal:v3];

    internal = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setAudioSessionID:](v2, "setAudioSessionID:", [internal audioSessionID]);

    internal2 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setEnableAudioFeedback:](v2, "setEnableAudioFeedback:", [internal2 enableAudioFeedback]);

    internal3 = [(HGAudioFeedbackConfiguration *)v2 internal];
    -[HGAudioFeedbackConfiguration setEnableWaitingTone:](v2, "setEnableWaitingTone:", [internal3 enableWaitingTone]);
  }

  return v2;
}

- (BOOL)enableWaitingTone
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  enableWaitingTone = [internal enableWaitingTone];

  return enableWaitingTone;
}

- (void)setEnableWaitingTone:(BOOL)tone
{
  toneCopy = tone;
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  [internal setEnableWaitingTone:toneCopy];
}

- (BOOL)enableAudioFeedback
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  enableAudioFeedback = [internal enableAudioFeedback];

  return enableAudioFeedback;
}

- (void)setEnableAudioFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  [internal setEnableAudioFeedback:feedbackCopy];
}

- (unsigned)audioSessionID
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  audioSessionID = [internal audioSessionID];

  return audioSessionID;
}

- (void)setAudioSessionID:(unsigned int)d
{
  v3 = *&d;
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  [internal setAudioSessionID:v3];
}

- (void)enableAudioFeedbackForHeadGesture:(unint64_t)gesture toEnable:(BOOL)enable
{
  enableCopy = enable;
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  [internal enableAudioFeedbackForGestureWithGesture:gesture enable:enableCopy];
}

- (void)enableAudioFeedbackForHeadGesturePart:(unint64_t)part toEnable:(BOOL)enable
{
  enableCopy = enable;
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  [internal enableAudioFeedbackForPartGestureWithPart:part enable:enableCopy];
}

- (BOOL)invertedConfirmationAudioFeedbackMode
{
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  invertedConfirmationAudioFeedbackMode = [internal invertedConfirmationAudioFeedbackMode];

  return invertedConfirmationAudioFeedbackMode;
}

- (void)setInvertedConfirmationAudioFeedbackMode:(BOOL)mode
{
  modeCopy = mode;
  internal = [(HGAudioFeedbackConfiguration *)self internal];
  [internal setInvertedConfirmationAudioFeedbackMode:modeCopy];
}

@end