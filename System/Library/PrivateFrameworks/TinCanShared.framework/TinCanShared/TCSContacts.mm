@interface TCSContacts
+ (BOOL)_contact:(id)_contact hasKeysForFormatterStye:(int64_t)stye;
+ (BOOL)_isContact:(id)contact similarToContact:(id)toContact;
+ (BOOL)_isUnknownContact:(id)contact equalToUnknownContact:(id)unknownContact;
+ (id)_canonicalDestinationForString:(id)string;
+ (id)_canonicalPhoneNumberFromCNPhoneNumber:(id)number;
+ (id)_canonicalPhoneNumberFromPhoneNumberString:(id)string;
+ (id)_destinationsFromAllowlistDictionary:(id)dictionary onlyAccepted:(BOOL)accepted;
+ (id)_firstPhoneNumberOrEmailAddressFromContact:(id)contact formatPhoneNumber:(BOOL)number;
+ (id)_pauseCharacterSet;
+ (id)_safeContactDetailStringForLogging:(id)logging;
+ (id)_safeContactNameStringForLogging:(id)logging handle:(id)handle;
+ (id)_tinCanUserNotificationCenter;
+ (id)_unifiedContactWithIdentifier:(id)identifier orDestination:(id)destination usingContactStore:(id)store keysToFetch:(id)fetch;
+ (id)_unifiedMeContactFromContactStore:(id)store keysToFetch:(id)fetch;
+ (id)_unknownContactWithDestination:(id)destination;
+ (id)canonicalDestinationsForContact:(id)contact;
+ (id)validatedAllowlistFromDictionary:(id)dictionary;
+ (void)dismissInvitationNotificationsFromContact:(id)contact;
- (BOOL)_didIncomingOutgoingOrSupportChange:(id)change;
- (BOOL)_generateDestinationsFromAllowlist;
- (BOOL)_loadAllowlistFromDefaults;
- (BOOL)_shouldHandleResetStoreDemoContent;
- (BOOL)contactSupportsTinCan:(id)can;
- (BOOL)isContactAccepted:(id)accepted;
- (BOOL)isContactAnInviter:(id)inviter;
- (BOOL)isDestinationAccepted:(id)accepted;
- (BOOL)isDestinationAnInviter:(id)inviter;
- (NSUserDefaults)defaults;
- (TCSContacts)init;
- (id)_removeDestinationFromAllowlist:(id)allowlist;
- (id)dateAddedForDestination:(id)destination;
- (id)mostRecentCallDateForContact:(id)contact;
- (id)mostRecentCallDateForDestination:(id)destination;
- (int64_t)stateForContact:(id)contact;
- (void)_addDestinations:(id)destinations asType:(int64_t)type;
- (void)_deleteAllowlist;
- (void)_didInitiateCallToDestination:(id)destination date:(id)date;
- (void)_didReceiveCallFromDestination:(id)destination date:(id)date;
- (void)_handleDeviceFirstUnlock;
- (void)_loadDataFromDefaults;
- (void)_logDestinations;
- (void)_notifyObserversContactBecameAccepted:(id)accepted;
- (void)_notifyObserversDestinationsChanged;
- (void)_notifyObserversRecencyChanged;
- (void)_reloadAllowlist;
- (void)_resetStoreDemoContent;
- (void)_saveAllowlist;
- (void)dealloc;
- (void)didInitiateCallToContact:(id)contact date:(id)date;
- (void)didReceiveCallFromContact:(id)contact date:(id)date;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeDestinations:(id)destinations;
- (void)setContact:(id)contact supportsTinCan:(BOOL)can;
- (void)setContactAsAccepted:(id)accepted;
- (void)setDestinationAsAccepted:(id)accepted;
- (void)setShouldObserveAllowlistDefaultChanges:(BOOL)changes;
@end

@implementation TCSContacts

- (TCSContacts)init
{
  v29.receiver = self;
  v29.super_class = TCSContacts;
  v2 = [(TCSContacts *)&v29 init];
  v3 = v2;
  if (v2)
  {
    v2->_allowlistLock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = weakObjectsHashTable;

    v6 = objc_opt_new();
    npsManager = v3->_npsManager;
    v3->_npsManager = v6;

    v8 = +[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
    if (v8)
    {
      [(TCSContacts *)v3 _loadDataFromDefaults];
    }

    else
    {
      _TCSInitializeLogging(v8, v9);
      v10 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_26F110000, v10, OS_LOG_TYPE_DEFAULT, "TCSContacts needs to wait for first device unlock before loading data.", buf, 2u);
      }

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v12 = +[TCSBehavior sharedBehavior];
      [defaultCenter addObserver:v3 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v12];
    }

    defaultProvider = [MEMORY[0x277CFBEB0] defaultProvider];
    objc_initWeak(buf, v3);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __19__TCSContacts_init__block_invoke;
    v26[3] = &unk_279DC1990;
    objc_copyWeak(&v27, buf);
    v14 = MEMORY[0x274388AC0](v26);
    v15 = objc_alloc(MEMORY[0x277CFBDD0]);
    mainThreadScheduler = [defaultProvider mainThreadScheduler];
    v17 = [v15 initWithDelay:1 options:v14 block:defaultProvider schedulerProvider:mainThreadScheduler downstreamScheduler:0.3];
    allowlistSaveTimer = v3->_allowlistSaveTimer;
    v3->_allowlistSaveTimer = v17;

    [(TCSContacts *)v3 setShouldObserveAllowlistDefaultChanges:1];
    objc_initWeak(&location, v3);
    uTF8String = [@"TCSContactsDidChangeNotification" UTF8String];
    v20 = MEMORY[0x277D85CD0];
    v21 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __19__TCSContacts_init__block_invoke_2;
    handler[3] = &unk_279DC1A78;
    objc_copyWeak(&v24, &location);
    notify_register_dispatch(uTF8String, &v3->_prefSyncToken, v20, handler);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __19__TCSContacts_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _saveAllowlist];
}

