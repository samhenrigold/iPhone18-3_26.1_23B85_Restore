@interface BlastDoorSatelliteSMSTextMessage
- (BlastDoorSatelliteSMSTextMessage)init;
- (NSArray)plainTextBodies;
- (NSString)description;
@end

@implementation BlastDoorSatelliteSMSTextMessage

- (NSString)description
{

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSArray)plainTextBodies
{
  if (*(&self->super.isa + OBJC_IVAR___BlastDoorSatelliteSMSTextMessage_satelliteSMSTextMessage))
  {

    v2 = sub_2146D98E8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BlastDoorSatelliteSMSTextMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end