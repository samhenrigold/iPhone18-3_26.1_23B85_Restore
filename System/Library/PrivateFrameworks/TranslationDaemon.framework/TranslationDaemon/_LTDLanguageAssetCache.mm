@interface _LTDLanguageAssetCache
+ (id)_normalizeAndSortUpdatesFromObservations:(id)observations toObservations:(id)toObservations;
+ (id)shared;
- (BOOL)applyProgressUpdateForAsset:(id)asset;
- (BOOL)isReadyForFilter:(unint64_t)filter;
- (_LTDLanguageAssetCache)init;
- (_LTObservationFilteringConditions)observationFilterConditions;
- (id)_availableIdentifiers;
- (id)_readAllAssets;
- (id)assetForIdentifier:(id)identifier;
- (id)assetsFilteredUsing:(unint64_t)using;
- (id)preheatWithLanguages:(id)languages;
- (void)addObserver:(id)observer;
- (void)applyAssetUpdates:(id)updates;
- (void)markReadyForFilter:(unint64_t)filter;
- (void)multicastObservers;
- (void)notify:(id)notify ofObservations:(id)observations;
- (void)removeObserverForID:(id)d;
- (void)reset;
- (void)setInitialObservationsForIdentifiers:(id)identifiers;
- (void)setRequiredAssets:(id)assets localeRanks:(id)ranks;
@end

@implementation _LTDLanguageAssetCache

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[_LTDLanguageAssetCache shared];
  }

  v3 = shared__cache;

  return v3;
}

