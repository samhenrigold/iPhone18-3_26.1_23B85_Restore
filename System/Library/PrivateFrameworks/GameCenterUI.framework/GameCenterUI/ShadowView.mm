@interface ShadowView
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation ShadowView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24E30A6CC(selfCopy, v2);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24E30A894(change, v6);
}

@end