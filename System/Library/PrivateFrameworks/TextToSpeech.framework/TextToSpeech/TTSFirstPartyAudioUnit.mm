@interface TTSFirstPartyAudioUnit
- (TTSAUMessagingAU)channel;
@end

@implementation TTSFirstPartyAudioUnit

- (TTSAUMessagingAU)channel
{
  channel = self->_channel;
  if (!channel)
  {
    v4 = objc_alloc_init(TTSAUMessagingAU);
    v5 = self->_channel;
    self->_channel = v4;

    [(TTSAUMessagingAU *)self->_channel setOwningAudioUnit:self];
    channel = self->_channel;
  }

  return channel;
}

@end