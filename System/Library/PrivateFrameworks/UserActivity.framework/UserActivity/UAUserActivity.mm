@interface UAUserActivity
+ (BOOL)checkWebpageURL:(id)l actionType:(unint64_t)type throwIfFailed:(BOOL)failed;
+ (BOOL)currentUserActivityProxiesWithOptions:(id)options matching:(id)matching completionHandler:(id)handler;
+ (BOOL)currentUserActivityUUIDWithOptions:(id)options completionHandler:(id)handler;
+ (BOOL)determineIfUserActivityIsCurrent:(id)current completionHandler:(id)handler;
+ (BOOL)isIndexPendingForUUID:(id)d;
+ (BOOL)registerAsProxyForApplication:(int)application options:(id)options completionBlock:(id)block;
+ (id)_decodeFromEntireString:(id)string;
+ (id)_decodeFromScanner:(id)scanner;
+ (id)_decodeFromString:(id)string;
+ (id)_encodeKeyAndValueIntoString:(id)string value:(id)value;
+ (id)_encodeToString:(id)string;
+ (id)allowedWebpageURLSchemes;
+ (id)currentUserActivityUUID;
+ (id)fetchUserActivityWithUUID:(id)d intervalToWaitForDocumentSynchronizationToComplete:(double)complete completionHandler:(id)handler;
+ (id)mainBundleIdentifier;
+ (id)registerForSuggestedActionNudgeOfType:(unint64_t)type withOptions:(id)options block:(id)block;
+ (id)userActivityFromUUID:(id)d timeout:(double)timeout withError:(id *)error;
+ (id)userActivityFromUUID:(id)d withError:(id *)error;
+ (void)addDynamicUserActivity:(id)activity matching:(id)matching;
+ (void)addUserActivityObserver:(id)observer;
+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(id)handler;
+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(id)identifiers completionHandler:(id)handler;
+ (void)fetchUserActivityWithUUID:(id)d completionHandler:(id)handler;
+ (void)removeDynamicUserActivity:(id)activity matching:(id)matching;
+ (void)removeUserActivityObserver:(id)observer;
+ (void)unregisterForSuggestedActionNudgeOfType:(id)type;
- (BOOL)_encodeIntoUserActivityStringWithSave:(BOOL)save options:(id)options completionHandler:(id)handler;
- (BOOL)archiveURL:(id)l completionHandler:(id)handler;
- (BOOL)createUserActivityDataWithSaving:(BOOL)saving options:(id)options completionHandler:(id)handler;
- (BOOL)createUserActivityStringsWithSaving:(BOOL)saving options:(id)options completionHandler:(id)handler;
- (BOOL)dirty;
- (BOOL)finishUserInfoUpdate;
- (BOOL)forwardToCoreSpotlightIndexer;
- (BOOL)isCurrent;
- (BOOL)isEligibleForPrediction;
- (BOOL)isEligibleForReminders;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInvalidated;
- (BOOL)isPayloadDirty:(id)dirty;
- (BOOL)isUniversalLink;
- (BOOL)needsSave;
- (BOOL)supportsContinuationStreams;
- (CSSearchableItemAttributeSet)contentAttributeSet;
- (NSData)streamsData;
- (NSDate)expirationDate;
- (NSDictionary)userInfo;
- (NSSet)keywords;
- (NSSet)requiredUserInfoKeys;
- (NSString)contentUserAction;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)persistentIdentifier;
- (NSString)subtitle;
- (NSString)targetContentIdentifier;
- (NSString)title;
- (NSURL)referrerURL;
- (NSURL)webpageURL;
- (NSUserActivity)parentUserActivity;
- (OS_dispatch_queue)willCallSaveSerializationQueue;
- (UAUserActivity)initWithManager:(id)manager userActivityInfo:(id)info;
- (UAUserActivity)initWithTypeIdentifier:(id)identifier suggestedActionType:(unint64_t)type options:(id)options;
- (UAUserActivity)initWithUserActivityData:(id)data options:(id)options;
- (UAUserActivity)initWithUserActivityStrings:(id)strings optionalString:(id)string tertiaryData:(id)data options:(id)options;
- (UAUserActivityDelegate)delegate;
- (UAUserActivityManager)manager;
- (double)madeCurrentInterval;
- (id)_encodeIntoUserActivityDataWithSave:(BOOL)save options:(id)options error:(id *)error;
- (id)_encodeIntoUserActivityStringWithSave:(BOOL)save options:(id)options optionalString:(id *)string optionalData:(id *)data error:(id *)error;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)data options:(id)options clearDirty:(BOOL)dirty;
- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)data options:(id)options clearDirty:(BOOL)dirty completionHandler:(id)handler;
- (id)contentAttributes;
- (id)contentType;
- (id)copyWithNewUUID:(BOOL)d;
- (id)createUserActivityDataWithSaving:(BOOL)saving options:(id)options error:(id *)error;
- (id)createUserActivityStringsWithSaving:(BOOL)saving options:(id)options optionalString:(id *)string data:(id *)data error:(id *)error;
- (id)decodeUserInfo:(id)info;
- (id)decodeUserInfo:(id)info options:(id)options;
- (id)determineMatchingApplicationBundleIdentfierWithOptions:(id)options;
- (id)encodeUserInfo:(id)info;
- (id)encodeUserInfo:(id)info error:(id *)error;
- (id)encodeUserInfo:(id)info options:(id)options error:(id *)error;
- (id)initDynamicActivityWithTypeIdentifier:(id)identifier dynamicIdentifier:(id)dynamicIdentifier suggestedActionType:(unint64_t)type options:(id)options;
- (id)objectForIdentifier:(id)identifier;
- (id)payloadForIdentifier:(id)identifier;
- (id)payloadIdentifiers;
- (id)payloadUpdateBlockForIdentifier:(id)identifier;
- (id)stateString;
- (id)unarchiveURL:(id)l error:(id *)error;
- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object;
- (id)userActivityInfoForSelfWithPayload:(BOOL)payload options:(id)options;
- (int64_t)priority;
- (unint64_t)beginUserInfoUpdate:(id)update;
- (unint64_t)hash;
- (unint64_t)userInfoChangeCount;
- (void)_setWebpageURL:(id)l throwOnFailure:(BOOL)failure;
- (void)addContentAttribute:(id)attribute forKey:(id)key;
- (void)addKeywordsFromArray:(id)array;
- (void)addUserInfoEntriesFromDictionary:(id)dictionary;
- (void)advertiser:(id)advertiser didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)becomeCurrent;
- (void)dealloc;
- (void)didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)didSynchronizeUserActivity;
- (void)getContinuationStreamsWithCompletionHandler:(id)handler;
- (void)indexActivity:(double)activity forceIndexing:(BOOL)indexing;
- (void)invalidate;
- (void)prepareUserActivityForLaunchingWithOptions:(id)options completionHandler:(id)handler;
- (void)removeContentAttribute:(id)attribute;
- (void)resignCurrent;
- (void)scheduleSendUserActivityInfoToLSUserActivityd;
- (void)sendToCoreSpotlightIndexer;
- (void)sendUserActivityInfoToLSUserActivityd:(BOOL)activityd onAsyncQueue:(BOOL)queue;
- (void)setContentAttributeSet:(id)set;
- (void)setContentAttributes:(id)attributes;
- (void)setContentType:(id)type;
- (void)setContentUserAction:(id)action;
- (void)setDirty:(BOOL)dirty;
- (void)setDirty:(BOOL)dirty identifier:(id)identifier;
- (void)setEligibleForHandoff:(BOOL)handoff;
- (void)setEligibleForPrediction:(BOOL)prediction;
- (void)setEligibleForPublicIndexing:(BOOL)indexing;
- (void)setEligibleForReminders:(BOOL)reminders;
- (void)setEligibleForSearch:(BOOL)search;
- (void)setExpirationDate:(id)date;
- (void)setKeywords:(id)keywords;
- (void)setNeedsSave:(BOOL)save;
- (void)setParentUserActivity:(id)activity;
- (void)setPayload:(id)payload object:(id)object identifier:(id)identifier dirty:(BOOL)dirty;
- (void)setPayloadIdentifier:(id)identifier object:(id)object withBlock:(id)block;
- (void)setPersistentIdentifier:(id)identifier;
- (void)setReferrerURL:(id)l;
- (void)setRequiredUserInfoKeys:(id)keys;
- (void)setStreamsData:(id)data;
- (void)setSubtitle:(id)subtitle;
- (void)setSupportsContinuationStreams:(BOOL)streams;
- (void)setTargetContentIdentifier:(id)identifier;
- (void)setTitle:(id)title;
- (void)setUniversalLink:(BOOL)link;
- (void)setUserInfo:(id)info;
- (void)setWebpageURL:(id)l;
- (void)synchronouslyEncodeUserInfo:(id)info options:(id)options completionHandler:(id)handler;
- (void)tellDaemonAboutNewLSUserActivity;
- (void)updateForwardToCoreSpotlightIndexer:(char)indexer;
- (void)willSynchronizeUserActivityWithHandler:(id)handler;
@end

@implementation UAUserActivity

- (unint64_t)hash
{
  uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEligibleForPrediction
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  eligibleForPrediction = selfCopy->_eligibleForPrediction;
  objc_sync_exit(selfCopy);

  return eligibleForPrediction;
}

- (BOOL)isInvalidated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return invalidated;
}

- (NSDictionary)userInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_userInfo copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (UAUserActivityManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (BOOL)forwardToCoreSpotlightIndexer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_forwardToCoreSpotlightIndexerCount > 0 || [(UAUserActivity *)selfCopy isEligibleForSearch])
  {
    isEligibleForPrediction = 1;
  }

  else
  {
    isEligibleForPrediction = [(UAUserActivity *)selfCopy isEligibleForPrediction];
  }

  objc_sync_exit(selfCopy);

  return isEligibleForPrediction;
}

- (NSUserActivity)parentUserActivity
{
  v3 = getUAUserActivityToNSUserActivityMap(self);
  objc_sync_enter(v3);
  v4 = [v3 objectForKey:self];
  objc_sync_exit(v3);

  return v4;
}

- (NSString)title
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_title;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)becomeCurrent
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    manager = [(UAUserActivity *)self manager];
    v7 = [manager userActivityIsActive:self];
    isInvalidated = [(UAUserActivity *)self isInvalidated];
    v9 = &stru_283A5A2C8;
    v10 = @" (already current)";
    if (!v7)
    {
      v10 = &stru_283A5A2C8;
    }

    *buf = 138543874;
    v37 = uUIDString;
    v38 = 2114;
    *v39 = v10;
    if (isInvalidated)
    {
      v9 = @"(invalidated)";
    }

    *&v39[8] = 2114;
    v40 = v9;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "-becomeCurrent, uuid=%{public}@%{public}@%{public}@", buf, 0x20u);
  }

  if (loadSynapseObserverWhenFirstUserActivityIsMadeCurrent(void)::sOnce != -1)
  {
    [UAUserActivity becomeCurrent];
  }

  if (![(UAUserActivity *)self isInvalidated])
  {
    manager2 = [(UAUserActivity *)self manager];
    v30 = [manager2 userActivityIsActive:self];

    v13 = biomeInfoLogging(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
      needsSave = self->_needsSave;
      dirty = self->_dirty;
      activityHasBeenSentToServer = self->_activityHasBeenSentToServer;
      *buf = 138544386;
      v37 = uniqueIdentifier2;
      v38 = 1024;
      *v39 = v30;
      *&v39[4] = 1024;
      *&v39[6] = needsSave;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = dirty;
      HIWORD(v40) = 1024;
      v41 = activityHasBeenSentToServer;
      _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "%{public}@ BECOMECURRENT\twas=%{BOOL}d needsSave=%{BOOL}d dirty=%{BOOL}d sendToServer=%{BOOL}d", buf, 0x24u);
    }

    v18 = [MEMORY[0x277CBEAA8] now];
    if (v30)
    {
      madeCurrentDate = self->_madeCurrentDate;
      self->_madeCurrentDate = v18;
    }

    else
    {
      madeInitiallyCurrentDate = self->_madeInitiallyCurrentDate;
      self->_madeInitiallyCurrentDate = v18;

      objc_storeStrong(&self->_madeCurrentDate, self->_madeInitiallyCurrentDate);
      if (![(UAUserActivity *)self activityHasBeenSentToServer])
      {
        [(UAUserActivity *)self tellDaemonAboutNewLSUserActivity];
      }

      manager3 = [(UAUserActivity *)self manager];
      [manager3 makeActive:self];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      madeCurrentDate = getUserActivityObserversCopy();
      v22 = [madeCurrentDate countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v22)
      {
        v23 = *v32;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v32 != v23)
            {
              objc_enumerationMutation(madeCurrentDate);
            }

            v25 = *(*(&v31 + 1) + 8 * i);
            parentUserActivity = [(UAUserActivity *)self parentUserActivity];
            if (parentUserActivity)
            {
              v27 = objc_opt_respondsToSelector();

              if (v27)
              {
                parentUserActivity2 = [(UAUserActivity *)self parentUserActivity];
                [v25 userActivityDidBecomeCurrent:parentUserActivity2 current:1];
              }
            }
          }

          v22 = [madeCurrentDate countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v22);
      }
    }

    if ([(UAUserActivity *)self isEligibleForSearch]|| [(UAUserActivity *)self forwardToCoreSpotlightIndexer])
    {
      v29 = 0.1;
      if (v30)
      {
        v29 = 1.0;
      }

      [(UAUserActivity *)self indexActivity:1 forceIndexing:v29];
    }

    if (v30)
    {
      [(UAUserActivity *)self scheduleSendUserActivityInfoToLSUserActivityd];
    }

    else
    {
      [(UAUserActivity *)self sendUserActivityInfoToLSUserActivityd:1 onAsyncQueue:1];
    }
  }
}

- (void)tellDaemonAboutNewLSUserActivity
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v14 = 138543362;
    v15 = uUIDString;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "Sending activity %{public}@ information to server", &v14, 0xCu);
  }

  if (self->_createsNewUUIDIfSaved)
  {
    manager = [(UAUserActivity *)self manager];
    [manager removeUserActivity:self];

    uUID = [MEMORY[0x277CCAD78] UUID];
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      uUIDString2 = [(NSUUID *)self->_uniqueIdentifier UUIDString];
      uUIDString3 = [(NSUUID *)uUID UUIDString];
      v14 = 138543618;
      v15 = uUIDString2;
      v16 = 2114;
      v17 = uUIDString3;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "-- Allocating a new UUID for this activity, old=%{public}@ new=%{public}@", &v14, 0x16u);
    }

    uniqueIdentifier = self->_uniqueIdentifier;
    self->_uniqueIdentifier = uUID;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activityHasBeenSentToServer = 1;
  objc_sync_exit(selfCopy);

  manager2 = [(UAUserActivity *)selfCopy manager];
  [manager2 tellDaemonAboutNewLSUserActivity:selfCopy];
}

- (NSURL)webpageURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_webpageURL;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)targetContentIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_targetContentIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)needsSave
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  needsSave = selfCopy->_needsSave;
  objc_sync_exit(selfCopy);

  return needsSave;
}

- (void)resignCurrent
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    manager = [(UAUserActivity *)self manager];
    v7 = [manager userActivityIsActive:self];
    isInvalidated = [(UAUserActivity *)self isInvalidated];
    v9 = &stru_283A5A2C8;
    v10 = @" (was current)";
    if (!v7)
    {
      v10 = &stru_283A5A2C8;
    }

    *buf = 138543874;
    v38 = uUIDString;
    v39 = 2114;
    *v40 = v10;
    if (isInvalidated)
    {
      v9 = @"(invalidated)";
    }

    *&v40[8] = 2114;
    v41 = v9;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "uuid=%{public}@%{public}@%{public}@", buf, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  manager2 = [(UAUserActivity *)selfCopy manager];
  v13 = [manager2 userActivityIsActive:selfCopy];

  v15 = biomeInfoLogging(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier2 = [(UAUserActivity *)selfCopy uniqueIdentifier];
    needsSave = selfCopy->_needsSave;
    dirty = selfCopy->_dirty;
    activityHasBeenSentToServer = selfCopy->_activityHasBeenSentToServer;
    *buf = 138544386;
    v38 = uniqueIdentifier2;
    v39 = 1024;
    *v40 = v13;
    *&v40[4] = 1024;
    *&v40[6] = needsSave;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = dirty;
    HIWORD(v41) = 1024;
    v42 = activityHasBeenSentToServer;
    _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_INFO, "%{public}@ RESIGNCURRENT\twas=%{BOOL}d needsSave=%{BOOL}d dirty=%{BOOL}d sendToServer=%{BOOL}d", buf, 0x24u);
  }

  if (v13)
  {
    v20 = objc_opt_new();
    madeCurrentEndDate = selfCopy->_madeCurrentEndDate;
    selfCopy->_madeCurrentEndDate = v20;

    [(NSDate *)selfCopy->_madeCurrentEndDate timeIntervalSinceDate:selfCopy->_madeInitiallyCurrentDate];
    selfCopy->_madeCurrentInterval = v22 + selfCopy->_madeCurrentInterval;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = getUserActivityObserversCopy();
    v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v24)
    {
      v25 = *v33;
      do
      {
        v26 = 0;
        do
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v32 + 1) + 8 * v26);
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          if (parentUserActivity)
          {
            v29 = objc_opt_respondsToSelector();

            if (v29)
            {
              parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
              [v27 userActivityDidBecomeCurrent:parentUserActivity2 current:0];
            }
          }

          ++v26;
        }

        while (v24 != v26);
        v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v24);
    }
  }

  manager3 = [(UAUserActivity *)selfCopy manager];
  [manager3 makeInactive:selfCopy];

  objc_sync_exit(selfCopy);
}

- (id)payloadIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277CBEB98];
  payloadUpdateBlocks = [(UAUserActivity *)selfCopy payloadUpdateBlocks];
  allKeys = [payloadUpdateBlocks allKeys];
  v6 = [v3 setWithArray:allKeys];

  payloadDataCache = [(UAUserActivity *)selfCopy payloadDataCache];
  v8 = [payloadDataCache count];

  if (v8)
  {
    payloadDataCache2 = [(UAUserActivity *)selfCopy payloadDataCache];
    allKeys2 = [payloadDataCache2 allKeys];
    v11 = [v6 setByAddingObjectsFromArray:allKeys2];

    v6 = v11;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (BOOL)dirty
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dirty = selfCopy->_dirty;
  objc_sync_exit(selfCopy);

  return dirty;
}

- (OS_dispatch_queue)willCallSaveSerializationQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  willCallSaveSerializationQueue = selfCopy->_willCallSaveSerializationQueue;
  if (!willCallSaveSerializationQueue)
  {
    v4 = MEMORY[0x277CCACA8];
    uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v7 = [v4 stringWithFormat:@"willSaveCallback/%@", uUIDString];
    v8 = dispatch_queue_create([v7 cStringUsingEncoding:4], 0);
    v9 = selfCopy->_willCallSaveSerializationQueue;
    selfCopy->_willCallSaveSerializationQueue = v8;

    willCallSaveSerializationQueue = selfCopy->_willCallSaveSerializationQueue;
  }

  v10 = willCallSaveSerializationQueue;
  objc_sync_exit(selfCopy);

  return v10;
}

- (UAUserActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (NSSet)requiredUserInfoKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_requiredUserInfoKeys copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isUniversalLink
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  universalLink = selfCopy->_universalLink;
  objc_sync_exit(selfCopy);

  return universalLink;
}

- (NSSet)keywords
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_keywords copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)contentUserAction
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_contentUserAction;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSDate)expirationDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_expirationDate;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)persistentIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSString *)selfCopy->_persistentIdentifier copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)isEligibleForReminders
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_eligibleForReminders || selfCopy->_eligibleForSearch;
  objc_sync_exit(selfCopy);

  return v3 & 1;
}

- (void)invalidate
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v6 = [(UAUserActivity *)self description];
    isInvalidated = [(UAUserActivity *)self isInvalidated];
    v8 = &stru_283A5A2C8;
    *buf = 138543875;
    v34 = uUIDString;
    if (isInvalidated)
    {
      v8 = @" (was already invalidated)";
    }

    v35 = 2113;
    *v36 = v6;
    *&v36[8] = 2114;
    v37 = v8;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "Invalidate activity %{public}@ (%{private}@)%{public}@", buf, 0x20u);
  }

  isInvalidated2 = [(UAUserActivity *)self isInvalidated];
  if ((isInvalidated2 & 1) == 0)
  {
    v10 = biomeInfoLogging(isInvalidated2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
      manager = [(UAUserActivity *)self manager];
      v13 = [manager userActivityIsActive:self];
      needsSave = self->_needsSave;
      dirty = self->_dirty;
      activityHasBeenSentToServer = self->_activityHasBeenSentToServer;
      *buf = 138544386;
      v34 = uniqueIdentifier2;
      v35 = 1024;
      *v36 = v13;
      *&v36[4] = 1024;
      *&v36[6] = needsSave;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = dirty;
      HIWORD(v37) = 1024;
      v38 = activityHasBeenSentToServer;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "%{public}@ INVALIDATE\twasCurrent=%{BOOL}d needsSave=%{BOOL}d dirty=%{BOOL}d sendToServer=%{BOOL}d", buf, 0x24u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    selfCopy->_invalidated = 1;
    objc_sync_exit(selfCopy);

    [(UAUserActivity *)selfCopy setDelegate:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = getUserActivityObserversCopy();
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v19)
    {
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v28 + 1) + 8 * v21);
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          if (parentUserActivity)
          {
            v24 = objc_opt_respondsToSelector();

            if (v24)
            {
              parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
              [v22 userActivityWasInvalidated:parentUserActivity2];
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v19);
    }

    v26 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__UAUserActivity_invalidate__block_invoke;
    block[3] = &unk_2785C37B0;
    block[4] = selfCopy;
    dispatch_async(v26, block);
  }
}

void __28__UAUserActivity_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[6])
  {
    [v2[6] stop];
    v2 = *(a1 + 32);
  }

  v3 = [v2 manager];
  [v3 removeUserActivity:*(a1 + 32)];
}

- (void)dealloc
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = biomeInfoLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    *buf = 138543618;
    v26 = uniqueIdentifier;
    v27 = 2050;
    userInfoChangeCount = [(UAUserActivity *)self userInfoChangeCount];
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "%{public}@ RELEASED changeCount=%{public}ld", buf, 0x16u);
  }

  manager = [(UAUserActivity *)self manager];
  [manager removeUserActivity:self];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = getUserActivityObserversCopy();
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        parentUserActivity = [(UAUserActivity *)self parentUserActivity];
        if (parentUserActivity)
        {
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            parentUserActivity2 = [(UAUserActivity *)self parentUserActivity];
            [v10 userActivityWillBeDestroyed:parentUserActivity2];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  setIndexPendingForUUID(0, self->_uniqueIdentifier);
  selfCopy = self;
  v15 = objc_sync_enter(selfCopy);
  v16 = uaUserActivityObjectsMap(v15);
  v17 = objc_sync_enter(v16);
  v18 = uaUserActivityObjectsMap(v17);
  [v18 removeObjectForKey:self->_uniqueIdentifier];

  objc_sync_exit(v16);
  objc_sync_exit(selfCopy);

  if (selfCopy->_os_state_handler)
  {
    os_state_remove_handler();
    selfCopy->_os_state_handler = 0;
  }

  objc_storeWeak(&selfCopy->_manager, 0);
  selfCopy->_delegate = 0;
  v19.receiver = selfCopy;
  v19.super_class = UAUserActivity;
  [(UAUserActivity *)&v19 dealloc];
}

- (unint64_t)userInfoChangeCount
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    userInfoChangeCount = selfCopy->_userInfoChangeCount;
    v9 = 138543875;
    v10 = uUIDString;
    v11 = 2113;
    v12 = selfCopy;
    v13 = 1024;
    v14 = userInfoChangeCount;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "UAUserActivity:%{public}@/%{private}@, userInfoChangeCount = %d", &v9, 0x1Cu);
  }

  v7 = selfCopy->_userInfoChangeCount;
  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)finishUserInfoUpdate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  savedUserInfo = selfCopy->_savedUserInfo;
  if (savedUserInfo)
  {
    objc_storeStrong(&selfCopy->_userInfo, selfCopy->_savedUserInfo);
    v4 = selfCopy->_savedUserInfo;
    selfCopy->_savedUserInfo = 0;
  }

  objc_sync_exit(selfCopy);

  return savedUserInfo == 0;
}

