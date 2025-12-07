@interface AppPromotionMediaContainerView
- (CGRect)frame;
- (_TtC8AppStore30AppPromotionMediaContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)videoTapGestureRecognized;
@end

@implementation AppPromotionMediaContainerView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(AppPromotionMediaContainerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v21.receiver = self;
  v21.super_class = ObjectType;
  selfCopy = self;
  [(AppPromotionMediaContainerView *)&v21 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = selfCopy;
  v20.super_class = ObjectType;
  height = [(AppPromotionMediaContainerView *)&v20 setFrame:x, y, width, height];
  sub_1000CE0B8(v11, v13, v15, v17, height, v19);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000CE388(selfCopy, v2);
}

- (void)videoTapGestureRecognized
{
  selfCopy = self;
  sub_1000CE630();
}

- (_TtC8AppStore30AppPromotionMediaContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end