@interface KeyCommandCenter
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)handleKeyCommandWithSender:(id)sender;
@end

@implementation KeyCommandCenter

- (void)handleKeyCommandWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D8191F34();
  swift_unknownObjectRelease();
  KeyCommandCenter.handleKeyCommand(sender:)(v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = KeyCommandCenter.canPerformAction(_:withSender:)(action);

  sub_1D7E70E44(v10, &qword_1EDBBC780, MEMORY[0x1E69E7CA0] + 8);
  return v8 & 1;
}

@end