- (CSSearchableItemAttributeSet)contentAttributeSet
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(UAUserActivity *)selfCopy objectForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  if (!v3)
  {
    v4 = [(UAUserActivity *)selfCopy payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
      getCSSearchableItemAttributeSetClass();
      v3 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

      if (v3)
      {
        [(UAUserActivity *)selfCopy setContentAttributeSet:v3];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)currentUserActivityUUID
{
  v2 = +[UAUserActivityManager defaultManager];
  activeUserActivityUUID = [v2 activeUserActivityUUID];

  return activeUserActivityUUID;
}

- (void)sendToCoreSpotlightIndexer
{
  v22 = *MEMORY[0x277D85DE8];
  getCSSearchableIndexClass();
  if (objc_opt_respondsToSelector())
  {
    v3 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      typeIdentifier = [(UAUserActivity *)self typeIdentifier];
      v7 = [(UAUserActivity *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
      if (v7)
      {
        contentAttributeSet = [(UAUserActivity *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
        trimmedHexStringForData(contentAttributeSet, 64);
      }

      else
      {
        contentAttributeSet = [(UAUserActivity *)self contentAttributeSet];
        stringForContentSet(contentAttributeSet);
      }
      v9 = ;
      v16 = 138543875;
      v17 = uUIDString;
      v18 = 2113;
      v19 = typeIdentifier;
      v20 = 2113;
      v21 = v9;
      _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "INDEXING:%{public}@/%{private}@, attrs=%{private}@", &v16, 0x20u);
    }

    v11 = biomeInfoLogging(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
      v16 = 138543362;
      v17 = uniqueIdentifier2;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ SENDTOCORESPOTLIGHT", &v16, 0xCu);
    }

    defaultSearchableIndex = [(objc_class *)getCSSearchableIndexClass() defaultSearchableIndex];
    if (objc_opt_respondsToSelector())
    {
      v14 = [objc_alloc(getNSUserActivityClass()) initWithInternalUserActivity:self];
      [defaultSearchableIndex indexUserActivity:v14];
      manager = [(UAUserActivity *)self manager];
      [manager registerForApplicationDeactivateIfNecessary];
    }
  }
}

- (void)scheduleSendUserActivityInfoToLSUserActivityd
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(UAUserActivity *)selfCopy dirty])
  {
    Current = CFAbsoluteTimeGetCurrent();
    lastSaveTime = selfCopy->_lastSaveTime;
    if (Current >= lastSaveTime && Current - lastSaveTime <= 30.0)
    {
      if (!selfCopy->_saveScheduled)
      {
        selfCopy->_saveScheduled = 1;
        v6 = dispatch_time(0, 30000000000);
        v7 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __73__UAUserActivity_Internal__scheduleSendUserActivityInfoToLSUserActivityd__block_invoke;
        block[3] = &unk_2785C37B0;
        block[4] = selfCopy;
        dispatch_after(v6, v7, block);
      }
    }

    else
    {
      [(UAUserActivity *)selfCopy sendUserActivityInfoToLSUserActivityd:0 onAsyncQueue:1];
      selfCopy->_saveScheduled = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (double)madeCurrentInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  madeCurrentInterval = selfCopy->_madeCurrentInterval;
  objc_sync_exit(selfCopy);

  return madeCurrentInterval;
}

- (id)stateString
{
  v3 = MEMORY[0x277CCAB68];
  uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  userInfo = [(UAUserActivity *)self userInfo];
  v7 = [userInfo count];
  delegate = [(UAUserActivity *)self delegate];
  dirty = [(UAUserActivity *)self dirty];
  v10 = "(delegate) ";
  v11 = "";
  if (!delegate)
  {
    v10 = "";
  }

  if (dirty)
  {
    v11 = "dirty ";
  }

  v12 = [v3 stringWithFormat:@"[%@ userInfo.count=%ld %s%s", uUIDString, v7, v10, v11];

  v13 = [v12 copy];

  return v13;
}

- (NSString)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_userInfo count];
  objc_sync_exit(selfCopy);

  v4 = MEMORY[0x277CCACA8];
  v17.receiver = selfCopy;
  v17.super_class = UAUserActivity;
  v16 = [(UAUserActivity *)&v17 description];
  typeIdentifier = [(UAUserActivity *)selfCopy typeIdentifier];
  v6 = trimmedString(typeIdentifier, 0x80u);
  uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  cachedEncodedUserInfo = [(UAUserActivity *)selfCopy cachedEncodedUserInfo];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld items", v3];
  supportsContinuationStreams = [(UAUserActivity *)selfCopy supportsContinuationStreams];
  if (supportsContinuationStreams)
  {
    v11 = MEMORY[0x277CCACA8];
    selfCopy = [(UAUserActivity *)selfCopy payloadForIdentifier:@"UAUserActivityStreamsPayload"];
    v3 = trimmedHexStringForData(selfCopy, 16);
    v12 = [v11 stringWithFormat:@" streamData=%@", v3];
  }

  else
  {
    v12 = &stru_283A5A2C8;
  }

  v13 = [v4 stringWithFormat:@"%@ { type = %@, UUID = %@, userInfo = %@%@ }", v16, v6, uUIDString, v9, v12];
  if (supportsContinuationStreams)
  {
  }

  return v13;
}

- (BOOL)supportsContinuationStreams
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportsContinuationStreams = selfCopy->_supportsContinuationStreams;
  objc_sync_exit(selfCopy);

  return supportsContinuationStreams;
}

+ (id)allowedWebpageURLSchemes
{
  if (+[UAUserActivity(Internal) allowedWebpageURLSchemes]::once != -1)
  {
    +[UAUserActivity(Internal) allowedWebpageURLSchemes];
  }

  v3 = +[UAUserActivity(Internal) allowedWebpageURLSchemes]::result;

  return v3;
}

void __52__UAUserActivity_Internal__allowedWebpageURLSchemes__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"http", @"https", 0}];
  v1 = +[UAUserActivity(Internal) allowedWebpageURLSchemes]::result;
  +[UAUserActivity(Internal) allowedWebpageURLSchemes]::result = v0;
}

+ (id)userActivityFromUUID:(id)d timeout:(double)timeout withError:(id *)error
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  dCopy = d;
  v8 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__UAUserActivity_userActivityFromUUID_timeout_withError___block_invoke;
  v17[3] = &unk_2785C3710;
  v19 = &v27;
  v20 = &v21;
  v9 = v8;
  v18 = v9;
  [UAUserActivity fetchUserActivityWithUUID:dCopy completionHandler:v17];

  if (timeout >= 1.84467441e19)
  {
    v10 = -1;
  }

  else
  {
    v10 = dispatch_time(0, (timeout * 1000000000.0));
  }

  v11 = dispatch_semaphore_wait(v9, v10);

  if (v11 && !v22[5])
  {
    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-109 userInfo:0];
    v13 = v22[5];
    v22[5] = v12;
  }

  v14 = v28[5];
  if (error && !v14)
  {
    *error = v22[5];
    v14 = v28[5];
  }

  v15 = v14;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

void __57__UAUserActivity_userActivityFromUUID_timeout_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 48;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)userActivityFromUUID:(id)d withError:(id *)error
{
  v4 = [self userActivityFromUUID:d timeout:error withError:9.5];

  return v4;
}

+ (void)fetchUserActivityWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v6 = +[UAUserActivityManager defaultManager];
  v7 = [v6 fetchUUID:dCopy intervalToWaitForDocumentSynchonization:handlerCopy withCompletionHandler:3.40282347e38];
}

+ (id)fetchUserActivityWithUUID:(id)d intervalToWaitForDocumentSynchronizationToComplete:(double)complete completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = +[UAUserActivityManager defaultManager];
  v10 = [v9 fetchUUID:dCopy intervalToWaitForDocumentSynchonization:handlerCopy withCompletionHandler:complete];

  return v10;
}

- (UAUserActivity)initWithTypeIdentifier:(id)identifier suggestedActionType:(unint64_t)type options:(id)options
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = trimmedString(identifierCopy, 0x80u);
    v12 = suggestedActionTypeString(type);
    v13 = userActivityInfoOptionsDictionaryString(optionsCopy);
    v17 = 138478339;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEBUG, "CREATING UAUserActivity/initWithTypeIdentifier:%{private}@ type:%{public}@ options=%{public}@)", &v17, 0x20u);
  }

  if (!identifierCopy || ![identifierCopy length])
  {
    v14 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_ERROR, "*** UserActivity: passed nil or the empty string for activityType, which is an error.", &v17, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Caller did not provide an activityType, and this process does not have a NSUserActivityTypes in its Info.plist."}];
  }

  v15 = [(UAUserActivity *)self initDynamicActivityWithTypeIdentifier:identifierCopy dynamicIdentifier:0 suggestedActionType:type options:optionsCopy];

  return v15;
}

- (id)initDynamicActivityWithTypeIdentifier:(id)identifier dynamicIdentifier:(id)dynamicIdentifier suggestedActionType:(unint64_t)type options:(id)options
{
  v68 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dynamicIdentifierCopy = dynamicIdentifier;
  optionsCopy = options;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = trimmedString(identifierCopy, 0x80u);
    if (dynamicIdentifierCopy)
    {
      v12 = trimmedString(dynamicIdentifierCopy, 0x10u);
    }

    else
    {
      v12 = &stru_283A5A2C8;
    }

    v13 = suggestedActionTypeString(type);
    v14 = userActivityInfoOptionsDictionaryString(optionsCopy);
    *buf = 138544131;
    v61 = v11;
    v62 = 2113;
    v63 = v12;
    v64 = 2114;
    v65 = v13;
    v66 = 2114;
    v67 = v14;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEBUG, "CREATING UAUserActivity/(%{public}@-%{private}@ %{public}@ options=%{public}@)", buf, 0x2Au);
    if (dynamicIdentifierCopy)
    {
    }
  }

  if (!identifierCopy || ![identifierCopy length])
  {
    v15 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_ERROR, "*** UserActivity: passed nil or the empty string for activityType, which is an error.", buf, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Caller did not provide an activityType, and this process does not have a NSUserActivityTypes in its Info.plist."}];
  }

  v59.receiver = self;
  v59.super_class = UAUserActivity;
  v16 = [(UAUserActivity *)&v59 init];
  if (v16)
  {
    obj = [MEMORY[0x277CCAD78] UUID];
    v17 = +[UAUserActivityManager defaultManager];
    objc_initWeak(&location, v17);

    v18 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v16->_manager, v18);

    objc_initWeak(&from, v16);
    v19 = dispatch_get_global_queue(0, 0);
    objc_copyWeak(&v56, &from);
    v20 = obj;
    v21 = os_state_add_handler();

    v16->_os_state_handler = v21;
    v23 = uaUserActivityObjectsMap(v22);
    v24 = objc_sync_enter(v23);
    v25 = uaUserActivityObjectsMap(v24);
    v26 = objc_loadWeakRetained(&from);
    [v25 setObject:v26 forKey:v20];

    objc_sync_exit(v23);
    v27 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    userInfo = v16->_userInfo;
    v16->_userInfo = v27;

    objc_storeStrong(&v16->_uniqueIdentifier, obj);
    v16->_suggestedActionType = type;
    v29 = [identifierCopy copy];
    typeIdentifier = v16->_typeIdentifier;
    v16->_typeIdentifier = v29;

    v31 = dynamicIdentifierCopy;
    if (dynamicIdentifierCopy)
    {
      v31 = [dynamicIdentifierCopy copy];
    }

    dynamicIdentifier = v16->_dynamicIdentifier;
    v16->_dynamicIdentifier = v31;

    *&v16->_needsSave = 1;
    v16->_sendToServerPending = 0;
    if (optionsCopy)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v51 = ;
    v33 = [v51 copy];
    options = v16->_options;
    v16->_options = v33;

    advertiser = v16->_advertiser;
    v16->_advertiser = 0;

    v16->_canCreateStreams = 0;
    resumerAdvertiser = v16->_resumerAdvertiser;
    v16->_resumerAdvertiser = 0;

    v16->_supportsContinuationStreams = 0;
    *&v16->_needsSave = 1;
    v16->_sendToServerPending = 0;
    v16->_eligibleForHandoff = 1;
    v37 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      typeIdentifier = [(UAUserActivity *)v16 typeIdentifier];
      v39 = trimmedString(typeIdentifier, 0x80u);
      dynamicIdentifier = [(UAUserActivity *)v16 dynamicIdentifier];
      v41 = trimmedString(dynamicIdentifier, 0x80u);
      uniqueIdentifier = [(UAUserActivity *)v16 uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v44 = suggestedActionTypeString([(UAUserActivity *)v16 suggestedActionType]);
      *buf = 138478595;
      v61 = v39;
      v62 = 2113;
      v63 = v41;
      v64 = 2114;
      v65 = uUIDString;
      v66 = 2114;
      v67 = v44;
      _os_log_impl(&dword_226A4E000, v37, OS_LOG_TYPE_INFO, "initUAUserActivity:%{private}@-%{private}@ %{public}@ %{public}@", buf, 0x2Au);
    }

    v46 = biomeInfoLogging(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [(UAUserActivity *)v16 uniqueIdentifier];
      typeIdentifier2 = [(UAUserActivity *)v16 typeIdentifier];
      dynamicIdentifier2 = [(UAUserActivity *)v16 dynamicIdentifier];
      *buf = 138543874;
      v61 = uniqueIdentifier2;
      v62 = 2112;
      v63 = typeIdentifier2;
      v64 = 2112;
      v65 = dynamicIdentifier2;
      _os_log_impl(&dword_226A4E000, v46, OS_LOG_TYPE_INFO, "%{public}@ CREATED %@/%@", buf, 0x20u);
    }

    objc_destroyWeak(&v56);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v16;
}

char *__102__UAUserActivity_initDynamicActivityWithTypeIdentifier_dynamicIdentifier_suggestedActionType_options___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_sync_enter(WeakRetained);
  v5 = uaUserActivityObjectsMap(v4);
  v6 = objc_sync_enter(v5);
  v7 = uaUserActivityObjectsMap(v6);
  v8 = [v7 objectForKey:*(a1 + 32)];
  v9 = objc_loadWeakRetained((a1 + 40));

  if (v8 == v9)
  {
    v11 = objc_loadWeakRetained((a1 + 40));
    v12 = [v11 stateString];
    v10 = serializedCFType(v12);
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v5);

  objc_sync_exit(WeakRetained);
  objc_autoreleasePoolPop(v2);
  return v10;
}

- (void)setTitle:(id)title
{
  v18 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v16 = 138543362;
    v17 = uUIDString;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setTitle(%{public}@)", &v16, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = differ(titleCopy, selfCopy->_title);
  if (v9)
  {
    v10 = biomeInfoLogging(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [(UAUserActivity *)selfCopy uniqueIdentifier];
      v16 = 138543362;
      v17 = uniqueIdentifier2;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "%{public}@ SET-TITLE", &v16, 0xCu);
    }

    v12 = copyNSStringOrSubclass(&titleCopy->isa);
    title = selfCopy->_title;
    selfCopy->_title = v12;

    [(UAUserActivity *)selfCopy setDirty:1];
    manager = [(UAUserActivity *)selfCopy manager];
    v15 = [manager userActivityIsActive:selfCopy];

    if (v15)
    {
      [(UAUserActivity *)selfCopy indexActivity:1 forceIndexing:0.5];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setUserInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(selfCopy->_userInfo, infoCopy))
  {
    ++selfCopy->_userInfoChangeCount;
    savedUserInfo = selfCopy->_savedUserInfo;
    selfCopy->_savedUserInfo = 0;

    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      userInfoChangeCount = selfCopy->_userInfoChangeCount;
      *buf = 138543875;
      *&buf[4] = uUIDString;
      *&buf[12] = 2113;
      *&buf[14] = selfCopy;
      *&buf[22] = 1024;
      LODWORD(v26) = userInfoChangeCount;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "UAUserActivity:%{public}@/%{private}@, updating userInfoChangeCount to %d", buf, 0x1Cu);
    }

    if (infoCopy)
    {
      if ((recurse(infoCopy, &__block_literal_global) & 1) == 0 && dyld_program_sdk_at_least())
      {
        v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"userInfo contained an invalid object type" userInfo:0];
        objc_exception_throw(v20);
      }

      v11 = [(objc_object *)infoCopy copy];
      userInfo = selfCopy->_userInfo;
      selfCopy->_userInfo = v11;

      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL25dictionaryContainsFileURLP12NSDictionary_block_invoke;
      v26 = &unk_2785C3BB0;
      v27 = &v21;
      recurse(infoCopy, buf);
      v13 = *(v22 + 24);
      _Block_object_dispose(&v21, 8);
      userInfoContainsFileURLs = [(UAUserActivity *)selfCopy userInfoContainsFileURLs];
      if (userInfoContainsFileURLs != v13)
      {
        userInfoContainsFileURLs = [(UAUserActivity *)selfCopy setUserInfoContainsFileURLs:v13];
        if (!selfCopy->_inWillSaveCallback)
        {
          userInfoContainsFileURLs = [(UAUserActivity *)selfCopy sendUserActivityInfoToLSUserActivityd:1 onAsyncQueue:1];
        }
      }

      v15 = biomeInfoLogging(userInfoContainsFileURLs);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        uniqueIdentifier2 = [(UAUserActivity *)selfCopy uniqueIdentifier];
        v17 = [(objc_object *)infoCopy count];
        *buf = 138543874;
        *&buf[4] = uniqueIdentifier2;
        *&buf[12] = 2050;
        *&buf[14] = v17;
        *&buf[22] = 1024;
        LODWORD(v26) = v13;
        _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_INFO, "%{public}@ SET-USERINFO\tcount=%{public}ld %{BOOL}d", buf, 0x1Cu);
      }

      [(UAUserActivity *)selfCopy setDirty:1];
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v19 = selfCopy->_userInfo;
      selfCopy->_userInfo = v18;
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)addUserInfoEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dictionaryCopy && [dictionaryCopy count])
  {
    if ((recurse(dictionaryCopy, &__block_literal_global) & 1) != 0 || (dyld_program_sdk_at_least() & 1) == 0)
    {
      userInfo = selfCopy->_userInfo;
      if (userInfo)
      {
        v7 = [(NSDictionary *)userInfo mutableCopy];
        [v7 addEntriesFromDictionary:dictionaryCopy];
      }

      else
      {
        v7 = [dictionaryCopy copy];
      }

      [(UAUserActivity *)selfCopy setUserInfo:v7];
    }

    else if (dyld_program_sdk_at_least())
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"userInfo contained an invalid object type" userInfo:0];
      objc_exception_throw(v5);
    }
  }

  objc_sync_exit(selfCopy);
}

- (unint64_t)beginUserInfoUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_savedUserInfo)
  {
    objc_storeStrong(&selfCopy->_savedUserInfo, selfCopy->_userInfo);
    if (updateCopy)
    {
      v6 = [updateCopy copy];
    }

    else
    {
      v6 = 0;
    }

    userInfo = selfCopy->_userInfo;
    selfCopy->_userInfo = v6;
  }

  userInfoChangeCount = selfCopy->_userInfoChangeCount;
  objc_sync_exit(selfCopy);

  return userInfoChangeCount;
}

- (void)_setWebpageURL:(id)l throwOnFailure:(BOOL)failure
{
  failureCopy = failure;
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [objc_opt_class() checkWebpageURL:lCopy actionType:-[UAUserActivity suggestedActionType](self throwIfFailed:{"suggestedActionType"), failureCopy}];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(lCopy, selfCopy->_webpageURL))
  {
    v7 = selfCopy->_webpageURL;
    v8 = [(objc_object *)lCopy copy];
    webpageURL = selfCopy->_webpageURL;
    selfCopy->_webpageURL = v8;

    v11 = biomeInfoLogging(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
      *buf = 138543362;
      v30 = uniqueIdentifier;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ SET-URL", buf, 0xCu);
    }

    manager = [(UAUserActivity *)selfCopy manager];
    v14 = [manager userActivityIsActive:selfCopy];

    if (v14)
    {
      [(UAUserActivity *)selfCopy setForceImmediateSendToServer:1];
      [(UAUserActivity *)selfCopy indexActivity:1 forceIndexing:0.5];
    }

    [(UAUserActivity *)selfCopy setDirty:1];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = getUserActivityObserversCopy();
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = *v25;
      do
      {
        v18 = 0;
        do
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v24 + 1) + 8 * v18);
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          if (parentUserActivity)
          {
            v21 = objc_opt_respondsToSelector();

            if (v21)
            {
              parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
              [v19 userActivityWebpageURLWasChanged:parentUserActivity2 webpageURL:lCopy previousValue:v7];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setWebpageURL:(id)l
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = objc_opt_class();
  suggestedActionType = [(UAUserActivity *)self suggestedActionType];
  v6 = getenv("__UA_THROW_ON_SETWEBPAGEURL_FAILURE");
  if (v6)
  {
    v7 = atoi(v6) != 0;
  }

  else
  {
    v7 = 1;
  }

  [v4 checkWebpageURL:lCopy actionType:suggestedActionType throwIfFailed:v7];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(lCopy, selfCopy->_webpageURL))
  {
    v9 = selfCopy->_webpageURL;
    v10 = [(objc_object *)lCopy copy];
    webpageURL = selfCopy->_webpageURL;
    selfCopy->_webpageURL = v10;

    manager = [(UAUserActivity *)selfCopy manager];
    v13 = [manager userActivityIsActive:selfCopy];

    if (v13)
    {
      [(UAUserActivity *)selfCopy setForceImmediateSendToServer:1];
      [(UAUserActivity *)selfCopy indexActivity:1 forceIndexing:0.5];
    }

    [(UAUserActivity *)selfCopy setDirty:1];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = getUserActivityObserversCopy();
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        v17 = 0;
        do
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * v17);
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          if (parentUserActivity)
          {
            v20 = objc_opt_respondsToSelector();

            if (v20)
            {
              parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
              [v18 userActivityWebpageURLWasChanged:parentUserActivity2 webpageURL:lCopy previousValue:v9];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }
  }

  objc_sync_exit(selfCopy);
}