void __19__TCSContacts_init__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[8] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _handleContactsPrefSync];
    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(TCSContacts *)self setShouldObserveAllowlistDefaultChanges:0];
  notify_cancel(self->_prefSyncToken);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TCSContacts;
  [(TCSContacts *)&v4 dealloc];
}

- (NSUserDefaults)defaults
{
  defaults = self->_defaults;
  if (!defaults)
  {
    v4 = +[TCSTinCanUserDefaults defaults];
    v5 = self->_defaults;
    self->_defaults = v4;

    defaults = self->_defaults;
  }

  return defaults;
}

- (void)setShouldObserveAllowlistDefaultChanges:(BOOL)changes
{
  if (self->_shouldObserveAllowlistDefaultChanges != changes)
  {
    changesCopy = changes;
    self->_shouldObserveAllowlistDefaultChanges = changes;
    defaults = [(TCSContacts *)self defaults];
    v6 = +[TCSTinCanUserDefaults allowListKey];
    if (changesCopy)
    {
      [defaults addObserver:self forKeyPath:v6 options:1 context:TCSContactsObservationContext];
    }

    else
    {
      [defaults removeObserver:self forKeyPath:v6 context:TCSContactsObservationContext];
    }
  }
}

+ (void)dismissInvitationNotificationsFromContact:(id)contact
{
  contactCopy = contact;
  _tinCanUserNotificationCenter = [self _tinCanUserNotificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__TCSContacts_dismissInvitationNotificationsFromContact___block_invoke;
  v7[3] = &unk_279DC2050;
  v8 = contactCopy;
  selfCopy = self;
  v6 = contactCopy;
  [_tinCanUserNotificationCenter getDeliveredNotificationsWithCompletionHandler:v7];
}

void __57__TCSContacts_dismissInvitationNotificationsFromContact___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  v38 = a1;
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
  }

  else
  {
    v4 = [*(a1 + 32) iOSLegacyIdentifier];
    v37 = v4 != *MEMORY[0x277CBD008];
  }

  v36 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = [v9 request];
        v11 = [v10 content];

        v12 = [v11 categoryIdentifier];
        v13 = [@"com.apple.tincan.invite" isEqualToString:v12];

        if (v13)
        {
          v14 = [v11 userInfo];
          v15 = [v14 objectForKeyedSubscript:@"com.apple.tincan.invite.handle"];

          v16 = [v11 userInfo];
          v17 = [v16 objectForKeyedSubscript:@"com.apple.tincan.invite.contactidentifier"];

          v18 = [*(v38 + 32) identifier];
          if (v18)
          {
            v19 = v17 == 0;
          }

          else
          {
            v19 = 1;
          }

          v20 = !v19;
          v21 = v20 & v37;

          if (v21 != 1)
          {
            v24 = [*(v38 + 40) canonicalDestinationsForContact:*(v38 + 32)];
            v25 = v24;
            if (v15)
            {
              v26 = [v24 containsObject:v15];

              if (!v26)
              {
                goto LABEL_23;
              }

LABEL_21:
              v17 = [v9 request];
              v25 = [v17 identifier];
              [v36 addObject:v25];
            }

            goto LABEL_23;
          }

          v22 = [*(v38 + 32) identifier];
          v23 = [v22 isEqualToString:v17];

          if (v23)
          {
            goto LABEL_21;
          }
        }

LABEL_23:
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v6);
  }

  v27 = v36;
  v28 = [v36 count];
  if (v28)
  {
    _TCSInitializeLogging(v28, v29);
    v30 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(v38 + 32);
      v31 = *(v38 + 40);
      v33 = v30;
      v34 = [v31 _safeContactDetailStringForLogging:v32];
      *buf = 138412290;
      v45 = v34;
      _os_log_impl(&dword_26F110000, v33, OS_LOG_TYPE_DEFAULT, "Requesting removal of invitation notifications from: %@", buf, 0xCu);
    }

    v35 = [*(v38 + 40) _tinCanUserNotificationCenter];
    [v35 removeDeliveredNotificationsWithIdentifiers:v27];
  }
}

- (void)removeDestinations:(id)destinations
{
  v26 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = destinationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [TCSContacts _canonicalDestinationForString:*(*(&v19 + 1) + 8 * v10), v19];
        v12 = [(TCSContacts *)self _removeDestinationFromAllowlist:v11];
        [array addObjectsFromArray:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v13 = [array count];
  if (v13)
  {
    _TCSInitializeLogging(v13, v14);
    v15 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [array componentsJoinedByString:{@", "}];
      v18 = TCSLogSafeDescription(v17);
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_26F110000, v16, OS_LOG_TYPE_DEFAULT, "TCSContacts removed handles: %@", buf, 0xCu);
    }

    [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
    [(TCSContacts *)self _generateDestinationsFromAllowlist];
    [(TCSContacts *)self _notifyObserversDestinationsChanged];
  }
}

- (void)setContact:(id)contact supportsTinCan:(BOOL)can
{
  canCopy = can;
  v38 = *MEMORY[0x277D85DE8];
  v6 = [TCSContacts canonicalDestinationsForContact:contact];
  array = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [TCSContacts _canonicalDestinationForString:*(*(&v29 + 1) + 8 * i), array];
        os_unfair_lock_lock(&self->_allowlistLock);
        v12 = [(NSMutableDictionary *)self->_allowlist objectForKey:v11];
        v13 = [v12 mutableCopy];
        v14 = v13;
        if (v13)
        {
          dictionary = v13;
        }

        else
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
        }

        v16 = dictionary;

        os_unfair_lock_unlock(&self->_allowlistLock);
        v17 = [v16 objectForKeyedSubscript:@"Supported"];
        bOOLValue = [v17 BOOLValue];

        if (bOOLValue != canCopy)
        {
          v19 = [MEMORY[0x277CCABB0] numberWithBool:canCopy];
          [v16 setObject:v19 forKey:@"Supported"];

          os_unfair_lock_lock(&self->_allowlistLock);
          [(NSMutableDictionary *)self->_allowlist setObject:v16 forKey:v11];
          os_unfair_lock_unlock(&self->_allowlistLock);
          [array addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  v20 = [array count];
  if (v20)
  {
    _TCSInitializeLogging(v20, v21);
    v22 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = NSStringFromBOOL();
      v25 = [array componentsJoinedByString:{@", "}];
      v26 = TCSLogSafeDescription(v25);
      *buf = 138412546;
      v34 = v24;
      v35 = 2112;
      v36 = v26;
      _os_log_impl(&dword_26F110000, v23, OS_LOG_TYPE_DEFAULT, "TCSContacts set support flag to %@ for: %@", buf, 0x16u);
    }

    [(TCSContacts *)self _saveAllowlist];
    [(TCSContacts *)self _notifyObserversRecencyChanged];
  }
}

