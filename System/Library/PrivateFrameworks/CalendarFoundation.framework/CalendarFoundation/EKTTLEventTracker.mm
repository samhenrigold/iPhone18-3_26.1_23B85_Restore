@interface EKTTLEventTracker
+ (id)_valueForAlertType:(unint64_t)type;
+ (id)_valueForETAType:(unint64_t)type;
+ (id)_valueForTransportType:(unint64_t)type;
+ (id)_valueForTravelState:(unint64_t)state;
+ (void)trackDirectionsEngagedForTTLAlertWithTransportType:(unint64_t)type etaType:(unint64_t)etaType hasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar;
+ (void)trackEmailEngagedForTTLAlertWithTransportType:(unint64_t)type etaType:(unint64_t)etaType hasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar;
+ (void)trackEventFiredTTLAlertWithAlertType:(unint64_t)type transportType:(unint64_t)transportType etaType:(unint64_t)etaType travelState:(unint64_t)state hasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar;
+ (void)trackTTLCandidateEventHasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar;
@end

@implementation EKTTLEventTracker

+ (void)trackTTLCandidateEventHasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar
{
  calendarCopy = calendar;
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"hasSuggestedLocation";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:location];
  v8[1] = @"isOnSharedCalendar";
  v9[0] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:calendarCopy];
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  CalAnalyticsSendEvent(@"CalendarEventTTL.ttlCandidateEvent", v7);
}

+ (void)trackEventFiredTTLAlertWithAlertType:(unint64_t)type transportType:(unint64_t)transportType etaType:(unint64_t)etaType travelState:(unint64_t)state hasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar
{
  calendarCopy = calendar;
  locationCopy = location;
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"alertType";
  v14 = [self _valueForAlertType:type];
  v22[0] = v14;
  v21[1] = @"transportType";
  v15 = [self _valueForTransportType:transportType];
  v22[1] = v15;
  v21[2] = @"etaType";
  v16 = [self _valueForETAType:etaType];
  v22[2] = v16;
  v21[3] = @"travelState";
  v17 = [self _valueForTravelState:state];
  v22[3] = v17;
  v21[4] = @"hasSuggestedLocation";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:locationCopy];
  v22[4] = v18;
  v21[5] = @"isOnSharedCalendar";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:calendarCopy];
  v22[5] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

  CalAnalyticsSendEvent(@"CalendarEventTTL.eventFiredTTLAlert", v20);
}

+ (void)trackDirectionsEngagedForTTLAlertWithTransportType:(unint64_t)type etaType:(unint64_t)etaType hasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar
{
  calendarCopy = calendar;
  locationCopy = location;
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"transportType";
  v10 = [self _valueForTransportType:type];
  v16[0] = v10;
  v15[1] = @"etaType";
  v11 = [self _valueForETAType:etaType];
  v16[1] = v11;
  v15[2] = @"hasSuggestedLocation";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:locationCopy];
  v16[2] = v12;
  v15[3] = @"isOnSharedCalendar";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:calendarCopy];
  v16[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  CalAnalyticsSendEvent(@"CalendarEventTTL.directionsEngaged", v14);
}

+ (void)trackEmailEngagedForTTLAlertWithTransportType:(unint64_t)type etaType:(unint64_t)etaType hasSuggestedLocation:(BOOL)location isOnSharedCalendar:(BOOL)calendar
{
  calendarCopy = calendar;
  locationCopy = location;
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"transportType";
  v10 = [self _valueForTransportType:type];
  v16[0] = v10;
  v15[1] = @"etaType";
  v11 = [self _valueForETAType:etaType];
  v16[1] = v11;
  v15[2] = @"hasSuggestedLocation";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:locationCopy];
  v16[2] = v12;
  v15[3] = @"isOnSharedCalendar";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:calendarCopy];
  v16[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  CalAnalyticsSendEvent(@"CalendarEventTTL.emailEngaged", v14);
}

+ (id)_valueForAlertType:(unint64_t)type
{
  v3 = @"Approaching Departure";
  if (type == 1)
  {
    v3 = @"Leave Now";
  }

  if (type == 2)
  {
    return @"Late";
  }

  else
  {
    return v3;
  }
}

+ (id)_valueForTransportType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7EC6398 + type - 1);
  }
}

+ (id)_valueForETAType:(unint64_t)type
{
  v3 = @"Short";
  if (type == 1)
  {
    v3 = @"Medium";
  }

  if (type == 2)
  {
    return @"Long";
  }

  else
  {
    return v3;
  }
}

+ (id)_valueForTravelState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7EC63B0 + state - 1);
  }
}

@end