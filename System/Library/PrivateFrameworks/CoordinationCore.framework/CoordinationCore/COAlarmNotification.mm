@interface COAlarmNotification
- (COAlarmNotification)initWithAlarms:(id)alarms;
- (COAlarmNotification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COAlarmNotification

- (COAlarmNotification)initWithAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v5 = [(COMeshCommand *)self init];
  if (v5)
  {
    v6 = [alarmsCopy copy];
    alarms = v5->_alarms;
    v5->_alarms = v6;
  }

  return v5;
}

- (COAlarmNotification)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = COAlarmNotification;
  v5 = [(COMeshCommand *)&v22 initWithCoder:coderCopy];
  if (v5 && [coderCopy containsValueForKey:@"alarms"])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"alarms"];
    alarms = v5->_alarms;
    v5->_alarms = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v5->_alarms;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        while (2)
        {
          v15 = 0;
          do
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v16 = 0;
              goto LABEL_15;
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v16 = v5;
    }

    else
    {
      v16 = 0;
      v11 = v5;
    }

LABEL_15:

    v5 = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = COAlarmNotification;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  alarms = [(COAlarmNotification *)self alarms];
  if (alarms)
  {
    [coderCopy encodeObject:alarms forKey:@"alarms"];
  }
}

@end