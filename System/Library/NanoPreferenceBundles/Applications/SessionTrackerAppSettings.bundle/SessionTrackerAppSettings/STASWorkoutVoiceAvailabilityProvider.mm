@interface STASWorkoutVoiceAvailabilityProvider
- (BOOL)isFeatureSupported;
- (STASWorkoutVoiceAvailabilityProvider)init;
- (STASWorkoutVoiceAvailabilityProvider)initWithConnection:(id)connection;
@end

@implementation STASWorkoutVoiceAvailabilityProvider

- (STASWorkoutVoiceAvailabilityProvider)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_19080(connectionCopy);

  return v4;
}

- (BOOL)isFeatureSupported
{
  selfCopy = self;
  v3 = sub_22334();

  return v3 & 1;
}

- (STASWorkoutVoiceAvailabilityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end