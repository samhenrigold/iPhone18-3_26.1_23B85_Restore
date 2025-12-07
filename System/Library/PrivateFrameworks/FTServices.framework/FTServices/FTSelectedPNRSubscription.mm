@interface FTSelectedPNRSubscription
+ (BOOL)isPhoneNumber:(id)number equivalentToExistingPhoneNumber:(id)phoneNumber;
+ (FTSelectedPNRSubscription)sharedInstance;
- (BOOL)_doesSubscriptionInfoContainMultipleLabels:(id)labels;
- (BOOL)_doesSubscriptionInfoContainMultipleUniqueLabels:(id)labels;
- (BOOL)_isIdentityFallbackProhibitedForDeviceBasedOnCapability:(int64_t)capability subscriptionInfo:(id)info;
- (BOOL)_isInDualPhoneIdentityModeBasedOnCapability:(int64_t)capability;
- (BOOL)_legacy_isPhoneNumberEmergencyNumber:(id)number;
- (BOOL)isDeviceInDualPhoneIdentityMode;
- (BOOL)isPhoneNumberEmergencyNumber:(id)number;
- (BOOL)isSelectedPhoneNumberRegistrationSubscriptionContext:(id)context;
- (FTSelectedPNRSubscription)init;
- (id)_firstPresentSubscriptionFromAvailableSubscriptions:(id)subscriptions;
- (id)_protected_reevaluateCacheIfNeededAndPersistUpdate:(BOOL)update;
- (id)_reevaluateCachedActiveSubscriptionWithError:(id *)error;
- (id)_reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:(id)subscription activeContexts:(id)contexts fallbackProhibited:(BOOL)prohibited persistUpdate:(BOOL)update error:(id *)error;
- (id)_reevaluateCachedSelectedPhoneNumberWithContext:(id)context error:(id *)error;
- (id)_reevaluateCachedSubscriptionWithError:(id *)error;
- (id)_subscriptionFromAvailableSubscriptions:(id)subscriptions matchingSelectedLabel:(id)label;
- (id)selectedPhoneNumberRegistrationSubscriptionWithError:(id *)error;
- (id)selectedRegistrationPhoneNumberWithError:(id *)error;
- (id)setSelectedPhoneNumberRegistrationSubscriptionNumber:(id)number;
- (void)_distributed_invalidateCache;
- (void)_protected_invalidateCache;
- (void)_reevaluateDualIdentityModeWithSubscriptionInfo:(id)info;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)dualSimCapabilityDidChange;
- (void)phoneNumberAvailable:(id)available;
- (void)phoneNumberChanged:(id)changed;
- (void)subscriptionInfoDidChange;
@end

@implementation FTSelectedPNRSubscription

+ (FTSelectedPNRSubscription)sharedInstance
{
  if (qword_1ED768790 != -1)
  {
    sub_1959267E4();
  }

  v3 = qword_1ED7686F0;

  return v3;
}

