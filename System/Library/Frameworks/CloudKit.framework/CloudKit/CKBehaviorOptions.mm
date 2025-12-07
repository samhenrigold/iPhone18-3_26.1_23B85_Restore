@interface CKBehaviorOptions
+ (id)sharedOptions;
- (BOOL)defaultContainerToLaunchPersona;
- (BOOL)fetchNewestChangesFirst;
- (BOOL)isDASRateLimitingDisabled;
- (const)CKCtlPrompt;
- (id)_getDictionaryOptionForKey:(id)key defaultValue:(id)value;
- (id)buildVersion;
- (id)customCloudDBBaseURL;
- (id)initInternal;
- (id)productName;
- (id)productVersion;
- (id)recordNamesForFakingDecryptionFailure;
- (id)transcoderPermittedRemoteMeasurement;
- (void)_reallySetPref:(id)pref forKey:(id)key;
- (void)_setArrayPref:(id)pref forKey:(id)key;
- (void)_setPref:(id)pref forKey:(id)key;
- (void)setAllowRecordKeyRollingInPerRecordPCSZonesForAllContainers:(BOOL)containers;
- (void)setAllowZoneAndRecordKeyRollingInZoneishPCSZonesForAllContainers:(BOOL)containers;
- (void)setAllowZoneKeyRollingInPerRecordPCSZonesForAllContainers:(BOOL)containers;
- (void)setAllowsFetchPersonaAttributes:(BOOL)attributes;
- (void)setAlwaysShowShareAccessRequestUI:(BOOL)i;
- (void)setCDPWalrusEnabled:(BOOL)enabled;
- (void)setCDPWalrusOverride:(BOOL)override;
- (void)setCFNetworkLogging:(BOOL)logging;
- (void)setCKCtlPrompt:(char *)prompt;
- (void)setCacheChildAccounts:(BOOL)accounts;
- (void)setCachedRecordExpiryTime:(int)time;
- (void)setCompressRequests:(BOOL)requests;
- (void)setConfigBaseURL:(id)l;
- (void)setCustomCloudDBBaseURL:(id)l;
- (void)setCustomCodeServiceBaseURL:(id)l;
- (void)setCustomDeviceServiceBaseURL:(id)l;
- (void)setCustomMetricsServiceBaseURL:(id)l;
- (void)setCustomShareServiceBaseURL:(id)l;
- (void)setDefaultContainerToLaunchPersona:(BOOL)persona;
- (void)setDisableCaching:(BOOL)caching;
- (void)setFakeManateeEnabled:(BOOL)enabled;
- (void)setFakeManateeOverride:(BOOL)override;
- (void)setFakeWalrusEnabled:(BOOL)enabled;
- (void)setFakeWalrusNotification:(BOOL)notification;
- (void)setFakeWalrusOverride:(BOOL)override;
- (void)setFetchNewestChangesFirst:(BOOL)first;
- (void)setForceUploadRequestActivitiesToRunImmediately:(BOOL)immediately;
- (void)setIsCurrentAppleAccountSuspended:(BOOL)suspended;
- (void)setLogTraffic:(BOOL)traffic;
- (void)setMaxPCSSizeForKeyRolls:(int64_t)rolls;
- (void)setMaximumMergeableDeltaRequestSize:(unint64_t)size;
- (void)setModTimeInAssetCacheEviction:(BOOL)eviction;
- (void)setOperationTimeout:(double)timeout;
- (void)setOptimisticPCS:(BOOL)s;
- (void)setOverrideSavePolicyForShareRecords:(BOOL)records;
- (void)setPCSCacheValidTime:(int64_t)time;
- (void)setRollRecordMasterKeysOnUnshare:(BOOL)unshare;
- (void)setRollRecordPCSMasterKeys:(BOOL)keys;
- (void)setRollZonePCSIdentities:(BOOL)identities;
- (void)setRollZoneSharingKeys:(BOOL)keys;
- (void)setSendDebugHeader:(BOOL)header;
- (void)setSetupBaseURL:(id)l;
- (void)setShouldProfileSQL:(BOOL)l;
- (void)setShouldStreamTrafficLogs:(BOOL)logs;
- (void)setSqlBatchCount:(int64_t)count;
- (void)setSqlBatchTime:(double)time;
- (void)setTrafficLogMaximumDataSize:(int)size;
- (void)setUseEncryption:(BOOL)encryption;
- (void)setUseEnhancedPCSEncryptionContext:(BOOL)context;
- (void)setUsePreauth:(BOOL)preauth;
- (void)setUseStingray:(BOOL)stingray;
@end

