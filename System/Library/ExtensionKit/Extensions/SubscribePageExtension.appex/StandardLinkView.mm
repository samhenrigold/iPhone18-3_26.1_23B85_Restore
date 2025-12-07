@interface StandardLinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension16StandardLinkView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation StandardLinkView

- (_TtC22SubscribePageExtension16StandardLinkView)initWithCoder:(id)coder
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_1001FB000(width);
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001FB570();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1001FB9E0(change);
}

@end