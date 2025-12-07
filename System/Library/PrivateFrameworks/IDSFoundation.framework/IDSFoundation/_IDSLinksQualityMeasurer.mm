@interface _IDSLinksQualityMeasurer
- (_TtC13IDSFoundation24_IDSLinksQualityMeasurer)init;
- (void)didReceiveStatsResponseWithID:(NSString *)d linkID:(char)iD completionHandler:(id)handler;
- (void)didReceiveStatsTestPacketWithPayload:(NSData *)payload linkID:(char)d completionHandler:(id)handler;
- (void)didSendStatsRequestWithID:(NSString *)d linkID:(char)iD completionHandler:(id)handler;
@end

@implementation _IDSLinksQualityMeasurer

- (void)didReceiveStatsTestPacketWithPayload:(NSData *)payload linkID:(char)d completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = payload;
  *(v13 + 24) = d;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49CF0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49CF8;
  v16[5] = v15;
  payloadCopy = payload;

  sub_1A7DE5274(0, 0, v11, &unk_1A7E49D00, v16);
}

- (void)didSendStatsRequestWithID:(NSString *)d linkID:(char)iD completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = d;
  *(v13 + 24) = iD;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49CD0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49CD8;
  v16[5] = v15;
  dCopy = d;

  sub_1A7DE5274(0, 0, v11, &unk_1A7E49CE0, v16);
}

- (void)didReceiveStatsResponseWithID:(NSString *)d linkID:(char)iD completionHandler:(id)handler
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = d;
  *(v13 + 24) = iD;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1A7E226D0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1A7E49CB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1A7E49CB8;
  v16[5] = v15;
  dCopy = d;

  sub_1A7DE5274(0, 0, v11, &unk_1A7E49CC0, v16);
}

- (_TtC13IDSFoundation24_IDSLinksQualityMeasurer)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end