@interface FCPaidBundleConfiguration
+ (id)defaultConfigurationForStorefrontID:(id)d;
+ (id)defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID;
+ (id)defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID;
+ (id)defaultFamilySharingLandingPageByLocalizedStorefrontID;
+ (id)defaultLandingPageByLocalizedStorefrontID;
+ (id)defaultPaidFeedIDByLocalizedStorefrontID;
+ (id)defaultServicesBundleLandingPageByLocalizedStorefrontID;
+ (id)defaultTagListIDByLocalizedStorefrontID;
+ (id)defaultVanityURLMappingResourceIDByLocalizedStorefrontID;
+ (id)renewalLandingPageByLocalizedStorefrontID;
- (BOOL)appLaunchUpsellLastSeenDateSyncEnabled;
- (BOOL)appLaunchUpsellLastShownCampaignIDSyncEnabled;
- (BOOL)areMagazinesEnabled;
- (BOOL)arePaywallConfigsEqualToOtherPaidBundleConfig:(id)config;
- (BOOL)audioRefreshForceWakeEnabled;
- (BOOL)forYouIncludePaidSectionFeedsForFreeUsers;
- (BOOL)forYouIncludePaidSectionFeedsForPaidUsers;
- (BOOL)isCategoriesDownloadButtonEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFamilySharingSetupEnabled;
- (BOOL)isFreeBadgeEnabledForNonSubscribers;
- (BOOL)isFreeBadgeEnabledForSubscribers;
- (BOOL)isNarrativeAudioEnabled;
- (BOOL)isPaidBadgeEnabledForNonSubscribers;
- (BOOL)isPaidBadgeEnabledForSubscribers;
- (BOOL)requiresHardPaywallForIssuesToC;
- (BOOL)widgetUpsellFeaturesEnabled;
- (FCPaidBundleConfiguration)init;
- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)dictionary;
- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)dictionary storefrontID:(id)d;
- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)dictionary storefrontID:(id)d localizedStorefrontID:(id)iD defaultSupportedStoreFronts:(id)fronts;
- (NSArray)audioChannelPaywallOverrideAllowedTagIDs;
- (NSArray)audioFeedPaywallPositions;
- (NSArray)groupWhitelistedTagIds;
- (NSArray)offeredBundlePurchaseIDs;
- (NSArray)restorableBundlePurchaseIDs;
- (NSDate)appLaunchUpsellCampaignEndDate;
- (NSDate)appLaunchUpsellCampaignStartDate;
- (NSDictionary)audioPaywallConfigurationsByType;
- (NSDictionary)audioServicesBundlePaywallConfigurationsByType;
- (NSDictionary)audioUpsellConfigurationsByID;
- (NSDictionary)bundleViaOfferSubscriptionButtonConfigurationsByType;
- (NSDictionary)carrierServicesBundleSubscriptionButtonConfigurationsByType;
- (NSDictionary)flexiblePaywallConfig;
- (NSDictionary)magazineGenresByGenre;
- (NSDictionary)offeredBundlePurchaseIDsMap;
- (NSDictionary)paywallConfigurationsByType;
- (NSDictionary)servicesBundlePaywallConfigurationsByType;
- (NSDictionary)servicesBundleSubscriptionButtonConfigurationsByType;
- (NSDictionary)subscriptionButtonConfigurationsByType;
- (NSString)appLaunchUpsellArticleID;
- (NSString)appLaunchUpsellCampaignID;
- (NSString)appLaunchUpsellInstanceID;
- (NSString)audioArticlesChannelId;
- (NSString)audioDailyBriefingFeatureName;
- (NSString)audioUpsellArticleID;
- (NSString)audioUpsellInstanceID;
- (NSString)defaultLandingPageArticleID;
- (NSString)defaultServicesBundleLandingPageArticleID;
- (NSString)endOfPurchaseFamilySharingSetupArticleID;
- (NSString)endOfPurchaseNoFamilySharingSetupArticleID;
- (NSString)endOfPurchaseServicesBundleFamilySharingSetupArticleID;
- (NSString)endOfPurchaseServicesBundleNoFamilySharingSetupArticleID;
- (NSString)expirationAlertDescription;
- (NSString)familySharingLandingPageArticleID;
- (NSString)featuredArticlesTagList;
- (NSString)freeBadgeTitle;
- (NSString)globalFeedIDForFreeUsers;
- (NSString)globalFeedIDForPaidUsers;
- (NSString)osloAbandonmentUpsellArticleID;
- (NSString)osloAbandonmentUpsellInstanceID;
- (NSString)paidBadgeTitle;
- (NSString)recommendableIssuesTagList;
- (NSString)renewalLandingPageArticleID;
- (NSString)servicesBundleMetricsTopicName;
- (NSString)todayMastheadPaywallConfiguration;
- (NSString)vanityURLMappingResourceID;
- (double)maxPriceDeltaThreshold;
- (id)defaultAudioPaywallConfigs;
- (id)defaultMagazineGenres;
- (id)defaultPaywallConfigs;
- (id)defaultServicesBundleSubscriptionButtonConfigs;
- (id)defaultSubscriptionButtonConfigs;
- (id)paywallConfigurationsByTypeForKey:(id)key;
- (id)postPurchaseOnboardingConfigurationsByTypeForKey:(id)key;
- (id)subscriptionButtonConfigurationsByTypeForKey:(id)key;
- (int64_t)appLaunchUpsellBehaviorFlags;
- (int64_t)appLaunchUpsellNewSessionBackgroundTimeInterval;
- (int64_t)appLaunchUpsellPresentationDelay;
- (int64_t)appLaunchUpsellQuiescenceInterval;
- (int64_t)appLaunchUpsellRequiredAppLaunchCount;
- (int64_t)audioCloseIdlePlayerAfterTime;
- (int64_t)audioFinishedAtTimeFromEnd;
- (int64_t)audioOfflineArticlesMaxCountCriticalStorage;
- (int64_t)audioOfflineArticlesMaxCountLowStorage;
- (int64_t)audioOfflineArticlesMaxCountNormalStorage;
- (int64_t)audioRecentlyPlayedMaxCount;
- (int64_t)audioRefreshForceWakeRandomizationWindow;
- (int64_t)audioRefreshTimeGMT;
- (int64_t)audioRewindToParagraphStartAfterTime;
- (int64_t)audioSuggestionsHighlyPersonalizedCount;
- (int64_t)audioSuggestionsMaxAge;
- (int64_t)audioSuggestionsMaxCount;
- (int64_t)audioSuggestionsMaxIgnoreCount;
- (int64_t)audioSuggestionsRecycleAfterTime;
- (int64_t)audioUpsellMaxDisplayCount;
- (int64_t)bundleSubscriptionsGlobalMeteredCount;
- (int64_t)criticalStorageAutomaticIssueDownloadTTL;
- (int64_t)criticalStorageManualIssueDownloadTTL;
- (int64_t)entitlementsCacheExpiredGracePeriodInSeconds;
- (int64_t)entitlementsGracePeriodInSeconds;
- (int64_t)featuredArticlesFetchLimit;
- (int64_t)feedAutoRefreshMinimumInterval;
- (int64_t)forYouMaxDailyPaidArticlesForFreeUsers;
- (int64_t)forYouMaxMagazineGroupsForFreeUsers;
- (int64_t)forYouMaxMagazineGroupsForPaidUsers;
- (int64_t)forYouMaxMagazineGroupsForTrialUsers;
- (int64_t)lowStorageAutomaticIssueDownloadTTL;
- (int64_t)lowStorageManualIssueDownloadTTL;
- (int64_t)maxAllowedSubscriptionDetectionTime;
- (int64_t)maximumArticlesWithSoftPaywallPerSession;
- (int64_t)minFollowedMagazinesToHideSuggestionsCompact;
- (int64_t)minFollowedMagazinesToHideSuggestionsRegular;
- (int64_t)minimumArticlesBeforeArticleSoftPaywall;
- (int64_t)minimumArticlesInANFIssueBeforeRead;
- (int64_t)minimumPagesInPDFIssueBeforeRead;
- (int64_t)minimumReadIssuesInMyMagazines;
- (int64_t)newIssuesCheckLocalTime;
- (int64_t)newIssuesNotificationDeliveryLocalTime;
- (int64_t)normalStorageAutomaticIssueDownloadTTL;
- (int64_t)normalStorageManualIssueDownloadTTL;
- (int64_t)osloAbandonmentUpsellMaxPresentationCount;
- (int64_t)osloAbandonmentUpsellQuiescenceInterval;
- (int64_t)recentIssuesMaxAge;
- (int64_t)vanityURLMappingRefreshRate;
- (unint64_t)appLaunchUpsellBundleTrialVisibility;
- (unint64_t)appLaunchUpsellPaidVisibility;
- (unint64_t)articleHardPaywallType;
- (unint64_t)audioFeedPaywallSubtype;
- (unint64_t)hash;
- (unint64_t)magazineFeedPaywallSubtype;
- (unint64_t)paywallConfigsOfferType;
- (unint64_t)subscriptionLinkTargetType;
@end

