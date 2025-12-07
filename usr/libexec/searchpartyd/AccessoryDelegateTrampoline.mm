@interface AccessoryDelegateTrampoline
- (_TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline)init;
- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties;
@end

@implementation AccessoryDelegateTrampoline

- (void)accessoryConnectionAttached:(id)attached type:(int)type info:(id)info properties:(id)properties
{
  v7 = *&type;
  if (attached)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (properties)
  {
    properties = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_1008D4AB0(v9, v11, v7, v12, properties);
}

- (void)accessoryConnectionDetached:(id)detached
{
  if (detached)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1008D528C(v4, v6);
}

- (void)accessoryConnectionInfoPropertyChanged:(id)changed properties:(id)properties
{
  propertiesCopy = properties;
  if (changed)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (!propertiesCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  v8 = 0;
  if (properties)
  {
LABEL_3:
    propertiesCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  selfCopy = self;
  sub_1008D5888(v6, v8, propertiesCopy);
}

- (_TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline)init
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  swift_weakInit();
  v8 = OBJC_IVAR____TtC12searchpartydP33_8DF307D51982B56654A13C398BADC9D727AccessoryDelegateTrampoline_workItemQueue;
  type metadata accessor for WorkItemQueue();
  v9 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  UUID.init()();
  *(&self->super.isa + v8) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(AccessoryDelegateTrampoline *)&v11 init];
}

@end