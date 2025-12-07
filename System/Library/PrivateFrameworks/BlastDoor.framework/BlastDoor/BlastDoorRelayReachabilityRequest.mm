@interface BlastDoorRelayReachabilityRequest
- (BlastDoorRelayReachabilityContext)context;
- (BlastDoorRelayReachabilityRequest)init;
- (NSArray)handles;
@end

@implementation BlastDoorRelayReachabilityRequest

- (NSArray)handles
{
  v3 = type metadata accessor for RelayReachabilityRequest(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest, v5, type metadata accessor for RelayReachabilityRequest);
  if (*(v5 + 2))
  {

    sub_213FB5844(v5, type metadata accessor for RelayReachabilityRequest);
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

- (BlastDoorRelayReachabilityContext)context
{
  v3 = type metadata accessor for RelayReachabilityContext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = self + OBJC_IVAR___BlastDoorRelayReachabilityRequest_relayReachabilityRequest;
  v7 = type metadata accessor for RelayReachabilityRequest(0);
  sub_213FB568C(&v6[*(v7 + 24)], v5, type metadata accessor for RelayReachabilityContext);
  v8 = type metadata accessor for _ObjCRelayReachabilityContextWrapper(0);
  v9 = objc_allocWithZone(v8);
  sub_213FB568C(v5, v9 + OBJC_IVAR___BlastDoorRelayReachabilityContext_relayReachabilityContext, type metadata accessor for RelayReachabilityContext);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(BlastDoorRelayReachabilityRequest *)&v12 init];
  sub_213FB5844(v5, type metadata accessor for RelayReachabilityContext);

  return v10;
}

- (BlastDoorRelayReachabilityRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end