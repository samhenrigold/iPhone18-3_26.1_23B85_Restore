@interface BlastDoorCustomAcknowledgement
- (BlastDoorBalloonPluginPayloadWrapper)payload;
- (BlastDoorCustomAcknowledgement)init;
- (NSArray)participantDestinationIdentifiers;
- (NSAttributedString)content;
- (_NSRange)associatedMessageRange;
- (int64_t)associatedMessageType;
@end

@implementation BlastDoorCustomAcknowledgement

- (int64_t)associatedMessageType
{
  if (*(&self->super.isa + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement))
  {
    return 4000;
  }

  else
  {
    return 0;
  }
}

- (_NSRange)associatedMessageRange
{
  v2 = sub_21457AF78(self, a2, &OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement);
  result.length = v3;
  result.location = v2;
  return result;
}

- (NSArray)participantDestinationIdentifiers
{
  v3 = type metadata accessor for CustomAcknowledgement(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement, v5, type metadata accessor for CustomAcknowledgement);
  if (*(v5 + 9))
  {

    sub_213FB5844(v5, type metadata accessor for CustomAcknowledgement);
    v6 = sub_2146D98E8();

    return v6;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

- (BlastDoorBalloonPluginPayloadWrapper)payload
{
  v3 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  v7 = type metadata accessor for CustomAcknowledgement(0);
  sub_213FB568C(&v6[*(v7 + 44)], v5, type metadata accessor for BalloonPlugin.Payload);
  v8 = type metadata accessor for _ObjCEnumBalloonPluginPayloadWrapper(0);
  v9 = objc_allocWithZone(v8);
  sub_213FB568C(v5, v9 + OBJC_IVAR___BlastDoorBalloonPluginPayloadWrapper_balloonPlugin_Payload, type metadata accessor for BalloonPlugin.Payload);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(BlastDoorCustomAcknowledgement *)&v12 init];
  sub_213FB5844(v5, type metadata accessor for BalloonPlugin.Payload);

  return v10;
}

- (NSAttributedString)content
{
  v2 = self + OBJC_IVAR___BlastDoorCustomAcknowledgement_customAcknowledgement;
  if (*&v2[*(type metadata accessor for CustomAcknowledgement(0) + 52)])
  {
    v3 = sub_214664BB8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorCustomAcknowledgement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end