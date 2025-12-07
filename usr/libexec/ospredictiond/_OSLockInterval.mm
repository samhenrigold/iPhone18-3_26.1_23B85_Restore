@interface _OSLockInterval
- (BOOL)hasReasonableDuration;
- (_OSLockInterval)initWithStartDate:(id)date andEndDate:(id)endDate andIsLocked:(BOOL)locked;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _OSLockInterval

- (_OSLockInterval)initWithStartDate:(id)date andEndDate:(id)endDate andIsLocked:(BOOL)locked
{
  lockedCopy = locked;
  dateCopy = date;
  endDateCopy = endDate;
  v17.receiver = self;
  v17.super_class = _OSLockInterval;
  v10 = [(_OSLockInterval *)&v17 init];
  v11 = v10;
  if (v10)
  {
    [(_OSIInterval *)v10 setStartDate:dateCopy];
    [(_OSIInterval *)v11 setEndDate:endDateCopy];
    [(_OSLockInterval *)v11 setIsLocked:lockedCopy];
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

- (BOOL)hasReasonableDuration
{
  [(_OSIInterval *)self duration];
  if (v3 < 60.0)
  {
    return 0;
  }

  [(_OSIInterval *)self duration];
  return v5 <= 86400.0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _OSLockInterval;
  v4 = [(_OSIInterval *)&v6 copyWithZone:zone];
  [v4 setIsLocked:{-[_OSLockInterval isLocked](self, "isLocked")}];
  return v4;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = _OSLockInterval;
  v3 = [(_OSIInterval *)&v8 description];
  isLocked = [(_OSLockInterval *)self isLocked];
  v5 = @"N";
  if (isLocked)
  {
    v5 = @"Y";
  }

  v6 = [NSString stringWithFormat:@"[Locked=%@] %@", v5, v3];

  return v6;
}

@end