@interface WRCannedRepliesStore
+ (BOOL)supportsEnhancedEditing;
+ (id)supportedLanguages;
- (BOOL)includeSmartReplies;
- (BOOL)usesFormalReplies;
- (WRCannedRepliesStore)initWithCategory:(unint64_t)category;
- (id)cannedReplies;
- (id)domainAccessor;
- (id)keyForDefaultReply:(id)reply;
- (id)localizedDefaultReply:(id)reply;
- (id)localizedFormalDefaultReply:(id)reply;
- (id)migrateRepliesIfNeeded:(id)needed;
- (id)npsManager;
- (id)repliesForLanguage:(id)language;
- (void)dealloc;
- (void)handleStoreChange;
- (void)invalidateCachesIfNeededForLanguage:(id)language;
- (void)loadCannedRepliesIfNeeded;
- (void)localizeDefaultRepliesIfNeeded;
- (void)saveReplies:(id)replies;
- (void)setCannedReplies:(id)replies;
- (void)setIncludeSmartReplies:(BOOL)replies;
@end

@implementation WRCannedRepliesStore

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = WRCannedRepliesStore;
  [(WRCannedRepliesStore *)&v4 dealloc];
}

+ (BOOL)supportsEnhancedEditing
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];

  LOBYTE(mEMORY[0x277D2BCF8]) = BPSDeviceHasCapabilityForString();
  return mEMORY[0x277D2BCF8];
}

- (WRCannedRepliesStore)initWithCategory:(unint64_t)category
{
  v15.receiver = self;
  v15.super_class = WRCannedRepliesStore;
  v4 = [(WRCannedRepliesStore *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_category = category;
    v6 = [WRReplyStoreInfo infoForCategory:category];
    info = v5->_info;
    v5->_info = v6;

    v8 = os_log_create("WatchReplies", "CannedReplies");
    log = v5->_log;
    v5->_log = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v5->_lock;
    v5->_lock = v10;

    defaultsChangedNotificationName = [(WRReplyStoreInfo *)v5->_info defaultsChangedNotificationName];
    if (defaultsChangedNotificationName)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _WRCannedRepliesStore_handleStoreChange, defaultsChangedNotificationName, v5, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v5;
}

- (id)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    defaultsDomain = [(WRReplyStoreInfo *)self->_info defaultsDomain];
    if (defaultsDomain)
    {
      v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:defaultsDomain];
      v6 = self->_domainAccessor;
      self->_domainAccessor = v5;

      synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    }

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (id)npsManager
{
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v5 = self->_npsManager;
    self->_npsManager = v4;

    npsManager = self->_npsManager;
  }

  return npsManager;
}

- (id)repliesForLanguage:(id)language
{
  v29 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  [(WRCannedRepliesStore *)self invalidateCachesIfNeededForLanguage:languageCopy];
  v22 = languageCopy;
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_cachedLocalizedReplies)
  {
    [(WRCannedRepliesStore *)self loadCannedRepliesIfNeeded];
    v7 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{-[NSArray count](self->_cannedReplies, "count")}];
    usesFormalReplies = [(WRCannedRepliesStore *)self usesFormalReplies];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = self->_cannedReplies;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v24;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        defaultReplyKey = [v13 defaultReplyKey];

        if (defaultReplyKey)
        {
          v15 = [(WRCannedRepliesStore *)self localizedDefaultReply:v13];
          [v7 addObject:v15];

          if (!usesFormalReplies)
          {
            continue;
          }

          v16 = [(WRCannedRepliesStore *)self localizedFormalDefaultReply:v13];
          [v7 addObject:v16];
        }

        else
        {
          defaultReplyText = [v13 defaultReplyText];
          v18 = [defaultReplyText isEqualToString:@"SMART_REPLIES_MARKER"];

          if (v18)
          {
            [v13 defaultReplyText];
          }

          else
          {
            [v13 text];
          }
          v16 = ;
          [v7 addObject:v16];
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (!v10)
      {
LABEL_20:

        array = [v7 array];
        cachedLocalizedReplies = self->_cachedLocalizedReplies;
        self->_cachedLocalizedReplies = array;

        v6 = self->_cachedLocalizedReplies;
        goto LABEL_21;
      }
    }
  }

  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(WRCannedRepliesStore *)buf repliesForLanguage:v5];
  }

  v6 = self->_cachedLocalizedReplies;
LABEL_21:
  [(NSRecursiveLock *)self->_lock unlock];

  return v6;
}

