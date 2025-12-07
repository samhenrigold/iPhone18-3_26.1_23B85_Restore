@interface NavigationBarSubtitleView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (_TtC5UIKit25NavigationBarSubtitleView)initWithFrame:(CGRect)frame;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)layoutSubviews;
@end

@implementation NavigationBarSubtitleView

- (_TtC5UIKit25NavigationBarSubtitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_content;
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = -1;
  v9 = (&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_label) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_customView) = 0;
  type metadata accessor for NavigationBarSubtitleView();
  v12.receiver = self;
  v12.super_class = v10;
  return [(UIView *)&v12 initWithFrame:x, y, width, height];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_188CE260C(width, height, priority, fittingPriority);
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188CE3BF4();
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  type metadata accessor for NavigationBarSubtitleView();
  v11.receiver = self;
  v11.super_class = v5;
  viewCopy = view;
  selfCopy = self;
  [(UIView *)&v11 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
  v8 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler);
  if (v8)
  {
    v9 = *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC5UIKit25NavigationBarSubtitleView_intrinsicContentSizeInvalidationHandler);

    v8(v10);

    sub_188A55B8C(v8, v9);
  }

  else
  {
  }
}

@end