- (id)_readAllAssets
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_cache allValues];
  v4 = [allValues copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (_LTObservationFilteringConditions)observationFilterConditions
{
  WeakRetained = objc_loadWeakRetained(&self->_observationFilterConditions);

  return WeakRetained;
}

- (_LTDLanguageAssetCache)init
{
  v11.receiver = self;
  v11.super_class = _LTDLanguageAssetCache;
  v2 = [(_LTDLanguageAssetCache *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = objc_opt_new();
    requiredAssetIdentifiers = v2->_requiredAssetIdentifiers;
    v2->_requiredAssetIdentifiers = v5;

    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_readyFilterSet = 0;
    objc_storeWeak(&v2->_observationFilterConditions, v2);
    v7 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = v2;
  }

  return v2;
}

- (id)_availableIdentifiers
{
  os_unfair_lock_lock(&self->_lock);
  allKeys = [(NSMutableDictionary *)self->_cache allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)markReadyForFilter:(unint64_t)filter
{
  os_unfair_lock_lock(&self->_lock);
  v7 = __ROR8__(filter, 4);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = self->_readyFilterSet | 0x20;
      goto LABEL_11;
    }

    if (v7 == 4)
    {
      v8 = self->_readyFilterSet | 0x40;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    if (v7 == 1)
    {
      v8 = self->_readyFilterSet | 0x10;
LABEL_11:
      self->_readyFilterSet = v8;
      goto LABEL_12;
    }
  }

  v9 = _LTOSLogAssets(v5, v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(_LTDLanguageAssetCache *)filter markReadyForFilter:v9];
  }

LABEL_12:
  os_unfair_lock_unlock(&self->_lock);
  [(_LTDLanguageAssetCache *)self multicastObservers];
}

- (BOOL)isReadyForFilter:(unint64_t)filter
{
  os_unfair_lock_lock(&self->_lock);
  readyFilterSet = self->_readyFilterSet;
  os_unfair_lock_unlock(&self->_lock);
  return (filter & ~readyFilterSet) == 0;
}

- (id)preheatWithLanguages:(id)languages
{
  v70 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v48 = +[_LTDLanguageAssetService _selectedIdentifiers];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(languagesCopy, "count")}];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(languagesCopy, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = languagesCopy;
  v6 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v65;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v65 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v64 + 1) + 8 * i);
        locale = [v10 locale];
        [v4 addObject:locale];

        ltIdentifier = [v10 ltIdentifier];
        [v5 addObject:ltIdentifier];
      }

      v7 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    }

    while (v7);
  }

  v13 = [_LTDLanguageAssetService setSelectedLocales:v4];
  v15 = _LTOSLogAssets(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [(_LTDLanguageAssetCache *)v5 preheatWithLanguages:v15];
  }

  v16 = MEMORY[0x277CBEB58];
  selfCopy2 = self;
  _availableIdentifiers = [(_LTDLanguageAssetCache *)self _availableIdentifiers];
  v19 = [v16 setWithArray:_availableIdentifiers];

  [v19 unionSet:v48];
  [v19 unionSet:v5];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v21)
  {
    v22 = v21;
    v55 = *v61;
    v49 = v5;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v61 != v55)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v60 + 1) + 8 * j);
        v25 = [(_LTDLanguageAssetCache *)selfCopy2 assetForIdentifier:v24];
        if (![v5 containsObject:v24])
        {
          progress = [v25 progress];
          [progress removeAllComponents];

          progress2 = [v25 progress];
          [progress2 setOfflineState:0];
LABEL_42:

          goto LABEL_43;
        }

        if ([v4 count] == 1)
        {
          if ([v24 isEqualToString:@"hi_IN"])
          {
            goto LABEL_43;
          }

          progress3 = [v25 progress];
          [progress3 setComponentFilter:@"ASR"];
        }

        else
        {
          v29 = [v24 isEqualToString:@"uk_UA"];
          if (v29)
          {
            v31 = _LTOSLogAssets(v29, v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              [(_LTDLanguageAssetCache *)&v58 preheatWithLanguages:v59];
            }

            progress3 = [v25 progress];
            if ([progress3 isFinished])
            {
              v32 = @"ASR";
            }

            else
            {
              v32 = @"ASR|MT";
            }
          }

          else
          {
            v33 = [v24 isEqualToString:@"hi_IN"];
            if (v33)
            {
              v35 = _LTOSLogAssets(v33, v34);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                [(_LTDLanguageAssetCache *)&v56 preheatWithLanguages:v57];
              }

              progress3 = [v25 progress];
              v36 = [progress3 isFinished] == 0;
              v37 = @"PB|MT";
              v38 = @"PB";
            }

            else
            {
              progress3 = [v25 progress];
              v36 = [progress3 isFinished] == 0;
              v37 = @"ASR|PB|MT";
              v38 = @"ASR|PB";
            }

            if (v36)
            {
              v32 = v37;
            }

            else
            {
              v32 = v38;
            }
          }

          progress4 = [v25 progress];
          [progress4 setComponentFilter:v32];
        }

        if (+[_LTDAssetService _awaitDownloadOfTTSAssets])
        {
          v40 = v22;
          v41 = v4;
          v42 = v20;
          progress2 = [v25 progress];
          componentFilter = [progress2 componentFilter];
          v44 = [componentFilter length];
          if (v44)
          {
            progress5 = [v25 progress];
            componentFilter2 = [progress5 componentFilter];
            v45 = [componentFilter2 stringByAppendingString:@"|TTS"];
            v51 = v45;
          }

          else
          {
            v45 = @"TTS";
          }

          progress6 = [v25 progress];
          [progress6 setComponentFilter:v45];

          if (v44)
          {
          }

          v20 = v42;
          v4 = v41;
          v22 = v40;
          v5 = v49;
          selfCopy2 = self;
          goto LABEL_42;
        }

LABEL_43:
      }

      v22 = [v20 countByEnumeratingWithState:&v60 objects:v68 count:16];
    }

    while (v22);
  }

  return v4;
}

- (void)applyAssetUpdates:(id)updates
{
  v32 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  v20 = +[_LTDLanguageAssetService _selectedIdentifiers];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = updatesCopy;
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        v7 = MEMORY[0x277CBEB58];
        localeIdentifiers = [v6 localeIdentifiers];
        v9 = [v7 setWithArray:localeIdentifiers];

        [v9 intersectSet:v20];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v23;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v23 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [(_LTDLanguageAssetCache *)self assetForIdentifier:*(*(&v22 + 1) + 8 * j)];
              progress = [v15 progress];
              progress2 = [v6 progress];
              [progress addComponent:progress2];
            }

            v12 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v12);
        }
      }

      v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v21);
  }

  [(_LTDLanguageAssetCache *)self multicastObservers];
}

