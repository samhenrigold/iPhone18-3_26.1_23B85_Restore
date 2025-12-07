@interface SDProductKitWrapper
+ (void)fetchAssetBundleWithProductID:(unsigned __int16)d color:(unsigned int)color model:(NSString *)model timeout:(double)timeout completionHandler:(id)handler;
- (_TtC16DaemoniOSLibrary19SDProductKitWrapper)init;
@end

@implementation SDProductKitWrapper

+ (void)fetchAssetBundleWithProductID:(unsigned __int16)d color:(unsigned int)color model:(NSString *)model timeout:(double)timeout completionHandler:(id)handler
{
  v13 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = d;
  *(v17 + 20) = color;
  *(v17 + 24) = model;
  *(v17 + 32) = timeout;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10080F2B8;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10080F2C0;
  v20[5] = v19;
  modelCopy = model;
  sub_1006E2B30(0, 0, v15, &unk_1007FB9F0, v20);
}

- (_TtC16DaemoniOSLibrary19SDProductKitWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SDProductKitWrapper *)&v3 init];
}

@end