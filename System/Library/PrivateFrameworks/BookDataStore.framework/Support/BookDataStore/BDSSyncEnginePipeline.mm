@interface BDSSyncEnginePipeline
- (_TtC14bookdatastored21BDSSyncEnginePipeline)init;
- (_TtC14bookdatastored21BDSSyncEnginePipeline)initWithRecordType:(id)type zoneName:(id)name delegate:(id)delegate dataMapper:(id)mapper;
- (id)privacyDelegate;
- (void)fetchRecordForRecordID:(CKRecordID *)d completion:(id)completion;
- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier;
- (void)signalSyncToCK;
- (void)startSyncToCKWithCompletion:(id)completion;
@end

@implementation BDSSyncEnginePipeline

- (_TtC14bookdatastored21BDSSyncEnginePipeline)initWithRecordType:(id)type zoneName:(id)name delegate:(id)delegate dataMapper:(id)mapper
{
  v8 = sub_1001C6018();
  v10 = v9;
  v11 = sub_1001C6018();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1000F5F04(v8, v10, v11, v13, delegate, mapper);
}

- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier
{
  selfCopy = self;
  BDSSyncEnginePipeline.signalSyncToCK()();
}

- (void)signalSyncToCK
{
  selfCopy = self;
  BDSSyncEnginePipeline.signalSyncToCK()();
}

- (void)startSyncToCKWithCompletion:(id)completion
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F36D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F36D8;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F36E0, v12);
}

- (void)fetchRecordForRecordID:(CKRecordID *)d completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F36C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F0DB0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100118770(0, 0, v9, &unk_1001F33E0, v14);
}

- (id)privacyDelegate
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v3 = static BDSSyncEngine.shared;

  return v3;
}

- (_TtC14bookdatastored21BDSSyncEnginePipeline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end