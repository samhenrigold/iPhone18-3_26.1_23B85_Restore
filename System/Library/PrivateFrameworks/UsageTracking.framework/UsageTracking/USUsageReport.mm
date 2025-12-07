@interface USUsageReport
+ (id)emptyReportForInterval:(id)interval;
- (NSDictionary)pickupsByBundleIdentifier;
- (NSDictionary)userNotificationsByBundleIdentifier;
- (USUsageReport)initWithCoder:(id)coder;
- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage notifications:(id)notifications pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)self0 timeZone:(id)self1 lastEventDate:(id)self2;
- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0;
- (id)_addNotifications:(id)notifications andPickups:(id)pickups toApplicationUsageInCategoryUsage:(id)usage;
- (id)description;
- (void)_usUsageReportCommonInitWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation USUsageReport

- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage notifications:(id)notifications pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)self0 timeZone:(id)self1 lastEventDate:(id)self2
{
  dateCopy = date;
  zoneCopy = zone;
  intervalCopy = interval;
  pickupCopy = pickup;
  sessionCopy = session;
  v25 = [(USUsageReport *)self _addNotifications:notifications andPickups:identifier toApplicationUsageInCategoryUsage:usage];
  v26 = [(USUsageReport *)self initWithScreenTime:sessionCopy longestSession:v25 categoryUsage:applicationUsage pickupsWithoutApplicationUsage:pickupCopy firstPickup:intervalCopy interval:zoneCopy timeZone:time lastEventDate:dateCopy];

  return v26;
}

- (id)_addNotifications:(id)notifications andPickups:(id)pickups toApplicationUsageInCategoryUsage:(id)usage
{
  v68 = *MEMORY[0x277D85DE8];
  pickupsCopy = pickups;
  usageCopy = usage;
  v9 = [notifications mutableCopy];
  v42 = pickupsCopy;
  v10 = [pickupsCopy mutableCopy];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v11 = usageCopy;
  v45 = [v11 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v45)
  {
    v43 = *v59;
    v44 = v11;
    v12 = 0x277CBE000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v59 != v43)
        {
          objc_enumerationMutation(v11);
        }

        v46 = v13;
        v14 = *(*(&v58 + 1) + 8 * v13);
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        obj = [v14 applicationUsage];
        v15 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v15)
        {
          v16 = v15;
          v48 = *v55;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v55 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v54 + 1) + 8 * i);
              canonicalBundleIdentifier = [v18 canonicalBundleIdentifier];
              v20 = [v9 objectForKeyedSubscript:canonicalBundleIdentifier];
              v21 = v20;
              if (v20)
              {
                v64 = canonicalBundleIdentifier;
                v65 = v20;
                v22 = [*(v12 + 2752) dictionaryWithObjects:&v65 forKeys:&v64 count:1];
                [v18 setUserNotificationsByBundleIdentifier:v22];

                [v9 setObject:0 forKeyedSubscript:canonicalBundleIdentifier];
              }

              v23 = [v10 objectForKeyedSubscript:canonicalBundleIdentifier];
              v24 = v23;
              if (v23)
              {
                v62 = canonicalBundleIdentifier;
                v63 = v23;
                [*(v12 + 2752) dictionaryWithObjects:&v63 forKeys:&v62 count:1];
                v25 = v10;
                v26 = v9;
                v28 = v27 = v12;
                [v18 setPickupsByBundleIdentifier:v28];

                v12 = v27;
                v9 = v26;
                v10 = v25;
                [v25 setObject:0 forKeyedSubscript:canonicalBundleIdentifier];
              }
            }

            v16 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v16);
        }

        v13 = v46 + 1;
        v11 = v44;
      }

      while (v46 + 1 != v45);
      v45 = [v44 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v45);
  }

  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v29 = [v11 indexOfObjectPassingTest:&__block_literal_global_1];
    v30 = v42;
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v31 = [USCategoryUsageReport alloc];
      v32 = [(USCategoryUsageReport *)v31 initWithCategoryIdentifier:*MEMORY[0x277CF95E8] totalUsageTime:MEMORY[0x277CBEBF8] applicationUsage:MEMORY[0x277CBEBF8] webUsage:0.0];
      v33 = [v11 arrayByAddingObject:v32];
    }

    else
    {
      v32 = [v11 objectAtIndexedSubscript:v29];
      v33 = 0;
    }

    applicationUsage = [(USCategoryUsageReport *)v32 applicationUsage];
    v35 = [applicationUsage mutableCopy];

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_2;
    v51[3] = &unk_279E0A410;
    v36 = v10;
    v52 = v36;
    v37 = v35;
    v53 = v37;
    [v9 enumerateKeysAndObjectsUsingBlock:v51];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_3;
    v49[3] = &unk_279E09C78;
    v50 = v37;
    v38 = v37;
    [v36 enumerateKeysAndObjectsUsingBlock:v49];
    [(USCategoryUsageReport *)v32 setApplicationUsage:v38];
  }

  else
  {
    v33 = 0;
    v30 = v42;
  }

  if (v33)
  {
    v39 = v33;
  }

  else
  {
    v39 = v11;
  }

  v40 = v39;

  return v39;
}