- (BOOL)contactSupportsTinCan:(id)can
{
  v20 = *MEMORY[0x277D85DE8];
  [TCSContacts canonicalDestinationsForContact:can];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [TCSContacts _canonicalDestinationForString:*(*(&v15 + 1) + 8 * i), v15];
        os_unfair_lock_lock(&self->_allowlistLock);
        v10 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v9];
        os_unfair_lock_unlock(&self->_allowlistLock);
        v11 = [v10 objectForKeyedSubscript:@"Supported"];
        bOOLValue = [v11 BOOLValue];

        if (bOOLValue)
        {
          v13 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)isDestinationAccepted:(id)accepted
{
  v4 = [TCSContacts _canonicalDestinationForString:accepted];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  v6 = [v5 objectForKeyedSubscript:@"Accepted"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDestinationAnInviter:(id)inviter
{
  v4 = [TCSContacts _canonicalDestinationForString:inviter];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  v6 = [v5 objectForKeyedSubscript:@"Inviter"];
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

- (void)setDestinationAsAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v5 = [TCSContacts _canonicalDestinationForString:acceptedCopy];
  os_unfair_lock_lock(&self->_allowlistLock);
  v6 = [(NSMutableDictionary *)self->_allowlist objectForKey:v5];
  v7 = [v6 mutableCopy];

  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v7)
  {
    v10 = [v7 objectForKeyedSubscript:@"Accepted"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      _TCSInitializeLogging(v12, v13);
      v14 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSContacts setDestinationAsAccepted:v14];
      }
    }

    else
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKey:@"Accepted"];
      date = [MEMORY[0x277CBEAA8] date];
      [v7 setObject:date forKey:@"Added"];

      [v7 removeObjectForKey:@"Inviter"];
      os_unfair_lock_lock(&self->_allowlistLock);
      [(NSMutableDictionary *)self->_allowlist setObject:v7 forKey:v5];
      os_unfair_lock_unlock(&self->_allowlistLock);
      [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
    }
  }

  else
  {
    _TCSInitializeLogging(v8, v9);
    v15 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts setDestinationAsAccepted:v15];
    }
  }
}

- (BOOL)isContactAccepted:(id)accepted
{
  v16 = *MEMORY[0x277D85DE8];
  [TCSContacts canonicalDestinationsForContact:accepted];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(TCSContacts *)self isDestinationAccepted:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)isContactAnInviter:(id)inviter
{
  v16 = *MEMORY[0x277D85DE8];
  [TCSContacts canonicalDestinationsForContact:inviter];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([(TCSContacts *)self isDestinationAnInviter:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)setContactAsAccepted:(id)accepted
{
  v15 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  v5 = [TCSContacts canonicalDestinationsForContact:acceptedCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TCSContacts *)self setDestinationAsAccepted:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(TCSContacts *)self _notifyObserversContactBecameAccepted:acceptedCopy];
}

- (void)didInitiateCallToContact:(id)contact date:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [TCSContacts canonicalDestinationsForContact:contact];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(TCSContacts *)self _didInitiateCallToDestination:*(*(&v12 + 1) + 8 * v11++) date:dateCopy];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  [(TCSContacts *)self _notifyObserversRecencyChanged];
}

- (void)didReceiveCallFromContact:(id)contact date:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = [TCSContacts canonicalDestinationsForContact:contact];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(TCSContacts *)self _didReceiveCallFromDestination:*(*(&v12 + 1) + 8 * v11++) date:dateCopy];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  [(TCSContacts *)self _notifyObserversRecencyChanged];
}

- (void)_didInitiateCallToDestination:(id)destination date:(id)date
{
  destinationCopy = destination;
  dateCopy = date;
  v8 = [TCSContacts _canonicalDestinationForString:destinationCopy];
  os_unfair_lock_lock(&self->_allowlistLock);
  v9 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v8];
  v10 = [v9 mutableCopy];

  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v10 && ([v10 objectForKeyedSubscript:@"Accepted"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, (v14 & 1) != 0))
  {
    v15 = [v10 objectForKeyedSubscript:@"Outgoing"];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      array = v16;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v20 = array;

    [v20 enqueue:dateCopy];
    [v10 setObject:v20 forKey:@"Outgoing"];
    os_unfair_lock_lock(&self->_allowlistLock);
    [(NSMutableDictionary *)self->_allowlist setObject:v10 forKey:v8];
    os_unfair_lock_unlock(&self->_allowlistLock);
    [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  }

  else
  {
    _TCSInitializeLogging(v11, v12);
    v19 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _didInitiateCallToDestination:v19 date:?];
    }
  }
}

