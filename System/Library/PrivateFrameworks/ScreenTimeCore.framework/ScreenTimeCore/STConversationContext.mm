@interface STConversationContext
- (STConversationContext)init;
- (void)updateForThirdPartyApplicationState:(int64_t)state;
- (void)updateShouldBeAllowedDuringGeneralScreenTime:(BOOL)time shouldBeAllowedByScreenTimeWhenLimited:(BOOL)limited currentApplicationState:(unint64_t)state emergencyModeEnabled:(BOOL)enabled;
@end

@implementation STConversationContext

- (STConversationContext)init
{
  v3.receiver = self;
  v3.super_class = STConversationContext;
  result = [(STConversationContext *)&v3 init];
  if (result)
  {
    result->_allowedByScreenTime = 1;
    *&result->_shouldBeAllowedByScreenTimeWhenLimited = 257;
  }

  return result;
}

- (void)updateShouldBeAllowedDuringGeneralScreenTime:(BOOL)time shouldBeAllowedByScreenTimeWhenLimited:(BOOL)limited currentApplicationState:(unint64_t)state emergencyModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  limitedCopy = limited;
  timeCopy = time;
  if ([(STConversationContext *)self shouldBeAllowedDuringGeneralScreenTime]!= time)
  {
    [(STConversationContext *)self setShouldBeAllowedDuringGeneralScreenTime:timeCopy];
  }

  if ([(STConversationContext *)self shouldBeAllowedByScreenTimeWhenLimited]!= limitedCopy)
  {
    [(STConversationContext *)self setShouldBeAllowedByScreenTimeWhenLimited:limitedCopy];
  }

  if ([(STConversationContext *)self currentApplicationState]!= state)
  {
    [(STConversationContext *)self setCurrentApplicationState:state];
  }

  if ([(STConversationContext *)self emergencyModeEnabled]!= enabledCopy)
  {
    [(STConversationContext *)self setEmergencyModeEnabled:enabledCopy];
  }

  if ((state == 1) != [(STConversationContext *)self applicationCurrentlyLimited])
  {
    [(STConversationContext *)self setApplicationCurrentlyLimited:state == 1];
  }

  if (!enabledCopy)
  {
    if (!state)
    {
      goto LABEL_17;
    }

    if (state == 2)
    {
      if (![(STConversationContext *)self allowedByScreenTime])
      {
        return;
      }

      timeCopy = 0;
      goto LABEL_21;
    }

    timeCopy = limitedCopy;
    if (state == 1)
    {
LABEL_17:
      if (timeCopy == [(STConversationContext *)self allowedByScreenTime])
      {
        return;
      }

      goto LABEL_21;
    }
  }

  if ([(STConversationContext *)self allowedByScreenTime])
  {
    return;
  }

  timeCopy = 1;
LABEL_21:

  [(STConversationContext *)self setAllowedByScreenTime:timeCopy];
}

- (void)updateForThirdPartyApplicationState:(int64_t)state
{
  if ((state == 0) != [(STConversationContext *)self allowedByScreenTime])
  {

    [(STConversationContext *)self setAllowedByScreenTime:state == 0];
  }
}

@end