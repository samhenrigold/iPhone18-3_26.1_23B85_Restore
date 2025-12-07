@interface MenuManager
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)buildMenuWithBuilder:(id)builder;
@end

@implementation MenuManager

- (void)buildMenuWithBuilder:(id)builder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MenuManager.buildMenu(with:)(builder);
  swift_unknownObjectRelease();
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

  v8 = MenuManager.canPerformAction(_:withSender:)(action);

  sub_1D7E7BAAC(v10);
  return v8 & 1;
}

@end