- (void)_didReceiveCallFromDestination:(id)destination date:(id)date
{
  destinationCopy = destination;
  dateCopy = date;
  v8 = [TCSContacts _canonicalDestinationForString:destinationCopy];
  os_unfair_lock_lock(&self->_allowlistLock);
  v9 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v8];
  v10 = [v9 mutableCopy];

  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v10 && ([v10 objectForKeyedSubscript:@"Accepted"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "BOOLValue"), v13, (v14 & 1) != 0))
  {
    v15 = [v10 objectForKeyedSubscript:@"Incoming"];
    v16 = [v15 mutableCopy];
    v17 = v16;
    if (v16)
    {
      array = v16;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v20 = array;

    [v20 enqueue:dateCopy];
    [v10 setObject:v20 forKey:@"Incoming"];
    os_unfair_lock_lock(&self->_allowlistLock);
    [(NSMutableDictionary *)self->_allowlist setObject:v10 forKey:v8];
    os_unfair_lock_unlock(&self->_allowlistLock);
    [(CNCoalescingTimer *)self->_allowlistSaveTimer handleEvent];
  }

  else
  {
    _TCSInitializeLogging(v11, v12);
    v19 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _didReceiveCallFromDestination:v19 date:?];
    }
  }
}

- (id)mostRecentCallDateForContact:(id)contact
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [TCSContacts canonicalDestinationsForContact:contact, 0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(TCSContacts *)self mostRecentCallDateForDestination:*(*(&v14 + 1) + 8 * i)];
        v11 = v10;
        if (v7)
        {
          v12 = [v7 laterDate:v10];

          v7 = v12;
        }

        else
        {
          v7 = v10;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mostRecentCallDateForDestination:(id)destination
{
  v4 = [TCSContacts _canonicalDestinationForString:destination];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  v6 = [v5 objectForKeyedSubscript:@"Incoming"];
  lastObject = [v6 lastObject];

  v8 = [v5 objectForKeyedSubscript:@"Outgoing"];
  lastObject2 = [v8 lastObject];

  v10 = [v5 objectForKeyedSubscript:@"InvitationReceived"];
  v11 = v10;
  if (lastObject)
  {
    v12 = 0;
  }

  else
  {
    v12 = lastObject2 == 0;
  }

  if (!v12 || v10 == 0)
  {
    if (lastObject)
    {
      v14 = lastObject2 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      if (lastObject)
      {
        v15 = lastObject;
      }

      else
      {
        v15 = lastObject2;
      }

      v16 = v15;
    }

    else
    {
      v16 = [lastObject laterDate:lastObject2];
    }
  }

  else
  {
    v16 = v10;
  }

  v17 = v16;

  return v17;
}

- (id)dateAddedForDestination:(id)destination
{
  v4 = [TCSContacts _canonicalDestinationForString:destination];
  os_unfair_lock_lock(&self->_allowlistLock);
  v5 = [(NSMutableDictionary *)self->_allowlist objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_allowlistLock);
  if (v5)
  {
    v8 = [v5 objectForKeyedSubscript:@"Added"];
    v9 = v8;
    if (v8)
    {
      distantPast = v8;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    v12 = distantPast;
  }

  else
  {
    _TCSInitializeLogging(v6, v7);
    v11 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts dateAddedForDestination:v11];
    }

    v12 = 0;
  }

  return v12;
}

- (int64_t)stateForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = [(TCSContacts *)self isContactAccepted:contactCopy];
    v6 = [(TCSContacts *)self isContactAnInviter:contactCopy];
    if (v5 || !v6)
    {
      if (v5 && ([(TCSContacts *)self mostRecentCallDateForContact:contactCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, v8) || +[TCSBehavior isRunningInStoreDemoModeOrSimulator])
      {
        v7 = 3;
      }

      else if ([(TCSContacts *)self contactSupportsTinCan:contactCopy])
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (TCSContactsObservationContext == context)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__TCSContacts_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v7[3] = &unk_279DC19E0;
    v7[4] = self;
    TCSGuaranteeMainThread(v7);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = TCSContacts;
    [(TCSContacts *)&v6 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

+ (id)validatedAllowlistFromDictionary:(id)dictionary
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [dictionary mutableCopy];
  allKeys = [v3 allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v3 objectForKeyedSubscript:v9];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v3 setObject:0 forKeyedSubscript:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSContacts was notified of first device unlock.", v4, 2u);
  }

  [(TCSContacts *)self _loadDataFromDefaults];
  [(TCSContacts *)self _notifyObserversDestinationsChanged];
}

- (void)_loadDataFromDefaults
{
  [(TCSContacts *)self _loadAllowlistFromDefaults];
  [(TCSContacts *)self _generateDestinationsFromAllowlist];

  [(TCSContacts *)self _logDestinations];
}

- (void)_addDestinations:(id)destinations asType:(int64_t)type
{
  v41 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = destinationsCopy;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v31)
  {
    v30 = *v33;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [TCSContacts _canonicalDestinationForString:*(*(&v32 + 1) + 8 * i)];
        os_unfair_lock_lock(&self->_allowlistLock);
        v9 = [(NSMutableDictionary *)self->_allowlist objectForKey:v8];
        v10 = [v9 mutableCopy];
        v11 = v10;
        if (v10)
        {
          dictionary = v10;
        }

        else
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
        }

        v13 = dictionary;

        os_unfair_lock_unlock(&self->_allowlistLock);
        v14 = [v13 objectForKeyedSubscript:@"Accepted"];
        bOOLValue = [v14 BOOLValue];

        v16 = [v13 objectForKeyedSubscript:@"Inviter"];
        bOOLValue2 = [v16 BOOLValue];

        if (((type == 0) & bOOLValue) == 0 && ((type == 1) & (bOOLValue | bOOLValue2)) == 0)
        {
          if (type)
          {
            if (type == 1)
            {
              v18 = MEMORY[0x277CBEC38];
              [v13 setObject:MEMORY[0x277CBEC38] forKey:@"Supported"];
              [v13 setObject:v18 forKey:@"Inviter"];
              [v13 setObject:date forKey:@"InvitationReceived"];
            }
          }

          else
          {
            [v13 setObject:MEMORY[0x277CBEC38] forKey:@"Accepted"];
            [v13 setObject:date forKey:@"Added"];
            [v13 removeObjectForKey:@"Inviter"];
          }

          os_unfair_lock_lock(&self->_allowlistLock);
          [(NSMutableDictionary *)self->_allowlist setObject:v13 forKey:v8];
          os_unfair_lock_unlock(&self->_allowlistLock);
          [array addObject:v8];
        }
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v31);
  }

  v19 = [array count];
  if (v19)
  {
    _TCSInitializeLogging(v19, v20);
    v21 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      v23 = [array componentsJoinedByString:{@", "}];
      v24 = TCSLogSafeDescription(v23);
      v25 = v24;
      v26 = @"inviter";
      if (!type)
      {
        v26 = @"allowed";
      }

      *buf = 138412546;
      v37 = v24;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_26F110000, v22, OS_LOG_TYPE_DEFAULT, "TCSContacts added: %@ (%@)", buf, 0x16u);
    }

    [(TCSContacts *)self _saveAllowlist];
    [(TCSContacts *)self _generateDestinationsFromAllowlist];
    [(TCSContacts *)self _notifyObserversDestinationsChanged];
  }
}

