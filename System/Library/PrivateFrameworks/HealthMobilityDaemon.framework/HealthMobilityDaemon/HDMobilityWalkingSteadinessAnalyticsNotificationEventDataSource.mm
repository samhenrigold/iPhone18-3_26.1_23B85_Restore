@interface HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource
- (HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource)initWithProfile:(id)profile category:(id)category value:(int64_t)value date:(id)date isShowingPregnancyContent:(BOOL)content;
- (id)ageWithError:(id *)error;
- (id)areHealthNotificationsAuthorizedWithError:(id *)error;
- (id)biologicalSexWithError:(id *)error;
- (id)daysSinceLastNotificationWithError:(id *)error;
@end

@implementation HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource

- (HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource)initWithProfile:(id)profile category:(id)category value:(int64_t)value date:(id)date isShowingPregnancyContent:(BOOL)content
{
  profileCopy = profile;
  categoryCopy = category;
  dateCopy = date;
  v18.receiver = self;
  v18.super_class = HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource;
  v15 = [(HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_profile, profileCopy);
    objc_storeStrong(&v16->_category, category);
    v16->_value = value;
    objc_storeStrong(&v16->_date, date);
    v16->_isShowingPregnancyContent = content;
  }

  return v16;
}

- (id)ageWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [HDMobilityAnalyticsUtilities ageWithProfile:WeakRetained date:date error:error];

  return v6;
}

- (id)biologicalSexWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [HDMobilityAnalyticsUtilities biologicalSexWithProfile:WeakRetained error:error];

  return v5;
}

- (id)daysSinceLastNotificationWithError:(id *)error
{
  v5 = HKMobilityWalkingSteadinessEventType();
  v6 = HDSampleEntityPredicateForEndDate();
  v7 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = 0;
  v9 = [v7 mostRecentSampleWithType:v5 profile:WeakRetained encodingOptions:0 predicate:v6 anchor:0 error:&v16];
  v10 = v16;

  if (v9)
  {
    v11 = MEMORY[0x277D11AA0];
    endDate = [v9 endDate];
    v13 = [v11 numberOfDaysBetweenStartDate:endDate endDate:self->_date];
    goto LABEL_8;
  }

  endDate = v10;
  if (endDate)
  {
    if (error)
    {
      v14 = endDate;
      v13 = 0;
      *error = endDate;
      goto LABEL_8;
    }

    _HKLogDroppedError();
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)areHealthNotificationsAuthorizedWithError:(id *)error
{
  v3 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  notificationManager = [WeakRetained notificationManager];
  v6 = [v3 numberWithBool:{objc_msgSend(notificationManager, "areHealthNotificationsAuthorized")}];

  return v6;
}

@end