- (NSURL)referrerURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_referrerURL;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setReferrerURL:(id)l
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = differ(lCopy, selfCopy->_referrerURL);
  if (v6)
  {
    v7 = biomeInfoLogging(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
      v11 = 138543362;
      v12 = uniqueIdentifier;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "%{public}@ SET-REFERRERURL", &v11, 0xCu);
    }

    v9 = [(objc_object *)lCopy copy];
    referrerURL = selfCopy->_referrerURL;
    selfCopy->_referrerURL = v9;

    [(UAUserActivity *)selfCopy setDirty:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)setUniversalLink:(BOOL)link
{
  linkCopy = link;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_universalLink != linkCopy)
  {
    obj->_universalLink = linkCopy;
    [(UAUserActivity *)obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (void)setTargetContentIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_isa = &identifierCopy->isa;
  if (differ(identifierCopy, selfCopy->_targetContentIdentifier))
  {
    v6 = selfCopy->_targetContentIdentifier;
    v7 = copyNSStringOrSubclass(&identifierCopy->isa);
    targetContentIdentifier = selfCopy->_targetContentIdentifier;
    selfCopy->_targetContentIdentifier = v7;

    [(UAUserActivity *)selfCopy setDirty:1];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = getUserActivityObserversCopy();
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          if (parentUserActivity)
          {
            v15 = objc_opt_respondsToSelector();

            if (v15)
            {
              parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
              [v13 userActivityTargetContentIdentifierWasChanged:parentUserActivity2 targetContentIdentifier:p_isa previousValue:v6];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setDirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  dirty = selfCopy->_dirty;
  if (selfCopy->_inWillSaveCallback)
  {
    v33 = 0;
    goto LABEL_31;
  }

  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v8 = uUIDString;
    v9 = @"NO";
    v10 = selfCopy->_dirty;
    if (dirtyCopy)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138543874;
    v39 = uUIDString;
    v40 = 2114;
    if (v10)
    {
      v9 = @"YES";
    }

    *v41 = v11;
    *&v41[8] = 2114;
    v42 = v9;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setDirty:(%{public}@) => %{public}@ (is currently %{public}@)", buf, 0x20u);
  }

  if ([(UAUserActivity *)selfCopy forceImmediateSendToServer])
  {
    v12 = 1;
  }

  else
  {
    if (!selfCopy->_activityHasBeenSentToServer)
    {
      HIDWORD(v33) = 0;
      if (dirtyCopy)
      {
        goto LABEL_15;
      }

LABEL_18:
      LODWORD(v33) = 0;
      goto LABEL_31;
    }

    v12 = selfCopy->_dirty != dirtyCopy;
  }

  HIDWORD(v33) = v12;
  if (!dirtyCopy)
  {
    goto LABEL_18;
  }

LABEL_15:
  selfCopy->_dirty = 1;
  [(UAUserActivity *)selfCopy setCachedEncodedUserInfo:0];
  if ([(UAUserActivity *)selfCopy forwardToCoreSpotlightIndexer])
  {
    manager = [(UAUserActivity *)selfCopy manager];
    LODWORD(v33) = [manager userActivityIsActive:selfCopy];
  }

  else
  {
    LODWORD(v33) = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = getUserActivityObserversCopy();
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
        if (parentUserActivity)
        {
          v20 = objc_opt_respondsToSelector();

          if (v20)
          {
            parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
            [v18 userActivityWasMadeDirty:parentUserActivity2];
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }

LABEL_31:
  objc_sync_exit(selfCopy);

  v23 = biomeInfoLogging(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier2 = [(UAUserActivity *)selfCopy uniqueIdentifier];
    forceImmediateSendToServer = [(UAUserActivity *)selfCopy forceImmediateSendToServer];
    *buf = 138544386;
    v39 = uniqueIdentifier2;
    v40 = 1024;
    *v41 = dirty;
    *&v41[4] = 1024;
    *&v41[6] = forceImmediateSendToServer;
    LOWORD(v42) = 1024;
    *(&v42 + 2) = HIDWORD(v33);
    HIWORD(v42) = 1024;
    v43 = v33;
    _os_log_impl(&dword_226A4E000, v23, OS_LOG_TYPE_INFO, "%{public}@ SET-DIRTY\twasDirty=%{BOOL}d force=%{BOOL}d informServer=%{BOOL}d informIndex=%{BOOL}d", buf, 0x24u);
  }

  if (HIDWORD(v33))
  {
    if (selfCopy->_createsNewUUIDIfSaved)
    {
      [(UAUserActivity *)selfCopy tellDaemonAboutNewLSUserActivity];
    }

    else
    {
      if ([(UAUserActivity *)selfCopy forceImmediateSendToServer])
      {
        [(UAUserActivity *)selfCopy setForceImmediateSendToServer:0];
        encodedContainsUnsynchronizedCloudDocument = 1;
      }

      else
      {
        encodedContainsUnsynchronizedCloudDocument = [(UAUserActivity *)selfCopy encodedContainsUnsynchronizedCloudDocument];
      }

      manager2 = [(UAUserActivity *)selfCopy manager];
      [manager2 markUserActivityAsDirty:selfCopy forceImmediate:encodedContainsUnsynchronizedCloudDocument];
    }
  }

  if (v33)
  {
    v28 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      typeIdentifier = [(UAUserActivity *)selfCopy typeIdentifier];
      uniqueIdentifier3 = [(UAUserActivity *)selfCopy uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier3 UUIDString];
      *buf = 138478339;
      v39 = typeIdentifier;
      v40 = 2114;
      *v41 = uUIDString2;
      *&v41[8] = 2048;
      v42 = 0x403E000000000000;
      _os_log_impl(&dword_226A4E000, v28, OS_LOG_TYPE_DEBUG, "sending %{private}@/%{public}@ to indexer within %f seconds because it is dirty.", buf, 0x20u);
    }

    [(UAUserActivity *)selfCopy indexActivity:1 forceIndexing:30.0];
  }
}

- (void)setNeedsSave:(BOOL)save
{
  saveCopy = save;
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_inWillSaveCallback)
  {
    if ([(UAUserActivity *)selfCopy forceImmediateSendToServer])
    {
      v12 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
        uUIDString = [uniqueIdentifier UUIDString];
        *v30 = 138543362;
        *&v30[4] = uUIDString;
        _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "setNeedsSave:(%{public}@), since self.forceImmediateSendToServer == YES doing an immediate call to the server to mark this item as dirty.", v30, 0xCu);
      }

      v16 = biomeInfoLogging(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        uniqueIdentifier2 = [(UAUserActivity *)selfCopy uniqueIdentifier];
        needsSave = selfCopy->_needsSave;
        *v30 = 138544130;
        *&v30[4] = uniqueIdentifier2;
        *&v30[12] = 1024;
        *&v30[14] = saveCopy;
        *&v30[18] = 1024;
        *&v30[20] = needsSave;
        LOWORD(v31) = 1024;
        *(&v31 + 2) = 1;
        _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_INFO, "%{public}@ SET-NEEDSSAVE\t%{BOOL}d was=%{BOOL}d force=%{BOOL}d", v30, 0x1Eu);
      }

      selfCopy->_needsSave = saveCopy;
      [(UAUserActivity *)selfCopy setForceImmediateSendToServer:0];
    }

    else
    {
      if (selfCopy->_needsSave == saveCopy)
      {
        goto LABEL_29;
      }

      v19 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier3 = [(UAUserActivity *)selfCopy uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier3 UUIDString];
        v22 = uUIDString2;
        v23 = "NO";
        v24 = selfCopy->_needsSave;
        if (saveCopy)
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        *v30 = 138543874;
        *&v30[4] = uUIDString2;
        *&v30[12] = 2082;
        if (v24)
        {
          v23 = "YES";
        }

        *&v30[14] = v25;
        *&v30[22] = 2082;
        v31 = v23;
        _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_DEBUG, "setNeedsSave:(%{public}@ => %{public}s, (was %{public}s) and .dirty = YES", v30, 0x20u);
      }

      v27 = biomeInfoLogging(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        uniqueIdentifier4 = [(UAUserActivity *)selfCopy uniqueIdentifier];
        v29 = selfCopy->_needsSave;
        *v30 = 138543874;
        *&v30[4] = uniqueIdentifier4;
        *&v30[12] = 1024;
        *&v30[14] = saveCopy;
        *&v30[18] = 1024;
        *&v30[20] = v29;
        _os_log_impl(&dword_226A4E000, v27, OS_LOG_TYPE_INFO, "%{public}@ SET-NEEDSSAVE\t%{BOOL}d was=%{BOOL}d", v30, 0x18u);
      }

      selfCopy->_needsSave = saveCopy;
    }

    [(UAUserActivity *)selfCopy setDirty:1, *v30, *&v30[8]];
    goto LABEL_29;
  }

  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier5 = [(UAUserActivity *)selfCopy uniqueIdentifier];
    uUIDString3 = [uniqueIdentifier5 UUIDString];
    v8 = uUIDString3;
    v9 = "NO";
    needsSaveValueAtEndOfWillSaveCallback = selfCopy->_needsSaveValueAtEndOfWillSaveCallback;
    if (saveCopy)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    *v30 = 138543874;
    *&v30[4] = uUIDString3;
    *&v30[12] = 2082;
    if (needsSaveValueAtEndOfWillSaveCallback)
    {
      v9 = "YES";
    }

    *&v30[14] = v11;
    *&v30[22] = 2082;
    v31 = v9;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setNeedsSave:(%{public}@) => %{public}s, but in willSave callback, so setting _needsSaveValueAtEndOfWillSaveCallback (was %{public}s", v30, 0x20u);
  }

  if (saveCopy)
  {
    selfCopy->_needsSaveValueAtEndOfWillSaveCallback = 1;
  }

LABEL_29:
  objc_sync_exit(selfCopy);
}

- (void)setParentUserActivity:(id)activity
{
  v17 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v5 = getUAUserActivityToNSUserActivityMap(activityCopy);
  objc_sync_enter(v5);
  [v5 setObject:activityCopy forKey:self];
  objc_sync_exit(v5);
  if (activityCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_userActivityWasCreatedSent)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = getUserActivityObserversCopy();
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v12 + 1) + 8 * v10);
            if (objc_opt_respondsToSelector())
            {
              [v11 userActivityWasCreated:{activityCopy, v12}];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (NSData)streamsData
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_supportsContinuationStreams)
  {
    goto LABEL_6;
  }

  v3 = [(UAUserActivity *)selfCopy payloadForIdentifier:@"UAUserActivityStreamsPayload"];
  v4 = [v3 copy];

  if (!v4)
  {
    advertiserCompletedGroup = selfCopy->_advertiserCompletedGroup;
    if (advertiserCompletedGroup)
    {
      v5 = advertiserCompletedGroup;
LABEL_7:
      v4 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:
  objc_sync_exit(selfCopy);

  if (v5 && !v4)
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "UserActivity: Before waiting for completion group to finish.", &v15, 2u);
    }

    v8 = dispatch_time(0, 750000000);
    v9 = dispatch_group_wait(v5, v8);
    v10 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = "NO";
      if (!v9)
      {
        v11 = "YES";
      }

      v15 = 136446210;
      v16 = v11;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "UserActivity: After waiting for completion group to finish, success = %{public}s.", &v15, 0xCu);
    }

    if (v9)
    {
      v12 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_INFO, "UserActivity: Failed getting streamsData from sharingd, so continuation streams are broken even though we think they are needed.", &v15, 2u);
      }

      v4 = 0;
    }

    else
    {
      v12 = selfCopy;
      objc_sync_enter(v12);
      v13 = [v12 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
      v4 = [v13 copy];

      objc_sync_exit(v12);
    }
  }

  return v4;
}

- (void)setStreamsData:(id)data
{
  v14 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  selfCopy = self;
  v6 = objc_sync_enter(selfCopy);
  v7 = biomeInfoLogging(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
    v10 = 138543618;
    v11 = uniqueIdentifier;
    v12 = 1024;
    v13 = dataCopy != 0;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "%{public}@ SET-STREAMSDATA hasStream=%{BOOL}d", &v10, 0x12u);
  }

  selfCopy->_supportsContinuationStreams = dataCopy != 0;
  v9 = [dataCopy copy];
  [(UAUserActivity *)selfCopy setPayload:v9 object:0 identifier:@"UAUserActivityStreamsPayload" dirty:0];

  objc_sync_exit(selfCopy);
}

- (void)setSupportsContinuationStreams:(BOOL)streams
{
  streamsCopy = streams;
  v32 = *MEMORY[0x277D85DE8];
  if (getSFCompanionAdvertiserClass())
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_supportsContinuationStreams != streamsCopy)
    {
      selfCopy->_supportsContinuationStreams = streamsCopy;
      if (selfCopy->_advertiser)
      {
        v6 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = "NO";
          advertiser = selfCopy->_advertiser;
          if (selfCopy->_supportsContinuationStreams)
          {
            v7 = "YES";
          }

          *buf = 136446722;
          v27 = v7;
          v28 = 2114;
          v29 = selfCopy;
          v30 = 2114;
          v31 = advertiser;
          _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "Changing supportsContinuationStreams to %{public}s on %{public}@ advertiser=%{public}@", buf, 0x20u);
        }

        advertiserCompletedGroup = selfCopy->_advertiserCompletedGroup;
        v11 = getSupportsContinuationStreamsQueue(v10);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __49__UAUserActivity_setSupportsContinuationStreams___block_invoke_125;
        v22[3] = &unk_2785C3760;
        v22[4] = selfCopy;
        v23 = streamsCopy;
        v12 = v22;
LABEL_15:
        dispatch_group_async(advertiserCompletedGroup, v11, v12);

        goto LABEL_16;
      }

      if (streamsCopy)
      {
        v13 = objc_alloc(getSFCompanionAdvertiserClass());
        uUIDString = [(NSUUID *)selfCopy->_uniqueIdentifier UUIDString];
        v15 = [v13 initWithServiceType:uUIDString];
        v16 = selfCopy->_advertiser;
        selfCopy->_advertiser = v15;

        v17 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = selfCopy->_advertiser;
          *buf = 138543618;
          v27 = selfCopy;
          v28 = 2114;
          v29 = v18;
          _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_INFO, "Creating SFCompanionAdvertiser, since the client is setting .supportsContinuationStreams == YES for the first time on %{public}@ advertiser=%{public}@", buf, 0x16u);
        }

        advertiserCompletedGroup = selfCopy->_advertiserCompletedGroup;
        if (!advertiserCompletedGroup)
        {
          v20 = dispatch_group_create();
          v21 = selfCopy->_advertiserCompletedGroup;
          selfCopy->_advertiserCompletedGroup = v20;

          advertiserCompletedGroup = selfCopy->_advertiserCompletedGroup;
        }

        v11 = getSupportsContinuationStreamsQueue(v19);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__UAUserActivity_setSupportsContinuationStreams___block_invoke;
        block[3] = &unk_2785C3760;
        block[4] = selfCopy;
        v25 = streamsCopy;
        v12 = block;
        goto LABEL_15;
      }
    }

LABEL_16:
    objc_sync_exit(selfCopy);
  }
}

void __49__UAUserActivity_setSupportsContinuationStreams___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "UserActivity: In group, setting up advertiser.", &v12, 2u);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 32) + 48);
  [v4 setSupportsStreams:*(a1 + 40)];
  [v4 setDelegate:*(a1 + 32)];
  [*(a1 + 32) setPayload:0 object:0 identifier:@"UAUserActivityStreamsPayload"];
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    v12 = 138543618;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "Calling _start on advertiser and getting serviceEndpointData, %{public}@ advertiser=%{public}@", &v12, 0x16u);
  }

  objc_sync_exit(v3);
  [v4 start];
  v8 = [v4 serviceEndpointData];
  v9 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    v12 = 138543874;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "Finished calling _start on advertiser and getting serviceEndpointData, %{public}@ advertiser=%{public}@ data=%{public}@", &v12, 0x20u);
  }

  [*(a1 + 32) setStreamsData:v8];
  [*(a1 + 32) setDirty:1];
}

void __49__UAUserActivity_setSupportsContinuationStreams___block_invoke_125(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    v7 = 136446722;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "Telling _advertiser that supportsStreams = %{public}s on %{public}@ advertiser=%{public}@", &v7, 0x20u);
  }

  [*(*(a1 + 32) + 48) setSupportsStreams:*(a1 + 40)];
  [*(a1 + 32) setDirty:1];
  objc_sync_exit(v2);
}

- (void)getContinuationStreamsWithCompletionHandler:(id)handler
{
  v35[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "getContinuationStreamsWithCompletionHandler", buf, 2u);
  }

  if (!handlerCopy)
  {
    v21 = MEMORY[0x277CBEAD8];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"getContinuationStreamsWithCompletionHandler called with a nil completionHandler argument."];
    v23 = [v21 exceptionWithName:*MEMORY[0x277CBE660] reason:v22 userInfo:0];
    v24 = v23;

    objc_exception_throw(v23);
  }

  if (getSFCompanionAdvertiserClass())
  {
    if (self->_resumerAdvertiser)
    {
      v6 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), activtiy stream already in progress, EALREADY", buf, 2u);
      }

      v7 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      v31 = @"Get streams already in progress";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v9 = [v7 errorWithDomain:*MEMORY[0x277CCA5B8] code:37 userInfo:v8];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
    }

    else if (self->_canCreateStreams)
    {
      v8 = [(UAUserActivity *)self payloadForIdentifier:@"UAUserActivityStreamsPayload"];
      if (v8)
      {
        self->_supportsContinuationStreams = 0;
        v12 = [objc_alloc(getSFCompanionAdvertiserClass()) initWithServiceType:0];
        resumerAdvertiser = self->_resumerAdvertiser;
        p_resumerAdvertiser = &self->_resumerAdvertiser;
        *p_resumerAdvertiser = v12;

        v15 = *p_resumerAdvertiser;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __62__UAUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke;
        v25[3] = &unk_2785C3788;
        v26 = handlerCopy;
        [(SFCompanionAdvertiser *)v15 getContinuationStreamsWithEndpointData:v8 completionHandler:v25];
        v9 = v26;
      }

      else
      {
        v18 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v18, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), no connect back token available, EOENT", buf, 2u);
        }

        v19 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA450];
        v35[0] = @"No connect back token available";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v20 = [v19 errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:v9];
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
      }
    }

    else
    {
      v16 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), activtiy doesn't support streams, ENOTSUP", buf, 2u);
      }

      v17 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      v33 = @"Activity doesn't support streams";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v9 = [v17 errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:v8];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
    }
  }

  else
  {
    v10 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), failed to load Sharing.framework, ENOSYS", buf, 2u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"Failed to load Sharing framework";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v9 = [v11 errorWithDomain:*MEMORY[0x277CCA5B8] code:78 userInfo:v8];
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v9);
  }
}

void __62__UAUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "getContinuationStreamsWithCompletionHandler(), inputStream=%{public}@ outputStream=%{public}@ error=%{public}@", &v11, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isCurrent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(UAUserActivity *)selfCopy isInvalidated])
  {
    v3 = 0;
  }

  else
  {
    manager = [(UAUserActivity *)selfCopy manager];
    activeUserActivityUUID = [manager activeUserActivityUUID];
    uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
    v3 = [activeUserActivityUUID isEqual:uniqueIdentifier];
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)archiveURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__UAUserActivity_archiveURL_completionHandler___block_invoke;
  v11[3] = &unk_2785C37D8;
  v12 = lCopy;
  v13 = handlerCopy;
  v8 = handlerCopy;
  v9 = lCopy;
  dispatch_async(v7, v11);

  return 1;
}

void __47__UAUserActivity_archiveURL_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v42 = a1;
  v2 = [*(a1 + 32) absoluteURL];
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v3 setScheme:@"x-br-file"];
  v4 = [v2 path];
  [v3 setPath:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v2)
  {
    v13 = 0;
    goto LABEL_26;
  }

  err = 0;
  v6 = _UABRCopyUbiquitousBookmarkDataForDocumentAtURL(v2, &err);
  v7 = v6;
  if (err)
  {
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v45 = v2;
      v46 = 2114;
      v47 = err;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "*** Error from _UACopyUbiquitousBookmarkDataForDocumentAtURL(%{private}@) => %{public}@", buf, 0x16u);
    }

    Domain = CFErrorGetDomain(err);
    v10 = _UABRCloudDocsErrorDomain();
    if (CFEqual(Domain, v10))
    {
      Code = CFErrorGetCode(err);
      if (Code == 6)
      {
        v13 = 0;
        goto LABEL_21;
      }

      if (Code == 7)
      {
        v12 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v45 = v2;
          _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEFAULT, "*** Setting self.encodedContainsUnsynchronizedCloudDocument = YES because the .userInfo contains an unsynced cloud document, %{private}@", buf, 0xCu);
        }
      }

      else
      {
        v12 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138478083;
          v45 = v2;
          v46 = 2114;
          v47 = err;
          _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "*** ERROR, BRCloudDocsErrorDomain from _UACopyUbiquitousBookmarkDataForDocumentAtURL(%{private}@) => %{public}@", buf, 0x16u);
        }
      }

      v40 = MEMORY[0x277CCA9B8];
      v22 = CFErrorGetDomain(err);
      v23 = CFErrorGetCode(err);
      v24 = MEMORY[0x277CBEAC0];
      v19 = CFErrorCopyUserInfo(err);
      v20 = [v24 dictionaryWithDictionary:v19];
      v21 = [v40 errorWithDomain:v22 code:v23 userInfo:v20];
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = CFErrorGetDomain(err);
      v17 = CFErrorGetCode(err);
      v18 = MEMORY[0x277CBEAC0];
      v19 = CFErrorCopyUserInfo(err);
      v20 = [v18 dictionaryWithDictionary:v19];
      v21 = [v15 errorWithDomain:v16 code:v17 userInfo:v20];
    }

    v13 = v21;

LABEL_21:
    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!v6)
  {
    v13 = 0;
    goto LABEL_25;
  }

  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"v" value:v6];
  [v5 addObject:v14];

  v13 = 0;
LABEL_22:
  CFRelease(v7);
LABEL_23:
  if (err)
  {
    CFRelease(err);
  }

LABEL_25:
  if (![v5 count] && softLinkFPURLMightBeInFileProvider(v2))
  {
    err = 0;
    v29 = softLinkFPCreateBookmarkableStringFromDocumentURL(v2, &err);
    if (v29)
    {
      v30 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v45 = v29;
        v46 = 2114;
        v47 = v2;
        _os_log_impl(&dword_226A4E000, v30, OS_LOG_TYPE_DEBUG, "*** fileProviderCookie=%{public}@ for url %{public}@", buf, 0x16u);
      }

      v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"fp" value:v29];
      [v5 addObject:v31];

      CFRelease(v29);
    }

    else
    {
      if (!err)
      {
        goto LABEL_26;
      }

      v32 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v45 = v2;
        v46 = 2114;
        v47 = err;
        _os_log_impl(&dword_226A4E000, v32, OS_LOG_TYPE_ERROR, "*** Error from FPBookmarkableStringFromDocumentURL, %{private}@ -> %{public}@", buf, 0x16u);
      }

      v33 = MEMORY[0x277CCA9B8];
      v34 = CFErrorGetDomain(err);
      v35 = CFErrorGetCode(err);
      v36 = MEMORY[0x277CBEAC0];
      v37 = CFErrorCopyUserInfo(err);
      v38 = [v36 dictionaryWithDictionary:v37];
      v39 = [v33 errorWithDomain:v34 code:v35 userInfo:v38];

      v13 = v39;
    }

    if (err)
    {
      CFRelease(err);
    }
  }

LABEL_26:
  if ([v5 count])
  {
    [v3 setQueryItems:v5];
    v25 = [v3 URL];
    v26 = [v25 copy];

    v27 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(v42 + 32);
      *buf = 138478083;
      v45 = v26;
      v46 = 2113;
      v47 = v28;
      _os_log_impl(&dword_226A4E000, v27, OS_LOG_TYPE_DEBUG, "BR: Mapping file:%{private}@ from %{private}@", buf, 0x16u);
    }

    (*(*(v42 + 40) + 16))();
  }

  else
  {
    (*(*(v42 + 40) + 16))();
  }

  objc_autoreleasePoolPop(context);
}