- (id)keyForDefaultReply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  usesFormalReplies = [(WRCannedRepliesStore *)self usesFormalReplies];
  [(NSRecursiveLock *)self->_lock lock];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_cannedReplies;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        defaultReplyKey = [v10 defaultReplyKey];

        if (defaultReplyKey)
        {
          v12 = [(WRCannedRepliesStore *)self localizedDefaultReply:v10];
          v13 = [v12 isEqualToString:replyCopy];

          if (v13)
          {
            defaultReplyKey2 = [v10 defaultReplyKey];
            goto LABEL_15;
          }

          if (usesFormalReplies)
          {
            v14 = [(WRCannedRepliesStore *)self localizedFormalDefaultReply:v10];
            v15 = [v14 isEqualToString:replyCopy];

            if (v15)
            {
              defaultReplyKey3 = [v10 defaultReplyKey];
              defaultReplyKey2 = [defaultReplyKey3 stringByAppendingString:@"_FORMAL"];

              goto LABEL_15;
            }
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  defaultReplyKey2 = 0;
LABEL_15:

  [(NSRecursiveLock *)self->_lock unlock];

  return defaultReplyKey2;
}

+ (id)supportedLanguages
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchReplies"];
  localizations = [v2 localizations];

  return localizations;
}

- (id)cannedReplies
{
  [(WRCannedRepliesStore *)self invalidateCachesIfNeededForLanguage:0];
  [(WRCannedRepliesStore *)self loadCannedRepliesIfNeeded];
  [(WRCannedRepliesStore *)self localizeDefaultRepliesIfNeeded];
  cannedReplies = self->_cannedReplies;

  return cannedReplies;
}

- (void)setCannedReplies:(id)replies
{
  v31 = *MEMORY[0x277D85DE8];
  repliesCopy = replies;
  [(NSRecursiveLock *)self->_lock lock];
  objc_storeStrong(&self->_cannedReplies, replies);
  selfCopy = self;
  [(NSRecursiveLock *)self->_lock unlock];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(repliesCopy, "count")}];
  v23 = +[WRCannedRepliesStore supportsEnhancedEditing];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = repliesCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        defaultReplyText = [v12 defaultReplyText];
        v14 = [defaultReplyText isEqualToString:@"SMART_REPLIES_MARKER"];

        if (v14)
        {
          defaultReplyText2 = [v12 defaultReplyText];
LABEL_10:
          defaultReplyKey2 = defaultReplyText2;
          goto LABEL_11;
        }

        text = [v12 text];
        v17 = [text length];

        if (v17)
        {
          defaultReplyText2 = [v12 text];
          goto LABEL_10;
        }

        defaultReplyKey = [v12 defaultReplyKey];

        if (defaultReplyKey)
        {
          defaultReplyKey2 = [v12 defaultReplyKey];
          if (([(__CFString *)defaultReplyKey2 hasSuffix:@"_FORMAL"]& 1) == 0)
          {
            if (!v23)
            {

              defaultReplyKey2 = &stru_288224B90;
            }

LABEL_11:
            [v6 addObject:defaultReplyKey2];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v20 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      v9 = v20;
    }

    while (v20);
  }

  log = selfCopy->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = v6;
    _os_log_impl(&dword_272AC2000, log, OS_LOG_TYPE_DEFAULT, "saving canned replies: %{public}@", buf, 0xCu);
  }

  [(WRCannedRepliesStore *)selfCopy saveReplies:v6];
}

- (BOOL)includeSmartReplies
{
  v6 = 0;
  domainAccessor = [(WRCannedRepliesStore *)self domainAccessor];
  v4 = [domainAccessor BOOLForKey:@"IncludeSmartRepliesKey" keyExistsAndHasValidFormat:&v6];

  if ((v6 & 1) == 0)
  {
    return [(WRReplyStoreInfo *)self->_info supportsSmartReplies];
  }

  return v4;
}

- (void)setIncludeSmartReplies:(BOOL)replies
{
  repliesCopy = replies;
  domainAccessor = [(WRCannedRepliesStore *)self domainAccessor];
  [domainAccessor setBool:repliesCopy forKey:@"IncludeSmartRepliesKey"];

  domainAccessor2 = [(WRCannedRepliesStore *)self domainAccessor];
  synchronize = [domainAccessor2 synchronize];

  npsManager = [(WRCannedRepliesStore *)self npsManager];
  defaultsDomain = [(WRReplyStoreInfo *)self->_info defaultsDomain];
  v10 = [MEMORY[0x277CBEB98] setWithObject:@"IncludeSmartRepliesKey"];
  [npsManager synchronizeNanoDomain:defaultsDomain keys:v10];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.MobileSMS.IncludeSmartRepliesKey.changed", 0, 0, 1u);
}