- (FTSelectedPNRSubscription)init
{
  v11.receiver = self;
  v11.super_class = FTSelectedPNRSubscription;
  v2 = [(FTSelectedPNRSubscription *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc(MEMORY[0x1E69650A0]);
    v6 = im_primary_queue();
    v7 = [v5 initWithQueue:v6];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v7;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_195939E80, @"FTSelectedPNRSubscriptionChangedDistributedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

+ (BOOL)isPhoneNumber:(id)number equivalentToExistingPhoneNumber:(id)phoneNumber
{
  v23 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  phoneNumberCopy = phoneNumber;
  if ([numberCopy length] || objc_msgSend(phoneNumberCopy, "length"))
  {
    if ([numberCopy length] && objc_msgSend(phoneNumberCopy, "length"))
    {
      v7 = [phoneNumberCopy _IDFromFZIDType:0];
      _stripFZIDPrefix = [v7 _stripFZIDPrefix];

      v9 = [numberCopy _IDFromFZIDType:0];
      _stripFZIDPrefix2 = [v9 _stripFZIDPrefix];

      if ([_stripFZIDPrefix hasPrefix:@"+"])
      {
        v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
        v12 = [_stripFZIDPrefix stringByRemovingCharactersFromSet:v11];

        _stripFZIDPrefix = v12;
      }

      v13 = (_FTAreIDsEquivalent() & 1) != 0 || (_FTAreIDsEquivalent() & 1) != 0 || [_stripFZIDPrefix rangeOfString:_stripFZIDPrefix2] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(_stripFZIDPrefix2, "rangeOfString:", _stripFZIDPrefix) != 0x7FFFFFFFFFFFFFFFLL;
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        v17 = 138412802;
        v18 = numberCopy;
        v19 = 2112;
        if (v13)
        {
          v15 = @"YES";
        }

        v20 = phoneNumberCopy;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined whether phone numbers are equivalent { phoneNumber: %@, existingPhoneNumber: %@, equivalent: %@ }", &v17, 0x20u);
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"FTSelectedPNRSubscriptionChangedDistributedNotification", 0);
  v4.receiver = self;
  v4.super_class = FTSelectedPNRSubscription;
  [(FTSelectedPNRSubscription *)&v4 dealloc];
}

- (void)subscriptionInfoDidChange
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Subscription info did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)phoneNumberChanged:(id)changed
{
  v8 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Phone number changed -- clearing cached selected phone number registration subscription { context: %@ }", &v6, 0xCu);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)phoneNumberAvailable:(id)available
{
  v8 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = availableCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Phone number became available -- clearing cached selected phone number registration subscription { context: %@ }", &v6, 0xCu);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)activeSubscriptionsDidChange
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Active subscriptions did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)dualSimCapabilityDidChange
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Dual SIM capability did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (id)_protected_reevaluateCacheIfNeededAndPersistUpdate:(BOOL)update
{
  updateCopy = update;
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_isCacheValid)
  {
    v5 = objc_alloc_init(FTSelectedPNRSubscriptionCache);
    v33 = 0;
    v6 = [(FTSelectedPNRSubscription *)self _reevaluateCachedSubscriptionWithError:&v33];
    v7 = v33;
    [(FTSelectedPNRSubscriptionCache *)v5 setSubscriptionInfo:v6];

    v32 = 0;
    v8 = [(FTSelectedPNRSubscription *)self _reevaluateCachedActiveSubscriptionWithError:&v32];
    v9 = v32;
    [(FTSelectedPNRSubscriptionCache *)v5 setActiveSubscriptionInfo:v8];

    subscriptionInfo = [(FTSelectedPNRSubscriptionCache *)v5 subscriptionInfo];
    [(FTSelectedPNRSubscription *)self _reevaluateDualIdentityModeWithSubscriptionInfo:subscriptionInfo];

    coreTelephonyClient = self->_coreTelephonyClient;
    v31 = 0;
    v12 = [(CoreTelephonyClient *)coreTelephonyClient getDualSimCapability:&v31];
    v13 = v31;
    [(FTSelectedPNRSubscriptionCache *)v5 setDualSIMCapability:v12];
    if (v13)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_195962F5C();
      }
    }

    dualSIMCapability = [(FTSelectedPNRSubscriptionCache *)v5 dualSIMCapability];
    subscriptionInfo2 = [(FTSelectedPNRSubscriptionCache *)v5 subscriptionInfo];
    v17 = [(FTSelectedPNRSubscription *)self _isIdentityFallbackProhibitedForDeviceBasedOnCapability:dualSIMCapability subscriptionInfo:subscriptionInfo2];

    subscriptionInfo3 = [(FTSelectedPNRSubscriptionCache *)v5 subscriptionInfo];
    activeSubscriptionInfo = [(FTSelectedPNRSubscriptionCache *)v5 activeSubscriptionInfo];
    v30 = 0;
    v20 = [(FTSelectedPNRSubscription *)self _reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:subscriptionInfo3 activeContexts:activeSubscriptionInfo fallbackProhibited:v17 persistUpdate:updateCopy error:&v30];
    v21 = v30;
    [(FTSelectedPNRSubscriptionCache *)v5 setSelectedContext:v20];

    selectedContext = [(FTSelectedPNRSubscriptionCache *)v5 selectedContext];
    v29 = 0;
    v23 = [(FTSelectedPNRSubscription *)self _reevaluateCachedSelectedPhoneNumberWithContext:selectedContext error:&v29];
    v24 = v29;
    [(FTSelectedPNRSubscriptionCache *)v5 setPhoneNumber:v23];

    cache = self->_cache;
    self->_cache = v5;
    v26 = v5;

    self->_isCacheValid = v7 == 0;
  }

  v27 = self->_cache;
  [(NSRecursiveLock *)self->_lock unlock];

  return v27;
}

- (void)_distributed_invalidateCache
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Posting distributed notification to invalidate selected phone number subscription caches in other processes", v4, 2u);
  }

  byte_1EAED77F0 = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"FTSelectedPNRSubscriptionChangedDistributedNotification", 0, 0, 0);
  im_dispatch_after_primary_queue();
}

