@interface DSSharingType
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (DSSharingType)initWithSource:(id)source;
- (NSArray)allPeople;
- (NSArray)sortedPeople;
- (NSString)displayName;
- (NSString)localizedDetailText;
- (id)valueForKey:(id)key;
- (int64_t)score;
- (unint64_t)hash;
- (void)addPerson:(id)person;
- (void)removePerson:(id)person;
- (void)stopAllSharingOnQueue:(id)queue completion:(id)completion;
- (void)stopSharingPeople:(id)people queue:(id)queue completion:(id)completion;
- (void)stopSharingWithPeople:(id)people asParticipantsOnQueue:(id)queue completion:(id)completion;
@end

@implementation DSSharingType

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DSLogSharingType = os_log_create("com.apple.DigitalSeparation", "DSSharingType");

    MEMORY[0x2821F96F8]();
  }
}

- (DSSharingType)initWithSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = DSSharingType;
  v5 = [(DSSharingType *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(DSSharingType *)v5 setSource:sourceCopy];
    v7 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(DSSharingType *)v6 setPeople:v7];
  }

  return v6;
}

- (void)addPerson:(id)person
{
  personCopy = person;
  people = [(DSSharingType *)self people];
  [people addObject:personCopy];
}

- (void)removePerson:(id)person
{
  personCopy = person;
  people = [(DSSharingType *)self people];
  [people removeObject:personCopy];
}

- (int64_t)score
{
  source = [(DSSharingType *)self source];
  name = [source name];
  v4 = [DSSourceDescriptor sourceDescriptorForSource:name];
  priority = [v4 priority];

  return priority;
}

- (NSString)displayName
{
  source = [(DSSharingType *)self source];
  name = [source name];
  v4 = [DSSourceDescriptor sourceDescriptorForSource:name];
  localizedName = [v4 localizedName];

  return localizedName;
}

- (NSString)localizedDetailText
{
  source = [(DSSharingType *)self source];
  name = [source name];
  v5 = [DSSourceDescriptor sourceDescriptorForSource:name];

  v6 = [v5 localizedDetailTextByType:self];

  return v6;
}

- (unint64_t)hash
{
  source = [(DSSharingType *)self source];
  name = [source name];
  v4 = [name hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      source = [(DSSharingType *)self source];
      name = [source name];
      source2 = [(DSSharingType *)equalCopy source];
      name2 = [source2 name];
      v9 = [name isEqualToString:name2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)valueForKey:(id)key
{
  if ([key isEqualToString:@"displayName"])
  {
    displayName = [(DSSharingType *)self displayName];
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

- (NSArray)sortedPeople
{
  people = [(DSSharingType *)self people];
  v3 = [people sortedArrayUsingComparator:&__block_literal_global_0];

  return v3;
}

uint64_t __29__DSSharingType_sortedPeople__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 score];
  if (v6 >= [v5 score])
  {
    v8 = [v4 score];
    if (v8 <= [v5 score])
    {
      v9 = [v4 displayName];
      v10 = [v5 displayName];
      v7 = [v9 localizedStandardCompare:v10];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (NSArray)allPeople
{
  people = [(DSSharingType *)self people];
  array = [people array];

  return array;
}

- (void)stopAllSharingOnQueue:(id)queue completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  completionCopy = completion;
  source = [(DSSharingType *)self source];
  name = [source name];
  v10 = [DSRestrictionStore isSourceRestricted:name];

  if (v10)
  {
    v11 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      name2 = [source name];
      *buf = 138412290;
      v31 = name2;
      _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke;
    block[3] = &unk_278F72600;
    v29 = completionCopy;
    v28 = source;
    dispatch_async(queueCopy, block);
  }

  else
  {
    objc_initWeak(&location, self);
    v14 = os_signpost_id_generate(DSLogSharingType);
    v15 = DSLogSharingType;
    v16 = v15;
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "stopAll", " enableTelemetry=YES ", buf, 2u);
    }

    people = [(DSSharingType *)self people];
    v18 = [people copy];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312;
    v20[3] = &unk_278F72678;
    v21 = source;
    v22 = queueCopy;
    v24 = completionCopy;
    v19 = v18;
    v23 = v19;
    objc_copyWeak(v25, &location);
    v25[1] = v14;
    [v21 stopAllSharingWithCompletion:v20];
    objc_destroyWeak(v25);

    objc_destroyWeak(&location);
  }
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:6 sourceName:v3];
  (*(v1 + 16))(v1, v2);
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = [v3 ds_errorFromIgnorableError:v6 sourceName:v7];

  if (v8)
  {
    v9 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_ERROR))
    {
      __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312_cold_1(v4, v9);
    }

    v10 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_314;
    block[3] = &unk_278F72628;
    v11 = &v29;
    v29 = *(a1 + 56);
    v27 = *(a1 + 32);
    v28 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = *(a1 + 48);
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          WeakRetained = objc_loadWeakRetained((a1 + 64));
          [WeakRetained removePerson:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    v19 = *(a1 + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_2;
    v20[3] = &unk_278F72650;
    v21[1] = *(a1 + 72);
    v11 = v21;
    v21[0] = *(a1 + 56);
    dispatch_async(v19, v20);
  }
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_314(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) name];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:v4];
  (*(v2 + 16))(v2, v5);
}

