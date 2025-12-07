@interface TapGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC17PromotedContentUI20TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
@end

@implementation TapGestureRecognizer

- (void)reset
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for TapGestureRecognizer();
  v2 = v10.receiver;
  [(TapGestureRecognizer *)&v10 reset];
  v3 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC17PromotedContentUI20TapGestureRecognizer_touchUpHandler + 8];

    view = [v2 view];
    [v2 locationInView_];
    v7 = v6;
    v9 = v8;

    v3(v2, 0, v7, v9);
    sub_1C19A504C(v3, v4);
  }

  else
  {
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  sub_1C19CA29C(touchCopy);
  v10 = v9;

  return v10 & 1;
}

- (_TtC17PromotedContentUI20TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_1C1A6F92C();
    swift_unknownObjectRelease();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end