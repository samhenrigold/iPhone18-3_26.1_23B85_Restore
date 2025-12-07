@interface _OSUserPresenceInterval
- (BOOL)hasReasonableDuration;
- (_OSUserPresenceInterval)initWithStartDate:(id)date andEndDate:(id)endDate andPresenceStatus:(BOOL)status;
- (_OSUserPresenceInterval)initWithStartTime:(double)time andEndTime:(double)endTime andPresenceStatus:(BOOL)status;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _OSUserPresenceInterval

- (_OSUserPresenceInterval)initWithStartDate:(id)date andEndDate:(id)endDate andPresenceStatus:(BOOL)status
{
  statusCopy = status;
  dateCopy = date;
  endDateCopy = endDate;
  v17.receiver = self;
  v17.super_class = _OSUserPresenceInterval;
  v10 = [(_OSUserPresenceInterval *)&v17 init];
  v11 = v10;
  if (v10)
  {
    [(_OSIInterval *)v10 setStartDate:dateCopy];
    [(_OSIInterval *)v11 setEndDate:endDateCopy];
    [(_OSUserPresenceInterval *)v11 setIsPresentWithDisplay:statusCopy];
    endDate = [(_OSIInterval *)v11 endDate];
    startDate = [(_OSIInterval *)v11 startDate];
    [endDate timeIntervalSinceDate:startDate];
    [(_OSIInterval *)v11 setDuration:?];
  }

  if ([(_OSIInterval *)v11 isValidInterval])
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v15;
}

- (_OSUserPresenceInterval)initWithStartTime:(double)time andEndTime:(double)endTime andPresenceStatus:(BOOL)status
{
  statusCopy = status;
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:time];
  v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:endTime];
  v10 = [(_OSUserPresenceInterval *)self initWithStartDate:v8 andEndDate:v9 andPresenceStatus:statusCopy];

  return v10;
}

- (BOOL)hasReasonableDuration
{
  [(_OSIInterval *)self duration];
  if (v3 < 30.0)
  {
    return 0;
  }

  [(_OSIInterval *)self duration];
  return v5 <= 604800.0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _OSUserPresenceInterval;
  v4 = [(_OSIInterval *)&v6 copyWithZone:zone];
  [v4 setIsPresentWithDisplay:{-[_OSUserPresenceInterval isPresentWithDisplay](self, "isPresentWithDisplay")}];
  return v4;
}

@end