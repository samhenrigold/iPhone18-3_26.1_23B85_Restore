@interface BlastDoorRelayReachabilityContext
- (BlastDoorRelayReachabilityContext)init;
- (NSString)senderLastAddressedHandle;
- (NSString)serviceOfLastMessage;
- (NSUUID)senderLastAddressedSIMID;
- (int64_t)chatStyle;
@end

@implementation BlastDoorRelayReachabilityContext

- (int64_t)chatStyle
{
  result = self->relayReachabilityContext[OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext + 25];
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

- (NSString)senderLastAddressedHandle
{
  v3 = type metadata accessor for RelayReachabilityContext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, v5, type metadata accessor for RelayReachabilityContext);
  v6 = *(v5 + 8);
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v5 + 7);

    sub_213FB5844(v5, type metadata accessor for RelayReachabilityContext);
    if (v6)
    {
      v8 = sub_2146D9588();
      sub_213FDC6D0(v7, v6);
    }

    else
    {
      v8 = 0;
    }

    return v8;
  }

  return result;
}

- (NSUUID)senderLastAddressedSIMID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = self + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext;
  v7 = type metadata accessor for RelayReachabilityContext(0);
  sub_213FB2E54(&v6[*(v7 + 28)], v5, &unk_27C904F30, &unk_2146EFA20);
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v5, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_2146D8B38();
    (*(v9 + 8))(v5, v8);
    v11 = v12;
  }

  return v11;
}

- (NSString)serviceOfLastMessage
{
  v2 = self + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext;
  if (*&v2[*(type metadata accessor for RelayReachabilityContext(0) + 36) + 8])
  {

    v3 = sub_2146D9588();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BlastDoorRelayReachabilityContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end