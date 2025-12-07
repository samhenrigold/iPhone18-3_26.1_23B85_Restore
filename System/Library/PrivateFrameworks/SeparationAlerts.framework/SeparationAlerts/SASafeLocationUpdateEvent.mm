@interface SASafeLocationUpdateEvent
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SASafeLocationUpdateEvent)initWithCoder:(id)coder;
- (SASafeLocationUpdateEvent)initWithSafeLocation:(id)location eventType:(unint64_t)type lastEvent:(BOOL)event date:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)description;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SASafeLocationUpdateEvent

- (SASafeLocationUpdateEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"SASafeLocationUpdateEventSafeLocation"];
  v6 = [coderCopy decodeIntegerForKey:@"SASafeLocationUpdateEventType"];
  v7 = [coderCopy decodeBoolForKey:@"SASafeLocationUpdateEventLast"];
  v8 = [coderCopy decodeObjectForKey:@"SASafeLocationUpdateEventDate"];

  v9 = [(SASafeLocationUpdateEvent *)self initWithSafeLocation:v5 eventType:v6 lastEvent:v7 date:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  safeLocation = [(SASafeLocationUpdateEvent *)self safeLocation];
  [coderCopy encodeObject:safeLocation forKey:@"SASafeLocationUpdateEventSafeLocation"];

  [coderCopy encodeInteger:-[SASafeLocationUpdateEvent eventType](self forKey:{"eventType"), @"SASafeLocationUpdateEventType"}];
  [coderCopy encodeBool:-[SASafeLocationUpdateEvent lastEvent](self forKey:{"lastEvent"), @"SASafeLocationUpdateEventLast"}];
  date = [(SASafeLocationUpdateEvent *)self date];
  [coderCopy encodeObject:date forKey:@"SASafeLocationUpdateEventDate"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SASafeLocationUpdateEvent allocWithZone:zone];
  safeLocation = [(SASafeLocationUpdateEvent *)self safeLocation];
  eventType = [(SASafeLocationUpdateEvent *)self eventType];
  lastEvent = [(SASafeLocationUpdateEvent *)self lastEvent];
  date = [(SASafeLocationUpdateEvent *)self date];
  v9 = [(SASafeLocationUpdateEvent *)v4 initWithSafeLocation:safeLocation eventType:eventType lastEvent:lastEvent date:date];

  return v9;
}

- (SASafeLocationUpdateEvent)initWithSafeLocation:(id)location eventType:(unint64_t)type lastEvent:(BOOL)event date:(id)date
{
  locationCopy = location;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = SASafeLocationUpdateEvent;
  v12 = [(SASafeLocationUpdateEvent *)&v19 init];
  if (v12)
  {
    if (!dateCopy)
    {
      v17 = 0;
      goto LABEL_8;
    }

    if (locationCopy)
    {
      v13 = [locationCopy copy];
      safeLocation = v12->_safeLocation;
      v12->_safeLocation = v13;
    }

    v12->_eventType = type;
    v12->_lastEvent = event;
    v15 = [dateCopy copy];
    date = v12->_date;
    v12->_date = v15;
  }

  v17 = v12;
LABEL_8:

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      safeLocation = [(SASafeLocationUpdateEvent *)self safeLocation];
      safeLocation2 = [(SASafeLocationUpdateEvent *)v7 safeLocation];
      if (safeLocation == safeLocation2 || (-[SASafeLocationUpdateEvent safeLocation](self, "safeLocation"), v3 = objc_claimAutoreleasedReturnValue(), -[SASafeLocationUpdateEvent safeLocation](v7, "safeLocation"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        eventType = [(SASafeLocationUpdateEvent *)self eventType];
        if (eventType == [(SASafeLocationUpdateEvent *)v7 eventType]&& (v12 = [(SASafeLocationUpdateEvent *)self lastEvent], v12 == [(SASafeLocationUpdateEvent *)v7 lastEvent]))
        {
          date = [(SASafeLocationUpdateEvent *)self date];
          date2 = [(SASafeLocationUpdateEvent *)v7 date];
          v16 = date2;
          if (date == date2)
          {

            v10 = 1;
          }

          else
          {
            date3 = [(SASafeLocationUpdateEvent *)self date];
            [(SASafeLocationUpdateEvent *)v7 date];
            v18 = v19 = date;
            v10 = [date3 isEqual:v18];
          }
        }

        else
        {
          v10 = 0;
        }

        if (safeLocation == safeLocation2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)descriptionDictionary
{
  v15[5] = *MEMORY[0x277D85DE8];
  v14[0] = @"EventType";
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v15[0] = v5;
  v14[1] = @"SASafeLocationUpdateEventSafeLocation";
  safeLocation = [(SASafeLocationUpdateEvent *)self safeLocation];
  if (safeLocation)
  {
    safeLocation2 = [(SASafeLocationUpdateEvent *)self safeLocation];
    v7 = [safeLocation2 description];
  }

  else
  {
    v7 = &stru_287709218;
  }

  v15[1] = v7;
  v14[2] = @"SASafeLocationUpdateEventType";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SASafeLocationUpdateEvent eventType](self, "eventType")}];
  v15[2] = v8;
  v14[3] = @"SASafeLocationUpdateEventLast";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[SASafeLocationUpdateEvent lastEvent](self, "lastEvent")}];
  v15[3] = v9;
  v14[4] = @"SASafeLocationUpdateEventDate";
  date = [(SASafeLocationUpdateEvent *)self date];
  getDateString = [date getDateString];
  v15[4] = getDateString;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];

  if (safeLocation)
  {
  }

  return v12;
}

- (NSString)description
{
  descriptionDictionary = [(SASafeLocationUpdateEvent *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SASafeLocationUpdateEvent *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

- (void)description
{
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_2656EA000, v5, v6, "%@ instance failed to create description:%@", v7, v8, v9, v10);
}

@end