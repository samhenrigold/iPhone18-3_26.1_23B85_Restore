@interface KCSharingCloudCoreUtilities
- (BOOL)haveAcquiredSession;
- (_TtC9securityd27KCSharingCloudCoreUtilities)init;
- (_TtC9securityd27KCSharingCloudCoreUtilities)initWithKCSharingCloudCoreDelegate:(id)delegate;
- (id)acquiredSessionUserRecordIDAndReturnError:(id *)error;
- (void)acceptCKShares:(NSArray *)shares completionHandler:(id)handler;
- (void)acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:(NSString *)identifier applicationOverrideIdentifier:(NSString *)overrideIdentifier encryptionServiceIdentifier:(NSString *)serviceIdentifier forTestingDelegate:(_TtP9securityd33KCSharingCloudCoreTestingProtocol_ *)delegate completionHandler:(id)handler;
- (void)declineCKShares:(NSArray *)shares completionHandler:(id)handler;
- (void)fetchCKShareMetadatas:(NSArray *)metadatas invitationTokensByShareURL:(NSDictionary *)l completionHandler:(id)handler;
- (void)fetchShareParticipantsFor:(NSArray *)for completionHandler:(id)handler;
- (void)forceNilOutCKDatabases;
- (void)forceSessionInvalidationWithRequestSessionReInit:(BOOL)init;
- (void)invokeDummyOperationOnAccountSignOutWithCompletionHandler:(id)handler;
- (void)setSessionAcquisitionInProgress:(BOOL)progress;
- (void)withCKDatabases:(id)databases;
@end

@implementation KCSharingCloudCoreUtilities

- (id)acquiredSessionUserRecordIDAndReturnError:(id *)error
{
  v3 = self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex;
  selfCopy = self;
  os_unfair_lock_lock(v3);
  sub_10001165C(v3 + 1, &v7, &v8);
  os_unfair_lock_unlock(v3);

  v5 = v8;

  return v5;
}

- (_TtC9securityd27KCSharingCloudCoreUtilities)initWithKCSharingCloudCoreDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  v4 = sub_10002ADA8(delegate);
  swift_unknownObjectRelease();
  return v4;
}

- (void)acquireCKDatabasesFromAuthenticatedSessionWithContainerIdentifier:(NSString *)identifier applicationOverrideIdentifier:(NSString *)overrideIdentifier encryptionServiceIdentifier:(NSString *)serviceIdentifier forTestingDelegate:(_TtP9securityd33KCSharingCloudCoreTestingProtocol_ *)delegate completionHandler:(id)handler
{
  v13 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = identifier;
  v17[3] = overrideIdentifier;
  v17[4] = serviceIdentifier;
  v17[5] = delegate;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100294398;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1002943A0;
  v20[5] = v19;
  identifierCopy = identifier;
  overrideIdentifierCopy = overrideIdentifier;
  serviceIdentifierCopy = serviceIdentifier;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002A224(0, 0, v15, &unk_1002943A8, v20);
}

- (_TtC9securityd27KCSharingCloudCoreUtilities)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)haveAcquiredSession
{
  v2 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_100024CDC(&v2[2]._os_unfair_lock_opaque, &v5);
  os_unfair_lock_unlock(v2);

  return v5;
}

- (void)setSessionAcquisitionInProgress:(BOOL)progress
{
  v4 = (self + OBJC_IVAR____TtC9securityd27KCSharingCloudCoreUtilities_stateMutex);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  sub_100024E44(&v4[2], progress);
  os_unfair_lock_unlock(v4);
}

- (void)withCKDatabases:(id)databases
{
  v4 = _Block_copy(databases);
  selfCopy = self;
  sub_100024FC4(v4);

  _Block_release(v4);
}

- (void)invokeDummyOperationOnAccountSignOutWithCompletionHandler:(id)handler
{
  v5 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100294368;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100294370;
  v12[5] = v11;
  selfCopy = self;
  sub_10002A224(0, 0, v7, &unk_100294378, v12);
}

- (void)fetchShareParticipantsFor:(NSArray *)for completionHandler:(id)handler
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100294348;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100294350;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_10002A224(0, 0, v9, &unk_100294358, v14);
}

- (void)acceptCKShares:(NSArray *)shares completionHandler:(id)handler
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = shares;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100294328;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100294330;
  v14[5] = v13;
  sharesCopy = shares;
  selfCopy = self;
  sub_10002A224(0, 0, v9, &unk_100294338, v14);
}

- (void)fetchCKShareMetadatas:(NSArray *)metadatas invitationTokensByShareURL:(NSDictionary *)l completionHandler:(id)handler
{
  v9 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = metadatas;
  v13[3] = l;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100294308;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100294310;
  v16[5] = v15;
  metadatasCopy = metadatas;
  lCopy = l;
  selfCopy = self;
  sub_10002A224(0, 0, v11, &unk_100294318, v16);
}

- (void)declineCKShares:(NSArray *)shares completionHandler:(id)handler
{
  v7 = sub_10002ACB8(&qword_10039B340, &qword_1002942B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = shares;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1002942C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1002942D0;
  v14[5] = v13;
  sharesCopy = shares;
  selfCopy = self;
  sub_10002A224(0, 0, v9, &unk_1002942E0, v14);
}

- (void)forceSessionInvalidationWithRequestSessionReInit:(BOOL)init
{
  selfCopy = self;
  sub_100029550(init);
}

- (void)forceNilOutCKDatabases
{
  selfCopy = self;
  sub_10002987C();
}

@end