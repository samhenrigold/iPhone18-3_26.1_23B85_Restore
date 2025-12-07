@interface HFCameraPlaybackEngineEventCache
+ (BOOL)isValidEvent:(id)event;
- (BOOL)containsClip:(id)clip;
- (BOOL)isFirstEventOfTheDay:(id)day;
- (HFCameraPlaybackEngineEventCache)initWithDebugLogger:(id)logger;
- (HMCameraClip)clipWithLongestDuration;
- (NSArray)clips;
- (NSArray)events;
- (NSArray)rawEvents;
- (NSDictionary)rawEventsByUniqueIdentifier;
- (NSMapTable)firstOfTheDayClips;
- (NSMapTable)firstOfTheDayEvents;
- (id)_events;
- (id)daysWithClips;
- (id)firstOfTheDayClipForDate:(id)date;
- (id)removeAllEvents;
- (id)removeEventUUIDs:(id)ds;
- (id)resetAndUpdateWithEvents:(id)events;
- (id)updateWithEvents:(id)events;
- (void)_generateViewModelWithRawEventUpdates:(id)updates completion:(id)completion;
- (void)_removeAllEventsWithCompletion:(id)completion;
- (void)_removeEventUUIDs:(id)ds completion:(id)completion;
- (void)_setupDebugHandler;
- (void)_updateWithEvents:(id)events completion:(id)completion;
- (void)_validateAndInsertRawEvents:(id)events completion:(id)completion;
- (void)dealloc;
- (void)setClipWithLongestDuration:(id)duration;
- (void)setClips:(id)clips;
- (void)setEvents:(id)events;
- (void)setFirstOfTheDayClips:(id)clips;
- (void)setFirstOfTheDayEvents:(id)events;
- (void)setRawEvents:(id)events;
- (void)setRawEventsByUniqueIdentifier:(id)identifier;
@end

@implementation HFCameraPlaybackEngineEventCache

- (HFCameraPlaybackEngineEventCache)initWithDebugLogger:(id)logger
{
  loggerCopy = logger;
  v21.receiver = self;
  v21.super_class = HFCameraPlaybackEngineEventCache;
  v6 = [(HFCameraPlaybackEngineEventCache *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_debugLogger, logger);
    rawEvents = v7->_rawEvents;
    v9 = MEMORY[0x277CBEBF8];
    v7->_rawEvents = MEMORY[0x277CBEBF8];

    rawEventsByUniqueIdentifier = v7->_rawEventsByUniqueIdentifier;
    v7->_rawEventsByUniqueIdentifier = MEMORY[0x277CBEC10];

    events = v7->_events;
    v7->_events = v9;

    clips = v7->_clips;
    v7->_clips = v9;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    firstOfTheDayClips = v7->_firstOfTheDayClips;
    v7->_firstOfTheDayClips = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    firstOfTheDayEvents = v7->_firstOfTheDayEvents;
    v7->_firstOfTheDayEvents = strongToWeakObjectsMapTable2;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.HFCameraPlaybackEngineEventCache.workQueue", v17);
    workQueue = v7->_workQueue;
    v7->_workQueue = v18;

    [(HFCameraPlaybackEngineEventCache *)v7 _setupDebugHandler];
  }

  return v7;
}

- (void)setRawEvents:(id)events
{
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  rawEvents = self->_rawEvents;
  self->_rawEvents = eventsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)rawEvents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rawEvents;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRawEventsByUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  rawEventsByUniqueIdentifier = self->_rawEventsByUniqueIdentifier;
  self->_rawEventsByUniqueIdentifier = identifierCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)rawEventsByUniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rawEventsByUniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEvents:(id)events
{
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  events = self->_events;
  self->_events = eventsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)events
{
  os_unfair_lock_lock_with_options();
  v3 = self->_events;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_events
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  events = self->_events;

  return events;
}

