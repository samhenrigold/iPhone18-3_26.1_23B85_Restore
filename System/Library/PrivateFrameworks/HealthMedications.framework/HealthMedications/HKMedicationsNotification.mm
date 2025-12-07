@interface HKMedicationsNotification
+ (id)allNotificationCategories;
+ (id)notificationBeforeFirstUnlockWithScheduleItemIdentifier:(id)identifier dueDate:(id)date;
+ (id)notificationCategoryForString:(id)string;
+ (id)notificationMissedWithScheduleItemIdentifier:(id)identifier dueDate:(id)date;
+ (id)notificationNotMissedWithScheduleItemIdentifier:(id)identifier dueDate:(id)date isBatchingDoses:(BOOL)doses isCritical:(BOOL)critical isFollowUp:(BOOL)up;
- (HKMedicationsNotification)init;
- (id)_userInfoWithScheduleItemIdentifier:(void *)identifier extraUserInfo:;
- (id)initWithScheduleItemIdentifier:(void *)identifier dueDate:(void *)date category:(void *)category argument:(void *)argument extraUserInfo:;
@end

@implementation HKMedicationsNotification

- (HKMedicationsNotification)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)notificationBeforeFirstUnlockWithScheduleItemIdentifier:(id)identifier dueDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  v7 = [[HKMedicationsNotification alloc] initWithScheduleItemIdentifier:identifierCopy dueDate:dateCopy category:@"MedicationsHealthAppPlugin.BeforeFirstUnlock" argument:0 extraUserInfo:0];

  return v7;
}

+ (id)allNotificationCategories
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"MedicationsHealthAppPlugin.BeforeFirstUnlock";
  v4[1] = @"MedicationsHealthAppPlugin.NotMissed";
  v4[2] = @"MedicationsHealthAppPlugin.NotMissed.Singular";
  v4[3] = @"MedicationsHealthAppPlugin.NotMissedFollowUp";
  v4[4] = @"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular";
  v4[5] = @"MedicationsHealthAppPlugin.Missed";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

+ (id)notificationCategoryForString:(id)string
{
  stringCopy = string;
  v4 = @"MedicationsHealthAppPlugin.BeforeFirstUnlock";
  if (([stringCopy isEqualToString:@"MedicationsHealthAppPlugin.BeforeFirstUnlock"] & 1) == 0)
  {
    v4 = @"MedicationsHealthAppPlugin.NotMissed";
    if (([stringCopy isEqualToString:@"MedicationsHealthAppPlugin.NotMissed"] & 1) == 0)
    {
      v4 = @"MedicationsHealthAppPlugin.NotMissed.Singular";
      if (([stringCopy isEqualToString:@"MedicationsHealthAppPlugin.NotMissed.Singular"] & 1) == 0)
      {
        v4 = @"MedicationsHealthAppPlugin.NotMissedFollowUp";
        if (([stringCopy isEqualToString:@"MedicationsHealthAppPlugin.NotMissedFollowUp"] & 1) == 0)
        {
          v4 = @"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular";
          if (([stringCopy isEqualToString:@"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular"] & 1) == 0)
          {
            v4 = @"MedicationsHealthAppPlugin.Missed";
            if (![stringCopy isEqualToString:@"MedicationsHealthAppPlugin.Missed"])
            {
              v4 = 0;
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)initWithScheduleItemIdentifier:(void *)identifier dueDate:(void *)date category:(void *)category argument:(void *)argument extraUserInfo:
{
  v12 = a2;
  identifierCopy = identifier;
  dateCopy = date;
  categoryCopy = category;
  argumentCopy = argument;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = HKMedicationsNotification;
    v17 = objc_msgSendSuper2(&v21, sel_init);
    self = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 1, date);
      objc_storeStrong(self + 2, category);
      v19 = [(HKMedicationsNotification *)self _userInfoWithScheduleItemIdentifier:v12 extraUserInfo:argumentCopy];
      v20 = self[3];
      self[3] = v19;

      objc_storeStrong(self + 4, a2);
      objc_storeStrong(self + 5, identifier);
    }
  }

  return self;
}

+ (id)notificationMissedWithScheduleItemIdentifier:(id)identifier dueDate:(id)date
{
  dateCopy = date;
  identifierCopy = identifier;
  v7 = [[HKMedicationsNotification alloc] initWithScheduleItemIdentifier:identifierCopy dueDate:dateCopy category:@"MedicationsHealthAppPlugin.Missed" argument:0 extraUserInfo:0];

  return v7;
}

+ (id)notificationNotMissedWithScheduleItemIdentifier:(id)identifier dueDate:(id)date isBatchingDoses:(BOOL)doses isCritical:(BOOL)critical isFollowUp:(BOOL)up
{
  upCopy = up;
  criticalCopy = critical;
  dosesCopy = doses;
  v25[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dateCopy = date;
  v13 = @"MedicationsHealthAppPlugin.NotMissed";
  if (upCopy)
  {
    v13 = @"MedicationsHealthAppPlugin.NotMissedFollowUp";
  }

  v14 = v13;
  v15 = v14;
  if (!dosesCopy)
  {
    v16 = [(__CFString *)v14 isEqualToString:@"MedicationsHealthAppPlugin.NotMissed"];

    if (v16)
    {
      v15 = @"MedicationsHealthAppPlugin.NotMissed.Singular";
    }

    else
    {
      v15 = @"MedicationsHealthAppPlugin.NotMissedFollowUp.Singular";
    }
  }

  v17 = [HKMedicationsNotification alloc];
  v24[0] = @"MedicationsNotificationIsCriticalKey";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:criticalCopy];
  v25[0] = v18;
  v24[1] = @"MedicationsNotificationIsFollowUpKey";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:upCopy];
  v25[1] = v19;
  v24[2] = @"MedicationsNotificationIsBatchNotificationKey";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:dosesCopy];
  v25[2] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  v22 = [(HKMedicationsNotification *)&v17->super.isa initWithScheduleItemIdentifier:identifierCopy dueDate:dateCopy category:v15 argument:0 extraUserInfo:v21];

  return v22;
}

- (id)_userInfoWithScheduleItemIdentifier:(void *)identifier extraUserInfo:
{
  identifierCopy = identifier;
  if (self)
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = a2;
    dictionary = [v6 dictionary];
    [dictionary setObject:v7 forKeyedSubscript:@"MedicationsNotificationScheduleItemIdentifierKey"];

    if (identifierCopy)
    {
      [dictionary addEntriesFromDictionary:identifierCopy];
    }

    self = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  }

  return self;
}

@end