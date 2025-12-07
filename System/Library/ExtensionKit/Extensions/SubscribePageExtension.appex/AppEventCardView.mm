@interface AppEventCardView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)handleTapWithGestureRecognizer:(id)recognizer;
- (void)layoutSubviews;
- (void)notifyMeButtonTapped:(id)tapped;
@end

@implementation AppEventCardView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10018DA3C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v6 - 8);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  selfCopy = self;
  sub_10018DF10(v8);
  sub_1006D38E4(selfCopy, v8, width, height);
  v11 = v10;
  v13 = v12;

  sub_10001BB14(v8);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)handleTapWithGestureRecognizer:(id)recognizer
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction);
  if (v3)
  {
    v4 = *&self->shadowView[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupViewTappedAction];
    selfCopy = self;
    v6 = sub_10001B5AC(v3, v4);
    v3(v6);

    sub_1000164A8(v3, v4);
  }
}

- (void)notifyMeButtonTapped:(id)tapped
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButtonPresenter))
  {
    tappedCopy = tapped;
    selfCopy = self;

    NotifyMeButtonPresenter.didTapButton(sender:)(tappedCopy);
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_100190760(touchCopy);

  return v9;
}

@end