- (void)setClips:(id)clips
{
  clipsCopy = clips;
  os_unfair_lock_lock_with_options();
  clips = self->_clips;
  self->_clips = clipsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)clips
{
  os_unfair_lock_lock_with_options();
  v3 = self->_clips;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setClipWithLongestDuration:(id)duration
{
  durationCopy = duration;
  os_unfair_lock_lock_with_options();
  clipWithLongestDuration = self->_clipWithLongestDuration;
  self->_clipWithLongestDuration = durationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMCameraClip)clipWithLongestDuration
{
  os_unfair_lock_lock_with_options();
  v3 = self->_clipWithLongestDuration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFirstOfTheDayEvents:(id)events
{
  eventsCopy = events;
  os_unfair_lock_lock_with_options();
  firstOfTheDayEvents = self->_firstOfTheDayEvents;
  self->_firstOfTheDayEvents = eventsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMapTable)firstOfTheDayEvents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_firstOfTheDayEvents;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFirstOfTheDayClips:(id)clips
{
  clipsCopy = clips;
  os_unfair_lock_lock_with_options();
  firstOfTheDayClips = self->_firstOfTheDayClips;
  self->_firstOfTheDayClips = clipsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMapTable)firstOfTheDayClips
{
  os_unfair_lock_lock_with_options();
  v3 = self->_firstOfTheDayClips;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isFirstEventOfTheDay:(id)day
{
  dayCopy = day;
  firstOfTheDayEvents = [(HFCameraPlaybackEngineEventCache *)self firstOfTheDayEvents];
  dateOfOccurrence = [dayCopy dateOfOccurrence];
  hf_startOfDay = [dateOfOccurrence hf_startOfDay];
  v8 = [firstOfTheDayEvents objectForKey:hf_startOfDay];

  uniqueIdentifier = [v8 uniqueIdentifier];
  uniqueIdentifier2 = [dayCopy uniqueIdentifier];

  LOBYTE(dayCopy) = [uniqueIdentifier isEqual:uniqueIdentifier2];
  return dayCopy;
}

- (id)firstOfTheDayClipForDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  firstOfTheDayClips = [(HFCameraPlaybackEngineEventCache *)self firstOfTheDayClips];
  hf_startOfDay = [dateCopy hf_startOfDay];
  v7 = [firstOfTheDayClips objectForKey:hf_startOfDay];

  if (v7)
  {
    v8 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription = [v7 hf_prettyDescription];
      v11 = 138412546;
      v12 = dateCopy;
      v13 = 2112;
      v14 = hf_prettyDescription;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Found first of the day clip for date: %@; clip: %@", &v11, 0x16u);
    }
  }

  return v7;
}

- (id)daysWithClips
{
  v2 = MEMORY[0x277CBEB98];
  firstOfTheDayClips = [(HFCameraPlaybackEngineEventCache *)self firstOfTheDayClips];
  keyEnumerator = [firstOfTheDayClips keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v6 = [v2 setWithArray:allObjects];

  return v6;
}

- (BOOL)containsClip:(id)clip
{
  clipCopy = clip;
  rawEventsByUniqueIdentifier = [(HFCameraPlaybackEngineEventCache *)self rawEventsByUniqueIdentifier];
  uniqueIdentifier = [clipCopy uniqueIdentifier];

  v7 = [rawEventsByUniqueIdentifier objectForKeyedSubscript:uniqueIdentifier];
  LOBYTE(clipCopy) = v7 != 0;

  return clipCopy;
}

- (id)updateWithEvents:(id)events
{
  eventsCopy = events;
  workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v6 = MEMORY[0x277D2C900];
  v14 = MEMORY[0x277D85DD0];
  v7 = eventsCopy;
  v15 = v7;
  v8 = [HFUtilities isInternalTest:v14];
  v9 = MEMORY[0x277D2C938];
  if (v8)
  {
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v11 = [v6 futureWithBlock:&v14 scheduler:immediateScheduler];
  }

  else
  {
    immediateScheduler = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    v12 = [v9 schedulerWithDispatchQueue:immediateScheduler];
    v11 = [v6 futureWithBlock:&v14 scheduler:v12];
  }

  return v11;
}

void __53__HFCameraPlaybackEngineEventCache_updateWithEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HFCameraPlaybackEngineEventCache_updateWithEvents___block_invoke_2;
  v7[3] = &unk_277DF28B0;
  v8 = v3;
  v6 = v3;
  [v5 _updateWithEvents:v4 completion:v7];
}

- (void)_updateWithEvents:(id)events completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v9 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[HFCameraPlaybackEngineEventCache _updateWithEvents:completion:]";
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HFCameraPlaybackEngineEventCache__updateWithEvents_completion___block_invoke;
  v11[3] = &unk_277DF2900;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [(HFCameraPlaybackEngineEventCache *)self _validateAndInsertRawEvents:eventsCopy completion:v11];
}

- (id)removeEventUUIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v6 = MEMORY[0x277D2C900];
  v14 = MEMORY[0x277D85DD0];
  v7 = dsCopy;
  v15 = v7;
  v8 = [HFUtilities isInternalTest:v14];
  v9 = MEMORY[0x277D2C938];
  if (v8)
  {
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v11 = [v6 futureWithBlock:&v14 scheduler:immediateScheduler];
  }

  else
  {
    immediateScheduler = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    v12 = [v9 schedulerWithDispatchQueue:immediateScheduler];
    v11 = [v6 futureWithBlock:&v14 scheduler:v12];
  }

  return v11;
}

