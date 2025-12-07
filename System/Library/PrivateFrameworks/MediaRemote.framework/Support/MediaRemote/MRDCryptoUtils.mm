@interface MRDCryptoUtils
+ (id)signature:(id)signature isValidFor:(id)for withPublicKey:(id)key error:(id *)error;
+ (id)signatureForData:(id)data withPrivateKey:(id)key error:(id *)error;
- (MRDCryptoUtils)init;
@end

@implementation MRDCryptoUtils

+ (id)signatureForData:(id)data withPrivateKey:(id)key error:(id *)error
{
  v7 = type metadata accessor for Curve25519.Signing.PrivateKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  keyCopy = key;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v25 = v16;
  v26 = v18;
  sub_1001C3FE0(v16, v18);
  Curve25519.Signing.PrivateKey.init<A>(rawRepresentation:)();
  v25 = v13;
  v26 = v15;
  sub_1001D9A44();
  v19 = Curve25519.Signing.PrivateKey.signature<A>(for:)();
  v21 = v20;
  sub_1001C4034(v16, v18);
  (*(v8 + 8))(v10, v7);
  sub_1001C4034(v13, v15);
  v22.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v19, v21);

  return v22.super.isa;
}

+ (id)signature:(id)signature isValidFor:(id)for withPublicKey:(id)key error:(id *)error
{
  signatureCopy = signature;
  forCopy = for;
  keyCopy = key;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = sub_1001D9A98(v11, v13, v14, v16, v17, v19);
  sub_1001C4034(v17, v19);
  sub_1001C4034(v14, v16);
  sub_1001C4034(v11, v13);

  return v20;
}

- (MRDCryptoUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CryptoUtils();
  return [(MRDCryptoUtils *)&v3 init];
}

@end