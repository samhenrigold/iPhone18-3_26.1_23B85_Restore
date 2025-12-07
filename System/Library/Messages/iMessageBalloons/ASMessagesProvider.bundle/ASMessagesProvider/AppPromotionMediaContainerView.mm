@interface AppPromotionMediaContainerView
- (CGRect)frame;
- (_TtC18ASMessagesProvider30AppPromotionMediaContainerView)initWithFrame:(CGRect)frame;
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
  v19.receiver = self;
  v19.super_class = ObjectType;
  selfCopy = self;
  [(AppPromotionMediaContainerView *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = ObjectType;
  [(AppPromotionMediaContainerView *)&v18 setFrame:x, y, width, height];
  sub_1EC618(v11, v13, v15, v17);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1EC8E8();
}

- (void)videoTapGestureRecognized
{
  selfCopy = self;
  sub_1ECB90();
}

- (_TtC18ASMessagesProvider30AppPromotionMediaContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end