uint64_t __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = DSLogSharingType;
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v3, OS_SIGNPOST_INTERVAL_END, v4, "stopAll", " enableTelemetry=YES ", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_317(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:MEMORY[0x277CBEBF8]];
  (*(v1 + 16))(v1, v2);
}

- (void)stopSharingWithPeople:(id)people asParticipantsOnQueue:(id)queue completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  queue = queue;
  completionCopy = completion;
  source = [(DSSharingType *)self source];
  name = [source name];
  v10 = [DSRestrictionStore isSourceRestricted:name];

  if (v10)
  {
    v11 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_INFO))
    {
      v12 = v11;
      name2 = [source name];
      *buf = 138412290;
      v45 = name2;
      _os_log_impl(&dword_248C40000, v12, OS_LOG_TYPE_INFO, "Cannot reset %@ due to restrictions", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke;
    block[3] = &unk_278F72600;
    v43 = completionCopy;
    v42 = source;
    dispatch_async(queue, block);

    array = v43;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = peopleCopy;
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v48 count:16];
    if (v16)
    {
      v17 = *v38;
      do
      {
        v18 = 0;
        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v37 + 1) + 8 * v18);
          name3 = [source name];
          v21 = [v19 participationForSourceName:name3];
          [array addObjectsFromArray:v21];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v37 objects:v48 count:16];
      }

      while (v16);
    }

    objc_initWeak(&location, self);
    v22 = os_signpost_id_generate(DSLogSharingType);
    v23 = DSLogSharingType;
    v24 = v23;
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_248C40000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "stopParticipants", " enableTelemetry=YES ", buf, 2u);
    }

    v25 = DSLogSharingType;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      name4 = [source name];
      *buf = 138478083;
      v45 = array;
      v46 = 2114;
      v47 = name4;
      _os_log_impl(&dword_248C40000, v25, OS_LOG_TYPE_INFO, "Stopping sharing of participants %{private}@ from source %{public}@", buf, 0x16u);
    }

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319;
    v30[3] = &unk_278F72678;
    v31 = source;
    queueCopy = queue;
    v34 = completionCopy;
    v33 = v15;
    objc_copyWeak(v35, &location);
    v35[1] = v22;
    [v31 stopSharingWithParticipants:array completion:v30];
    objc_destroyWeak(v35);

    objc_destroyWeak(&location);
  }
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:6 sourceName:v3];
  (*(v1 + 16))(v1, v2);
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 name];
  v8 = [v3 ds_errorFromIgnorableError:v6 sourceName:v7];

  if (v8)
  {
    v9 = DSLogSharingType;
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_ERROR))
    {
      __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319_cold_1(v4, v9);
    }

    v10 = *(a1 + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_320;
    block[3] = &unk_278F72628;
    v11 = &v29;
    v29 = *(a1 + 56);
    v27 = *(a1 + 32);
    v28 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = *(a1 + 48);
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          WeakRetained = objc_loadWeakRetained((a1 + 64));
          [WeakRetained removePerson:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v14);
    }

    v19 = *(a1 + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_2;
    v20[3] = &unk_278F72650;
    v21[1] = *(a1 + 72);
    v11 = v21;
    v21[0] = *(a1 + 56);
    dispatch_async(v19, v20);
  }
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_320(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) name];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v5 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:v4];
  (*(v2 + 16))(v2, v5);
}

