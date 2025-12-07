@interface SeparatorView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC23AppStoreOverlaysService13SeparatorView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation SeparatorView

- (_TtC23AppStoreOverlaysService13SeparatorView)initWithCoder:(id)coder
{
  v4 = sub_100018298();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_lineColor;
  *(&self->super.super.super.isa + v8) = [objc_opt_self() separatorColor];
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  v11[3] = sub_1000181A8();
  v11[4] = &protocol witness table for ZeroDimension;
  sub_10000E700(v11);
  sub_100018198();
  sub_1000182A8();
  result = sub_100018588();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = sub_1000182C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_separator;
  swift_beginAccess();
  (*(v6 + 16))(v8, self + v9, v5);
  selfCopy = self;
  sub_100018288();
  v12 = v11;

  (*(v6 + 8))(v8, v5);
  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = sub_1000182C8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC23AppStoreOverlaysService13SeparatorView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  selfCopy = self;
  sub_100018288();
  v10 = v9;

  (*(v4 + 8))(v6, v3);
  v11 = UIViewNoIntrinsicMetric;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100010750(v2);
}

@end