uint64_t __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 categoryIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CF95E8]];

  return v3;
}

void __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v7)
  {
    v16 = v5;
    v17[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v10 = *(a1 + 40);
  v11 = [USApplicationUsageReport alloc];
  v14 = v5;
  v15 = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13 = [(USApplicationUsageReport *)v11 initWithCanonicalBundleIdentifier:v5 applicationUsageTrusted:1 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:v12 userNotificationsByBundleIdentifier:v9 pickupsByBundleIdentifier:0.0];
  [v10 addObject:v13];

  [*(a1 + 32) setObject:0 forKeyedSubscript:v5];
}

void __80__USUsageReport__addNotifications_andPickups_toApplicationUsageInCategoryUsage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [USApplicationUsageReport alloc];
  v10 = v6;
  v11[0] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v9 = [(USApplicationUsageReport *)v7 initWithCanonicalBundleIdentifier:v6 applicationUsageTrusted:1 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:MEMORY[0x277CBEC10] userNotificationsByBundleIdentifier:v8 pickupsByBundleIdentifier:0.0];
  [v4 addObject:v9];
}

- (USUsageReport)initWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0
{
  v25.receiver = self;
  v25.super_class = USUsageReport;
  dateCopy = date;
  zoneCopy = zone;
  intervalCopy = interval;
  pickupCopy = pickup;
  usageCopy = usage;
  sessionCopy = session;
  v23 = [(USUsageReport *)&v25 init];
  [(USUsageReport *)v23 _usUsageReportCommonInitWithScreenTime:sessionCopy longestSession:usageCopy categoryUsage:applicationUsage pickupsWithoutApplicationUsage:pickupCopy firstPickup:intervalCopy interval:zoneCopy timeZone:time lastEventDate:dateCopy];

  return v23;
}

- (void)_usUsageReportCommonInitWithScreenTime:(double)time longestSession:(id)session categoryUsage:(id)usage pickupsWithoutApplicationUsage:(unint64_t)applicationUsage firstPickup:(id)pickup interval:(id)interval timeZone:(id)zone lastEventDate:(id)self0
{
  self->_screenTime = time;
  dateCopy = date;
  zoneCopy = zone;
  intervalCopy = interval;
  pickupCopy = pickup;
  usageCopy = usage;
  v22 = [session copy];
  longestSession = self->_longestSession;
  self->_longestSession = v22;

  v24 = [usageCopy copy];
  categoryUsage = self->_categoryUsage;
  self->_categoryUsage = v24;

  self->_pickupsWithoutApplicationUsage = applicationUsage;
  v26 = [pickupCopy copy];

  firstPickup = self->_firstPickup;
  self->_firstPickup = v26;

  v28 = [intervalCopy copy];
  interval = self->_interval;
  self->_interval = v28;

  v30 = [zoneCopy copy];
  timeZone = self->_timeZone;
  self->_timeZone = v30;

  v32 = [dateCopy copy];
  lastEventDate = self->_lastEventDate;
  self->_lastEventDate = v32;
}

