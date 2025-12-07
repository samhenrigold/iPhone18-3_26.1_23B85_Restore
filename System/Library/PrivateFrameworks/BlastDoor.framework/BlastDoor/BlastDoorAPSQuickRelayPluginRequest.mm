@interface BlastDoorAPSQuickRelayPluginRequest
- (BlastDoorAPSQuickRelayPluginRequest)init;
- (NSString)description;
- (int64_t)pluginStream;
@end

@implementation BlastDoorAPSQuickRelayPluginRequest

- (NSString)description
{

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (int64_t)pluginStream
{
  if (self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 32])
  {
    return 0;
  }

  else
  {
    return *&self->aPSQuickRelayPluginRequest[OBJC_IVAR___BlastDoorAPSQuickRelayPluginRequest_aPSQuickRelayPluginRequest + 24];
  }
}

- (BlastDoorAPSQuickRelayPluginRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end