- (id)_removeDestinationFromAllowlist:(id)allowlist
{
  v22 = *MEMORY[0x277D85DE8];
  allowlistCopy = allowlist;
  array = [MEMORY[0x277CBEB18] array];
  os_unfair_lock_lock(&self->_allowlistLock);
  v6 = [(NSMutableDictionary *)self->_allowlist objectForKey:allowlistCopy];

  if (v6)
  {
    [(NSMutableDictionary *)self->_allowlist removeObjectForKey:allowlistCopy];
    [array addObject:allowlistCopy];
  }

  if ([allowlistCopy destinationIdIsEmailAddress])
  {
    allKeys = [(NSMutableDictionary *)self->_allowlist allKeys];
    v8 = [allKeys copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 destinationIdIsEmailAddress] && objc_msgSend(allowlistCopy, "isEqualToIgnoringCase:", v14))
          {
            [(NSMutableDictionary *)self->_allowlist removeObjectForKey:v14];
            [array addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }
  }

  os_unfair_lock_unlock(&self->_allowlistLock);
  v15 = [array copy];

  return v15;
}

- (BOOL)_loadAllowlistFromDefaults
{
  defaults = [(TCSContacts *)self defaults];
  v4 = +[TCSTinCanUserDefaults allowListKey];
  v5 = [defaults dictionaryForKey:v4];
  v6 = v5;
  if (v5)
  {
    dictionary = v5;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  v8 = dictionary;

  os_unfair_lock_lock(&self->_allowlistLock);
  v9 = [v8 isEqualToDictionary:self->_allowlist];
  if ((v9 & 1) == 0)
  {
    v10 = [TCSContacts validatedAllowlistFromDictionary:v8];
    v11 = [v10 mutableCopy];
    allowlist = self->_allowlist;
    self->_allowlist = v11;
  }

  os_unfair_lock_unlock(&self->_allowlistLock);

  return v9 ^ 1;
}

- (BOOL)_generateDestinationsFromAllowlist
{
  os_unfair_lock_lock(&self->_allowlistLock);
  v3 = [TCSContacts _destinationsFromAllowlistDictionary:self->_allowlist onlyAccepted:0];
  os_unfair_lock_unlock(&self->_allowlistLock);
  destinations = self->_destinations;
  p_destinations = &self->_destinations;
  v6 = [v3 isEqualToArray:destinations];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(p_destinations, v3);
  }

  return v6 ^ 1;
}

- (void)_reloadAllowlist
{
  allowlist = [(TCSContacts *)self allowlist];
  v4 = [allowlist copy];

  if ([(TCSContacts *)self _loadAllowlistFromDefaults])
  {
    if ([(TCSContacts *)self _generateDestinationsFromAllowlist])
    {
      [(TCSContacts *)self _logDestinations];
      [(TCSContacts *)self _notifyObserversDestinationsChanged];
    }

    if ([(TCSContacts *)self _didIncomingOutgoingOrSupportChange:v4])
    {
      [(TCSContacts *)self _notifyObserversRecencyChanged];
    }
  }
}

- (BOOL)_didIncomingOutgoingOrSupportChange:(id)change
{
  changeCopy = change;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__TCSContacts__didIncomingOutgoingOrSupportChange___block_invoke;
  v6[3] = &unk_279DC2078;
  v6[4] = self;
  v6[5] = &v7;
  [changeCopy enumerateKeysAndObjectsUsingBlock:v6];
  LOBYTE(self) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return self;
}

void __51__TCSContacts__didIncomingOutgoingOrSupportChange___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v19 = a2;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"Supported"];
  v9 = [v8 BOOLValue];

  os_unfair_lock_lock((*(a1 + 32) + 40));
  v10 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v19];
  v11 = [v10 objectForKeyedSubscript:@"Supported"];
  v12 = [v11 BOOLValue];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  if (v9 == v12)
  {
    v13 = [v7 objectForKeyedSubscript:@"Incoming"];
    os_unfair_lock_lock((*(a1 + 32) + 40));
    v14 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v19];
    v15 = [v14 objectForKeyedSubscript:@"Incoming"];

    os_unfair_lock_unlock((*(a1 + 32) + 40));
    if ([v13 count] || !objc_msgSend(v15, "count"))
    {
      v16 = [v7 objectForKeyedSubscript:@"Outgoing"];
      os_unfair_lock_lock((*(a1 + 32) + 40));
      v17 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v19];
      v18 = [v17 objectForKeyedSubscript:@"Outgoing"];

      os_unfair_lock_unlock((*(a1 + 32) + 40));
      if (![v16 count] && objc_msgSend(v18, "count"))
      {
        *a4 = 1;
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_logDestinations
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_destinations count];
  _TCSInitializeLogging(v3, v4);
  v5 = TCSLogDefault;
  v6 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      destinations = self->_destinations;
      v8 = v5;
      v9 = [(NSArray *)destinations componentsJoinedByString:@", "];
      v10 = TCSLogSafeDescription(v9);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_26F110000, v8, OS_LOG_TYPE_DEFAULT, "TCSContacts has allowed destinations: %@", &v11, 0xCu);
    }
  }

  else if (v6)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSContacts has no allowed destinations.", &v11, 2u);
  }
}