void __53__HFCameraPlaybackEngineEventCache_removeEventUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HFCameraPlaybackEngineEventCache_removeEventUUIDs___block_invoke_2;
  v7[3] = &unk_277DF28B0;
  v8 = v3;
  v6 = v3;
  [v5 _removeEventUUIDs:v4 completion:v7];
}

- (void)_removeEventUUIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  rawEvents = [(HFCameraPlaybackEngineEventCache *)self rawEvents];
  v9 = [rawEvents mutableCopy];

  rawEventsByUniqueIdentifier = [(HFCameraPlaybackEngineEventCache *)self rawEventsByUniqueIdentifier];
  v11 = [rawEventsByUniqueIdentifier mutableCopy];

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  clipWithLongestDuration = [(HFCameraPlaybackEngineEventCache *)self clipWithLongestDuration];
  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke;
  v35[3] = &unk_277DF2928;
  v14 = v11;
  v36 = v14;
  v40 = &v41;
  v15 = v12;
  v37 = v15;
  v16 = v13;
  v38 = v16;
  v17 = v9;
  v39 = v17;
  [v27 na_each:v35];
  if (!v42[5])
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke_2;
    v34[3] = &unk_277DF2950;
    v34[4] = &v41;
    [v17 na_each:v34];
    [(HFCameraPlaybackEngineEventCache *)self setClipWithLongestDuration:v42[5]];
  }

  if ([v16 count])
  {
    events = [(HFCameraPlaybackEngineEventCache *)self events];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke_3;
    v31[3] = &unk_277DF2978;
    v32 = v16;
    v33 = v15;
    [events na_each:v31];
  }

  [(HFCameraPlaybackEngineEventCache *)self setRawEvents:v17];
  [(HFCameraPlaybackEngineEventCache *)self setRawEventsByUniqueIdentifier:v14];
  v19 = [HFCameraPlaybackEngineEventCacheUpdateResult alloc];
  v20 = [MEMORY[0x277CBEB98] set];
  v21 = [MEMORY[0x277CBEB98] set];
  v22 = [MEMORY[0x277CBEB98] set];
  v23 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)v19 initWithUpdatedIdentifiers:v20 replacedIdentifiers:v21 removedIdentifiers:v22];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke_4;
  v28[3] = &unk_277DF2900;
  v24 = v15;
  v29 = v24;
  v25 = completionCopy;
  v30 = v25;
  [(HFCameraPlaybackEngineEventCache *)self _generateViewModelWithRawEventUpdates:v23 completion:v28];

  _Block_object_dispose(&v41, 8);
}

void __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  v4 = v3;
  if (v3)
  {
    if ([v3 containerType] == 1)
    {
      objc_msgSend_duration(v4);
      v6 = v5;
      objc_msgSend_duration(*(*(*(a1 + 64) + 8) + 40));
      if (vabdd_f64(v6, v7) < 2.22044605e-16)
      {
        v8 = *(*(a1 + 64) + 8);
        v9 = *(v8 + 40);
        *(v8 + 40) = 0;
      }

      v10 = 40;
    }

    else
    {
      v10 = 48;
    }

    v11 = *(a1 + v10);
    v12 = [v4 uniqueIdentifier];
    [v11 addObject:v12];

    [*(a1 + 56) removeObject:v4];
    [*(a1 + 32) setObject:0 forKeyedSubscript:v13];
  }
}

void __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = a2;
  if ([v15 containerType] != 1)
  {
    goto LABEL_15;
  }

  v3 = objc_opt_class();
  v4 = v15;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_9:

  objc_msgSend_duration(v6);
  v10 = v9;
  objc_msgSend_duration(*(*(*(a1 + 32) + 8) + 40));
  v12 = v10 <= v11;
  v13 = vabdd_f64(v10, v11);
  if (!v12 && v13 >= 2.22044605e-16)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
  }

LABEL_15:
}

void __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([v13 containerType] != 2)
  {
    goto LABEL_12;
  }

  v3 = objc_opt_class();
  v4 = v13;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4;
    if (v5)
    {
      goto LABEL_9;
    }

    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];
  }

  v6 = 0;
LABEL_9:

  v9 = [v6 eventUniqueIdentifiers];
  v10 = [v9 intersectsSet:*(a1 + 32)];

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [v6 uniqueIdentifier];
    [v11 addObject:v12];
  }

