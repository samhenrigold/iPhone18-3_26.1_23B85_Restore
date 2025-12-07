@interface BlastDoorNicknameInformationMessage
- (BlastDoorMetadata)metadata;
- (BlastDoorNicknameInformation)nicknameInformation;
- (BlastDoorNicknameInformationMessage)init;
@end

@implementation BlastDoorNicknameInformationMessage

- (BlastDoorNicknameInformation)nicknameInformation
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage, 0x109uLL);
  v2 = type metadata accessor for _ObjCNicknameInformationWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorNicknameInformation_nicknameInformation], __dst, 0x109uLL);
  sub_2142FB7A4(__dst, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(BlastDoorNicknameInformationMessage *)&v6 init];

  return v4;
}

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self + OBJC_IVAR___BlastDoorNicknameInformationMessage_nicknameInformationMessage;
  v7 = type metadata accessor for NicknameInformationMessage(0);
  sub_213FB568C(&v6[*(v7 + 20)], v5, type metadata accessor for Metadata);
  v8 = type metadata accessor for _ObjCMetadataWrapper(0);
  v9 = objc_allocWithZone(v8);
  sub_213FB568C(v5, v9 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(BlastDoorNicknameInformationMessage *)&v12 init];
  sub_213FB5844(v5, type metadata accessor for Metadata);

  return v10;
}

- (BlastDoorNicknameInformationMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end