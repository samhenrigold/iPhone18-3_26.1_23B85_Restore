@interface MSSetupEarlyExitEvent
- (MSSetupEarlyExitEvent)initWithExitReason:(id)reason didEncounterError:(BOOL)error;
- (id)encoded;
@end

@implementation MSSetupEarlyExitEvent

- (MSSetupEarlyExitEvent)initWithExitReason:(id)reason didEncounterError:(BOOL)error
{
  errorCopy = error;
  reasonCopy = reason;
  v10.receiver = self;
  v10.super_class = MSSetupEarlyExitEvent;
  v7 = [(MSBaseSetupEvent *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(MSBaseSetupEvent *)v7 setEventName:@"com.apple.cloudmediaservices.setupearlyexit"];
    [(MSSetupEarlyExitEvent *)v8 setExitReason:reasonCopy];
    [(MSSetupEarlyExitEvent *)v8 setDidEncounterError:errorCopy];
  }

  return v8;
}

- (id)encoded
{
  v11[3] = *MEMORY[0x277D85DE8];
  serviceID = self->_serviceID;
  if (!serviceID)
  {
    serviceID = &stru_284C4B358;
  }

  exitReason = self->_exitReason;
  v10[0] = @"service";
  v10[1] = @"exitReason";
  v11[0] = serviceID;
  v11[1] = exitReason;
  v10[2] = @"didEncounterError";
  v4 = MEMORY[0x277CCABB0];
  didEncounterError = self->_didEncounterError;
  v6 = serviceID;
  v7 = [v4 numberWithBool:didEncounterError];
  v11[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

@end