@interface Kyber1024ObjCPrivateKey
- (NSData)protobufData;
- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)publicKey;
- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)init;
- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)initWithProtoBufData:(id)data error:(id *)error;
@end

@implementation Kyber1024ObjCPrivateKey

- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)publicKey
{
  v3 = type metadata accessor for Kyber1024.PublicKey();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TetraKEM1024Key(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TetraKEM1024Key(self + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey, v9);
  selfCopy = self;
  TetraKEM1024Key.publicKey.getter(v6);
  outlined destroy of TetraKEM1024Key(v9);
  v11 = type metadata accessor for Kyber1024ObjCPublicKey(0);
  v12 = objc_allocWithZone(v11);
  (*(v4 + 16))(v12 + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v6, v3);
  v15.receiver = v12;
  v15.super_class = v11;
  v13 = [(Kyber1024ObjCPrivateKey *)&v15 init];

  (*(v4 + 8))(v6, v3);

  return v13;
}

- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)init
{
  v3 = type metadata accessor for TetraKEM1024Key(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TetraKEM1024Key.init()(v5);
  outlined init with take of SecureEnclave.Kyber1024.PrivateKey(v5, self + OBJC_IVAR____TtC17MessageProtection23Kyber1024ObjCPrivateKey_privKey, type metadata accessor for TetraKEM1024Key);
  v6 = type metadata accessor for Kyber1024ObjCPrivateKey(0);
  v9.receiver = self;
  v9.super_class = v6;
  return [(Kyber1024ObjCPrivateKey *)&v9 init];
}

- (_TtC17MessageProtection23Kyber1024ObjCPrivateKey)initWithProtoBufData:(id)data error:(id *)error
{
  dataCopy = data;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  return Kyber1024ObjCPrivateKey.init(protoBufData:)(v5, v7);
}

- (NSData)protobufData
{
  selfCopy = self;
  v3 = Kyber1024ObjCPrivateKey.protobufData.getter();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v3, v5);

  return v6.super.isa;
}

@end