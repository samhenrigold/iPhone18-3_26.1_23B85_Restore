@interface LocalizationJetPack
+ (id)loadWithUrl:(id)url client:(id)client;
- (id)stringForKey:(id)key;
@end

@implementation LocalizationJetPack

+ (id)loadWithUrl:(id)url client:(id)client
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  clientCopy = client;
  v10 = sub_10017CC28(v8, clientCopy);

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)stringForKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10017E694(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end