@implementation CKBehaviorOptions

- (id)initInternal
{
  v4.receiver = self;
  v4.super_class = CKBehaviorOptions;
  v2 = [(CKBehaviorOptions *)&v4 init];
  if (v2)
  {
    v2->_isAppleInternalInstall = os_variant_has_internal_content();
  }

  return v2;
}

+ (id)sharedOptions
{
  if (qword_1ED4B6518 != -1)
  {
    dispatch_once(&qword_1ED4B6518, &unk_1EFA30650);
  }

  v3 = qword_1ED4B6510;

  return v3;
}

- (id)productName
{
  v3 = CKProductName();
  if (sub_1884156F4(self))
  {
    v4 = CKProductName();
    v5 = sub_1886A2B80(self, @"ProductName", v4);

    v3 = v5;
  }

  return v3;
}

- (id)productVersion
{
  v3 = CKProductVersion();
  if (sub_1884156F4(self))
  {
    v4 = CKProductVersion();
    v5 = sub_1886A2B80(self, @"ProductVersion", v4);

    v3 = v5;
  }

  return v3;
}

- (id)buildVersion
{
  v3 = CKBuildVersion();
  if (sub_1884156F4(self))
  {
    v4 = CKBuildVersion();
    v5 = sub_1886A2B80(self, @"BuildVersion", v4);

    v3 = v5;
  }

  return v3;
}

- (id)customCloudDBBaseURL
{
  v3 = sub_1886A35CC(self, @"DatabaseServiceBaseURL", 0);
  if (!v3)
  {
    v3 = sub_1886A35CC(self, @"CloudDBBaseURL", 0);
  }

  return v3;
}

- (id)recordNamesForFakingDecryptionFailure
{
  if (self)
  {
    v2 = sub_1886A28D4(self, @"RecordNamesForFakeDecryptionFailure");
    if (v2)
    {
      v5 = v2;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);

        v5 = v8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v5 = objc_msgSend_null(MEMORY[0x1E695DFB0], v3, v4);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v5;
    if ((isKindOfClass & 1) == 0)
    {
LABEL_9:
      v11 = v10;

      goto LABEL_10;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)_getDictionaryOptionForKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v7 = sub_1886A28D4(self, key);
  if (v7)
  {
    v10 = v7;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = objc_msgSend_null(MEMORY[0x1E695DFB0], v11, v12);

      v10 = v13;
      if (!v13)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = objc_msgSend_null(MEMORY[0x1E695DFB0], v8, v9);
    if (!v10)
    {
LABEL_7:
      v14 = valueCopy;
      goto LABEL_8;
    }
  }

  objc_opt_class();
  v14 = v10;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_7;
  }

LABEL_8:
  v15 = v14;

  return v14;
}

- (void)_setPref:(id)pref forKey:(id)key
{
  prefCopy = pref;
  keyCopy = key;
  if (byte_1EA919CC8 == 1)
  {
    objc_msgSend_bundleWithIdentifier_(MEMORY[0x1E696AAE8], v6, @"com.apple.cloudkit.CloudKitIntegrationTests");
    if (objc_claimAutoreleasedReturnValue())
    {
      v8 = [CKException alloc];
      v10 = objc_msgSend_initWithName_format_(v8, v9, *MEMORY[0x1E695D940], @"You must not set CKBehaviorOptions from CloudKitIntegrationTests, since they run in parallel, one test's set value may unexpectedly break another test.  Move this test to CloudKitSerialIntegrationTests");
      objc_exception_throw(v10);
    }
  }

  objc_msgSend__reallySetPref_forKey_(self, v6, prefCopy, keyCopy);
}

