@interface BlastDoorBasicTypingIndicator
- (BlastDoorBasicTypingIndicator)init;
- (NSArray)participantDestinationIdentifiers;
- (NSString)description;
@end

@implementation BlastDoorBasicTypingIndicator

- (NSString)description
{

  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (NSArray)participantDestinationIdentifiers
{
  if (*&self->basicTypingIndicator[OBJC_IVAR___BlastDoorBasicTypingIndicator_basicTypingIndicator])
  {

    v2 = sub_2146D98E8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BlastDoorBasicTypingIndicator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end