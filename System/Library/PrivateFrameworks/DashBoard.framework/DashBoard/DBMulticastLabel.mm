@interface DBMulticastLabel
- (CGSize)intrinsicContentSize;
- (_TtC9DashBoard16DBMulticastLabel)initWithCoder:(id)coder;
- (_TtC9DashBoard16DBMulticastLabel)initWithFrame:(CGRect)frame;
- (_TtC9DashBoard16DBMulticastLabel)initWithMulticast:(id)multicast signalLocked:(BOOL)locked;
@end

@implementation DBMulticastLabel

- (_TtC9DashBoard16DBMulticastLabel)initWithMulticast:(id)multicast signalLocked:(BOOL)locked
{
  lockedCopy = locked;
  v5 = sub_248383960();
  return DBMulticastLabel.init(multicast:signalLocked:)(v5, v6, lockedCopy);
}

- (_TtC9DashBoard16DBMulticastLabel)initWithCoder:(id)coder
{
  result = sub_248384580();
  __break(1u);
  return result;
}

- (CGSize)intrinsicContentSize
{
  [*(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard16DBMulticastLabel_label) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC9DashBoard16DBMulticastLabel)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end