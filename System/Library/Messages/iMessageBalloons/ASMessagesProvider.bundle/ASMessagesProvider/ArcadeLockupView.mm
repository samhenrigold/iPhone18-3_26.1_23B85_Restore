@interface ArcadeLockupView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityIdentifier;
- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)offerButtonWasTapped;
- (void)setAccessibilityIdentifier:(id)identifier;
@end

@implementation ArcadeLockupView

- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithFrame:(CGRect)frame
{
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider16ArcadeLockupView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerLabelPresenter);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_5C184(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5C460();
}

- (void)offerButtonWasTapped
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler);
  if (v2)
  {
    v3 = *&self->wordmarkView[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButtonTapHandler];
    v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton);
    selfCopy = self;
    v5 = sub_F714(v2, v3);
    v2(v4, v5);
    sub_F704(v2, v3);
  }
}

- (NSString)accessibilityIdentifier
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  selfCopy = self;
  v5 = NSStringFromClass(ObjCClassFromMetadata);
  v6 = sub_769240();
  v8 = v7;

  sub_D271C(v6, v8, 0, 0);

  v9 = sub_769210();

  return v9;
}

- (void)setAccessibilityIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_769240();
    selfCopy = self;
    v5 = sub_769210();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for ArcadeLockupView(0);
  [(ArcadeLockupView *)&v7 setAccessibilityIdentifier:v5];
}

@end