@interface RPPairingBonjourResolveResponse
- (NSData)serverPublicKey;
- (NSUUID)bonjourServiceID;
- (_TtC8rapportd31RPPairingBonjourResolveResponse)init;
- (_TtC8rapportd31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)key bonjourServiceID:(id)d;
@end

@implementation RPPairingBonjourResolveResponse

- (NSData)serverPublicKey
{
  v2 = *(self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey);
  v3 = *(self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  sub_1000C61D4(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000C4AA4(v2, v3);

  return v4.super.isa;
}

- (NSUUID)bonjourServiceID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (_TtC8rapportd31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)key bonjourServiceID:(id)d
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  keyCopy = key;
  dCopy = d;
  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = (self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_serverPublicKey);
  *v17 = v14;
  v17[1] = v16;
  (*(v9 + 16))(self + OBJC_IVAR____TtC8rapportd31RPPairingBonjourResolveResponse_bonjourServiceID, v11, v8);
  v20.receiver = self;
  v20.super_class = ObjectType;
  v18 = [(RPPairingBonjourResolveResponse *)&v20 init];
  (*(v9 + 8))(v11, v8);
  return v18;
}

- (_TtC8rapportd31RPPairingBonjourResolveResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end