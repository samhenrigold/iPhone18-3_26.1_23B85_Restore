@interface WLKChannelUtilities
+ (BOOL)isItunesBundleID:(id)d;
+ (id)_validiTunesBundles;
+ (id)sharedInstance;
+ (id)sharedInstanceFiltered;
- (BOOL)isItunesOrFirstPartyBundleID:(id)d;
- (BOOL)loaded;
- (NSArray)orderedChannels;
- (NSDictionary)channelsByID;
- (WLKChannelUtilities)init;
- (id)_configuration;
- (id)channelForBundleID:(id)d;
- (id)channelForID:(id)d;
- (id)channelIDForBundleID:(id)d;
- (id)initFiltered:(BOOL)filtered;
- (void)_loadConfigIfNeededWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidateCache;
- (void)loadIfNeededWithCompletion:(id)completion;
- (void)updateConsentStatusForCachedEntry:(id)entry consented:(BOOL)consented;
@end

@implementation WLKChannelUtilities

+ (id)sharedInstanceFiltered
{
  if (sharedInstanceFiltered_onceToken != -1)
  {
    +[WLKChannelUtilities sharedInstanceFiltered];
  }

  v3 = sharedInstanceFiltered_sharedInstanceFiltered;

  return v3;
}

uint64_t __45__WLKChannelUtilities_sharedInstanceFiltered__block_invoke()
{
  v0 = [[WLKChannelUtilities alloc] initFiltered:1];
  v1 = sharedInstanceFiltered_sharedInstanceFiltered;
  sharedInstanceFiltered_sharedInstanceFiltered = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[WLKChannelUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __37__WLKChannelUtilities_sharedInstance__block_invoke()
{
  v0 = [[WLKChannelUtilities alloc] initFiltered:0];
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)initFiltered:(BOOL)filtered
{
  v11.receiver = self;
  v11.super_class = WLKChannelUtilities;
  v4 = [(WLKChannelUtilities *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_filtered = filtered;
    *&v4->_shouldRefresh = 0;
    inFlightcompletionList = v4->_inFlightcompletionList;
    v4->_inFlightcompletionList = 0;

    v5->_lock._os_unfair_lock_opaque = 0;
    error = v5->_error;
    v5->_error = 0;

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __36__WLKChannelUtilities_initFiltered___block_invoke;
    handler[3] = &unk_279E5F5B8;
    v10 = v5;
    notify_register_dispatch("com.apple.WatchListKit._WLKChannelUtilitesDataShouldRefreshInternal", &v5->_shouldRefreshNotificationToken, MEMORY[0x277D85CD0], handler);
  }

  return v5;
}

void __36__WLKChannelUtilities_initFiltered___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v2 = getpid();
  state = notify_get_state(*(*(a1 + 32) + 32), &state64);
  if (state64 != v2)
  {
    v4 = WLKSystemLogObject(state);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v7 = v2;
      v8 = 2048;
      v9 = state64;
      _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - Set refresh=YES for next request in process=%llu., Triggered from process=%llu", buf, 0x16u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 40));
    *(*(a1 + 32) + 36) = 1;
    os_unfair_lock_unlock((*(a1 + 32) + 40));
  }
}

- (WLKChannelUtilities)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKChannelUtilitiesException" format:@"-init not supported"];

  return 0;
}

- (void)loadIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [WLKChannelUtilities loadIfNeededWithCompletion:];
  }

  v5 = completionCopy;
  [(WLKChannelUtilities *)self _loadConfigIfNeededWithCompletion:completionCopy];
}

- (void)dealloc
{
  shouldRefreshNotificationToken = self->_shouldRefreshNotificationToken;
  if (shouldRefreshNotificationToken)
  {
    notify_cancel(shouldRefreshNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = WLKChannelUtilities;
  [(WLKChannelUtilities *)&v4 dealloc];
}

- (BOOL)loaded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(WLKChannelsResponse *)self->_cachedResponse isValidForFiltered:self->_filtered];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSDictionary)channelsByID
{
  _configuration = [(WLKChannelUtilities *)self _configuration];
  channels = [_configuration channels];

  return channels;
}

