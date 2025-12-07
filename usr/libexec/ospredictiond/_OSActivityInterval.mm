@interface _OSActivityInterval
- (BOOL)hasReasonableDuration;
- (_OSActivityInterval)initWithStartDate:(id)date andEndDate:(id)endDate andActiveStatus:(BOOL)status;
- (_OSActivityInterval)initWithStartTime:(double)time andEndTime:(double)endTime andActiveStatus:(BOOL)status;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _OSActivityInterval

- (_OSActivityInterval)initWithStartTime:(double)time andEndTime:(double)endTime andActiveStatus:(BOOL)status
{
  statusCopy = status;
  v16.receiver = self;
  v16.super_class = _OSActivityInterval;
  v8 = [(_OSActivityInterval *)&v16 init];
  if (v8)
  {
    v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:time];
    [(_OSIInterval *)v8 setStartDate:v9];

    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:endTime];
    [(_OSIInterval *)v8 setEndDate:v10];

    [(_OSActivityInterval *)v8 setIsActive:statusCopy];
    endDate = [(_OSIInterval *)v8 endDate];
    startDate = [(_OSIInterval *)v8 startDate];
    [endDate timeIntervalSinceDate:startDate];
    [(_OSIInterval *)v8 setDuration:?];
  }

  if ([(_OSIInterval *)v8 isValidInterval])
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

- (_OSActivityInterval)initWithStartDate:(id)date andEndDate:(id)endDate andActiveStatus:(BOOL)status
{
  statusCopy = status;
  endDateCopy = endDate;
  [date timeIntervalSinceReferenceDate];
  v10 = v9;
  [endDateCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  return [(_OSActivityInterval *)self initWithStartTime:statusCopy andEndTime:v10 andActiveStatus:v12];
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
  v6.super_class = _OSActivityInterval;
  v4 = [(_OSIInterval *)&v6 copyWithZone:zone];
  [v4 setIsActive:{-[_OSActivityInterval isActive](self, "isActive")}];
  return v4;
}

@end