LABEL_12:
}

void __65__HFCameraPlaybackEngineEventCache__removeEventUUIDs_completion___block_invoke_4(uint64_t a1)
{
  v2 = [HFCameraPlaybackEngineEventCacheUpdateResult alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)v2 initWithUpdatedIdentifiers:v3 replacedIdentifiers:v4 removedIdentifiers:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (id)removeAllEvents
{
  workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v4 = MEMORY[0x277D2C900];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HFCameraPlaybackEngineEventCache_removeAllEvents__block_invoke;
  v11[3] = &unk_277DF29A0;
  v11[4] = self;
  v5 = +[HFUtilities isInternalTest];
  v6 = MEMORY[0x277D2C938];
  if (v5)
  {
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v8 = [v4 futureWithBlock:v11 scheduler:immediateScheduler];
  }

  else
  {
    immediateScheduler = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    v9 = [v6 schedulerWithDispatchQueue:immediateScheduler];
    v8 = [v4 futureWithBlock:v11 scheduler:v9];
  }

  return v8;
}

void __51__HFCameraPlaybackEngineEventCache_removeAllEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HFCameraPlaybackEngineEventCache_removeAllEvents__block_invoke_2;
  v6[3] = &unk_277DF28B0;
  v7 = v3;
  v5 = v3;
  [v4 _removeAllEventsWithCompletion:v6];
}

- (void)_removeAllEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v6 = [MEMORY[0x277CBEB58] set];
  events = [(HFCameraPlaybackEngineEventCache *)self events];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__HFCameraPlaybackEngineEventCache__removeAllEventsWithCompletion___block_invoke;
  v19[3] = &unk_277DF29C8;
  v8 = v6;
  v20 = v8;
  [events na_each:v19];

  [(HFCameraPlaybackEngineEventCache *)self setRawEvents:MEMORY[0x277CBEBF8]];
  [(HFCameraPlaybackEngineEventCache *)self setRawEventsByUniqueIdentifier:MEMORY[0x277CBEC10]];
  [(HFCameraPlaybackEngineEventCache *)self setClipWithLongestDuration:0];
  v9 = [HFCameraPlaybackEngineEventCacheUpdateResult alloc];
  v10 = [MEMORY[0x277CBEB98] set];
  v11 = [MEMORY[0x277CBEB98] set];
  v12 = [MEMORY[0x277CBEB98] set];
  v13 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)v9 initWithUpdatedIdentifiers:v10 replacedIdentifiers:v11 removedIdentifiers:v12];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__HFCameraPlaybackEngineEventCache__removeAllEventsWithCompletion___block_invoke_2;
  v16[3] = &unk_277DF2900;
  v17 = v8;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = v8;
  [(HFCameraPlaybackEngineEventCache *)self _generateViewModelWithRawEventUpdates:v13 completion:v16];
}

void __67__HFCameraPlaybackEngineEventCache__removeAllEventsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueIdentifier];
  [v2 addObject:v3];
}

void __67__HFCameraPlaybackEngineEventCache__removeAllEventsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [HFCameraPlaybackEngineEventCacheUpdateResult alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)v2 initWithUpdatedIdentifiers:v3 replacedIdentifiers:v4 removedIdentifiers:*(a1 + 32)];

  (*(*(a1 + 40) + 16))();
}

- (id)resetAndUpdateWithEvents:(id)events
{
  eventsCopy = events;
  removeAllEvents = [(HFCameraPlaybackEngineEventCache *)self removeAllEvents];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HFCameraPlaybackEngineEventCache_resetAndUpdateWithEvents___block_invoke;
  v9[3] = &unk_277DF29F0;
  v9[4] = self;
  v10 = eventsCopy;
  v6 = eventsCopy;
  v7 = [removeAllEvents flatMap:v9];

  return v7;
}