- (void)setRequiredAssets:(id)assets localeRanks:(id)ranks
{
  ranksCopy = ranks;
  assetsCopy = assets;
  v11 = [assetsCopy _ltCompactMap:&__block_literal_global_36];
  os_unfair_lock_lock(&self->_lock);
  v8 = [MEMORY[0x277CBEB98] setWithArray:v11];
  requiredAssetIdentifiers = self->_requiredAssetIdentifiers;
  self->_requiredAssetIdentifiers = v8;

  localeRanks = self->_localeRanks;
  self->_localeRanks = ranksCopy;

  os_unfair_lock_unlock(&self->_lock);
  [(_LTDLanguageAssetCache *)self applyAssetUpdates:assetsCopy];
}

- (BOOL)applyProgressUpdateForAsset:(id)asset
{
  v50 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  os_unfair_lock_lock(&self->_lock);
  requiredAssetIdentifiers = self->_requiredAssetIdentifiers;
  identifier = [assetCopy identifier];
  v7 = [(NSSet *)requiredAssetIdentifiers containsObject:identifier];

  os_unfair_lock_unlock(&self->_lock);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    shouldPurgeWithLocale = [assetCopy shouldPurgeWithLocale];
    v10 = shouldPurgeWithLocale;
  }

  v11 = _LTOSLogAssets(shouldPurgeWithLocale, v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v27 = v11;
    identifier2 = [assetCopy identifier];
    progress = [assetCopy progress];
    [progress fractionCompleted];
    *buf = 138544130;
    v43 = identifier2;
    v44 = 2048;
    v45 = v30;
    v46 = 1024;
    v47 = v7;
    v48 = 1024;
    v49 = v10;
    _os_log_debug_impl(&dword_232E53000, v27, OS_LOG_TYPE_DEBUG, "Cache progress update: %{public}@ [%f] required: %{BOOL}i cancelled: %{BOOL}i", buf, 0x22u);

    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else if (!v10)
  {
    goto LABEL_22;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  components = [assetCopy components];
  v13 = [components countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(components);
        }

        progress2 = [*(*(&v35 + 1) + 8 * v16) progress];
        [progress2 cancel];

        ++v16;
      }

      while (v14 != v16);
      v14 = [components countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v14);
  }

  if ([assetCopy isMultiLocaleAsset])
  {
    _readAllAssets = [(_LTDLanguageAssetCache *)self _readAllAssets];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = [_readAllAssets countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        v22 = 0;
        do
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(_readAllAssets);
          }

          progress3 = [*(*(&v31 + 1) + 8 * v22) progress];
          progress4 = [assetCopy progress];
          [progress3 removeComponent:progress4];

          ++v22;
        }

        while (v20 != v22);
        v20 = [_readAllAssets countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v20);
    }
  }

LABEL_22:
  if (v7)
  {
    v39 = assetCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [(_LTDLanguageAssetCache *)self applyAssetUpdates:v25];
  }

  return v10 ^ 1;
}

- (id)assetForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:identifierCopy];
    v5 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v6 state:3];
    cache = self->_cache;
    ltIdentifier = [v5 ltIdentifier];
    [(NSMutableDictionary *)cache setObject:v5 forKeyedSubscript:ltIdentifier];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)assetsFilteredUsing:(unint64_t)using
{
  v30 = *MEMORY[0x277D85DE8];
  if (![(_LTDLanguageAssetCache *)self isReadyForFilter:?])
  {
    v8 = 0;
    goto LABEL_26;
  }

  _readAllAssets = [(_LTDLanguageAssetCache *)self _readAllAssets];
  v6 = +[_LTDLanguageAssetService _selectedIdentifiers];
  v7 = v6;
  v8 = 0;
  v9 = __ROR8__(using, 4);
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = _readAllAssets;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (!v11)
        {
          goto LABEL_16;
        }

        v12 = v11;
        v13 = *v22;
        while (1)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            ltIdentifier = [v15 ltIdentifier];
            if (([v7 containsObject:ltIdentifier] & 1) == 0)
            {
              state = [v15 state];

              if (!state)
              {
                continue;
              }

              ltIdentifier = [v15 progress];
              [ltIdentifier setOfflineState:0];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (!v12)
          {
LABEL_16:

            v18 = v10;
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      v18 = _readAllAssets;
LABEL_22:
      v8 = v18;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __46___LTDLanguageAssetCache_assetsFilteredUsing___block_invoke_2;
    v25[3] = &unk_2789B6108;
    v26 = v6;
    v8 = [_readAllAssets lt_filterUsingBlock:v25];
    v19 = v26;
    goto LABEL_24;
  }

  if (v9 == 4)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __46___LTDLanguageAssetCache_assetsFilteredUsing___block_invoke;
    v27[3] = &unk_2789B6108;
    v28 = v6;
    v8 = [_readAllAssets lt_filterUsingBlock:v27];
    v19 = v28;
LABEL_24:
  }

LABEL_25:

LABEL_26:

  return v8;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  self->_readyFilterSet = 0;
  [(NSMutableDictionary *)self->_cache removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  observerId = [observerCopy observerId];
  [(NSMutableDictionary *)observers setObject:observerCopy forKeyedSubscript:observerId];

  isIndeterminate = [observerCopy isIndeterminate];
  v8 = 24;
  if (isIndeterminate)
  {
    v8 = 32;
  }

  v9 = [*(&self->super.isa + v8) copy];
  os_unfair_lock_unlock(&self->_lock);
  v10 = [v9 count];
  v12 = _LTOSLogAssets(v10, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "Using lastObservations", buf, 2u);
    }

    [(_LTDLanguageAssetCache *)self notify:observerCopy ofObservations:v9];
  }

  else if (v13)
  {
    *v14 = 0;
    _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_INFO, "There are no lastObservations", v14, 2u);
  }
}

