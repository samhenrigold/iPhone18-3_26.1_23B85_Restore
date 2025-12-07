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
  height = fits.height;
  width = fits.width;
  v6 = sub_100747064();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;

  sub_1001CDA40(v9);
  [(SmallLockupView *)selfCopy layoutMargins];
  v11 = sub_1001CF184(v9, selfCopy, width, height);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = sub_100747064();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1001CDA40(v6);
  [(SmallLockupView *)selfCopy layoutMargins];
  v8 = sub_1001CF184(v6, selfCopy, 0.0, 0.0);
  v10 = v9;
  (*(v4 + 8))(v6, v3, v8);

  v11 = UIViewNoIntrinsicMetric;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SmallLockupView(0);
  v2 = v5.receiver;
  [(SmallLockupView *)&v5 layoutSubviews];
  sub_1001CDEE8(v4);
  sub_10000C888(v4, v4[3]);
  sub_1007477B4();
  traitCollection = [v2 traitCollection];
  sub_100751244();

  sub_10000C620(v4);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_1001CE970(recognizerCopy, touchCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  v7 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapGestureRecognizer);
  if (!v7)
  {
    recognizerCopy = recognizer;
    gestureRecognizerCopy = gestureRecognizer;
    selfCopy = self;
    goto LABEL_5;
  }

  sub_100016C60(0, &unk_10092C570, UIGestureRecognizer_ptr);
  recognizerCopy2 = recognizer;
  gestureRecognizerCopy2 = gestureRecognizer;
  selfCopy2 = self;
  v11 = v7;
  v12 = sub_100753FC4();

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
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock);
  if (v2)
  {
    v3 = *&self->super.artworkView[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_lockupTapBlock];
    selfCopy = self;
    v5 = sub_10001B5AC(v2, v3);
    v2(v5);

    sub_1000164A8(v2, v3);
  }
}

@end