@implementation FCPaidBundleConfiguration

- (unint64_t)paywallConfigsOfferType
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 integerForKey:@"newssubscription.paywall_configs.config_overrides.config_type"];

  if (!v4)
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v4 = FCAppConfigurationIntegerValue(configDict, @"paywallConfigsOfferType", 0);
  }

  return v4;
}

- (NSString)appLaunchUpsellArticleID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"appLaunchUpsellArticleID", 0);

  return v3;
}

- (BOOL)isFreeBadgeEnabledForNonSubscribers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"freeBadgeEnabled", 0);

  return v3;
}

- (BOOL)isPaidBadgeEnabledForNonSubscribers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"paidBadgeEnabled", 1);

  return v3;
}

- (BOOL)areMagazinesEnabled
{
  if (qword_1EDB276F8 != -1)
  {
    dispatch_once(&qword_1EDB276F8, &__block_literal_global_99);
  }

  if (_MergedGlobals_187)
  {
    return 1;
  }

  v4 = +[FCAppleAccount sharedAccount];
  isContentStoreFrontSupported = [v4 isContentStoreFrontSupported];

  if (!isContentStoreFrontSupported)
  {
    return 0;
  }

  defaultSupportedStoreFronts = [(FCPaidBundleConfiguration *)self defaultSupportedStoreFronts];
  storefrontID = [(FCPaidBundleConfiguration *)self storefrontID];
  if ([defaultSupportedStoreFronts containsObject:storefrontID])
  {
    v8 = 7;
  }

  else
  {
    v8 = 0;
  }

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v10 = FCAppConfigurationIntegerValueWithDefaultValueIfMissing(configDict, @"enabledLevel", v8, 0);

  return v10 & 1;
}

void __48__FCPaidBundleConfiguration_areMagazinesEnabled__block_invoke(uint64_t a1)
{
  if (NFInternalBuild())
  {
    v1 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [v3 stringForKey:@"news.features.magazines"];
    _MergedGlobals_187 = [v1 fc_string:@"enabled" isEqualToString:v2];
  }

  else
  {
    _MergedGlobals_187 = 0;
  }
}

- (BOOL)isNarrativeAudioEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults stringForKey:@"news.features.audio"];

  if ([MEMORY[0x1E696AEC0] fc_string:v4 isEqualToString:@"enabled"])
  {
    v5 = 1;
  }

  else if (([MEMORY[0x1E696AEC0] fc_string:v4 isEqualToString:@"disabled"] & 1) != 0 || (+[FCAppleAccount sharedAccount](FCAppleAccount, "sharedAccount"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isContentStoreFrontSupported"), v6, !v7))
  {
    v5 = 0;
  }

  else
  {
    if (NFInternalBuild())
    {
      v8 = 1;
    }

    else if (NFSeedBuild())
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{@"143441", @"143444", @"143460", @"143455", 0}];
    localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
    v11 = [v9 containsObject:localizedStorefrontID];

    if (v11)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }

    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v14 = FCAppConfigurationIntegerValue(configDict, @"audioEnabledLevel", v12);

    v5 = (v14 & v8) != 0;
  }

  return v5;
}

- (NSArray)offeredBundlePurchaseIDs
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 arrayForKey:@"newssubscription.bundle_subscriptions.offered_purchase_ids"];

  if (v4)
  {
    firstObject = [v4 firstObject];
    if (firstObject)
    {
      v6 = firstObject;
      firstObject2 = [v4 firstObject];
      if ([firstObject2 length])
      {
        v8 = NFInternalBuild();

        if (v8)
        {
          v9 = v4;
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v9 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"offeredPurchaseIds", &unk_1F2E6FA68);

LABEL_8:

  return v9;
}

- (int64_t)bundleSubscriptionsGlobalMeteredCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"bundleSubscriptionsGlobalMeteredCount2", 15);

  return v3;
}

- (int64_t)minimumArticlesBeforeArticleSoftPaywall
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"minimumArticlesBeforeArticleSoftPaywall", 0);

  return v3;
}

- (int64_t)maximumArticlesWithSoftPaywallPerSession
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"maximumArticlesWithSoftPaywallPerSession", 10000);

  return v3;
}

- (NSString)vanityURLMappingResourceID
{
  v3 = +[FCPaidBundleConfiguration defaultVanityURLMappingResourceIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"vanityUrlMappingResourceId", v5);

  return v7;
}

+ (id)defaultVanityURLMappingResourceIDByLocalizedStorefrontID
{
  if (qword_1EDB27778 != -1)
  {
    dispatch_once(&qword_1EDB27778, &__block_literal_global_566);
  }

  v3 = qword_1EDB27770;

  return v3;
}

void __85__FCPaidBundleConfiguration_defaultVanityURLMappingResourceIDByLocalizedStorefrontID__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143441"];
  v8[0] = v0;
  v7[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143455"];
  v8[1] = v1;
  v7[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"VUM", @"143455"];
  v8[2] = v2;
  v7[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143444"];
  v8[3] = v3;
  v7[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"VUM", @"143460"];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = qword_1EDB27770;
  qword_1EDB27770 = v5;
}

- (int64_t)vanityURLMappingRefreshRate
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"vanityUrlMappingRefreshRate", 3600);

  return v3;
}

- (FCPaidBundleConfiguration)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPaidBundleConfiguration init]";
    v10 = 2080;
    v11 = "FCPaidBundleConfiguration.m";
    v12 = 1024;
    v13 = 67;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPaidBundleConfiguration init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[FCAppleAccount sharedAccount];
  supportedContentStoreFrontID = [v5 supportedContentStoreFrontID];
  v7 = +[FCAppleAccount sharedAccount];
  supportedLocalizedContentStoreFrontID = [v7 supportedLocalizedContentStoreFrontID];
  v9 = FCSupportedStoreFrontIDs();
  allObjects = [v9 allObjects];
  v11 = [(FCPaidBundleConfiguration *)self initWithConfigDictionary:dictionaryCopy storefrontID:supportedContentStoreFrontID localizedStorefrontID:supportedLocalizedContentStoreFrontID defaultSupportedStoreFronts:allObjects];

  return v11;
}

- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)dictionary storefrontID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v8 = FCSupportedStoreFrontIDs();
  allObjects = [v8 allObjects];
  v10 = [(FCPaidBundleConfiguration *)self initWithConfigDictionary:dictionaryCopy storefrontID:dCopy localizedStorefrontID:dCopy defaultSupportedStoreFronts:allObjects];

  return v10;
}

