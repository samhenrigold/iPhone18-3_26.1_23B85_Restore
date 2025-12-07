@interface CRTextRecognizerModelChineseV3
+ (id)defaultURLOfModelInThisBundle;
- (_TtC15TextRecognition30CRTextRecognizerModelChineseV3)init;
- (_TtC15TextRecognition30CRTextRecognizerModelChineseV3)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error;
@end

@implementation CRTextRecognizerModelChineseV3

+ (id)defaultURLOfModelInThisBundle
{
  v2 = sub_1B429F658();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjCClassMetadata();
  sub_1B4131EC8();
  v6 = sub_1B429F5F8();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (_TtC15TextRecognition30CRTextRecognizerModelChineseV3)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRTextRecognizerModelChineseV3();
  return [(CRTextRecognizerModelChineseV3 *)&v3 init];
}

- (_TtC15TextRecognition30CRTextRecognizerModelChineseV3)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error
{
  v7 = sub_1B429F6D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17[-v12];
  if (owner)
  {
    sub_1B429F6B8();
    (*(v8 + 32))(v13, v10, v7);
    (*(v8 + 56))(v13, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  configurationCopy = configuration;
  v15 = sub_1B413255C(configurationCopy, v13);

  return v15;
}

@end