- (void)removeObserverForID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_observers objectForKeyedSubscript:dCopy];
  [(NSMutableDictionary *)self->_observers setObject:0 forKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_lock);
  v5 = v7;
  if (v7)
  {
    completion = [v7 completion];
    completion[2](completion, 0);

    v5 = v7;
  }
}

+ (id)_normalizeAndSortUpdatesFromObservations:(id)observations toObservations:(id)toObservations
{
  v41 = *MEMORY[0x277D85DE8];
  observationsCopy = observations;
  toObservationsCopy = toObservations;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(toObservationsCopy, "count")}];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = toObservationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        locale = [v13 locale];
        _ltLocaleIdentifier = [locale _ltLocaleIdentifier];
        [v7 setObject:v13 forKeyedSubscript:_ltLocaleIdentifier];
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v10);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = observationsCopy;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v31 + 1) + 8 * j);
        locale2 = [v21 locale];
        _ltLocaleIdentifier2 = [locale2 _ltLocaleIdentifier];

        v24 = [v7 objectForKeyedSubscript:_ltLocaleIdentifier2];
        if ([v21 status] != 1 || objc_msgSend(v24, "status") != 1 || (objc_msgSend(v21, "progress"), v26 = v25, objc_msgSend(v24, "progress"), v26 <= v27))
        {
          if (v24)
          {
            v21 = v24;
          }
        }

        [v7 setObject:v21 forKeyedSubscript:_ltLocaleIdentifier2];
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v18);
  }

  allValues = [v7 allValues];
  v29 = [allValues sortedArrayUsingSelector:sel_compare_];

  return v29;
}