- (BOOL)usesFormalReplies
{
  v2 = WRLocalizedCategoryString(@"USES_FORMAL_REPLIES", self->_category, self->_cachedLanguage);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)localizedDefaultReply:(id)reply
{
  defaultReplyKey = [reply defaultReplyKey];
  v5 = WRLocalizedCategoryString(defaultReplyKey, self->_category, self->_cachedLanguage);

  return v5;
}

- (id)localizedFormalDefaultReply:(id)reply
{
  defaultReplyKey = [reply defaultReplyKey];
  v5 = [defaultReplyKey stringByAppendingString:@"_FORMAL"];

  v6 = WRLocalizedCategoryString(v5, self->_category, self->_cachedLanguage);

  return v6;
}

- (void)loadCannedRepliesIfNeeded
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_cannedReplies)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    defaultsKey = [(WRReplyStoreInfo *)self->_info defaultsKey];
    domainAccessor = [(WRCannedRepliesStore *)self domainAccessor];

    if (!domainAccessor || !defaultsKey || ((-[WRCannedRepliesStore domainAccessor](self, "domainAccessor"), v5 = objc_claimAutoreleasedReturnValue(), -[WRReplyStoreInfo defaultsKey](self->_info, "defaultsKey"), v6 = objc_claimAutoreleasedReturnValue(), [v5 objectForKey:v6], v7 = objc_claimAutoreleasedReturnValue(), v6, v5, -[WRCannedRepliesStore migrateRepliesIfNeeded:](self, "migrateRepliesIfNeeded:", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, !v8) ? (v9 = 0) : (v9 = objc_msgSend(objc_alloc(MEMORY[0x277CBEB18]), "initWithCapacity:", objc_msgSend(v8, "count"))), v10 = +[WRCannedRepliesStore supportsEnhancedEditing](WRCannedRepliesStore, "supportsEnhancedEditing"), v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = __49__WRCannedRepliesStore_loadCannedRepliesIfNeeded__block_invoke, v20[3] = &unk_279E66AA8, v20[4] = self, v22 = &v24, v23 = v10, v11 = v9, v21 = v11, objc_msgSend(v8, "enumerateObjectsUsingBlock:", v20), v12 = v21, v13 = v11, v12, v13, v8, !v13))
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WRReplyStoreInfo defaultCount](self->_info, "defaultCount")}];
      for (i = 0; i < [(WRReplyStoreInfo *)self->_info defaultCount]; ++i)
      {
        v18 = objc_alloc_init(WRCannedReply);
        v19 = [@"DEFAULT_REPLY_" stringByAppendingFormat:@"%tu", i];
        [(WRCannedReply *)v18 setDefaultReplyKey:v19];

        [v13 addObject:v18];
      }
    }

    if ([objc_opt_class() supportsEnhancedEditing] && -[WRCannedRepliesStore supportsSmartReplies](self, "supportsSmartReplies") && (v25[3] & 1) == 0)
    {
      v14 = objc_alloc_init(WRCannedReply);
      [(WRCannedReply *)v14 setDefaultReplyText:@"SMART_REPLIES_MARKER"];
      [v13 insertObject:v14 atIndex:0];
    }

    v15 = [v13 copy];
    cannedReplies = self->_cannedReplies;
    self->_cannedReplies = v15;

    _Block_object_dispose(&v24, 8);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

