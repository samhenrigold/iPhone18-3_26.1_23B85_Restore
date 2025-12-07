@interface CrossLinkLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation CrossLinkLockupView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1001F5A40(v9);
  [(CrossLinkLockupView *)selfCopy layoutMargins];
  v15 = sub_1001CF768(v9, selfCopy, width, height, v13, v14, v11, v12);
  v17 = v16;

  (*(v7 + 8))(v9, v6);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001F61F8();
}

@end