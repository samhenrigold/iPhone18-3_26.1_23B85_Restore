@interface COTimerNotification
- (COTimerNotification)initWithCoder:(id)coder;
- (COTimerNotification)initWithTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COTimerNotification

- (COTimerNotification)initWithTimers:(id)timers
{
  timersCopy = timers;
  v5 = [(COMeshCommand *)self init];
  if (v5)
  {
    v6 = [timersCopy copy];
    timers = v5->_timers;
    v5->_timers = v6;
  }

  return v5;
}

- (COTimerNotification)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = COTimerNotification;
  v5 = [(COMeshCommand *)&v22 initWithCoder:coderCopy];
  if (v5 && [coderCopy containsValueForKey:@"timers"])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"timers"];
    timers = v5->_timers;
    v5->_timers = v9;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v5->_timers;
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
  v6.super_class = COTimerNotification;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  timers = [(COTimerNotification *)self timers];
  if (timers)
  {
    [coderCopy encodeObject:timers forKey:@"timers"];
  }
}

@end