- (void)_validateAndInsertRawEvents:(id)events completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  completionCopy = completion;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v9 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[HFCameraPlaybackEngineEventCache _validateAndInsertRawEvents:completion:]";
    *&buf[12] = 2048;
    *&buf[14] = [eventsCopy count];
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "%s, with (%lu) events", buf, 0x16u);
  }

  rawEventsByUniqueIdentifier = [(HFCameraPlaybackEngineEventCache *)self rawEventsByUniqueIdentifier];
  v11 = [rawEventsByUniqueIdentifier mutableCopy];

  rawEvents = [(HFCameraPlaybackEngineEventCache *)self rawEvents];
  v13 = [rawEvents mutableCopy];

  v14 = [MEMORY[0x277CBEB58] set];
  v15 = [MEMORY[0x277CBEB58] set];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  clipWithLongestDuration = [(HFCameraPlaybackEngineEventCache *)self clipWithLongestDuration];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __75__HFCameraPlaybackEngineEventCache__validateAndInsertRawEvents_completion___block_invoke;
  v27 = &unk_277DF2A40;
  selfCopy = self;
  v33 = buf;
  v16 = v11;
  v29 = v16;
  v17 = v13;
  v30 = v17;
  v18 = v15;
  v31 = v18;
  v19 = v14;
  v32 = v19;
  [eventsCopy na_each:&v24];
  [(HFCameraPlaybackEngineEventCache *)self setRawEvents:v17, v24, v25, v26, v27, selfCopy];
  [(HFCameraPlaybackEngineEventCache *)self setRawEventsByUniqueIdentifier:v16];
  [(HFCameraPlaybackEngineEventCache *)self setClipWithLongestDuration:*(*&buf[8] + 40)];
  debugLogger = [(HFCameraPlaybackEngineEventCache *)self debugLogger];
  [debugLogger logEvents:eventsCopy toJSONWithDebugLogType:0 completionHandler:&__block_literal_global_0];

  v21 = [HFCameraPlaybackEngineEventCacheUpdateResult alloc];
  v22 = [MEMORY[0x277CBEB98] set];
  v23 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)v21 initWithUpdatedIdentifiers:v19 replacedIdentifiers:v18 removedIdentifiers:v22];

  completionCopy[2](completionCopy, v23);
  _Block_object_dispose(buf, 8);
}

void __75__HFCameraPlaybackEngineEventCache__validateAndInsertRawEvents_completion___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([objc_opt_class() isValidEvent:v3])
  {
    if ([v3 containerType] != 1)
    {
      goto LABEL_16;
    }

    v4 = objc_opt_class();
    v5 = v3;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      if (v6)
      {
        goto LABEL_10;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
    }

    v7 = 0;
LABEL_10:

    [v7 hf_sortSignificantEvents];
    objc_msgSend_duration(v7);
    v11 = v10;
    objc_msgSend_duration(*(*(*(a1 + 72) + 8) + 40));
    v13 = v11 <= v12;
    v14 = vabdd_f64(v11, v12);
    if (!v13 && v14 >= 2.22044605e-16)
    {
      objc_storeStrong((*(*(a1 + 72) + 8) + 40), v7);
    }

LABEL_16:
    v16 = *(a1 + 40);
    v17 = [v3 uniqueIdentifier];
    v18 = [v16 objectForKeyedSubscript:v17];

    if (v18)
    {
      v19 = [v3 dateOfOccurrence];
      v20 = [v18 dateOfOccurrence];
      v21 = [v19 isEqualToDate:v20];

      v22 = *(a1 + 48);
      if (!v21)
      {
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __75__HFCameraPlaybackEngineEventCache__validateAndInsertRawEvents_completion___block_invoke_34;
        v50[3] = &unk_277DF2A18;
        v32 = v3;
        v51 = v32;
        v33 = [v22 indexOfObjectPassingTest:v50];
        if (v33 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = HFLogForCategory(0x17uLL);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v32;
            _os_log_error_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_ERROR, "Could not locate existing event using indexOfObjectPassingTest: %@", buf, 0xCu);
          }
        }

        else
        {
          [*(a1 + 48) removeObjectAtIndex:v33];
          v42 = *(a1 + 40);
          v34 = [v32 uniqueIdentifier];
          [v42 setObject:0 forKeyedSubscript:v34];
        }

        v43 = *(a1 + 48);
        v44 = +[HFCameraUtilities cameraRecordingEventDateOfOccurenceComparator];
        v45 = [v43 hf_insertObject:v32 intoSortedArrayWithOptions:1024 comparator:v44];

        if (v45 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v46 = HFLogForCategory(0x17uLL);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v53 = v32;
            _os_log_error_impl(&dword_20D9BF000, v46, OS_LOG_TYPE_ERROR, "Invalid insertion index after removing existing event: %@", buf, 0xCu);
          }
        }

        else
        {
          v47 = *(a1 + 40);
          v48 = [v32 uniqueIdentifier];
          [v47 setObject:v32 forKeyedSubscript:v48];

          v49 = *(a1 + 56);
          v46 = [v32 uniqueIdentifier];
          [v49 addObject:v46];
        }

        goto LABEL_42;
      }

      v23 = [*(a1 + 48) count];
      v24 = +[HFCameraUtilities cameraRecordingEventDateOfOccurenceComparator];
      v25 = [v22 indexOfObject:v18 inSortedRange:0 options:v23 usingComparator:{256, v24}];

      v26 = HFLogForCategory(0x17uLL);
      v27 = v26;
      if (v25 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = v3;
          _os_log_error_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_ERROR, "Could not locate existing event using indexOfObject: %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [v18 hf_prettyDescription];
          v37 = [v3 hf_prettyDescription];
          *buf = 138412546;
          v53 = v36;
          v54 = 2112;
          v55 = v37;
          _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "Updating event: old: %@; new: %@", buf, 0x16u);
        }

        [*(a1 + 48) replaceObjectAtIndex:v25 withObject:v3];
        v38 = *(a1 + 40);
        v39 = [v3 uniqueIdentifier];
        [v38 setObject:v3 forKeyedSubscript:v39];

        v40 = [v18 containerType];
        if (v40 == [v3 containerType])
        {
          v41 = *(a1 + 64);
        }

        else
        {
          v41 = *(a1 + 56);
        }

        v27 = [v3 uniqueIdentifier];
        [v41 addObject:v27];
      }
    }

    else
    {
      v28 = *(a1 + 48);
      v29 = +[HFCameraUtilities cameraRecordingEventDateOfOccurenceComparator];
      v30 = [v28 hf_insertObject:v3 intoSortedArrayWithOptions:1024 comparator:v29];

      if (v30 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v31 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v53 = v3;
          _os_log_error_impl(&dword_20D9BF000, v31, OS_LOG_TYPE_ERROR, "Invalid insertion index: %@", buf, 0xCu);
        }

        goto LABEL_42;
      }

      v35 = *(a1 + 40);
      v27 = [v3 uniqueIdentifier];
      [v35 setObject:v3 forKeyedSubscript:v27];
    }

