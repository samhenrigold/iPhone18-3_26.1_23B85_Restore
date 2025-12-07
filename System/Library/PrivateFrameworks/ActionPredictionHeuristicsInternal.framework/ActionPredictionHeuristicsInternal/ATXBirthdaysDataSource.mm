@interface ATXBirthdaysDataSource
- (ATXBirthdaysDataSource)initWithDevice:(id)device;
- (void)birthdaysWithCallback:(id)callback;
@end

@implementation ATXBirthdaysDataSource

- (ATXBirthdaysDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXBirthdaysDataSource;
  v6 = [(ATXBirthdaysDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)birthdaysWithCallback:(id)callback
{
  v61 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA2A8))
  {
    v39 = callbackCopy;
    context = objc_autoreleasePoolPush();
    v5 = [(ATXHeuristicDevice *)self->_device now];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v37 = v5;
    v7 = [currentCalendar startOfDayForDate:v5];

    currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
    v42 = v7;
    v41 = [currentCalendar2 dateByAddingUnit:16 value:1 toDate:v7 options:0];

    selfCopy = self;
    eventStore = [(ATXHeuristicDevice *)self->_device eventStore];
    v10 = objc_opt_new();
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = eventStore;
    sources = [eventStore sources];
    v12 = [sources countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v55;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v55 != v14)
          {
            objc_enumerationMutation(sources);
          }

          v16 = *(*(&v54 + 1) + 8 * i);
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v17 = [v16 calendarsForEntityType:0];
          v18 = [v17 countByEnumeratingWithState:&v50 objects:v59 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v51;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v51 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v50 + 1) + 8 * j);
                if ([v22 type] == 4)
                {
                  [v10 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v50 objects:v59 count:16];
            }

            while (v19);
          }
        }

        v13 = [sources countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v13);
    }

    if ([v10 count])
    {
      v23 = [v40 predicateForEventsWithStartDate:v42 endDate:v41 calendars:v10];
      v43 = objc_opt_new();
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v36 = v23;
      obj = [v40 eventsMatchingPredicate:v23];
      v24 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      v25 = selfCopy;
      if (v24)
      {
        v26 = v24;
        v27 = *v47;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v47 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = [(ATXHeuristicDevice *)v25->_device dictForEvent:*(*(&v46 + 1) + 8 * k)];
            v30 = v29;
            if (v29)
            {
              v31 = [v29 objectForKeyedSubscript:@"birthdayContact"];
              if (v31)
              {
                v32 = v31;
                v33 = [v30 objectForKeyedSubscript:@"birthdayContact"];
                v34 = [v33 objectForKeyedSubscript:@"isMeContact"];
                bOOLValue = [v34 BOOLValue];

                v25 = selfCopy;
                if ((bOOLValue & 1) == 0)
                {
                  [v43 addObject:v30];
                }
              }
            }
          }

          v26 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
        }

        while (v26);
      }

      callbackCopy = v39;
      (*(v39 + 2))(v39, v43, 0);
    }

    else
    {
      callbackCopy = v39;
      (*(v39 + 2))(v39, MEMORY[0x277CBEBF8], 0);
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    (*(callbackCopy + 2))(callbackCopy, MEMORY[0x277CBEBF8], 0);
  }
}

@end