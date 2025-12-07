@interface BackgroundView
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation BackgroundView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DFEC5E0(selfCopy);
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  selfCopy = self;
  sub_24DFEC70C(selfCopy);
}

@end