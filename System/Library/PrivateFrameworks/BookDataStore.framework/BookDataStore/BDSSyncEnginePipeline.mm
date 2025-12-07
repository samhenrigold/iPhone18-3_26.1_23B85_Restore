@interface BDSSyncEnginePipeline
- (_TtC13BookDataStore21BDSSyncEnginePipeline)init;
- (_TtC13BookDataStore21BDSSyncEnginePipeline)initWithRecordType:(id)type zoneName:(id)name delegate:(id)delegate dataMapper:(id)mapper;
- (id)privacyDelegate;
- (void)fetchRecordForRecordID:(CKRecordID *)d completion:(id)completion;
- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier;
- (void)signalSyncToCK;
- (void)startSyncToCKWithCompletion:(id)completion;
@end

@implementation BDSSyncEnginePipeline

- (_TtC13BookDataStore21BDSSyncEnginePipeline)initWithRecordType:(id)type zoneName:(id)name delegate:(id)delegate dataMapper:(id)mapper
{
  v8 = sub_1E470AF1C();
  v10 = v9;
  v11 = sub_1E470AF1C();
  v13 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_1E46F48C4(v8, v10, v11, v13, delegate, mapper);
}

- (void)saltUpdatedWithSaltVersionIdentifier:(id)identifier
{
  selfCopy = self;
  sub_1E46F7598();
}

- (void)signalSyncToCK
{
  selfCopy = self;
  sub_1E46F7598();
}

- (void)startSyncToCKWithCompletion:(id)completion
{
  v5 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1E470B14C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1E4720550;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1E4720558;
  v13[5] = v12;
  selfCopy = self;
  sub_1E46FF094(0, 0, v8, &unk_1E4720560, v13);
}

- (void)fetchRecordForRecordID:(CKRecordID *)d completion:(id)completion
{
  v7 = sub_1E4650534(&unk_1ECF752E0, &qword_1E471B9A8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = d;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1E470B14C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1E4720508;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1E471B9C0;
  v15[5] = v14;
  dCopy = d;
  selfCopy = self;
  sub_1E46FF094(0, 0, v10, &unk_1E471B9C8, v15);
}

- (id)privacyDelegate
{
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE2AE3F0;

  return v3;
}

- (_TtC13BookDataStore21BDSSyncEnginePipeline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end