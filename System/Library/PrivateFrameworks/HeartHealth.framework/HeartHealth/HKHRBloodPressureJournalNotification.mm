@interface HKHRBloodPressureJournalNotification
+ (id)allBloodPressureJournalNotificationCategoryIdentifiers;
+ (id)notificationForLearnHypertensionRiskWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up measurementIndex:(int64_t)index measurementCount:(int64_t)count measurementWindowType:(int64_t)type;
+ (id)notificationToMonitorHypertensionWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up;
- (HKHRBloodPressureJournalNotification)initWithIdentifier:(id)identifier dueDate:(id)date category:(id)category userInfo:(id)info;
@end

@implementation HKHRBloodPressureJournalNotification

+ (id)notificationForLearnHypertensionRiskWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up measurementIndex:(int64_t)index measurementCount:(int64_t)count measurementWindowType:(int64_t)type
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = @"BloodPressureJournalNotificationMeasurementIndexKey";
  v12 = MEMORY[0x277CCABB0];
  dateCopy = date;
  identifierCopy = identifier;
  v15 = [v12 numberWithInteger:index];
  v22[0] = v15;
  v21[1] = @"BloodPressureJournalNotificationMeasurementCountKey";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  v22[1] = v16;
  v21[2] = @"BloodPressureJournalNotificationMeasurementWindowTypeKey";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v21[3] = @"BloodPressureJournalNotificationJournalTypeKey";
  v22[2] = v17;
  v22[3] = &unk_283BE0DE0;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v19 = [[HKHRBloodPressureJournalNotification alloc] initWithIdentifier:identifierCopy dueDate:dateCopy category:@"BloodPressureJournalNotificationCategoryLearnHypertensionRisk" userInfo:v18];

  return v19;
}

+ (id)notificationToMonitorHypertensionWithIdentifier:(id)identifier dueDate:(id)date isFollowUp:(BOOL)up
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"BloodPressureJournalNotificationJournalTypeKey";
  v13[0] = &unk_283BE0DF8;
  v6 = MEMORY[0x277CBEAC0];
  dateCopy = date;
  identifierCopy = identifier;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [[HKHRBloodPressureJournalNotification alloc] initWithIdentifier:identifierCopy dueDate:dateCopy category:@"BloodPressureJournalNotificationCategoryMonitorHypertension" userInfo:v9];

  return v10;
}

- (HKHRBloodPressureJournalNotification)initWithIdentifier:(id)identifier dueDate:(id)date category:(id)category userInfo:(id)info
{
  identifierCopy = identifier;
  dateCopy = date;
  categoryCopy = category;
  infoCopy = info;
  v18.receiver = self;
  v18.super_class = HKHRBloodPressureJournalNotification;
  v15 = [(HKHRBloodPressureJournalNotification *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_dueDate, date);
    objc_storeStrong(&v16->_category, category);
    objc_storeStrong(&v16->_userInfo, info);
  }

  return v16;
}

+ (id)allBloodPressureJournalNotificationCategoryIdentifiers
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"BloodPressureJournalNotificationCategoryLearnHypertensionRisk";
  v4[1] = @"BloodPressureJournalNotificationCategoryMonitorHypertension";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end