- (void)_saveAllowlist
{
  [(TCSContacts *)self setShouldObserveAllowlistDefaultChanges:0];
  os_unfair_lock_lock(&self->_allowlistLock);
  defaults = [(TCSContacts *)self defaults];
  allowlist = self->_allowlist;
  dictionary = allowlist;
  if (!allowlist)
  {
    dictionary = [MEMORY[0x277CBEAC0] dictionary];
  }

  v6 = +[TCSTinCanUserDefaults allowListKey];
  [defaults setObject:dictionary forKey:v6];

  if (!allowlist)
  {
  }

  os_unfair_lock_unlock(&self->_allowlistLock);
  [(TCSContacts *)self setShouldObserveAllowlistDefaultChanges:1];
  if (NPSHasCompletedInitialSync())
  {
    npsManager = self->_npsManager;
    v8 = MEMORY[0x277CBEB98];
    v10 = +[TCSTinCanUserDefaults allowListKey];
    v9 = [v8 setWithObject:v10];
    [(NPSManager *)npsManager synchronizeUserDefaultsDomain:@"com.apple.tincan" keys:v9];
  }
}

- (void)_notifyObserversDestinationsChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 destinationsDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversRecencyChanged
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 recencyDidChange:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyObserversContactBecameAccepted:(id)accepted
{
  v16 = *MEMORY[0x277D85DE8];
  acceptedCopy = accepted;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 contactBecameAccepted:acceptedCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_shouldHandleResetStoreDemoContent
{
  isRunningInStoreDemoMode = [MEMORY[0x277D75128] isRunningInStoreDemoMode];
  if (isRunningInStoreDemoMode)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    isFrontBoard = [mEMORY[0x277D75128] isFrontBoard];

    LOBYTE(isRunningInStoreDemoMode) = isFrontBoard;
  }

  return isRunningInStoreDemoMode;
}

- (void)_resetStoreDemoContent
{
  _shouldHandleResetStoreDemoContent = [(TCSContacts *)self _shouldHandleResetStoreDemoContent];
  if (_shouldHandleResetStoreDemoContent)
  {
    _TCSInitializeLogging(_shouldHandleResetStoreDemoContent, v4);
    v5 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "TCSContacts will reset demo content.", v18, 2u);
    }

    defaults = [(TCSContacts *)self defaults];
    [defaults removeObjectForKey:@"Suggestions"];

    defaults2 = [(TCSContacts *)self defaults];
    [defaults2 removeObjectForKey:@"SuggestionsFirstGenerated"];

    defaults3 = [(TCSContacts *)self defaults];
    [defaults3 removeObjectForKey:@"SuggestionsPreviouslyGenerated"];

    defaults4 = [(TCSContacts *)self defaults];
    [defaults4 removeObjectForKey:@"SawTalkButtonTutorial"];

    defaults5 = [(TCSContacts *)self defaults];
    v11 = +[TCSTinCanUserDefaults storeDemoAllowlistKey];
    v12 = [defaults5 dictionaryForKey:v11];
    v13 = v12;
    if (v12)
    {
      dictionary = v12;
    }

    else
    {
      dictionary = [MEMORY[0x277CBEAC0] dictionary];
    }

    v15 = dictionary;

    os_unfair_lock_lock(&self->_allowlistLock);
    v16 = [v15 mutableCopy];
    allowlist = self->_allowlist;
    self->_allowlist = v16;

    os_unfair_lock_unlock(&self->_allowlistLock);
    [(TCSContacts *)self _saveAllowlist];
    [(TCSContacts *)self _generateDestinationsFromAllowlist];
    [(TCSContacts *)self _logDestinations];
    [(TCSContacts *)self _notifyObserversDestinationsChanged];
    [(TCSContacts *)self _notifyObserversRecencyChanged];
  }
}

- (void)_deleteAllowlist
{
  defaults = [(TCSContacts *)self defaults];
  v2 = +[TCSTinCanUserDefaults allowListKey];
  [defaults removeObjectForKey:v2];
}

+ (id)_destinationsFromAllowlistDictionary:(id)dictionary onlyAccepted:(BOOL)accepted
{
  if (accepted)
  {
    v4 = MEMORY[0x277CBEB58];
    dictionaryCopy = dictionary;
    v6 = [v4 set];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__TCSContacts__destinationsFromAllowlistDictionary_onlyAccepted___block_invoke;
    v11[3] = &unk_279DC19B8;
    v12 = v6;
    v7 = v6;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v11];

    allObjects = [v7 allObjects];
  }

  else
  {
    dictionaryCopy2 = dictionary;
    allObjects = [dictionaryCopy2 allKeys];
  }

  return allObjects;
}

void __65__TCSContacts__destinationsFromAllowlistDictionary_onlyAccepted___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKeyedSubscript:@"Accepted"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

+ (id)_unifiedMeContactFromContactStore:(id)store keysToFetch:(id)fetch
{
  v10 = 0;
  v4 = [store _ios_meContactWithKeysToFetch:fetch error:&v10];
  v5 = v10;
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {
      code = [v5 code];
      if (code != 2)
      {
        _TCSInitializeLogging(code, v8);
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          +[TCSContacts _unifiedMeContactFromContactStore:keysToFetch:];
        }
      }
    }
  }

  return v4;
}

