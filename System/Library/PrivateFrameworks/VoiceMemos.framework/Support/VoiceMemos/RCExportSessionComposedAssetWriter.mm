@interface RCExportSessionComposedAssetWriter
+ (void)createForAsset:(AVAsset *)asset completionHandler:(id)handler;
- (_TtC10voicememod34RCExportSessionComposedAssetWriter)init;
- (void)writeCompositionWithCompletionBlock:(id)block;
@end

@implementation RCExportSessionComposedAssetWriter

- (_TtC10voicememod34RCExportSessionComposedAssetWriter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)writeCompositionWithCompletionBlock:(id)block
{
  v5 = sub_100024720(&qword_10005CB50, &qword_10003F510);
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
  v11[5] = sub_10002C78C;
  v11[6] = v9;
  selfCopy = self;
  sub_10002C968(0, 0, v7, &unk_10003F980, v11);
}

+ (void)createForAsset:(AVAsset *)asset completionHandler:(id)handler
{
  v7 = sub_100024720(&qword_10005CB50, &qword_10003F510);
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
  v13[4] = &unk_10003F908;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10003F7C0;
  v14[5] = v13;
  assetCopy = asset;
  sub_10002AE20(0, 0, v9, &unk_10003F530, v14);
}

@end