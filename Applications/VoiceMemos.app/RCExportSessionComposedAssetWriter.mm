@interface RCExportSessionComposedAssetWriter
+ (void)createForAsset:(AVAsset *)asset completionHandler:(id)handler;
- (_TtC10VoiceMemos34RCExportSessionComposedAssetWriter)init;
- (void)writeCompositionWithCompletionBlock:(id)block;
@end

@implementation RCExportSessionComposedAssetWriter

- (_TtC10VoiceMemos34RCExportSessionComposedAssetWriter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)writeCompositionWithCompletionBlock:(id)block
{
  v5 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(block);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_100132D18;
  v11[6] = v9;
  selfCopy = self;
  sub_100194190(0, 0, v7, &unk_10024F0A0, v11);
}

+ (void)createForAsset:(AVAsset *)asset completionHandler:(id)handler
{
  v7 = sub_1000C773C(&unk_1002D1D90, &qword_1002422E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = asset;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10024F090;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100243D40;
  v14[5] = v13;
  assetCopy = asset;
  sub_1001A8E50(0, 0, v9, &unk_100243540, v14);
}

@end