- (FCPaidBundleConfiguration)initWithConfigDictionary:(id)dictionary storefrontID:(id)d localizedStorefrontID:(id)iD defaultSupportedStoreFronts:(id)fronts
{
  dictionaryCopy = dictionary;
  dCopy = d;
  iDCopy = iD;
  frontsCopy = fronts;
  v34.receiver = self;
  v34.super_class = FCPaidBundleConfiguration;
  v14 = [(FCPaidBundleConfiguration *)&v34 init];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [dictionaryCopy copy];
  configDict = v14->_configDict;
  v14->_configDict = v15;

  v17 = [dCopy copy];
  storefrontID = v14->_storefrontID;
  v14->_storefrontID = v17;

  v19 = [iDCopy copy];
  localizedStorefrontID = v14->_localizedStorefrontID;
  v14->_localizedStorefrontID = v19;

  objc_storeStrong(&v14->_defaultSupportedStoreFronts, fronts);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  keyedPaywallConfigurationsByType = v14->_keyedPaywallConfigurationsByType;
  v14->_keyedPaywallConfigurationsByType = dictionary;

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  keyedSubscriptionButtonConfigurationsByType = v14->_keyedSubscriptionButtonConfigurationsByType;
  v14->_keyedSubscriptionButtonConfigurationsByType = dictionary2;

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  keyedPostPurchaseOnboardingConfigurationsByType = v14->_keyedPostPurchaseOnboardingConfigurationsByType;
  v14->_keyedPostPurchaseOnboardingConfigurationsByType = dictionary3;

  v27 = [objc_alloc(MEMORY[0x1E69B6920]) initWithOptions:1];
  lock = v14->_lock;
  v14->_lock = v27;

  v29 = FCAppConfigurationStringValue(dictionaryCopy, @"articleSoftPaywallPosition", @"top");
  if (![v29 isEqualToString:@"top"])
  {
    if ([v29 isEqualToString:@"both"])
    {
      v30 = 2;
      goto LABEL_10;
    }

    if ([v29 isEqualToString:@"bottom"])
    {
      v30 = 4;
      goto LABEL_10;
    }

    if ([v29 isEqualToString:@"none"])
    {
      v30 = 1;
      goto LABEL_10;
    }
  }

  v30 = 3;
LABEL_10:
  v14->_articleSoftPaywallPosition = v30;
  v31 = FCAppConfigurationStringValue(dictionaryCopy, @"aLaCarteArticleSoftPaywallPosition", @"bottom");
  if ([v31 isEqualToString:@"top"])
  {
    v32 = 2;
  }

  else if ([v31 isEqualToString:@"bottom"] || !objc_msgSend(v31, "isEqualToString:", @"none"))
  {
    v32 = 3;
  }

  else
  {
    v32 = 1;
  }

  v14->_aLaCarteArticleSoftPaywallPosition = v32;

LABEL_17:
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = MEMORY[0x1E69E58C0];
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    configDict2 = [v6 configDict];
    if ([v7 nf_object:configDict isEqualToObject:configDict2])
    {
      v10 = MEMORY[0x1E69E58C0];
      storefrontID = [(FCPaidBundleConfiguration *)self storefrontID];
      storefrontID2 = [v6 storefrontID];
      if ([v10 nf_object:storefrontID isEqualToObject:storefrontID2])
      {
        v13 = MEMORY[0x1E69E58C0];
        localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
        localizedStorefrontID2 = [v6 localizedStorefrontID];
        v16 = [v13 nf_object:localizedStorefrontID isEqualToObject:localizedStorefrontID2];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v4 = [configDict hash];
  storefrontID = [(FCPaidBundleConfiguration *)self storefrontID];
  v6 = [storefrontID hash] ^ v4;
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v8 = [localizedStorefrontID hash];

  return v6 ^ v8;
}

- (BOOL)arePaywallConfigsEqualToOtherPaidBundleConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    paywallConfigsOfferType = [(FCPaidBundleConfiguration *)self paywallConfigsOfferType];
    if (paywallConfigsOfferType == [configCopy paywallConfigsOfferType])
    {
      configDict = [(FCPaidBundleConfiguration *)self configDict];
      v7 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"paywallConfigs", 0);

      configDict2 = [configCopy configDict];
      v9 = FCAppConfigurationArrayValueWithDefaultValue(configDict2, @"paywallConfigs", 0);

      if (([MEMORY[0x1E69E58C0] nf_object:v7 isEqualToObject:v9] & 1) == 0)
      {
        v33 = FCPaywallLog;
        v27 = 0;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'paywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_31;
      }

      configDict3 = [(FCPaidBundleConfiguration *)self configDict];
      v11 = FCAppConfigurationArrayValueWithDefaultValue(configDict3, @"audioPaywallConfigs", 0);

      configDict4 = [configCopy configDict];
      v13 = FCAppConfigurationArrayValueWithDefaultValue(configDict4, @"audioPaywallConfigs", 0);

      if (([MEMORY[0x1E69E58C0] nf_object:v11 isEqualToObject:v13] & 1) == 0)
      {
        v34 = FCPaywallLog;
        v27 = 0;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v34, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'audioPaywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_30;
      }

      v41 = v11;
      configDict5 = [(FCPaidBundleConfiguration *)self configDict];
      v15 = FCAppConfigurationArrayValueWithDefaultValue(configDict5, @"sbPaywallConfigs", 0);

      configDict6 = [configCopy configDict];
      v17 = FCAppConfigurationArrayValueWithDefaultValue(configDict6, @"sbPaywallConfigs", 0);

      if (([MEMORY[0x1E69E58C0] nf_object:v15 isEqualToObject:v17] & 1) == 0)
      {
        v35 = FCPaywallLog;
        v27 = 0;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'sbPaywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_29;
      }

      v39 = v15;
      configDict7 = [(FCPaidBundleConfiguration *)self configDict];
      v19 = FCAppConfigurationArrayValueWithDefaultValue(configDict7, @"audioSbPaywallConfigs", 0);

      configDict8 = [configCopy configDict];
      v21 = FCAppConfigurationArrayValueWithDefaultValue(configDict8, @"audioSbPaywallConfigs", 0);

      v40 = v19;
      if (([MEMORY[0x1E69E58C0] nf_object:v19 isEqualToObject:v21] & 1) == 0)
      {
        v36 = FCPaywallLog;
        v27 = 0;
        v15 = v39;
        if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_DEFAULT, "PaywallConfigs are not equal: 'audioSbPaywallConfigs' have changed", buf, 2u);
          v27 = 0;
        }

        goto LABEL_28;
      }

      configDict9 = [(FCPaidBundleConfiguration *)self configDict];
      v23 = FCAppConfigurationArrayValueWithDefaultValue(configDict9, @"flexiblePaywallConfig", 0);

      configDict10 = [configCopy configDict];
      v25 = FCAppConfigurationArrayValueWithDefaultValue(configDict10, @"flexiblePaywallConfig", 0);

      v26 = v23;
      v38 = v25;
      v27 = [MEMORY[0x1E69E58C0] nf_object:v23 isEqualToObject:v25];
      v28 = FCPaywallLog;
      v29 = os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        v15 = v39;
        if (v29)
        {
          *buf = 0;
          v30 = "PaywallConfigs are equal";
LABEL_26:
          _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
        }
      }

      else
      {
        v15 = v39;
        if (v29)
        {
          *buf = 0;
          v30 = "PaywallConfigs are not equal: 'flexiblePaywallConfig' have changed";
          goto LABEL_26;
        }
      }

LABEL_28:
LABEL_29:

      v11 = v41;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    v31 = FCPaywallLog;
    if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = "PaywallConfigs are not equal: the offer type has changed";
      goto LABEL_14;
    }
  }

  else
  {
    v31 = FCPaywallLog;
    if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v32 = "PaywallConfigs are not equal: the other object is nil";
LABEL_14:
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
    }
  }

  v27 = 0;
LABEL_32:

  return v27;
}

- (id)paywallConfigurationsByTypeForKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  lock = [(FCPaidBundleConfiguration *)self lock];
  [lock lock];

  v6 = [(NSMutableDictionary *)self->_keyedPaywallConfigurationsByType objectForKeyedSubscript:keyCopy];
  lock2 = [(FCPaidBundleConfiguration *)self lock];
  [lock2 unlock];

  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(configDict, keyCopy, 0);

    if (v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[FCPaywallConfiguration alloc] initWithConfigDictionary:*(*(&v23 + 1) + 8 * i)];
            paywallType = [(FCPaywallConfiguration *)v16 paywallType];
            if (v16)
            {
              v18 = paywallType == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:paywallType];
              [dictionary fc_safelySetObject:v16 forKey:v19];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      lock3 = [(FCPaidBundleConfiguration *)self lock];
      [lock3 lock];

      [(NSMutableDictionary *)self->_keyedPaywallConfigurationsByType fc_safelySetObject:dictionary forKey:keyCopy];
      lock4 = [(FCPaidBundleConfiguration *)self lock];
      [lock4 unlock];

      v6 = 0;
    }

    else
    {
      dictionary = 0;
    }
  }

  return dictionary;
}

- (id)subscriptionButtonConfigurationsByTypeForKey:(id)key
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  lock = [(FCPaidBundleConfiguration *)self lock];
  [lock lock];

  v6 = [(NSMutableDictionary *)self->_keyedSubscriptionButtonConfigurationsByType objectForKeyedSubscript:keyCopy];
  lock2 = [(FCPaidBundleConfiguration *)self lock];
  [lock2 unlock];

  if (v6)
  {
    dictionary = v6;
  }

  else
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v10 = FCAppConfigurationArrayValueWithDefaultValue(configDict, keyCopy, 0);

    if (v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [[FCSubscriptionButtonConfiguration alloc] initWithConfigDictionary:*(*(&v23 + 1) + 8 * i)];
            subscriptionButtonType = [(FCSubscriptionButtonConfiguration *)v16 subscriptionButtonType];
            if (v16)
            {
              v18 = subscriptionButtonType == 0;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:subscriptionButtonType];
              [dictionary fc_safelySetObject:v16 forKey:v19];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v13);
      }

      lock3 = [(FCPaidBundleConfiguration *)self lock];
      [lock3 lock];

      [(NSMutableDictionary *)self->_keyedSubscriptionButtonConfigurationsByType fc_safelySetObject:dictionary forKey:keyCopy];
      lock4 = [(FCPaidBundleConfiguration *)self lock];
      [lock4 unlock];

      v6 = 0;
    }

    else
    {
      dictionary = 0;
    }
  }

  return dictionary;
}

