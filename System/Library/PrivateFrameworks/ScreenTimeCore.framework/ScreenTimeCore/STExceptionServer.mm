@interface STExceptionServer
- (_TtC15ScreenTimeAgent17STExceptionServer)init;
- (void)addExceptionFor:(STExceptionApp *)for completionHandler:(id)handler;
- (void)contextDidSave:(id)save;
- (void)controllerDidChangeContent:(id)content;
- (void)deleteExceptionFor:(STExceptionApp *)for completionHandler:(id)handler;
- (void)fetchAllAppExceptionsForRequesterDSID:(NSNumber *)d completionHandler:(id)handler;
- (void)fetchExceptionsForRequesterDSID:(NSNumber *)d adamID:(unint64_t)iD completionHandler:(id)handler;
- (void)notifyUserOfAppRatingChange:(NSArray *)change completionHandler:(id)handler;
@end

@implementation STExceptionServer

- (void)addExceptionFor:(STExceptionApp *)for completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v13[4] = &unk_1001408D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001408E0;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_10010D4C0(0, 0, v9, &unk_1001408E8, v14);
}

- (void)deleteExceptionFor:(STExceptionApp *)for completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v13[4] = &unk_1001408B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001408C0;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_10010D4C0(0, 0, v9, &unk_1001408C8, v14);
}

- (void)fetchExceptionsForRequesterDSID:(NSNumber *)d adamID:(unint64_t)iD completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = iD;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140898;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1001408A0;
  v16[5] = v15;
  dCopy = d;
  selfCopy = self;
  sub_10010D4C0(0, 0, v11, &unk_1001408A8, v16);
}

- (void)fetchAllAppExceptionsForRequesterDSID:(NSNumber *)d completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v13[4] = &unk_100140878;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140880;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_10010D4C0(0, 0, v9, &unk_1001413C0, v14);
}

- (void)contextDidSave:(id)save
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000AF818(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  _s15ScreenTimeAgent17STExceptionServerC26controllerDidChangeContentyySo26NSFetchedResultsControllerCySo20NSFetchRequestResult_pGF_0();
}

- (void)notifyUserOfAppRatingChange:(NSArray *)change completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = change;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100140868;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100140550;
  v14[5] = v13;
  changeCopy = change;
  selfCopy = self;
  sub_10010D4C0(0, 0, v9, &unk_100140230, v14);
}

- (_TtC15ScreenTimeAgent17STExceptionServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end