- (void)_reallySetPref:(id)pref forKey:(id)key
{
  prefCopy = pref;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_CKUserDefaults(CKUserDefaults, v8, v9);
  v12 = objc_msgSend_dictionaryForKey_(v10, v11, @"BehaviorOptions");

  if (v12)
  {
    v15 = objc_msgSend_mutableCopy(v12, v13, v14);
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = v15;
  if (objc_msgSend_conformsToProtocol_(prefCopy, v16, &unk_1EFA9C3D0))
  {
    v20 = objc_msgSend_CKDeepCopy(prefCopy, v18, v19);

    v21 = v20;
  }

  else
  {
    v21 = prefCopy;
  }

  v27 = v21;
  if (v21)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v17, v18, v21, keyCopy);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(v17, v18, keyCopy);
  }

  v24 = objc_msgSend_CKUserDefaults(CKUserDefaults, v22, v23);
  objc_msgSend_setObject_forKey_(v24, v25, v17, @"BehaviorOptions");

  objc_sync_exit(selfCopy);
}

- (void)_setArrayPref:(id)pref forKey:(id)key
{
  prefCopy = pref;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = v8;
  if (prefCopy)
  {
    objc_msgSend_addObjectsFromArray_(v8, v9, prefCopy);
  }

  else
  {
    objc_msgSend_removeAllObjects(v8, v9, 0);
  }

  v13 = objc_msgSend_CKUserDefaults(CKUserDefaults, v11, v12);
  v16 = objc_msgSend_allObjects(v10, v14, v15);
  objc_msgSend_setObject_forKey_(v13, v17, v16, keyCopy);

  objc_sync_exit(selfCopy);
}

- (void)setCachedRecordExpiryTime:(int)time
{
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *&time);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"RecordExpiryTime");
}

- (void)setOperationTimeout:(double)timeout
{
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, v3, timeout);
  objc_msgSend__setPref_forKey_(self, v5, v6, @"OperationTimeout");
}

- (void)setTrafficLogMaximumDataSize:(int)size
{
  v5 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, *&size);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"TrafficLogMaximumDataSize");
}

- (void)setShouldStreamTrafficLogs:(BOOL)logs
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, logs);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"ShouldStreamTrafficLogs");
}

- (const)CKCtlPrompt
{
  v2 = sub_1886A2B80(self, @"CKCtlPrompt", @"ckctl> ");
  v5 = objc_msgSend_UTF8String(v2, v3, v4);

  return v5;
}

- (void)setCKCtlPrompt:(char *)prompt
{
  if (prompt)
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, prompt);
    objc_msgSend__setPref_forKey_(self, v4, v5, @"CKCtlPrompt");
  }

  else
  {

    objc_msgSend__setPref_forKey_(self, a2, 0, @"CKCtlPrompt");
  }
}

- (void)setCFNetworkLogging:(BOOL)logging
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, logging);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"CFNetworkLogging");
}

- (void)setDisableCaching:(BOOL)caching
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, caching);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"DisableCaching");
}

- (void)setShouldProfileSQL:(BOOL)l
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"SQLProfile");
}

- (void)setCompressRequests:(BOOL)requests
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, requests);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"CompressRequests");
}

- (void)setModTimeInAssetCacheEviction:(BOOL)eviction
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, eviction);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"UseModTimeInAssetCacheEviction");
}

- (void)setLogTraffic:(BOOL)traffic
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, traffic);
  objc_msgSend__reallySetPref_forKey_(self, v4, v5, @"LogTraffic");
}