- (void)_protected_invalidateCache
{
  [(NSRecursiveLock *)self->_lock lock];
  cache = self->_cache;
  self->_cache = 0;

  self->_isCacheValid = 0;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (id)selectedPhoneNumberRegistrationSubscriptionWithError:(id *)error
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  selectedContext = [v3 selectedContext];

  return selectedContext;
}

- (BOOL)isSelectedPhoneNumberRegistrationSubscriptionContext:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  selectedContext = [v5 selectedContext];
  v7 = +[FTUserConfiguration sharedInstance];
  selectedPhoneNumberRegistrationSubscriptionLabels = [v7 selectedPhoneNumberRegistrationSubscriptionLabels];
  firstObject = [selectedPhoneNumberRegistrationSubscriptionLabels firstObject];

  slotID = [contextCopy slotID];
  slotID2 = [selectedContext slotID];
  labelID = [contextCopy labelID];
  v13 = 0;
  if (labelID && firstObject)
  {
    labelID2 = [contextCopy labelID];
    v13 = [labelID2 isEqualToString:firstObject];
  }

  v15 = (slotID == slotID2) | v13;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    v18 = @"NO";
    v19 = 138413058;
    v20 = contextCopy;
    if (v15)
    {
      v18 = @"YES";
    }

    v21 = 2112;
    v22 = selectedContext;
    v23 = 2112;
    v24 = firstObject;
    v25 = 2112;
    v26 = v18;
    _os_log_debug_impl(&dword_195925000, registration, OS_LOG_TYPE_DEBUG, "Determined if provided subscription context is selected IDS phone number subscription context { context: %@, selectedContext: %@, persistedLabel: %@, isMatching: %@ }", &v19, 0x2Au);
  }

  return v15 & 1;
}

- (id)selectedRegistrationPhoneNumberWithError:(id *)error
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  phoneNumber = [v3 phoneNumber];

  return phoneNumber;
}