- (id)postPurchaseOnboardingConfigurationsByTypeForKey:(id)key
{
  keyCopy = key;
  lock = [(FCPaidBundleConfiguration *)self lock];
  [lock lock];

  v6 = [(NSMutableDictionary *)self->_keyedPostPurchaseOnboardingConfigurationsByType objectForKeyedSubscript:keyCopy];
  lock2 = [(FCPaidBundleConfiguration *)self lock];
  [lock2 unlock];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v10 = FCAppConfigurationDictionaryValueWithDefaultValue(configDict, keyCopy, 0);

    if (v10)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke;
      v17[3] = &unk_1E7C3F720;
      v12 = dictionary;
      v18 = v12;
      [v10 enumerateKeysAndObjectsUsingBlock:v17];
      lock3 = [(FCPaidBundleConfiguration *)self lock];
      [lock3 lock];

      [(NSMutableDictionary *)self->_keyedPostPurchaseOnboardingConfigurationsByType fc_safelySetObject:v12 forKey:keyCopy];
      lock4 = [(FCPaidBundleConfiguration *)self lock];
      [lock4 unlock];

      v15 = v18;
      v8 = v12;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = FCPostPurchaseOnboardingConfigurationTypeWithValue(v5);
    v8 = [MEMORY[0x1E695DF70] array];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke_2;
    v14[3] = &unk_1E7C41DD8;
    v15 = v8;
    v9 = v8;
    [v6 enumerateObjectsUsingBlock:v14];
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v10 fc_safelySetObject:v9 forKey:v11];
  }

  else
  {
    v12 = FCAppConfigurationLog;
    if (os_log_type_enabled(FCAppConfigurationLog, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_ERROR, "Incorrect json structure received for onboarding steps. Expected a JSON array of onboarding steps.", v13, 2u);
    }
  }
}

uint64_t __78__FCPaidBundleConfiguration_postPurchaseOnboardingConfigurationsByTypeForKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = [[FCPostPurchaseOnboardingConfiguration alloc] initWithConfigDictionary:v3];

  v4 = [(FCPostPurchaseOnboardingConfiguration *)v8 postPurchaseOnboardingStep];
  v5 = v8;
  if (v8)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v4 = [*(a1 + 32) addObject:v8];
    v5 = v8;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (NSDictionary)flexiblePaywallConfig
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDict, @"flexiblePaywallConfig", 0);

  return v3;
}

- (unint64_t)subscriptionLinkTargetType
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 integerForKey:@"newssubscription.subscriptionlink.target_type"];

  if (!v4)
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v4 = FCAppConfigurationIntegerValue(configDict, @"subscriptionLinkTargetType", 0);
  }

  return v4;
}

- (double)maxPriceDeltaThreshold
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationDoubleValue(configDict, @"maxDeltaThreshold", 0.0);

  return v3;
}

- (NSDictionary)paywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"paywallConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultPaywallConfigs = v3;
  }

  else
  {
    defaultPaywallConfigs = [(FCPaidBundleConfiguration *)self defaultPaywallConfigs];
  }

  v6 = defaultPaywallConfigs;

  return v6;
}

- (NSDictionary)servicesBundlePaywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"sbPaywallConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultPaywallConfigs = v3;
  }

  else
  {
    defaultPaywallConfigs = [(FCPaidBundleConfiguration *)self defaultPaywallConfigs];
  }

  v6 = defaultPaywallConfigs;

  return v6;
}

- (NSDictionary)audioPaywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"audioPaywallConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultAudioPaywallConfigs = v3;
  }

  else
  {
    defaultAudioPaywallConfigs = [(FCPaidBundleConfiguration *)self defaultAudioPaywallConfigs];
  }

  v6 = defaultAudioPaywallConfigs;

  return v6;
}

- (NSDictionary)audioServicesBundlePaywallConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByTypeForKey:@"audioSbPaywallConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultAudioPaywallConfigs = v3;
  }

  else
  {
    defaultAudioPaywallConfigs = [(FCPaidBundleConfiguration *)self defaultAudioPaywallConfigs];
  }

  v6 = defaultAudioPaywallConfigs;

  return v6;
}

- (NSDictionary)subscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"subscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultSubscriptionButtonConfigs = v3;
  }

  else
  {
    defaultSubscriptionButtonConfigs = [(FCPaidBundleConfiguration *)self defaultSubscriptionButtonConfigs];
  }

  v6 = defaultSubscriptionButtonConfigs;

  return v6;
}

- (NSDictionary)servicesBundleSubscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"sbSubscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultServicesBundleSubscriptionButtonConfigs = v3;
  }

  else
  {
    defaultServicesBundleSubscriptionButtonConfigs = [(FCPaidBundleConfiguration *)self defaultServicesBundleSubscriptionButtonConfigs];
  }

  v6 = defaultServicesBundleSubscriptionButtonConfigs;

  return v6;
}

- (NSDictionary)carrierServicesBundleSubscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"carrierServicesBundleSubscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultServicesBundleSubscriptionButtonConfigs = v3;
  }

  else
  {
    defaultServicesBundleSubscriptionButtonConfigs = [(FCPaidBundleConfiguration *)self defaultServicesBundleSubscriptionButtonConfigs];
  }

  v6 = defaultServicesBundleSubscriptionButtonConfigs;

  return v6;
}

- (NSDictionary)bundleViaOfferSubscriptionButtonConfigurationsByType
{
  v3 = [(FCPaidBundleConfiguration *)self subscriptionButtonConfigurationsByTypeForKey:@"bundleViaOfferSubscriptionButtonConfigs"];
  v4 = v3;
  if (v3)
  {
    defaultServicesBundleSubscriptionButtonConfigs = v3;
  }

  else
  {
    defaultServicesBundleSubscriptionButtonConfigs = [(FCPaidBundleConfiguration *)self defaultServicesBundleSubscriptionButtonConfigs];
  }

  v6 = defaultServicesBundleSubscriptionButtonConfigs;

  return v6;
}

- (unint64_t)articleHardPaywallType
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"articleHardPaywallType", 0);

  return v3;
}

- (unint64_t)audioFeedPaywallSubtype
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(configDict, @"audioFeedPaywallType", 0);

  if (v4 == 2)
  {
    audioPaywallConfigurationsByType = [(FCPaidBundleConfiguration *)self audioPaywallConfigurationsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:14];
    v7 = [audioPaywallConfigurationsByType objectForKeyedSubscript:v6];

    if (v7)
    {
      audioPaywallConfigurationsByType2 = [(FCPaidBundleConfiguration *)self audioPaywallConfigurationsByType];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:15];
      v10 = [audioPaywallConfigurationsByType2 objectForKeyedSubscript:v9];

      if (v10)
      {
        return 2;
      }

      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v12 = "Missing 'Large' configuration data for Video Audio Feed Paywall! Defaulting to Regular Audio Feed Paywall type!";
        v13 = &v15;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v12 = "Missing 'Small' configuration data for Video Audio Feed Paywall! Defaulting to Regular Audio Feed Paywall type!";
        v13 = &v16;
LABEL_9:
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    return 1;
  }

  return v4;
}

- (unint64_t)magazineFeedPaywallSubtype
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(configDict, @"magazineFeedPaywallType", 0);

  if (v4 == 2)
  {
    paywallConfigurationsByType = [(FCPaidBundleConfiguration *)self paywallConfigurationsByType];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:9];
    v7 = [paywallConfigurationsByType objectForKeyedSubscript:v6];

    if (v7)
    {
      paywallConfigurationsByType2 = [(FCPaidBundleConfiguration *)self paywallConfigurationsByType];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:10];
      v10 = [paywallConfigurationsByType2 objectForKeyedSubscript:v9];

      if (v10)
      {
        return 2;
      }

      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v12 = "Missing 'Large' configuration data for Video Magazine Feed Paywall! Defaulting to Regular Magazine Feed Paywall type!";
        v13 = &v15;
        goto LABEL_9;
      }
    }

    else
    {
      v11 = FCPaywallLog;
      if (os_log_type_enabled(FCPaywallLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v12 = "Missing 'Small' configuration data for Video Magazine Feed Paywall! Defaulting to Regular Magazine Feed Paywall type!";
        v13 = &v16;
LABEL_9:
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    return 1;
  }

  return v4;
}

- (NSDictionary)magazineGenresByGenre
{
  v25 = *MEMORY[0x1E69E9840];
  magazineGenresByGenre = self->_magazineGenresByGenre;
  if (!magazineGenresByGenre)
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v5 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"magazineGenres", 0);

    if (v5)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        do
        {
          v11 = 0;
          do
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * v11);
            v13 = [FCMagazineGenre alloc];
            v14 = [(FCMagazineGenre *)v13 initWithConfigDictionary:v12, v20];
            genre = [(FCMagazineGenre *)v14 genre];

            if (genre)
            {
              genre2 = [(FCMagazineGenre *)v14 genre];
              [(NSDictionary *)dictionary fc_safelySetObject:v14 forKey:genre2];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }

      v17 = self->_magazineGenresByGenre;
      self->_magazineGenresByGenre = dictionary;
    }

    else
    {
      defaultMagazineGenres = [(FCPaidBundleConfiguration *)self defaultMagazineGenres];
      v17 = self->_magazineGenresByGenre;
      self->_magazineGenresByGenre = defaultMagazineGenres;
    }

    magazineGenresByGenre = self->_magazineGenresByGenre;
  }

  return magazineGenresByGenre;
}