void __49__WRCannedRepliesStore_loadCannedRepliesIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (![objc_opt_class() isTinker] || (objc_msgSend(*(*(a1 + 32) + 16), "hiddenTinkerReplyKeys"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v10), v5, (v6 & 1) == 0))
  {
    v7 = objc_alloc_init(WRCannedReply);
    if ([v10 isEqualToString:@"SMART_REPLIES_MARKER"])
    {
      v8 = *(*(a1 + 48) + 8);
      if (*(v8 + 24))
      {
LABEL_13:

        goto LABEL_14;
      }

      *(v8 + 24) = 1;
      [(WRCannedReply *)v7 setDefaultReplyText:v10];
    }

    else if ([v10 hasPrefix:@"DEFAULT_REPLY_"])
    {
      [(WRCannedReply *)v7 setDefaultReplyKey:v10];
    }

    else if ((*(a1 + 56) & 1) != 0 || ![v10 isEqualToString:&stru_288224B90])
    {
      [(WRCannedReply *)v7 setText:v10];
    }

    else
    {
      v9 = [@"DEFAULT_REPLY_" stringByAppendingFormat:@"%tu", a3];
      [(WRCannedReply *)v7 setDefaultReplyKey:v9];
    }

    [*(a1 + 40) addObject:v7];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)localizeDefaultRepliesIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_didLocalizeDefaultReplies)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_cannedReplies;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          defaultReplyKey = [v7 defaultReplyKey];

          if (defaultReplyKey)
          {
            defaultReplyKey2 = [v7 defaultReplyKey];
            v10 = WRLocalizedCategoryString(defaultReplyKey2, self->_category, self->_cachedLanguage);
            [v7 setDefaultReplyText:v10];
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }

    self->_didLocalizeDefaultReplies = 1;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)invalidateCachesIfNeededForLanguage:(id)language
{
  obj = language;
  if (!obj)
  {
    obj = WRDeviceLanguage();
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (([obj isEqualToString:self->_cachedLanguage] & 1) == 0)
  {
    objc_storeStrong(&self->_cachedLanguage, obj);
    cachedLocalizedReplies = self->_cachedLocalizedReplies;
    self->_cachedLocalizedReplies = 0;

    self->_didLocalizeDefaultReplies = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)saveReplies:(id)replies
{
  repliesCopy = replies;
  domainAccessor = [(WRCannedRepliesStore *)self domainAccessor];

  if (domainAccessor)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(WRCannedRepliesStore *)repliesCopy saveReplies:?];
    }

    domainAccessor2 = [(WRCannedRepliesStore *)self domainAccessor];
    defaultsKey = [(WRReplyStoreInfo *)self->_info defaultsKey];
    [domainAccessor2 setObject:repliesCopy forKey:defaultsKey];

    domainAccessor3 = [(WRCannedRepliesStore *)self domainAccessor];
    synchronize = [domainAccessor3 synchronize];

    v11 = MEMORY[0x277CBEB98];
    defaultsKey2 = [(WRReplyStoreInfo *)self->_info defaultsKey];
    v13 = [v11 setWithObjects:{defaultsKey2, @"WatchRepliesVersion", 0}];

    npsManager = [(WRCannedRepliesStore *)self npsManager];
    defaultsDomain = [(WRReplyStoreInfo *)self->_info defaultsDomain];
    [npsManager synchronizeNanoDomain:defaultsDomain keys:v13];

    defaultsChangedNotificationName = [(WRReplyStoreInfo *)self->_info defaultsChangedNotificationName];
    if (defaultsChangedNotificationName)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, defaultsChangedNotificationName, 0, 0, 1u);
    }
  }
}

- (id)migrateRepliesIfNeeded:(id)needed
{
  v46 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_didMigrationCheck)
  {
    v6 = neededCopy;
    goto LABEL_59;
  }

  domainAccessor = [(WRCannedRepliesStore *)self domainAccessor];
  v8 = [domainAccessor objectForKey:@"WatchRepliesVersion"];

  if (!v8)
  {
    domainAccessor2 = [(WRCannedRepliesStore *)self domainAccessor];
    v8 = &unk_288225938;
    [domainAccessor2 setObject:&unk_288225938 forKey:@"WatchRepliesVersion"];
  }

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v11 = +[WRCannedRepliesStore supportsEnhancedEditing];
  selfCopy = self;
  if (!unsignedIntegerValue || v11)
  {
    if (unsignedIntegerValue == 0 && v11)
    {
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v18 = [v5 count];
      if (v18 >= [(WRReplyStoreInfo *)self->_info defaultCount])
      {
        v19 = v5;
      }

      else
      {
        v19 = [v5 mutableCopy];
        v20 = [v19 count];
        if (v20 < [(WRReplyStoreInfo *)self->_info defaultCount])
        {
          do
          {
            [v19 addObject:&stru_288224B90];
            v21 = [v19 count];
          }

          while (v21 < [(WRReplyStoreInfo *)self->_info defaultCount]);
        }
      }

      v22 = [v19 mutableCopy];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __47__WRCannedRepliesStore_migrateRepliesIfNeeded___block_invoke;
      v43[3] = &unk_279E66AD0;
      v23 = v22;
      v44 = v23;
      [v19 enumerateObjectsUsingBlock:v43];
      if ([v23 count])
      {
        domainAccessor3 = [(WRCannedRepliesStore *)self domainAccessor];
        [domainAccessor3 setObject:&unk_288225950 forKey:@"WatchRepliesVersion"];

        [(WRCannedRepliesStore *)self saveReplies:v23];
      }

      v12 = v23;

      goto LABEL_34;
    }
  }

  else if ([v5 count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WRReplyStoreInfo defaultCount](self->_info, "defaultCount")}];
    if ([(WRReplyStoreInfo *)self->_info defaultCount])
    {
      v13 = 0;
      do
      {
        if (v13 >= [v5 count])
        {
          [v12 addObject:&stru_288224B90];
        }

        else
        {
          v14 = [v5 objectAtIndexedSubscript:v13];
          if (([(__CFString *)v14 isEqualToString:@"SMART_REPLIES_MARKER"]& 1) == 0)
          {
            if ([(__CFString *)v14 hasPrefix:@"DEFAULT_REPLY_"])
            {
              v15 = v12;
              v16 = &stru_288224B90;
            }

            else
            {
              v15 = v12;
              v16 = v14;
            }

            [v15 addObject:v16];
          }

          self = selfCopy;
        }

        ++v13;
      }

      while (v13 < [(WRReplyStoreInfo *)self->_info defaultCount]);
    }

    if ([v12 count])
    {
      domainAccessor4 = [(WRCannedRepliesStore *)self domainAccessor];
      [domainAccessor4 setObject:&unk_288225938 forKey:@"WatchRepliesVersion"];

      [(WRCannedRepliesStore *)self saveReplies:v12];
    }

    goto LABEL_34;
  }

  v12 = v5;
