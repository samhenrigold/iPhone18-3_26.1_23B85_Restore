@interface BlastDoorCrossServiceAssociationMessage
- (BlastDoorCrossServiceAssociationMessage)init;
- (BlastDoorMetadata)metadata;
- (NSUUID)replacementGUID;
@end

@implementation BlastDoorCrossServiceAssociationMessage

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage, v5, type metadata accessor for Metadata);
  v6 = type metadata accessor for _ObjCMetadataWrapper(0);
  v7 = objc_allocWithZone(v6);
  sub_213FB568C(v5, v7 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(BlastDoorCrossServiceAssociationMessage *)&v10 init];
  sub_213FB5844(v5, type metadata accessor for Metadata);

  return v8;
}

- (NSUUID)replacementGUID
{
  v3 = sub_2146D8B88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage;
  v8 = type metadata accessor for CrossServiceAssociationMessage(0);
  (*(v4 + 16))(v6, &v7[*(v8 + 20)], v3);
  v9 = sub_2146D8B38();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (BlastDoorCrossServiceAssociationMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end