+ (id)_unifiedContactWithIdentifier:(id)identifier orDestination:(id)destination usingContactStore:(id)store keysToFetch:(id)fetch
{
  v33[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  destinationCopy = destination;
  storeCopy = store;
  fetchCopy = fetch;
  destinationIdIsEmailAddress = [identifierCopy length];
  if (!destinationIdIsEmailAddress)
  {
    if (destinationCopy)
    {
      if ([destinationCopy destinationIdIsPhoneNumber])
      {
        _pauseCharacterSet = [self _pauseCharacterSet];
        v26 = [destinationCopy _cn_containsCharacterInSet:_pauseCharacterSet];

        if (!v26)
        {
          v17 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:destinationCopy];
          v18 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v17];
          goto LABEL_3;
        }

        _TCSInitializeLogging(v27, v28);
        v29 = TCSLogDefault;
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSContacts _unifiedContactWithIdentifier:v29 orDestination:? usingContactStore:? keysToFetch:?];
        }

LABEL_20:
        firstObject = 0;
        goto LABEL_21;
      }

      destinationIdIsEmailAddress = [destinationCopy destinationIdIsEmailAddress];
      if (destinationIdIsEmailAddress)
      {
        v19 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:destinationCopy];
        goto LABEL_4;
      }
    }

    _TCSInitializeLogging(destinationIdIsEmailAddress, v15);
    v30 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _unifiedContactWithIdentifier:identifierCopy orDestination:v30 usingContactStore:destinationCopy keysToFetch:?];
    }

    goto LABEL_20;
  }

  v16 = MEMORY[0x277CBDA58];
  v33[0] = identifierCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v18 = [v16 predicateForContactsWithIdentifiers:v17];
LABEL_3:
  v19 = v18;

LABEL_4:
  v32 = 0;
  v20 = [storeCopy unifiedContactsMatchingPredicate:v19 keysToFetch:fetchCopy error:&v32];
  v21 = v32;
  v23 = v21;
  if (v21)
  {
    _TCSInitializeLogging(v21, v22);
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      +[TCSContacts _unifiedContactWithIdentifier:orDestination:usingContactStore:keysToFetch:];
    }

    firstObject = 0;
  }

  else
  {
    firstObject = [v20 firstObject];
    if (!firstObject)
    {
      firstObject = [self _unknownContactWithDestination:destinationCopy];
    }
  }

LABEL_21:

  return firstObject;
}

+ (id)_pauseCharacterSet
{
  if (_pauseCharacterSet_onceToken != -1)
  {
    +[TCSContacts _pauseCharacterSet];
  }

  v3 = _pauseCharacterSet_PauseCharacterSet;

  return v3;
}

uint64_t __33__TCSContacts__pauseCharacterSet__block_invoke()
{
  _pauseCharacterSet_PauseCharacterSet = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];;

  return MEMORY[0x2821F96F8]();
}

+ (id)_canonicalPhoneNumberFromCNPhoneNumber:(id)number
{
  digits = [number digits];
  v4 = MEMORY[0x277D6EF18];
  v5 = TUHomeCountryCode();
  v6 = [v4 phoneNumberWithDigits:digits countryCode:v5];
  unformattedInternationalRepresentation = [v6 unformattedInternationalRepresentation];

  if (unformattedInternationalRepresentation)
  {
    v8 = unformattedInternationalRepresentation;
  }

  else
  {
    v8 = digits;
  }

  v9 = v8;

  return v8;
}

+ (id)_canonicalPhoneNumberFromPhoneNumberString:(id)string
{
  v4 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:string];
  v5 = [self _canonicalPhoneNumberFromCNPhoneNumber:v4];

  return v5;
}

+ (id)_canonicalDestinationForString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if ([stringCopy destinationIdIsPhoneNumber])
  {
    v5 = [self _canonicalPhoneNumberFromPhoneNumberString:stringCopy];
  }

  return v5;
}

+ (id)canonicalDestinationsForContact:(id)contact
{
  v36[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v5 = [MEMORY[0x277CBEB58] set];
  v36[0] = *MEMORY[0x277CBD098];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v7 = [contactCopy areKeysAvailable:v6];

  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    phoneNumbers = [contactCopy phoneNumbers];
    v9 = [phoneNumbers countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          value = [*(*(&v29 + 1) + 8 * i) value];
          v14 = [self _canonicalPhoneNumberFromCNPhoneNumber:value];
          [v5 addObject:v14];
        }

        v10 = [phoneNumbers countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v10);
    }
  }

  v34 = *MEMORY[0x277CBCFC0];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v16 = [contactCopy areKeysAvailable:v15];

  if (v16)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v18 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(emailAddresses);
          }

          value2 = [*(*(&v25 + 1) + 8 * j) value];
          [v5 addObject:value2];
        }

        v19 = [emailAddresses countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

+ (id)_unknownContactWithDestination:(id)destination
{
  v15[1] = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  v4 = objc_opt_new();
  if ([destinationCopy destinationIdIsPhoneNumber])
  {
    v5 = MEMORY[0x277CBDB20];
    v6 = *MEMORY[0x277CBD900];
    v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:destinationCopy];
    v8 = [v5 labeledValueWithLabel:v6 value:v7];
    v15[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

    [v4 setPhoneNumbers:v9];
  }

  else
  {
    destinationIdIsEmailAddress = [destinationCopy destinationIdIsEmailAddress];
    if (destinationIdIsEmailAddress)
    {
      v12 = [MEMORY[0x277CBDB20] labeledValueWithLabel:*MEMORY[0x277CBD8E0] value:destinationCopy];
      v14 = v12;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

      [v4 setEmailAddresses:v9];
    }

    else
    {
      _TCSInitializeLogging(destinationIdIsEmailAddress, v11);
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        +[TCSContacts _unknownContactWithDestination:];
      }

      v9 = v4;
      v4 = 0;
    }
  }

  return v4;
}

+ (BOOL)_contact:(id)_contact hasKeysForFormatterStye:(int64_t)stye
{
  v13[1] = *MEMORY[0x277D85DE8];
  _contactCopy = _contact;
  v6 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:stye];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [_contactCopy areKeysAvailable:v7];

  if ((v8 & 1) == 0)
  {
    _TCSInitializeLogging(v9, v10);
    v11 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContacts _contact:v11 hasKeysForFormatterStye:_contactCopy];
    }
  }

  return v8;
}