- (id)unarchiveURL:(id)l error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    v24 = 0;
    goto LABEL_51;
  }

  v31 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  scheme = [(__CFString *)v31 scheme];
  v6 = [scheme isEqual:@"x-br-file"];

  if (v6)
  {
    v7 = _uaGetLogForCategory(0);
    errorCopy = error;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      queryItems = [(__CFString *)v31 queryItems];
      *buf = 138478083;
      v41 = v31;
      v42 = 2113;
      v43 = queryItems;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "components=%{private}@ queryItems=%{private}@", buf, 0x16u);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    queryItems2 = [(__CFString *)v31 queryItems];
    v10 = [queryItems2 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (!v10)
    {

      v11 = 0;
      v33 = 0;
      v24 = 0;
      cf = 0;
LABEL_47:
      v28 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v41 = v24;
        v42 = 2113;
        v43 = lCopy;
        _os_log_impl(&dword_226A4E000, v28, OS_LOG_TYPE_DEBUG, "BR:Resolved url %{private}@ from %{private}@", buf, 0x16u);
      }

      goto LABEL_50;
    }

    v11 = 0;
    v33 = 0;
    v12 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(queryItems2);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        name = [v14 name];
        v16 = [name isEqual:@"v"];

        if (v16)
        {
          value = [v14 value];

          v33 = value;
        }

        name2 = [v14 name];
        v19 = [name2 isEqual:@"fp"];

        if (v19)
        {
          value2 = [v14 value];

          v11 = value2;
        }
      }

      v10 = [queryItems2 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v10);

    cf = 0;
    if (!v11)
    {
      v24 = 0;
LABEL_36:
      if (v33 && !v24)
      {
        v34 = 0;
        v24 = _UABRCopyDocumentURLForUbiquitousBookmarkData(v33, &v34);
        v26 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138478339;
          v41 = v33;
          v42 = 2113;
          v43 = v24;
          v44 = 2114;
          v45 = v34;
          _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "BRCopyDocumentURLForBookmarkData(%{private}@) = %{private}@/%{public}@", buf, 0x20u);
        }

        if (errorCopy && v34)
        {
          v27 = _uaGetLogForCategory(0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138478083;
            v41 = v33;
            v42 = 2114;
            v43 = v34;
            _os_log_impl(&dword_226A4E000, v27, OS_LOG_TYPE_INFO, "error decoding brCookie %{private}@, error = %{public}@", buf, 0x16u);
          }

          *errorCopy = CFRetain(v34);
        }

        if (v34)
        {
          CFRelease(v34);
        }
      }

      goto LABEL_47;
    }

    v21 = softLinkFPCreateDocumentURLFromBookmarkableString(v11, &cf);
    v22 = v21;
    if (cf)
    {
      v23 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v41 = v11;
        v42 = 2114;
        v43 = cf;
        _os_log_impl(&dword_226A4E000, v23, OS_LOG_TYPE_DEBUG, "error decoding fileProvider %{private}@, error = %{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      [(__CFString *)v31 setScheme:@"file"];
      v25 = CFURLCopyPath(v22);
      [(__CFString *)v31 setPath:v25];

      v24 = [(__CFString *)v31 URL];
LABEL_28:
      if (errorCopy && cf)
      {
        *errorCopy = CFRetain(cf);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      goto LABEL_36;
    }

    v24 = 0;
    goto LABEL_28;
  }

  v24 = 0;
LABEL_50:

LABEL_51:

  return v24;
}

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  archiverCopy = archiver;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  objectCopy = object;
  v21 = objectCopy;
  if (objectCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = objectCopy;
    if ([v8 isFileURL])
    {
      v9 = dispatch_group_create();
      dispatch_group_enter(v9);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __44__UAUserActivity_archiver_willEncodeObject___block_invoke;
      v13[3] = &unk_2785C3800;
      v15 = &v16;
      v10 = v9;
      v14 = v10;
      if ([(UAUserActivity *)self archiveURL:v8 completionHandler:v13])
      {
        dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  else
  {
    objc_storeStrong(v17 + 5, object);
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __44__UAUserActivity_archiver_willEncodeObject___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  unarchiverCopy = unarchiver;
  if (!object)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  objectCopy = object;
  scheme = [objectCopy scheme];
  v9 = [scheme isEqual:@"x-br-file"];

  if ((v9 & 1) == 0)
  {

LABEL_14:
    objectCopy2 = object;
    v14 = objectCopy2;
    goto LABEL_15;
  }

  v16 = 0;
  v10 = [(UAUserActivity *)self unarchiveURL:objectCopy error:&v16];
  v11 = v16;
  if (v11)
  {
    [(UAUserActivity *)self setDecodeUserInfoError:v11];
LABEL_6:
    objectCopy2 = 0;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  objectCopy2 = v10;
LABEL_10:
  v13 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v18 = objectCopy2;
    v19 = 2113;
    v20 = objectCopy;
    _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_DEBUG, " -- resolved url = %{private}@ from %{private}@", buf, 0x16u);
  }

  if (!objectCopy2)
  {
    goto LABEL_14;
  }

  v14 = 0;
LABEL_15:

  return objectCopy2;
}

- (void)synchronouslyEncodeUserInfo:(id)info options:(id)options completionHandler:(id)handler
{
  v95 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  optionsCopy = options;
  handlerCopy = handler;
  v8 = objc_autoreleasePoolPush();
  v52 = optionsCopy;
  if (optionsCopy)
  {
    v9 = [optionsCopy objectForKeyedSubscript:@"UACreateUserActivityDataDoNotEncodeFileURLs"];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  cachedEncodedUserInfo = [(UAUserActivity *)self cachedEncodedUserInfo];

  if (!optionsCopy && cachedEncodedUserInfo)
  {
    cachedEncodedUserInfo2 = [(UAUserActivity *)self cachedEncodedUserInfo];
    context = v8;
    v12 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      cachedEncodedUserInfo3 = [(UAUserActivity *)self cachedEncodedUserInfo];
      v14 = trimmedHexStringForData(cachedEncodedUserInfo3, 64);
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEFAULT, "Returning cached encoded userInfo, %{private}@", &buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, cachedEncodedUserInfo2, 0, 0);
LABEL_49:

    v49 = context;
    goto LABEL_50;
  }

  if (infoCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke;
    v82[3] = &unk_2785C3848;
    v84 = bOOLValue;
    cachedEncodedUserInfo2 = dictionary;
    v83 = cachedEncodedUserInfo2;
    context = v8;
    if (recurse(infoCopy, v82))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v93 = 0x2020000000;
      v94 = 0;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0;
      v74 = 0;
      v75 = &v74;
      v76 = 0x2020000000;
      v77 = 0;
      if ([cachedEncodedUserInfo2 count])
      {
        v16 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [cachedEncodedUserInfo2 description];
          v18 = stringRemovingNewlines(v17);
          *v85 = 138477827;
          v86 = v18;
          _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_INFO, "-- This .userInfo contains iCloud URLs, so beginning process to supplement them with iCloud cookie information. (%{private}@)", v85, 0xCu);
        }

        group = dispatch_group_create();
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        allKeys = [cachedEncodedUserInfo2 allKeys];
        obj = allKeys;
        v20 = [allKeys countByEnumeratingWithState:&v70 objects:v91 count:16];
        if (v20)
        {
          v21 = *v71;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v71 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v70 + 1) + 8 * i);
              v24 = dispatch_get_global_queue(0, 0);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_182;
              block[3] = &unk_2785C3898;
              p_buf = &buf;
              v25 = group;
              v62 = v25;
              selfCopy = self;
              v64 = v23;
              v65 = cachedEncodedUserInfo2;
              v68 = &v78;
              v69 = &v74;
              v66 = handlerCopy;
              dispatch_group_async(v25, v24, block);
            }

            allKeys = obj;
            v20 = [obj countByEnumeratingWithState:&v70 objects:v91 count:16];
          }

          while (v20);
        }

        v26 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = [infoCopy description];
          v28 = stringRemovingNewlines(v27);
          *v85 = 138477827;
          v86 = v28;
          _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "ENCODE: Waiting for replacementURLs block to complete, userInfo=%{private}@.", v85, 0xCu);
        }

        dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        v29 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [cachedEncodedUserInfo2 description];
          v31 = stringRemovingNewlines(v30);
          *v85 = 138477827;
          v86 = v31;
          _os_log_impl(&dword_226A4E000, v29, OS_LOG_TYPE_DEBUG, "ENCODE: DONE waiting for replacementURLs block to complete. replacementURLs=%{private}@", v85, 0xCu);
        }
      }

      atomic_load((*(&buf + 1) + 24));
      if (!atomic_load((*(&buf + 1) + 24)))
      {
        v60 = cachedEncodedUserInfo2;
        v59 = v60;
        v33 = _UACopyPackedDataForObjectWithSubstitution();
        v89[0] = @"UAUserActivityContainsCloudDocsKey";
        if (atomic_load(v79 + 6))
        {
          v35 = MEMORY[0x277CBEC38];
        }

        else
        {
          v35 = MEMORY[0x277CBEC28];
        }

        v36 = *MEMORY[0x277CC1F30];
        v90[0] = v35;
        v90[1] = MEMORY[0x277CBEC28];
        v37 = *MEMORY[0x277CC1F28];
        v89[1] = v36;
        v89[2] = v37;
        LODWORD(v37) = atomic_load(v75 + 6);
        if (v37)
        {
          v38 = MEMORY[0x277CBEC38];
        }

        else
        {
          v38 = MEMORY[0x277CBEC28];
        }

        v90[2] = v38;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:{3, context}];
        (*(handlerCopy + 2))(handlerCopy, v33, v39, 0);
        v40 = _uaGetLogForCategory(0);
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        v42 = v52;
        if (v41)
        {
          v43 = trimmedHexStringForData(v33, 64);
          v44 = [v39 description];
          v45 = stringRemovingNewlines(v44);
          *v85 = 138478083;
          v86 = v43;
          v87 = 2114;
          v88 = v45;
          _os_log_impl(&dword_226A4E000, v40, OS_LOG_TYPE_DEFAULT, "ENCODE: Caching encoded userInfo to use until we are marked dirty again, returning encoded result %{private}@ opts=%{public}@", v85, 0x16u);

          v42 = v52;
        }

        v46 = v42 == 0;

        if (v46)
        {
          v47 = v33;
        }

        else
        {
          v47 = 0;
        }

        [(UAUserActivity *)self setCachedEncodedUserInfo:v47];
      }

      _Block_object_dispose(&v74, 8);
      _Block_object_dispose(&v78, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v50 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v50);
    }

    goto LABEL_49;
  }

  v48 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_226A4E000, v48, OS_LOG_TYPE_DEFAULT, "ENCODE: Asked to encode nil userInfo, so returning nil.", &buf, 2u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  v49 = v8;
LABEL_50:
  objc_autoreleasePoolPop(v49);
}

uint64_t __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && objectIsOfAcceptableClassForUserInfo(v3))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(objc_object *)v4 isFileURL]&& (*(a1 + 40) & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = [MEMORY[0x277CBEB68] null];
      [v5 setObject:v6 forKey:v4];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_182(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (atomic_fetch_or((*(*(a1 + 72) + 8) + 24), 0))
  {
    v3 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 48);
      *buf = 138477827;
      v18 = v4;
      _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "ENCODE: Skipping archiveURL for %{private}@ because another URL archive has already failed.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_group_enter(*(a1 + 32));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_2;
    v10[3] = &unk_2785C3870;
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v15 = *(a1 + 80);
    v9 = *(a1 + 64);
    v16 = *(a1 + 72);
    v14 = v9;
    v13 = *(a1 + 32);
    if (([v5 archiveURL:v6 completionHandler:v10] & 1) == 0)
    {
      dispatch_group_leave(*(a1 + 32));
    }

    v3 = v11;
  }

  objc_autoreleasePoolPop(v2);
}

void __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = *(a1 + 32);
    objc_sync_enter(v12);
    v13 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v22 = 138478083;
      v23 = v14;
      v24 = 2113;
      v25 = v9;
      _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "-- Replacing url %{private}@ with %{private}@", &v22, 0x16u);
    }

    [*(a1 + 32) setObject:v9 forKey:*(a1 + 40)];
    atomic_fetch_add((*(*(a1 + 64) + 8) + 24), a3);
    atomic_fetch_add((*(*(a1 + 72) + 8) + 24), a4);
    objc_sync_exit(v12);
  }

  else
  {
    if (atomic_fetch_add((*(*(a1 + 80) + 8) + 24), 1u))
    {
      goto LABEL_7;
    }

    if (v10)
    {
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v10 forKey:*MEMORY[0x277CCA7E8]];
    }

    else
    {
      v12 = 0;
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:v12];
    v16 = *MEMORY[0x277CC1F30];
    v30[0] = @"UAUserActivityContainsCloudDocsKey";
    v30[1] = v16;
    v31[0] = MEMORY[0x277CBEC38];
    v31[1] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    v18 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 40);
      v20 = [v17 description];
      v21 = stringRemovingNewlines(v20);
      v22 = 138478595;
      v23 = v19;
      v24 = 2114;
      v25 = v11;
      v26 = 2114;
      v27 = v15;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&dword_226A4E000, v18, OS_LOG_TYPE_INFO, "ICLOUD: Error encoding url %{private}@, %{public}@, so failing with error %{public}@ opts=%{public}@.", &v22, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 48));
}

BOOL __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_183(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)encodeUserInfo:(id)info options:(id)options error:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__UAUserActivity_encodeUserInfo_options_error___block_invoke;
  v8[3] = &unk_2785C3910;
  v8[4] = &v15;
  v8[5] = &v9;
  [(UAUserActivity *)self synchronouslyEncodeUserInfo:info options:options completionHandler:v8];
  if (error)
  {
    *error = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __47__UAUserActivity_encodeUserInfo_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

- (id)encodeUserInfo:(id)info error:(id *)error
{
  v4 = [(UAUserActivity *)self encodeUserInfo:info options:0 error:error];

  return v4;
}

- (id)encodeUserInfo:(id)info
{
  v3 = [(UAUserActivity *)self encodeUserInfo:info error:0];

  return v3;
}

- (id)decodeUserInfo:(id)info options:(id)options
{
  v73 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = trimmedHexStringForData(infoCopy, 32);
    *buf = 138477827;
    *&buf[4] = v5;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "data=%{private}@", buf, 0xCu);
  }

  v6 = infoCopy;
  if (!infoCopy)
  {
    v26 = 0;
    goto LABEL_42;
  }

  if ([infoCopy length] < 4 || (v7 = infoCopy, *objc_msgSend(infoCopy, "bytes") != 77) || (v8 = infoCopy, *(objc_msgSend(infoCopy, "bytes") + 1) != 80))
  {
    v27 = MEMORY[0x277CBEB98];
    v67[0] = objc_opt_class();
    v67[1] = objc_opt_class();
    v67[2] = objc_opt_class();
    v67[3] = objc_opt_class();
    v67[4] = objc_opt_class();
    v67[5] = objc_opt_class();
    v67[6] = objc_opt_class();
    v67[7] = objc_opt_class();
    v67[8] = objc_opt_class();
    v67[9] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:10];
    v47 = [v27 setWithArray:v28];

    v29 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:infoCopy error:0];
    [v29 setDelegate:self];
    [v29 setRequiresSecureCoding:1];
    [(UAUserActivity *)self setDecodeUserInfoError:0];
    v30 = [v29 decodeObjectOfClasses:v47 forKey:*MEMORY[0x277CCA308]];
    decodeUserInfoError = [(UAUserActivity *)self decodeUserInfoError];
    v32 = decodeUserInfoError == 0;

    if (v32)
    {
      if (v30)
      {
        v33 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v35 = trimmedHexStringForData(infoCopy, 64);
          *buf = 138478083;
          *&buf[4] = v30;
          *&buf[12] = 2113;
          *&buf[14] = v35;
          _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_DEBUG, "Successfully unarchived(old) payload to %{private}@, from %{private}@", buf, 0x16u);
        }
      }

      else
      {
        v36 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v36, OS_LOG_TYPE_ERROR, "*** Failed to decode keyed object, trying unkeyed object decode", buf, 2u);
        }

        v30 = [v29 decodeObjectOfClasses:v47 forKey:@"$$0"];
        if (!v30)
        {
          v26 = 0;
          goto LABEL_39;
        }

        v33 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_INFO, "*** Unarchived(old and unkeyed) payload", buf, 2u);
        }
      }
    }

    else
    {
      v33 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        decodeUserInfoError2 = [(UAUserActivity *)self decodeUserInfoError];
        *buf = 138543362;
        *&buf[4] = decodeUserInfoError2;
        _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_ERROR, "*** Failed decoding archive, with error %{public}@.", buf, 0xCu);
      }
    }

    v26 = v30;
LABEL_39:
    [v29 finishDecoding];
    goto LABEL_40;
  }

  v9 = infoCopy;
  v10 = _UACopyUnpackedObjectFromData([infoCopy bytes], objc_msgSend(infoCopy, "length"), 0);
  v47 = v10;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke;
    v65[3] = &unk_2785C3938;
    v12 = dictionary;
    v66 = v12;
    v46 = v12;
    recurse(v10, v65);
    if ([v12 count])
    {
      v13 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 description];
        v15 = stringRemovingNewlines(v14);
        *buf = 138477827;
        *&buf[4] = v15;
        _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "-- Converting x-br-file: NSURLs into local, iCloud URLs: %{private}@", buf, 0xCu);
      }

      v16 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{-[NSObject count](v12, "count") + 1}];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v72 = 0;
      [v16 setCancellable:1];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_189;
      v64[3] = &unk_2785C3960;
      v64[4] = buf;
      [v16 setCancellationHandler:v64];
      group = dispatch_group_create();
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v17 = v12;
      v18 = [v17 countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v18)
      {
        v19 = *v61;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v61 != v19)
            {
              objc_enumerationMutation(v17);
            }

            if ((*(*&buf[8] + 24) & 1) == 0)
            {
              v21 = v16;
              v22 = *(*(&v60 + 1) + 8 * i);
              v23 = dispatch_get_global_queue(0, 0);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_2;
              block[3] = &unk_2785C3988;
              block[4] = v22;
              v16 = v21;
              v56 = v21;
              selfCopy = self;
              v58 = v17;
              v59 = buf;
              dispatch_group_async(group, v23, block);
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v60 objects:v70 count:16];
        }

        while (v18);
      }

      v24 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v68 = 134217984;
        v69 = 0x402E000000000000;
        _os_log_impl(&dword_226A4E000, v24, OS_LOG_TYPE_INFO, "-- Waiting up to %g seconds for all iCloud x-br-file items to be converted into local iCloud NSURLs", v68, 0xCu);
      }

      v25 = dispatch_time(0, 15000000000);
      v26 = 0;
      if (!dispatch_group_wait(group, v25))
      {
        [v16 becomeCurrentWithPendingUnitCount:1];
        if (*(*&buf[8] + 24))
        {
          v26 = 0;
        }

        else
        {
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_190;
          v53[3] = &unk_2785C3938;
          v54 = v17;
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_2_191;
          v51[3] = &unk_2785C39B0;
          v52 = v54;
          v44 = recurseAndReplace(v47, v53, v51);
          v45 = v44;
          if (v44)
          {
            v26 = [v44 mutableCopy];
          }

          else
          {
            v26 = 0;
          }
        }

        [v16 resignCurrent];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v26 = [v10 copy];
    }

    v40 = v66;
  }

  else
  {
    decodeUserInfoError3 = [(UAUserActivity *)self decodeUserInfoError];
    v39 = decodeUserInfoError3 == 0;

    if (v39)
    {
      v26 = 0;
      goto LABEL_41;
    }

    v40 = _uaGetLogForCategory(0);
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_INFO);
    v42 = v47;
    if (v41)
    {
      decodeUserInfoError4 = [(UAUserActivity *)self decodeUserInfoError];
      *buf = 138543362;
      *&buf[4] = decodeUserInfoError4;
      _os_log_impl(&dword_226A4E000, v40, OS_LOG_TYPE_INFO, "*** Failed decoding archive, with error %{public}@, so (potentially) looping and trying again.", buf, 0xCu);

      v26 = 0;
      v42 = v47;
    }

    else
    {
      v26 = 0;
    }

    v46 = v42;
    v47 = 0;
  }

  v29 = v46;
LABEL_40:

LABEL_41:
  v6 = infoCopy;
LABEL_42:
  [(UAUserActivity *)self setDecodeUserInfoError:0, v46];

  return v26;
}

uint64_t __41__UAUserActivity_decodeUserInfo_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v4 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v3 scheme];
  v6 = [v5 compare:@"x-br-file" options:1];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEB68] null];
    [v7 setValue:v4 forKey:v3];
LABEL_5:
  }

  return 1;
}

void __41__UAUserActivity_decodeUserInfo_options___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v9 = 138477827;
    v10 = v4;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "-- Converting x-br-file: NSURL %{private}@ into local, iCloud URL", &v9, 0xCu);
  }

  [*(a1 + 40) becomeCurrentWithPendingUnitCount:1];
  v5 = [*(a1 + 48) unarchiveURL:*(a1 + 32) error:0];
  [*(a1 + 40) resignCurrent];
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v9 = 138478083;
    v10 = v7;
    v11 = 2113;
    v12 = v5;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "-- Converted x-br-file: NSURL %{private}@ into local, iCloud URLs: %{private}@", &v9, 0x16u);
  }

  v8 = *(a1 + 56);
  objc_sync_enter(v8);
  if (v5)
  {
    [*(a1 + 56) setObject:v5 forKey:*(a1 + 32)];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  objc_sync_exit(v8);

  objc_autoreleasePoolPop(v2);
}

BOOL __41__UAUserActivity_decodeUserInfo_options___block_invoke_190(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKey:v3];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __41__UAUserActivity_decodeUserInfo_options___block_invoke_2_191(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];

  return v2;
}

- (id)decodeUserInfo:(id)info
{
  v3 = [(UAUserActivity *)self decodeUserInfo:info options:0];

  return v3;
}

+ (void)addDynamicUserActivity:(id)activity matching:(id)matching
{
  v13 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  matchingCopy = matching;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138478083;
    v10 = activityCopy;
    v11 = 2113;
    v12 = matchingCopy;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "addDynamicUserActivity(%{private}@ matching=%{private}@)", &v9, 0x16u);
  }

  v8 = +[UAUserActivityManager defaultManager];
  [v8 addDynamicUserActivity:activityCopy matching:matchingCopy];
}

+ (void)removeDynamicUserActivity:(id)activity matching:(id)matching
{
  v13 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  matchingCopy = matching;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 138478083;
    v10 = activityCopy;
    v11 = 2113;
    v12 = matchingCopy;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "removeDynamicUserActivity(%{private}@ matching=%{private}@)", &v9, 0x16u);
  }

  v8 = +[UAUserActivityManager defaultManager];
  [v8 removeDynamicUserActivity:activityCopy matching:matchingCopy];
}

- (void)prepareUserActivityForLaunchingWithOptions:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  manager = [(UAUserActivity *)self manager];
  [manager pinUserActivity:self withCompletionHandler:handlerCopy];
}

- (id)determineMatchingApplicationBundleIdentfierWithOptions:(id)options
{
  typeIdentifier = [(UAUserActivity *)self typeIdentifier];
  dynamicIdentifier = [(UAUserActivity *)self dynamicIdentifier];
  teamIdentifier = [(UAUserActivity *)self teamIdentifier];
  v7 = [UAUserActivityManager _determineMatchingApplicationBundleIdentfierWithOptionsForActivityType:typeIdentifier dynamicType:dynamicIdentifier kind:1 teamIdentifier:teamIdentifier];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uniqueIdentifier2 = [(UAUserActivity *)v5 uniqueIdentifier];
    v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSDictionary *)selfCopy->_userInfo description];
  v4 = stringRemovingNewlines(v3);

  objc_sync_exit(selfCopy);
  payloadIdentifiers = [(UAUserActivity *)selfCopy payloadIdentifiers];
  if ([payloadIdentifiers count])
  {
    payloadIdentifiers2 = [(UAUserActivity *)selfCopy payloadIdentifiers];
    v7 = [payloadIdentifiers2 description];
    v8 = stringRemovingNewlines(v7);
  }

  else
  {
    v8 = &stru_283A5A2C8;
  }

  v9 = MEMORY[0x277CCACA8];
  v16.receiver = selfCopy;
  v16.super_class = UAUserActivity;
  v10 = [(UAUserActivity *)&v16 description];
  typeIdentifier = [(UAUserActivity *)selfCopy typeIdentifier];
  uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  v14 = [v9 stringWithFormat:@"%@ { type = %@, UUID = %@, userInfo = %@ %@ }", v10, typeIdentifier, uUIDString, v4, v8];

  return v14;
}

+ (void)addUserActivityObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    if (getUserActivityObservers(BOOL)::sOnce != -1)
    {
      +[UAUserActivity addUserActivityObserver:];
    }

    v4 = getUserActivityObservers(BOOL)::sResult;
    objc_sync_enter(v4);
    [v4 addObject:v5];
    objc_sync_exit(v4);

    observerCopy = v5;
  }
}

+ (void)removeUserActivityObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v5 = observerCopy;
    v4 = getUserActivityObservers(BOOL)::sResult;
    objc_sync_enter(v4);
    [v4 removeObject:v5];
    objc_sync_exit(v4);

    observerCopy = v5;
  }
}

- (NSString)subtitle
{
  if ([UAUserActivity(Legacy) subtitle]::sOnce != -1)
  {
    [UAUserActivity(Legacy) subtitle];
  }

  return 0;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if ([UAUserActivity(Legacy) setSubtitle:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) setSubtitle:];
  }
}

- (id)contentType
{
  if ([UAUserActivity(Legacy) contentType]::sOnce != -1)
  {
    [UAUserActivity(Legacy) contentType];
  }

  return 0;
}

- (void)setContentType:(id)type
{
  typeCopy = type;
  if ([UAUserActivity(Legacy) setContentType:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) setContentType:];
  }
}

- (id)contentAttributes
{
  if ([UAUserActivity(Legacy) contentAttributes]::sOnce != -1)
  {
    [UAUserActivity(Legacy) contentAttributes];
  }

  return 0;
}

- (void)setContentAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([UAUserActivity(Legacy) setContentAttributes:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) setContentAttributes:];
  }
}

- (void)addContentAttribute:(id)attribute forKey:(id)key
{
  attributeCopy = attribute;
  keyCopy = key;
  if ([UAUserActivity(Legacy) addContentAttribute:forKey:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) addContentAttribute:forKey:];
  }
}

- (void)removeContentAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([UAUserActivity(Legacy) removeContentAttribute:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) removeContentAttribute:];
  }
}