- (id)setSelectedPhoneNumberRegistrationSubscriptionNumber:(id)number
{
  v45 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  coreTelephonyClient = self->_coreTelephonyClient;
  v34 = 0;
  v6 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v34];
  v7 = v34;
  subscriptions = [v6 subscriptions];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = v6;
    v38 = 2112;
    v39 = v7;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Loaded subscription info { info: %@, error: %@ }", buf, 0x16u);
  }

  if ([subscriptions count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = subscriptions;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v44 count:16];
    if (v11)
    {
      v29 = subscriptions;
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if (numberCopy)
          {
            v14 = *(*(&v30 + 1) + 8 * i);
            slotID = [v14 slotID];
            v16 = slotID == 1 ? &unk_1F09D0728 : &unk_1F09D0710;
            v17 = slotID == 2 ? &unk_1F09D0740 : v16;
            if ([v17 isEqualToNumber:numberCopy])
            {
              v11 = v14;
              goto LABEL_25;
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v30 objects:v44 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_25:
      subscriptions = v29;
    }

    goto LABEL_27;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  v19 = registration2;
  if (!v7)
  {
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_195962FCC();
    }

    v11 = 0;
LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v37 = v6;
    v38 = 2112;
    v39 = subscriptions;
    v40 = 2112;
    v41 = v7;
    _os_log_error_impl(&dword_195925000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch subscriptions { subscriptionInfo: %@, subscriptions: %@, error: %@ }", buf, 0x20u);
  }

  v20 = v7;
  v11 = 0;
LABEL_28:
  registration3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
  {
    labelID = [v11 labelID];
    *buf = 138413058;
    v37 = numberCopy;
    v38 = 2112;
    v39 = labelID;
    v40 = 2112;
    v41 = v11;
    v42 = 2112;
    v43 = subscriptions;
    _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Selected new phone number registration subscription context { subscriptionNumber: %@, labelID: %@, selectedSubscription: %@, availableSubscriptions: %@ }", buf, 0x2Au);
  }

  v23 = +[FTUserConfiguration sharedInstance];
  labelID2 = [v11 labelID];
  v35 = labelID2;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [v23 setSelectedPhoneNumberRegistrationSubscriptionLabels:v25];

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
  [(FTSelectedPNRSubscription *)self _distributed_invalidateCache];
  v26 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v27 = v20;

  return v20;
}

- (BOOL)isDeviceInDualPhoneIdentityMode
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v4 = -[FTSelectedPNRSubscription _isInDualPhoneIdentityModeBasedOnCapability:](self, "_isInDualPhoneIdentityModeBasedOnCapability:", [v3 dualSIMCapability]);
  subscriptionInfo = [v3 subscriptionInfo];
  v6 = [(FTSelectedPNRSubscription *)self _doesSubscriptionInfoContainMultipleLabels:subscriptionInfo];

  if (v4 || (v7 = 0, v6))
  {
    activeSubscriptionInfo = [v3 activeSubscriptionInfo];
    subscriptions = [activeSubscriptionInfo subscriptions];
    if ([subscriptions count] == 1)
    {
      activeSubscriptionInfo2 = [v3 activeSubscriptionInfo];
      subscriptions2 = [activeSubscriptionInfo2 subscriptions];
      firstObject = [subscriptions2 firstObject];
      labelID = [firstObject labelID];
      if (labelID)
      {
        selectedContext = [v3 selectedContext];
        labelID2 = [selectedContext labelID];
        if (labelID2)
        {
          v24 = labelID2;
          activeSubscriptionInfo3 = [v3 activeSubscriptionInfo];
          subscriptions3 = [activeSubscriptionInfo3 subscriptions];
          firstObject2 = [subscriptions3 firstObject];
          [firstObject2 labelID];
          v17 = v26 = activeSubscriptionInfo2;
          [v3 selectedContext];
          v18 = v25 = selectedContext;
          labelID3 = [v18 labelID];
          v21 = [v17 isEqualToString:labelID3];

          selectedContext = v25;
          activeSubscriptionInfo2 = v26;

          labelID2 = v24;
          v7 = v21 ^ 1;
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7 & 1;
}

- (BOOL)_isInDualPhoneIdentityModeBasedOnCapability:(int64_t)capability
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = capability == 2 || capability == 4;
  v6 = +[FTUserConfiguration sharedInstance];
  isDeviceInDualPhoneIdentityMode = [v6 isDeviceInDualPhoneIdentityMode];

  v8 = v5 & isDeviceInDualPhoneIdentityMode;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v13 = 138412802;
    v14 = v11;
    if (isDeviceInDualPhoneIdentityMode)
    {
      v10 = @"YES";
    }

    v15 = 2048;
    capabilityCopy = capability;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined if device is in dual phone identity mode { isDualIdentity: %@, dualSIMCapability: %ld, isDeviceInDualPhoneIdentityMode: %@ }", &v13, 0x20u);
  }

  return v8;
}

- (BOOL)_isIdentityFallbackProhibitedForDeviceBasedOnCapability:(int64_t)capability subscriptionInfo:(id)info
{
  capabilityCopy = capability;
  v6 = [FTUserConfiguration sharedInstance:capability];
  selectedPhoneNumberRegistrationSubscriptionLabels = [v6 selectedPhoneNumberRegistrationSubscriptionLabels];
  firstObject = [selectedPhoneNumberRegistrationSubscriptionLabels firstObject];

  LOBYTE(capabilityCopy) = [(FTSelectedPNRSubscription *)self _isInDualPhoneIdentityModeBasedOnCapability:capabilityCopy];
  return (firstObject != 0) & capabilityCopy;
}

- (id)_reevaluateCachedSubscriptionWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v11 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v11];
  v6 = v11;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Loaded subscription info { info: %@, error: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195963050();
    }
  }

  if (error)
  {
    v9 = v6;
    *error = v6;
  }

  return v5;
}

- (id)_reevaluateCachedActiveSubscriptionWithError:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v11 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient getActiveContexts:&v11];
  v6 = v11;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Loaded active contexts { contexts: %@, error: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_1959630C0();
    }
  }

  if (error)
  {
    v9 = v6;
    *error = v6;
  }

  return v5;
}