LABEL_42:
  }
}

uint64_t __75__HFCameraPlaybackEngineEventCache__validateAndInsertRawEvents_completion___block_invoke_34(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)_generateViewModelWithRawEventUpdates:(id)updates completion:(id)completion
{
  v64 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  completionCopy = completion;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  rawEvents = [(HFCameraPlaybackEngineEventCache *)self rawEvents];
  strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [MEMORY[0x277CBEB58] set];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__HFCameraPlaybackEngineEventCache__generateViewModelWithRawEventUpdates_completion___block_invoke;
  aBlock[3] = &unk_277DF2A88;
  v14 = array;
  v54 = v14;
  v35 = updatesCopy;
  v55 = v35;
  v36 = v10;
  v56 = v36;
  v15 = v11;
  v57 = v15;
  v38 = strongToWeakObjectsMapTable;
  v58 = v38;
  v16 = strongToWeakObjectsMapTable2;
  v59 = v16;
  v17 = _Block_copy(aBlock);
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __85__HFCameraPlaybackEngineEventCache__generateViewModelWithRawEventUpdates_completion___block_invoke_39;
  v43[3] = &unk_277DF2AB0;
  v46 = &v47;
  v18 = v17;
  v45 = v18;
  v19 = array2;
  v44 = v19;
  [rawEvents na_each:v43];
  if (v48[5])
  {
    lastObject = [rawEvents lastObject];
    objc_opt_class();
    v21 = lastObject;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if ([v23 isReachable])
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    v26 = [HFCameraScrubberReachabilityEventContainer alloc];
    v27 = [(HFCameraScrubberReachabilityEventContainer *)v26 initWithStartEvent:v48[5] endEvent:v25];
    (*(v18 + 2))(v18, v27);
  }

  v28 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v14 count];
    *buf = 136315394;
    v61 = "[HFCameraPlaybackEngineEventCache _generateViewModelWithRawEventUpdates:completion:]";
    v62 = 2048;
    v63 = v29;
    _os_log_impl(&dword_20D9BF000, v28, OS_LOG_TYPE_DEFAULT, "%s: adding %lu events to cache", buf, 0x16u);
  }

  [(HFCameraPlaybackEngineEventCache *)self setEvents:v14];
  [(HFCameraPlaybackEngineEventCache *)self setClips:v19];
  [(HFCameraPlaybackEngineEventCache *)self setFirstOfTheDayClips:v38];
  [(HFCameraPlaybackEngineEventCache *)self setFirstOfTheDayEvents:v16];
  debugLogger = [(HFCameraPlaybackEngineEventCache *)self debugLogger];
  [debugLogger logEvents:v14 toJSONWithDebugLogType:1 completionHandler:&__block_literal_global_44];

  v31 = [HFCameraPlaybackEngineEventCacheUpdateResult alloc];
  v32 = [MEMORY[0x277CBEB98] set];
  v33 = [(HFCameraPlaybackEngineEventCacheUpdateResult *)v31 initWithUpdatedIdentifiers:v36 replacedIdentifiers:v15 removedIdentifiers:v32];

  if (+[HFUtilities isInternalTest])
  {
    completionCopy[2](completionCopy, v33);
  }

  else
  {
    workQueue2 = [(HFCameraPlaybackEngineEventCache *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HFCameraPlaybackEngineEventCache__generateViewModelWithRawEventUpdates_completion___block_invoke_2;
    block[3] = &unk_277DF2AD8;
    v42 = completionCopy;
    v41 = v33;
    dispatch_async(workQueue2, block);
  }

  _Block_object_dispose(&v47, 8);
}

void __85__HFCameraPlaybackEngineEventCache__generateViewModelWithRawEventUpdates_completion___block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) addObject:v3];
  if ([v3 containerType] != 2)
  {
    v18 = [*(a1 + 40) updatedIdentifiers];
    v19 = [v3 uniqueIdentifier];
    v20 = [v18 containsObject:v19];

    if (v20)
    {
      goto LABEL_14;
    }

    v29 = [*(a1 + 40) replacedIdentifiers];
    v30 = [v3 uniqueIdentifier];
    v31 = [v29 containsObject:v30];

    if ((v31 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  v4 = objc_opt_class();
  v5 = v3;
  if (!v5)
  {
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v5;
  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];

LABEL_8:
    v7 = 0;
  }

  v10 = [v7 eventUniqueIdentifiers];
  v11 = [*(a1 + 40) updatedIdentifiers];
  v12 = [v10 intersectsSet:v11];

  if (v12)
  {
    v13 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 hf_prettyDescription];
      v15 = [*(a1 + 40) updatedIdentifiers];
      v16 = [v7 eventUniqueIdentifiers];
      v17 = [v15 na_setByIntersectingWithSet:v16];
      *buf = 138412546;
      v57 = v14;
      v58 = 2112;
      v59 = v17;
      _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "Reachability event container contains updated events: %@; identifiers: %@", buf, 0x16u);
    }

