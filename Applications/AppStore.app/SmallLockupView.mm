@interface SmallLockupView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)lockupTapGestureRecognized;
@end

@implementation SmallLockupView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;

  sub_100709E58(v7);
  [(SmallLockupView *)selfCopy layoutMargins];
  sub_100508464();
  v10 = v9;
  v12 = v11;

  (*(v5 + 8))(v7, v4);
  v13 = v10;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = type metadata accessor for SmallLockupLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100709E58(v6);
  [(SmallLockupView *)selfCopy layoutMargins];
  sub_100508464();
  v9 = v8;
  (*(v4 + 8))(v6, v3);

  v10 = UIViewNoIntrinsicMetric;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SmallLockupView(0);
  v2 = v5.receiver;
  [(SmallLockupView *)&v5 layoutSubviews];
  sub_10070A300(v4);
  sub_10002A400(v4, v4[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  traitCollection = [v2 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v4);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10070AD88(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapGestureRecognizer);
  if (!v7)
  {
    recognizerCopy = recognizer;
    gestureRecognizerCopy = gestureRecognizer;
    selfCopy = self;
    goto LABEL_5;
  }

  sub_100005744(0, &unk_100993110, UIGestureRecognizer_ptr);
  recognizerCopy2 = recognizer;
  gestureRecognizerCopy2 = gestureRecognizer;
  selfCopy2 = self;
  v11 = v7;
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
LABEL_5:
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass() == 0;
    goto LABEL_6;
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)lockupTapGestureRecognized
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock);
  if (v2)
  {
    v3 = *&self->super.artworkView[OBJC_IVAR____TtC8AppStore15SmallLockupView_lockupTapBlock];
    selfCopy = self;
    v5 = sub_10000827C(v2, v3);
    v2(v5);

    sub_10001F63C(v2, v3);
  }
}

@end