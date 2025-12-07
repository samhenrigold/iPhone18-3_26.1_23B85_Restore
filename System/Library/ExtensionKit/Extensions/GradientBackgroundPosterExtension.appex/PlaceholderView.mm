@interface PlaceholderView
- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithCoder:(id)coder;
- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PlaceholderView

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PlaceholderView(0);
  v2 = v3.receiver;
  [(PlaceholderView *)&v3 layoutSubviews];
  sub_100003CD4();
}

- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithFrame:(CGRect)frame
{
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation) = 0;
  result = sub_100041DCC();
  __break(1u);
  return result;
}

- (_TtC33GradientBackgroundPosterExtension15PlaceholderView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_label;
  v5 = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.isa + v4) = v5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC33GradientBackgroundPosterExtension15PlaceholderView_deviceOrientation) = 0;

  type metadata accessor for PlaceholderView(0);
  swift_deallocPartialClassInstance();
  return 0;
}

@end