- (BOOL)_doesSubscriptionInfoContainMultipleLabels:(id)labels
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subscriptions = [labels subscriptions];
  v4 = [subscriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(subscriptions);
        }

        labelID = [*(*(&v11 + 1) + 8 * i) labelID];
        v9 = [labelID length];

        if (v9)
        {
          ++v5;
        }
      }

      v4 = [subscriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    LOBYTE(v4) = v5 > 1;
  }

  return v4;
}

- (BOOL)_doesSubscriptionInfoContainMultipleUniqueLabels:(id)labels
{
  v21 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subscriptions = [labelsCopy subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        labelID = [v10 labelID];
        v12 = [labelID length];

        if (v12)
        {
          labelID2 = [v10 labelID];
          [v4 addObject:labelID2];
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v4 count] > 1;
  return v14;
}

- (void)_reevaluateDualIdentityModeWithSubscriptionInfo:(id)info
{
  v11 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[FTUserConfiguration sharedInstance];
  isDeviceInDualPhoneIdentityMode = [v5 isDeviceInDualPhoneIdentityMode];

  if ((isDeviceInDualPhoneIdentityMode & 1) == 0 && [(FTSelectedPNRSubscription *)self _doesSubscriptionInfoContainMultipleUniqueLabels:infoCopy])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = infoCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined that device has entered dual identity mode { subscriptionInfo: %@ }", &v9, 0xCu);
    }

    v8 = +[FTUserConfiguration sharedInstance];
    [v8 setIsDeviceInDualPhoneIdentityMode:1];
  }
}

- (id)_subscriptionFromAvailableSubscriptions:(id)subscriptions matchingSelectedLabel:(id)label
{
  v20 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  labelCopy = label;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = subscriptionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        labelID = [v11 labelID];
        v13 = labelID;
        if (labelCopy && labelID && [labelID isEqualToString:labelCopy])
        {
          v8 = v11;

          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

- (id)_firstPresentSubscriptionFromAvailableSubscriptions:(id)subscriptions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subscriptionsCopy = subscriptions;
  v4 = [subscriptionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(subscriptionsCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        labelID = [v7 labelID];
        if ([labelID length])
        {
          v4 = v7;

          goto LABEL_11;
        }
      }

      v4 = [subscriptionsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)_reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:(id)subscription activeContexts:(id)contexts fallbackProhibited:(BOOL)prohibited persistUpdate:(BOOL)update error:(id *)error
{
  updateCopy = update;
  prohibitedCopy = prohibited;
  v39[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  contextsCopy = contexts;
  if (self->_coreTelephonyClient)
  {
    v13 = +[FTUserConfiguration sharedInstance];
    selectedPhoneNumberRegistrationSubscriptionLabels = [v13 selectedPhoneNumberRegistrationSubscriptionLabels];
    firstObject = [selectedPhoneNumberRegistrationSubscriptionLabels firstObject];

    v16 = +[FTUserConfiguration sharedInstance];
    selectedPhoneNumberRegistrationSubscriptionNumber = [v16 selectedPhoneNumberRegistrationSubscriptionNumber];

    subscriptions = [subscriptionCopy subscriptions];
    if (![subscriptions count])
    {
      v21 = 0;
LABEL_24:
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v35 = v21;
        v36 = 2112;
        v37 = firstObject;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined selected phone number registration subscription context { selectedSubscription: %@, persistedLabel: %@ }", buf, 0x16u);
      }

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v35 = subscriptions;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Available subscriptions { available: %@ }", buf, 0xCu);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        subscriptions2 = [contextsCopy subscriptions];
        *buf = 138412290;
        v35 = subscriptions2;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Active subscriptions { active: %@ }", buf, 0xCu);
      }

      goto LABEL_31;
    }

    firstObject2 = [(FTSelectedPNRSubscription *)self _subscriptionFromAvailableSubscriptions:subscriptions matchingSelectedLabel:firstObject];
    v19 = firstObject2;
    if (firstObject2)
    {
      v20 = 0;
    }

    else if ([subscriptions count] < 2 || (-[FTSelectedPNRSubscription _firstPresentSubscriptionFromAvailableSubscriptions:](self, "_firstPresentSubscriptionFromAvailableSubscriptions:", subscriptions), firstObject2 = objc_claimAutoreleasedReturnValue(), (v20 = firstObject2) == 0))
    {
      firstObject2 = [subscriptions firstObject];
      v20 = firstObject2;
    }

    if (prohibitedCopy)
    {
      v22 = v19;
    }

    else
    {
      v22 = firstObject2;
    }

    v21 = v22;
    labelID = [v21 labelID];
    v24 = labelID;
    if (updateCopy && labelID)
    {
      v25 = +[FTUserConfiguration sharedInstance];
      v39[0] = v24;
      v26 = v39;
    }

    else
    {
      if (firstObject || !selectedPhoneNumberRegistrationSubscriptionNumber || !labelID)
      {
        goto LABEL_23;
      }

      v25 = +[FTUserConfiguration sharedInstance];
      v38 = v24;
      v26 = &v38;
    }

    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v25 setSelectedPhoneNumberRegistrationSubscriptionLabels:v27];

LABEL_23:
    goto LABEL_24;
  }

  firstObject = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    sub_195963130();
  }

  v21 = 0;
LABEL_31:

  return v21;
}