+ (BOOL)_isContact:(id)contact similarToContact:(id)toContact
{
  toContactCopy = toContact;
  contactCopy = contact;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 || (v9)
  {
    v12 = [self _isUnknownContact:contactCopy equalToUnknownContact:toContactCopy];
  }

  else
  {
    identifier = [contactCopy identifier];

    identifier2 = [toContactCopy identifier];
    v12 = [identifier isEqualToString:identifier2];

    contactCopy = identifier;
  }

  return v12;
}

+ (BOOL)_isUnknownContact:(id)contact equalToUnknownContact:(id)unknownContact
{
  v5 = MEMORY[0x277CBEB98];
  unknownContactCopy = unknownContact;
  idsCanonicalDestinations = [contact idsCanonicalDestinations];
  v8 = [v5 setWithArray:idsCanonicalDestinations];

  v9 = MEMORY[0x277CBEB98];
  idsCanonicalDestinations2 = [unknownContactCopy idsCanonicalDestinations];

  v11 = [v9 setWithArray:idsCanonicalDestinations2];

  LOBYTE(unknownContactCopy) = [v8 isEqualToSet:v11];
  return unknownContactCopy;
}

+ (id)_firstPhoneNumberOrEmailAddressFromContact:(id)contact formatPhoneNumber:(BOOL)number
{
  v19[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v19[0] = *MEMORY[0x277CBD098];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v7 = [contactCopy areKeysAvailable:v6];

  if (!v7)
  {
    goto LABEL_6;
  }

  phoneNumbers = [contactCopy phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];
  v11 = value;
  if (number)
  {
    [value formattedInternationalStringValue];
  }

  else
  {
    [value unformattedInternationalStringValue];
  }
  value2 = ;

  if (!value2)
  {
LABEL_6:
    v18 = *MEMORY[0x277CBCFC0];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v14 = [contactCopy areKeysAvailable:v13];

    if (v14)
    {
      emailAddresses = [contactCopy emailAddresses];
      firstObject2 = [emailAddresses firstObject];
      value2 = [firstObject2 value];
    }

    else
    {
      value2 = 0;
    }
  }

  return value2;
}

+ (id)_tinCanUserNotificationCenter
{
  if (TCSIsProcessTinCan())
  {
    currentNotificationCenter = [MEMORY[0x277CE2028] currentNotificationCenter];
  }

  else
  {
    currentNotificationCenter = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.tincan"];
  }

  return currentNotificationCenter;
}

+ (id)_safeContactNameStringForLogging:(id)logging handle:(id)handle
{
  loggingCopy = logging;
  handleCopy = handle;
  if ([self _contact:loggingCopy hasKeysForFormatterStye:0])
  {
    v8 = [MEMORY[0x277CBDA78] stringFromContact:loggingCopy style:0];
    if (!v8)
    {
      v9 = [TCSContacts _firstPhoneNumberOrEmailAddressFromContact:loggingCopy formatPhoneNumber:0];
      if (v9)
      {
        v8 = IDSCopyRawAddressForDestination();
      }

      else
      {
        v8 = @"[unknown]";
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = @"<name formatter keys missing>";
  }

  if (!handleCopy)
  {
    goto LABEL_9;
  }

  v10 = MEMORY[0x277CCACA8];
  v9 = IDSCopyRawAddressForDestination();
  v11 = [v10 stringWithFormat:@"%@ [%@]", v8, v9];

  v8 = v11;
LABEL_8:

LABEL_9:
  v12 = TCSLogSafeDescription(v8);

  return v12;
}

+ (id)_safeContactDetailStringForLogging:(id)logging
{
  loggingCopy = logging;
  v5 = MEMORY[0x277CCAB68];
  identifier = [loggingCopy identifier];
  v7 = [v5 stringWithFormat:@"ID: %@", identifier];

  if ([self _contact:loggingCopy hasKeysForFormatterStye:0])
  {
    v8 = [MEMORY[0x277CBDA78] stringFromContact:loggingCopy style:0];
  }

  else
  {
    v8 = @"<name formatter keys missing>";
  }

  if ([(__CFString *)v8 length])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = TCSLogSafeDescription(v8);
    v11 = [v9 stringWithFormat:@" %@", v10];
    [v7 appendString:v11];
  }

  v12 = [self canonicalDestinationsForContact:loggingCopy];
  v13 = [v12 componentsJoinedByString:{@", "}];

  if ([v13 length])
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = TCSLogSafeDescription(v13);
    v16 = [v14 stringWithFormat:@" [%@]", v15];
    [v7 appendString:v16];
  }

  v17 = [MEMORY[0x277CCACA8] stringWithString:v7];

  return v17;
}

- (void)setDestinationAsAccepted:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)setDestinationAsAccepted:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_didInitiateCallToDestination:(void *)a1 date:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)_didReceiveCallFromDestination:(void *)a1 date:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)dateAddedForDestination:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

+ (void)_unifiedContactWithIdentifier:(void *)a1 orDestination:usingContactStore:keysToFetch:.cold.2(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2_0();
  v4 = TCSLogSafeDescription(v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);
}

+ (void)_unifiedContactWithIdentifier:(void *)a3 orDestination:usingContactStore:keysToFetch:.cold.3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = TCSLogSafeDescription(a3);
  *v13 = 138412546;
  *&v13[4] = a1;
  *&v13[12] = 2112;
  *&v13[14] = v6;
  OUTLINED_FUNCTION_5(&dword_26F110000, v7, v8, "Cannot perform contact lookup using ID:%@ destination:%@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16]);
}

+ (void)_contact:(void *)a1 hasKeysForFormatterStye:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = TCSLogSafeDescription(a2);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_26F110000, v5, v6, "%@ missing keys to use name formatter style %ld!", v7, v8, v9, v10);
}

@end