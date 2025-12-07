@interface LockupMediaView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC8AppStore15LockupMediaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation LockupMediaView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001B7FD8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6.n128_f64[0] = width;
  v7 = sub_1001B8298(v6, height);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (_TtC8AppStore15LockupMediaView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end