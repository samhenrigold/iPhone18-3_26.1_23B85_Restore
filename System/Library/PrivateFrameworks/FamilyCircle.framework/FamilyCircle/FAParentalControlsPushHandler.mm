@interface FAParentalControlsPushHandler
- (BOOL)shouldProcess:(id)process;
- (FAParentalControlsPushHandler)init;
- (void)process:(id)process;
@end

@implementation FAParentalControlsPushHandler

- (FAParentalControlsPushHandler)init
{
  *(&self->super.isa + OBJC_IVAR___FAParentalControlsPushHandler_parentalControlsOperation) = [objc_allocWithZone(type metadata accessor for FAParentalControlsOperation(0 a2))];
  v3 = [objc_allocWithZone(FAAgeRangeController) init];
  *(&self->super.isa + OBJC_IVAR___FAParentalControlsPushHandler_ageRangeController) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ParentalControlsPushHandler(v3, v4);
  return [(FAParentalControlsPushHandler *)&v6 init];
}

- (BOOL)shouldProcess:(id)process
{
  if (process)
  {
    processCopy = process;
    event = [processCopy event];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if (v5 == 0xD000000000000016 && 0x8000000100089260 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    LOBYTE(self) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)process:(id)process
{
  processCopy = process;
  selfCopy = self;
  ParentalControlsPushHandler.process(_:)(process);
}

@end