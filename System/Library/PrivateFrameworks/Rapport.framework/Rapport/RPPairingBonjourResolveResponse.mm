@interface RPPairingBonjourResolveResponse
- (NSData)serverPublicKey;
- (NSUUID)bonjourServiceID;
- (_TtC7Rapport31RPPairingBonjourResolveResponse)init;
- (_TtC7Rapport31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)key bonjourServiceID:(id)d;
@end

@implementation RPPairingBonjourResolveResponse

- (NSData)serverPublicKey
{
  v2 = *(self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey);
  v3 = *(self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey + 8);
  sub_1B6F01F4C(v2, v3);
  v4 = sub_1B6F227C8();
  sub_1B6F01FA0(v2, v3);

  return v4;
}

- (NSUUID)bonjourServiceID
{
  v3 = sub_1B6F22878();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID, v3);
  v7 = sub_1B6F22858();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (_TtC7Rapport31RPPairingBonjourResolveResponse)initWithServerPublicKey:(id)key bonjourServiceID:(id)d
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6F22878();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  keyCopy = key;
  dCopy = d;
  v14 = sub_1B6F227E8();
  v16 = v15;

  sub_1B6F22868();
  v17 = (self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_serverPublicKey);
  *v17 = v14;
  v17[1] = v16;
  (*(v9 + 16))(self + OBJC_IVAR____TtC7Rapport31RPPairingBonjourResolveResponse_bonjourServiceID, v11, v8);
  v20.receiver = self;
  v20.super_class = ObjectType;
  v18 = [(RPPairingBonjourResolveResponse *)&v20 init];
  (*(v9 + 8))(v11, v8);
  return v18;
}

- (_TtC7Rapport31RPPairingBonjourResolveResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end