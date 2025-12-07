@interface STKMutableTextInputSessionData
- (void)setDefaultText:(id)text;
@end

@implementation STKMutableTextInputSessionData

- (void)setDefaultText:(id)text
{
  self->super._defaultText = [text copy];

  MEMORY[0x2821F96F8]();
}

@end