@interface DRSSystemProfile
+ (id)SHA256DigestForString:(id)string;
+ (id)sharedInstance;
+ (unint64_t)hashForSHA256Digest:(id)digest;
+ (unint64_t)uploadSessionUploadCapBytesWithIsInternal:(BOOL)internal isSeed:(BOOL)seed deviceModelHash:(unint64_t)hash;
- (BOOL)customerApprovesAnalytics;
- (BOOL)isCarrier;
- (BOOL)isInternal;
- (BOOL)isLogUploadEnabled;
- (BOOL)isSeed;
- (BOOL)isTaskingEnabled;
- (DRSSystemProfile)init;
- (NSString)automatedDeviceGroup;
- (NSString)buildVariant;
- (NSString)platformString;
- (unint64_t)uploadSessionUploadCapBytes;
- (void)_populateBuild;
- (void)_populateBuildVariant;
- (void)_populateCarrier;
- (void)_populateDeviceCategory;
- (void)_populateDeviceHash;
- (void)_populateDeviceModel;
- (void)_populateHWModel;
- (void)_populateIsCarry;
@end

@implementation DRSSystemProfile

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[DRSSystemProfile sharedInstance];
  }

  v3 = sharedInstance_sharedProfile;

  return v3;
}

void __34__DRSSystemProfile_sharedInstance__block_invoke()
{
  v53 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(DRSSystemProfile);
  v1 = sharedInstance_sharedProfile;
  sharedInstance_sharedProfile = v0;

  v3 = DPLogHandle_SystemProfile(v2);
  if (os_signpost_enabled(v3))
  {
    v4 = [sharedInstance_sharedProfile build];
    v5 = [sharedInstance_sharedProfile buildVariant];
    v6 = [sharedInstance_sharedProfile deviceCategory];
    v7 = [sharedInstance_sharedProfile deviceModel];
    v22 = [sharedInstance_sharedProfile platformString];
    v21 = [sharedInstance_sharedProfile deviceHash];
    v20 = [sharedInstance_sharedProfile isInternal];
    v19 = [sharedInstance_sharedProfile isSeed];
    v18 = [sharedInstance_sharedProfile isCarrier];
    v17 = [sharedInstance_sharedProfile customerApprovesAnalytics];
    v16 = [sharedInstance_sharedProfile isLogUploadEnabled];
    v15 = [sharedInstance_sharedProfile isTaskingEnabled];
    v8 = [sharedInstance_sharedProfile uploadSessionUploadCapBytes];
    v9 = [sharedInstance_sharedProfile hwModel];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"-";
    }

    v12 = [sharedInstance_sharedProfile isLikelyCarryGroupNum];
    v13 = v12;
    *buf = 138546946;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"-";
    }

    v24 = v4;
    v25 = 2114;
    v26 = v5;
    v27 = 2114;
    v28 = v6;
    v29 = 2114;
    v30 = v7;
    v31 = 2114;
    v32 = v22;
    v33 = 2050;
    v34 = v21;
    v35 = 1026;
    v36 = v20;
    v37 = 1026;
    v38 = v19;
    v39 = 1026;
    v40 = v18;
    v41 = 1026;
    v42 = v17;
    v43 = 1026;
    v44 = v16;
    v45 = 1026;
    v46 = v15;
    v47 = 2050;
    v48 = v8;
    v49 = 2114;
    v50 = v11;
    v51 = 2114;
    v52 = v14;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SystemProfileSingleton", "build                       = %{public}@\nbuildVariant                = %{public}@\ndeviceCategory              = %{public}@\ndeviceModel                 = %{public}@\nplatformString              = %{public}@\ndeviceHash                  = %{public}#llx\nisInternal                  = %{public}u\nisSeed                      = %{public}u\nisCarrier                   = %{public}u\ncustomerApprovesAnalytics   = %{public}u\nisLogUploadEnabled          = %{public}u\nisTaskingEnabled            = %{public}u\nuploadSessionUploadCapBytes = %{public}llu\nhwModel                     = %{public}@n\nisLikelyCarry               = %{public}@n\n", buf, 0x80u);
  }
}

