@interface Kyber1024ObjCPublicKey
- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)init;
- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)initWithPublicKeyBytes:(id)bytes error:(id *)error;
- (id)dataRepresentation;
@end

@implementation Kyber1024ObjCPublicKey

- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)initWithPublicKeyBytes:(id)bytes error:(id *)error
{
  v6 = type metadata accessor for Kyber1024.PublicKey();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bytesCopy = bytes;
  v17 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSo6NSDataC_Tt0g5(bytesCopy);
  v18 = v11;
  Kyber1024.PublicKey.init<A>(dataRepresentation:)();
  (*(v7 + 32))(self + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v9, v6);
  v12 = type metadata accessor for Kyber1024ObjCPublicKey(0);
  v16.receiver = self;
  v16.super_class = v12;
  v13 = [(Kyber1024ObjCPublicKey *)&v16 init];

  return v13;
}

- (id)dataRepresentation
{
  v3 = type metadata accessor for Kyber1024.PublicKey();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC17MessageProtection22Kyber1024ObjCPublicKey_pubKey, v3);
  selfCopy = self;
  v8 = Kyber1024.PublicKey.dataRepresentation.getter();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;

  outlined consume of Data._Representation(v8, v10);

  return v11.super.isa;
}

- (_TtC17MessageProtection22Kyber1024ObjCPublicKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end