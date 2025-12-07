@interface Client
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)processInfo;
- (AMSURLRequestEncoder)urlRequestEncoder;
- (AMSURLSession)urlSession;
- (BOOL)canMakePayments;
- (NSString)accountMediaType;
- (NSString)currentAccountToken;
- (NSString)objc_clientDescription;
- (NSURL)callerBundleURL;
- (NSUUID)deviceVendorID;
- (_TtC22StoreKitUISceneService6Client)initWithAuditTokenData:(id)data;
- (_TtC22StoreKitUISceneService6Client)initWithBundleIdentifier:(id)identifier;
- (_TtC22StoreKitUISceneService6Client)initWithConnection:(id)connection overridesDictionary:(id)dictionary;
- (_TtC22StoreKitUISceneService6Client)initWithURL:(id)l overridesDictionary:(id)dictionary;
- (char)objc_clientType;
- (id)queryWith:(BOOL)with customReceiptURL:(id)l;
@end

@implementation Client

- (ACAccount)account
{
  selfCopy = self;
  v3 = sub_1000222C4(selfCopy);

  return v3;
}

- (NSString)accountMediaType
{
  selfCopy = self;
  v3 = sub_100022740();

  return v3;
}

- (AMSBagProtocol)bag
{
  selfCopy = self;
  v3 = sub_1000229C4();

  return v3;
}

- (NSURL)callerBundleURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022CA4(v5);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (BOOL)canMakePayments
{
  selfCopy = self;
  v3 = sub_100022D48(selfCopy);

  return v3 & 1;
}

- (NSString)currentAccountToken
{
  selfCopy = self;
  sub_100023388();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSUUID)deviceVendorID
{
  v2 = sub_100012634(&qword_1000D2800, qword_100099E20);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_100024014(&v8 - v3);
  v5 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100012898(v4, 1, v5) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return isa;
}

- (AMSProcessInfo)processInfo
{
  selfCopy = self;
  v3 = sub_10002420C(selfCopy);

  return v3;
}

- (AMSURLRequestEncoder)urlRequestEncoder
{
  selfCopy = self;
  v3 = sub_10002465C();

  return v3;
}

- (AMSURLSession)urlSession
{
  selfCopy = self;
  v3 = sub_100024738();

  return v3;
}

- (_TtC22StoreKitUISceneService6Client)initWithConnection:(id)connection overridesDictionary:(id)dictionary
{
  if (dictionary)
  {
    type metadata accessor for SKClientOverridesKey(0);
    sub_10002F140(&qword_1000D1F28, type metadata accessor for SKClientOverridesKey, &unk_10009431C);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10002490C(connection);
  return result;
}

- (_TtC22StoreKitUISceneService6Client)initWithURL:(id)l overridesDictionary:(id)dictionary
{
  v5 = type metadata accessor for URL();
  __chkstk_darwin(v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (dictionary)
  {
    type metadata accessor for SKClientOverridesKey(0);
    sub_10002F140(&qword_1000D1F28, type metadata accessor for SKClientOverridesKey, &unk_10009431C);
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1000257EC(v7);
  return result;
}

- (_TtC22StoreKitUISceneService6Client)initWithBundleIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000270FC(v3);
  return result;
}

- (_TtC22StoreKitUISceneService6Client)initWithAuditTokenData:(id)data
{
  dataCopy = data;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100027544(v4);
  return result;
}

- (id)queryWith:(BOOL)with customReceiptURL:(id)l
{
  withCopy = with;
  v7 = sub_100012634(&qword_1000D1D58, &unk_1000954C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  if (l)
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

  sub_10001267C(v9, v11, 1, v10);
  selfCopy = self;
  sub_10002AE8C(withCopy);

  sub_10002F5A8(v9, &qword_1000D1D58, &unk_1000954C0);
  type metadata accessor for SKServerKey(0);
  sub_10002F140(&qword_1000D1F38, type metadata accessor for SKServerKey, &unk_10009435C);
  v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v13.super.isa;
}

- (char)objc_clientType
{
  selfCopy = self;
  v3 = sub_10002CCF0();

  return v3;
}

- (NSString)objc_clientDescription
{
  selfCopy = self;
  sub_10002D008();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end