- (void)_populateDeviceCategory
{
  v3 = MGGetSInt32Answer() - 1;
  if (v3 <= 0xB)
  {
    deviceCategory = self->_deviceCategory;
    self->_deviceCategory = &off_27899F930[v3]->isa;
  }
}

- (void)_populateDeviceModel
{
  v3 = MobileGestalt_get_current_device();
  v4 = MobileGestalt_copy_productTypeDescForPowerPerf_obj();

  if (v4)
  {
    goto LABEL_6;
  }

  v6 = DPLogHandle_SystemProfile(v5);
  if (os_signpost_enabled(v6))
  {
    *v10 = 0;
  }

  v7 = MGGetStringAnswer();
  if (v7)
  {
    v4 = v7;
LABEL_6:
    deviceModel = self->_deviceModel;
    self->_deviceModel = v4;
    v9 = v4;
  }
}

- (void)_populateCarrier
{
  self->_isCarrierVal = 0;
  if (![(DRSSystemProfile *)self isInternal])
  {
    v3 = MGGetStringAnswer();
    if (v3)
    {
      v4 = v3;
      self->_isCarrierVal = CFStringCompare(v3, @"Carrier", 0) == kCFCompareEqualTo;

      CFRelease(v4);
    }
  }
}

- (void)_populateBuild
{
  v3 = _CFCopySystemVersionDictionary();
  if (v3)
  {
    v4 = v3;
    obj = CFDictionaryGetValue(v3, *MEMORY[0x277CBEC70]);
    if (obj)
    {
      objc_storeStrong(&self->_build, obj);
    }

    CFRelease(v4);
  }

  else
  {
    v5 = DPLogHandle_SystemProfileError(0);
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "OsVersionReadFailure", "Could not fetch OS version using _CFCopySystemVersionDictionary", buf, 2u);
    }
  }
}

+ (id)SHA256DigestForString:(id)string
{
  v3 = [string dataUsingEncoding:4];
  v4 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));

  return v4;
}

+ (unint64_t)hashForSHA256Digest:(id)digest
{
  digestCopy = digest;
  v4 = [digestCopy length];
  if (v4 != 32)
  {
    v10 = DPLogHandle_SystemProfileError(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(DRSSystemProfile *)digestCopy hashForSHA256Digest:v10];
    }

    goto LABEL_9;
  }

  bytes = [digestCopy bytes];
  v6 = [digestCopy length];
  v7 = (v6 >> 3);
  if (!(v6 >> 3))
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = 0;
  do
  {
    v9 = *bytes++;
    v8 ^= v9;
    --v7;
  }

  while (v7);
LABEL_10:

  return v8;
}

- (void)_populateDeviceHash
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3 && (v3 = [v3 length]) != 0 && (v3 = objc_msgSend(v4, "isEqualToString:", @"ffffffffffffffffffffffffffffffffffffffff"), !v3))
  {
    v6 = [objc_opt_class() SHA256DigestForString:v4];
    deviceSHA256Digest = self->_deviceSHA256Digest;
    self->_deviceSHA256Digest = v6;

    v8 = objc_opt_class();
    deviceSHA256Digest = [(DRSSystemProfile *)self deviceSHA256Digest];
    self->_deviceHash = [v8 hashForSHA256Digest:deviceSHA256Digest];

    v5 = DPLogHandle_SystemProfile(v10);
    if (os_signpost_enabled(v5))
    {
      deviceHash = [(DRSSystemProfile *)self deviceHash];
      deviceSHA256Digest2 = [(DRSSystemProfile *)self deviceSHA256Digest];
      v13 = 134349570;
      v14 = deviceHash;
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = deviceSHA256Digest2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DeviceHashCalculation", "Device hash %{public}llx from UDID %{public}@ -> digest %{public}@", &v13, 0x20u);
    }
  }

  else
  {
    v5 = DPLogHandle_SystemProfileError(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(DRSSystemProfile *)v5 _populateDeviceHash];
    }
  }
}