- (UAUserActivity)initWithManager:(id)manager userActivityInfo:(id)info
{
  v68 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  infoCopy = info;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v65 = managerCopy;
    v66 = 2113;
    v67 = infoCopy;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "initWithManager:%{public}@, userActivityInfo=%{private}@", buf, 0x16u);
  }

  v63.receiver = self;
  v63.super_class = UAUserActivity;
  v9 = [(UAUserActivity *)&v63 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_manager, managerCopy);
    v11 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:-1];
    [v11 becomeCurrentWithPendingUnitCount:1];
    uuid = [infoCopy uuid];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = uuid;

    v10->_suggestedActionType = [infoCopy type];
    options = [infoCopy options];
    v15 = [options copy];
    options = v10->_options;
    v10->_options = v15;

    title = [infoCopy title];
    v18 = [title copy];
    title = v10->_title;
    v10->_title = v18;

    activityType = [infoCopy activityType];
    typeIdentifier = v10->_typeIdentifier;
    v10->_typeIdentifier = activityType;

    dynamicActivityType = [infoCopy dynamicActivityType];
    dynamicIdentifier = v10->_dynamicIdentifier;
    v10->_dynamicIdentifier = dynamicActivityType;

    teamIdentifier = [infoCopy teamIdentifier];
    teamIdentifier = v10->_teamIdentifier;
    v10->_teamIdentifier = teamIdentifier;

    webpageURL = [infoCopy webpageURL];
    webpageURL = v10->_webpageURL;
    v10->_webpageURL = webpageURL;

    referrerURL = [infoCopy referrerURL];
    referrerURL = v10->_referrerURL;
    v10->_referrerURL = referrerURL;

    targetContentIdentifier = [infoCopy targetContentIdentifier];
    targetContentIdentifier = v10->_targetContentIdentifier;
    v10->_targetContentIdentifier = targetContentIdentifier;

    payloads = [infoCopy payloads];
    v33 = payloads == 0;

    if (!v33)
    {
      v34 = objc_alloc(MEMORY[0x277CBEB38]);
      payloads2 = [infoCopy payloads];
      v36 = [v34 initWithDictionary:payloads2];
      payloadDataCache = v10->_payloadDataCache;
      v10->_payloadDataCache = v36;

      v38 = objc_alloc(MEMORY[0x277CBEB38]);
      v39 = [infoCopy payloadForIdentifier:@"UAUserActivityUserInfoPayload"];
      v40 = [(UAUserActivity *)v10 decodeUserInfo:v39];
      v41 = [v38 initWithDictionary:v40];
      userInfo = v10->_userInfo;
      v10->_userInfo = v41;

      [(NSMutableDictionary *)v10->_payloadDataCache removeObjectForKey:@"UAUserActivityUserInfoPayload"];
    }

    frameworkPayload = v10->_frameworkPayload;
    v10->_frameworkPayload = 0;

    advertiser = v10->_advertiser;
    v10->_advertiser = 0;

    resumerAdvertiser = v10->_resumerAdvertiser;
    v10->_resumerAdvertiser = 0;

    v10->_needsSave = 1;
    v46 = [(UAUserActivity *)v10 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
    v47 = v46 == 0;

    if (!v47)
    {
      v10->_canCreateStreams = 1;
      v10->_supportsContinuationStreams = 1;
    }

    v10->_createsNewUUIDIfSaved = 1;
    v10->_eligibleForHandoff = [infoCopy eligibleForHandoff];
    v10->_eligibleForPublicIndexing = [infoCopy eligibleForPublicIndexing];
    v10->_eligibleForReminders = [infoCopy eligibleForReminders];
    v10->_eligibleForSearch = [infoCopy eligibleForSearch];
    v10->_eligibleForPrediction = [infoCopy eligibleForPrediction];
    persistentIdentifier = [infoCopy persistentIdentifier];
    persistentIdentifier = v10->_persistentIdentifier;
    v10->_persistentIdentifier = persistentIdentifier;

    requiredUserInfoKeys = [infoCopy requiredUserInfoKeys];
    if (requiredUserInfoKeys)
    {
      requiredUserInfoKeys2 = [infoCopy requiredUserInfoKeys];
      v52 = [requiredUserInfoKeys2 copy];
      requiredUserInfoKeys = v10->_requiredUserInfoKeys;
      v10->_requiredUserInfoKeys = v52;
    }

    else
    {
      requiredUserInfoKeys2 = v10->_requiredUserInfoKeys;
      v10->_requiredUserInfoKeys = 0;
    }

    v10->_universalLink = [infoCopy isUniversalLink];
    contentUserAction = [infoCopy contentUserAction];
    contentUserAction = v10->_contentUserAction;
    v10->_contentUserAction = contentUserAction;

    keywords = [infoCopy keywords];
    if (keywords)
    {
      keywords2 = [infoCopy keywords];
      v58 = [keywords2 copy];
      keywords = v10->_keywords;
      v10->_keywords = v58;
    }

    else
    {
      keywords2 = v10->_keywords;
      v10->_keywords = 0;
    }

    expirationDate = [infoCopy expirationDate];
    expirationDate = v10->_expirationDate;
    v10->_expirationDate = expirationDate;

    [v11 resignCurrent];
  }

  return v10;
}

- (id)copyWithNewUUID:(BOOL)d
{
  dCopy = d;
  v86 = *MEMORY[0x277D85DE8];
  v5 = [UAUserActivity alloc];
  typeIdentifier = [(UAUserActivity *)self typeIdentifier];
  dynamicIdentifier = [(UAUserActivity *)self dynamicIdentifier];
  suggestedActionType = [(UAUserActivity *)self suggestedActionType];
  options = [(UAUserActivity *)self options];
  v10 = [(UAUserActivity *)v5 initDynamicActivityWithTypeIdentifier:typeIdentifier dynamicIdentifier:dynamicIdentifier suggestedActionType:suggestedActionType options:options];

  if ([(UAUserActivity *)self isInvalidated])
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      *buf = 138543362;
      v83 = uUIDString;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_ERROR, "copyWithNewUUID:%{public}@, unable to copy because this object has been invalidated.", buf, 0xCu);
    }

    v14 = 0;
LABEL_40:

    return v14;
  }

  if (-[UAUserActivity needsSave](self, "needsSave") || (-[UAUserActivity dirtyPayloadIdentifiers](self, "dirtyPayloadIdentifiers"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count], v15, v16))
  {
    v17 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      if (dCopy)
      {
        v18 = "-callDelegate-";
      }

      else
      {
        v18 = "-noDelegateCall-";
      }

      uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier2 UUIDString];
      *buf = 136446466;
      v83 = v18;
      v84 = 2114;
      v85 = uUIDString2;
      _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_DEBUG, "copyWithNewUUID:%{public}s (%{public}@), calling delegate because .needSave == YES or it has dirty payloads", buf, 0x16u);
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    needsSave = selfCopy->_needsSave;
    *&selfCopy->_needsSave = 0;
    objc_sync_exit(selfCopy);

    delegate = [(UAUserActivity *)selfCopy delegate];
    v24 = delegate;
    if (dCopy)
    {
      if (needsSave && delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        willCallSaveSerializationQueue = [(UAUserActivity *)selfCopy willCallSaveSerializationQueue];
        dispatch_assert_queue_not_V2(willCallSaveSerializationQueue);

        willCallSaveSerializationQueue2 = [(UAUserActivity *)selfCopy willCallSaveSerializationQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __44__UAUserActivity_Internal__copyWithNewUUID___block_invoke;
        block[3] = &unk_2785C39F8;
        block[4] = selfCopy;
        v80 = v24;
        dispatch_sync(willCallSaveSerializationQueue2, block);
      }
    }

    else
    {

      v10 = 0;
    }
  }

  if (v10)
  {
    v10 = v10;
    objc_sync_enter(v10);
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    v28 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier3 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
      uUIDString3 = [uniqueIdentifier3 UUIDString];
      uniqueIdentifier4 = [v10 uniqueIdentifier];
      uUIDString4 = [uniqueIdentifier4 UUIDString];
      *buf = 138543618;
      v83 = uUIDString3;
      v84 = 2114;
      v85 = uUIDString4;
      _os_log_impl(&dword_226A4E000, v28, OS_LOG_TYPE_DEBUG, "copyWithNewUUID(%{public}@), copying all properties over to new object %{public}@", buf, 0x16u);
    }

    originalUniqueIdentifier = [(UAUserActivity *)selfCopy2 originalUniqueIdentifier];
    v34 = originalUniqueIdentifier;
    if (originalUniqueIdentifier)
    {
      uniqueIdentifier5 = originalUniqueIdentifier;
    }

    else
    {
      uniqueIdentifier5 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
    }

    v36 = *(v10 + 44);
    *(v10 + 44) = uniqueIdentifier5;

    title = [(UAUserActivity *)selfCopy2 title];
    v38 = [title copy];
    v39 = *(v10 + 2);
    *(v10 + 2) = v38;

    userInfo = [(UAUserActivity *)selfCopy2 userInfo];
    if (userInfo)
    {
      userInfo2 = [(UAUserActivity *)selfCopy2 userInfo];
      v42 = [userInfo2 count] == 0;

      if (!v42)
      {
        userInfo3 = [(UAUserActivity *)selfCopy2 userInfo];
        v44 = [userInfo3 copy];
        v45 = *(v10 + 36);
        *(v10 + 36) = v44;
      }
    }

    v46 = [(NSURL *)selfCopy2->_webpageURL copy];
    v47 = *(v10 + 3);
    *(v10 + 3) = v46;

    v48 = [(NSURL *)selfCopy2->_referrerURL copy];
    v49 = *(v10 + 4);
    *(v10 + 4) = v48;

    v10[235] = 0;
    v10[109] = 0;
    *(v10 + 107) = 0;
    v10[180] = [(UAUserActivity *)selfCopy2 isEligibleForHandoff];
    v10[183] = [(UAUserActivity *)selfCopy2 isEligibleForPublicIndexing];
    v10[181] = [(UAUserActivity *)selfCopy2 isEligibleForSearch];
    v10[182] = [(UAUserActivity *)selfCopy2 isEligibleForReminders];
    v10[184] = [(UAUserActivity *)selfCopy2 isEligibleForPrediction];
    persistentIdentifier = [(UAUserActivity *)selfCopy2 persistentIdentifier];
    v51 = *(v10 + 24);
    *(v10 + 24) = persistentIdentifier;

    keywords = [(UAUserActivity *)selfCopy2 keywords];
    v53 = [keywords copy];
    v54 = *(v10 + 16);
    *(v10 + 16) = v53;

    requiredUserInfoKeys = [(UAUserActivity *)selfCopy2 requiredUserInfoKeys];
    v56 = [requiredUserInfoKeys copy];
    v57 = *(v10 + 19);
    *(v10 + 19) = v56;

    v10[234] = [(UAUserActivity *)selfCopy2 isUniversalLink];
    contentUserAction = [(UAUserActivity *)selfCopy2 contentUserAction];
    v59 = [contentUserAction copy];
    v60 = *(v10 + 18);
    *(v10 + 18) = v59;

    expirationDate = [(UAUserActivity *)selfCopy2 expirationDate];
    v62 = [expirationDate copy];
    v63 = *(v10 + 17);
    *(v10 + 17) = v62;

    madeCurrentDate = [(UAUserActivity *)selfCopy2 madeCurrentDate];
    v65 = *(v10 + 30);
    *(v10 + 30) = madeCurrentDate;

    madeCurrentEndDate = [(UAUserActivity *)selfCopy2 madeCurrentEndDate];
    v67 = *(v10 + 31);
    *(v10 + 31) = madeCurrentEndDate;

    *(v10 + 32) = *&selfCopy2->_madeCurrentInterval;
    objc_storeStrong(v10 + 33, selfCopy2->_madeInitiallyCurrentDate);
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    payloadIdentifiers = [(UAUserActivity *)selfCopy2 payloadIdentifiers];
    v69 = [payloadIdentifiers countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (v69)
    {
      v70 = *v76;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v76 != v70)
          {
            objc_enumerationMutation(payloadIdentifiers);
          }

          v72 = *(*(&v75 + 1) + 8 * i);
          if (([v72 isEqual:@"UAUserActivityUserInfoPayload"] & 1) == 0 && (objc_msgSend(v72, "isEqual:", @"UAUserActivityStreamsPayload") & 1) == 0)
          {
            v73 = [(UAUserActivity *)selfCopy2 payloadForIdentifier:v72];
            [v10 setPayload:v73 object:0 identifier:v72 dirty:0];
          }
        }

        v69 = [payloadIdentifiers countByEnumeratingWithState:&v75 objects:v81 count:16];
      }

      while (v69);
    }

    *(v10 + 25) = 0;
    v10[104] = 0;
    v10[106] = 0;
    objc_sync_exit(selfCopy2);

    objc_sync_exit(v10);
    v14 = v10;
    goto LABEL_40;
  }

  return 0;
}

uint64_t __44__UAUserActivity_Internal__copyWithNewUUID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  ++*(*(a1 + 32) + 120);
  objc_sync_exit(v2);

  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = *(a1 + 32);
    v13 = 138543619;
    v14 = v5;
    v15 = 2113;
    v16 = v6;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "in async block, calling willSynchronizeActivity. self=%{public}@/%{private}@", &v13, 0x16u);
  }

  [*(a1 + 40) willSynchronizeActivity];
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  --*(*(a1 + 32) + 120);
  *(*(a1 + 32) + 104) = *(*(a1 + 32) + 105);
  objc_sync_exit(v7);

  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) uniqueIdentifier];
    v10 = [v9 UUIDString];
    v11 = *(a1 + 32);
    v13 = 138543619;
    v14 = v10;
    v15 = 2113;
    v16 = v11;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "in async block, back from willSynchronizeActivity. self=%{public}@/%{private}@", &v13, 0x16u);
  }

  return 0;
}

- (void)willSynchronizeUserActivityWithHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v17 = 138543619;
    v18 = uUIDString;
    v19 = 2113;
    selfCopy = self;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "self=%{public}@/%{private}@", &v17, 0x16u);
  }

  self->_lastSaveTime = 0.0;
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  needsSave = [(UAUserActivity *)selfCopy2 needsSave];
  objc_sync_exit(selfCopy2);

  delegate = [(UAUserActivity *)selfCopy2 delegate];
  if ([(UAUserActivity *)selfCopy2 isInvalidated])
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier2 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier2 UUIDString];
      v17 = 138543362;
      v18 = uUIDString2;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "willSynchronize was called after the UAUserActivity %{public}@ had been invalidated.", &v17, 0xCu);
    }

    delegate = 0;
    goto LABEL_12;
  }

  if (delegate == 0 || !needsSave)
  {
LABEL_12:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }

    goto LABEL_14;
  }

  [(UAUserActivity *)selfCopy2 sendUserActivityInfoToLSUserActivityd:0 onAsyncQueue:0];
  if (handlerCopy)
  {
    v14 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier3 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
      uUIDString3 = [uniqueIdentifier3 UUIDString];
      v17 = 138543619;
      v18 = uUIDString3;
      v19 = 2113;
      selfCopy = selfCopy2;
      _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_DEBUG, "Calling completionHandler self=%{public}@/%{private}@", &v17, 0x16u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

LABEL_14:
}

- (void)didSynchronizeUserActivity
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    *buf = 138543619;
    v18 = uUIDString;
    v19 = 2113;
    selfCopy = self;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "self=%{public}@/%{private}@", buf, 0x16u);
  }

  delegate = [(UAUserActivity *)self delegate];
  if (delegate)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __54__UAUserActivity_Internal__didSynchronizeUserActivity__block_invoke;
    v15[3] = &unk_2785C39F8;
    v15[4] = self;
    v16 = delegate;
    dispatch_async(v7, v15);
  }

  else
  {
    options = [(UAUserActivity *)self options];
    if (options)
    {
      options2 = [(UAUserActivity *)self options];
      v10 = [options2 objectForKeyedSubscript:*MEMORY[0x277CC1F38]];
      bOOLValue = [v10 BOOLValue];

      if (bOOLValue)
      {
        v12 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
          uUIDString2 = [uniqueIdentifier2 UUIDString];
          *buf = 138543362;
          v18 = uUIDString2;
          _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "UserActivity(%{public}@) has UAUserActivityOptionInvalidateAfterFetchKey = YES, so invalidating this activity because it has been continued.", buf, 0xCu);
        }

        [(UAUserActivity *)self invalidate];
      }
    }
  }
}

void __54__UAUserActivity_Internal__didSynchronizeUserActivity__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = *(a1 + 32);
    v22 = 138543619;
    v23 = v5;
    v24 = 2113;
    v25 = v6;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "(on default queue) self=%{public}@/%{private}@", &v22, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) uniqueIdentifier];
      v9 = [v8 UUIDString];
      v10 = *(a1 + 32);
      v22 = 138543619;
      v23 = v9;
      v24 = 2113;
      v25 = v10;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "--- calling delegate.didSynchronizeActivity self=%{public}@/%{private}@", &v22, 0x16u);
    }

    [*(a1 + 40) didSynchronizeActivity];
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [*(a1 + 32) uniqueIdentifier];
      v13 = [v12 UUIDString];
      v14 = *(a1 + 32);
      v22 = 138543619;
      v23 = v13;
      v24 = 2113;
      v25 = v14;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "--- after calling delegate.didSynchronizeActivity self=%{public}@/%{private}@", &v22, 0x16u);
    }
  }

  v15 = [*(a1 + 32) options];
  if (v15)
  {
    v16 = [*(a1 + 32) options];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277CC1F38]];
    v18 = [v17 BOOLValue];

    if (v18)
    {
      v19 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [*(a1 + 32) uniqueIdentifier];
        v21 = [v20 UUIDString];
        v22 = 138543362;
        v23 = v21;
        _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_DEBUG, "UserActivity(%{public}@) has UAUserActivityOptionInvalidateAfterFetchKey = YES, so invalidating this activity because it has been continued.", &v22, 0xCu);
      }

      [*(a1 + 32) invalidate];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  v5 = [(UAUserActivity *)self delegate:stream];
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__UAUserActivity_Internal__didReceiveInputStream_outputStream___block_invoke;
    v7[3] = &unk_2785C39F8;
    v8 = v5;
    selfCopy = self;
    dispatch_async(v6, v7);
  }
}

void __63__UAUserActivity_Internal__didReceiveInputStream_outputStream___block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  objc_opt_respondsToSelector();

  objc_autoreleasePoolPop(v1);
}

void __73__UAUserActivity_Internal__scheduleSendUserActivityInfoToLSUserActivityd__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) scheduleSendUserActivityInfoToLSUserActivityd];

  objc_autoreleasePoolPop(v2);
}

- (id)userActivityInfoForSelfWithPayload:(BOOL)payload options:(id)options
{
  payloadCopy = payload;
  v52 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc_init(UAUserActivityInfo);
  uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
  [(UAUserActivityInfo *)v7 setUuid:uniqueIdentifier];

  [(UAUserActivityInfo *)v7 setType:[(UAUserActivity *)selfCopy suggestedActionType]];
  title = [(UAUserActivity *)selfCopy title];
  [(UAUserActivityInfo *)v7 setTitle:title];

  [(UAUserActivityInfo *)v7 setActivityType:selfCopy->_typeIdentifier];
  [(UAUserActivityInfo *)v7 setDynamicActivityType:selfCopy->_dynamicIdentifier];
  teamIdentifier = [(UAUserActivity *)selfCopy teamIdentifier];
  [(UAUserActivityInfo *)v7 setTeamIdentifier:teamIdentifier];

  [(UAUserActivityInfo *)v7 setWebpageURL:selfCopy->_webpageURL];
  [(UAUserActivityInfo *)v7 setReferrerURL:selfCopy->_referrerURL];
  [(UAUserActivityInfo *)v7 setTargetContentIdentifier:selfCopy->_targetContentIdentifier];
  date = [MEMORY[0x277CBEAA8] date];
  [(UAUserActivityInfo *)v7 setWhen:date];

  requiredUserInfoKeys = [(UAUserActivity *)selfCopy requiredUserInfoKeys];
  [(UAUserActivityInfo *)v7 setRequiredUserInfoKeys:requiredUserInfoKeys];

  [(UAUserActivityInfo *)v7 setUniversalLink:[(UAUserActivity *)selfCopy isUniversalLink]];
  if (payloadCopy)
  {
    cachedEncodedUserInfo = [(UAUserActivity *)selfCopy cachedEncodedUserInfo];

    if (optionsCopy || !cachedEncodedUserInfo)
    {
      userInfo = [(UAUserActivity *)selfCopy userInfo];
      v16 = deepMutableCopy(userInfo);
    }

    else
    {
      v14 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_DEFAULT, "Using cached encoded userInfo to build ActivityInfo", buf, 2u);
      }

      cachedEncodedUserInfo2 = [(UAUserActivity *)selfCopy cachedEncodedUserInfo];
      [(UAUserActivityInfo *)v7 setPayload:cachedEncodedUserInfo2 identifier:@"UAUserActivityUserInfoPayload"];

      v16 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    payloadIdentifiers = [(UAUserActivity *)selfCopy payloadIdentifiers];
    v19 = [payloadIdentifiers countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v19)
    {
      v20 = *v47;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(payloadIdentifiers);
          }

          v22 = *(*(&v46 + 1) + 8 * i);
          v23 = [(UAUserActivity *)selfCopy payloadForIdentifier:v22];
          [(UAUserActivityInfo *)v7 setPayload:v23 identifier:v22];
        }

        v19 = [payloadIdentifiers countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v19);
    }

    if (selfCopy->_supportsContinuationStreams)
    {
      v24 = [(UAUserActivity *)selfCopy payloadForIdentifier:@"UAUserActivityStreamsPayload"];
      v25 = v24 == 0;

      if (v25)
      {
        advertiserCompletedGroup = selfCopy->_advertiserCompletedGroup;
        if (advertiserCompletedGroup)
        {
          if (dispatch_group_wait(advertiserCompletedGroup, 0xEE6B280uLL))
          {
            v27 = 0;
            goto LABEL_23;
          }

          v41 = [(UAUserActivity *)selfCopy payloadForIdentifier:@"UAUserActivityStreamsPayload"];
          if (v41)
          {
            [(UAUserActivityInfo *)v7 setPayload:v41 identifier:@"UAUserActivityStreamsPayload"];
          }
        }
      }
    }

    else
    {
      [(UAUserActivityInfo *)v7 setPayload:0 identifier:@"UAUserActivityStreamsPayload"];
    }
  }

  else
  {
    v16 = 0;
  }

  v27 = 1;
LABEL_23:
  options = [(UAUserActivity *)selfCopy options];
  v29 = MEMORY[0x277CBEB38];
  if (options)
  {
    options2 = [(UAUserActivity *)selfCopy options];
    dictionary = [v29 dictionaryWithDictionary:options2];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  if ([(UAUserActivity *)selfCopy userInfoContainsFileURLs])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"UAUserActivityContainsCloudDocsKey"];
  }

  if ([(UAUserActivity *)selfCopy encodedFileProviderURL])
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CC1F28]];
  }

  [(UAUserActivityInfo *)v7 setEligibleForHandoff:[(UAUserActivity *)selfCopy isEligibleForHandoff]];
  [(UAUserActivityInfo *)v7 setEligibleForSearch:[(UAUserActivity *)selfCopy isEligibleForSearch]];
  [(UAUserActivityInfo *)v7 setEligibleForPublicIndexing:[(UAUserActivity *)selfCopy isEligibleForPublicIndexing]];
  [(UAUserActivityInfo *)v7 setEligibleForReminders:[(UAUserActivity *)selfCopy isEligibleForReminders]];
  [(UAUserActivityInfo *)v7 setEligibleForPrediction:[(UAUserActivity *)selfCopy isEligibleForPrediction]];
  persistentIdentifier = [(UAUserActivity *)selfCopy persistentIdentifier];
  [(UAUserActivityInfo *)v7 setPersistentIdentifier:persistentIdentifier];

  contentUserAction = [(UAUserActivity *)selfCopy contentUserAction];
  [(UAUserActivityInfo *)v7 setContentUserAction:contentUserAction];

  keywords = [(UAUserActivity *)selfCopy keywords];
  [(UAUserActivityInfo *)v7 setKeywords:keywords];

  expirationDate = [(UAUserActivity *)selfCopy expirationDate];
  [(UAUserActivityInfo *)v7 setExpirationDate:expirationDate];

  v36 = [dictionary copy];
  [(UAUserActivityInfo *)v7 setOptions:v36];

  [(UAUserActivityInfo *)v7 setEncodingOptions:0];
  objc_sync_exit(selfCopy);

  if (v16)
  {
    v37 = v27;
  }

  else
  {
    v37 = 0;
  }

  if (v37 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v16 count])
      {
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __71__UAUserActivity_Internal__userActivityInfoForSelfWithPayload_options___block_invoke;
        v43[3] = &unk_2785C3A20;
        v44 = v7;
        v45 = selfCopy;
        [(UAUserActivity *)selfCopy synchronouslyEncodeUserInfo:v16 options:optionsCopy completionHandler:v43];
      }
    }
  }

  if (v27)
  {
    v38 = v7;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

  return v38;
}

