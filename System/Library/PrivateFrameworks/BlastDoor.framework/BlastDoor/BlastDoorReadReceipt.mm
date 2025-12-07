@interface BlastDoorReadReceipt
- (BlastDoorMetadata)metadata;
- (BlastDoorReadReceipt)init;
@end

@implementation BlastDoorReadReceipt

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorReadReceipt_readReceipt, v5, type metadata accessor for Metadata);
  v6 = type metadata accessor for _ObjCMetadataWrapper(0);
  v7 = objc_allocWithZone(v6);
  sub_213FB568C(v5, v7 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(BlastDoorReadReceipt *)&v10 init];
  sub_213FB5844(v5, type metadata accessor for Metadata);

  return v8;
}

- (BlastDoorReadReceipt)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end