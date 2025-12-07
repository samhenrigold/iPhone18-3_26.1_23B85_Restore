@interface MONotificationScheduleItem
- (MONotificationScheduleItem)initWithCoder:(id)coder;
- (MONotificationScheduleItem)initWithHour:(id)hour minute:(id)minute weekdays:(id)weekdays;
- (id)initScheduleWithHour:(id)hour minute:(id)minute weekdays:(id)weekdays;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MONotificationScheduleItem

- (MONotificationScheduleItem)initWithHour:(id)hour minute:(id)minute weekdays:(id)weekdays
{
  hourCopy = hour;
  minuteCopy = minute;
  weekdaysCopy = weekdays;
  v15.receiver = self;
  v15.super_class = MONotificationScheduleItem;
  v12 = [(MONotificationScheduleItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_hour, hour);
    objc_storeStrong(&v13->_minute, minute);
    objc_storeStrong(&v13->_weekdays, weekdays);
  }

  return v13;
}

- (id)initScheduleWithHour:(id)hour minute:(id)minute weekdays:(id)weekdays
{
  v27 = *MEMORY[0x277D85DE8];
  hourCopy = hour;
  minuteCopy = minute;
  weekdaysCopy = weekdays;
  v25.receiver = self;
  v25.super_class = MONotificationScheduleItem;
  v12 = [(MONotificationScheduleItem *)&v25 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_hour, hour);
    objc_storeStrong(p_isa + 2, minute);
    objc_storeStrong(p_isa + 3, weekdays);
    if ([hourCopy intValue] > 0x17 || objc_msgSend(minuteCopy, "intValue") > 0x3B)
    {
LABEL_15:
      v19 = 0;
      goto LABEL_16;
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = weekdaysCopy;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v21 + 1) + 8 * v18) intValue] - 8 < 0xFFFFFFF9)
          {

            goto LABEL_15;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  v19 = p_isa;
LABEL_16:

  return v19;
}

- (MONotificationScheduleItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MONotificationScheduleItem;
  v5 = [(MONotificationScheduleItem *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hour"];
    hour = v5->_hour;
    v5->_hour = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minute"];
    minute = v5->_minute;
    v5->_minute = v8;

    v10 = [coderCopy decodeIntForKey:@"weekdays"];
    v11 = objc_opt_new();
    v12 = 1;
    do
    {
      if ((v10 >> (v12 - 1)))
      {
        v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
        [v11 addObject:v13];
      }

      v12 = (v12 + 1);
    }

    while (v12 != 8);
    v14 = [v11 copy];
    weekdays = v5->_weekdays;
    v5->_weekdays = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v17 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_hour forKey:@"hour"];
  [coderCopy encodeObject:self->_minute forKey:@"minute"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_weekdays;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        intValue = [*(*(&v12 + 1) + 8 * i) intValue];
        v11 = 1 << ((intValue & 7) - 1);
        if ((intValue & 7) == 0)
        {
          LOBYTE(v11) = 0;
        }

        v7 |= v11;
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
    v6 = v7 & 0x7F;
  }

  [coderCopy encodeInt:v6 forKey:@"weekdays"];
}

@end