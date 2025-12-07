@interface BlastDoorMetadata
- (BlastDoorMetadata)init;
- (BlastDoorMetadata_StorageContext)storageContext;
- (NSUUID)messageGUID;
- (unint64_t)timestamp;
@end

@implementation BlastDoorMetadata

- (NSUUID)messageGUID
{
  v3 = type metadata accessor for Metadata(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorMetadata_metadata, v5, type metadata accessor for Metadata);
  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_2146D8B38();
  (*(v7 + 8))(v9, v6);

  return v10;
}

- (unint64_t)timestamp
{
  v2 = self + OBJC_IVAR___BlastDoorMetadata_metadata;
  v3 = &v2[*(type metadata accessor for Metadata(0) + 20)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (BlastDoorMetadata_StorageContext)storageContext
{
  v2 = self + OBJC_IVAR___BlastDoorMetadata_metadata;
  v3 = &v2[*(type metadata accessor for Metadata(0) + 32)];
  v4 = *v3;
  v5 = v3[1];
  v6 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v8 = v4;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = [(BlastDoorMetadata *)&v11 init];

  return v9;
}

- (BlastDoorMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end