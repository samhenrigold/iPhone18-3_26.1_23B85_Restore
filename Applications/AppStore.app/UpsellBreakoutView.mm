@interface UpsellBreakoutView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didTapVideo;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UpsellBreakoutView

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_100682310(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100682598();
}

- (void)didTapVideo
{
  selfCopy = self;
  sub_100682A5C();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1006840DC(touchCopy);

  return v9 & 1;
}

- (void)traitCollectionDidChange:(id)change
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for BreakoutDetails.TextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = self;
  v16.super_class = ObjectType;
  changeCopy = change;
  selfCopy = self;
  [(UpsellBreakoutView *)&v16 traitCollectionDidChange:changeCopy];
  v12 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView);
  v13 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsTextAlignment;
  swift_beginAccess();
  (*(v7 + 16))(v9, selfCopy + v13, v6);
  v14 = BreakoutDetails.TextAlignment.textAlignment(in:)();
  (*(v7 + 8))(v9, v6);
  [v12 setTextAlignment:v14];
}

@end