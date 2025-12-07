@interface StandardLinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension16StandardLinkView)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation StandardLinkView

- (_TtC20ProductPageExtension16StandardLinkView)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  sub_10060DA10(width);
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
  sub_10060DF80();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10060E3F0(change);
}

@end