@interface TetraRegistration
- (NSData)registrationData;
- (NSData)serializedECDHPublicKey;
- (NSData)signature;
- (_TtC17MessageProtection17TetraRegistration)init;
- (_TtC17MessageProtection17TetraRegistration)initWithKyberPublicKey:(id)key ecdhPublicKey:(id)publicKey timestamp:(double)timestamp version:(unsigned int)version signedBy:(id)by;
@end

@implementation TetraRegistration

- (NSData)serializedECDHPublicKey
{
  selfCopy = self;
  result = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  if (v4 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = v4;
    v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v5, v6);

    return v7.super.isa;
  }

  return result;
}

- (NSData)signature
{
  v2 = *(self + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature);
  v3 = *(self + OBJC_IVAR____TtC17MessageProtection17TetraRegistration_signature + 8);
  outlined copy of Data._Representation(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v3);

  return v4.super.isa;
}

- (_TtC17MessageProtection17TetraRegistration)initWithKyberPublicKey:(id)key ecdhPublicKey:(id)publicKey timestamp:(double)timestamp version:(unsigned int)version signedBy:(id)by
{
  v8 = *&version;
  keyCopy = key;
  publicKeyCopy = publicKey;
  byCopy = by;
  v14 = specialized TetraRegistration.init(kyberPublicKey:ecdhPublicKey:timestamp:version:signedBy:)(keyCopy, publicKeyCopy, v8, byCopy, timestamp);

  return v14;
}

- (NSData)registrationData
{
  selfCopy = self;
  v4 = TetraRegistration.registrationData.getter(selfCopy, v3);
  v6 = v5;

  v7.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v4, v6);

  return v7.super.isa;
}

- (_TtC17MessageProtection17TetraRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end