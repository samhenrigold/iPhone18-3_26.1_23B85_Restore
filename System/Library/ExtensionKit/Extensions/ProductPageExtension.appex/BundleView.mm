@interface BundleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation BundleView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100540D7C();
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for BundleView(0);
  changeCopy = change;
  v5 = v9.receiver;
  [(BundleView *)&v9 traitCollectionDidChange:changeCopy];
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel];
  traitCollection = [v5 traitCollection];
  v8 = sub_10077071C();

  [v6 setNumberOfLines:(v8 & 1) == 0];
  [v5 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = sub_10076BF6C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, self + OBJC_IVAR____TtC20ProductPageExtension10BundleView_iconStyle, v6, v8);
  selfCopy = self;
  v12 = sub_100541BC8(v10, _swiftEmptyArrayStorage, selfCopy, width, height);

  (*(v7 + 8))(v10, v6);
  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

@end