@interface TSTime
+ (id)timeConverter;
- (BOOL)isEqual:(id)equal;
- (NSDate)utcDate;
- (TSGPSTime)gpsTime;
- (TSTime)init;
- (TSTime)initWithGPSTime:(id)time;
- (TSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch;
- (TSTime)initWithTAIDate:(id)date;
- (TSTime)initWithUTCDate:(id)date;
- (TSTime)initWithgPTPTime:(id)time;
- (TSgPTPTime)gPTPTime;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)timeByAddingNanoseconds:(int64_t)nanoseconds;
@end

@implementation TSTime

+ (id)timeConverter
{
  if (timeConverter_onceToken != -1)
  {
    +[TSTime timeConverter];
  }

  v3 = _sharedTimeConverter;

  return v3;
}

uint64_t __23__TSTime_timeConverter__block_invoke()
{
  _sharedTimeConverter = objc_alloc_init(TSTimeConverter);

  return MEMORY[0x2821F96F8]();
}

- (TSTime)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [(TSTime *)self initWithUTCDate:?];

  return v4;
}

- (TSTime)initWithUTCDate:(id)date
{
  dateCopy = date;
  timeConverter = [objc_opt_class() timeConverter];
  v6 = [timeConverter taiDateFromUTCDate:?];

  v7 = [(TSTime *)self initWithTAIDate:?];
  return v7;
}

- (TSTime)initWithTAIDate:(id)date
{
  dateCopy = date;
  [dateCopy timeIntervalSince1970];
  v5 = [(TSTime *)self initWithNanosecondsSinceEpoch:?];
  v6 = v5;
  if (v5)
  {
    *&v5->_timeTraceable = 257;
    [dateCopy timeIntervalSince1970];
    if (v7 < 0.0)
    {

      v6 = 0;
    }
  }

  return v6;
}

- (TSTime)initWithGPSTime:(id)time
{
  [time nanosecondsSinceEpoch];
  result = [(TSTime *)self initWithNanosecondsSinceEpoch:?];
  if (result)
  {
    *&result->_timeTraceable = 257;
  }

  return result;
}

- (TSTime)initWithgPTPTime:(id)time
{
  timeCopy = time;
  [timeCopy nanosecondsSinceEpoch];
  v5 = [(TSTime *)self initWithNanosecondsSinceEpoch:?];
  if (v5)
  {
    if ([timeCopy isTimeTraceable] && objc_msgSend(timeCopy, "isPTPTimescale") && objc_msgSend(timeCopy, "isFrequencyTraceable"))
    {
      v5->_grandmasterIdentity = [timeCopy grandmasterIdentity];
      v5->_localPortNumber = [timeCopy localPortNumber];
      v5->_frequencyTraceable = [timeCopy isFrequencyTraceable];
      v5->_timeTraceable = [timeCopy isTimeTraceable];
    }

    else
    {

      v5 = 0;
    }
  }

  return v5;
}

- (TSTime)initWithNanosecondsSinceEpoch:(unint64_t)epoch
{
  v5.receiver = self;
  v5.super_class = TSTime;
  result = [(TSTime *)&v5 init];
  if (result)
  {
    result->_nanosecondsSinceEpoch = epoch;
    result->_grandmasterIdentity = -1;
    result->_localPortNumber = 0;
  }

  return result;
}

- (NSDate)utcDate
{
  timeConverter = [objc_opt_class() timeConverter];
  taiDate = [(TSTime *)self taiDate];
  v5 = [timeConverter utcDateFromTAIDate:?];

  return v5;
}

- (TSGPSTime)gpsTime
{
  if (self->_nanosecondsSinceEpoch < 0x46288542E03FE00)
  {
    v3 = 0;
  }

  else
  {
    v3 = [[TSGPSTime alloc] initWithNanosecondsSinceEpoch:?];
  }

  return v3;
}

- (TSgPTPTime)gPTPTime
{
  v2 = [TSgPTPTime initWithNanosecondsSinceEpoch:"initWithNanosecondsSinceEpoch:onGrandmaster:withLocalPortNumber:ptpTimescale:timeTraceable:frequencyTraceable:" onGrandmaster:? withLocalPortNumber:? ptpTimescale:? timeTraceable:? frequencyTraceable:?];

  return v2;
}

- (id)timeByAddingNanoseconds:(int64_t)nanoseconds
{
  if (nanoseconds < 0 && self->_nanosecondsSinceEpoch < nanoseconds)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(TSTime *)self copy];
    v4[4] += nanoseconds;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() "allocWithZone:"init"")];
  *(result + 4) = self->_nanosecondsSinceEpoch;
  *(result + 2) = self->_grandmasterIdentity;
  *(result + 8) = self->_initedWithgPTP;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (([equalCopy isMemberOfClass:?] & 1) != 0 || (objc_opt_class(), -[TSTime isMemberOfClass:](self, "isMemberOfClass:")))
  {
    nanosecondsSinceEpoch = [(TSTime *)self nanosecondsSinceEpoch];
    v6 = nanosecondsSinceEpoch == [equalCopy nanosecondsSinceEpoch];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  grandmasterIdentity = self->_grandmasterIdentity;
  v4 = MEMORY[0x277CCACA8];
  nanosecondsSinceEpoch = [(TSTime *)self nanosecondsSinceEpoch];
  if (grandmasterIdentity == -1)
  {
    [v4 stringWithFormat:nanosecondsSinceEpoch, v8];
  }

  else
  {
    [v4 stringWithFormat:nanosecondsSinceEpoch, self->_grandmasterIdentity];
  }
  v6 = ;

  return v6;
}

@end