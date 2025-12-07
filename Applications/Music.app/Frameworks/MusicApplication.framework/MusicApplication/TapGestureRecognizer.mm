@interface TapGestureRecognizer
- (_TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)ignoreTouch:(id)touch forEvent:(id)event;
@end

@implementation TapGestureRecognizer

- (void)ignoreTouch:(id)touch forEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for TapGestureRecognizer();
  touchCopy = touch;
  eventCopy = event;
  v8 = v12.receiver;
  [(TapGestureRecognizer *)&v12 ignoreTouch:touchCopy forEvent:eventCopy];
  v9 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp];
  if (v9)
  {
    v10 = *&v8[OBJC_IVAR____TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer_onTouchUp + 8];

    v9(v11);
    sub_17654(v9, v10);
  }
}

- (_TtC16MusicApplicationP33_7229CA0286013830CE534DD32FD39CB720TapGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_E7E94(v6, action);
}

@end