- (id)channelForID:(id)d
{
  if (d)
  {
    dCopy = d;
    _configuration = [(WLKChannelUtilities *)self _configuration];
    channels = [_configuration channels];
    v7 = [channels objectForKeyedSubscript:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)channelForBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    _validiTunesBundles = [objc_opt_class() _validiTunesBundles];
    v6 = [_validiTunesBundles containsObject:dCopy];

    if (v6)
    {
      v7 = [(WLKChannelUtilities *)self channelForID:@"tvs.sbd.9001"];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      _configuration = [(WLKChannelUtilities *)self _configuration];
      orderedChannels = [_configuration orderedChannels];

      v7 = [orderedChannels countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(orderedChannels);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            appBundleIDs = [v12 appBundleIDs];
            v14 = [appBundleIDs containsObject:dCopy];

            if (v14)
            {
              v7 = v12;
              goto LABEL_15;
            }
          }

          v7 = [orderedChannels countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)channelIDForBundleID:(id)d
{
  v3 = [(WLKChannelUtilities *)self channelForBundleID:d];
  channelID = [v3 channelID];

  return channelID;
}

- (NSArray)orderedChannels
{
  _configuration = [(WLKChannelUtilities *)self _configuration];
  orderedChannels = [_configuration orderedChannels];

  return orderedChannels;
}

+ (BOOL)isItunesBundleID:(id)d
{
  dCopy = d;
  _validiTunesBundles = [self _validiTunesBundles];
  v6 = [_validiTunesBundles containsObject:dCopy];

  return v6;
}

+ (id)_validiTunesBundles
{
  if (_validiTunesBundles_onceToken != -1)
  {
    +[WLKChannelUtilities _validiTunesBundles];
  }

  v3 = _validiTunesBundles___validItunesIDs;

  return v3;
}

void __42__WLKChannelUtilities__validiTunesBundles__block_invoke()
{
  v0 = _validiTunesBundles___validItunesIDs;
  _validiTunesBundles___validItunesIDs = &unk_288222F48;
}

- (BOOL)isItunesOrFirstPartyBundleID:(id)d
{
  dCopy = d;
  if ([objc_opt_class() isItunesBundleID:dCopy])
  {
    isFirstParty = 1;
  }

  else
  {
    v6 = [(WLKChannelUtilities *)self channelForBundleID:dCopy];
    isFirstParty = [v6 isFirstParty];
  }

  return isFirstParty;
}

- (id)_configuration
{
  v3 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__WLKChannelUtilities__configuration__block_invoke;
  v8[3] = &unk_279E60058;
  v9 = v3;
  v4 = v3;
  [(WLKChannelUtilities *)self _loadConfigIfNeededWithCompletion:v8];
  v5 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v4, v5);
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_cachedResponse;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_loadConfigIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [WLKChannelUtilities _loadConfigIfNeededWithCompletion:];
  }

  v5 = completionCopy;
  os_unfair_lock_lock(&self->_lock);
  if (self->_shouldRefresh || (v6 = [(WLKChannelsResponse *)self->_cachedResponse isValidForFiltered:self->_filtered], !v6))
  {
    isChannelsInProgress = self->_isChannelsInProgress;
    v8 = WLKSystemLogObject(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (isChannelsInProgress)
    {
      if (v9)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - WLKChannelsRequestOperation in progress. Adding completion to pending list.", buf, 2u);
      }

      inFlightcompletionList = self->_inFlightcompletionList;
      v11 = MEMORY[0x2743D2DF0](v5);
      [(NSMutableArray *)inFlightcompletionList addObject:v11];

      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      if (v9)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - WLKChannelsRequestOperation starting.", buf, 2u);
      }

      *&self->_shouldRefresh = 256;
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = self->_inFlightcompletionList;
      self->_inFlightcompletionList = v12;

      v14 = self->_inFlightcompletionList;
      v15 = MEMORY[0x2743D2DF0](v5);
      [(NSMutableArray *)v14 addObject:v15];

      v16 = [[WLKChannelsRequestOperation alloc] initWithCaller:0 isFilteredByUserChannels:self->_filtered];
      os_unfair_lock_unlock(&self->_lock);
      v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
      objc_initWeak(buf, self);
      objc_initWeak(&location, v16);
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __57__WLKChannelUtilities__loadConfigIfNeededWithCompletion___block_invoke;
      v21 = &unk_279E60238;
      objc_copyWeak(&v23, buf);
      objc_copyWeak(&v24, &location);
      selfCopy = self;
      [(WLKChannelsRequestOperation *)v16 setCompletionBlock:&v18];
      [v17 addOperation:{v16, v18, v19, v20, v21}];
      objc_destroyWeak(&v24);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5[2](v5, 1, 0);
  }
}

void __57__WLKChannelUtilities__loadConfigIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = v3;
  if (WeakRetained && v3)
  {
    v5 = WLKSystemLogObject(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - WLKChannelsRequestOperation completed. Processing response.", buf, 2u);
    }

    os_unfair_lock_lock((*(a1 + 32) + 40));
    v6 = [v4 channelsResponse];
    v7 = *(WeakRetained + 3);
    *(WeakRetained + 3) = v6;

    v8 = [v4 error];
    v9 = *(WeakRetained + 7);
    *(WeakRetained + 7) = v8;

    *(WeakRetained + 37) = 0;
    v10 = [*(WeakRetained + 6) copy];
    v11 = *(WeakRetained + 6);
    *(WeakRetained + 6) = 0;

    os_unfair_lock_unlock((*(a1 + 32) + 40));
    v13 = WLKSystemLogObject(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - Calling pending completion list with result.", v18, 2u);
    }

    if ([v10 count])
    {
      v14 = 0;
      do
      {
        v15 = [v10 objectAtIndexedSubscript:v14];
        v16 = [v4 channelsResponse];
        v17 = [v4 error];
        (v15)[2](v15, v16 != 0, v17);

        ++v14;
      }

      while (v14 < [v10 count]);
    }
  }
}

- (void)updateConsentStatusForCachedEntry:(id)entry consented:(BOOL)consented
{
  consentedCopy = consented;
  entryCopy = entry;
  os_unfair_lock_lock(&self->_lock);
  cachedResponse = self->_cachedResponse;
  if (cachedResponse)
  {
    [(WLKChannelsResponse *)cachedResponse modifyConsentStatusForChannelEntry:entryCopy consented:consentedCopy];
  }

  [(WLKChannelUtilities *)self invalidateCache];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidateCache
{
  v3 = WLKSystemLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKChannelUtilities - Posting channel data should refresh for cross processes note", v6, 2u);
  }

  shouldRefreshNotificationToken = self->_shouldRefreshNotificationToken;
  v5 = getpid();
  notify_set_state(shouldRefreshNotificationToken, v5);
  notify_post("com.apple.WatchListKit._WLKChannelUtilitesDataShouldRefreshInternal");
}

@end