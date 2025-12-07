@interface UberHeaderView
- (_TtC8AppStore14UberHeaderView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)mute;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UberHeaderView

- (void)mute
{
  selfCopy = self;
  sub_100114244();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_100115CA4(&qword_10096F618, 255, type metadata accessor for NSKeyValueChangeKey, &unk_1007B0824);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_10011450C(v10, v12, v18, v15, context);

  sub_10002B894(v18, &unk_1009711D0, &unk_1007B1A10);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100114AD4(change, selfCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100114C20(selfCopy, v2);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v11 = sub_1001151E0(event, v10, x, y);

  return v11;
}

- (_TtC8AppStore14UberHeaderView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end