- (id)_reevaluateCachedSelectedPhoneNumberWithContext:(id)context error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (contextCopy)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v21 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getPhoneNumber:contextCopy error:&v21];
    registration2 = v21;
    registration = [MEMORY[0x1E69A6138] registration];
    v11 = registration;
    if (v8)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
      {
        sub_195963170();
      }

      number = [v8 number];
      v13 = 0;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_1959631E4();
      }

      registration2 = registration2;
      number = 0;
      v13 = registration2;
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_195963254(registration2);
    }

    v8 = 0;
    v13 = 0;
    number = 0;
  }

  if (![number length])
  {
    v14 = CTSettingCopyMyPhoneNumber();
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v14;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "No selected registration phone number found -- falling back { phoneNumberFallbackValue: %@ }", buf, 0xCu);
    }

    if ([v14 length])
    {
      v16 = v14;

      number = v16;
    }
  }

  registration4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = number;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Returning selected registration phone number for device { phoneNumber: %@, phoneNumberInfo: %@, clientError: %@ }", buf, 0x20u);
  }

  if (error)
  {
    v18 = v13;
    *error = v13;
  }

  v19 = number;

  return number;
}

- (BOOL)isPhoneNumberEmergencyNumber:(id)number
{
  v33 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (IMStringIsInHardcodedEmergencyNumberSet())
  {
LABEL_16:
    v17 = 1;
  }

  else
  {
    [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v25 = 0u;
    subscriptionInfo = [v20 subscriptionInfo];
    subscriptions = [subscriptionInfo subscriptions];

    v7 = [subscriptions countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v23;
      *&v8 = 138412802;
      v19 = v8;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(subscriptions);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          coreTelephonyClient = self->_coreTelephonyClient;
          v21 = 0;
          v14 = [(CoreTelephonyClient *)coreTelephonyClient isEmergencyNumber:v12 number:numberCopy error:&v21, v19];
          v15 = v21;
          if (v15)
          {
            registration = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
            {
              *buf = v19;
              v27 = numberCopy;
              v28 = 2112;
              v29 = v12;
              v30 = 2112;
              v31 = v15;
              _os_log_error_impl(&dword_195925000, registration, OS_LOG_TYPE_ERROR, "Failed to check if number is emergency number { phoneNumber: %@, context: %@, error: %@ }", buf, 0x20u);
            }
          }

          if (v14)
          {

            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [subscriptions countByEnumeratingWithState:&v22 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = [(FTSelectedPNRSubscription *)self _legacy_isPhoneNumberEmergencyNumber:numberCopy];
  }

  return v17;
}

- (BOOL)_legacy_isPhoneNumberEmergencyNumber:(id)number
{
  numberCopy = number;
  if (qword_1EAED7800 != -1)
  {
    sub_195963298();
  }

  if (qword_1EAED77F8)
  {
    IsEmergencyNumber = _CTServerConnectionIsEmergencyNumber();
    if (IsEmergencyNumber)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_1959632AC(IsEmergencyNumber, IsEmergencyNumber, registration);
      }
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195963338();
    }
  }

  return 0;
}

@end