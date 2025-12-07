@interface AppPromotionCardView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)dealloc;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
@end

@implementation AppPromotionCardView

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupTapGestureRecognizer);
  if (v4)
  {
    [v4 removeTarget:self action:0];
  }

  else
  {
    selfCopy = self;
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(AppPromotionCardView *)&v6 dealloc];
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_2145D4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  selfCopy = self;
  sub_214AA8(v8);
  v10 = sub_634F2C(selfCopy, v8, width, height);
  v12 = v11;

  sub_216E5C(v8);
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  if (v3)
  {
    v4 = *&self->shadowView[OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction];
    selfCopy = self;
    v6 = sub_F714(v3, v4);
    v3(v6);

    sub_F704(v3, v4);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_216D24(touchCopy);

  return v9;
}

@end