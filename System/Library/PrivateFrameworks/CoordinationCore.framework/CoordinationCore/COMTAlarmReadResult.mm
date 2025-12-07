@interface COMTAlarmReadResult
- (COMTAlarmReadResult)initWithAlarms:(id)alarms actionIdentifier:(id)identifier;
- (COMTAlarmReadResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTAlarmReadResult

- (COMTAlarmReadResult)initWithAlarms:(id)alarms actionIdentifier:(id)identifier
{
  alarmsCopy = alarms;
  v11.receiver = self;
  v11.super_class = COMTAlarmReadResult;
  v7 = [(COMTResult *)&v11 initWithActionIdentifier:identifier];
  if (v7)
  {
    v8 = [alarmsCopy copy];
    alarms = v7->_alarms;
    v7->_alarms = v8;
  }

  return v7;
}

- (COMTAlarmReadResult)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = COMTAlarmReadResult;
  v5 = [(COMTResult *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARA"];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v9;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v16 = 0;
            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    alarms = v5->_alarms;
    v5->_alarms = v10;
  }

  v16 = v5;
LABEL_13:

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTAlarmReadResult;
  coderCopy = coder;
  [(COMTResult *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTAlarmReadResult *)self alarms:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"ARA"];
}

@end