- (void)setSendDebugHeader:(BOOL)header
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, header);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"SendDebugHeader");
}

- (void)setConfigBaseURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"ConfigBaseURL");
}

- (void)setSetupBaseURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"SetupBaseURL");
}

- (void)setCustomCloudDBBaseURL:(id)l
{
  lCopy = l;
  objc_msgSend__setPref_forKey_(self, v5, 0, @"CloudDBBaseURL");
  v9 = objc_msgSend_absoluteString(lCopy, v6, v7);

  objc_msgSend__setPref_forKey_(self, v8, v9, @"DatabaseServiceBaseURL");
}

- (void)setCustomShareServiceBaseURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"ShareServiceBaseURL");
}

- (void)setCustomDeviceServiceBaseURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"DeviceServiceBaseURL");
}

- (void)setCustomCodeServiceBaseURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"CodeServiceBaseURL");
}

- (void)setCustomMetricsServiceBaseURL:(id)l
{
  v5 = objc_msgSend_absoluteString(l, a2, l);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"MetricsServiceBaseURL");
}

- (void)setOptimisticPCS:(BOOL)s
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, s);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"OptimisticPCS");
}

- (void)setUseEncryption:(BOOL)encryption
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, encryption);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"UseEncryption");
}

- (void)setUseStingray:(BOOL)stingray
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, stingray);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"UseStingray");
}

- (void)setUsePreauth:(BOOL)preauth
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, preauth);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"UsePreauth");
}

- (void)setRollRecordPCSMasterKeys:(BOOL)keys
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, keys);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"RollRecordPCSMasterKeys");
}

- (void)setRollRecordMasterKeysOnUnshare:(BOOL)unshare
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, unshare);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"RollRecordMasterKeysOnUnshare");
}

- (void)setRollZonePCSIdentities:(BOOL)identities
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, identities);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"RollZonePCSIdentities");
}

- (void)setRollZoneSharingKeys:(BOOL)keys
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, keys);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"RollZoneSharingKeys");
}

- (void)setAllowZoneKeyRollingInPerRecordPCSZonesForAllContainers:(BOOL)containers
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, containers);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"AllowZoneKeyRollingInPerRecordPCSZonesForAllContainers");
}

- (void)setAllowRecordKeyRollingInPerRecordPCSZonesForAllContainers:(BOOL)containers
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, containers);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"AllowRecordKeyRollingInPerRecordPCSZonesForAllContainers");
}

- (void)setAllowZoneAndRecordKeyRollingInZoneishPCSZonesForAllContainers:(BOOL)containers
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, containers);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"AllowZoneAndRecordKeyRollingInZoneishPCSZonesForAllContainers");
}

- (void)setUseEnhancedPCSEncryptionContext:(BOOL)context
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, context);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"UseEnhancedPCSEncryptionContext");
}

- (void)setMaxPCSSizeForKeyRolls:(int64_t)rolls
{
  if (rolls < 0)
  {
    rolls = 0x80000;
  }

  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, rolls);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"MaxPCSSizeForKeyRolls");
}

- (void)setSqlBatchCount:(int64_t)count
{
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, count);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"SQLBatchCount");
}

- (void)setSqlBatchTime:(double)time
{
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, v3, time);
  objc_msgSend__setPref_forKey_(self, v5, v6, @"SQLBatchTime");
}

- (void)setPCSCacheValidTime:(int64_t)time
{
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], a2, time);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"PCSCacheValidTime");
}

- (void)setForceUploadRequestActivitiesToRunImmediately:(BOOL)immediately
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, immediately);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"ForceUploadRequestActivitiesToRunImmediately");
}

