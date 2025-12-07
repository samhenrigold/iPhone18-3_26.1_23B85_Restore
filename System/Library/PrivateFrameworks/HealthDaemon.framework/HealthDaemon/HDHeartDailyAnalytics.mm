@interface HDHeartDailyAnalytics
- (HDHeartDailyAnalytics)init;
- (NSDictionary)payload;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateAgeInYears:(id)years;
- (void)updateAreHealthNotificationsAuthorized:(BOOL)authorized;
- (void)updateCountAnalyzedTachogramsPast24Hours:(int64_t)hours;
- (void)updateCountMobileAssetsDownloadedPast24Hours:(int64_t)hours;
- (void)updateCountRecordedTachogramsPast24Hours:(int64_t)hours;
- (void)updateElectrocardiogramClassificationCount:(int64_t)count;
- (void)updateIrregularRhythmNotificationClassificationCount:(int64_t)count;
- (void)updateIsBradycardiaDetectionEnabled:(BOOL)enabled;
- (void)updateIsEcgOnboarded:(BOOL)onboarded;
- (void)updateIsGlucoseEnhancedChartingDelivered:(BOOL)delivered;
- (void)updateIsImproveHealthAndActivityAllowed:(BOOL)allowed;
- (void)updateIsIrnOnboarded:(BOOL)onboarded;
- (void)updateIsMenstrualCyclesHeartRateInputDelivered:(BOOL)delivered;
- (void)updateIsRespiratoryRateDelivered:(BOOL)delivered;
- (void)updateIsTachycardiaDetectionEnabled:(BOOL)enabled;
- (void)updateSex:(int64_t)sex;
- (void)updateWasWatchWornPast24Hours:(BOOL)hours;
- (void)updateWithElectrocardiogramClassifications:(id)classifications isWithin24HoursPostIRN:(BOOL)n;
@end

@implementation HDHeartDailyAnalytics

- (HDHeartDailyAnalytics)init
{
  v6.receiver = self;
  v6.super_class = HDHeartDailyAnalytics;
  v2 = [(HDHeartDailyAnalytics *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    payload = v2->_payload;
    v2->_payload = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = objc_msgSend_copy(self->_payload);
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (NSDictionary)payload
{
  v2 = objc_msgSend_copy(self->_payload, a2);

  return v2;
}

- (void)updateIsEcgOnboarded:(BOOL)onboarded
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:onboarded];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isECGOnboarded"];
}

- (void)updateIsIrnOnboarded:(BOOL)onboarded
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:onboarded];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isIRNOnboarded"];
}

- (void)updateIsImproveHealthAndActivityAllowed:(BOOL)allowed
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:allowed];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];
}

- (void)updateElectrocardiogramClassificationCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"ecgCount"];
}

- (void)updateIrregularRhythmNotificationClassificationCount:(int64_t)count
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:count];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"irregularRhythmNotificationCount"];
}

- (void)updateWithElectrocardiogramClassifications:(id)classifications isWithin24HoursPostIRN:(BOOL)n
{
  nCopy = n;
  v24 = *MEMORY[0x277D85DE8];
  classificationsCopy = classifications;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [classificationsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(classificationsCopy);
        }

        unsignedIntegerValue = [*(*(&v19 + 1) + 8 * v10) unsignedIntegerValue];
        if (!nCopy)
        {
          if (self)
          {
            v12 = off_27862D970;
            v13 = @"ecgClassificationCountWithin24HoursUnknown";
            if (unsignedIntegerValue > 0xA)
            {
              goto LABEL_13;
            }

LABEL_12:
            v13 = v12[unsignedIntegerValue];
            goto LABEL_13;
          }

LABEL_18:
          v13 = 0;
          goto LABEL_13;
        }

        if (!self)
        {
          goto LABEL_18;
        }

        v12 = off_27862D918;
        v13 = @"ecgClassificationCountWithin24HoursPostIRNUnknown";
        if (unsignedIntegerValue < 0xB)
        {
          goto LABEL_12;
        }

LABEL_13:
        v14 = v13;
        v15 = [(NSMutableDictionary *)self->_payload objectForKeyedSubscript:v14];
        v16 = v15;
        if (v15)
        {
          v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "integerValue") + 1}];
          [(NSMutableDictionary *)self->_payload setObject:v17 forKeyedSubscript:v14];
        }

        else
        {
          [(NSMutableDictionary *)self->_payload setObject:&unk_283CB3FA8 forKeyedSubscript:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v18 = [classificationsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
      v8 = v18;
    }

    while (v18);
  }
}

- (void)updateWasWatchWornPast24Hours:(BOOL)hours
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:hours];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"wasWatchWornPast24Hours"];
}

- (void)updateCountRecordedTachogramsPast24Hours:(int64_t)hours
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:hours];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"countRecordedTachogramsPast24Hours"];
}

- (void)updateCountAnalyzedTachogramsPast24Hours:(int64_t)hours
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:hours];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"countAnalyzedTachogramsPast24Hours"];
}

- (void)updateCountMobileAssetsDownloadedPast24Hours:(int64_t)hours
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:hours];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"countMobileAssetsDownloadedPast24Hours"];
}

- (void)updateAgeInYears:(id)years
{
  yearsCopy = years;
  v5 = MEMORY[0x277CCABB0];
  v6 = yearsCopy;
  v9 = v6;
  if (v6)
  {
    if ([v6 integerValue] >= 22)
    {
      if ([v9 integerValue] >= 30)
      {
        if ([v9 integerValue] > 99)
        {
          v7 = 100;
        }

        else
        {
          v7 = 10 * ([v9 integerValue] / 10);
        }
      }

      else
      {
        v7 = 22;
      }
    }

    else
    {
      v7 = 21;
    }
  }

  else
  {
    v7 = -1;
  }

  v8 = [v5 numberWithInteger:v7];
  [(NSMutableDictionary *)self->_payload setObject:v8 forKeyedSubscript:@"age"];
}

- (void)updateSex:(int64_t)sex
{
  if (sex > 3)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = off_27862D9C8[sex];
  }

  [(NSMutableDictionary *)self->_payload setObject:v3 forKeyedSubscript:@"sex"];
}

- (void)updateAreHealthNotificationsAuthorized:(BOOL)authorized
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:authorized];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"areHealthNotificationsAuthorized"];
}

- (void)updateIsGlucoseEnhancedChartingDelivered:(BOOL)delivered
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:delivered];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isGlucoseEnhancedChartingDelivered"];
}

- (void)updateIsTachycardiaDetectionEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isTachycardiaDetectionEnabled"];
}

- (void)updateIsBradycardiaDetectionEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isBradycardiaDetectionEnabled"];
}

- (void)updateIsMenstrualCyclesHeartRateInputDelivered:(BOOL)delivered
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:delivered];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isMenstrualCyclesHeartRateInputDelivered"];
}

- (void)updateIsRespiratoryRateDelivered:(BOOL)delivered
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:delivered];
  [(NSMutableDictionary *)self->_payload setObject:v4 forKeyedSubscript:@"isRespiratoryRateDelivered"];
}

@end