void __71__UAUserActivity_Internal__userActivityInfoForSelfWithPayload_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22 = v7;
  [*(a1 + 32) setPayload:v7 identifier:@"UAUserActivityUserInfoPayload"];
  if (v8)
  {
    v10 = [*(a1 + 40) options];
    v11 = MEMORY[0x277CBEB38];
    if (v10)
    {
      v12 = [*(a1 + 40) options];
      v13 = [v11 dictionaryWithDictionary:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = [v8 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v8 objectForKeyedSubscript:v18];
          [v13 setObject:v19 forKeyedSubscript:v18];
        }

        v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    v20 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC1F30]];
    [*(a1 + 40) setEncodedContainsUnsynchronizedCloudDocument:{objc_msgSend(v20, "BOOLValue")}];

    v21 = [v13 copy];
    [*(a1 + 40) setOptions:v21];
  }

  [*(a1 + 32) setEncodedUserInfoError:v9];
}

- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)data options:(id)options clearDirty:(BOOL)dirty
{
  optionsCopy = options;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  willCallSaveSerializationQueue = [(UAUserActivity *)self willCallSaveSerializationQueue];
  dispatch_assert_queue_not_V2(willCallSaveSerializationQueue);

  v10 = _uaGetLogForCategory(@"signposts");
  v11 = os_signpost_id_make_with_pointer(v10, self);

  v12 = _uaGetLogForCategory(@"signposts");
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "callWillSaveDelegate", &unk_226A98EB7, buf, 2u);
  }

  willCallSaveSerializationQueue2 = [(UAUserActivity *)self willCallSaveSerializationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty___block_invoke;
  block[3] = &unk_2785C3A48;
  dataCopy = data;
  dirtyCopy = dirty;
  v20 = &v25;
  v21 = v11;
  block[4] = self;
  v19 = optionsCopy;
  v15 = optionsCopy;
  dispatch_sync(willCallSaveSerializationQueue2, block);

  v16 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v16;
}

void __91__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (![v3 isInvalidated])
    {
      goto LABEL_8;
    }

LABEL_5:
    oslog = _uaGetLogForCategory(0);
    v60 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) uniqueIdentifier];
      v6 = [v5 UUIDString];
      *buf = 138543362;
      v78 = v6;
      _os_log_impl(&dword_226A4E000, oslog, OS_LOG_TYPE_INFO, "Refusing to consider calling delegate for %{public}@ because it has been invalidated.", buf, 0xCu);

      v60 = 1;
    }

    goto LABEL_49;
  }

  v4 = [v3 needsSave];
  if ([*(a1 + 32) isInvalidated])
  {
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_8:
    v7 = 1;
LABEL_9:
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) needsSave];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      *buf = 138543618;
      v78 = v10;
      v79 = 2114;
      v80 = v12;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "for %{public}@: needsSave=%{public}@", buf, 0x16u);
    }

    if (*(a1 + 64))
    {
      v13 = 1000;
    }

    else
    {
      v13 = 0;
    }

    if ([*(a1 + 32) needsSave])
    {
      v14 = 100;
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 32) dirty])
    {
      v15 = 10;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    objc_sync_enter(v16);
    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 105) = 0;
    [*(a1 + 32) setCachedEncodedUserInfo:0];
    objc_sync_exit(v16);

    oslog = [*(a1 + 32) delegate];
    v60 = v14 + v13 + v15;
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v17 = *(a1 + 32);
      objc_sync_enter(v17);
      ++*(*(a1 + 32) + 120);
      objc_sync_exit(v17);

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v18 = getUserActivityObserversCopy();
      v19 = [v18 countByEnumeratingWithState:&v70 objects:v76 count:16];
      if (v19)
      {
        v20 = *v71;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v71 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v70 + 1) + 8 * i);
            v23 = [*(a1 + 32) parentUserActivity];
            if (v23)
            {
              v24 = objc_opt_respondsToSelector();

              if (v24)
              {
                v25 = [*(a1 + 32) parentUserActivity];
                [v22 userActivityWillSynchronize:v25];
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v70 objects:v76 count:16];
        }

        while (v19);
      }

      v26 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 32) uniqueIdentifier];
        v28 = [v27 UUIDString];
        v29 = *(a1 + 32);
        *buf = 138543619;
        v78 = v28;
        v79 = 2113;
        v80 = v29;
        _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "--- in async block, calling willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }

      [oslog willSynchronizeActivity];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v30 = getUserActivityObserversCopy();
      v31 = [v30 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v31)
      {
        v32 = *v67;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v67 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v66 + 1) + 8 * j);
            v35 = [*(a1 + 32) parentUserActivity];
            if (v35)
            {
              v36 = objc_opt_respondsToSelector();

              if (v36)
              {
                v37 = [*(a1 + 32) parentUserActivity];
                [v34 userActivityWasSynchronized:v37];
              }
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v31);
      }

      v38 = *(a1 + 32);
      objc_sync_enter(v38);
      --*(*(a1 + 32) + 120);
      *(*(a1 + 32) + 104) = *(*(a1 + 32) + 105);
      objc_sync_exit(v38);

      [*(a1 + 32) displayInDtrace];
      v39 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [*(a1 + 32) uniqueIdentifier];
        v41 = [v40 UUIDString];
        v42 = *(a1 + 32);
        *buf = 138543619;
        v78 = v41;
        v79 = 2113;
        v80 = v42;
        _os_log_impl(&dword_226A4E000, v39, OS_LOG_TYPE_DEBUG, "--- in async block, back from willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v7 = 0;
  v60 = 0;
  if ([*(a1 + 32) dirty])
  {
    goto LABEL_9;
  }

LABEL_50:
  if (*(a1 + 65) == 1)
  {
    v43 = *(a1 + 32);
    objc_sync_enter(v43);
    *(*(a1 + 32) + 106) = 0;
    v44 = *(a1 + 32);
    if (v44[104] == 1)
    {
      [v44 setDirty:1];
    }

    objc_sync_exit(v43);
  }

  v45 = _uaGetLogForCategory(@"signposts");
  v46 = v45;
  v47 = *(a1 + 56);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 67240192;
    LODWORD(v78) = v60;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v46, OS_SIGNPOST_INTERVAL_END, v47, "callWillSaveDelegate", "why=%{public}d enableTelemetry=YES ", buf, 8u);
  }

  v48 = [*(a1 + 32) userActivityInfoForSelfWithPayload:1 options:*(a1 + 40)];
  v49 = *(*(a1 + 48) + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v48;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = getUserActivityObserversCopy();
  v52 = 0;
  v53 = [v51 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v53)
  {
    v54 = *v63;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v63 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v62 + 1) + 8 * k);
        v57 = [*(a1 + 32) parentUserActivity];
        if (v57)
        {
          v58 = objc_opt_respondsToSelector();

          if (v58)
          {
            if (!v52)
            {
              v52 = [*(*(*(a1 + 48) + 8) + 40) archiveUserActivityInfo];
            }

            v59 = [*(a1 + 32) parentUserActivity];
            [v56 userActivityWasSerialized:v59 archived:v52];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v53);
  }
}

- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)data options:(id)options clearDirty:(BOOL)dirty completionHandler:(id)handler
{
  optionsCopy = options;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  willCallSaveSerializationQueue = [(UAUserActivity *)self willCallSaveSerializationQueue];
  dispatch_assert_queue_not_V2(willCallSaveSerializationQueue);

  v11 = _uaGetLogForCategory(@"signposts");
  v12 = os_signpost_id_make_with_pointer(v11, self);

  v13 = _uaGetLogForCategory(@"signposts");
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "callWillSaveDelegate", &unk_226A98EB7, buf, 2u);
  }

  willCallSaveSerializationQueue2 = [(UAUserActivity *)self willCallSaveSerializationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty_completionHandler___block_invoke;
  block[3] = &unk_2785C3A48;
  dataCopy = data;
  dirtyCopy = dirty;
  v21 = &v26;
  v22 = v12;
  block[4] = self;
  v20 = optionsCopy;
  v16 = optionsCopy;
  dispatch_sync(willCallSaveSerializationQueue2, block);

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __109__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty_completionHandler___block_invoke(uint64_t a1)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (![v3 isInvalidated])
    {
      goto LABEL_8;
    }

LABEL_5:
    oslog = _uaGetLogForCategory(0);
    v60 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) uniqueIdentifier];
      v6 = [v5 UUIDString];
      *buf = 138543362;
      v78 = v6;
      _os_log_impl(&dword_226A4E000, oslog, OS_LOG_TYPE_INFO, "Refusing to consider calling delegate for %{public}@ because it has been invalidated.", buf, 0xCu);

      v60 = 1;
    }

    goto LABEL_49;
  }

  v4 = [v3 needsSave];
  if ([*(a1 + 32) isInvalidated])
  {
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_8:
    v7 = 1;
LABEL_9:
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) needsSave];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      *buf = 138543618;
      v78 = v10;
      v79 = 2114;
      v80 = v12;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "for %{public}@: needsSave=%{public}@", buf, 0x16u);
    }

    if (*(a1 + 64))
    {
      v13 = 1000;
    }

    else
    {
      v13 = 0;
    }

    if ([*(a1 + 32) needsSave])
    {
      v14 = 100;
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 32) dirty])
    {
      v15 = 10;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    objc_sync_enter(v16);
    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 105) = 0;
    [*(a1 + 32) setCachedEncodedUserInfo:0];
    objc_sync_exit(v16);

    oslog = [*(a1 + 32) delegate];
    v60 = v14 + v13 + v15;
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v17 = *(a1 + 32);
      objc_sync_enter(v17);
      ++*(*(a1 + 32) + 120);
      objc_sync_exit(v17);

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v18 = getUserActivityObserversCopy();
      v19 = [v18 countByEnumeratingWithState:&v70 objects:v76 count:16];
      if (v19)
      {
        v20 = *v71;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v71 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v70 + 1) + 8 * i);
            v23 = [*(a1 + 32) parentUserActivity];
            if (v23)
            {
              v24 = objc_opt_respondsToSelector();

              if (v24)
              {
                v25 = [*(a1 + 32) parentUserActivity];
                [v22 userActivityWillSynchronize:v25];
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v70 objects:v76 count:16];
        }

        while (v19);
      }

      v26 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 32) uniqueIdentifier];
        v28 = [v27 UUIDString];
        v29 = *(a1 + 32);
        *buf = 138543619;
        v78 = v28;
        v79 = 2113;
        v80 = v29;
        _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "--- in async block, calling willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }

      [oslog willSynchronizeActivity];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v30 = getUserActivityObserversCopy();
      v31 = [v30 countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v31)
      {
        v32 = *v67;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v67 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v66 + 1) + 8 * j);
            v35 = [*(a1 + 32) parentUserActivity];
            if (v35)
            {
              v36 = objc_opt_respondsToSelector();

              if (v36)
              {
                v37 = [*(a1 + 32) parentUserActivity];
                [v34 userActivityWasSynchronized:v37];
              }
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v31);
      }

      v38 = *(a1 + 32);
      objc_sync_enter(v38);
      --*(*(a1 + 32) + 120);
      *(*(a1 + 32) + 104) = *(*(a1 + 32) + 105);
      objc_sync_exit(v38);

      [*(a1 + 32) displayInDtrace];
      v39 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [*(a1 + 32) uniqueIdentifier];
        v41 = [v40 UUIDString];
        v42 = *(a1 + 32);
        *buf = 138543619;
        v78 = v41;
        v79 = 2113;
        v80 = v42;
        _os_log_impl(&dword_226A4E000, v39, OS_LOG_TYPE_DEBUG, "--- in async block, back from willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v7 = 0;
  v60 = 0;
  if ([*(a1 + 32) dirty])
  {
    goto LABEL_9;
  }

LABEL_50:
  if (*(a1 + 65) == 1)
  {
    v43 = *(a1 + 32);
    objc_sync_enter(v43);
    *(*(a1 + 32) + 106) = 0;
    v44 = *(a1 + 32);
    if (v44[104] == 1)
    {
      [v44 setDirty:1];
    }

    objc_sync_exit(v43);
  }

  v45 = _uaGetLogForCategory(@"signposts");
  v46 = v45;
  v47 = *(a1 + 56);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 67240192;
    LODWORD(v78) = v60;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v46, OS_SIGNPOST_INTERVAL_END, v47, "callWillSaveDelegate", "why=%{public}d enableTelemetry=YES ", buf, 8u);
  }

  v48 = [*(a1 + 32) userActivityInfoForSelfWithPayload:1 options:*(a1 + 40)];
  v49 = *(*(a1 + 48) + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v48;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = getUserActivityObserversCopy();
  v52 = 0;
  v53 = [v51 countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v53)
  {
    v54 = *v63;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v63 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v62 + 1) + 8 * k);
        v57 = [*(a1 + 32) parentUserActivity];
        if (v57)
        {
          v58 = objc_opt_respondsToSelector();

          if (v58)
          {
            if (!v52)
            {
              v52 = [*(*(*(a1 + 48) + 8) + 40) archiveUserActivityInfo];
            }

            v59 = [*(a1 + 32) parentUserActivity];
            [v56 userActivityWasSerialized:v59 archived:v52];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v53);
  }
}

- (void)sendUserActivityInfoToLSUserActivityd:(BOOL)activityd onAsyncQueue:(BOOL)queue
{
  queueCopy = queue;
  activitydCopy = activityd;
  v53 = *MEMORY[0x277D85DE8];
  needsSave = [(UAUserActivity *)self needsSave];
  if ([(UAUserActivity *)self isInvalidated])
  {
    selfCopy = _uaGetLogForCategory(0);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      *buf = 138543362;
      v46 = uUIDString;
      _os_log_impl(&dword_226A4E000, &selfCopy->super, OS_LOG_TYPE_ERROR, "sendUserActivityToServer, called on activity %{public}@ after it had been invalidated, so doing nothing.", buf, 0xCu);
    }
  }

  else
  {
    if (!needsSave && !activitydCopy)
    {
      return;
    }

    v11 = _uaGetLogForCategory(0);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if (queueCopy)
    {
      if (v12)
      {
        uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
        uUIDString2 = [uniqueIdentifier2 UUIDString];
        if (activitydCopy)
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        manager = [(UAUserActivity *)self manager];
        v17 = [manager userActivityIsActive:self];
        needsSave2 = [(UAUserActivity *)self needsSave];
        v19 = &stru_283A5A2C8;
        *buf = 138544130;
        v46 = uUIDString2;
        if (v17)
        {
          v19 = @" (is active)";
        }

        v47 = 2114;
        v48 = v15;
        if (needsSave2)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v49 = 2114;
        v50 = v19;
        v51 = 2114;
        v52 = v20;
        _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "--- on async queue, for %{public}@: makeActive=%{public}@%{public}@ needsSave=%{public}@", buf, 0x2Au);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (selfCopy->_sendToServerPending)
      {
        v21 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          uniqueIdentifier3 = [(UAUserActivity *)selfCopy uniqueIdentifier];
          uUIDString3 = [uniqueIdentifier3 UUIDString];
          *buf = 138543362;
          v46 = uUIDString3;
          _os_log_impl(&dword_226A4E000, v21, OS_LOG_TYPE_DEBUG, "skipping %{public}@ since there is already a save pending (_sendToServerPending==YES) for this user activity.", buf, 0xCu);
        }
      }

      else
      {
        selfCopy->_sendToServerPending = 1;
        manager2 = [(UAUserActivity *)selfCopy manager];
        serialQueueForSendingActivitiesToServer = [manager2 serialQueueForSendingActivitiesToServer];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __79__UAUserActivity_Internal__sendUserActivityInfoToLSUserActivityd_onAsyncQueue___block_invoke;
        v43[3] = &unk_2785C3760;
        v43[4] = selfCopy;
        v44 = activitydCopy;
        dispatch_async(serialQueueForSendingActivitiesToServer, v43);
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      if (v12)
      {
        uniqueIdentifier4 = [(UAUserActivity *)self uniqueIdentifier];
        uUIDString4 = [uniqueIdentifier4 UUIDString];
        if (activitydCopy)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        manager3 = [(UAUserActivity *)self manager];
        v28 = [manager3 userActivityIsActive:self];
        needsSave3 = [(UAUserActivity *)self needsSave];
        v30 = &stru_283A5A2C8;
        *buf = 138544130;
        v46 = uUIDString4;
        if (v28)
        {
          v30 = @" (is active)";
        }

        v47 = 2114;
        v48 = v26;
        if (needsSave3)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        v49 = 2114;
        v50 = v30;
        v51 = 2114;
        v52 = v31;
        _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "--- for %{public}@: makeActive=%{public}@%{public}@ needsSave=%{public}@", buf, 0x2Au);
      }

      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      if (activitydCopy)
      {
        v33 = 1;
      }

      else
      {
        manager4 = [(UAUserActivity *)selfCopy2 manager];
        activeUserActivityUUID = [manager4 activeUserActivityUUID];
        uniqueIdentifier5 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
        v33 = [activeUserActivityUUID isEqual:uniqueIdentifier5];
      }

      selfCopy2->_lastSaveTime = CFAbsoluteTimeGetCurrent();
      objc_sync_exit(selfCopy2);

      selfCopy = [(UAUserActivity *)selfCopy2 callWillSaveDelegateIfDirtyAndPackageUpData:activitydCopy options:0 clearDirty:1];
      v39 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier6 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
        uUIDString5 = [uniqueIdentifier6 UUIDString];
        *buf = 138543362;
        v46 = uUIDString5;
        _os_log_impl(&dword_226A4E000, v39, OS_LOG_TYPE_DEBUG, "--- clearing _sendToServerPending for %{public}@ because we're about to push this to the server.", buf, 0xCu);
      }

      selfCopy2->_sendToServerPending = 0;
      if (selfCopy)
      {
        manager5 = [(UAUserActivity *)selfCopy2 manager];
        [manager5 sendUserActivityInfoToLSUserActivityd:selfCopy makeCurrent:v33];
      }
    }
  }
}

void __79__UAUserActivity_Internal__sendUserActivityInfoToLSUserActivityd_onAsyncQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendUserActivityInfoToLSUserActivityd:*(a1 + 40) onAsyncQueue:0];

  objc_autoreleasePoolPop(v2);
}

- (int64_t)priority
{
  options = [(UAUserActivity *)self options];
  allKeys = [options allKeys];
  v5 = [allKeys containsObject:@"UserActivityPriority"];

  if (!v5)
  {
    return 0;
  }

  options2 = [(UAUserActivity *)self options];
  v7 = [options2 objectForKeyedSubscript:@"UserActivityPriority"];
  integerValue = [v7 integerValue];

  return integerValue;
}

+ (BOOL)checkWebpageURL:(id)l actionType:(unint64_t)type throwIfFailed:(BOOL)failed
{
  failedCopy = failed;
  lCopy = l;
  v9 = lCopy;
  v10 = 0;
  v11 = 1;
  if (lCopy && type != 10)
  {
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];
    v10 = [lowercaseString copy];

    if (v10)
    {
      allowedWebpageURLSchemes = [self allowedWebpageURLSchemes];
      v11 = [allowedWebpageURLSchemes containsObject:v10];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
    }

    if (failedCopy)
    {
      v16 = MEMORY[0x277CBEAD8];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSUserActivity.webpageURL scheme %@ is not allowed.", v10];
      v18 = [v16 exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
      v19 = v18;

      objc_exception_throw(v18);
    }
  }

LABEL_8:

  return v11;
}

- (void)advertiser:(id)advertiser didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  delegate = [(UAUserActivity *)self delegate];
  if (delegate)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__UAUserActivity_Internal__advertiser_didReceiveInputStream_outputStream___block_invoke;
    block[3] = &unk_2785C3A70;
    v12 = delegate;
    v13 = streamCopy;
    v14 = outputStreamCopy;
    dispatch_async(v10, block);
  }
}

void __74__UAUserActivity_Internal__advertiser_didReceiveInputStream_outputStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) didReceiveInputStream:*(a1 + 40) outputStream:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)isIndexPendingForUUID:(id)d
{
  dCopy = d;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = getIndexPendingQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZL21isIndexPendingForUUIDP6NSUUID_block_invoke;
  v7[3] = &unk_2785C3BD8;
  v8 = dCopy;
  v9 = &v10;
  v5 = dCopy;
  dispatch_sync(v4, v7);

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

+ (id)registerForSuggestedActionNudgeOfType:(unint64_t)type withOptions:(id)options block:(id)block
{
  blockCopy = block;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = suggestedActionNudgesQueue(blockCopy);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__UAUserActivity_Nudges__registerForSuggestedActionNudgeOfType_withOptions_block___block_invoke;
  v10[3] = &unk_2785C3A98;
  v11 = blockCopy;
  v12 = &v13;
  v7 = blockCopy;
  dispatch_sync(v6, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __82__UAUserActivity_Nudges__registerForSuggestedActionNudgeOfType_withOptions_block___block_invoke(uint64_t a1)
{
  if (!suggestedActionNudges)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = suggestedActionNudges;
    suggestedActionNudges = v2;
  }

  v4 = _ZZZ82__UAUserActivity_Nudges__registerForSuggestedActionNudgeOfType_withOptions_block__EUb_E7sNextID++;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [suggestedActionNudges count];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = springBoardEventToken == 0;
  }

  if (v9)
  {
    v10 = suggestedActionNudgesQueue(v8);
    notify_register_dispatch("com.apple.sharing.SpringBoard.startDiscovery", &springBoardEventToken, v10, &__block_literal_global_914);
  }

  v11 = suggestedActionNudges;
  v12 = _Block_copy(*(a1 + 32));
  v13 = *(*(*(a1 + 40) + 8) + 40);

  return [v11 setObject:v12 forKey:v13];
}

+ (void)unregisterForSuggestedActionNudgeOfType:(id)type
{
  typeCopy = type;
  v4 = suggestedActionNudgesQueue(typeCopy);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__UAUserActivity_Nudges__unregisterForSuggestedActionNudgeOfType___block_invoke;
  block[3] = &unk_2785C37B0;
  v7 = typeCopy;
  v5 = typeCopy;
  dispatch_sync(v4, block);
}

uint64_t __66__UAUserActivity_Nudges__unregisterForSuggestedActionNudgeOfType___block_invoke(uint64_t a1)
{
  v2 = [suggestedActionNudges objectForKey:*(a1 + 32)];
  if (v2)
  {
    _Block_release(v2);
  }

  [suggestedActionNudges removeObjectForKey:*(a1 + 32)];
  result = [suggestedActionNudges count];
  if (!result)
  {
    result = springBoardEventToken;
    if (springBoardEventToken)
    {
      result = notify_cancel(springBoardEventToken);
      springBoardEventToken = 0;
    }
  }

  return result;
}

+ (BOOL)currentUserActivityUUIDWithOptions:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v7 = +[UAUserActivityManager defaultManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__UAUserActivity_UAUserActivityReminders__currentUserActivityUUIDWithOptions_completionHandler___block_invoke;
  v11[3] = &unk_2785C3AC0;
  v8 = handlerCopy;
  v12 = v8;
  v9 = [v7 currentUserActivityUUIDWithOptions:optionsCopy completionHandler:v11];

  return v9;
}

+ (BOOL)determineIfUserActivityIsCurrent:(id)current completionHandler:(id)handler
{
  currentCopy = current;
  handlerCopy = handler;
  v7 = +[UAUserActivityManager defaultManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__UAUserActivity_UAUserActivityReminders__determineIfUserActivityIsCurrent_completionHandler___block_invoke;
  v11[3] = &unk_2785C3AE8;
  v8 = handlerCopy;
  v12 = v8;
  v9 = [v7 determineIfUserActivityIsCurrent:currentCopy completionHandler:v11];

  return v9;
}

+ (BOOL)currentUserActivityProxiesWithOptions:(id)options matching:(id)matching completionHandler:(id)handler
{
  optionsCopy = options;
  matchingCopy = matching;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10 = +[UAUserActivityManager defaultManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __108__UAUserActivity_UAUserActivityReminders__currentUserActivityProxiesWithOptions_matching_completionHandler___block_invoke;
    v12[3] = &unk_2785C3B10;
    v13 = handlerCopy;
    [v10 currentUserActivityProxiesWithOptions:optionsCopy predicate:matchingCopy completionHandler:v12];
  }

  return handlerCopy != 0;
}

void __108__UAUserActivity_UAUserActivityReminders__currentUserActivityProxiesWithOptions_matching_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 description];
      v9 = stringRemovingNewlines(v8);
      v10 = 138543618;
      v11 = v9;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_ERROR, " proxies=%{public}@ error=%{public}@", &v10, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)setContentUserAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(actionCopy, selfCopy->_contentUserAction))
  {
    v5 = [(objc_object *)actionCopy copy];
    contentUserAction = selfCopy->_contentUserAction;
    selfCopy->_contentUserAction = v5;

    [(UAUserActivity *)selfCopy setDirty:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)setExpirationDate:(id)date
{
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(dateCopy, selfCopy->_expirationDate))
  {
    v5 = [(objc_object *)dateCopy copy];
    expirationDate = selfCopy->_expirationDate;
    selfCopy->_expirationDate = v5;

    [(UAUserActivity *)selfCopy setForceImmediateSendToServer:1];
    [(UAUserActivity *)selfCopy setDirty:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)setKeywords:(id)keywords
{
  keywordsCopy = keywords;
  if (keywordsCopy)
  {
    v9 = keywordsCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CBEB98] setWithArray:v9];

      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(v9, selfCopy->_keywords))
  {
    if (v9)
    {
      v7 = [(objc_object *)v9 copy];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] set];
    }

    keywords = selfCopy->_keywords;
    selfCopy->_keywords = v7;

    [(UAUserActivity *)selfCopy setDirty:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)setRequiredUserInfoKeys:(id)keys
{
  keysCopy = keys;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (differ(keysCopy, selfCopy->_requiredUserInfoKeys))
  {
    v5 = keysCopy;
    if (keysCopy)
    {
      v5 = [(objc_object *)keysCopy copy];
    }

    requiredUserInfoKeys = selfCopy->_requiredUserInfoKeys;
    selfCopy->_requiredUserInfoKeys = v5;

    savedUserInfo = selfCopy->_savedUserInfo;
    selfCopy->_savedUserInfo = 0;

    [(UAUserActivity *)selfCopy setDirty:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)addKeywordsFromArray:(id)array
{
  arrayCopy = array;
  if (arrayCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = [MEMORY[0x277CBEB58] setWithSet:selfCopy->_keywords];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __63__UAUserActivity_UAUserActivityAppLinks__addKeywordsFromArray___block_invoke;
    v13 = &unk_2785C3B38;
    v7 = v6;
    v14 = v7;
    v15 = &v16;
    [arrayCopy enumerateObjectsUsingBlock:&v10];
    if (*(v17 + 24) == 1)
    {
      v8 = [v7 copy];
      keywords = selfCopy->_keywords;
      selfCopy->_keywords = v8;

      [(UAUserActivity *)selfCopy setDirty:1];
    }

    _Block_object_dispose(&v16, 8);
    objc_sync_exit(selfCopy);
  }
}

void __63__UAUserActivity_UAUserActivityAppLinks__addKeywordsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 32) containsObject:v3] & 1) == 0)
    {
      [*(a1 + 32) addObject:v3];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)setEligibleForHandoff:(BOOL)handoff
{
  handoffCopy = handoff;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForHandoff != handoffCopy)
  {
    obj->_eligibleForHandoff = handoffCopy;
    [(UAUserActivity *)obj setDirty:1];
    [(UAUserActivity *)obj setForceImmediateSendToServer:1];
    manager = [(UAUserActivity *)obj manager];
    v5 = [manager userActivityIsActive:obj];

    if (v5)
    {
      [(UAUserActivity *)obj scheduleSendUserActivityInfoToLSUserActivityd];
    }
  }

  objc_sync_exit(obj);
}

