@interface BlastDoorCombinedPluginAttachment
- (BlastDoorBalloonPluginPayloadWrapper)payload;
- (BlastDoorCombinedPluginAttachment)init;
- (BlastDoorEncodedAttachments)attachments;
@end

@implementation BlastDoorCombinedPluginAttachment

- (BlastDoorEncodedAttachments)attachments
{
  v2 = *(&self->super.isa + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment);
  v3 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v2;
  v7.receiver = v4;
  v7.super_class = v3;

  v5 = [(BlastDoorCombinedPluginAttachment *)&v7 init];

  return v5;
}

- (BlastDoorBalloonPluginPayloadWrapper)payload
{
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self + OBJC_IVAR___BlastDoorCombinedPluginAttachment_combinedPluginAttachment;
  v7 = type metadata accessor for CombinedPluginAttachment(0);
  sub_213FB568C(&v6[*(v7 + 20)], v5, type metadata accessor for BalloonPlugin.Payload);
  v8 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v9 = objc_allocWithZone(v8);
  sub_213FB568C(v5, v9 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(BlastDoorCombinedPluginAttachment *)&v12 init];
  sub_213FB5844(v5, type metadata accessor for BalloonPlugin.Payload);

  return v10;
}

- (BlastDoorCombinedPluginAttachment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end