uint64_t __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_2(uint64_t a1)
{
  v2 = DSLogSharingType;
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_248C40000, v3, OS_SIGNPOST_INTERVAL_END, v4, "stopParticipants", " enableTelemetry=YES ", v6, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_321(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) name];
  v2 = [DSError errorWithCode:2 sourceName:v3 underlyingErrors:MEMORY[0x277CBEBF8]];
  (*(v1 + 16))(v1, v2);
}

- (void)stopSharingPeople:(id)people queue:(id)queue completion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  peopleCopy = people;
  queueCopy = queue;
  completionCopy = completion;
  source = [(DSSharingType *)self source];
  if (objc_opt_respondsToSelector())
  {
    [(DSSharingType *)self stopSharingWithPeople:peopleCopy asParticipantsOnQueue:queueCopy completion:completionCopy];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v10 = dispatch_group_create();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = peopleCopy;
    v11 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v11)
    {
      v23 = *v37;
      v21 = queueCopy;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          objc_initWeak(&location, self);
          v14 = DSLogSharingType;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            source2 = [(DSSharingType *)self source];
            name = [source2 name];
            *buf = 138478083;
            v41 = v13;
            v42 = 2114;
            v43 = name;
            _os_log_impl(&dword_248C40000, v14, OS_LOG_TYPE_INFO, "Stopping sharing of %{private}@ from source %{public}@", buf, 0x16u);

            queueCopy = v21;
          }

          dispatch_group_enter(v10);
          v44 = source;
          v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke;
          v28[3] = &unk_278F726A0;
          v29 = source;
          v30 = v13;
          v31 = array;
          selfCopy = self;
          objc_copyWeak(&v34, &location);
          v33 = v10;
          [v13 stopSharingSources:v17 queue:queueCopy completion:v28];

          objc_destroyWeak(&v34);
          objc_destroyWeak(&location);
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke_324;
    block[3] = &unk_278F726C8;
    v26 = array;
    v27 = completionCopy;
    v18 = array;
    dispatch_group_notify(v10, queueCopy, block);
  }
}

void __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 name];
  v7 = [v3 ds_errorFromIgnorableError:v5 sourceName:v6];

  v8 = DSLogSharingType;
  if (v7)
  {
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = v8;
      v19 = [v16 name];
      *buf = 138478339;
      v22 = v17;
      v23 = 2114;
      v24 = v19;
      v25 = 2114;
      v26 = v7;
      _os_log_error_impl(&dword_248C40000, v18, OS_LOG_TYPE_ERROR, "Failed to stop sharing with %{private}@ from source %{public}@ because %{public}@", buf, 0x20u);
    }

    v9 = [*(a1 + 32) name];
    v20 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    WeakRetained = [DSError errorWithCode:2 sourceName:v9 underlyingErrors:v10];

    [*(a1 + 48) addObject:WeakRetained];
  }

  else
  {
    if (os_log_type_enabled(DSLogSharingType, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 56);
      v13 = v8;
      v14 = [v12 source];
      v15 = [v14 name];
      *buf = 138477827;
      v22 = v15;
      _os_log_impl(&dword_248C40000, v13, OS_LOG_TYPE_INFO, "Stopping sharing with %{private}@ complete", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [WeakRetained removePerson:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 64));
}

void __52__DSSharingType_stopSharingPeople_queue_completion___block_invoke_324(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [DSError errorWithCode:2 underlyingErrors:*(a1 + 32)];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(*(a1 + 40) + 16))();
}

- (void)stopAllSharingOnQueue:(uint64_t)a3 completion:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_248C40000, v5, OS_LOG_TYPE_ERROR, "Failed to stop all sharing with %{public}@ because exception %{public}@", v4, 0x16u);
}

void __50__DSSharingType_stopAllSharingOnQueue_completion___block_invoke_312_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v5, v6, "Failed to stop all sharing with %{public}@ because %{public}@", v7, v8, v9, v10);
}

- (void)stopSharingWithPeople:(void *)a1 asParticipantsOnQueue:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&dword_248C40000, v5, OS_LOG_TYPE_ERROR, "Failed to stop sharing with participants for %{public}@ because exception %{public}@", v4, 0x16u);
}

void __72__DSSharingType_stopSharingWithPeople_asParticipantsOnQueue_completion___block_invoke_319_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 name];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_248C40000, v5, v6, "Failed to stop sharing with participants for %{public}@ because %{public}@", v7, v8, v9, v10);
}

@end