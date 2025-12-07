@interface BackgroundActivitySessionsController
- (void)dealloc;
- (void)endActivityForIdentifier:(id)identifier;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)startActivityForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier activityName:(id)name activityDescription:(id)description progress:(id)progress;
- (void)startActivityForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier imageUTI:(id)i activityName:(id)name activityDescription:(id)description progress:(id)progress;
- (void)updateActivityName:(id)name activityDescription:(id)description forIdentifier:(id)identifier;
- (void)updateActivityName:(id)name activityDescription:(id)description withHaptic:(id)haptic forIdentifier:(id)identifier;
@end

@implementation BackgroundActivitySessionsController

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener);
  if (v2)
  {
    ObjectType = swift_getObjectType();
    selfCopy = self;
    [v2 invalidate];
    v6.receiver = selfCopy;
    v6.super_class = ObjectType;
    [(BackgroundActivitySessionsController *)&v6 dealloc];
  }

  else
  {
    __break(1u);
  }
}

- (void)startActivityForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier activityName:(id)name activityDescription:(id)description progress:(id)progress
{
  selfCopy = self;
  v23 = type metadata accessor for UUID();
  v8 = *(v23 - 8);
  __chkstk_darwin(v23);
  v10 = &selfCopy - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  progressCopy = progress;
  v21 = selfCopy;
  sub_10001BA48(v10, v11, v13, v14, v16, v17, v19, progressCopy);

  (*(v8 + 8))(v10, v23);
}

- (void)startActivityForIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier imageUTI:(id)i activityName:(id)name activityDescription:(id)description progress:(id)progress
{
  selfCopy = self;
  v10 = type metadata accessor for UUID();
  v27 = *(v10 - 8);
  v28 = v10;
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (i)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    i = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  progressCopy = progress;
  v24 = selfCopy;
  sub_10001BD30(v12, v25, v14, v15, i, v17, v19, v20, v22, progressCopy);

  (*(v27 + 8))(v12, v28);
}

- (void)updateActivityName:(id)name activityDescription:(id)description forIdentifier:(id)identifier
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001DCE0(v10, v12, v13, v15, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)updateActivityName:(id)name activityDescription:(id)description withHaptic:(id)haptic forIdentifier:(id)identifier
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  hapticCopy = haptic;
  selfCopy = self;
  sub_10001DFB4(v12, v14, v15, v17, hapticCopy, v11);

  (*(v9 + 8))(v11, v8);
}

- (void)endActivityForIdentifier:(id)identifier
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10001EE60(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000237E0(connectionCopy);

  swift_unknownObjectRelease();
}

@end