LABEL_14:
    v21 = *(a1 + 48);
    v22 = [v3 uniqueIdentifier];
    [v21 addObject:v22];

    v23 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v3 hf_prettyDescription];
      *buf = 138412290;
      v57 = v24;
      v25 = "Added event to updatedIdentifiers: %@";
LABEL_21:
      _os_log_impl(&dword_20D9BF000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v26 = [v7 eventUniqueIdentifiers];
  v27 = [*(a1 + 40) replacedIdentifiers];
  v28 = [v26 intersectsSet:v27];

  if (v28)
  {
LABEL_19:
    v32 = *(a1 + 56);
    v33 = [v3 uniqueIdentifier];
    [v32 addObject:v33];

    v23 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v3 hf_prettyDescription];
      *buf = 138412290;
      v57 = v24;
      v25 = "Added event to replacedIdentifiers: %@";
      goto LABEL_21;
    }

LABEL_22:
  }

LABEL_23:
  v34 = *(a1 + 72);
  v35 = *(a1 + 64);
  v36 = v34;
  v37 = v3;
  v38 = [v37 dateOfOccurrence];
  v39 = [v38 hf_startOfDay];

  if ([v37 containerType] == 1)
  {
    v40 = [v35 objectForKey:v39];
    v41 = v40;
    if (v40)
    {
      v42 = [v40 dateOfOccurrence];
      v43 = [v37 dateOfOccurrence];
      v44 = [v42 compare:v43];

      if (v44 != 1)
      {
        goto LABEL_34;
      }
    }

    v45 = objc_opt_class();
    v46 = v37;
    if (v46)
    {
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }

      v48 = v46;
      if (v47)
      {
        goto LABEL_33;
      }

      v49 = [MEMORY[0x277CCA890] currentHandler];
      v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v49 handleFailureInFunction:v50 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v45, objc_opt_class()}];
    }

    v48 = 0;
LABEL_33:

    [v35 setObject:v48 forKey:v39];
LABEL_34:
  }

  v51 = [v36 objectForKey:v39];
  v52 = v51;
  if (!v51 || ([v51 dateOfOccurrence], v53 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "dateOfOccurrence"), v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v53, "compare:", v54), v54, v53, v55 == 1))
  {
    [v36 setObject:v37 forKey:v39];
  }
}

