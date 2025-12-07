@interface CLSCompressorObjC
+ (BOOL)isAppleArchiveWithFileURL:(id)l;
+ (id)compressWithDirectoryURL:(id)l destinationURL:(id)rL error:(id *)error;
+ (id)uncompressWithArchiveAt:(id)at error:(id *)error;
- (CLSCompressorObjC)init;
@end

@implementation CLSCompressorObjC

+ (id)compressWithDirectoryURL:(id)l destinationURL:(id)rL error:(id *)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v20[-v11];
  __chkstk_darwin(v10);
  v14 = &v20[-v13];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100009508(v12, v9, v14);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v12, v5);
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v15(v14, v5);

  return v18;
}

+ (id)uncompressWithArchiveAt:(id)at error:(id *)error
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v16[-v9];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000AEAC(v8, v10);
  v11 = *(v5 + 8);
  v11(v8, v4);
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v11(v10, v4);

  return v14;
}

+ (BOOL)isAppleArchiveWithFileURL:(id)l
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_10000D6C8(v6);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (CLSCompressorObjC)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CLSCompressorObjC *)&v3 init];
}

@end