- (id)transcoderPermittedRemoteMeasurement
{
  if (self)
  {
    v2 = sub_1886A2830(self, @"TranscoderPermittedRemoteMeasurement");
    if (v2)
    {
      v5 = v2;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = objc_msgSend_null(MEMORY[0x1E695DFB0], v6, v7);

        v5 = v8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      v5 = objc_msgSend_null(MEMORY[0x1E695DFB0], v3, v4);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v5;
    if ((isKindOfClass & 1) == 0)
    {
LABEL_9:
      v11 = v10;

      goto LABEL_10;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)setFakeWalrusOverride:(BOOL)override
{
  if (override)
  {
    v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, 1);
    objc_msgSend__setPref_forKey_(self, v4, v6, @"FakeWalrusOverride");
  }

  else
  {
    objc_msgSend__setPref_forKey_(self, a2, 0, @"FakeWalrusOverride");

    objc_msgSend__setPref_forKey_(self, v5, 0, @"FakeWalrusEnabled");
  }
}

- (void)setFakeWalrusEnabled:(BOOL)enabled
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, enabled);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"FakeWalrusEnabled");
}

- (void)setFakeWalrusNotification:(BOOL)notification
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, notification);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"FakeWalrusNotify");
}

- (void)setCDPWalrusEnabled:(BOOL)enabled
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, enabled);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"CDPWalrusEnabled");
}

- (void)setCDPWalrusOverride:(BOOL)override
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, override);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"CDPWalrusOverride");
}

- (void)setFakeManateeEnabled:(BOOL)enabled
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, enabled);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"FakeManateeEnabled");
}

- (void)setFakeManateeOverride:(BOOL)override
{
  if (override)
  {
    v6 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, 1);
    objc_msgSend__setPref_forKey_(self, v4, v6, @"FakeManateeOverride");
  }

  else
  {
    objc_msgSend__setPref_forKey_(self, a2, 0, @"FakeManateeOverride");

    objc_msgSend__setPref_forKey_(self, v5, 0, @"FakeManateeEnabled");
  }
}

- (void)setIsCurrentAppleAccountSuspended:(BOOL)suspended
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, suspended);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"FakeSuspendedAppleAccount");
}

- (BOOL)isDASRateLimitingDisabled
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return sub_1886A2950(self, @"DisableDASRateLimiting", 0);
}

- (void)setCacheChildAccounts:(BOOL)accounts
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, accounts);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"CacheChildAccounts");
}

- (void)setOverrideSavePolicyForShareRecords:(BOOL)records
{
  if (records)
  {
    objc_msgSend__setPref_forKey_(self, a2, MEMORY[0x1E695E118], @"OverrideSavePolicyForShareRecords");
  }

  else
  {
    objc_msgSend__setPref_forKey_(self, a2, 0, @"OverrideSavePolicyForShareRecords");
  }
}

- (void)setAlwaysShowShareAccessRequestUI:(BOOL)i
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, i);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"AlwaysShowShareAccessRequestUI");
}

- (BOOL)fetchNewestChangesFirst
{
  v3 = _os_feature_enabled_impl();

  return sub_1886A2950(self, @"FetchNewestChangesFirst", v3);
}

- (void)setFetchNewestChangesFirst:(BOOL)first
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, first);
  objc_msgSend__reallySetPref_forKey_(self, v4, v5, @"FetchNewestChangesFirst");
}

- (void)setAllowsFetchPersonaAttributes:(BOOL)attributes
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, attributes);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"AllowsFetchPersonaAttributes");
}

- (BOOL)defaultContainerToLaunchPersona
{
  v3 = _os_feature_enabled_impl();

  return sub_1886A2950(self, @"DefaultContainerToLaunchPersona", v3);
}

- (void)setDefaultContainerToLaunchPersona:(BOOL)persona
{
  v5 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, persona);
  objc_msgSend__reallySetPref_forKey_(self, v4, v5, @"DefaultContainerToLaunchPersona");
}

- (void)setMaximumMergeableDeltaRequestSize:(unint64_t)size
{
  v5 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, size);
  objc_msgSend__setPref_forKey_(self, v4, v5, @"MergeableDeltaRequestSize");
}

@end