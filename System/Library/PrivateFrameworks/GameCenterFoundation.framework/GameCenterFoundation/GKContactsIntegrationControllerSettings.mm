@interface GKContactsIntegrationControllerSettings
+ (id)allBagKeys;
+ (id)secureCodedPropertyKeys;
- (GKContactsIntegrationControllerSettings)initWithBagValues:(id)values;
- (double)expirationTimeForCohort:(int)cohort;
@end

@implementation GKContactsIntegrationControllerSettings

- (GKContactsIntegrationControllerSettings)initWithBagValues:(id)values
{
  valuesCopy = values;
  v14.receiver = self;
  v14.super_class = GKContactsIntegrationControllerSettings;
  v5 = [(GKContactsIntegrationControllerSettings *)&v14 init];
  if (v5)
  {
    v5->_localSyncLimit = [valuesCopy unsignedIntegerValueFromKey:@"gk-contactid-local-sync-limit" defaultValue:1000];
    v5->_localBatchFetchSize = [valuesCopy unsignedIntegerValueFromKey:@"gk-contactid-local-batch-fetch-size" defaultValue:100];
    v5->_idsV2BatchFetchSize = [valuesCopy unsignedIntegerValueFromKey:@"gk-contactid-ids-v2-batch-fetch-size" defaultValue:20];
    v5->_idsV2FetchSize = [valuesCopy unsignedIntegerValueFromKey:@"gk-contactid-ids-v2-fetch-size" defaultValue:20];
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-update-interval-sec" defaultValue:18030.0];
    v5->_idsUpdateInterval = v6;
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-expiration-opted-in-sec" defaultValue:604800.0];
    v5->_idsExpirationTimeOptedIn = v7;
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-expiration-opted-out-sec" defaultValue:604800.0];
    v5->_idsExpirationTimeOptedOut = v8;
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-expiration-not-set-sec" defaultValue:86400.0];
    v5->_idsExpirationTimeNotSet = v9;
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-expiration-unknown-sec" defaultValue:86400.0];
    v5->_idsExpirationTimeUnknown = v10;
    v5->_allowUpdates = [valuesCopy unsignedIntegerValueFromKey:@"gk-contactid-allow-updates" defaultValue:1] == 1;
    v5->_allowUpdatesWithoutFriends = [valuesCopy unsignedIntegerValueFromKey:@"gk-contactid-allow-updates-without-friends" defaultValue:1] == 1;
    v5->_notificationCoalescingWaitTime = 7.0;
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-v2-batch-fetch-delay-sec" defaultValue:3.0];
    v5->_idsBatchFetchDelayInterval = v11;
    [valuesCopy doubleValueFromKey:@"gk-contactid-ids-v2-batch-fetch-jitter-sec" defaultValue:0.0];
    v5->_idsBatchFetchJitterInterval = v12;
  }

  return v5;
}

+ (id)allBagKeys
{
  if (allBagKeys_onceToken != -1)
  {
    +[GKContactsIntegrationControllerSettings allBagKeys];
  }

  v3 = allBagKeys_bagKeys;

  return v3;
}

void __53__GKContactsIntegrationControllerSettings_allBagKeys__block_invoke()
{
  v2[13] = *MEMORY[0x277D85DE8];
  v2[0] = @"gk-contactid-ids-update-interval-sec";
  v2[1] = @"gk-contactid-ids-v2-batch-fetch-size";
  v2[2] = @"gk-contactid-local-batch-fetch-size";
  v2[3] = @"gk-contactid-ids-v2-fetch-size";
  v2[4] = @"gk-contactid-ids-expiration-opted-in-sec";
  v2[5] = @"gk-contactid-ids-expiration-opted-out-sec";
  v2[6] = @"gk-contactid-ids-expiration-not-set-sec";
  v2[7] = @"gk-contactid-ids-expiration-unknown-sec";
  v2[8] = @"gk-contactid-allow-updates";
  v2[9] = @"gk-contactid-ids-v2-batch-fetch-delay-sec";
  v2[10] = @"gk-contactid-ids-v2-batch-fetch-jitter-sec";
  v2[11] = @"gk-contactid-local-sync-limit";
  v2[12] = @"gk-contactid-allow-updates-without-friends";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:13];
  v1 = allBagKeys_bagKeys;
  allBagKeys_bagKeys = v0;
}

- (double)expirationTimeForCohort:(int)cohort
{
  if (cohort > 1)
  {
    if (cohort != 2)
    {
      if (cohort == 3)
      {
        [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeOptedOut];
        return result;
      }

      goto LABEL_8;
    }

    [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeOptedIn];
  }

  else
  {
    if (cohort != -1)
    {
      if (cohort == 1)
      {
        [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeNotSet];
        return result;
      }

LABEL_8:
      [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeUnknown];
      return result;
    }

    return 0.0;
  }

  return result;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_2 != -1)
  {
    +[GKContactsIntegrationControllerSettings secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_2;

  return v3;
}

void __66__GKContactsIntegrationControllerSettings_secureCodedPropertyKeys__block_invoke(uint64_t a1, uint64_t a2)
{
  v5[10] = *MEMORY[0x277D85DE8];
  v4[0] = @"idsV2FetchSize";
  v5[0] = objc_opt_class();
  v4[1] = @"idsV2BatchFetchSize";
  v5[1] = objc_opt_class();
  v4[2] = @"localSyncLimit";
  v5[2] = objc_opt_class();
  v4[3] = @"localBatchFetchSize";
  v5[3] = objc_opt_class();
  v4[4] = @"idsUpdateInterval";
  v5[4] = objc_opt_class();
  v4[5] = @"idsBatchFetchJitterInterval";
  v5[5] = objc_opt_class();
  v4[6] = @"idsBatchFetchDelayInterval";
  v5[6] = objc_opt_class();
  v4[7] = @"notificationCoalescingWaitTime";
  v5[7] = objc_opt_class();
  v4[8] = @"allowUpdates";
  v5[8] = objc_opt_class();
  v4[9] = @"allowUpdatesWithoutFriends";
  v5[9] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:10];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_2;
  secureCodedPropertyKeys_sSecureCodedKeys_2 = v2;
}

@end