- (BOOL)isFamilySharingSetupEnabled
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"familySharingSetupEnabled", 0);

  return v3;
}

- (NSString)servicesBundleMetricsTopicName
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"sbFigaroTopic", 0);

  return v3;
}

- (NSString)defaultLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultLandingPageByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"deArticleID", v5);

  return v7;
}

- (NSString)defaultServicesBundleLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultServicesBundleLandingPageByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"sbArticleID", v5);

  return v7;
}

- (NSString)familySharingLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultFamilySharingLandingPageByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"shArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"endOfPurchaseFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseNoFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"endOfPurchaseNoFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseServicesBundleFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"endOfPurchaseServicesBundleFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)endOfPurchaseServicesBundleNoFamilySharingSetupArticleID
{
  v3 = +[FCPaidBundleConfiguration defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"endOfPurchaseServicesBundleNoFamilySharingSetupArticleID", v5);

  return v7;
}

- (NSString)renewalLandingPageArticleID
{
  v3 = +[FCPaidBundleConfiguration renewalLandingPageByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"reArticleID", v5);

  return v7;
}

- (NSArray)restorableBundlePurchaseIDs
{
  v3 = NewsCoreUserDefaults();
  v4 = [v3 arrayForKey:@"newssubscription.bundle_subscriptions.restorable_purchase_ids"];

  if (v4)
  {
    firstObject = [v4 firstObject];
    if (firstObject)
    {
      v6 = firstObject;
      firstObject2 = [v4 firstObject];
      if ([firstObject2 length])
      {
        v8 = NFInternalBuild();

        if (v8)
        {
          v9 = v4;
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v9 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"restorablePurchaseIds", &unk_1F2E6FA50);

LABEL_8:

  return v9;
}

- (NSDictionary)offeredBundlePurchaseIDsMap
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationDictionaryValueWithDefaultValue(configDict, @"offeredBundlePurchaseIDsMap", 0);

  return v3;
}

- (int64_t)newIssuesCheckLocalTime
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"newIssuesCheckLocalTime", 10800);

  return v3;
}

- (int64_t)newIssuesNotificationDeliveryLocalTime
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"newIssuesNotificationDeliveryLocalTime", 68400);

  return v3;
}

- (int64_t)maxAllowedSubscriptionDetectionTime
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"maxAllowedSubscriptionDetectionTime", 2592000);

  return v3;
}

- (NSString)featuredArticlesTagList
{
  v3 = +[FCPaidBundleConfiguration defaultTagListIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"featuredArticlesTagList", v5);

  return v7;
}

- (int64_t)featuredArticlesFetchLimit
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"featuredArticlesFetchLimit", 250);

  return v3;
}

- (NSString)recommendableIssuesTagList
{
  v3 = +[FCPaidBundleConfiguration defaultTagListIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"recommendableIssuesTagList", v5);

  return v7;
}

- (NSString)globalFeedIDForFreeUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"paidFeedIdForFreeUsers", 0);

  return v3;
}

- (NSString)globalFeedIDForPaidUsers
{
  v3 = +[FCPaidBundleConfiguration defaultPaidFeedIDByLocalizedStorefrontID];
  localizedStorefrontID = [(FCPaidBundleConfiguration *)self localizedStorefrontID];
  v5 = [v3 objectForKeyedSubscript:localizedStorefrontID];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v7 = FCAppConfigurationStringValue(configDict, @"paidFeedId", v5);

  return v7;
}

- (BOOL)forYouIncludePaidSectionFeedsForFreeUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"forYouIncludePaidSectionFeedsForFreeUsers", 0);

  return v3;
}

- (BOOL)forYouIncludePaidSectionFeedsForPaidUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"forYouIncludePaidSectionFeedsForPaidUsers", 0);

  return v3;
}

- (NSString)expirationAlertDescription
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"expirationAlertDescription", 0);

  return v3;
}

- (int64_t)forYouMaxDailyPaidArticlesForFreeUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(configDict, @"forYouMaxDailyPaidArticlesForFreeUsers", 10);

  configDict2 = [(FCPaidBundleConfiguration *)self configDict];
  v6 = FCAppConfigurationIntegerValue(configDict2, @"forYouMaxDailyPaidArticlesForFreeUsers2", v4);

  return v6;
}

- (int64_t)forYouMaxMagazineGroupsForFreeUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"forYouMaxMagazineGroupsForAUsers", 1);

  return v3;
}

- (int64_t)forYouMaxMagazineGroupsForTrialUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"forYouMaxMagazineGroupsForBUsers", 3);

  return v3;
}

- (int64_t)forYouMaxMagazineGroupsForPaidUsers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"forYouMaxMagazineGroupsForCUsers", 3);

  return v3;
}

- (BOOL)isFreeBadgeEnabledForSubscribers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"freeBadgeEnabledForPaidUsers", 0);

  return v3;
}

- (BOOL)isPaidBadgeEnabledForSubscribers
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"paidBadgeEnabledForPaidUsers", 0);

  return v3;
}

- (NSString)freeBadgeTitle
{
  v3 = FCBundle();
  v4 = [v3 localizedStringForKey:@"Free" value:&stru_1F2DC7DC0 table:0];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v6 = FCAppConfigurationStringValue(configDict, @"freeBadgeTitle", v4);

  return v6;
}

- (NSString)paidBadgeTitle
{
  v3 = FCBundle();
  v4 = [v3 localizedStringForKey:@" News+" value:&stru_1F2DC7DC0 table:0];

  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v6 = FCAppConfigurationStringValue(configDict, @"paidBadgeTitle", v4);

  return v6;
}

- (int64_t)feedAutoRefreshMinimumInterval
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"feedAutoRefreshMinimumInterval", 43200);

  return v3;
}

- (int64_t)normalStorageManualIssueDownloadTTL
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v4 = FCAppConfigurationIntegerValue(configDict, @"normalStorageManualIssueDownloadTTL", v3);

  return v4;
}

- (int64_t)normalStorageAutomaticIssueDownloadTTL
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"normalStorageAutomaticIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)lowStorageManualIssueDownloadTTL
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"lowStorageManualIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)lowStorageAutomaticIssueDownloadTTL
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"lowStorageAutomaticIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)criticalStorageManualIssueDownloadTTL
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"criticalStorageManualIssueDownloadTTL", 2592000);

  return v3;
}

- (int64_t)criticalStorageAutomaticIssueDownloadTTL
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"criticalStorageAutomaticIssueDownloadTTL", 0);

  return v3;
}

- (NSArray)groupWhitelistedTagIds
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"groupWhitelistedTagIds", 0);

  return v3;
}

- (int64_t)entitlementsGracePeriodInSeconds
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"entitlementsGracePeriodInSeconds", 604800);

  return v3;
}

- (int64_t)entitlementsCacheExpiredGracePeriodInSeconds
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"entitlementsCacheExpiredGracePeriodInSeconds", 172800);

  return v3;
}

- (BOOL)isCategoriesDownloadButtonEnabled
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"categoriesDownloadButtonEnabled", 0);

  return v3;
}

- (int64_t)recentIssuesMaxAge
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"recentIssuesMaxAge", 604800);

  return v3;
}

- (int64_t)minimumReadIssuesInMyMagazines
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"minimumReadIssuesInMyMagazines", 3);

  return v3;
}

- (int64_t)minimumArticlesInANFIssueBeforeRead
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"minimumArticlesInANFIssueBeforeRead", 1);

  return v3;
}

- (int64_t)minimumPagesInPDFIssueBeforeRead
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"minimumPagesInPDFIssueBeforeRead", 4);

  return v3;
}

- (NSString)todayMastheadPaywallConfiguration
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"todayMastheadPaywallConfiguration", 0);

  return v3;
}

- (int64_t)minFollowedMagazinesToHideSuggestionsCompact
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"minFollowedMagazinesToHideSuggestionsCompact", 5);

  return v3;
}

- (int64_t)minFollowedMagazinesToHideSuggestionsRegular
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"minFollowedMagazinesToHideSuggestionsRegular", 8);

  return v3;
}

