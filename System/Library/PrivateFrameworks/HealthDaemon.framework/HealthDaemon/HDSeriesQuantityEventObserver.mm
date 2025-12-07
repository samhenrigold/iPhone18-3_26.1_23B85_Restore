@interface HDSeriesQuantityEventObserver
- (HDSeriesQuantityEventObserver)initWithProfile:(id)profile;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDSeriesQuantityEventObserver

- (HDSeriesQuantityEventObserver)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = HDSeriesQuantityEventObserver;
  v5 = [(HDSeriesQuantityEventObserver *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_profile, profileCopy);
    dataManager = [profileCopy dataManager];
    v9 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB960]];
    [dataManager addObserver:v6 forDataType:v9];

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    dataManager2 = [WeakRetained dataManager];
    v12 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9A0]];
    [dataManager2 addObserver:v6 forDataType:v12];
  }

  return v6;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v53 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v34 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB960]];
  v33 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB9A0]];
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = addedCopy;
  v7 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    v10 = *MEMORY[0x277CCCB88];
    v11 = *MEMORY[0x277CCCB58];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        _source = [v13 _source];
        if (![_source _isLocalDevice])
        {
          goto LABEL_11;
        }

        endDate = [v13 endDate];
        [endDate timeIntervalSinceNow];
        v17 = v16;

        if (v17 >= -600.0)
        {
          sampleType = [v13 sampleType];
          v19 = [sampleType isEqual:v34];

          v20 = v11;
          if ((v19 & 1) != 0 || ([v13 sampleType], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqual:", v33), v21, v20 = v10, v22))
          {
            _source = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v20];
            [v6 addObject:_source];
LABEL_11:

            continue;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v8);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = v6;
  v23 = [v35 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v35);
        }

        v27 = *(*(&v37 + 1) + 8 * j);
        if (self)
        {
          _HKInitializeLogging();
          v28 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy = self;
            v51 = 2114;
            v52 = v27;
            _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: Observed addition of notification event. Requesting series data of type %{public}@ to get frozen.", buf, 0x16u);
          }

          WeakRetained = objc_loadWeakRetained(&self->_profile);
          dataCollectionManager = [WeakRetained dataCollectionManager];
          date = [MEMORY[0x277CBEAA8] date];
          v32 = [MEMORY[0x277CBEB98] setWithObject:v27];
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __54__HDSeriesQuantityEventObserver__freezeSeriesForType___block_invoke;
          v45[3] = &unk_278616020;
          v45[4] = self;
          v46 = v27;
          [dataCollectionManager requestAggregationThroughDate:date types:v32 mode:0 options:3 completion:v45];
        }
      }

      v24 = [v35 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v24);
  }
}

void __54__HDSeriesQuantityEventObserver__freezeSeriesForType___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v7 = [WeakRetained daemon];
    v8 = [v7 behavior];
    v9 = [v8 isAppleWatch];

    if (v9)
    {
      v10 = objc_loadWeakRetained((*(a1 + 32) + 8));
      v11 = [v10 nanoSyncManager];
      [v11 syncHealthDataWithOptions:0 reason:@"audio-exposure-event" completion:0];
    }
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = 138543874;
      v16 = v13;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = v5;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@: Error freezing series of type %{public}@. %{public}@", &v15, 0x20u);
    }
  }
}

@end