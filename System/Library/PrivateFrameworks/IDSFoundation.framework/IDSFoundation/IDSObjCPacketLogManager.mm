@interface IDSObjCPacketLogManager
+ (void)clean;
+ (void)copyPacketLogsToTmpDirectoryWithCompletionHandler:(id)handler;
- (IDSObjCPacketLogManager)init;
@end

@implementation IDSObjCPacketLogManager

+ (void)clean
{
  v2 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1A7E226D0();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_1A7D94654(0, 0, v4, &unk_1A7E45710, v6);
}

+ (void)copyPacketLogsToTmpDirectoryWithCompletionHandler:(id)handler
{
  v5 = sub_1A7CC7FFC(&unk_1EB2B61C0, &qword_1A7E451A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A7E226D0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A7E456F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A7E48E60;
  v12[5] = v11;
  sub_1A7DE5274(0, 0, v7, &unk_1A7E45700, v12);
}

- (IDSObjCPacketLogManager)init
{
  v3.receiver = self;
  v3.super_class = IDSObjCPacketLogManager;
  return [(IDSObjCPacketLogManager *)&v3 init];
}

@end