- (unint64_t)appLaunchUpsellPaidVisibility
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellPaidVisibility", 0);

  return v3;
}

- (unint64_t)appLaunchUpsellBundleTrialVisibility
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellBundleTrialVisibility", 0);

  return v3;
}

- (NSString)appLaunchUpsellInstanceID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"appLaunchUpsellInstanceID", 0);

  return v3;
}

- (NSString)appLaunchUpsellCampaignID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"appLaunchUpsellCampaignID", 0);

  return v3;
}

- (NSDate)appLaunchUpsellCampaignStartDate
{
  v2 = MEMORY[0x1E695DF00];
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v4 = [v2 dateWithTimeIntervalSince1970:{FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellCampaignStartDate", 0)}];

  return v4;
}

- (NSDate)appLaunchUpsellCampaignEndDate
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValueWithDefaultValueIfMissing(configDict, @"appLaunchUpsellCampaignEndDate", -1, -1);

  if (v3 == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v3];
  }

  return v4;
}

- (int64_t)appLaunchUpsellRequiredAppLaunchCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellRequiredAppLaunchCount", 4);

  return v3;
}

- (int64_t)appLaunchUpsellQuiescenceInterval
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellQuiescenceInterval", 172800);

  return v3;
}

- (int64_t)appLaunchUpsellNewSessionBackgroundTimeInterval
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellNewSessionBackgroundTimeInterval", 600);

  return v3;
}

- (BOOL)appLaunchUpsellLastSeenDateSyncEnabled
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"appLaunchUpsellLastSeenDateSyncEnabled", 0);

  return v3;
}

- (BOOL)appLaunchUpsellLastShownCampaignIDSyncEnabled
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"appLaunchUpsellLastShownCampaignIDSyncEnabled", 0);

  return v3;
}

- (int64_t)appLaunchUpsellBehaviorFlags
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellBehaviorFlags", 0);

  return v3;
}

- (int64_t)audioSuggestionsMaxCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioSuggestionsMaxCount", 6);

  return v3;
}

- (int64_t)audioSuggestionsHighlyPersonalizedCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioSuggestionsHighlyPersonalizedCount", 5);

  return v3;
}

- (int64_t)audioSuggestionsMaxAge
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioSuggestionsMaxAge", 604800);

  return v3;
}

- (int64_t)audioSuggestionsRecycleAfterTime
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioSuggestionsRecycleAfterTime", 345600);

  return v3;
}

- (int64_t)audioSuggestionsMaxIgnoreCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioSuggestionsMaxIgnoreCount", 2);

  return v3;
}

- (int64_t)audioOfflineArticlesMaxCountNormalStorage
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioOfflineArticlesMaxCountNormalStorage", 25);

  return v3;
}

- (int64_t)audioOfflineArticlesMaxCountLowStorage
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioOfflineArticlesMaxCountLowStorage", 2);

  return v3;
}

- (int64_t)audioOfflineArticlesMaxCountCriticalStorage
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioOfflineArticlesMaxCountCriticalStorage", 0);

  return v3;
}

- (NSString)audioUpsellArticleID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"audioUpsellArticleID", 0);

  return v3;
}

- (int64_t)audioUpsellMaxDisplayCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioUpsellMaxDisplayCount", -1);

  return v3;
}

- (NSString)audioUpsellInstanceID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"audioUpsellInstanceID", 0);

  return v3;
}

- (int64_t)audioRecentlyPlayedMaxCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioRecentlyPlayedMaxCount", 100);

  return v3;
}

- (int64_t)audioFinishedAtTimeFromEnd
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioFinishedAtTimeFromEnd", 10);

  return v3;
}

- (NSString)audioDailyBriefingFeatureName
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCBundle();
  v4 = [v3 localizedStringForKey:@"Apple News Today" value:&stru_1F2DC7DC0 table:0];
  v5 = FCAppConfigurationStringValue(configDict, @"audioDailyBriefingFeatureName", v4);

  return v5;
}

- (int64_t)audioRefreshTimeGMT
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioRefreshTimeGMT", 39600);

  return v3;
}

- (BOOL)audioRefreshForceWakeEnabled
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"audioRefreshShouldForceWake", 0);

  return v3;
}

- (int64_t)audioRefreshForceWakeRandomizationWindow
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioRefreshForceWakeRandomizationWindow", 600);

  return v3;
}

- (int64_t)audioRewindToParagraphStartAfterTime
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioRewindToParagraphStartAfterTime", 180);

  return v3;
}

- (int64_t)audioCloseIdlePlayerAfterTime
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"audioCloseIdlePlayerAfterTime", 300);

  return v3;
}

- (NSArray)audioFeedPaywallPositions
{
  v7[1] = *MEMORY[0x1E69E9840];
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"audioFeedPaywallPositions", 0);

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
    v7[0] = v5;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  return v4;
}

- (NSArray)audioChannelPaywallOverrideAllowedTagIDs
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"audioChannelPaywallOverrideAllowedTagIDs", 0);

  return v3;
}

- (NSString)audioArticlesChannelId
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"audioArticlesChannelId", 0);

  return v3;
}

- (NSDictionary)audioUpsellConfigurationsByID
{
  v23 = *MEMORY[0x1E69E9840];
  audioUpsellConfigurationsByID = self->_audioUpsellConfigurationsByID;
  if (!audioUpsellConfigurationsByID)
  {
    configDict = [(FCPaidBundleConfiguration *)self configDict];
    v5 = FCAppConfigurationArrayValueWithDefaultValue(configDict, @"audioUpsellConfigs", 0);

    if (v5)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            v13 = [FCAudioUpsellConfig alloc];
            v14 = [(FCAudioUpsellConfig *)v13 initWithConfigDictionary:v12, v18];
            identifier = [(FCAudioUpsellConfig *)v14 identifier];
            [(NSDictionary *)dictionary fc_safelySetObject:v14 forKey:identifier];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      v16 = self->_audioUpsellConfigurationsByID;
      self->_audioUpsellConfigurationsByID = dictionary;
    }

    audioUpsellConfigurationsByID = self->_audioUpsellConfigurationsByID;
  }

  return audioUpsellConfigurationsByID;
}

- (BOOL)requiresHardPaywallForIssuesToC
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationBoolValue(configDict, @"requiresHardPaywallForIssuesToC", 1);

  return v3;
}

- (int64_t)appLaunchUpsellPresentationDelay
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"appLaunchUpsellPresentationDelay", 0);

  return v3;
}

- (BOOL)widgetUpsellFeaturesEnabled
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = [FCFeatureEnablementChecker enabledInConfig:configDict forKey:@"widgetUpsellFeaturesEnabled" withDefaultLevel:0];

  return v3;
}

- (NSString)osloAbandonmentUpsellArticleID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"osloAbandonmentUpsellArticleID", 0);

  return v3;
}

- (int64_t)osloAbandonmentUpsellQuiescenceInterval
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"osloAbandonmentUpsellQuiescenceInterval", 0);

  return v3;
}

- (int64_t)osloAbandonmentUpsellMaxPresentationCount
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationIntegerValue(configDict, @"osloAbandonmentUpsellMaxPresentationCount", 0);

  return v3;
}

- (NSString)osloAbandonmentUpsellInstanceID
{
  configDict = [(FCPaidBundleConfiguration *)self configDict];
  v3 = FCAppConfigurationStringValue(configDict, @"osloAbandonmentUpsellInstanceID", &stru_1F2DC7DC0);

  return v3;
}

+ (id)defaultConfigurationForStorefrontID:(id)d
{
  dCopy = d;
  v4 = [FCPaidBundleConfiguration alloc];
  v5 = FCSupportedStoreFrontIDs();
  allObjects = [v5 allObjects];
  v7 = [(FCPaidBundleConfiguration *)v4 initWithConfigDictionary:0 storefrontID:dCopy localizedStorefrontID:dCopy defaultSupportedStoreFronts:allObjects];

  return v7;
}

+ (id)renewalLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27708 != -1)
  {
    dispatch_once(&qword_1EDB27708, &__block_literal_global_452_0);
  }

  v3 = qword_1EDB27700;

  return v3;
}

void __70__FCPaidBundleConfiguration_renewalLandingPageByLocalizedStorefrontID__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"143441";
  v2[1] = @"143455";
  v3[0] = @"ApD6XdJJuQ9Kr_QCk9ivPDQ";
  v3[1] = @"AVtXQTyGvT4OsKHgxZ05M1A";
  v2[2] = @"143455-fr-ca";
  v2[3] = @"143444";
  v3[2] = @"Apnn-WUtwSc2wEXaXYwuUWA";
  v3[3] = @"AXu1vfWkQTGCTyH2EjVUFwQ";
  v2[4] = @"143460";
  v3[4] = @"AfRcHZ0YIQbC4GCJ2KwZYxw";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_1EDB27700;
  qword_1EDB27700 = v0;
}