LABEL_34:
  if (unsignedIntegerValue <= 1 && self->_category == 1 && (-[WRCannedRepliesStore domainAccessor](self, "domainAccessor"), v25 = objc_claimAutoreleasedReturnValue(), [v25 setObject:&unk_288225968 forKey:@"WatchRepliesVersion"], v25, objc_msgSend(v12, "count")))
  {
    v37 = v8;
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = v12;
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v40;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v40 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v39 + 1) + 8 * i);
          if ([v32 isEqualToString:{@"SMART_REPLIES_MARKER", v37}] || !objc_msgSend(v32, "hasPrefix:", @"DEFAULT_REPLY_"))
          {
            [v26 addObject:v32];
          }

          else
          {
            v33 = objc_alloc_init(WRCannedReply);
            [(WRCannedReply *)v33 setDefaultReplyKey:v32];
            if ([(WRCannedRepliesStore *)self usesFormalReplies])
            {
              [(WRCannedRepliesStore *)self localizedFormalDefaultReply:v33];
            }

            else
            {
              [(WRCannedRepliesStore *)self localizedDefaultReply:v33];
            }
            v34 = ;
            if (([v34 isEqualToString:v32] & 1) == 0)
            {
              [v26 addObject:v32];
            }

            self = selfCopy;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v29);
    }

    if ([v26 count])
    {
      v35 = [v26 count];
      if (v35 != [v27 count])
      {
        [(WRCannedRepliesStore *)self saveReplies:v26];
      }
    }

    v8 = v37;
  }

  else
  {
    v26 = v12;
  }

  self->_didMigrationCheck = 1;
  v6 = v26;

LABEL_59:

  return v6;
}

void __47__WRCannedRepliesStore_migrateRepliesIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 length])
  {
    v5 = [@"DEFAULT_REPLY_" stringByAppendingFormat:@"%tu", a3];
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
  }
}

- (void)handleStoreChange
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_272AC2000, log, OS_LOG_TYPE_DEFAULT, "canned replies did change", v11, 2u);
  }

  domainAccessor = [(WRCannedRepliesStore *)self domainAccessor];
  synchronize = [domainAccessor synchronize];

  [(NSRecursiveLock *)self->_lock lock];
  cachedLanguage = self->_cachedLanguage;
  self->_cachedLanguage = 0;

  cachedLocalizedReplies = self->_cachedLocalizedReplies;
  self->_cachedLocalizedReplies = 0;

  cannedReplies = self->_cannedReplies;
  self->_cannedReplies = 0;

  self->_didMigrationCheck = 0;
  [(NSRecursiveLock *)self->_lock unlock];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  defaultsChangedNotificationName = [(WRReplyStoreInfo *)self->_info defaultsChangedNotificationName];
  [defaultCenter postNotificationName:defaultsChangedNotificationName object:self];
}

- (void)repliesForLanguage:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134349056;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_272AC2000, log, OS_LOG_TYPE_DEBUG, "using cached replies: (count: %{public}lu)", buf, 0xCu);
}

- (void)saveReplies:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_272AC2000, a2, OS_LOG_TYPE_DEBUG, "saving canned replies: %{public}@", &v2, 0xCu);
}

@end