- (void)setEligibleForSearch:(BOOL)search
{
  searchCopy = search;
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_eligibleForSearch != searchCopy)
  {
    v5 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v8 = uUIDString;
      v9 = "NO";
      if (searchCopy)
      {
        v9 = "YES";
      }

      v12 = 138543618;
      v13 = uUIDString;
      v14 = 2080;
      v15 = v9;
      _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setEligibleForSearch(%{public}@)=%s", &v12, 0x16u);
    }

    selfCopy->_eligibleForSearch = searchCopy;
  }

  if (searchCopy)
  {
    manager = [(UAUserActivity *)selfCopy manager];
    v11 = [manager userActivityIsActive:selfCopy];

    if (v11)
    {
      [(UAUserActivity *)selfCopy indexActivity:1 forceIndexing:0.0];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setEligibleForReminders:(BOOL)reminders
{
  remindersCopy = reminders;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForReminders != remindersCopy)
  {
    obj->_eligibleForReminders = remindersCopy;
    [(UAUserActivity *)obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (void)setEligibleForPublicIndexing:(BOOL)indexing
{
  indexingCopy = indexing;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForPublicIndexing != indexingCopy)
  {
    obj->_eligibleForPublicIndexing = indexingCopy;
    [(UAUserActivity *)obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (UAUserActivity)initWithUserActivityStrings:(id)strings optionalString:(id)string tertiaryData:(id)data options:(id)options
{
  v73 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  stringCopy = string;
  dataCopy = data;
  optionsCopy = options;
  v55 = stringsCopy;
  selfCopy = self;
  if (([stringsCopy hasPrefix:@"v1/"] & 1) == 0 && (!objc_msgSend(stringsCopy, "hasPrefix:", @"v1.") || !objc_msgSend(stringsCopy, "containsString:", @"/")))
  {
    v59 = 0;
    v60 = 0;
    v61 = 0;
    obj = 0;
    v56 = 0;
    v53 = 0;
    v22 = 0;
    selfCopy3 = self;
    goto LABEL_80;
  }

  v11 = [MEMORY[0x277CCAC80] scannerWithString:stringsCopy];
  v71 = 0;
  [v11 scanUpToString:@"/" intoString:&v71];
  v62 = v71;
  [v11 scanString:@"/" intoString:0];
  v70 = 0;
  v12 = [v11 scanUpToString:@"/" intoString:&v70];
  v13 = v70;
  v61 = v13;
  if (v12)
  {
    stringByRemovingPercentEncoding = [v13 stringByRemovingPercentEncoding];

    v61 = stringByRemovingPercentEncoding;
    [v11 scanString:@"/" intoString:0];
  }

  bOOLValue = 0;
  v53 = 0;
  v56 = 0;
  v59 = 0;
  v60 = 0;
  obj = 0;
  while (([v11 isAtEnd] & 1) == 0 && (objc_msgSend(v11, "scanString:intoString:", @"/", 0) & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"=&/"];
    v69 = 0;
    v16 = [v11 scanUpToCharactersFromSet:v15 intoString:&v69];
    v17 = v69;

    if (!v16 || ![v11 scanString:@"=" intoString:0] || (+[UAUserActivity _decodeFromScanner:](UAUserActivity, "_decodeFromScanner:", v11), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_35:

      break;
    }

    if ([v17 isEqual:@"t"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = obj;
        obj = v18;
LABEL_25:
        v20 = v18;

        goto LABEL_26;
      }
    }

    if ([v17 isEqual:@"u"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v60;
        v60 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"url"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v59;
        v59 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"referrer"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v56;
        v56 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"targetIdentifier"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v53;
        v53 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"universalLink"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [v18 BOOLValue];
      }
    }

LABEL_26:

    if ([v11 isAtEnd])
    {
      goto LABEL_35;
    }

    v21 = [v11 scanString:@"&" intoString:0];

    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  if (v60)
  {
    v24 = MEMORY[0x277CBEB98];
    allKeys = [v60 allKeys];
    v22 = [v24 setWithArray:allKeys];
  }

  else
  {
    v22 = 0;
  }

  if (stringCopy && v61)
  {
    v63 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
    while (([v63 isAtEnd] & 1) == 0)
    {
      if ([v63 isAtEnd])
      {
        v28 = 0;
LABEL_71:

        break;
      }

      v26 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"=&/"];
      v68 = 0;
      v27 = [v63 scanUpToCharactersFromSet:v26 intoString:&v68];
      v28 = v68;

      if (!v27)
      {
        goto LABEL_71;
      }

      if ([v63 scanString:@"=" intoString:0])
      {
        v54 = [UAUserActivity _decodeFromScanner:v63];
        if ([v28 isEqual:@"ue"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v60)
            {
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
            }

            else
            {
              [MEMORY[0x277CBEB38] dictionary];
            }
            v29 = ;
            v30 = v54;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            allKeys2 = [v30 allKeys];
            v32 = [allKeys2 countByEnumeratingWithState:&v64 objects:v72 count:16];
            if (v32)
            {
              v33 = *v65;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v65 != v33)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v35 = *(*(&v64 + 1) + 8 * i);
                  if (([v22 containsObject:v35] & 1) == 0)
                  {
                    v36 = [v30 objectForKeyedSubscript:v35];
                    [v29 setObject:v36 forKeyedSubscript:v35];
                  }
                }

                v32 = [allKeys2 countByEnumeratingWithState:&v64 objects:v72 count:16];
              }

              while (v32);
            }

            [(UAUserActivity *)selfCopy setRequiredUserInfoKeys:v22];
            v37 = [v29 copy];

            v60 = v37;
          }
        }
      }

      if (([v63 scanString:@"&" intoString:0] & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    if (!v59)
    {
LABEL_73:
      selfCopy3 = 0;
      v38 = selfCopy;
LABEL_74:
      if ([optionsCopy count])
      {
        v39 = optionsCopy;
      }

      else
      {
        v39 = 0;
      }

      v40 = [(UAUserActivity *)v38 initDynamicActivityWithTypeIdentifier:v61 dynamicIdentifier:0 suggestedActionType:1 options:v39];
      v41 = v40;
      if (v40)
      {
        objc_storeStrong((v40 + 16), obj);
        if (v60)
        {
          dictionary = [v60 copy];
        }

        else
        {
          dictionary = [MEMORY[0x277CBEAC0] dictionary];
        }

        userInfo = v41->_userInfo;
        v41->_userInfo = dictionary;

        [(UAUserActivity *)v41 setWebpageURL:selfCopy3];
        if (v56)
        {
          v44 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v56];
        }

        else
        {
          v44 = 0;
        }

        [(UAUserActivity *)v41 setReferrerURL:v44];
        if (v56)
        {
        }

        if (v22)
        {
          v45 = [v22 copy];
        }

        else
        {
          v45 = [MEMORY[0x277CBEB98] set];
        }

        requiredUserInfoKeys = v41->_requiredUserInfoKeys;
        v41->_requiredUserInfoKeys = v45;

        [(UAUserActivity *)v41 setTargetContentIdentifier:v53];
        [(UAUserActivity *)v41 setUniversalLink:bOOLValue & 1];
        selfCopy = v41;
        goto LABEL_91;
      }

LABEL_80:
      selfCopy = 0;
      goto LABEL_91;
    }
  }

  else
  {
    if (!v61)
    {
      v61 = 0;
      selfCopy3 = self;
      goto LABEL_80;
    }

    if (!v59)
    {
      goto LABEL_73;
    }
  }

  v38 = selfCopy;
  selfCopy3 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v59];
  if (!selfCopy3 || [objc_opt_class() checkWebpageURL:selfCopy3 actionType:1 throwIfFailed:0])
  {
    goto LABEL_74;
  }

LABEL_91:

  v47 = selfCopy;
  return v47;
}

- (UAUserActivity)initWithUserActivityData:(id)data options:(id)options
{
  dataCopy = data;
  if (dataCopy)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:dataCopy error:0];
    v7 = objc_opt_class();
    v8 = *MEMORY[0x277CCA308];
    v15 = 0;
    v9 = [v6 decodeTopLevelObjectOfClass:v7 forKey:v8 error:&v15];
    v10 = v15;
    if (v9)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      [v9 setUuid:uUID];

      selfCopy = +[UAUserActivityManager defaultManager];
      v13 = [(UAUserActivity *)self initWithManager:selfCopy userActivityInfo:v9];
    }

    else
    {
      selfCopy = self;
      v13 = 0;
    }

    [v6 finishDecoding];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (id)_encodeIntoUserActivityStringWithSave:(BOOL)save options:(id)options optionalString:(id *)string optionalData:(id *)data error:(id *)error
{
  v10 = [(UAUserActivity *)self callWillSaveDelegateIfDirtyAndPackageUpData:save options:options clearDirty:save];
  if (!v10)
  {
    v14 = 0;
    goto LABEL_23;
  }

  string = [MEMORY[0x277CCAB68] string];
  if (!string)
  {
    string2 = 0;
    if (data)
    {
      goto LABEL_4;
    }

LABEL_7:
    data = 0;
    goto LABEL_8;
  }

  string2 = [MEMORY[0x277CCAB68] string];
  if (!data)
  {
    goto LABEL_7;
  }

LABEL_4:
  data = [MEMORY[0x277CBEB28] data];
LABEL_8:
  [v10 _createUserActivityStrings:string secondaryString:string2 optionalData:data];
  if (!string || ![string length])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:0];
      *error = v14 = 0;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_22;
  }

  v14 = [string copy];
  if (!string)
  {
LABEL_13:
    if (data)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if ([string2 length])
  {
    v15 = [string2 copy];
    *string = v15;

    goto LABEL_13;
  }

  *string = 0;
  if (data)
  {
LABEL_14:
    if ([data length])
    {
      v16 = [data copy];
      *data = v16;
    }

    else
    {
      *data = 0;
    }
  }

LABEL_22:

LABEL_23:

  return v14;
}

- (BOOL)_encodeIntoUserActivityStringWithSave:(BOOL)save options:(id)options completionHandler:(id)handler
{
  saveCopy = save;
  handlerCopy = handler;
  v9 = [(UAUserActivity *)self callWillSaveDelegateIfDirtyAndPackageUpData:saveCopy options:options clearDirty:saveCopy];
  if (v9)
  {
    string = [MEMORY[0x277CCAB68] string];
    string2 = [MEMORY[0x277CCAB68] string];
    data = [MEMORY[0x277CBEB28] data];
    [v9 _createUserActivityStrings:string secondaryString:string2 optionalData:data];
    if (!string || ![string length])
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v13);
LABEL_15:

      goto LABEL_16;
    }

    v13 = [string copy];
    if (string2 && [string2 length])
    {
      v14 = [string2 copy];
      v15 = 1;
      if (!data)
      {
LABEL_7:
        v16 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v15 = 0;
      v14 = 0;
      if (!data)
      {
        goto LABEL_7;
      }
    }

    if ([data length])
    {
      v16 = data;
    }

    else
    {
      v16 = 0;
    }

LABEL_13:
    (*(handlerCopy + 2))(handlerCopy, v13, v14, v16, 0);
    if (v15)
    {
    }

    goto LABEL_15;
  }

LABEL_16:

  return v9 != 0;
}

- (id)createUserActivityStringsWithSaving:(BOOL)saving options:(id)options optionalString:(id *)string data:(id *)data error:(id *)error
{
  savingCopy = saving;
  optionsCopy = options;
  v13 = savingCopy && [(UAUserActivity *)self needsSave];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = [(UAUserActivity *)self _encodeIntoUserActivityStringWithSave:v13 options:optionsCopy optionalString:&v24 optionalData:&v23 error:&v22];
  v14 = v24;
  v15 = v24;
  v16 = v23;
  v17 = v23;
  v18 = v22;
  v19 = v22;
  if (string)
  {
    objc_storeStrong(string, v14);
  }

  if (data)
  {
    objc_storeStrong(data, v16);
  }

  if (error)
  {
    objc_storeStrong(error, v18);
  }

  return v21;
}

- (BOOL)createUserActivityStringsWithSaving:(BOOL)saving options:(id)options completionHandler:(id)handler
{
  savingCopy = saving;
  optionsCopy = options;
  handlerCopy = handler;
  if (savingCopy && [(UAUserActivity *)self needsSave])
  {
    v10 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __112__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityStringsWithSaving_options_completionHandler___block_invoke;
    v13[3] = &unk_2785C3B88;
    v13[4] = self;
    v16 = savingCopy;
    v14 = optionsCopy;
    v15 = handlerCopy;
    dispatch_async(v10, v13);

    v11 = 1;
  }

  else
  {
    v11 = [(UAUserActivity *)self _encodeIntoUserActivityStringWithSave:0 options:optionsCopy completionHandler:handlerCopy];
  }

  return v11;
}

void __112__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityStringsWithSaving_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __112__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityStringsWithSaving_options_completionHandler___block_invoke_2;
  v6[3] = &unk_2785C3B60;
  v7 = *(a1 + 48);
  if (([v4 _encodeIntoUserActivityStringWithSave:v3 options:v5 completionHandler:v6] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (id)_encodeIntoUserActivityDataWithSave:(BOOL)save options:(id)options error:(id *)error
{
  saveCopy = save;
  optionsCopy = options;
  if (saveCopy)
  {
    [(UAUserActivity *)self callWillSaveDelegateIfDirtyAndPackageUpData:1 options:optionsCopy clearDirty:0];
  }

  else
  {
    [(UAUserActivity *)self userActivityInfoForSelfWithPayload:1 options:optionsCopy];
  }
  v8 = ;
  [v8 setUuid:0];
  v9 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v9 encodeObject:v8 forKey:*MEMORY[0x277CCA308]];
  [v9 finishEncoding];
  encodedData = [v9 encodedData];

  return encodedData;
}

- (id)createUserActivityDataWithSaving:(BOOL)saving options:(id)options error:(id *)error
{
  savingCopy = saving;
  optionsCopy = options;
  v9 = savingCopy && [(UAUserActivity *)self needsSave];
  v10 = [(UAUserActivity *)self _encodeIntoUserActivityDataWithSave:v9 options:optionsCopy error:error];

  return v10;
}

- (BOOL)createUserActivityDataWithSaving:(BOOL)saving options:(id)options completionHandler:(id)handler
{
  savingCopy = saving;
  optionsCopy = options;
  handlerCopy = handler;
  if (savingCopy && [(UAUserActivity *)self needsSave])
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityDataWithSaving_options_completionHandler___block_invoke;
    block[3] = &unk_2785C3B88;
    block[4] = self;
    v18 = savingCopy;
    v16 = optionsCopy;
    v17 = handlerCopy;
    dispatch_async(v10, block);
  }

  else
  {
    v14 = 0;
    v11 = [(UAUserActivity *)self _encodeIntoUserActivityDataWithSave:0 options:optionsCopy error:&v14];
    v12 = v14;
    (*(handlerCopy + 2))(handlerCopy, v11, v12);
  }

  return 1;
}

void __109__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityDataWithSaving_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v4 _encodeIntoUserActivityDataWithSave:v3 options:v5 error:&v8];
  v7 = v8;
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (id)_encodeToString:(id)string
{
  v61 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (stringCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
      absoluteString = {;
      v5 = MEMORY[0x277CCACA8];
      v6 = [stringCopy stringByAddingPercentEncodingWithAllowedCharacters:absoluteString];
      v7 = [v5 stringWithFormat:@"'%@'", v6];
LABEL_4:
      stringValue = v7;
LABEL_5:

LABEL_6:
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v10 = stringCopy;
      v11 = [v10 countByEnumeratingWithState:&v54 objects:v60 count:16];
      if (v11)
      {
        v12 = 0;
        v13 = *v55;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v55 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [UAUserActivity _encodeToString:*(*(&v54 + 1) + 8 * i)];
            if (v12)
            {
              [v9 appendString:{@", "}];
            }

            [v9 appendString:v15];

            v12 = 1;
          }

          v11 = [v10 countByEnumeratingWithState:&v54 objects:v60 count:16];
        }

        while (v11);
      }

      [v9 appendString:@""]);
      stringValue = [v9 copy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"{(");
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        allObjects = [stringCopy allObjects];
        v18 = sortedArrayIfSameClass(allObjects);

        v19 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (v19)
        {
          v20 = 0;
          v21 = *v51;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v51 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [self _encodeToString:*(*(&v50 + 1) + 8 * j)];
              if (v20)
              {
                [v16 appendString:{@", "}];
              }

              [v16 appendString:v23];

              v20 = 1;
            }

            v19 = [v18 countByEnumeratingWithState:&v50 objects:v59 count:16];
          }

          while (v19);
        }

        [v16 appendString:@"}"]);
        stringValue = [v16 copy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [MEMORY[0x277CCAB68] stringWithString:@"{"];
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          allKeys = [stringCopy allKeys];
          v26 = sortedArrayIfSameClass(allKeys);

          obj = v26;
          v27 = [v26 countByEnumeratingWithState:&v46 objects:v58 count:16];
          if (v27)
          {
            v28 = 0;
            v29 = *v47;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v47 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v46 + 1) + 8 * k);
                v32 = [stringCopy objectForKey:v31];
                if (v28)
                {
                  [v24 appendString:{@", "}];
                }

                v33 = [self _encodeToString:v32];
                v34 = [self _encodeToString:v31];
                v35 = v34;
                uTF8String = [v34 UTF8String];
                v37 = v33;
                [v24 appendFormat:@"%s=%s", uTF8String, objc_msgSend(v33, "UTF8String")];

                v28 = 1;
              }

              v26 = obj;
              v27 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
            }

            while (v27);
          }

          [v24 appendString:@"}"];
          stringValue = [v24 copy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            stringValue = [stringCopy stringValue];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v39 = MEMORY[0x277CCACA8];
              absoluteString = [stringCopy base64EncodedStringWithOptions:0];
              stringValue = [v39 stringWithFormat:@"$%s$", objc_msgSend(absoluteString, "UTF8String")];
              goto LABEL_6;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              absoluteString = objc_alloc_init(MEMORY[0x277CCA968]);
              [absoluteString setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
              v40 = MEMORY[0x277CCACA8];
              v6 = [absoluteString stringFromDate:stringCopy];
              v7 = [v40 stringWithFormat:@"^d%@^", v6];
              goto LABEL_4;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              absoluteString = [stringCopy absoluteString];
              v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789."];
              v41 = MEMORY[0x277CCACA8];
              v42 = [absoluteString stringByAddingPercentEncodingWithAllowedCharacters:v6];
              stringValue = [v41 stringWithFormat:@"^url^%@%%%%^", v42];

              goto LABEL_5;
            }

            null = [MEMORY[0x277CBEB68] null];

            if (null == stringCopy)
            {
              stringValue = @"--";
            }

            else
            {
              stringValue = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    stringValue = 0;
  }

LABEL_43:

  return stringValue;
}

+ (id)_encodeKeyAndValueIntoString:(id)string value:(id)value
{
  stringCopy = string;
  v7 = [self _encodeToString:value];
  v8 = [self _encodeToString:stringCopy];
  v9 = v8;
  v10 = &stru_283A5A2C8;
  if (v8 && v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s=%s", objc_msgSend(v8, "UTF8String"), objc_msgSend(v7, "UTF8String")];
  }

  return v10;
}

