@interface PolicyRedactionCrypter
- (_TtC18TrustedPeersHelper22PolicyRedactionCrypter)init;
- (id)decryptData:(id)data withKey:(id)key error:(id *)error;
- (id)encryptData:(id)data withKey:(id)key error:(id *)error;
@end

@implementation PolicyRedactionCrypter

- (id)decryptData:(id)data withKey:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  selfCopy = self;
  v10 = sub_100216224();
  v12 = v11;

  v13 = sub_1000146BC(dataCopy, v10, v12);
  v15 = v14;

  sub_100002BF0(v10, v12, v16, v17, v18, v19, v20, v21);
  v22.super.isa = sub_100216204().super.isa;
  sub_100002BF0(v13, v15, v23, v24, v25, v26, v27, v28);

  return v22.super.isa;
}

- (id)encryptData:(id)data withKey:(id)key error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  selfCopy = self;
  v10 = sub_100216224();
  v12 = v11;

  v13 = sub_100216224();
  v15 = v14;

  v16 = sub_1000149F0(v10, v12, v13, v15);
  sub_100002BF0(v13, v15, v17, v18, v19, v20, v21, v22);
  sub_100002BF0(v10, v12, v23, v24, v25, v26, v27, v28);

  return v16;
}

- (_TtC18TrustedPeersHelper22PolicyRedactionCrypter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PolicyRedactionCrypter();
  return [(PolicyRedactionCrypter *)&v3 init];
}

@end