@interface AirDropSystemApertureView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC9AirDropUI25AirDropSystemApertureView)init;
- (_TtC9AirDropUI25AirDropSystemApertureView)initWithCoder:(id)coder;
- (_TtC9AirDropUI25AirDropSystemApertureView)initWithFrame:(CGRect)frame;
@end

@implementation AirDropSystemApertureView

- (_TtC9AirDropUI25AirDropSystemApertureView)init
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AirDropSystemApertureView();
  return [(AirDropSystemApertureView *)&v3 initWithFrame:0.0, 0.0, 23.0, 23.0];
}

- (_TtC9AirDropUI25AirDropSystemApertureView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9AirDropUI25AirDropSystemApertureView_expanded) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = (*((swift_isaMask & self->super.super.super.isa) + 0x58))(fits, *&fits.height);
  v4 = 48.3333;
  if ((v3 & 1) == 0)
  {
    v4 = 23.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  v5 = (*((swift_isaMask & self->super.super.super.isa) + 0x58))(size, *&size.height, priority, fittingPriority);
  v6 = 48.3333;
  if ((v5 & 1) == 0)
  {
    v6 = 23.0;
  }

  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  v4 = 48.3333;
  if ((mode + 1) < 5)
  {
    v4 = 23.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (_TtC9AirDropUI25AirDropSystemApertureView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end