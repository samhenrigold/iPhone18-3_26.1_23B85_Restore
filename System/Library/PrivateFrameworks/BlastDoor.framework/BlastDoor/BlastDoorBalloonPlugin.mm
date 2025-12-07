@interface BlastDoorBalloonPlugin
- (BOOL)has_associatedMessageType;
- (BlastDoorBalloonPlugin)init;
- (BlastDoorBalloonPluginPayloadWrapper)payload;
- (BlastDoorEncodedAttachments)attachments;
- (NSArray)participantDestinationIdentifiers;
- (NSAttributedString)content;
- (NSString)associatedMessageGUID;
- (NSString)bundleID;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorBalloonPlugin

- (BlastDoorBalloonPluginPayloadWrapper)payload
{
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v5, type metadata accessor for BalloonPlugin.Payload);
  v6 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v7 = objc_allocWithZone(v6);
  sub_213FB568C(v5, v7 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = [(BlastDoorBalloonPlugin *)&v10 init];
  sub_213FB5844(v5, type metadata accessor for BalloonPlugin.Payload);

  return v8;
}

- (NSString)bundleID
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v6, type metadata accessor for BalloonPlugin);
  if (*&v6[*(v4 + 28) + 24])
  {

    sub_213FB5844(v6, type metadata accessor for BalloonPlugin);
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

- (NSAttributedString)content
{
  v2 = self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  if (*&v2[*(type metadata accessor for BalloonPlugin(0) + 36)])
  {
    v3 = sub_214664BB8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)participantDestinationIdentifiers
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v6, type metadata accessor for BalloonPlugin);
  if (*&v6[*(v4 + 48) + 16])
  {

    sub_213FB5844(v6, type metadata accessor for BalloonPlugin);
    v7 = sub_2146D98E8();

    return v7;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (NSString)associatedMessageGUID
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v6, type metadata accessor for BalloonPlugin);
  v7 = &v6[*(v4 + 52)];
  v8 = *(v7 + 3);
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v9 = *(v7 + 2);

    sub_213FB5844(v6, type metadata accessor for BalloonPlugin);
    if (v8)
    {
      v10 = sub_2146D9588();
      sub_213FDC6D0(v9, v8);
    }

    else
    {
      v10 = 0;
    }

    return v10;
  }

  return result;
}

- (_NSRange)associatedMessageRange
{
  selfCopy = self;
  v3 = sub_214553214();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)has_associatedMessageType
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v6, type metadata accessor for BalloonPlugin);
  v7 = &v6[*(v4 + 60)];
  if (v7[25])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v8 = v7[24];
    selfCopy = self;
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin);

    return (v8 & 1) == 0;
  }

  return result;
}

- (int64_t)associatedMessageType
{
  v3 = type metadata accessor for BalloonPlugin(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin, v6, type metadata accessor for BalloonPlugin);
  v7 = &v6[*(v4 + 60)];
  if (v7[25])
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v8 = v7[24];
    v9 = *(v7 + 2);
    sub_213FB5844(v6, type metadata accessor for BalloonPlugin);
    if (v8)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

- (BlastDoorEncodedAttachments)attachments
{
  v2 = self + OBJC_IVAR___BlastDoorBalloonPlugin_balloonPlugin;
  v3 = *&v2[*(type metadata accessor for BalloonPlugin(0) + 56)];
  v4 = type metadata accessor for _ObjCEncodedAttachmentsWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___BlastDoorEncodedAttachments_encodedAttachments] = v3;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = [(BlastDoorBalloonPlugin *)&v8 init];

  return v6;
}

- (BlastDoorBalloonPlugin)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end