+ (id)defaultLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27718 != -1)
  {
    dispatch_once(&qword_1EDB27718, &__block_literal_global_470);
  }

  v3 = qword_1EDB27710;

  return v3;
}

void __70__FCPaidBundleConfiguration_defaultLandingPageByLocalizedStorefrontID__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"143441";
  v2[1] = @"143455";
  v3[0] = @"A53eyrvagTQO5cri5DWwDnw";
  v3[1] = @"AvPUnt7dQSmGX_KaIUHC5kQ";
  v2[2] = @"143455-fr-ca";
  v2[3] = @"143444";
  v3[2] = @"AfEzIPkyQTxC9g7atKJeVKw";
  v3[3] = @"A1fFFI_OFTuWOCZBiz3nBkw";
  v2[4] = @"143460";
  v3[4] = @"ATV43D73KTPyTlJ-hlICZmA";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_1EDB27710;
  qword_1EDB27710 = v0;
}

+ (id)defaultServicesBundleLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27728 != -1)
  {
    dispatch_once(&qword_1EDB27728, &__block_literal_global_487_0);
  }

  v3 = qword_1EDB27720;

  return v3;
}

void __84__FCPaidBundleConfiguration_defaultServicesBundleLandingPageByLocalizedStorefrontID__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"143441";
  v2[1] = @"143455";
  v3[0] = @"AdgSCAdtlS0P9UQhWGbPVRA";
  v3[1] = @"AMNrflzD8TRirzxx_2tdqdA";
  v2[2] = @"143455-fr-ca";
  v2[3] = @"143444";
  v3[2] = @"AM3SM6D1cSHG6iB9O-deE_A";
  v3[3] = @"ASKOyErGaR3vAe6iqsxkekQ";
  v2[4] = @"143460";
  v3[4] = @"AiLdUCfKuR2C9hsKAryYVQw";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_1EDB27720;
  qword_1EDB27720 = v0;
}

+ (id)defaultFamilySharingLandingPageByLocalizedStorefrontID
{
  if (qword_1EDB27738 != -1)
  {
    dispatch_once(&qword_1EDB27738, &__block_literal_global_504);
  }

  v3 = qword_1EDB27730;

  return v3;
}

void __83__FCPaidBundleConfiguration_defaultFamilySharingLandingPageByLocalizedStorefrontID__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"143441";
  v2[1] = @"143455";
  v3[0] = @"ATHi8wuYqRw6_2XiqVdBmRQ";
  v3[1] = @"ABnZHWwYzQAOG4srVl6oJPw";
  v2[2] = @"143455-fr-ca";
  v2[3] = @"143444";
  v3[2] = @"ADaPfwzFeS4Kqd7ynKkCGtA";
  v3[3] = @"ApJ3T6edORFWeIsm1UYVVnQ";
  v2[4] = @"143460";
  v3[4] = @"AOKrTMJ1ORhKcIeS77Oak5g";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_1EDB27730;
  qword_1EDB27730 = v0;
}

+ (id)defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID
{
  if (qword_1EDB27748 != -1)
  {
    dispatch_once(&qword_1EDB27748, &__block_literal_global_521);
  }

  v3 = qword_1EDB27740;

  return v3;
}

void __99__FCPaidBundleConfiguration_defaultEndOfPurchaseFamilySharingSetupArticleIDByLocalizedStorefrontID__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"143441";
  v2[1] = @"143455";
  v3[0] = @"Axse1yHejTiq4m6_FDhWjzQ";
  v3[1] = @"AQteqTSopTuyVb6risDsqqA";
  v2[2] = @"143455-fr-ca";
  v2[3] = @"143444";
  v3[2] = @"AQY3aWLseQxyESRs82-fbVA";
  v3[3] = @"AHhJreKRQTyueyd82FfUzVA";
  v2[4] = @"143460";
  v3[4] = @"ADcFux8UIR96JlKqVNI1fpQ";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_1EDB27740;
  qword_1EDB27740 = v0;
}

+ (id)defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID
{
  if (qword_1EDB27758 != -1)
  {
    dispatch_once(&qword_1EDB27758, &__block_literal_global_538);
  }

  v3 = qword_1EDB27750;

  return v3;
}

void __101__FCPaidBundleConfiguration_defaultEndOfPurchaseNoFamilySharingSetupArticleIDByLocalizedStorefrontID__block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"143441";
  v2[1] = @"143455";
  v3[0] = @"Aj9QiLScMQ6ux3gXuFpSjLQ";
  v3[1] = @"AzXHbVKNIT4CFohbsyaGOOw";
  v2[2] = @"143455-fr-ca";
  v2[3] = @"143444";
  v3[2] = @"AbTcLWiv4TvGpXAB-tS0e3w";
  v3[3] = @"Ad0wrgFufRKKrELGiiY6KAA";
  v2[4] = @"143460";
  v3[4] = @"AoXCsrwX1Tm6WCWhQvbwomw";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = qword_1EDB27750;
  qword_1EDB27750 = v0;
}

+ (id)defaultTagListIDByLocalizedStorefrontID
{
  if (qword_1EDB27768 != -1)
  {
    dispatch_once(&qword_1EDB27768, &__block_literal_global_555);
  }

  v3 = qword_1EDB27760;

  return v3;
}

