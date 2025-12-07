@interface AKSharedAccountsStorageController
- (AKSharedAccountsStorageController)init;
- (AKSharedAccountsStorageController)initWithKeychainStorageController:(id)controller keychainGroupManager:(id)manager;
- (BOOL)cleanupAllItemsFrom:(id)from error:(id *)error;
- (BOOL)removeAllAccountsBelongingToParticipantWithParticipantID:(id)d from:(id)from error:(id *)error;
- (id)shareTokenForAccount:(id)account inGroup:(id)group error:(id *)error;
- (void)fetchAccountsSharedWithCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler;
- (void)fetchAllAccountsSharedByCurrentUserWithCompletionHandler:(id)handler;
- (void)fetchAllSharedAccountsWithShareTokenWithCompletionHandler:(id)handler;
- (void)fetchSharedAccountsWithGroupID:(NSString *)d completionHandler:(id)handler;
- (void)isMemberOfGroupWithGroupID:(NSString *)d completion:(id)completion;
- (void)removeAllAccountsBelongingToCurrentUserFrom:(NSString *)from completionHandler:(id)handler;
- (void)removeSharedAccountBelongingToCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler;
@end

@implementation AKSharedAccountsStorageController

- (AKSharedAccountsStorageController)initWithKeychainStorageController:(id)controller keychainGroupManager:(id)manager
{
  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  return sub_1001F1260(controller, manager, self);
}

- (void)fetchSharedAccountsWithGroupID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E078;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E080;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029E088, v14);
}

- (void)fetchAllSharedAccountsWithShareTokenWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
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
  v11[4] = &unk_10029E058;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E060;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029E3B0, v12);
}

- (void)fetchAccountsSharedWithCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E038;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E040;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029E390, v14);
}

- (id)shareTokenForAccount:(id)account inGroup:(id)group error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  accountCopy = account;
  selfCopy = self;
  sub_1001EDA94(accountCopy);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (void)isMemberOfGroupWithGroupID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029E018;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029E020;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029E028, v14);
}

- (void)fetchAllAccountsSharedByCurrentUserWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
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
  v11[4] = &unk_10029DFF8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029E000;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029E008, v12);
}

- (void)removeSharedAccountBelongingToCurrentUserWithClientID:(NSString *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029DFE8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029CFF0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CFF8, v14);
}

- (void)removeAllAccountsBelongingToCurrentUserFrom:(NSString *)from completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = from;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029DFD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  fromCopy = from;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

- (BOOL)removeAllAccountsBelongingToParticipantWithParticipantID:(id)d from:(id)from error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001F056C();

  return 1;
}

- (BOOL)cleanupAllItemsFrom:(id)from error:(id *)error
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1001F0774();

  return 1;
}

- (AKSharedAccountsStorageController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end