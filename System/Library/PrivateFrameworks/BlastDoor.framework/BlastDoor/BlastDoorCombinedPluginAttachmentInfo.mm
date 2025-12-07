@interface BlastDoorCombinedPluginAttachmentInfo
- (BlastDoorCombinedPluginAttachmentInfo)init;
- (NSData)encryptionKey;
- (NSData)signature;
- (NSString)ownerID;
@end

@implementation BlastDoorCombinedPluginAttachmentInfo

- (NSData)signature
{
  v2 = self + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo;
  v3 = &v2[*(type metadata accessor for CombinedPluginAttachmentInfo(0) + 20)];
  v4 = *v3;
  v5 = v3[1];
  sub_21402D9F8(*v3, v5);
  v6 = sub_2146D8A38();
  sub_213FB54FC(v4, v5);

  return v6;
}

- (NSString)ownerID
{
  v3 = type metadata accessor for CombinedPluginAttachmentInfo(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo, v6, type metadata accessor for CombinedPluginAttachmentInfo);
  if (*&v6[*(v4 + 32) + 24])
  {

    sub_213FB5844(v6, type metadata accessor for CombinedPluginAttachmentInfo);
    v7 = sub_2146D9588();

    return v7;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSData)encryptionKey
{
  v2 = self + OBJC_IVAR___BlastDoorCombinedPluginAttachmentInfo_combinedPluginAttachmentInfo;
  v3 = &v2[*(type metadata accessor for CombinedPluginAttachmentInfo(0) + 32)];
  v4 = *v3;
  v5 = v3[1];
  sub_21402D9F8(*v3, v5);
  v6 = sub_2146D8A38();
  sub_213FB54FC(v4, v5);

  return v6;
}

- (BlastDoorCombinedPluginAttachmentInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end