void __68__FCPaidBundleConfiguration_defaultTagListIDByLocalizedStorefrontID__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"143441";
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143441"];
  v8[0] = v0;
  v7[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143455"];
  v8[1] = v1;
  v7[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-fr", @"GI", @"143455"];
  v8[2] = v2;
  v7[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143444"];
  v8[3] = v3;
  v7[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-en", @"GI", @"143460"];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = qword_1EDB27760;
  qword_1EDB27760 = v5;
}

+ (id)defaultPaidFeedIDByLocalizedStorefrontID
{
  if (qword_1EDB27788 != -1)
  {
    dispatch_once(&qword_1EDB27788, &__block_literal_global_571);
  }

  v3 = qword_1EDB27780;

  return v3;
}

void __69__FCPaidBundleConfiguration_defaultPaidFeedIDByLocalizedStorefrontID__block_invoke()
{
  v8[5] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-US", @"TRKNDEVsSSl2ye3cRDsruSQ", @"143441"];
  v8[0] = v0;
  v7[1] = @"143455";
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-CA", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v8[1] = v1;
  v7[2] = @"143455-fr-ca";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$fr-CA", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v8[2] = v2;
  v7[3] = @"143444";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-UK", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v8[3] = v3;
  v7[4] = @"143460";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$en-AU", @"TRKNDEVsSSl2ye3cRDsruSQ"];
  v8[4] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v6 = qword_1EDB27780;
  qword_1EDB27780 = v5;
}

- (id)defaultPaywallConfigs
{
  v17[11] = *MEMORY[0x1E69E9840];
  defaultLandingPageArticleID = [(FCPaidBundleConfiguration *)self defaultLandingPageArticleID];
  v16[0] = &unk_1F2E70818;
  v15 = [FCPaywallConfiguration defaultArticleHardPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[0] = v15;
  v16[1] = &unk_1F2E70830;
  v14 = [FCPaywallConfiguration defaultArticleSharedHardPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[1] = v14;
  v16[2] = &unk_1F2E70848;
  v13 = [FCPaywallConfiguration defaultArticleSoftPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[2] = v13;
  v16[3] = &unk_1F2E70860;
  v3 = [FCPaywallConfiguration defaultArticleSharedSoftPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[3] = v3;
  v16[4] = &unk_1F2E70878;
  v4 = [FCPaywallConfiguration defaultChannelSoftPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[4] = v4;
  v16[5] = &unk_1F2E70890;
  v5 = [FCPaywallConfiguration defaultMagazineFeedSoftPaywallSmallPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[5] = v5;
  v16[6] = &unk_1F2E708A8;
  v6 = [FCPaywallConfiguration defaultMagazineFeedSoftPaywallMediumPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[6] = v6;
  v16[7] = &unk_1F2E708C0;
  v7 = [FCPaywallConfiguration defaultMagazineFeedSoftPaywallLargePaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[7] = v7;
  v16[8] = &unk_1F2E708D8;
  v8 = [FCPaywallConfiguration defaultMagazineFeedVideoSoftPaywallSmallPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[8] = v8;
  v16[9] = &unk_1F2E708F0;
  v9 = [FCPaywallConfiguration defaultMagazineFeedVideoSoftPaywallLargePaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[9] = v9;
  v16[10] = &unk_1F2E70908;
  v10 = [FCPaywallConfiguration defaultPDFHardPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v17[10] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:11];

  return v11;
}

- (id)defaultAudioPaywallConfigs
{
  v13[7] = *MEMORY[0x1E69E9840];
  defaultLandingPageArticleID = [(FCPaidBundleConfiguration *)self defaultLandingPageArticleID];
  v12[0] = &unk_1F2E70818;
  v3 = [FCPaywallConfiguration defaultAudioArticleHardPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[0] = v3;
  v12[1] = &unk_1F2E70830;
  v4 = [FCPaywallConfiguration defaultAudioArticleSharedHardPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[1] = v4;
  v12[2] = &unk_1F2E70848;
  v5 = [FCPaywallConfiguration defaultAudioArticleSoftPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[2] = v5;
  v12[3] = &unk_1F2E70860;
  v6 = [FCPaywallConfiguration defaultAudioArticleSharedSoftPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[3] = v6;
  v12[4] = &unk_1F2E70920;
  v7 = [FCPaywallConfiguration defaultAudioFeedSoftPaywallSmallPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[4] = v7;
  v12[5] = &unk_1F2E70938;
  v8 = [FCPaywallConfiguration defaultAudioFeedSoftPaywallLargePaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[5] = v8;
  v12[6] = &unk_1F2E70878;
  v9 = [FCPaywallConfiguration defaultChannelSoftPaywallWithLandingPageArticleID:defaultLandingPageArticleID];
  v13[6] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];

  return v10;
}

- (id)defaultSubscriptionButtonConfigs
{
  v9[3] = *MEMORY[0x1E69E9840];
  defaultLandingPageArticleID = [(FCPaidBundleConfiguration *)self defaultLandingPageArticleID];
  v8[0] = &unk_1F2E70818;
  v3 = [FCSubscriptionButtonConfiguration defaultArticleSubscriptionButtonWithLandingPageArticleID:defaultLandingPageArticleID];
  v9[0] = v3;
  v8[1] = &unk_1F2E70830;
  v4 = +[FCSubscriptionButtonConfiguration defaultOsloSheetTargetSubscriptionButton];
  v9[1] = v4;
  v8[2] = &unk_1F2E70848;
  v5 = [FCSubscriptionButtonConfiguration defaultIssueCoverSubscriptionButtonWithLandingPageArticleID:defaultLandingPageArticleID];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)defaultServicesBundleSubscriptionButtonConfigs
{
  v9[3] = *MEMORY[0x1E69E9840];
  defaultServicesBundleLandingPageArticleID = [(FCPaidBundleConfiguration *)self defaultServicesBundleLandingPageArticleID];
  v8[0] = &unk_1F2E70818;
  v3 = [FCSubscriptionButtonConfiguration defaultArticleSubscriptionButtonWithLandingPageArticleID:defaultServicesBundleLandingPageArticleID];
  v9[0] = v3;
  v8[1] = &unk_1F2E70830;
  v4 = +[FCSubscriptionButtonConfiguration defaultAmsSheetTargetSubscriptionButton];
  v9[1] = v4;
  v8[2] = &unk_1F2E70848;
  v5 = [FCSubscriptionButtonConfiguration defaultIssueCoverSubscriptionButtonWithLandingPageArticleID:defaultServicesBundleLandingPageArticleID];
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (id)defaultMagazineGenres
{
  v70[15] = *MEMORY[0x1E69E9840];
  v2 = FCBundle();
  v3 = [v2 localizedStringForKey:@"automotive magazines" value:&stru_1F2DC7DC0 table:0];
  v4 = [FCMagazineGenre magazineGenreWithGenre:@"automotive" localizedDescription:v3];

  v5 = FCBundle();
  v6 = [v5 localizedStringForKey:@"business & finance magazines" value:&stru_1F2DC7DC0 table:0];
  v7 = [FCMagazineGenre magazineGenreWithGenre:@"business-finance" localizedDescription:v6];

  v8 = FCBundle();
  v9 = [v8 localizedStringForKey:@"crafts & hobby magazines" value:&stru_1F2DC7DC0 table:0];
  v10 = [FCMagazineGenre magazineGenreWithGenre:@"crafts-hobby" localizedDescription:v9];

  v11 = FCBundle();
  v12 = [v11 localizedStringForKey:@"entertainment magazines" value:&stru_1F2DC7DC0 table:0];
  v13 = [FCMagazineGenre magazineGenreWithGenre:@"entertainment" localizedDescription:v12];

  v14 = FCBundle();
  v15 = [v14 localizedStringForKey:@"fashion & style magazines" value:&stru_1F2DC7DC0 table:0];
  v16 = [FCMagazineGenre magazineGenreWithGenre:@"fashion-style" localizedDescription:v15];

  v17 = FCBundle();
  v18 = [v17 localizedStringForKey:@"food & cooking magazines" value:&stru_1F2DC7DC0 table:0];
  v68 = [FCMagazineGenre magazineGenreWithGenre:@"food-cooking" localizedDescription:v18];

  v19 = FCBundle();
  v20 = [v19 localizedStringForKey:@"health & fitness magazines" value:&stru_1F2DC7DC0 table:0];
  v67 = [FCMagazineGenre magazineGenreWithGenre:@"health-fitness" localizedDescription:v20];

  v21 = FCBundle();
  v22 = [v21 localizedStringForKey:@"home & gardening magazines" value:&stru_1F2DC7DC0 table:0];
  v66 = [FCMagazineGenre magazineGenreWithGenre:@"home-gardening" localizedDescription:v22];

  v23 = FCBundle();
  v24 = [v23 localizedStringForKey:@"kids & parenting magazines" value:&stru_1F2DC7DC0 table:0];
  v65 = [FCMagazineGenre magazineGenreWithGenre:@"kids-parenting" localizedDescription:v24];

  v25 = FCBundle();
  v26 = [v25 localizedStringForKey:@"men’s lifestyle magazines" value:&stru_1F2DC7DC0 table:0];
  v64 = [FCMagazineGenre magazineGenreWithGenre:@"men-lifestyle" localizedDescription:v26];

  v27 = FCBundle();
  v28 = [v27 localizedStringForKey:@"news & politics magazines" value:&stru_1F2DC7DC0 table:0];
  v63 = [FCMagazineGenre magazineGenreWithGenre:@"news-politics" localizedDescription:v28];

  v29 = FCBundle();
  v30 = [v29 localizedStringForKey:@"science & technology magazines" value:&stru_1F2DC7DC0 table:0];
  v62 = [FCMagazineGenre magazineGenreWithGenre:@"science-technology" localizedDescription:v30];

  v31 = FCBundle();
  v32 = [v31 localizedStringForKey:@"sports & recreation magazines" value:&stru_1F2DC7DC0 table:0];
  v61 = [FCMagazineGenre magazineGenreWithGenre:@"sports-recreation" localizedDescription:v32];

  v33 = FCBundle();
  v34 = [v33 localizedStringForKey:@"travel magazines" value:&stru_1F2DC7DC0 table:0];
  v60 = [FCMagazineGenre magazineGenreWithGenre:@"travel-regional" localizedDescription:v34];

  v35 = FCBundle();
  v36 = [v35 localizedStringForKey:@"women’s lifestyle magazines" value:&stru_1F2DC7DC0 table:0];
  v48 = [FCMagazineGenre magazineGenreWithGenre:@"women-lifestyle" localizedDescription:v36];

  v59 = v4;
  genre = [v4 genre];
  v69[0] = genre;
  v70[0] = v4;
  v58 = v7;
  genre2 = [v7 genre];
  v69[1] = genre2;
  v70[1] = v7;
  v57 = v10;
  genre3 = [v10 genre];
  v69[2] = genre3;
  v70[2] = v10;
  v56 = v13;
  genre4 = [v13 genre];
  v69[3] = genre4;
  v70[3] = v13;
  v55 = v16;
  genre5 = [v16 genre];
  v69[4] = genre5;
  v70[4] = v16;
  genre6 = [v68 genre];
  v69[5] = genre6;
  v70[5] = v68;
  genre7 = [v67 genre];
  v69[6] = genre7;
  v70[6] = v67;
  genre8 = [v66 genre];
  v69[7] = genre8;
  v70[7] = v66;
  genre9 = [v65 genre];
  v69[8] = genre9;
  v70[8] = v65;
  genre10 = [v64 genre];
  v69[9] = genre10;
  v70[9] = v64;
  genre11 = [v63 genre];
  v69[10] = genre11;
  v70[10] = v63;
  genre12 = [v62 genre];
  v69[11] = genre12;
  v70[11] = v62;
  genre13 = [v61 genre];
  v69[12] = genre13;
  v70[12] = v61;
  genre14 = [v60 genre];
  v69[13] = genre14;
  v70[13] = v60;
  genre15 = [v48 genre];
  v69[14] = genre15;
  v70[14] = v48;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:15];

  return v47;
}

@end