@interface CIDCSessionCryptarch
- (BOOL)deriveSessionKeysFromSessionTranscript:(id)transcript error:(id *)error;
- (BOOL)deriveSessionKeysFromSessionTranscript:(id)transcript intermediateKeyMaterial:(id)material error:(id *)error;
- (BOOL)setRemoteKey:(id)key error:(id *)error;
- (CIDCSessionCryptarch)init;
- (CIDCSessionCryptarch)initWithRole:(unint64_t)role curve:(unint64_t)curve variant:(unint64_t)variant localKey:(id)key error:(id *)error;
- (NSData)privateKey;
- (NSData)publicKey;
- (unint64_t)curve;
- (unint64_t)role;
- (unint64_t)variant;
@end

@implementation CIDCSessionCryptarch

- (CIDCSessionCryptarch)initWithRole:(unint64_t)role curve:(unint64_t)curve variant:(unint64_t)variant localKey:(id)key error:(id *)error
{
  keyCopy = key;
  v11 = sub_245681B1C();
  v13 = v12;

  return CIDCSessionCryptarch.init(role:curve:variant:localKey:)(role, curve, variant, v11, v13);
}

- (BOOL)setRemoteKey:(id)key error:(id *)error
{
  keyCopy = key;
  selfCopy = self;
  v7 = sub_245681B1C();
  v9 = v8;

  sub_245681C5C();
  sub_24567E548(v7, v9);
  return 1;
}

- (BOOL)deriveSessionKeysFromSessionTranscript:(id)transcript error:(id *)error
{
  transcriptCopy = transcript;
  selfCopy = self;
  v7 = sub_245681B1C();
  v9 = v8;

  sub_245681C2C();
  sub_24567E548(v7, v9);
  return 1;
}

- (BOOL)deriveSessionKeysFromSessionTranscript:(id)transcript intermediateKeyMaterial:(id)material error:(id *)error
{
  transcriptCopy = transcript;
  materialCopy = material;
  selfCopy = self;
  v10 = sub_245681B1C();
  v12 = v11;

  v13 = sub_245681B1C();
  v15 = v14;

  sub_245681C2C();
  sub_24567E548(v13, v15);
  sub_24567E548(v10, v12);
  return 1;
}

- (unint64_t)curve
{
  selfCopy = self;
  v3 = CIDCSessionCryptarch.curve.getter();

  return v3;
}

- (unint64_t)role
{
  v3 = sub_245681C6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  selfCopy = self;
  sub_245681C9C();
  (*(v4 + 16))(v7, v9, v3);
  v11 = (*(v4 + 88))(v7, v3);
  v12 = 0;
  if (v11 == *MEMORY[0x277CFF4C8])
  {
    goto LABEL_4;
  }

  if (v11 == *MEMORY[0x277CFF4C0])
  {
    v12 = 1;
LABEL_4:

    (*(v4 + 8))(v9, v3);
    return v12;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

- (unint64_t)variant
{
  selfCopy = self;
  v3 = CIDCSessionCryptarch.variant.getter();

  return v3;
}

- (NSData)privateKey
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209B8, &qword_245682C98);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  selfCopy = self;
  sub_245681CEC();
  v7 = sub_245681C4C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {

    sub_24567F348(v5, &qword_27EE209B8, &qword_245682C98);
    v9 = 0;
  }

  else
  {
    v10 = sub_245681C3C();
    v12 = v11;

    (*(v8 + 8))(v5, v7);
    v13 = sub_245681B0C();
    sub_24567E548(v10, v12);
    v9 = v13;
  }

  return v9;
}

- (NSData)publicKey
{
  selfCopy = self;
  v3 = sub_245681CFC();
  v5 = v4;

  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = sub_245681B0C();
    sub_245681A34(v3, v5);
    v6 = v7;
  }

  return v6;
}

- (CIDCSessionCryptarch)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end