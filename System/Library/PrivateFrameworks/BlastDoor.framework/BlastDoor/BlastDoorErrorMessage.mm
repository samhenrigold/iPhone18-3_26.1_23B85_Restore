@interface BlastDoorErrorMessage
- (BlastDoorErrorMessage)init;
- (BlastDoorMetadata)metadata;
- (unsigned)type;
@end

@implementation BlastDoorErrorMessage

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorErrorMessage_errorMessage, v5, type metadata accessor for Metadata);
  v6 = type metadata accessor for _ObjCMetadataWrapper(0);
  v7 = objc_allocWithZone(v6);
  sub_213FB568C(v5, v7 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(BlastDoorErrorMessage *)&v10 init];
  sub_213FB5844(v5, type metadata accessor for Metadata);

  return v8;
}

- (unsigned)type
{
  v2 = self + OBJC_IVAR___BlastDoorErrorMessage_errorMessage;
  v3 = type metadata accessor for ErrorMessage(0);
  v4 = sub_214592208(word_2147604C8[v2[*(v3 + 20)]]);
  if ((v4 & 0x10000) != 0)
  {
    __break(1u);
  }

  return v4;
}

- (BlastDoorErrorMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end