- (USUsageReport)initWithCoder:(id)coder
{
  v41 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"CategoryUsage"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Interval"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeZone"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastEventDate"];
  v12 = v11;
  if (v8 && v9 && v10 && v11 && [coderCopy containsValueForKey:@"LongestSession"] && objc_msgSend(coderCopy, "containsValueForKey:", @"ScreenTime") && objc_msgSend(coderCopy, "containsValueForKey:", @"PickupsWithoutApplicationUsage") && objc_msgSend(coderCopy, "containsValueForKey:", @"FirstPickup"))
  {
    v32.receiver = self;
    v32.super_class = USUsageReport;
    v13 = [(USUsageReport *)&v32 init];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LongestSession"];
    [coderCopy decodeDoubleForKey:@"ScreenTime"];
    v16 = v15;
    v31 = [coderCopy decodeIntegerForKey:@"PickupsWithoutApplicationUsage"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstPickup"];
    if (([coderCopy containsValueForKey:@"ApplicationUsageIncludesPickupsAndNotifications"] & 1) == 0)
    {
      v29 = v14;
      v30 = v13;
      v18 = objc_alloc(MEMORY[0x277CBEB98]);
      v19 = objc_opt_class();
      v20 = objc_opt_class();
      v21 = [v18 initWithObjects:{v19, v20, objc_opt_class(), 0}];
      v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"UserNotificationsByBundleIdentifier"];
      v23 = [coderCopy decodeObjectOfClasses:v21 forKey:@"PickupsByBundleIdentifier"];
      v24 = v23;
      if (v22 && v23)
      {
        v28 = [(USUsageReport *)v30 _addNotifications:v22 andPickups:v23 toApplicationUsageInCategoryUsage:v8];

        v8 = v28;
      }

      v14 = v29;
      v13 = v30;
    }

    [(USUsageReport *)v13 _usUsageReportCommonInitWithScreenTime:v14 longestSession:v8 categoryUsage:v31 pickupsWithoutApplicationUsage:v17 firstPickup:v9 interval:v10 timeZone:v16 lastEventDate:v12];

    self = v13;
    selfCopy = self;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v34 = v8;
      v35 = 2114;
      v36 = v9;
      v37 = 2114;
      v38 = v10;
      v39 = 2114;
      v40 = v12;
      _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to decode USUsageReport with categoryUsage: %{public}@, interval: %{public}@, timeZone: %{public}@, lastEventDate: %{public}@", buf, 0x2Au);
    }

    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:0];
    [coderCopy failWithError:v26];

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  screenTime = self->_screenTime;
  coderCopy = coder;
  [coderCopy encodeDouble:@"ScreenTime" forKey:screenTime];
  [coderCopy encodeObject:self->_longestSession forKey:@"LongestSession"];
  [coderCopy encodeObject:self->_categoryUsage forKey:@"CategoryUsage"];
  [coderCopy encodeInteger:self->_pickupsWithoutApplicationUsage forKey:@"PickupsWithoutApplicationUsage"];
  [coderCopy encodeObject:self->_firstPickup forKey:@"FirstPickup"];
  [coderCopy encodeObject:self->_interval forKey:@"Interval"];
  [coderCopy encodeObject:self->_timeZone forKey:@"TimeZone"];
  [coderCopy encodeObject:self->_lastEventDate forKey:@"LastEventDate"];
  [coderCopy encodeBool:1 forKey:@"ApplicationUsageIncludesPickupsAndNotifications"];
  userNotificationsByBundleIdentifier = [(USUsageReport *)self userNotificationsByBundleIdentifier];
  [coderCopy encodeObject:userNotificationsByBundleIdentifier forKey:@"UserNotificationsByBundleIdentifier"];

  pickupsByBundleIdentifier = [(USUsageReport *)self pickupsByBundleIdentifier];
  [coderCopy encodeObject:pickupsByBundleIdentifier forKey:@"PickupsByBundleIdentifier"];
}

- (NSDictionary)userNotificationsByBundleIdentifier
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  categoryUsage = [(USUsageReport *)self categoryUsage];
  v5 = [categoryUsage countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(categoryUsage);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        applicationUsage = [v9 applicationUsage];
        v11 = [applicationUsage countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(applicationUsage);
              }

              userNotificationsByBundleIdentifier = [*(*(&v17 + 1) + 8 * j) userNotificationsByBundleIdentifier];
              [v3 addEntriesFromDictionary:userNotificationsByBundleIdentifier];
            }

            v12 = [applicationUsage countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [categoryUsage countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSDictionary)pickupsByBundleIdentifier
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  categoryUsage = [(USUsageReport *)self categoryUsage];
  v5 = [categoryUsage countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(categoryUsage);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        applicationUsage = [v9 applicationUsage];
        v11 = [applicationUsage countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(applicationUsage);
              }

              pickupsByBundleIdentifier = [*(*(&v17 + 1) + 8 * j) pickupsByBundleIdentifier];
              [v3 addEntriesFromDictionary:pickupsByBundleIdentifier];
            }

            v12 = [applicationUsage countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [categoryUsage countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = USUsageReport;
  v4 = [(USUsageReport *)&v16 description];
  [(USUsageReport *)self screenTime];
  v6 = v5;
  longestSession = [(USUsageReport *)self longestSession];
  categoryUsage = [(USUsageReport *)self categoryUsage];
  pickupsWithoutApplicationUsage = [(USUsageReport *)self pickupsWithoutApplicationUsage];
  firstPickup = [(USUsageReport *)self firstPickup];
  interval = [(USUsageReport *)self interval];
  timeZone = [(USUsageReport *)self timeZone];
  lastEventDate = [(USUsageReport *)self lastEventDate];
  v14 = [v3 stringWithFormat:@"%@, ScreenTime: %f, LongestSession: %@, CategoryUsage: %@\nPickupsWithoutApplicationUsage: %lu, First Pickup: %@, Interval: %@, TimeZone: %@, LastEventDate: %@", v4, v6, longestSession, categoryUsage, pickupsWithoutApplicationUsage, firstPickup, interval, timeZone, lastEventDate];

  return v14;
}

+ (id)emptyReportForInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [USUsageReport alloc];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  startDate = [intervalCopy startDate];
  v7 = [(USUsageReport *)v4 initWithScreenTime:0 longestSession:MEMORY[0x277CBEBF8] categoryUsage:0 pickupsWithoutApplicationUsage:0 firstPickup:intervalCopy interval:localTimeZone timeZone:0.0 lastEventDate:startDate];

  return v7;
}

@end