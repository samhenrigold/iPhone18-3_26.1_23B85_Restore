@interface BSBrandMessagingDetailsObjcShim
- (BSBrandMessagingDetailsObjcShim)init;
- (NSString)localizedResponseTime;
@end

@implementation BSBrandMessagingDetailsObjcShim

- (NSString)localizedResponseTime
{
  if (*&self->messagingDetails[OBJC_IVAR___BSBrandMessagingDetailsObjcShim_messagingDetails])
  {

    v2 = sub_2155DA7DC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BSBrandMessagingDetailsObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end