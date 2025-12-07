@interface GameOverlayUIService
- (_TtC13GameOverlayUI20GameOverlayUIService)init;
- (double)closeDashboard;
- (void)checkDashboardOverlayVisibility:(id)visibility;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)setUpAccessPointWithLocation:(id)location useCase:(id)case gameInternal:(id)internal didReturnToForeground:(id)foreground newToGameCenter:(id)center sceneIdentifier:(id)identifier;
- (void)showDashboardWithInitialState:(id)state canDismissWithGesture:(id)gesture sceneIdentifier:(id)identifier;
- (void)showGameModeBannerWithBundleIdentifier:(id)identifier available:(id)available required:(id)required enabled:(id)enabled showText:(id)text;
- (void)showGameModeBannerWithConfig:(id)config;
- (void)showInGameBannerWithData:(id)data gameInternal:(id)internal sceneIdentifier:(id)identifier;
- (void)showPlayTogetherWithData:(id)data sceneIdentifier:(id)identifier;
- (void)tearDownAccessPointWithSceneIdentifier:(id)identifier;
- (void)updateAccessPointWithLocation:(id)location gameInternal:(id)internal sceneIdentifier:(id)identifier;
@end

@implementation GameOverlayUIService

- (void)checkDashboardOverlayVisibility:(id)visibility
{
  v4 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = _Block_copy(visibility);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = sub_100040248;
  v10[5] = v8;
  sub_100014BBC(0, 0, v6, &unk_1000EA4D8, v10);
}

- (void)setUpAccessPointWithLocation:(id)location useCase:(id)case gameInternal:(id)internal didReturnToForeground:(id)foreground newToGameCenter:(id)center sceneIdentifier:(id)identifier
{
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  internalCopy = internal;
  foregroundCopy = foreground;
  centerCopy = center;
  selfCopy = self;
  identifierCopy = identifier;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (identifierCopy)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  sub_10003BF30(v29, v14, v15, v17, v22, v24, foregroundCopy, centerCopy, v25, v27);

  sub_100030784(v22, v24);
}

- (void)tearDownAccessPointWithSceneIdentifier:(id)identifier
{
  v5 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  v10 = sub_10007C628(0, identifier, v9);
  v12 = v11;

  if (v12)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v10;
    v14[5] = v12;
    sub_100014BBC(0, 0, v7, &unk_1000EA488, v14);
  }

  else
  {
    v15 = selfCopy;
  }
}

- (void)updateAccessPointWithLocation:(id)location gameInternal:(id)internal sceneIdentifier:(id)identifier
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  internalCopy = internal;
  selfCopy = self;
  identifierCopy = identifier;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (identifierCopy)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  sub_100034ECC(v8, v10, v14, v16, v17, v19);

  sub_100030784(v14, v16);
}

- (void)showInGameBannerWithData:(id)data gameInternal:(id)internal sceneIdentifier:(id)identifier
{
  dataCopy = data;
  selfCopy = self;
  internalCopy = internal;
  identifierCopy = identifier;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (internalCopy)
  {
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (identifierCopy)
    {
LABEL_3:
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      goto LABEL_6;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0xF000000000000000;
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  sub_100036D58(v11, v13, v14, v16, v17, v19);

  sub_10003091C(v14, v16);
  sub_100030784(v11, v13);
}

- (void)showDashboardWithInitialState:(id)state canDismissWithGesture:(id)gesture sceneIdentifier:(id)identifier
{
  stateCopy = state;
  gestureCopy = gesture;
  selfCopy = self;
  identifierCopy = identifier;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (identifierCopy)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  sub_10003D8D4(v11, v13, gestureCopy, v14, v16);

  sub_100030784(v11, v13);
}

- (void)showPlayTogetherWithData:(id)data sceneIdentifier:(id)identifier
{
  dataCopy = data;
  selfCopy = self;
  identifierCopy = identifier;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (identifierCopy)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  sub_10003E018(v8, v10, v11, v13);

  sub_100030784(v8, v10);
}

- (void)showGameModeBannerWithBundleIdentifier:(id)identifier available:(id)available required:(id)required enabled:(id)enabled showText:(id)text
{
  identifierCopy = identifier;
  enabledCopy = enabled;
  selfCopy = self;
  v11 = [objc_allocWithZone(GKGameModeBannerConfig) initWithBundleIdentifier:identifierCopy enabled:objc_msgSend(enabledCopy actionSymbols:{"BOOLValueSafe"), 0}];

  sub_10003EB8C(v11);
}

- (void)showGameModeBannerWithConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  sub_10003EB8C(configCopy);
}

- (double)closeDashboard
{
  v0 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "GameOverlayUIService: closeDashboard called", v10, 2u);
  }

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.dashboardVisibility.getter();

  v11 = (*(v1 + 88))(v6, v0);
  v12 = enum case for ZoomCoordinator.DashboardVisibilityState.open(_:);
  (*(v1 + 8))(v6, v0);
  if (v11 == v12)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "GameOverlayUIService: setting dashboard visibility to closed", v16, 2u);
    }

    static ZoomCoordinator.shared.getter();
    (*(v1 + 104))(v3, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v0);
    dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
  }

  return result;
}

- (_TtC13GameOverlayUI20GameOverlayUIService)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13GameOverlayUI20GameOverlayUIService_listener) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(GameOverlayUIService *)&v5 init];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10007CA7C(connectionCopy);

  swift_unknownObjectRelease();
}

@end