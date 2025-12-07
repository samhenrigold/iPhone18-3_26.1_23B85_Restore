@interface CrossLinkLockupView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation CrossLinkLockupView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_10013F3FC(v7);
  [(CrossLinkLockupView *)selfCopy layoutMargins];
  sub_100508464();
  v10 = v9;
  v12 = v11;

  (*(v5 + 8))(v7, v4);
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10013FBB4(selfCopy, v2);
}

@end