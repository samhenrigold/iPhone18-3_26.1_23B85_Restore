@interface TSTimeSyncClock
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (TSTimeSyncClock)initWithClockIdentifier:(unint64_t)identifier translationClock:(id)clock;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time;
@end

@implementation TSTimeSyncClock

- (TSTimeSyncClock)initWithClockIdentifier:(unint64_t)identifier translationClock:(id)clock
{
  clockCopy = clock;
  v11.receiver = self;
  v11.super_class = TSTimeSyncClock;
  v8 = [(TSClock *)&v11 initWithClockIdentifier:identifier];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_translationClock, clock);
  }

  return v9;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  [(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:?];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainToTimeSyncTime:?];
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  [(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:?];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainToMachAbsoluteTime:?];
}

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      ++time;
      [(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:?];
      *domainTime++ = [(TSClock *)self->_translationClock convertFromDomainToTimeSyncTime:?];
      --countCopy;
    }

    while (countCopy);
  }

  return 1;
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  if (count)
  {
    countCopy = count;
    do
    {
      ++time;
      [(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:?];
      *absoluteTime++ = [(TSClock *)self->_translationClock convertFromDomainToMachAbsoluteTime:?];
      --countCopy;
    }

    while (countCopy);
  }

  return 1;
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  [(TSClock *)self->_translationClock convertFromMachAbsoluteIntervalToDomainInterval:?];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToTimeSyncTimeInterval:?];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  [(TSClock *)self->_translationClock convertFromTimeSyncTimeIntervalToDomainInterval:?];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToMachAbsoluteInterval:?];
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = 0;
  }

  if (domainAnchor)
  {
    *domainAnchor = 0;
  }

  return 1;
}

@end