void __85__HFCameraPlaybackEngineEventCache__generateViewModelWithRawEventUpdates_completion___block_invoke_39(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = [v29 containerType];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      goto LABEL_27;
    }

    v4 = objc_opt_class();
    v5 = v29;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      if (v6)
      {
        goto LABEL_10;
      }

      v8 = [MEMORY[0x277CCA890] currentHandler];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
      [v8 handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v4, objc_opt_class()}];
    }

    v7 = 0;
LABEL_10:

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      v10 = [[HFCameraScrubberReachabilityEventContainer alloc] initWithStartEvent:*(*(*(a1 + 48) + 8) + 40) endEvent:v7];
      (*(*(a1 + 40) + 16))();
      v11 = objc_alloc(MEMORY[0x277CD1928]);
      v12 = [MEMORY[0x277CCAD78] UUID];
      v13 = [v7 hf_endDate];
      v14 = [v11 initWithUniqueIdentifier:v12 dateOfOccurrence:v13 reachable:0];
      v15 = *(*(a1 + 48) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) addObject:v7];
    goto LABEL_26;
  }

  v17 = objc_opt_class();
  v18 = v29;
  if (!v18)
  {
    goto LABEL_19;
  }

  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v7 = v18;
  if (!v19)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v20 handleFailureInFunction:v21 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v17, objc_opt_class()}];

LABEL_19:
    v7 = 0;
  }

  v22 = *(*(*(a1 + 48) + 8) + 40);
  v23 = [v7 isReachable];
  if (v22)
  {
    if (v23)
    {
      v24 = [[HFCameraScrubberReachabilityEventContainer alloc] initWithStartEvent:*(*(*(a1 + 48) + 8) + 40) endEvent:v7];
      (*(*(a1 + 40) + 16))();
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;

LABEL_25:
    }
  }

  else if ((v23 & 1) == 0)
  {
    v27 = *(*(a1 + 48) + 8);
    v28 = v7;
    v24 = *(v27 + 40);
    *(v27 + 40) = v28;
    goto LABEL_25;
  }

LABEL_26:

LABEL_27:
}

+ (BOOL)isValidEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  v4 = eventCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [v6 quality])
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "[INVALID]: timeline ineligible: %@", &v16, 0xCu);
    }

LABEL_9:
    v8 = 0;
    goto LABEL_18;
  }

  v9 = v4;
  if ([v9 isComplete])
  {
    objc_msgSend_duration(v9);
    if (fabs(v10) < 2.22044605e-16)
    {
      v6 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "[INVALID]: not displayable: %@", &v16, 0xCu);
      }

      goto LABEL_9;
    }
  }

  v11 = v9;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-*MEMORY[0x277CCF378]];
  dateOfOccurrence = [v11 dateOfOccurrence];
  v13 = [dateOfOccurrence compare:v6];

  v8 = v13 == 1;
  if (v13 != 1)
  {
    v14 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v11;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "[INVALID]: expired: %@", &v16, 0xCu);
    }
  }

LABEL_18:

  return v8;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[HFCameraPlaybackEngineEventCache dealloc]";
    _os_log_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = HFCameraPlaybackEngineEventCache;
  [(HFCameraPlaybackEngineEventCache *)&v4 dealloc];
}

- (void)_setupDebugHandler
{
  objc_initWeak(&location, self);
  v2 = +[HFDebugStateDumpManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__HFCameraPlaybackEngineEventCache__setupDebugHandler__block_invoke;
  v6[3] = &unk_277DF2B00;
  objc_copyWeak(&v7, &location);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 registerStateDumpHandler:v6 withName:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __54__HFCameraPlaybackEngineEventCache__setupDebugHandler__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [HFStateDumpBuilderContext contextWithDetailLevel:2];
    v3 = [HFStateDumpBuilder builderWithObject:WeakRetained context:v2];

    v4 = [WeakRetained events];
    [v3 setObject:v4 forKeyedSubscript:@"events"];

    v5 = [WeakRetained clips];
    [v3 setObject:v5 forKeyedSubscript:@"clips"];

    v6 = [WeakRetained firstOfTheDayEvents];
    [v3 setObject:v6 forKeyedSubscript:@"firstOfTheDayEvents"];

    v7 = [WeakRetained firstOfTheDayClips];
    [v3 setObject:v7 forKeyedSubscript:@"firstOfTheDayClips"];

    v8 = [v3 buildPropertyListRepresentation];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  return v8;
}

@end