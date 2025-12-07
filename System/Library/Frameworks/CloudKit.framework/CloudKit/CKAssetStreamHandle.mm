@interface CKAssetStreamHandle
+ (C2RequestOptions)networkRequestOptions;
+ (void)makeAssetStreamHandleFromURL:(NSURL *)l assetKey:(NSData *)key filenameExtension:(NSString *)extension completionHandler:(id)handler;
- (CKAssetStreamHandle)initWithSerializedData:(id)data error:(id *)error;
- (id)makeAVAssetExportSessionWith:(id)with options:(id)options presetName:(id)name;
- (id)makeAVPlayerItemWith:(id)with options:(id)options;
- (id)serializedData:(id *)data;
- (int64_t)size;
@end

@implementation CKAssetStreamHandle

+ (C2RequestOptions)networkRequestOptions
{
  v2 = sub_18844F690();

  return v2;
}

+ (void)makeAssetStreamHandleFromURL:(NSURL *)l assetKey:(NSData *)key filenameExtension:(NSString *)extension completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = l;
  v11[3] = key;
  v11[4] = extension;
  v11[5] = v10;
  v11[6] = self;
  lCopy = l;
  keyCopy = key;
  extensionCopy = extension;

  sub_1884C2198(&unk_1886F70C8, v11);
}

- (CKAssetStreamHandle)initWithSerializedData:(id)data error:(id *)error
{
  dataCopy = data;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return sub_1884502C0();
}

- (id)serializedData:(id *)data
{
  selfCopy = self;
  v4 = sub_1884504DC();
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_188423CCC(v4, v6);

  return v7.super.isa;
}

- (id)makeAVPlayerItemWith:(id)with options:(id)options
{
  v7 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  if (with)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    v11 = 0;
  }

  else
  {
    v10 = type metadata accessor for URL();
    v11 = 1;
  }

  sub_1883F90F4(v9, v11, 1, v10);
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_188450654(v9, options);
  v14 = v13;

  sub_1883F9FEC(v9, &qword_1EA90D240, &qword_1886F70B0);

  return v14;
}

- (id)makeAVAssetExportSessionWith:(id)with options:(id)options presetName:(id)name
{
  v8 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  if (with)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = 1;
  }

  sub_1883F90F4(v10, v12, 1, v11);
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  selfCopy = self;
  sub_188450CD4(v10, options, v13, v15);
  v18 = v17;

  sub_1883F9FEC(v10, &qword_1EA90D240, &qword_1886F70B0);

  return v18;
}

- (int64_t)size
{
  selfCopy = self;
  sub_188451B44();
  v4 = v3;

  return v4;
}

@end