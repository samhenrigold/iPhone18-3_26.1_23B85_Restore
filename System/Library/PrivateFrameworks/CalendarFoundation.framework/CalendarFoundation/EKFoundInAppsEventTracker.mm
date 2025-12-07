@interface EKFoundInAppsEventTracker
+ (void)trackPseudoEventsExpired:(int)expired;
@end

@implementation EKFoundInAppsEventTracker

+ (void)trackPseudoEventsExpired:(int)expired
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (expired >= 1)
  {
    v5 = @"count";
    v3 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

    CalAnalyticsSendEvent(@"CalendarEventFoundInApps.eventsExpired", v4);
  }
}

@end