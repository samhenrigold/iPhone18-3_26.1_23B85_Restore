@interface POCryptoKitAlgorithmCurve25519
- (BOOL)verifyKey:(__SecKey *)key;
- (BOOL)verifySignature:(id)signature onData:(id)data usingCertificateString:(id)string;
- (BOOL)verifySignature:(id)signature onData:(id)data usingKey:(__SecKey *)key;
- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)init;
- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)initWithSecKeyAlgorithm:(const __CFString *)algorithm algorithmName:(id)name alg:(id)alg;
- (id)signData:(id)data usingKey:(__SecKey *)key error:(id *)error;
@end

@implementation POCryptoKitAlgorithmCurve25519

- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)init
{
  ObjectType = swift_getObjectType();
  v4 = sub_25E941838();
  v5 = sub_25E941838();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(POJWTSigning *)&v8 initWithSecKeyAlgorithm:0 algorithmName:v4 alg:v5];

  return v6;
}

- (id)signData:(id)data usingKey:(__SecKey *)key error:(id *)error
{
  v7 = sub_25E9415B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  keyCopy = key;
  v13 = sub_25E941478();
  v15 = v14;

  v16 = keyCopy;
  sub_25E941598();
  v22[1] = v13;
  v22[2] = v15;
  sub_25E917954();
  v17 = sub_25E9415A8();
  v19 = v18;

  (*(v8 + 8))(v10, v7);
  sub_25E91471C(v13, v15);
  v20 = sub_25E941458();
  sub_25E91471C(v17, v19);

  return v20;
}

- (BOOL)verifySignature:(id)signature onData:(id)data usingKey:(__SecKey *)key
{
  signatureCopy = signature;
  dataCopy = data;
  keyCopy = key;
  selfCopy = self;
  v12 = sub_25E941478();
  v14 = v13;

  v15 = sub_25E941478();
  v17 = v16;

  LOBYTE(dataCopy) = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on5usingSb10Foundation4DataV_AISo9SecKeyRefatF_0(v12, v14, v15, v17, keyCopy);
  sub_25E91471C(v15, v17);
  sub_25E91471C(v12, v14);

  return dataCopy & 1;
}

- (BOOL)verifySignature:(id)signature onData:(id)data usingCertificateString:(id)string
{
  signatureCopy = signature;
  dataCopy = data;
  stringCopy = string;
  selfCopy = self;
  v12 = sub_25E941478();
  v14 = v13;

  v15 = sub_25E941478();
  v17 = v16;

  v18 = sub_25E941848();
  v20 = v19;

  LOBYTE(v18) = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C15verifySignature_2on22usingCertificateStringSb10Foundation4DataV_AISStF_0(v12, v14, v15, v17, v18, v20);

  sub_25E91471C(v15, v17);
  sub_25E91471C(v12, v14);

  return v18 & 1;
}

- (BOOL)verifyKey:(__SecKey *)key
{
  keyCopy = key;
  selfCopy = self;
  v6 = _s15PlatformSSOCore30POCryptoKitAlgorithmCurve25519C9verifyKeyySbSo03SecH3RefaF_0(keyCopy);

  return v6 & 1;
}

- (_TtC15PlatformSSOCore30POCryptoKitAlgorithmCurve25519)initWithSecKeyAlgorithm:(const __CFString *)algorithm algorithmName:(id)name alg:(id)alg
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end