+ (id)_decodeFromScanner:(id)scanner
{
  scannerCopy = scanner;
  if ([scannerCopy scanString:@"--" intoString:0])
  {
    v5 = 0;
    null = [MEMORY[0x277CBEB68] null];
LABEL_3:
    v7 = null;
    goto LABEL_51;
  }

  if (![scannerCopy scanString:@"'" intoString:0])
  {
    if ([scannerCopy scanString:@"$" intoString:0])
    {
      v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"$"];
      v32 = 0;
      v10 = [scannerCopy scanUpToCharactersFromSet:v9 intoString:&v32];
      array = v32;

      if (v10)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:array options:0];
      }

      else
      {
        v7 = 0;
      }

      [scannerCopy scanString:@"$" intoString:0];
      goto LABEL_50;
    }

    if ([scannerCopy scanString:@"{(" intoString:0)]
    {
      array = [MEMORY[0x277CBEB58] set];
      if (array)
      {
LABEL_15:
        if (([scannerCopy scanString:@"}" intoString:?], 0) & 1) == 0)
        {
          while (1)
          {
            v12 = [self _decodeFromScanner:scannerCopy];
            if (!v12)
            {
              break;
            }

            [array addObject:v12];

            if (([scannerCopy scanString:@" intoString:{", 0}] & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          array = 0;
        }
      }

LABEL_49:
      v7 = [array copy];
LABEL_50:

      v5 = 0;
      goto LABEL_51;
    }

    if ([scannerCopy scanString:@"(" intoString:0)]
    {
      array = [MEMORY[0x277CBEB18] array];
      if (array)
      {
LABEL_24:
        if (([scannerCopy isAtEnd] & 1) == 0 && (objc_msgSend(scannerCopy, "scanString:intoString:", @""), 0) & 1) == 0)
        {
          while (1)
          {
            v13 = [self _decodeFromScanner:scannerCopy];
            if (!v13)
            {
              break;
            }

            [array addObject:v13];

            if (([scannerCopy scanString:@" intoString:{", 0}] & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          array = 0;
        }
      }

      goto LABEL_49;
    }

    if ([scannerCopy scanString:@"{" intoString:0])
    {
      array = [MEMORY[0x277CBEB38] dictionary];
      if (array)
      {
LABEL_35:
        if (([scannerCopy isAtEnd] & 1) == 0 && (objc_msgSend(scannerCopy, "scanString:intoString:", @"}", 0) & 1) == 0)
        {
          while (1)
          {
            v14 = [self _decodeFromScanner:scannerCopy];
            if (!v14)
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (![scannerCopy scanString:@"=" intoString:0])
            {
              break;
            }

            v15 = [self _decodeFromScanner:scannerCopy];
            if (!v15)
            {
              break;
            }

            [array setObject:v15 forKey:v14];

            if (([scannerCopy scanString:@" intoString:{", 0}] & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          array = 0;
        }
      }

      goto LABEL_49;
    }

    v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789.-"];
    v31 = 0;
    v17 = [scannerCopy scanCharactersFromSet:v16 intoString:&v31];
    v5 = v31;

    if (v17)
    {
      if (![v5 containsString:@"."])
      {
        if ([v5 containsString:@"-"])
        {
          null = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
        }

        else
        {
          v27 = 0;
          for (i = 0; i < [v5 length]; ++i)
          {
            v27 = 10 * v27 + [v5 characterAtIndex:i] - 48;
          }

          null = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
        }

        goto LABEL_3;
      }

      v18 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v7 = [v18 numberFromString:v5];
      goto LABEL_63;
    }

    if ([scannerCopy scanString:@"^d" intoString:0])
    {
      v20 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789-"];
      v30 = 0;
      v21 = [scannerCopy scanCharactersFromSet:v20 intoString:&v30];
      v18 = v30;

      if (v21)
      {
        v22 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v22 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
        v7 = [v22 dateFromString:v18];
        [scannerCopy scanString:@"^" intoString:0];

LABEL_63:
        goto LABEL_51;
      }
    }

    else
    {
      if (![scannerCopy scanString:@"^url^" intoString:0])
      {
        goto LABEL_12;
      }

      v29 = 0;
      v23 = [scannerCopy scanUpToString:@"%%^" intoString:&v29];
      v24 = v29;
      v18 = v24;
      if (v23)
      {
        v25 = MEMORY[0x277CBEBC0];
        stringByRemovingPercentEncoding = [v24 stringByRemovingPercentEncoding];
        v7 = [v25 URLWithString:stringByRemovingPercentEncoding];

        [scannerCopy scanString:@"%%^" intoString:0];
        goto LABEL_63;
      }
    }

    v7 = 0;
    goto LABEL_63;
  }

  v33 = 0;
  v8 = [scannerCopy scanUpToString:@"'" intoString:&v33];
  v5 = v33;
  if (v8)
  {
    if ([scannerCopy scanString:@"'" intoString:0])
    {
      null = [v5 stringByRemovingPercentEncoding];
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  if ([scannerCopy isAtEnd])
  {
LABEL_12:
    v7 = 0;
    goto LABEL_51;
  }

  if ([scannerCopy scanString:@"'" intoString:0])
  {
    v7 = &stru_283A5A2C8;
  }

  else
  {
    v7 = 0;
  }

LABEL_51:

  return v7;
}

+ (id)_decodeFromString:(id)string
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:string];
  v4 = [UAUserActivity _decodeFromScanner:v3];

  return v4;
}

+ (id)_decodeFromEntireString:(id)string
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:string];
  v4 = [UAUserActivity _decodeFromScanner:v3];
  if (v4 && ([v3 isAtEnd] & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

+ (BOOL)registerAsProxyForApplication:(int)application options:(id)options completionBlock:(id)block
{
  v6 = *&application;
  optionsCopy = options;
  blockCopy = block;
  v9 = +[UAUserActivityManager defaultManager];
  LOBYTE(v6) = [v9 registerAsProxyForApplication:v6 options:optionsCopy completionBlock:blockCopy];

  return v6;
}

- (void)setContentAttributeSet:(id)set
{
  v21 = *MEMORY[0x277D85DE8];
  setCopy = set;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = [(UAUserActivity *)selfCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v17 = 138543619;
    v18 = uUIDString;
    v19 = 2113;
    v20 = setCopy;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "setContentAttributeSet(%{public}@,%{private}@))", &v17, 0x16u);
  }

  v9 = [(UAUserActivity *)selfCopy objectForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  v10 = v9;
  if (setCopy || !v9)
  {
    if (setCopy && !v9 || setCopy && (v9 = [setCopy isEqual:v9], (v9 & 1) == 0))
    {
      v11 = biomeInfoLogging(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        uniqueIdentifier2 = [(UAUserActivity *)selfCopy uniqueIdentifier];
        v17 = 138543362;
        v18 = uniqueIdentifier2;
        _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ SETCONTENTATTRIBUTESET", &v17, 0xCu);
      }

      v13 = [setCopy copy];
      [(UAUserActivity *)selfCopy setPayloadIdentifier:@"UAUserActivityContentAttributeSetPayloadKey" object:v13 withBlock:&__block_literal_global_0];

      [(UAUserActivity *)selfCopy setDirty:1];
    }
  }

  else
  {
    [(UAUserActivity *)selfCopy setPayload:0 object:0 identifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  }

  objc_sync_exit(selfCopy);
  manager = [(UAUserActivity *)selfCopy manager];
  v15 = [manager userActivityIsActive:selfCopy];

  if (v15)
  {
    manager2 = [(UAUserActivity *)selfCopy manager];
    [manager2 registerForApplicationDeactivateIfNecessary];

    [(UAUserActivity *)selfCopy indexActivity:1 forceIndexing:0.5];
  }
}

void __85__UAUserActivity_UAUserActivityCoreSpotlightIndexingSupport__setContentAttributeSet___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v12 encodeObject:v9 forKey:*MEMORY[0x277CCA308]];
  [v12 finishEncoding];
  v13 = [v12 encodedData];
  (*(v11 + 2))(v11, v10, v13, 0, 0);
}

- (void)updateForwardToCoreSpotlightIndexer:(char)indexer
{
  indexerCopy = indexer;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj->_forwardToCoreSpotlightIndexerCount + indexerCopy;
  obj->_forwardToCoreSpotlightIndexerCount = v4;
  if (v4)
  {
    manager = [(UAUserActivity *)obj manager];
    v6 = [manager userActivityIsActive:obj];

    manager2 = [(UAUserActivity *)obj manager];
    [manager2 registerForApplicationDeactivateIfNecessary];

    objc_sync_exit(obj);
    if (v6)
    {

      [(UAUserActivity *)obj indexActivity:1 forceIndexing:0.0];
    }
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)indexActivity:(double)activity forceIndexing:(BOOL)indexing
{
  indexingCopy = indexing;
  v45 = *MEMORY[0x277D85DE8];
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = [(UAUserActivity *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    v10 = "NO";
    *buf = 138543874;
    v40 = uUIDString;
    if (indexingCopy)
    {
      v10 = "YES";
    }

    v41 = 2048;
    activityCopy2 = activity;
    v43 = 2082;
    v44 = v10;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "indexActivity(%{public}@} delay=%f forceIndexing:%{public}s", buf, 0x20u);
  }

  if (self->_indexInProcess)
  {
    manager = _uaGetLogForCategory(0);
    if (os_log_type_enabled(manager, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier2 = [(UAUserActivity *)self uniqueIdentifier];
      uUIDString2 = [uniqueIdentifier2 UUIDString];
      *buf = 138543362;
      v40 = uUIDString2;
      _os_log_impl(&dword_226A4E000, manager, OS_LOG_TYPE_DEBUG, "indexActivity: %{public}@, _indexInProcess == YES so doing nothing.,", buf, 0xCu);
    }
  }

  else if ([(UAUserActivity *)self forwardToCoreSpotlightIndexer]&& (indexingCopy || [(UAUserActivity *)self dirty]&& (activity <= 0.0 || ([(UAUserActivity *)self uniqueIdentifier], v26 = objc_claimAutoreleasedReturnValue(), v27 = [UAUserActivity isIndexPendingForUUID:v26], v26, !v27))))
  {
    manager = [(UAUserActivity *)self manager];
    uniqueIdentifier3 = [(UAUserActivity *)self uniqueIdentifier];
    if (-[UAUserActivity needsSave](self, "needsSave") || -[UAUserActivity dirty](self, "dirty") || (-[UAUserActivity dirtyPayloadIdentifiers](self, "dirtyPayloadIdentifiers"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count] == 0, v15, !v16))
    {
      v17 = biomeInfoLogging([UAUserActivity setIndexPending:1 forUUID:uniqueIdentifier3]);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        uniqueIdentifier4 = [(UAUserActivity *)self uniqueIdentifier];
        *buf = 138543362;
        v40 = uniqueIdentifier4;
        _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_INFO, "%{public}@ INDEX-UPDATEUSERINFO", buf, 0xCu);
      }

      v19 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier5 = [(UAUserActivity *)self uniqueIdentifier];
        uUIDString3 = [uniqueIdentifier5 UUIDString];
        *buf = 138543618;
        v40 = uUIDString3;
        v41 = 2048;
        activityCopy2 = activity;
        _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_DEBUG, "indexActivity: %{public}@, Deferred %g seconds, because .dirty == YES", buf, 0x16u);
      }

      v22 = activity * 1000000000.0;
      if (activity < 0.0)
      {
        v22 = 0.0;
      }

      v23 = dispatch_time(0, v22);
      if (getDeferredIndexingQueue(void)::sOnce != -1)
      {
        [UAUserActivity(UAUserActivityCoreSpotlightIndexingSupport) indexActivity:forceIndexing:];
      }

      v24 = getDeferredIndexingQueue(void)::sQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__UAUserActivity_UAUserActivityCoreSpotlightIndexingSupport__indexActivity_forceIndexing___block_invoke;
      block[3] = &unk_2785C3A70;
      v36 = uniqueIdentifier3;
      v37 = manager;
      selfCopy = self;
      dispatch_after(v23, v24, block);

      selfCopy2 = v36;
    }

    else
    {
      selfCopy2 = self;
      objc_sync_enter(selfCopy2);
      self->_indexInProcess = 1;
      v30 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        uniqueIdentifier6 = [(UAUserActivity *)selfCopy2 uniqueIdentifier];
        uUIDString4 = [uniqueIdentifier6 UUIDString];
        *buf = 138543362;
        v40 = uUIDString4;
        _os_log_impl(&dword_226A4E000, v30, OS_LOG_TYPE_DEBUG, "indexActivity: Immediate, %{public}@ because .needsSave == NO", buf, 0xCu);
      }

      v33 = [(UAUserActivity *)selfCopy2 copyWithNewUUID:0];
      self->_indexInProcess = 0;
      if (v33)
      {
        v34 = objc_opt_new();
        [v33 setSentToIndexerDate:v34];

        [v33 sendToCoreSpotlightIndexer];
      }

      objc_sync_exit(selfCopy2);
    }
  }

  else
  {
    manager = _uaGetLogForCategory(0);
    if (os_log_type_enabled(manager, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier7 = [(UAUserActivity *)self uniqueIdentifier];
      uUIDString5 = [uniqueIdentifier7 UUIDString];
      *buf = 138543362;
      v40 = uUIDString5;
      _os_log_impl(&dword_226A4E000, manager, OS_LOG_TYPE_DEBUG, "indexActivity: Ignoring, because this activity %{public}@ doesn't seem to need indexing", buf, 0xCu);
    }
  }
}

void __90__UAUserActivity_UAUserActivityCoreSpotlightIndexingSupport__indexActivity_forceIndexing___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([UAUserActivity isIndexPendingForUUID:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) userActivityForUUID:*(a1 + 32)];
    v4 = v3;
    if (v3 && ([v3 isInvalidated] & 1) == 0 && objc_msgSend(v4, "forwardToCoreSpotlightIndexer") && objc_msgSend(*(a1 + 40), "userActivityIsActive:", v4))
    {
      v4[114] = 1;
      v5 = [v4 copyWithNewUUID:1];
      v6 = [v5 setEligibleForHandoff:0];
      v4[114] = 0;
      v7 = biomeInfoLogging(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 48) uniqueIdentifier];
        v9 = [v5 uniqueIdentifier];
        v11 = 138543618;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "%{public}@ COPYFORINDEXING %{public}@", &v11, 0x16u);
      }

      v10 = [MEMORY[0x277CBEAA8] date];
      [v5 setSentToIndexerDate:v10];

      [v5 sendToCoreSpotlightIndexer];
    }
  }

  [UAUserActivity setIndexPending:0 forUUID:*(a1 + 32)];
  objc_autoreleasePoolPop(v2);
}

- (void)setEligibleForPrediction:(BOOL)prediction
{
  predictionCopy = prediction;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForPrediction != predictionCopy)
  {
    obj->_eligibleForPrediction = predictionCopy;
  }

  objc_sync_exit(obj);
}

- (void)setPersistentIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  persistentIdentifier = selfCopy->_persistentIdentifier;
  if (persistentIdentifier == identifierCopy)
  {
    if (!identifierCopy || ![(NSString *)identifierCopy isEqual:?])
    {
      goto LABEL_12;
    }

    persistentIdentifier = selfCopy->_persistentIdentifier;
  }

  v7 = persistentIdentifier;
  v8 = [(NSString *)identifierCopy copy];
  v9 = selfCopy->_persistentIdentifier;
  selfCopy->_persistentIdentifier = v8;

  [(UAUserActivity *)selfCopy setDirty:1];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = +[UAUserActivity observers];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          [v14 userActivityPersistentIdentifierWasChanged:parentUserActivity persistentIdentifier:identifierCopy previousValue:v7];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

LABEL_12:
  objc_sync_exit(selfCopy);
}

+ (id)mainBundleIdentifier
{
  if (mainBundleIdentifier_sOnce != -1)
  {
    +[UAUserActivity(UAUserActivitySiriActions) mainBundleIdentifier];
  }

  v3 = mainBundleIdentifier_bundleIdentifier;

  return v3;
}

void __65__UAUserActivity_UAUserActivitySiriActions__mainBundleIdentifier__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = mainBundleIdentifier_bundleIdentifier;
  mainBundleIdentifier_bundleIdentifier = v0;
}

+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(id)identifiers completionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = identifiersCopy;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "Deleting saved user activities with persistent identifiers: %@", buf, 0xCu);
  }

  getCSSearchableIndexClass();
  if (objc_opt_respondsToSelector())
  {
    defaultSearchableIndex = [(objc_class *)getCSSearchableIndexClass() defaultSearchableIndex];
    mainBundleIdentifier = [self mainBundleIdentifier];
    if (objc_opt_respondsToSelector())
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __114__UAUserActivity_UAUserActivitySiriActions__deleteSavedUserActivitiesWithPersistentIdentifiers_completionHandler___block_invoke;
      v13[3] = &unk_2785C3E70;
      v14 = handlerCopy;
      [defaultSearchableIndex deleteUserActivitiesWithPersistentIdentifiers:identifiersCopy bundleID:mainBundleIdentifier completionHandler:v13];
    }

    else
    {
      v12 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
      }

      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
    }

    handlerCopy[2](handlerCopy);
  }
}

void __114__UAUserActivity_UAUserActivitySiriActions__deleteSavedUserActivitiesWithPersistentIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v3;
      v6 = "Error deleting saved items: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_226A4E000, v7, v8, v6, &v11, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    v6 = "Deleted saved user activities";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v10);
}

+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  getCSSearchableIndexClass();
  if (objc_opt_respondsToSelector())
  {
    defaultSearchableIndex = [(objc_class *)getCSSearchableIndexClass() defaultSearchableIndex];
    mainBundleIdentifier = [self mainBundleIdentifier];
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "Deleting all saved useractivities", buf, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __95__UAUserActivity_UAUserActivitySiriActions__deleteAllSavedUserActivitiesWithCompletionHandler___block_invoke;
      v10[3] = &unk_2785C3E70;
      v11 = handlerCopy;
      [defaultSearchableIndex deleteAllUserActivities:mainBundleIdentifier completionHandler:v10];
    }

    else
    {
      v9 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
      }

      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
    }

    handlerCopy[2](handlerCopy);
  }
}

void __95__UAUserActivity_UAUserActivitySiriActions__deleteAllSavedUserActivitiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v3;
      v6 = "Error deleting saved items: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_226A4E000, v7, v8, v6, &v11, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v11) = 0;
    v6 = "Deleted saved user activities";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v10);
}

- (id)objectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  payloadObjects = [(UAUserActivity *)selfCopy payloadObjects];
  v7 = [payloadObjects objectForKey:identifierCopy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)payloadForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    payloadUpdateBlocks = [(UAUserActivity *)selfCopy payloadUpdateBlocks];
    v7 = [payloadUpdateBlocks objectForKey:identifierCopy];

    if (v7)
    {
      payloadDataCache = [(UAUserActivity *)selfCopy objectForIdentifier:identifierCopy];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__UAUserActivity_UAUserActivityPayloadServicesSupport__payloadForIdentifier___block_invoke;
      v14[3] = &unk_2785C4770;
      v14[4] = selfCopy;
      v14[5] = &v15;
      (v7)[2](v7, selfCopy, payloadDataCache, identifierCopy, v14);
    }

    else
    {
      payloadDataCache = [(UAUserActivity *)selfCopy payloadDataCache];
      v10 = [payloadDataCache objectForKey:identifierCopy];
      v11 = v16[5];
      v16[5] = v10;
    }

    objc_sync_exit(selfCopy);
    v9 = v16[5];
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __77__UAUserActivity_UAUserActivityPayloadServicesSupport__payloadForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v12 = a2;
  v9 = a3;
  if (!a4 || !*a4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v10 = [*(a1 + 32) dirtyPayloadIdentifiers];
  v11 = v10;
  if (a5)
  {
    [v10 addObject:v12];
  }

  else
  {
    [v10 removeObject:v12];
  }
}

- (void)setPayload:(id)payload object:(id)object identifier:(id)identifier dirty:(BOOL)dirty
{
  dirtyCopy = dirty;
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  objectCopy = object;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(UAUserActivity *)selfCopy setPayloadIdentifier:identifierCopy object:0 withBlock:0];
    if (objectCopy)
    {
      payloadObjects = [(UAUserActivity *)selfCopy payloadObjects];

      if (!payloadObjects)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(UAUserActivity *)selfCopy setPayloadObjects:v12];
      }

      payloadObjects2 = [(UAUserActivity *)selfCopy payloadObjects];
      [payloadObjects2 setObject:objectCopy forKey:identifierCopy];
    }

    else
    {
      payloadObjects2 = [(UAUserActivity *)selfCopy payloadObjects];
      [payloadObjects2 removeObjectForKey:identifierCopy];
    }

    if (payloadCopy)
    {
      payloadDataCache = [(UAUserActivity *)selfCopy payloadDataCache];

      if (!payloadDataCache)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(UAUserActivity *)selfCopy setPayloadDataCache:v15];
      }

      payloadDataCache2 = [(UAUserActivity *)selfCopy payloadDataCache];
      v17 = [payloadCopy copy];
      [payloadDataCache2 setObject:v17 forKey:identifierCopy];
    }

    else
    {
      payloadDataCache2 = [(UAUserActivity *)selfCopy payloadDataCache];
      [payloadDataCache2 removeObjectForKey:identifierCopy];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    observers = [objc_opt_class() observers];
    v19 = [observers countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        v21 = 0;
        do
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(observers);
          }

          v22 = *(*(&v29 + 1) + 8 * v21);
          parentUserActivity = [(UAUserActivity *)selfCopy parentUserActivity];
          if (parentUserActivity)
          {
            v24 = objc_opt_respondsToSelector();

            if (v24)
            {
              parentUserActivity2 = [(UAUserActivity *)selfCopy parentUserActivity];
              [v22 userActivityPayloadWasChanged:parentUserActivity2 payloadIdentifier:identifierCopy];
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [observers countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    [(UAUserActivity *)selfCopy setDirty:dirtyCopy identifier:identifierCopy];
    objc_sync_exit(selfCopy);
  }
}

- (void)setPayloadIdentifier:(id)identifier object:(id)object withBlock:(id)block
{
  identifierCopy = identifier;
  objectCopy = object;
  blockCopy = block;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (blockCopy)
    {
      if (objectCopy)
      {
        payloadObjects = [(UAUserActivity *)selfCopy payloadObjects];

        if (!payloadObjects)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [(UAUserActivity *)selfCopy setPayloadObjects:dictionary];
        }

        payloadObjects2 = [(UAUserActivity *)selfCopy payloadObjects];
        [payloadObjects2 setObject:objectCopy forKey:identifierCopy];
      }

      else
      {
        payloadObjects2 = [(UAUserActivity *)selfCopy payloadObjects];
        [payloadObjects2 removeObjectForKey:identifierCopy];
      }

      payloadUpdateBlocks = [(UAUserActivity *)selfCopy payloadUpdateBlocks];

      if (!payloadUpdateBlocks)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(UAUserActivity *)selfCopy setPayloadUpdateBlocks:v20];
      }

      payloadUpdateBlocks2 = [(UAUserActivity *)selfCopy payloadUpdateBlocks];
      v22 = _Block_copy(blockCopy);
      [payloadUpdateBlocks2 setObject:v22 forKey:identifierCopy];

      [(UAUserActivity *)selfCopy setDirty:1 identifier:identifierCopy];
    }

    else
    {
      payloadObjects3 = [(UAUserActivity *)selfCopy payloadObjects];
      [payloadObjects3 removeObjectForKey:identifierCopy];

      payloadUpdateBlocks3 = [(UAUserActivity *)selfCopy payloadUpdateBlocks];
      v16 = [payloadUpdateBlocks3 objectForKey:identifierCopy];

      if (v16)
      {
        payloadUpdateBlocks4 = [(UAUserActivity *)selfCopy payloadUpdateBlocks];
        [payloadUpdateBlocks4 removeObjectForKey:identifierCopy];
      }

      dirtyPayloadIdentifiers = [(UAUserActivity *)selfCopy dirtyPayloadIdentifiers];
      [dirtyPayloadIdentifiers removeObject:identifierCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)payloadUpdateBlockForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    payloadUpdateBlocks = [(UAUserActivity *)self payloadUpdateBlocks];

    if (payloadUpdateBlocks)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      payloadUpdateBlocks2 = [(UAUserActivity *)selfCopy payloadUpdateBlocks];
      payloadUpdateBlocks = [payloadUpdateBlocks2 objectForKey:identifierCopy];

      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    payloadUpdateBlocks = 0;
  }

  v8 = _Block_copy(payloadUpdateBlocks);

  return v8;
}

- (BOOL)isPayloadDirty:(id)dirty
{
  dirtyCopy = dirty;
  if (dirtyCopy)
  {
    dirtyPayloadIdentifiers = [(UAUserActivity *)self dirtyPayloadIdentifiers];

    if (dirtyPayloadIdentifiers)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (([(NSMutableSet *)selfCopy->_dirtyPayloadIdentifiers containsObject:dirtyCopy]& 1) != 0)
      {
        goto LABEL_4;
      }

      if (![dirtyCopy isEqual:@"UAUserActivityUserInfoPayload"])
      {
        LOBYTE(dirtyPayloadIdentifiers) = 0;
        goto LABEL_10;
      }

      if ([(UAUserActivity *)selfCopy needsSave])
      {
LABEL_4:
        LOBYTE(dirtyPayloadIdentifiers) = 1;
      }

      else
      {
        LOBYTE(dirtyPayloadIdentifiers) = [(UAUserActivity *)selfCopy dirty];
      }

LABEL_10:
      objc_sync_exit(selfCopy);
    }
  }

  else
  {
    LOBYTE(dirtyPayloadIdentifiers) = 0;
  }

  return dirtyPayloadIdentifiers;
}

- (void)setDirty:(BOOL)dirty identifier:(id)identifier
{
  dirtyCopy = dirty;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dirtyCopy)
  {
    dirtyPayloadIdentifiers = [(UAUserActivity *)selfCopy dirtyPayloadIdentifiers];

    if (!dirtyPayloadIdentifiers)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      [(UAUserActivity *)selfCopy setDirtyPayloadIdentifiers:v8];
    }

    dirtyPayloadIdentifiers2 = [(UAUserActivity *)selfCopy dirtyPayloadIdentifiers];
    [dirtyPayloadIdentifiers2 addObject:identifierCopy];
  }

  else
  {
    dirtyPayloadIdentifiers2 = [(UAUserActivity *)selfCopy dirtyPayloadIdentifiers];
    [dirtyPayloadIdentifiers2 removeObject:identifierCopy];
  }

  objc_sync_exit(selfCopy);
}

@end