- (NSString)platformString
{
  platform = [(DRSSystemProfile *)self platform];

  return DRSSystemProfilePlatformStringForPlatform(platform);
}

- (NSString)buildVariant
{
  isInternal = [(DRSSystemProfile *)self isInternal];
  isSeed = [(DRSSystemProfile *)self isSeed];
  isCarrier = [(DRSSystemProfile *)self isCarrier];

  return DRSSystemProfileVariantStringForParameters(isInternal, isSeed, isCarrier);
}

- (void)_populateBuildVariant
{
  self->_isInternalVal = os_variant_has_internal_diagnostics();
  self->_isSeedVal = 0;

  [(DRSSystemProfile *)self _populateCarrier];
}

- (void)_populateHWModel
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(DRSSystemProfile *)self isInternal])
  {
    v14 = 32;
    v3 = sysctlbyname("hw.model", v17, &v14, 0, 0);
    if (v3)
    {
      v4 = DPLogHandle_SystemProfile(v3);
      if (os_signpost_enabled(v4))
      {
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        *buf = 67109378;
        LODWORD(v16[0]) = v5;
        WORD2(v16[0]) = 2082;
        *(v16 + 6) = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWModelLookupFailure", "Failed to lookup hw.model: %d %{public}s", buf, 0x12u);
      }

      hwModel = self->_hwModel;
      self->_hwModel = 0;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v17];
      v11 = self->_hwModel;
      self->_hwModel = v10;

      hwModel = DPLogHandle_SystemProfile(v12);
      if (os_signpost_enabled(hwModel))
      {
        hwModel = [(DRSSystemProfile *)self hwModel];
        *buf = 138543362;
        v16[0] = hwModel;
        _os_signpost_emit_with_name_impl(&dword_232906000, hwModel, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HWModelLookupSuccess", "hw.model: '%{public}@'", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = self->_hwModel;
    self->_hwModel = 0;
  }
}

- (void)_populateIsCarry
{
  v20 = *MEMORY[0x277D85DE8];
  isInternal = [(DRSSystemProfile *)self isInternal];
  if (isInternal)
  {
    v4 = CFPreferencesCopyValue(@"ExperimentGroup", @"com.apple.da", @"mobile", *MEMORY[0x277CBF010]);
    lowercaseString = [v4 lowercaseString];

    v6 = MEMORY[0x277CCABB0];
    if (([lowercaseString containsString:@"carry"]& 1) != 0)
    {
      v7 = 1;
    }

    else
    {
      v7 = [lowercaseString containsString:@"walkabout"];
    }

    v8 = [v6 numberWithInt:v7];
    isLikelyCarryGroupNum = self->_isLikelyCarryGroupNum;
    self->_isLikelyCarryGroupNum = v8;

    v11 = DPLogHandle_SystemProfile(v10);
    if (os_signpost_enabled(v11))
    {
      isLikelyCarryGroupNum = [(DRSSystemProfile *)self isLikelyCarryGroupNum];
      bOOLValue = [isLikelyCarryGroupNum BOOLValue];
      v14 = @"Not likely carry";
      if (bOOLValue)
      {
        v14 = @"Likely carry";
      }

      v15 = @"<no string>";
      if (lowercaseString)
      {
        v15 = lowercaseString;
      }

      v16 = 138543618;
      v17 = v14;
      v18 = 2114;
      v19 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IsLikelyCarryLookup", "Decided that the device is: '%{public}@' based on experimental group string: '%{public}@'", &v16, 0x16u);
    }
  }

  else
  {
    lowercaseString = DPLogHandle_SystemProfile(isInternal);
    if (os_signpost_enabled(lowercaseString))
    {
      LOWORD(v16) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, lowercaseString, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IsLikelyCarryLookupSkipped", "We dont reason about carry for non-Internal devices", &v16, 2u);
    }
  }
}

- (BOOL)isSeed
{
  if ([(DRSSystemProfile *)self allowsBuildVariantOverride])
  {

    return [(DRSSystemProfile *)self overridingIsSeed];
  }

  else
  {

    return [(DRSSystemProfile *)self isSeedVal];
  }
}

- (BOOL)isInternal
{
  if ([(DRSSystemProfile *)self allowsBuildVariantOverride])
  {

    return [(DRSSystemProfile *)self overridingIsInternal];
  }

  else
  {

    return [(DRSSystemProfile *)self isInternalVal];
  }
}

- (BOOL)isCarrier
{
  if ([(DRSSystemProfile *)self allowsBuildVariantOverride])
  {

    return [(DRSSystemProfile *)self overridingIsCarrier];
  }

  else
  {

    return [(DRSSystemProfile *)self isCarrierVal];
  }
}

- (BOOL)customerApprovesAnalytics
{
  if ([(DRSSystemProfile *)self allowsCustomerAnalyticsOverride])
  {

    return [(DRSSystemProfile *)self overridingCustomerApprovesAnalyticsValue];
  }

  else
  {

    return MEMORY[0x282158D98]();
  }
}

- (DRSSystemProfile)init
{
  v8.receiver = self;
  v8.super_class = DRSSystemProfile;
  v2 = [(DRSSystemProfile *)&v8 init];
  v3 = v2;
  if (v2)
  {
    build = v2->_build;
    v2->_build = @"Unknown";

    deviceModel = v3->_deviceModel;
    v3->_deviceModel = @"Unknown";

    deviceCategory = v3->_deviceCategory;
    v3->_deviceCategory = @"Unknown";

    [(DRSSystemProfile *)v3 _populateBuildVariant];
    [(DRSSystemProfile *)v3 _populateBuild];
    [(DRSSystemProfile *)v3 _populateDeviceModel];
    [(DRSSystemProfile *)v3 _populateDeviceCategory];
    [(DRSSystemProfile *)v3 _populatePlatform];
    [(DRSSystemProfile *)v3 _populateDeviceHash];
    [(DRSSystemProfile *)v3 _populateHWModel];
    [(DRSSystemProfile *)v3 _populateIsCarry];
  }

  return v3;
}

- (BOOL)isLogUploadEnabled
{
  customerApprovesAnalytics = [(DRSSystemProfile *)self customerApprovesAnalytics];
  if (customerApprovesAnalytics)
  {
    LOBYTE(customerApprovesAnalytics) = ![(DRSSystemProfile *)self hasForbiddenAutomatedDeviceGroup];
  }

  return customerApprovesAnalytics;
}

- (BOOL)isTaskingEnabled
{
  v13 = *MEMORY[0x277D85DE8];
  customerApprovesAnalytics = [(DRSSystemProfile *)self customerApprovesAnalytics];
  v4 = customerApprovesAnalytics;
  if (customerApprovesAnalytics)
  {
    customerApprovesAnalytics = [(DRSSystemProfile *)self isCarrier];
    v5 = customerApprovesAnalytics ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = DPLogHandle_SystemProfile(customerApprovesAnalytics);
  if (os_signpost_enabled(v6))
  {
    v8[0] = 67240704;
    v8[1] = v4;
    v9 = 1026;
    isCarrier = [(DRSSystemProfile *)self isCarrier];
    v11 = 1026;
    v12 = v5;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IsTaskingEnabledDetails", "customerApprovesAnalytics = %{public}u isCarrier = %{public}u isTaskingEnabled = %{public}u", v8, 0x14u);
  }

  return v5;
}

+ (unint64_t)uploadSessionUploadCapBytesWithIsInternal:(BOOL)internal isSeed:(BOOL)seed deviceModelHash:(unint64_t)hash
{
  v5 = 0x40000000;
  if (hash == 0x14C201DB1898C936)
  {
    v5 = 0x80000000;
  }

  if (!seed)
  {
    v5 = 0x8000000;
  }

  if (internal)
  {
    return 0x140000000;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)uploadSessionUploadCapBytes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__DRSSystemProfile_uploadSessionUploadCapBytes__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  if (uploadSessionUploadCapBytes_onceToken_0 != -1)
  {
    dispatch_once(&uploadSessionUploadCapBytes_onceToken_0, block);
  }

  return uploadSessionUploadCapBytes_cap_0;
}

void __47__DRSSystemProfile_uploadSessionUploadCapBytes__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  v4 = [*(a1 + 32) isInternal];
  v5 = [*(a1 + 32) isSeed];
  v6 = [*(a1 + 32) deviceModel];
  uploadSessionUploadCapBytes_cap_0 = [v3 uploadSessionUploadCapBytesWithIsInternal:v4 isSeed:v5 deviceModelHash:{objc_msgSend(v6, "hash")}];
}

- (NSString)automatedDeviceGroup
{
  if (automatedDeviceGroup_onceToken != -1)
  {
    [DRSSystemProfile automatedDeviceGroup];
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__DRSSystemProfile_automatedDeviceGroup__block_invoke_120;
  v5[3] = &unk_27899F8D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(automatedDeviceGroup_automatedDeviceGroupSyncQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__DRSSystemProfile_automatedDeviceGroup__block_invoke()
{
  v0 = dispatch_queue_create("DRSSystemProfile automated device group sync queue", 0);
  v1 = automatedDeviceGroup_automatedDeviceGroupSyncQueue;
  automatedDeviceGroup_automatedDeviceGroupSyncQueue = v0;
}

void __40__DRSSystemProfile_automatedDeviceGroup__block_invoke_120(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) allowsAutomatedDeviceGroupOverride];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 overridingAutomatedDeviceGroup];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v8 = DPLogHandle_SystemProfile(v7);
    if (os_signpost_enabled(v8))
    {
      v9 = *(*(*(a1 + 40) + 8) + 40);
      v25 = 138543362;
      v26 = v9;
      v10 = "AutomatedDeviceGroupOverridden";
      v11 = "Got an overridden value: '%{public}@'";
      v12 = v8;
      v13 = 12;
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v10, v11, &v25, v13);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v14 = [v3 isInternal];
  if (v14)
  {
    v15 = [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v16 - *&automatedDeviceGroup_lastQueryTimestamp >= 60.0)
    {
      automatedDeviceGroup_lastQueryTimestamp = *&v16;
      v20 = [MEMORY[0x277D36B80] automatedDeviceGroup];
      v21 = automatedDeviceGroup_automatedDeviceGroup;
      automatedDeviceGroup_automatedDeviceGroup = v20;

      v17 = DPLogHandle_SystemProfile(v22);
      if (os_signpost_enabled(v17))
      {
        v25 = 138543362;
        v26 = automatedDeviceGroup_automatedDeviceGroup;
        v18 = "AutomatedDeviceGroupLookup";
        v19 = "Got a new automated device group: '%{public}@'";
        goto LABEL_13;
      }
    }

    else
    {
      v17 = DPLogHandle_SystemProfile(v15);
      if (os_signpost_enabled(v17))
      {
        v25 = 134217984;
        v26 = 0x404E000000000000;
        v18 = "AutomatedDeviceGroupLookupHysteresis";
        v19 = "Skipping fresh lookup due to hysteresis of %.2fsec";
LABEL_13:
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v18, v19, &v25, 0xCu);
      }
    }

    v23 = *(*(a1 + 40) + 8);
    v24 = automatedDeviceGroup_automatedDeviceGroup;
    v8 = *(v23 + 40);
    *(v23 + 40) = v24;
    goto LABEL_15;
  }

  v8 = DPLogHandle_SystemProfile(v14);
  if (os_signpost_enabled(v8))
  {
    LOWORD(v25) = 0;
    v10 = "AutomatedDeviceGroupSkipped";
    v11 = "Skipping automated device group lookup since we are not 'Internal'";
    v12 = v8;
    v13 = 2;
    goto LABEL_10;
  }

LABEL_15:
}

+ (void)hashForSHA256Digest:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = [a1 length];
  v5 = 1024;
  v6 = 32;
  _os_log_fault_impl(&dword_232906000, a2, OS_LOG_TYPE_FAULT, "Attempted to generate a hash from a digest of unexpected length %lu (expected %d)", &v3, 0x12u);
}

@end