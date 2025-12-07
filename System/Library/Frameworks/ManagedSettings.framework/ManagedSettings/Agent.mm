@interface Agent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20ManagedSettingsAgent5Agent)init;
- (void)clearAllSettingsForRecordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)handler;
- (void)clearEffectiveSubscription:(BOOL)subscription;
- (void)deleteStores:(id)stores recordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler;
- (void)handleAction:(int64_t)action categoryIdentifier:(id)identifier replyHandler:(id)handler;
- (void)storeNamesForRecordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler;
- (void)subscribeToEffectiveChangesForGroups:(id)groups objC:(BOOL)c;
- (void)updateStoreWithNewSettings:(id)settings removedSettings:(id)removedSettings newProperties:(id)properties fullReplacement:(BOOL)replacement recordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)self0;
@end

@implementation Agent

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100001938(connectionCopy);

  return v9 & 1;
}

- (void)subscribeToEffectiveChangesForGroups:(id)groups objC:(BOOL)c
{
  groupsCopy = groups;
  selfCopy = self;
  sub_1000021C8(groupsCopy, c);
}

- (_TtC20ManagedSettingsAgent5Agent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clearAllSettingsForRecordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)handler
{
  v9 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  v12 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  _Block_copy(v12);
  selfCopy = self;
  sub_10002D270(v11, v15, v17, v18, v20, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_100008630(v11, &unk_10007B400, &unk_100066D80);
}

- (void)deleteStores:(id)stores recordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler
{
  v10 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  _Block_copy(v13);
  storesCopy = stores;
  selfCopy = self;
  sub_10002DB84(storesCopy, v12, v16, v18, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_100008630(v12, &unk_10007B400, &unk_100066D80);
}

- (void)updateStoreWithNewSettings:(id)settings removedSettings:(id)removedSettings newProperties:(id)properties fullReplacement:(BOOL)replacement recordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)self0
{
  replacementCopy = replacement;
  v15 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  v18 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  _Block_copy(v18);
  settingsCopy = settings;
  removedSettingsCopy = removedSettings;
  propertiesCopy = properties;
  selfCopy = self;
  sub_10002EF7C(settingsCopy, removedSettingsCopy, propertiesCopy, replacementCopy, v17, v21, v23, v24, v26, selfCopy, v18);
  _Block_release(v18);
  _Block_release(v18);

  sub_100008630(v17, &unk_10007B400, &unk_100066D80);
}

- (void)storeNamesForRecordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler
{
  v8 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  _Block_copy(v11);
  selfCopy = self;
  sub_10002F68C(v10, v14, v16, selfCopy, v11);
  _Block_release(v11);
  _Block_release(v11);

  sub_100008630(v10, &unk_10007B400, &unk_100066D80);
}

- (void)handleAction:(int64_t)action categoryIdentifier:(id)identifier replyHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_1000306D8(action, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)clearEffectiveSubscription:(BOOL)subscription
{
  v5 = objc_opt_self();
  selfCopy = self;
  currentConnection = [v5 currentConnection];
  if (currentConnection)
  {
    v7 = currentConnection;
    sub_100009A5C([currentConnection processIdentifier], subscription);
  }
}

@end