@interface MapsSyncDaemonService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC9mapssyncd21MapsSyncDaemonService)init;
- (void)cloudKitAccountChangedWithNotification:(id)notification;
- (void)cloudKitContainerEventWithNotification:(id)notification;
- (void)cloudKitSyncAllowedWithCompletionHandler:(id)handler;
- (void)fetchSyncedAnalyticsIdentifierWithCompletion:(id)completion;
- (void)getLastSyncDateWithCompletionHandler:(id)handler;
- (void)prepareLibraryWithCompletionHandler:(id)handler;
- (void)setSyncedAnalyticsIdentifier:(id)identifier deleteIdenifiers:(id)idenifiers completion:(id)completion;
@end

@implementation MapsSyncDaemonService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = objc_opt_self();
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v11 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP9mapssyncd31MapsSyncDaemonCompositeProtocol_];
  [connectionCopy setExportedInterface:v11];

  v12 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP9mapssyncd31MapsSyncDaemonCompositeProtocol_];
  [connectionCopy setRemoteObjectInterface:v12];

  [connectionCopy setExportedObject:selfCopy];
  [connectionCopy resume];

  return 1;
}

- (void)cloudKitSyncAllowedWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000290C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10002B370;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10002B378;
  v12[5] = v11;
  selfCopy = self;
  sub_100010930(0, 0, v7, &unk_10002B380, v12);
}

- (void)cloudKitContainerEventWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10000B4C0(notificationCopy);
}

- (void)cloudKitAccountChangedWithNotification:(id)notification
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1000290C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v7;
  sub_10000BAC8(0, 0, v5, &unk_10002B3B0, v8);
}

- (void)fetchSyncedAnalyticsIdentifierWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10000C368(sub_100011460, v5);
}

- (void)setSyncedAnalyticsIdentifier:(id)identifier deleteIdenifiers:(id)idenifiers completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (identifier)
  {
    idenifiersCopy = idenifiers;
    selfCopy = self;
    identifierCopy = identifier;
    identifier = sub_100028D28();
    v12 = v11;

    if (idenifiers)
    {
LABEL_3:
      v13 = sub_100029048();

      goto LABEL_6;
    }
  }

  else
  {
    idenifiersCopy2 = idenifiers;
    selfCopy2 = self;
    v12 = 0xF000000000000000;
    if (idenifiers)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  sub_10000CCEC(identifier, v12, v13, sub_100011444, v16);

  sub_10001144C(identifier, v12);
}

- (void)prepareLibraryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000290C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10002B390;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10002B398;
  v12[5] = v11;
  selfCopy = self;
  sub_100010930(0, 0, v7, &unk_10002B3A0, v12);
}

- (void)getLastSyncDateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000290C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10002B328;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10002B338;
  v12[5] = v11;
  selfCopy = self;
  sub_100010930(0, 0, v7, &unk_10002B348, v12);
}

- (_TtC9mapssyncd21MapsSyncDaemonService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end