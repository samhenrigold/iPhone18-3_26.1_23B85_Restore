@interface SESAssetManager
+ (BOOL)kickOffAndReturnError:(id *)error;
+ (void)syncMobileAssetUserInitiated;
- (void)handleDownloadedAsset:(id)asset;
@end

@implementation SESAssetManager

+ (BOOL)kickOffAndReturnError:(id *)error
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  if (qword_100501C58 != -1)
  {
    v7 = ObjCClassMetadata;
    swift_once();
    ObjCClassMetadata = v7;
  }

  __chkstk_darwin(ObjCClassMetadata);
  v5 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  return 1;
}

+ (void)syncMobileAssetUserInitiated
{
  if (qword_100501C58 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1005098E8 + OBJC_IVAR____TtC10seserviced15SESAssetManager_mobileAssetClient);
  if (v2)
  {

    [v2 triggerUserInitiatedSync];
  }
}

- (void)handleDownloadedAsset:(id)asset
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002BA988(v7);

  (*(v5 + 8))(v7, v4);
}

@end