- (void)multicastObservers
{
  v56 = *MEMORY[0x277D85DE8];
  _isReadyForObservers = [(_LTDLanguageAssetCache *)self _isReadyForObservers];
  if (_isReadyForObservers)
  {
    _readAllAssets = [(_LTDLanguageAssetCache *)self _readAllAssets];
    if ([_readAllAssets count])
    {
      os_unfair_lock_lock(&self->_lock);
      v7 = [(NSDictionary *)self->_localeRanks copy];
      os_unfair_lock_unlock(&self->_lock);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __44___LTDLanguageAssetCache_multicastObservers__block_invoke;
      v51[3] = &unk_2789B6130;
      v8 = v7;
      v52 = v8;
      v9 = [_readAllAssets _ltCompactMap:v51];
      os_unfair_lock_lock(&self->_lock);
      v10 = [objc_opt_class() _normalizeAndSortUpdatesFromObservations:self->_lastObservationsSorted toObservations:v9];
      if ([v10 isEqualToArray:self->_lastObservationsSorted])
      {
        os_unfair_lock_unlock(&self->_lock);
        v13 = _LTOSLogAssets(v11, v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          [(_LTDLanguageAssetCache *)v13 multicastObservers];
        }
      }

      else
      {
        v41 = v9;
        v42 = v8;
        v43 = _readAllAssets;
        allValues = [(NSMutableDictionary *)self->_observers allValues];
        v17 = [v10 copy];
        lastObservationsSorted = self->_lastObservationsSorted;
        self->_lastObservationsSorted = v17;

        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __44___LTDLanguageAssetCache_multicastObservers__block_invoke_2;
        v50[3] = &unk_2789B6158;
        v50[4] = self;
        v44 = [v10 _ltCompactMap:v50];
        v19 = [v44 isEqualToArray:self->_lastIndeterminateObservationsSorted];
        if ((v19 & 1) == 0)
        {
          v20 = [v44 copy];
          lastIndeterminateObservationsSorted = self->_lastIndeterminateObservationsSorted;
          self->_lastIndeterminateObservationsSorted = v20;
        }

        selfCopy = self;
        os_unfair_lock_unlock(&self->_lock);
        v25 = _LTOSLogAssets(v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = MEMORY[0x277CE1B28];
          v27 = v25;
          v28 = [v26 describeObservations:v10];
          *buf = 138412290;
          v55 = v28;
          _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_DEFAULT, "Obsv xpcmsg [%@]", buf, 0xCu);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v29 = allValues;
        v30 = [v29 countByEnumeratingWithState:&v46 objects:v53 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v47;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v47 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v46 + 1) + 8 * i);
              isIndeterminate = [v34 isIndeterminate];
              v36 = v19 & isIndeterminate;
              v38 = _LTOSLogAssets(isIndeterminate, v37);
              v39 = v38;
              if (v36 == 1)
              {
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  [(_LTDLanguageAssetCache *)buf multicastObservers];
                }
              }

              else
              {
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  *v45 = 0;
                  _os_log_impl(&dword_232E53000, v39, OS_LOG_TYPE_INFO, "Sending observer multicast", v45, 2u);
                }

                if ([v34 isIndeterminate])
                {
                  v40 = v44;
                }

                else
                {
                  v40 = v10;
                }

                [(_LTDLanguageAssetCache *)selfCopy notify:v34 ofObservations:v40];
              }
            }

            v31 = [v29 countByEnumeratingWithState:&v46 objects:v53 count:16];
          }

          while (v31);
        }

        v8 = v42;
        _readAllAssets = v43;
        v9 = v41;
      }
    }

    else
    {
      v15 = _LTOSLogAssets(0, v6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(_LTDLanguageAssetCache *)v15 multicastObservers];
      }
    }
  }

  else
  {
    v14 = _LTOSLogAssets(_isReadyForObservers, v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Skipping observer multicast due to not ready", buf, 2u);
    }
  }
}

- (void)notify:(id)notify ofObservations:(id)observations
{
  notifyCopy = notify;
  observationsCopy = observations;
  observationFilterConditions = [(_LTDLanguageAssetCache *)self observationFilterConditions];
  v9 = [observationFilterConditions supportedLocalesSubsetForTask:{objc_msgSend(notifyCopy, "taskHint")}];

  v10 = observationsCopy;
  v11 = v10;
  if ([v9 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __48___LTDLanguageAssetCache_notify_ofObservations___block_invoke;
    v13[3] = &unk_2789B6180;
    v14 = v9;
    v11 = [v10 lt_filterUsingBlock:v13];
  }

  observations = [notifyCopy observations];
  (observations)[2](observations, v11);
}

- (void)setInitialObservationsForIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = identifiersCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_cache objectForKeyedSubscript:v10, v15];
        if (!v11)
        {
          v12 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v10];
          v11 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v12 state:3];
          cache = self->_cache;
          ltIdentifier = [v11 ltIdentifier];
          [(NSMutableDictionary *)cache setObject:v11 forKeyedSubscript:ltIdentifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  [(_LTDLanguageAssetCache *)self markReadyForFilter:16];
  [(_LTDLanguageAssetCache *)self markReadyForFilter:32];
}

- (void)markReadyForFilter:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_232E53000, a2, OS_LOG_TYPE_ERROR, "Invalid mark ready filter: %lu", &v2, 0xCu);
}

- (void)preheatWithLanguages:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Cache update new identifiers: %{public}@", &v2, 0xCu);
}

@end