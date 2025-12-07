@interface RSAPSSSPKI_Bridging
+ (id)serializeWithKeyBytes:(id)bytes error:(id *)error;
- (_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging)init;
- (_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging)initWithData:(id)data error:(id *)error;
- (id)publicKeyBytes;
@end

@implementation RSAPSSSPKI_Bridging

- (_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging)initWithData:(id)data error:(id *)error
{
  v6 = sub_1C0D785FC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  v11 = sub_1C0D7832C();
  v13 = v12;

  sub_1C0CF6468(v11, v13);
  sub_1C0D785DC();
  (*(v7 + 32))(self + OBJC_IVAR____TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging_backingStruct, v9, v6);
  v14 = type metadata accessor for RSAPSSSPKI_Bridging(0);
  v18.receiver = self;
  v18.super_class = v14;
  v15 = [(RSAPSSSPKI_Bridging *)&v18 init];
  sub_1C0CF448C(v11, v13);
  return v15;
}

- (id)publicKeyBytes
{
  selfCopy = self;
  v3 = sub_1C0D785CC();
  v5 = v4;

  v6 = sub_1C0D7830C();
  sub_1C0CF448C(v3, v5);

  return v6;
}

+ (id)serializeWithKeyBytes:(id)bytes error:(id *)error
{
  bytesCopy = bytes;
  v5 = sub_1C0D7832C();
  v7 = v6;

  v8 = sub_1C0D785EC();
  v10 = v9;
  sub_1C0CF448C(v5, v7);
  v11 = sub_1C0D7830C();
  sub_1C0CF448C(v8, v10);

  return v11;
}

- (_TtC16CryptoKitPrivate19RSAPSSSPKI_Bridging)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end