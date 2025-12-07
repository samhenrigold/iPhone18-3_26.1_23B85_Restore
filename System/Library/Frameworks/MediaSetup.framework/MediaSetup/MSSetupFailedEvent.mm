@interface MSSetupFailedEvent
- (MSSetupFailedEvent)initWithErrorNamed:(id)named;
- (id)encoded;
@end

@implementation MSSetupFailedEvent

- (MSSetupFailedEvent)initWithErrorNamed:(id)named
{
  namedCopy = named;
  v8.receiver = self;
  v8.super_class = MSSetupFailedEvent;
  v5 = [(MSBaseSetupEvent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MSBaseSetupEvent *)v5 setEventName:@"com.apple.cloudmediaservices.setupfailed"];
    [(MSSetupFailedEvent *)v6 setErrorName:namedCopy];
  }

  return v6;
}

- (id)encoded
{
  v9[2] = *MEMORY[0x277D85DE8];
  serviceID = self->_serviceID;
  if (!serviceID)
  {
    serviceID = &stru_284C4B358;
  }

  v8[0] = @"service";
  v8[1] = @"errorName";
  errorName = self->_errorName;
  v9[0] = serviceID;
  v9[1] = errorName;
  v4 = MEMORY[0x277CBEAC0];
  v5 = serviceID;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

@end