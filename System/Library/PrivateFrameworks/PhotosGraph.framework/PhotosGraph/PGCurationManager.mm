@interface PGCurationManager
+ (BOOL)areAssetsInteresting:(id)interesting minimumNumberOfCuratedAssets:(unint64_t)assets duration:(unint64_t)duration;
+ (double)contentScoreForAssets:(id)assets;
+ (id)_filterAssets:(id)assets withPositiveLocations:(id)locations negativeLocations:(id)negativeLocations maximumDistance:(double)distance;
+ (id)_filteredAssetsWithFaceFilter:(unint64_t)filter forAssets:(id)assets;
+ (id)assetPropertySetsForCuration;
+ (id)assetsBeautifier;
+ (id)dedupedAssetsWithAssets:(id)assets;
+ (id)defaultAssetSortDescriptors;
+ (id)dejunkAndDedupeItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block;
+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forAreaNodes:(id)areaNodes withMaximumDistance:(double)distance;
+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forCityNodes:(id)cityNodes withMaximumDistance:(double)distance;
+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forLocationNodes:(id)locationNodes withMaximumDistance:(double)distance;
+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forStateNodes:(id)stateNodes withMaximumDistance:(double)distance;
+ (id)filterAssets:(id)assets withLocation:(id)location maximumDistance:(double)distance;
+ (id)filterAssets:(id)assets withLocations:(id)locations maximumDistance:(double)distance;
+ (id)filteredAssetsFromAssets:(id)assets withContextualAssetLocalIdentifiers:(id)identifiers approximateTimeDistance:(double)distance;
+ (id)representativeAssetsForAssetCollection:(id)collection curationContext:(id)context progressBlock:(id)block;
+ (id)representativeAssetsForAssets:(id)assets extendedCuratedAssets:(id)curatedAssets progressBlock:(id)block;
+ (id)representativeAssetsForAssets:(id)assets progressBlock:(id)block;
+ (id)sceneInfoWithAsset:(id)asset curationSession:(id)session;
+ (id)summaryClusteringForDuration:(unint64_t)duration;
+ (unint64_t)maximumNumberOfItemsForDuration:(unint64_t)duration withTotalNumberOfItems:(unint64_t)items spanningNumberOfDays:(double)days;
+ (unint64_t)minimumNumberOfItemsForDuration:(unint64_t)duration withMaximumNumberOfItems:(unint64_t)items;
- (BOOL)isAssetCollectionInteresting:(id)interesting curationContext:(id)context;
- (BOOL)isAssetFeederInteresting:(id)interesting withAlternateJunking:(BOOL)junking smart:(BOOL)smart;
- (PFSceneGeography)sceneGeography;
- (PGCurationManager)initWithPhotoLibrary:(id)library cacheURL:(id)l;
- (double)contentScoreForAssetCollection:(id)collection curationContext:(id)context;
- (double)contentScoreForAssetFeeder:(id)feeder;
- (id)_bestAssetInSummarizedAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers;
- (id)_bestAssetsInAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers minimumRatioOfReferencePersonsPerAsset:(double)asset progressBlock:(id)block;
- (id)_contextualBestAssetInAssets:(id)assets;
- (id)_curatedKeyAssetIdentifierForCollectionUUID:(id)d curatedAssetCollection:(id)collection options:(id)options criteria:(id)criteria curatedKeyAsset:(id *)asset curationContext:(id)context;
- (id)_extendedAssetsForCurationForAssets:(id)assets matchingAssetsRange:(_NSRange)range;
- (id)_filteredAssetsForAssets:(id)assets inMoments:(id)moments keepFavorites:(BOOL)favorites;
- (id)_firstBestFacedAssetInAssetCluster:(id)cluster facesByAssetIdentifiers:(id)identifiers;
- (id)_libraryDateInterval;
- (id)_timeBasedAssetClustersForAssets:(id)assets maximumClusterCount:(unint64_t)count;
- (id)bestAssetForAssetFeeder:(id)feeder options:(id)options;
- (id)bestAssetForAssetFeeder:(id)feeder options:(id)options criteria:(id)criteria;
- (id)bestAssetInAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers minimumNumberOfCommonPeople:(unint64_t)people forKeyAsset:(BOOL)asset forMemories:(BOOL)memories allowGuestAsset:(BOOL)guestAsset;
- (id)bestAssetInAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers requiredMinimumNumberOfReferencePersons:(unint64_t)persons forMemories:(BOOL)memories forSocialGroup:(BOOL)group allowGuestAsset:(BOOL)asset wantsGoodSquareCropScore:(BOOL)score;
- (id)bestAssetInAssets:(id)assets options:(id)options;
- (id)bestAssetsForAssetFeeder:(id)feeder options:(id)options progressBlock:(id)block;
- (id)criteriaForKeyAssetCurationWithAssetCollection:(id)collection graph:(id)graph options:(id)options curationContext:(id)context;
- (id)curatedAssetsForAssetCollection:(id)collection duration:(unint64_t)duration referencePersonLocalIdentifiers:(id)identifiers curationContext:(id)context progressBlock:(id)block;
- (id)curatedAssetsForAssetCollection:(id)collection options:(id)options curationContext:(id)context progressBlock:(id)block;
- (id)curatedAssetsForPersonLocalIdentifier:(id)identifier progressBlock:(id)block;
- (id)curatedKeyAssetForAssetCollection:(id)collection curatedAssetCollection:(id)assetCollection options:(id)options criteria:(id)criteria curationContext:(id)context;
- (id)curatedKeyAssetForCollectionUUID:(id)d curatedAssetCollection:(id)collection options:(id)options criteria:(id)criteria curationContext:(id)context;
- (id)defaultAssetFetchOptions;
- (id)defaultAssetFetchOptionsForMemories;
- (id)defaultAssetFetchOptionsForMemoriesWithoutPrefetch;
- (id)dejunkAndDedupeAssetsInAssetCollection:(id)collection options:(id)options curationContext:(id)context progressBlock:(id)block;
- (id)fetchAssetWithLocalIdentifier:(id)identifier;
- (id)fetchAssetsSortedByDateWithLocalIdentifiers:(id)identifiers;
- (id)memoryCuratedAssetsForAssetCollection:(id)collection duration:(unint64_t)duration withContextualAssetLocalIdentifiers:(id)identifiers minimumProportion:(double)proportion graph:(id)graph curationContext:(id)context progressBlock:(id)block;
- (id)memoryCuratedAssetsForAssets:(id)assets duration:(unint64_t)duration withContextualAssetLocalIdentifiers:(id)identifiers minimumProportion:(double)proportion graph:(id)graph curationContext:(id)context progressBlock:(id)block;
- (unint64_t)optimalDurationForAssetCollection:(id)collection duration:(unint64_t)duration options:(id)options curationContext:(id)context;
- (void)invalidateCurationCacheForMomentUUIDs:(id)ds;
@end

@implementation PGCurationManager

- (id)_curatedKeyAssetIdentifierForCollectionUUID:(id)d curatedAssetCollection:(id)collection options:(id)options criteria:(id)criteria curatedKeyAsset:(id *)asset curationContext:(id)context
{
  v66[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  collectionCopy = collection;
  optionsCopy = options;
  criteriaCopy = criteria;
  contextCopy = context;
  if (!dCopy)
  {
    localIdentifier = 0;
    goto LABEL_37;
  }

  v58 = contextCopy;
  curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
  v20 = os_signpost_id_generate(curationLoggingConnection);
  v21 = curationLoggingConnection;
  v22 = v21;
  v56 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "CuratedKeyAsset", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v54 = mach_absolute_time();
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v23 = [(PGCurationCache *)self->_cache curatedKeyAssetIdentifierForCollectionUUID:dCopy options:optionsCopy];
  v24 = v23;
  v57 = criteriaCopy;
  spid = v20;
  if (v23)
  {
    if (!asset)
    {
      firstObject = 0;
      localIdentifier = v23;
      goto LABEL_27;
    }

    assetCopy2 = asset;
    localIdentifier = v23;
LABEL_10:
    v66[0] = localIdentifier;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:1];
    v27 = [(PGCurationManager *)self fetchAssetsSortedByDateWithLocalIdentifiers:v26];

    firstObject = [v27 firstObject];

LABEL_26:
    v38 = firstObject;
    *assetCopy2 = firstObject;
    goto LABEL_27;
  }

  assetCopy2 = asset;
  context = objc_autoreleasePoolPush();
  photoLibrary = [collectionCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v31 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions addFetchPropertySets:v31];

  [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  v33 = v32 = criteriaCopy;
  [v33 setPersonsPrefetchMode:2];
  [v33 setFaceInformationPrefetchMode:2];
  scenesTrait = [v32 scenesTrait];
  if ([scenesTrait isActive])
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  [v33 setScenesPrefetchMode:v35];

  v52 = collectionCopy;
  v50 = librarySpecificFetchOptions;
  v36 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:librarySpecificFetchOptions feederPrefetchOptions:v33 curationContext:v58];
  v37 = [(PGKeyAssetCurationOptions *)optionsCopy copy];
  firstObject = [(PGCurationManager *)self bestAssetForAssetFeeder:v36 options:v37 criteria:v32];
  if (!firstObject)
  {
    if ([v36 numberOfItems] && !-[PGKeyAssetCurationOptions useContextualCurationOnly](optionsCopy, "useContextualCurationOnly"))
    {
      firstObject = [v36 itemAtIndex:0];
    }

    else
    {
      firstObject = 0;
    }
  }

  localIdentifier = [firstObject localIdentifier];
  if (firstObject)
  {
    [(PGCurationCache *)self->_cache setCuratedKeyAsset:firstObject forCollectionUUID:dCopy options:optionsCopy];
  }

  objc_autoreleasePoolPop(context);
  if (assetCopy2)
  {
    collectionCopy = v52;
    if (!localIdentifier)
    {
      goto LABEL_27;
    }

    if (firstObject)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  collectionCopy = v52;
LABEL_27:
  v39 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v42 = v22;
  v43 = v42;
  if (v56 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v44 = @"YES";
    if (!v24)
    {
      v44 = @"NO";
    }

    *buf = 138412290;
    v61 = v44;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CuratedKeyAsset", "KeyAsset Criteria Cached (%@)", buf, 0xCu);
  }

  v45 = v43;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = (((v39 - v54) * numer) / denom) / 1000000.0;
    v47 = @"YES";
    if (!v24)
    {
      v47 = @"NO";
    }

    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"KeyAsset Criteria Cached (%@)", v47];
    *buf = 136315650;
    v61 = "CuratedKeyAsset";
    v62 = 2112;
    v63 = v48;
    v64 = 2048;
    v65 = v46;
    _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  criteriaCopy = v57;
  contextCopy = v58;
LABEL_37:

  return localIdentifier;
}

- (id)curatedKeyAssetForCollectionUUID:(id)d curatedAssetCollection:(id)collection options:(id)options criteria:(id)criteria curationContext:(id)context
{
  v10 = 0;
  v7 = [(PGCurationManager *)self _curatedKeyAssetIdentifierForCollectionUUID:d curatedAssetCollection:collection options:options criteria:criteria curatedKeyAsset:&v10 curationContext:context];
  v8 = v10;

  return v8;
}

- (id)defaultAssetFetchOptionsForMemoriesWithoutPrefetch
{
  v6[1] = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGCurationManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v6[0] = *MEMORY[0x277CD9AA8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v4];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setIncludeGuestAssets:1];

  return librarySpecificFetchOptions;
}

- (id)defaultAssetFetchOptionsForMemories
{
  v7[2] = *MEMORY[0x277D85DE8];
  defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
  [defaultAssetFetchOptions setIncludeGuestAssets:1];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
  v7[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v7[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [defaultAssetFetchOptions setSortDescriptors:v5];

  [defaultAssetFetchOptions setFetchLimit:5000];

  return defaultAssetFetchOptions;
}

- (id)defaultAssetFetchOptions
{
  photoLibrary = [(PGCurationManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = +[PGCurationManager assetPropertySetsForCuration];
  [librarySpecificFetchOptions setFetchPropertySets:v4];

  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];

  return librarySpecificFetchOptions;
}

- (id)fetchAssetWithLocalIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    identifierCopy = identifier;
    photoLibrary = [(PGCurationManager *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setFetchLimit:1];
    v7 = MEMORY[0x277CD97A8];
    v12[0] = identifierCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v9 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:librarySpecificFetchOptions];

    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)fetchAssetsSortedByDateWithLocalIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  photoLibrary = [(PGCurationManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  defaultAssetSortDescriptors = [objc_opt_class() defaultAssetSortDescriptors];
  [librarySpecificFetchOptions setSortDescriptors:defaultAssetSortDescriptors];

  v8 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];

  return v8;
}

- (id)_extendedAssetsForCurationForAssets:(id)assets matchingAssetsRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v23 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v8 = [assetsCopy count];
  if (location != -1)
  {
    v9 = v8;
    if (length >= 4)
    {
      curationLoggingConnection2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:assetsCopy copyItems:0];
      v11 = [curationLoggingConnection2 subarrayWithRange:location, length];
      curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_INFO))
      {
        v19 = 134218240;
        v20 = length;
        v21 = 2048;
        v22 = v9;
        v13 = "Curated key asset with criteria: found assets range matching scenes %ld/%ld";
LABEL_14:
        _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_INFO, v13, &v19, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (length)
    {
      v14 = vcvtd_n_f64_u64(v8, 1uLL);
      v15 = v14 - location;
      v16 = (location + length) - v14;
      if (v15 <= v16)
      {
        v17 = v8 - location;
      }

      else
      {
        v17 = location + length;
      }

      if (v17 < 4)
      {
        curationLoggingConnection2 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(curationLoggingConnection2, OS_LOG_TYPE_INFO))
        {
          v19 = 134218240;
          v20 = v17;
          v21 = 2048;
          v22 = v9;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_INFO, "Curated key asset with criteria: cannot use extended assets %ld/%ld", &v19, 0x16u);
        }

        v11 = 0;
        goto LABEL_16;
      }

      if (v15 > v16)
      {
        location = 0;
      }

      curationLoggingConnection2 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:assetsCopy copyItems:0];
      v11 = [curationLoggingConnection2 subarrayWithRange:location, v17];
      curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_INFO))
      {
        v19 = 134218240;
        v20 = v17;
        v21 = 2048;
        v22 = v9;
        v13 = "Curated key asset with criteria: found extended assets for curation %ld/%ld";
        goto LABEL_14;
      }

LABEL_15:

LABEL_16:
      goto LABEL_18;
    }
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)_contextualBestAssetInAssets:(id)assets
{
  v23 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  if ([assetsCopy count] == 1)
  {
    firstObject = [assetsCopy firstObject];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = assetsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      firstObject = 0;
      v8 = *v19;
      v9 = -1.79769313e308;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          [v11 clsContentScore];
          v13 = v12;
          [v11 clsAestheticScore];
          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          v15 = (v13 + v14) * 0.5;
          if (v15 > v9)
          {
            v16 = v11;

            v9 = v15;
            firstObject = v16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (id)bestAssetForAssetFeeder:(id)feeder options:(id)options criteria:(id)criteria
{
  v86 = *MEMORY[0x277D85DE8];
  feederCopy = feeder;
  optionsCopy = options;
  criteriaCopy = criteria;
  v55 = feederCopy;
  allItems = [feederCopy allItems];
  v56 = [allItems count];
  if (!v56)
  {
    v24 = 0;
    goto LABEL_70;
  }

  v8 = optionsCopy;
  if (!optionsCopy)
  {
    v8 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  optionsCopy = v8;
  peopleTrait = [criteriaCopy peopleTrait];
  items = [peopleTrait items];

  if ([items count])
  {
    [(PGKeyAssetCurationOptions *)optionsCopy setFocusOnPeople:1];
    [(PGKeyAssetCurationOptions *)optionsCopy setReferencePersonLocalIdentifiers:items];
  }

  isForMemories = [(PGKeyAssetCurationOptions *)optionsCopy isForMemories];
  allowGuestAsset = [(PGKeyAssetCurationOptions *)optionsCopy allowGuestAsset];
  if (!criteriaCopy)
  {
    v25 = 0;
    v16 = -1;
    v17 = -1;
    if (!optionsCopy)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v12 = allowGuestAsset;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = allItems;
  v13 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v76;
    v16 = -1;
    v17 = -1;
    do
    {
      v18 = 0;
      v60 = v14;
      do
      {
        if (*v76 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v75 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        *buf = 0;
        v21 = [criteriaCopy isPassingForAsset:v19 score:buf];
        if (*buf > 0.0)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v22 == 1)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
          [strongToStrongObjectsMapTable setObject:v23 forKey:v19];

          [array addObject:v19];
          if (v17 == -1)
          {
            v17 = v14;
          }

          if (([v19 clsAvoidIfPossibleAsKeyItemForMemories:isForMemories allowGuestAsset:v12] & 1) == 0)
          {
            [array2 addObject:v19];
          }

          v16 = v14;
        }

        objc_autoreleasePoolPop(v20);
        ++v14;
        ++v18;
      }

      while (v13 != v18);
      v14 = v60 + v13;
      v13 = [obj countByEnumeratingWithState:&v75 objects:v85 count:16];
    }

    while (v13);
  }

  else
  {
    v16 = -1;
    v17 = -1;
  }

  if ([array2 count])
  {
    v26 = array2;

    v27 = v26;
  }

  else
  {
    v27 = array;
  }

  v28 = v27;
  v29 = [v27 count];
  curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
  v31 = os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_INFO);
  if (!v29)
  {
    if (v31)
    {
      *buf = 134218240;
      *&buf[4] = 0;
      *&buf[12] = 2048;
      *&buf[14] = v56;
      _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_INFO, "Curated key asset with criteria: not enough matching assets %ld/%ld. Fallback to normal curation", buf, 0x16u);
    }

    goto LABEL_47;
  }

  if (v31)
  {
    *buf = 134218240;
    *&buf[4] = v29;
    *&buf[12] = 2048;
    *&buf[14] = v56;
    _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_INFO, "Curated key asset with criteria: matching assets with criteria %ld/%ld.", buf, 0x16u);
  }

  curationLoggingConnection = [objc_opt_class() _filteredAssetsWithFaceFilter:objc_msgSend(criteriaCopy forAssets:{"faceFilter"), v28}];
  if (![curationLoggingConnection count])
  {
    curationLoggingConnection2 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(curationLoggingConnection2, OS_LOG_TYPE_INFO))
    {
      v45 = [curationLoggingConnection count];
      *buf = 134218240;
      *&buf[4] = v45;
      *&buf[12] = 2048;
      *&buf[14] = v56;
      _os_log_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_INFO, "Curated key asset with criteria: not enough matching assets (with faces) %ld/%ld. Fallback to normal curation", buf, 0x16u);
    }

LABEL_47:
    v25 = 0;
    goto LABEL_54;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v84 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x2020000000;
  v74[3] = 0;
  v32 = MEMORY[0x277D27688];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke;
  v72[3] = &unk_2788842D8;
  v33 = strongToStrongObjectsMapTable;
  v73 = v33;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_2;
  v71[3] = &unk_278884300;
  v71[4] = buf;
  v71[5] = v74;
  [v32 calculateStandardDeviationForItems:curationLoggingConnection valueBlock:v72 result:v71];
  v34 = MEMORY[0x277CCAC30];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_3;
  v67[3] = &unk_278884328;
  v68 = v33;
  v69 = buf;
  v70 = v74;
  v35 = [v34 predicateWithBlock:v67];
  v36 = [curationLoggingConnection filteredArrayUsingPredicate:v35];

  v37 = [v36 count];
  v38 = [obj count];
  [criteriaCopy minimumAssetsRatio];
  if (v37 / v38 >= v39 && v37 >= 2)
  {
    v25 = v36;
    curationLoggingConnection3 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(curationLoggingConnection3, OS_LOG_TYPE_INFO))
    {
      v46 = [v25 count];
      *v79 = 134218240;
      v80 = v46;
      v81 = 2048;
      v82 = v56;
      v43 = "Curated key asset with criteria: using strongly filtered assets %ld/%ld";
      goto LABEL_52;
    }
  }

  else if ([(PGKeyAssetCurationOptions *)optionsCopy useContextualCurationOnly])
  {
    v25 = v36;
    curationLoggingConnection3 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(curationLoggingConnection3, OS_LOG_TYPE_INFO))
    {
      v42 = [v25 count];
      *v79 = 134218240;
      v80 = v42;
      v81 = 2048;
      v82 = v56;
      v43 = "Curated key asset with criteria: using weakly filtered assets %ld/%ld";
LABEL_52:
      _os_log_impl(&dword_22F0FC000, curationLoggingConnection3, OS_LOG_TYPE_INFO, v43, v79, 0x16u);
    }
  }

  else
  {
    v25 = curationLoggingConnection;
    curationLoggingConnection3 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(curationLoggingConnection3, OS_LOG_TYPE_INFO))
    {
      v47 = [v25 count];
      *v79 = 134218240;
      v80 = v47;
      v81 = 2048;
      v82 = v56;
      v43 = "Curated key asset with criteria: using matching assets (with faces) %ld/%ld";
      goto LABEL_52;
    }
  }

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(buf, 8);
LABEL_54:

  if (!optionsCopy)
  {
LABEL_55:
    optionsCopy = objc_alloc_init(PGKeyAssetCurationOptions);
  }

LABEL_56:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_349;
  aBlock[3] = &__block_descriptor_40_e8_B16__0Q8l;
  aBlock[4] = v56;
  v48 = _Block_copy(aBlock);
  if (v25)
  {
    v24 = [(PGCurationManager *)self _contextualBestAssetInAssets:v25];
    if (v24)
    {
      goto LABEL_69;
    }
  }

  if (![(PGKeyAssetCurationOptions *)optionsCopy useContextualCurationOnly])
  {
    [(PGKeyAssetCurationOptions *)optionsCopy setPrefilterAssetsWithFaces:1];
    v49 = [(PGCurationManager *)self _extendedAssetsForCurationForAssets:allItems matchingAssetsRange:v17, v16 - v17];
    v50 = [v49 count];
    if (v50)
    {
      curationLoggingConnection4 = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(curationLoggingConnection4, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = v56;
        _os_log_impl(&dword_22F0FC000, curationLoggingConnection4, OS_LOG_TYPE_INFO, "Curated key asset with criteria: using extended assets for curation %ld/%ld", buf, 0x16u);
      }

      [(PGKeyAssetCurationOptions *)optionsCopy setUseSummarizer:v48[2](v48, v50)];
      v24 = [(PGCurationManager *)self bestAssetInAssets:v49 options:optionsCopy];
      if (v24)
      {
        goto LABEL_68;
      }

      curationLoggingConnection5 = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(curationLoggingConnection5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, curationLoggingConnection5, OS_LOG_TYPE_ERROR, "Curated key asset with criteria: didn't find key asset in extended assets. Fallback to default.", buf, 2u);
      }
    }

    [(PGKeyAssetCurationOptions *)optionsCopy setUseSummarizer:v48[2](v48, v56)];
    v24 = [(PGCurationManager *)self bestAssetInAssets:allItems options:optionsCopy];
LABEL_68:

    goto LABEL_69;
  }

  v24 = 0;
LABEL_69:

LABEL_70:

  return v24;
}

double __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

uint64_t __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_2(uint64_t result, double a2, double a3)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *(*(*(result + 40) + 8) + 24) = a2;
  return result;
}

BOOL __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [*(a1 + 32) objectForKey:a2];
  [v3 doubleValue];
  v5 = v4;

  return v5 >= *(*(*(a1 + 40) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24) * 0.5;
}

- (id)bestAssetForAssetFeeder:(id)feeder options:(id)options
{
  feederCopy = feeder;
  optionsCopy = options;
  if ([feederCopy numberOfItems])
  {
    allItems = [feederCopy allItems];
    v9 = [(PGCurationManager *)self bestAssetInAssets:allItems options:optionsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_bestAssetInSummarizedAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers
{
  v41 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifiersCopy = identifiers;
  firstObject = [assetsCopy firstObject];
  v8 = MEMORY[0x277CBEB98];
  clsPersonAndPetLocalIdentifiers = [firstObject clsPersonAndPetLocalIdentifiers];
  v10 = [v8 setWithArray:clsPersonAndPetLocalIdentifiers];

  v11 = [identifiersCopy mutableCopy];
  [v11 intersectSet:v10];
  if ([identifiersCopy isSubsetOfSet:v10])
  {
    goto LABEL_14;
  }

  v12 = [v11 count];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = assetsCopy;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v32 = v10;
    v33 = assetsCopy;
    v35 = firstObject;
    v34 = 0;
    v16 = *v37;
    v17 = 0.0;
    do
    {
      v18 = v13;
      for (i = 0; i != v15; ++i)
      {
        v20 = v11;
        if (*v37 != v16)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        v11 = [identifiersCopy mutableCopy];

        v22 = MEMORY[0x277CBEB98];
        clsPersonAndPetLocalIdentifiers2 = [v21 clsPersonAndPetLocalIdentifiers];
        v24 = [v22 setWithArray:clsPersonAndPetLocalIdentifiers2];
        [v11 intersectSet:v24];

        v25 = [v11 count];
        if (v25 > v12)
        {
          v26 = v25;
          [v21 clsContentScore];
          v28 = v26 + v27 * 0.9;
          if (v28 > v17)
          {
            v29 = v21;

            v34 = 1;
            v17 = v28;
            v35 = v29;
          }
        }
      }

      v13 = v18;
      v15 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v15);

    if (v34)
    {
      v10 = v32;
      assetsCopy = v33;
      firstObject = v35;
LABEL_14:
      firstObject = firstObject;
      v30 = firstObject;
      goto LABEL_17;
    }

    v30 = 0;
    v10 = v32;
    assetsCopy = v33;
    firstObject = v35;
  }

  else
  {

    v30 = 0;
  }

LABEL_17:

  return v30;
}

- (id)_bestAssetsInAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers minimumRatioOfReferencePersonsPerAsset:(double)asset progressBlock:(id)block
{
  v55 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifiersCopy = identifiers;
  v11 = 0.0;
  v39 = _Block_copy(block);
  if (v39)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v48 = 0;
      v39[2](v39, &v48, 0.0);
      if (v48 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v52 = 1951;
          v53 = 2080;
          v54 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v13 = MEMORY[0x277CBEBF8];
        goto LABEL_46;
      }

      v11 = Current;
    }
  }

  v37 = objc_opt_new();
  v14 = [identifiersCopy count];
  v15 = [assetsCopy count];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = assetsCopy;
  obj = assetsCopy;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = vcvtpd_u64_f64(v14 * 0.4);
    if (v18 <= 2)
    {
      v18 = 2;
    }

    v38 = *v45;
    v19 = 0.0 / v15;
    v20 = v18;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v44 + 1) + 8 * i);
        if (v39)
        {
          v23 = CFAbsoluteTimeGetCurrent();
          if (v23 - v11 >= 0.01)
          {
            v48 = 0;
            v39[2](v39, &v48, v19);
            if (v48)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v52 = 1962;
                v53 = 2080;
                v54 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v13 = MEMORY[0x277CBEBF8];
              assetsCopy = v35;
              v33 = v37;
              goto LABEL_45;
            }

            v11 = v23;
          }
        }

        clsPersonAndPetLocalIdentifiers = [v22 clsPersonAndPetLocalIdentifiers];
        v25 = [clsPersonAndPetLocalIdentifiers count];
        if (v25 * asset <= v20)
        {
          v26 = v20;
        }

        else
        {
          v26 = v25 * asset;
        }

        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v27 = clsPersonAndPetLocalIdentifiers;
        v28 = [v27 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v41;
          while (2)
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v41 != v31)
              {
                objc_enumerationMutation(v27);
              }

              if ([identifiersCopy containsObject:*(*(&v40 + 1) + 8 * j)])
              {
                if (++v30 >= v26)
                {

                  [v37 addObject:v22];
                  goto LABEL_33;
                }
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v40 objects:v49 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_33:
      }

      v17 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v33 = v37;
  if (v39 && CFAbsoluteTimeGetCurrent() - v11 >= 0.01 && (v48 = 0, v39[2](v39, &v48, 1.0), v48))
  {
    assetsCopy = v35;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v52 = 1986;
      v53 = 2080;
      v54 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v13 = v37;
    assetsCopy = v35;
  }

LABEL_45:

LABEL_46:

  return v13;
}

- (id)bestAssetInAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers requiredMinimumNumberOfReferencePersons:(unint64_t)persons forMemories:(BOOL)memories forSocialGroup:(BOOL)group allowGuestAsset:(BOOL)asset wantsGoodSquareCropScore:(BOOL)score
{
  memoriesCopy = memories;
  assetCopy = asset;
  groupCopy = group;
  v125 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifiersCopy = identifiers;
  v65 = assetsCopy;
  if (![assetsCopy count])
  {
    firstObject = 0;
    goto LABEL_53;
  }

  v80 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  obj = assetsCopy;
  v79 = [obj countByEnumeratingWithState:&v119 objects:v124 count:{16, assetsCopy}];
  if (v79)
  {
    v68 = 0;
    v75 = 0;
    v11 = 0;
    v76 = *v120;
    v12 = *MEMORY[0x277D3C780];
    v13 = -1.79769313e308;
    do
    {
      for (i = 0; i != v79; ++i)
      {
        if (*v120 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v119 + 1) + 8 * i);
        v16 = [v15 clsAvoidIfPossibleAsKeyItemForMemories:memoriesCopy allowGuestAsset:assetCopy];
        if ((!groupCopy | v16))
        {
          LODWORD(v17) = groupCopy | v16;
        }

        else
        {
          v17 = ([v15 mediaSubtypes] >> 2) & 1;
        }

        v18 = [v80 count];
        v19 = v18;
        if (!((v18 == 0 || (v17 & 1) == 0) | v11 & 1))
        {
          goto LABEL_16;
        }

        if (score)
        {
          v20 = v18 != 0;
          [v15 clsSquareCropScore];
          v74 = v21 < v12;
          if (!(v75 & 1 | (!v74 || !v20) | v11 & 1))
          {
            goto LABEL_15;
          }

          [v15 cropScoreForTargetAspectRatio:1 forFaces:0.75];
          v23 = v22;
          [v15 cropScoreForTargetAspectRatio:1 forFaces:1.5];
          v71 = fmin(v23, v24) < 0.475;
          if (!(v68 & 1 | (!v71 || v19 == 0) | (v75 | v11) & 1))
          {
            v68 = 0;
LABEL_15:
            v75 = 0;
LABEL_16:
            v11 = 0;
            continue;
          }
        }

        else
        {
          v74 = 0;
          v71 = 0;
        }

        curationModel = [v15 curationModel];
        faceModel = [curationModel faceModel];
        qualityNode = [faceModel qualityNode];
        [qualityNode operatingPoint];
        v29 = v28;

        [curationModel faceSizeUpperLimit];
        v31 = v30;
        [curationModel faceSizeLowerLimit];
        v33 = v32;
        v114 = 0;
        v115 = 0;
        v116 = &v115;
        v117 = 0x2020000000;
        v118 = 0;
        v111 = 0;
        v112 = &v111;
        v113 = 0x2020000000;
        v107 = 0;
        v108 = &v107;
        v109 = 0x2020000000;
        v110 = 0;
        clsFaceInformationSummary = [v15 clsFaceInformationSummary];
        faceInformationByPersonLocalIdentifier = [clsFaceInformationSummary faceInformationByPersonLocalIdentifier];
        v73 = clsFaceInformationSummary;
        v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v103 = 0;
        v104 = &v103;
        v105 = 0x2020000000;
        v106 = 0x7FEFFFFFFFFFFFFFLL;
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke;
        v93[3] = &unk_278884288;
        v37 = identifiersCopy;
        v100 = v29;
        v101 = v31;
        v102 = v33;
        v94 = v37;
        v96 = &v103;
        v97 = &v115;
        v98 = &v111;
        v99 = &v107;
        v38 = v36;
        v95 = v38;
        [faceInformationByPersonLocalIdentifier enumerateKeysAndObjectsUsingBlock:v93];
        v39 = v104[3];
        v40 = v39 * 0.5;
        if (v39 * 0.5 >= v33)
        {
          v40 = v33;
        }

        if (v39 >= 1.79769313e308)
        {
          v41 = 0.0;
        }

        else
        {
          v41 = v40;
        }

        v85[0] = MEMORY[0x277D85DD0];
        v85[1] = 3221225472;
        v85[2] = __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke_2;
        v85[3] = &unk_2788842B0;
        v42 = faceInformationByPersonLocalIdentifier;
        v89 = v29;
        v90 = v31;
        v91 = v33;
        v92 = v41;
        v86 = v42;
        v87 = &v111;
        v88 = &v107;
        [v38 enumerateObjectsUsingBlock:v85];
        v43 = [v37 count];
        v44 = v116[3];
        v45 = v112[3] + (v43 - v44) * -0.25;
        v112[3] = v45;
        if (v44 >= persons)
        {
          if (((v17 | ~v11) & (v74 | ~v75) & (v71 | ~v68) & 1) == 0)
          {
            v13 = -1.79769313e308;
          }

          if (v45 >= v13)
          {
            if (v45 > v13)
            {
              [v80 removeAllObjects];
              [v72 removeAllObjects];
              v68 = v71;
              v75 = v74;
              v11 = v17;
              v13 = v45;
            }

            [v80 addObject:v15];
            v46 = [MEMORY[0x277CCABB0] numberWithDouble:v108[3]];
            [v72 addObject:v46];
          }
        }

        _Block_object_dispose(&v103, 8);
        _Block_object_dispose(&v107, 8);
        _Block_object_dispose(&v111, 8);
        _Block_object_dispose(&v115, 8);
      }

      v79 = [obj countByEnumeratingWithState:&v119 objects:v124 count:16];
    }

    while (v79);
  }

  if ([v80 count] <= 1)
  {
    firstObject = [v80 firstObject];
    goto LABEL_52;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v48 = v80;
  firstObject = 0;
  v49 = [v48 countByEnumeratingWithState:&v81 objects:v123 count:16];
  if (!v49)
  {
    goto LABEL_51;
  }

  v50 = 0;
  v51 = 0;
  v52 = *v82;
  v53 = -1.79769313e308;
  v54 = -1.79769313e308;
  do
  {
    for (j = 0; j != v49; ++j)
    {
      if (*v82 != v52)
      {
        objc_enumerationMutation(v48);
      }

      v56 = *(*(&v81 + 1) + 8 * j);
      isFavorite = [v56 isFavorite];
      v58 = [v72 objectAtIndexedSubscript:v51];
      [v58 doubleValue];
      v60 = v59;

      [v56 overallAestheticScore];
      v62 = v61;
      if ((v50 ^ isFavorite))
      {
        if (isFavorite)
        {
          goto LABEL_48;
        }
      }

      else if (v60 > v53 || v60 == v53 && v54 < v62)
      {
LABEL_48:
        v63 = v56;

        firstObject = v63;
        v50 = isFavorite;
        v53 = v60;
        v54 = v62;
      }

      ++v51;
    }

    v49 = [v48 countByEnumeratingWithState:&v81 objects:v123 count:16];
  }

  while (v49);
LABEL_51:

LABEL_52:
LABEL_53:

  return firstObject;
}

void __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v14])
  {
    v6 = 1.0;
    if (([v5 faceIsGood] & 1) == 0)
    {
      if ([v5 faceIsOk])
      {
        v6 = 0.5;
      }

      else
      {
        v6 = 0.25;
      }
    }

    [v5 faceSize];
    v8 = v7;
    [v5 faceQuality];
    if (v9 == -1.0)
    {
      v9 = *(a1 + 80);
    }

    if (v8 <= *(a1 + 88))
    {
      v10 = v8;
    }

    else
    {
      v10 = *(a1 + 96);
    }

    v11 = v9 * v10;
    if (v8 >= *(a1 + 96))
    {
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 24);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      *(v12 + 24) = v13;
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 64) + 8) + 24) = v6 + *(*(*(a1 + 64) + 8) + 24);
    *(*(*(a1 + 72) + 8) + 24) = v11 + *(*(*(a1 + 72) + 8) + 24);
  }

  else
  {
    [*(a1 + 40) addObject:v14];
  }
}

void __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v14 faceSize];
  v4 = v3;
  [v14 faceQuality];
  if (v5 == -1.0)
  {
    v5 = *(a1 + 56);
  }

  v6 = v4;
  if (v4 > *(a1 + 64))
  {
    v6 = *(a1 + 72);
  }

  v7 = v5 * v6;
  v8 = [v14 isKnownPerson];
  v9 = *(a1 + 80);
  v10 = v4 < v9;
  v11 = v4 >= v9;
  v12 = -0.05;
  if (!v10)
  {
    v12 = -0.25;
  }

  v13 = 0.25;
  if (v8)
  {
    v13 = 0.5;
    v12 = dbl_22F78C0B0[v11];
  }

  *(*(*(a1 + 40) + 8) + 24) = v12 + *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) = v7 * v13 + *(*(*(a1 + 48) + 8) + 24);
}

- (id)bestAssetInAssets:(id)assets forReferencePersonLocalIdentifiers:(id)identifiers minimumNumberOfCommonPeople:(unint64_t)people forKeyAsset:(BOOL)asset forMemories:(BOOL)memories allowGuestAsset:(BOOL)guestAsset
{
  memoriesCopy = memories;
  guestAssetCopy = guestAsset;
  assetCopy = asset;
  v98 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifiersCopy = identifiers;
  if (![assetsCopy count])
  {
    firstObject2 = 0;
    goto LABEL_79;
  }

  selfCopy = self;
  peopleCopy = people;
  if (assetCopy)
  {
    v72 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  }

  else
  {
    v72 = 0;
  }

  v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v68 = assetsCopy;
  obj = assetsCopy;
  v14 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v92;
    v17 = -1.79769313e308;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v92 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v91 + 1) + 8 * i);
        v20 = assetCopy;
        if (assetCopy && ([*(*(&v91 + 1) + 8 * i) clsAvoidIfPossibleAsKeyItemForMemories:memoriesCopy allowGuestAsset:guestAssetCopy] & 1) == 0)
        {
          [v72 addObject:v19];
        }

        v21 = MEMORY[0x277CBEB98];
        clsPersonAndPetLocalIdentifiers = [v19 clsPersonAndPetLocalIdentifiers];
        v23 = [v21 setWithArray:clsPersonAndPetLocalIdentifiers];

        v24 = [identifiersCopy mutableCopy];
        [v24 intersectSet:v23];
        v25 = [v24 count];
        v26 = [identifiersCopy count] - v25;
        v27 = v25 + v26 * -0.25 + ([v23 count] - v25) * -0.1;
        if (v27 >= v17)
        {
          if (v27 > v17)
          {
            [v79 removeAllObjects];
            [v81 removeAllObjects];
            v17 = v27;
          }

          [v79 addObject:v19];
          v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
          [v81 addObject:v28];
        }

        assetCopy = v20;
      }

      v15 = [obj countByEnumeratingWithState:&v91 objects:v97 count:16];
    }

    while (v15);
  }

  v29 = v79;
  if ([v79 count] == 1)
  {
    firstObject = [v81 firstObject];
    unsignedIntegerValue = [firstObject unsignedIntegerValue];

    if (unsignedIntegerValue >= peopleCopy)
    {
      firstObject2 = [v79 firstObject];
    }

    else
    {
      firstObject2 = 0;
    }

    assetsCopy = v68;
    goto LABEL_78;
  }

  v65 = assetCopy;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v32 = v79;
  v76 = [v32 countByEnumeratingWithState:&v87 objects:v96 count:16];
  if (!v76)
  {
    unsignedIntegerValue2 = 0;
    v35 = 0;
    goto LABEL_63;
  }

  v33 = 0;
  v34 = 0;
  unsignedIntegerValue2 = 0;
  v35 = 0;
  v36 = *v88;
  v37 = -1;
  v38 = -1.79769313e308;
  v39 = -1.79769313e308;
  v69 = *v88;
  v70 = v32;
  do
  {
    v40 = 0;
    do
    {
      if (*v88 != v36)
      {
        objc_enumerationMutation(v32);
      }

      v41 = *(*(&v87 + 1) + 8 * v40);
      [v41 clsContentScore];
      v43 = v42;
      clsFaceInformationSummary = [v41 clsFaceInformationSummary];
      if (!((clsFaceInformationSummary != 0) | v33 & 1))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Face information expected but not prefetched.", buf, 2u);
        }

        v33 = 1;
      }

      numberOfFacesIncludingPets = [clsFaceInformationSummary numberOfFacesIncludingPets];
      v46 = numberOfFacesIncludingPets;
      if (v37 > numberOfFacesIncludingPets)
      {
        obja = v33;
        v37 = numberOfFacesIncludingPets;
        goto LABEL_34;
      }

      if (v37 == numberOfFacesIncludingPets)
      {
        obja = v33;
        v71 = v35;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        faceInformationByPersonLocalIdentifier = [clsFaceInformationSummary faceInformationByPersonLocalIdentifier];
        allValues = [faceInformationByPersonLocalIdentifier allValues];

        v51 = [allValues countByEnumeratingWithState:&v82 objects:v95 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = *v83;
          v54 = 0.0;
          do
          {
            for (j = 0; j != v52; ++j)
            {
              if (*v83 != v53)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v82 + 1) + 8 * j) faceSize];
              v54 = v54 + v56;
            }

            v52 = [allValues countByEnumeratingWithState:&v82 objects:v95 count:16];
          }

          while (v52);
        }

        else
        {
          v54 = 0.0;
        }

        v57 = v54 / v46;
        v36 = v69;
        if (v38 < 0.3 && v57 > v38)
        {
          v38 = v54 / v46;
          v32 = v70;
          v35 = v71;
          goto LABEL_34;
        }

        v32 = v70;
        v35 = v71;
        if (v38 >= 0.3 && v57 >= 0.3 && v43 > v39)
        {
LABEL_34:
          v47 = v41;

          v48 = [v81 objectAtIndexedSubscript:v34];
          unsignedIntegerValue2 = [v48 unsignedIntegerValue];

          v39 = v43;
          v35 = v47;
        }

        v33 = obja;
      }

      ++v34;

      ++v40;
    }

    while (v40 != v76);
    v59 = [v32 countByEnumeratingWithState:&v87 objects:v96 count:16];
    v76 = v59;
  }

  while (v59);
LABEL_63:

  if (unsignedIntegerValue2 >= peopleCopy)
  {
    assetsCopy = v68;
    if (v65)
    {
      v29 = v79;
      if ([v35 clsAvoidIfPossibleAsKeyItemForMemories:memoriesCopy allowGuestAsset:guestAssetCopy] && objc_msgSend(v72, "count"))
      {
        curationLoggingConnection = [(PGCurationManager *)selfCopy curationLoggingConnection];
        if (os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_DEFAULT, "Curated key asset: key Asset is video. Trying to find non video key asset.", buf, 2u);
        }

        v61 = [(PGCurationManager *)selfCopy bestAssetInAssets:v72 forReferencePersonLocalIdentifiers:identifiersCopy minimumNumberOfCommonPeople:peopleCopy forKeyAsset:0 forMemories:memoriesCopy allowGuestAsset:guestAssetCopy];
        v62 = v61;
        if (v61)
        {
          v63 = v61;

          v35 = v63;
        }

        else if (os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_DEFAULT, "Curated key asset: Didn't find any non video key asset.", buf, 2u);
        }
      }
    }

    else
    {
      v29 = v79;
    }

    v35 = v35;
    firstObject2 = v35;
  }

  else
  {
    firstObject2 = 0;
    assetsCopy = v68;
    v29 = v79;
  }

LABEL_78:
LABEL_79:

  return firstObject2;
}

- (id)bestAssetInAssets:(id)assets options:(id)options
{
  v84 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  optionsCopy = options;
  referencePersonLocalIdentifiers = [optionsCopy referencePersonLocalIdentifiers];
  v9 = referencePersonLocalIdentifiers;
  if (referencePersonLocalIdentifiers)
  {
    v10 = [referencePersonLocalIdentifiers count] != 0;
  }

  else
  {
    v10 = 0;
  }

  isForMemories = [optionsCopy isForMemories];
  allowGuestAsset = [optionsCopy allowGuestAsset];
  v13 = objc_autoreleasePoolPush();
  if (!v10 || ![optionsCopy focusOnPeople])
  {
    goto LABEL_12;
  }

  firstObject2 = [(PGCurationManager *)self bestAssetInAssets:assetsCopy forReferencePersonLocalIdentifiers:v9 minimumNumberOfCommonPeople:1 forKeyAsset:1 forMemories:isForMemories allowGuestAsset:allowGuestAsset];
  curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
  v16 = os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_INFO);
  if (!firstObject2)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_INFO, "Curated key asset: didn't find key asset with reference people and focus on people.", buf, 2u);
    }

LABEL_12:
    v72 = v9;
    if ([optionsCopy prefilterAssetsWithFaces])
    {
      v17 = [objc_opt_class() _filteredAssetsWithFaceFilter:1 forAssets:assetsCopy];
      v18 = [v17 count];
      v19 = v18 / [assetsCopy count];
      [optionsCopy prefilterAssetsWithFacesThreshold];
      v21 = v20;
      curationLoggingConnection2 = [(PGCurationManager *)self curationLoggingConnection];
      v23 = os_log_type_enabled(curationLoggingConnection2, OS_LOG_TYPE_INFO);
      if (v19 >= v21)
      {
        if (v23)
        {
          v55 = optionsCopy;
          selfCopy = self;
          v57 = [v17 count];
          v58 = [assetsCopy count];
          *buf = 134218240;
          v81 = v57;
          self = selfCopy;
          optionsCopy = v55;
          v82 = 2048;
          v83 = v58;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_INFO, "Curated key asset: prefiltered assets with faces %ld/%ld.", buf, 0x16u);
        }

        v28 = 0;
        v29 = 0;
        if (v17)
        {
LABEL_19:
          v30 = v17;
          v73 = v30;
          v74 = assetsCopy;
          v70 = optionsCopy;
          v71 = v13;
          v69 = __PAIR64__(v10, v29);
          if ([optionsCopy useSummarizer])
          {
            if ([optionsCopy complete])
            {
              v31 = 4;
            }

            else
            {
              v31 = 2;
            }

            curationLoggingConnection4 = [objc_opt_class() summaryClusteringForDuration:v31];
            v33 = [curationLoggingConnection4 performWithItems:v30 identifiersOfEligibleItems:0 maximumNumberOfItemsToElect:1 progressBlock:0];
            objects = v30;
            if ([v33 count])
            {
              v35 = v30;
              firstObject = [v33 firstObject];
              cluster = [firstObject cluster];
              objects = [cluster objects];
            }

            curationLoggingConnection3 = [(PGCurationManager *)self curationLoggingConnection];
            if (os_log_type_enabled(curationLoggingConnection3, OS_LOG_TYPE_INFO))
            {
              v39 = [objects count];
              v40 = [v73 count];
              *buf = 134218240;
              v81 = v39;
              v82 = 2048;
              v83 = v40;
              _os_log_impl(&dword_22F0FC000, curationLoggingConnection3, OS_LOG_TYPE_INFO, "Curated key asset: summarizer elected %ld/%ld assets.", buf, 0x16u);
            }

            selfCopy3 = self;
          }

          else
          {
            curationLoggingConnection4 = [(PGCurationManager *)self curationLoggingConnection];
            selfCopy3 = self;
            if (os_log_type_enabled(curationLoggingConnection4, OS_LOG_TYPE_INFO))
            {
              v42 = [v30 count];
              *buf = 134217984;
              v81 = v42;
              _os_log_impl(&dword_22F0FC000, curationLoggingConnection4, OS_LOG_TYPE_INFO, "Curated key asset: not using summarizer. %ld assets remaining.", buf, 0xCu);
            }

            objects = v30;
          }

          array = [MEMORY[0x277CBEB18] array];
          array2 = [MEMORY[0x277CBEB18] array];
          v75 = 0u;
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v45 = objects;
          v46 = [v45 countByEnumeratingWithState:&v75 objects:v79 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v76;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v76 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v75 + 1) + 8 * i);
                if ([v50 clsAvoidIfPossibleAsKeyItemForMemories:isForMemories allowGuestAsset:{allowGuestAsset, v69}])
                {
                  v51 = array2;
                }

                else
                {
                  v51 = array;
                }

                [v51 addObject:v50];
              }

              v47 = [v45 countByEnumeratingWithState:&v75 objects:v79 count:16];
            }

            while (v47);
          }

          v52 = selfCopy3;
          optionsCopy = v70;
          if (HIDWORD(v69))
          {
            v9 = v72;
            v53 = [(PGCurationManager *)v52 _bestAssetInSummarizedAssets:array forReferencePersonLocalIdentifiers:v72];
            if (v53)
            {
              firstObject2 = v53;
              curationLoggingConnection5 = [(PGCurationManager *)v52 curationLoggingConnection];
              if (os_log_type_enabled(curationLoggingConnection5, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, curationLoggingConnection5, OS_LOG_TYPE_INFO, "Curated key asset: found key asset with reference people in non video assets.", buf, 2u);
              }

LABEL_70:
              curationLoggingConnection = v73;
              assetsCopy = v74;
              v13 = v71;
              goto LABEL_71;
            }

            firstObject2 = [(PGCurationManager *)v52 _bestAssetInSummarizedAssets:array2 forReferencePersonLocalIdentifiers:v72];
            curationLoggingConnection6 = [(PGCurationManager *)v52 curationLoggingConnection];
            v60 = os_log_type_enabled(curationLoggingConnection6, OS_LOG_TYPE_INFO);
            if (firstObject2)
            {
              if (v60)
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, curationLoggingConnection6, OS_LOG_TYPE_INFO, "Curated key asset: found key asset with reference people in video assets.", buf, 2u);
              }

              goto LABEL_70;
            }

            if (v60)
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, curationLoggingConnection6, OS_LOG_TYPE_INFO, "Curated key asset: didn't find common people. fallback to basic curation.", buf, 2u);
            }
          }

          assetsBeautifier = [objc_opt_class() assetsBeautifier];
          v62 = [assetsBeautifier performWithItems:array maximumNumberOfItemsToChoose:1 progressBlock:0];
          v63 = [v62 count];
          curationLoggingConnection7 = [(PGCurationManager *)v52 curationLoggingConnection];
          v65 = os_log_type_enabled(curationLoggingConnection7, OS_LOG_TYPE_INFO);
          if (v63)
          {
            if (v65)
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, curationLoggingConnection7, OS_LOG_TYPE_INFO, "Curated key asset: found key asset in non video assets.", buf, 2u);
            }
          }

          else
          {
            if (v65)
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, curationLoggingConnection7, OS_LOG_TYPE_INFO, "Curated key asset: didn't find key asset w/o videos. Trying to find asset in video assets.", buf, 2u);
            }

            [assetsBeautifier performWithItems:array2 maximumNumberOfItemsToChoose:1 progressBlock:0];
            v62 = curationLoggingConnection7 = v62;
          }

          v9 = v72;

          firstObject2 = [v62 firstObject];

          if (firstObject2)
          {
            v66 = 1;
          }

          else
          {
            v66 = v69;
          }

          if ((v66 & 1) == 0)
          {
            curationLoggingConnection8 = [(PGCurationManager *)v52 curationLoggingConnection];
            if (os_log_type_enabled(curationLoggingConnection8, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, curationLoggingConnection8, OS_LOG_TYPE_INFO, "Curated key asset: no key asset found when using pre-filtering. Trying again w/o prefiltering.", buf, 2u);
            }

            [v70 setPrefilterAssetsWithFaces:0];
            firstObject2 = [(PGCurationManager *)v52 bestAssetInAssets:v74 options:v70];
          }

          goto LABEL_70;
        }

LABEL_18:
        v17 = assetsCopy;
        v29 = v28;
        goto LABEL_19;
      }

      if (v23)
      {
        v24 = optionsCopy;
        selfCopy4 = self;
        v26 = [v17 count];
        v27 = [assetsCopy count];
        *buf = 134218240;
        v81 = v26;
        self = selfCopy4;
        optionsCopy = v24;
        v82 = 2048;
        v83 = v27;
        _os_log_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_INFO, "Curated key asset: not using prefiltered assets with faces (%ld/%ld).", buf, 0x16u);
      }
    }

    v28 = 1;
    goto LABEL_18;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_INFO, "Curated key asset: found key asset with reference people and focus on people.", buf, 2u);
  }

LABEL_71:

  objc_autoreleasePoolPop(v13);

  return firstObject2;
}

- (double)contentScoreForAssetFeeder:(id)feeder
{
  feederCopy = feeder;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  allItems = [feederCopy allItems];
  [v5 contentScoreForAssets:allItems];
  v8 = v7;

  objc_autoreleasePoolPop(v4);
  return v8;
}

- (BOOL)isAssetFeederInteresting:(id)interesting withAlternateJunking:(BOOL)junking smart:(BOOL)smart
{
  v76 = *MEMORY[0x277D85DE8];
  interestingCopy = interesting;
  assetCollection = [interestingCopy assetCollection];
  if ([interestingCopy numberOfItems])
  {
    allItems = [interestingCopy allItems];
    v10 = allItems;
    if (!smart)
    {
      v17 = +[PGUserDefaults minimumNumberOfCuratedAssetsForInterestingMoments];
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 4;
      }

      v16 = [objc_opt_class() areAssetsInteresting:v10 minimumNumberOfCuratedAssets:v18 duration:2];
      goto LABEL_13;
    }

    v11 = [allItems count];
    [MEMORY[0x277D277C0] maximumScoreForItems:v10];
    v13 = v12;
    [(PGCurationManager *)self contentScoreForAssetFeeder:interestingCopy];
    v15 = v14;
    if (v14 < (*MEMORY[0x277D3C778] + *MEMORY[0x277D3C768]) * 0.5)
    {
      goto LABEL_4;
    }

    if (v13 > *MEMORY[0x277D3C760] || ([interestingCopy hasBestScoringAssets] & 1) != 0)
    {
LABEL_12:
      v16 = 1;
      goto LABEL_13;
    }

    if (v11 >= 5)
    {
      if (v11 > 0x40)
      {
        goto LABEL_12;
      }

      cls_universalEndDate = [assetCollection cls_universalEndDate];
      cls_universalStartDate = [assetCollection cls_universalStartDate];
      [cls_universalEndDate timeIntervalSinceDate:cls_universalStartDate];
      v23 = v22;

      if (v23 >= 60.0)
      {
        if (v11 > 6 || [interestingCopy hasPeople])
        {
          v53 = v11;
          v25 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_329];
          [v25 setMaximumDistance:1800.0];
          [v25 setMinimumNumberOfObjects:1];
          v54 = v25;
          [v25 performWithDataset:v10 progressBlock:0];
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          obj = v67 = 0u;
          v57 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
          if (v57)
          {
            v56 = *v65;
            while (2)
            {
              for (i = 0; i != v57; ++i)
              {
                if (*v65 != v56)
                {
                  objc_enumerationMutation(obj);
                }

                v27 = *(*(&v64 + 1) + 8 * i);
                context = objc_autoreleasePoolPush();
                objects = [v27 objects];
                firstObject = [objects firstObject];

                creationDate = [firstObject creationDate];
                [creationDate timeIntervalSince1970];
                v32 = v31;

                v58 = firstObject;
                creationDate2 = [firstObject creationDate];
                [creationDate2 timeIntervalSince1970];
                v35 = v34;

                v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                v61 = 0u;
                objects2 = [v27 objects];
                v37 = [objects2 countByEnumeratingWithState:&v60 objects:v74 count:16];
                if (v37)
                {
                  v38 = v37;
                  v39 = *v61;
                  do
                  {
                    for (j = 0; j != v38; ++j)
                    {
                      if (*v61 != v39)
                      {
                        objc_enumerationMutation(objects2);
                      }

                      creationDate3 = [*(*(&v60 + 1) + 8 * j) creationDate];
                      [creationDate3 timeIntervalSince1970];
                      v43 = v42;

                      if (v43 < v32)
                      {
                        v32 = v43;
                      }

                      if (v43 > v35)
                      {
                        v35 = v43;
                      }
                    }

                    v38 = [objects2 countByEnumeratingWithState:&v60 objects:v74 count:16];
                  }

                  while (v38);
                }

                if (v35 - v32 >= 0.0)
                {
                  v44 = v35 - v32;
                }

                else
                {
                  v44 = -(v35 - v32);
                }

                objc_autoreleasePoolPop(context);
                if (v44 >= 60.0)
                {

                  if (v15 <= *MEMORY[0x277D3C770])
                  {
                    v47 = 4;
                  }

                  else if ([interestingCopy hasPeople])
                  {
                    v47 = 2;
                  }

                  else
                  {
                    v47 = 4;
                  }

                  v46 = v54;
                  assetsBeautifier = [objc_opt_class() assetsBeautifier];
                  v48 = [objc_opt_class() maximumNumberOfItemsForDuration:2 withTotalNumberOfItems:v53];
                  if (v48 >= v53)
                  {
                    v49 = v53;
                  }

                  else
                  {
                    v49 = v48;
                  }

                  v50 = [assetsBeautifier performWithItems:v10 maximumNumberOfItemsToChoose:v49 progressBlock:0];
                  if ([v50 count] >= v47 && v49 * 0.3 <= objc_msgSend(v50, "count"))
                  {
                    v16 = 1;
                  }

                  else
                  {
                    curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
                    if (os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_DEBUG))
                    {
                      v52 = [v50 count];
                      *buf = 134218498;
                      v69 = v52;
                      v70 = 2048;
                      v71 = v49;
                      v72 = 2112;
                      v73 = assetCollection;
                      _os_log_debug_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: Not enough best assets from beautifier (%ld/%ld) for assetCollection %@", buf, 0x20u);
                    }

                    v16 = 0;
                  }

                  goto LABEL_63;
                }
              }

              v57 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
              if (v57)
              {
                continue;
              }

              break;
            }
          }

          assetsBeautifier = [(PGCurationManager *)self curationLoggingConnection];
          if (os_log_type_enabled(assetsBeautifier, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v69 = assetCollection;
            _os_log_debug_impl(&dword_22F0FC000, assetsBeautifier, OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: %@ sub-segments are too short", buf, 0xCu);
          }

          v16 = 0;
          v46 = v54;
LABEL_63:

          goto LABEL_13;
        }
      }

      else
      {
        curationLoggingConnection2 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(curationLoggingConnection2, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = assetCollection;
          _os_log_debug_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: %@ is too short", buf, 0xCu);
        }
      }
    }

LABEL_4:
    v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

double __73__PGCurationManager_isAssetFeederInteresting_withAlternateJunking_smart___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  return v8;
}

- (void)invalidateCurationCacheForMomentUUIDs:(id)ds
{
  cache = self->_cache;
  allObjects = [ds allObjects];
  [(PGCurationCache *)cache invalidateCacheForMomentUUIDs:allObjects];
}

- (unint64_t)optimalDurationForAssetCollection:(id)collection duration:(unint64_t)duration options:(id)options curationContext:(id)context
{
  collectionCopy = collection;
  optionsCopy = options;
  contextCopy = context;
  assetCollectionType = [collectionCopy assetCollectionType];
  if (assetCollectionType == 1)
  {
    goto LABEL_12;
  }

  v14 = assetCollectionType;
  if (assetCollectionType == 2 && [collectionCopy assetCollectionSubtype] != 200)
  {
    goto LABEL_12;
  }

  if (optionsCopy)
  {
    v15 = [optionsCopy objectForKeyedSubscript:@"PHPhotosGraphOptionIsCompleteMoments"];
    v16 = v15;
    if (v15 && ([v15 BOOLValue] & 1) == 0)
    {

LABEL_12:
      durationCopy = 5;
      if (duration != 3)
      {
        durationCopy = duration;
      }

      if (duration == 2)
      {
        duration = 4;
      }

      else
      {
        duration = durationCopy;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v14 != 3 && [collectionCopy estimatedAssetCount] > 0x64)
  {

    goto LABEL_17;
  }

  v17 = [(PGCurationManager *)self isAssetCollectionInteresting:collectionCopy curationContext:contextCopy];

  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_17:

  return duration;
}

- (id)memoryCuratedAssetsForAssets:(id)assets duration:(unint64_t)duration withContextualAssetLocalIdentifiers:(id)identifiers minimumProportion:(double)proportion graph:(id)graph curationContext:(id)context progressBlock:(id)block
{
  v161 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifiersCopy = identifiers;
  graphCopy = graph;
  contextCopy = context;
  blockCopy = block;
  v106 = assetsCopy;
  v103 = graphCopy;
  v104 = contextCopy;
  v105 = blockCopy;
  if (![assetsCopy count])
  {
    v23 = 0;
    goto LABEL_111;
  }

  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v116 = _Block_copy(blockCopy);
  if (v116)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v148[3] >= 0.01)
    {
      v148[3] = Current;
      LOBYTE(info.numer) = 0;
      v116[2](v116, &info, 0.0);
      v22 = *(v152 + 24) | LOBYTE(info.numer);
      *(v152 + 24) = v22;
      if (v22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v156 = 628;
          *&v156[4] = 2080;
          *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v23 = 0;
        goto LABEL_110;
      }
    }
  }

  curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
  v25 = os_signpost_id_generate(curationLoggingConnection);
  v26 = curationLoggingConnection;
  v27 = v26;
  spid = v25;
  v94 = v25 - 1;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "CuratedAssets", "", buf, 2u);
  }

  v99 = v27;

  info = 0;
  mach_timebase_info(&info);
  v28 = mach_absolute_time();
  fetchedObjects = [assetsCopy fetchedObjects];
  if (v116)
  {
    v29 = CFAbsoluteTimeGetCurrent();
    if (v29 - v148[3] >= 0.01)
    {
      v148[3] = v29;
      v145 = 0;
      v116[2](v116, &v145, 0.5);
      v30 = *(v152 + 24) | v145;
      *(v152 + 24) = v30;
      if (v30)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v156 = 633;
          *&v156[4] = 2080;
          *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v23 = 0;
        goto LABEL_109;
      }
    }
  }

  v93 = v28;
  v31 = +[PGCurationManager maximumNumberOfItemsForDuration:withTotalNumberOfItems:](PGCurationManager, "maximumNumberOfItemsForDuration:withTotalNumberOfItems:", duration, [fetchedObjects count]);
  v95 = [PGCurationManager minimumNumberOfItemsForDuration:duration withMaximumNumberOfItems:v31];
  v98 = v31;
  v101 = [MEMORY[0x277CBEB18] arrayWithCapacity:v31];
  v107 = +[PGCurationManager assetsBeautifier];
  v32 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284485FD0];
  [v32 setK:v98];
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke;
  v140[3] = &unk_27888A188;
  v110 = v116;
  v141 = v110;
  v142 = &v147;
  v144 = 0x3F847AE147AE147BLL;
  v143 = &v151;
  v97 = v32;
  v100 = [v32 performWithDataset:fetchedObjects progressBlock:v140];
  if (*(v152 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v156 = 648;
      *&v156[4] = 2080;
      *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v23 = 0;
    goto LABEL_108;
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  obj = v100;
  v115 = [obj countByEnumeratingWithState:&v136 objects:v160 count:16];
  if (v115)
  {
    v113 = *v137;
    v33 = *MEMORY[0x277D3C778];
    do
    {
      for (i = 0; i != v115; ++i)
      {
        if (*v137 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v136 + 1) + 8 * i);
        if (v116)
        {
          v35 = CFAbsoluteTimeGetCurrent();
          if (v35 - v148[3] >= 0.01)
          {
            v148[3] = v35;
            v145 = 0;
            v110[2](v110, &v145, 0.5);
            v36 = *(v152 + 24) | v145;
            *(v152 + 24) = v36;
            if (v36)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v156 = 654;
                *&v156[4] = 2080;
                *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_54;
            }
          }
        }

        objects = [v34 objects];
        v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objects, "count")}];
        v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objects, "count")}];
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v40 = objects;
        v41 = [v40 countByEnumeratingWithState:&v132 objects:v159 count:16];
        if (v41)
        {
          v42 = *v133;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v133 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v132 + 1) + 8 * j);
              [v44 clsContentScore];
              if (v45 > v33)
              {
                localIdentifier = [v44 localIdentifier];
                v47 = [identifiersCopy containsObject:localIdentifier];

                if (v47)
                {
                  v48 = v38;
                }

                else
                {
                  v48 = v39;
                }

                [v48 addObject:v44];
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v132 objects:v159 count:16];
          }

          while (v41);
        }

        if ([v38 count])
        {
          [array2 addObject:v38];
          [array addObject:v39];
        }
      }

      v115 = [obj countByEnumeratingWithState:&v136 objects:v160 count:16];
    }

    while (v115);
  }

  if (v116)
  {
    v49 = CFAbsoluteTimeGetCurrent();
    if (v49 - v148[3] >= 0.01)
    {
      v148[3] = v49;
      v145 = 0;
      v110[2](v110, &v145, 0.5);
      v50 = *(v152 + 24) | v145;
      *(v152 + 24) = v50;
      if (v50)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v156 = 685;
          *&v156[4] = 2080;
          *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_54:
        v23 = 0;
        goto LABEL_107;
      }
    }
  }

  [array sortUsingComparator:&__block_literal_global_316];
  array3 = [MEMORY[0x277CBEB18] array];
  v51 = 0;
  v92 = 0;
  v52 = 0;
  while ([v101 count] < v95)
  {
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    obja = array2;
    v53 = [obja countByEnumeratingWithState:&v128 objects:v158 count:16];
    v54 = v92;
    if (!v53)
    {
      goto LABEL_72;
    }

    v54 = v92;
    v55 = *v129;
    while (2)
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v129 != v55)
        {
          objc_enumerationMutation(obja);
        }

        v57 = *(*(&v128 + 1) + 8 * k);
        if (v116)
        {
          v58 = CFAbsoluteTimeGetCurrent();
          if (v58 - v148[3] >= 0.01)
          {
            v148[3] = v58;
            v145 = 0;
            v110[2](v110, &v145, 0.5);
            v59 = *(v152 + 24) | v145;
            *(v152 + 24) = v59;
            if (v59)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v156 = 705;
                *&v156[4] = 2080;
                *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_104;
            }
          }
        }

        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_317;
        v123[3] = &unk_27888A188;
        v124 = v110;
        v125 = &v147;
        v127 = 0x3F847AE147AE147BLL;
        v126 = &v151;
        v60 = [v107 performWithItems:v57 maximumNumberOfItemsToChoose:1 progressBlock:v123];
        v61 = v60;
        if (*(v152 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v156 = 711;
            *&v156[4] = 2080;
            *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_104:
          v23 = 0;
          goto LABEL_105;
        }

        firstObject = [v60 firstObject];
        if (firstObject)
        {
          [v101 addObject:firstObject];
          [v57 removeObject:firstObject];
          ++v54;
        }

        else
        {
          [array3 addObject:v57];
        }

        if (v54 >= v98 - v91)
        {
          goto LABEL_72;
        }
      }

      v53 = [obja countByEnumeratingWithState:&v128 objects:v158 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }

LABEL_72:

    [obja removeObjectsInArray:array3];
    [array3 removeAllObjects];
    v63 = vcvtmd_u64_f64(v54 / proportion - v54);
    if (v98 - v54 >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = v98 - v54;
    }

    v65 = [array count];
    v51 = v91;
    while (v52 < v65 && v51 < v64)
    {
      v66 = [array objectAtIndexedSubscript:v52];
      v118[0] = MEMORY[0x277D85DD0];
      v118[1] = 3221225472;
      v118[2] = __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_318;
      v118[3] = &unk_27888A188;
      v119 = v110;
      v120 = &v147;
      v122 = 0x3F847AE147AE147BLL;
      v121 = &v151;
      v67 = [v107 performWithItems:v66 maximumNumberOfItemsToChoose:1 progressBlock:v118];
      firstObject2 = [v67 firstObject];

      v69 = *(v152 + 24);
      if (v69 == 1)
      {
        v70 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v156 = 745;
          *&v156[4] = 2080;
          *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, v70, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        if (firstObject2)
        {
          [v101 addObject:firstObject2];
          [v66 removeObject:firstObject2];
          ++v51;
        }

        else
        {
          [array3 addObject:v66];
        }

        ++v52;
      }

      if (v69)
      {
        goto LABEL_104;
      }
    }

    if (v52 >= v65)
    {
      v52 = 0;
    }

    [array removeObjectsInArray:array3];
    [array3 removeAllObjects];
    v71 = v54 == v92;
    v92 = v54;
    if (v71)
    {
      v92 = v54;
      if (v51 == v91)
      {
        break;
      }
    }
  }

  if (v116 && (v72 = CFAbsoluteTimeGetCurrent(), v72 - v148[3] >= 0.01) && (v148[3] = v72, v145 = 0, v110[2](v110, &v145, 0.5), v73 = *(v152 + 24) | v145, *(v152 + 24) = v73, (v73 & 1) != 0))
  {
    v74 = array3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v156 = 773;
      *&v156[4] = 2080;
      *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v23 = 0;
  }

  else
  {
    v76 = [v107 deduplicateItems:v101 debugInfo:0];
    v77 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v157 = v77;
    v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v157 count:1];
    v79 = [v76 sortedArrayUsingDescriptors:v78];

    v80 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v83 = v99;
    v84 = v83;
    if (v94 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v84, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssets", "", buf, 2u);
    }

    if (os_log_type_enabled(v84, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v156 = "CuratedAssets";
      *&v156[8] = 2048;
      *&v156[10] = ((((v80 - v93) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v84, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v85 = objc_alloc(MEMORY[0x277CD98D0]);
    photoLibrary = [v106 photoLibrary];
    fetchPropertySets = [v106 fetchPropertySets];
    v88 = [v85 initWithObjects:v79 photoLibrary:photoLibrary fetchType:0 fetchPropertySets:fetchPropertySets identifier:0 registerIfNeeded:0];

    if (v116 && (v89 = CFAbsoluteTimeGetCurrent(), v89 - v148[3] >= 0.01) && (v148[3] = v89, v145 = 0, v110[2](v110, &v145, 1.0), v90 = *(v152 + 24) | v145, *(v152 + 24) = v90, (v90 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v156 = 780;
        *&v156[4] = 2080;
        *&v156[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v23 = 0;
    }

    else
    {
      v23 = v88;
    }

LABEL_105:
    v74 = array3;
  }

LABEL_107:
LABEL_108:

LABEL_109:
LABEL_110:
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);

LABEL_111:

  return v23;
}

void __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_317(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_318(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_313(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 count];
  v6 = [v4 count];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v6 > v5;
  }
}

- (id)memoryCuratedAssetsForAssetCollection:(id)collection duration:(unint64_t)duration withContextualAssetLocalIdentifiers:(id)identifiers minimumProportion:(double)proportion graph:(id)graph curationContext:(id)context progressBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  graphCopy = graph;
  identifiersCopy = identifiers;
  collectionCopy = collection;
  defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
  v22 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
  v23 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:defaultAssetFetchOptions feederPrefetchOptions:v22 curationContext:contextCopy];

  assetFetchResult = [v23 assetFetchResult];
  v25 = [(PGCurationManager *)self memoryCuratedAssetsForAssets:assetFetchResult duration:duration withContextualAssetLocalIdentifiers:identifiersCopy minimumProportion:graphCopy graph:contextCopy curationContext:blockCopy progressBlock:proportion];

  return v25;
}

- (id)curatedAssetsForAssetCollection:(id)collection duration:(unint64_t)duration referencePersonLocalIdentifiers:(id)identifiers curationContext:(id)context progressBlock:(id)block
{
  v103 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  identifiersCopy = identifiers;
  contextCopy = context;
  blockCopy = block;
  v14 = _Block_copy(blockCopy);
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v67 = blockCopy;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v93[3] < 0.01) || (v93[3] = v15, LOBYTE(info.numer) = 0, (v14)[2](v14, &info, 0.0), v16 = *(v97 + 24) | LOBYTE(info.numer), *(v97 + 24) = v16, (v16 & 1) == 0))
  {
    curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
    v19 = os_signpost_id_generate(curationLoggingConnection);
    v20 = curationLoggingConnection;
    v21 = v20;
    v62 = v19 - 1;
    spid = v19;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CuratedAssetsForPeople", "", buf, 2u);
    }

    v66 = v21;

    info = 0;
    mach_timebase_info(&info);
    v61 = mach_absolute_time();
    defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
    v23 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
    [v23 setPersonsPrefetchMode:2];
    [v23 setFaceInformationPrefetchMode:2];
    v68 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:defaultAssetFetchOptions feederPrefetchOptions:v23 curationContext:contextCopy];
    v65 = defaultAssetFetchOptions;
    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v93[3] >= 0.01)
      {
        v93[3] = Current;
        v90 = 0;
        v14[2](v14, &v90, 0.5);
        v25 = *(v97 + 24) | v90;
        *(v97 + 24) = v25;
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v101 = 551;
            *&v101[4] = 2080;
            *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = 0;
          goto LABEL_65;
        }
      }
    }

    allItems = [v68 allItems];
    if (v14)
    {
      v27 = CFAbsoluteTimeGetCurrent();
      if (v27 - v93[3] >= 0.01)
      {
        v93[3] = v27;
        v90 = 0;
        v14[2](v14, &v90, 0.5);
        v28 = *(v97 + 24) | v90;
        *(v97 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v101 = 555;
            *&v101[4] = 2080;
            *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = 0;
          goto LABEL_64;
        }
      }
    }

    v29 = [objc_opt_class() maximumNumberOfItemsForDuration:duration withTotalNumberOfItems:{objc_msgSend(allItems, "count")}];
    v30 = [objc_opt_class() minimumNumberOfItemsForDuration:duration withMaximumNumberOfItems:v29];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke;
    v85[3] = &unk_27888A188;
    v31 = v14;
    v86 = v31;
    v87 = &v92;
    v88 = &v96;
    v89 = 0x3F847AE147AE147BLL;
    v64 = [(PGCurationManager *)self _bestAssetsInAssets:allItems forReferencePersonLocalIdentifiers:identifiersCopy minimumRatioOfReferencePersonsPerAsset:v85 progressBlock:0.0];
    if (*(v97 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v101 = 564;
        *&v101[4] = 2080;
        *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v17 = 0;
      goto LABEL_63;
    }

    assetsBeautifier = [objc_opt_class() assetsBeautifier];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_302;
    v80[3] = &unk_27888A188;
    v59 = v31;
    v60 = assetsBeautifier;
    v81 = v59;
    v82 = &v92;
    v83 = &v96;
    v84 = 0x3F847AE147AE147BLL;
    v33 = [assetsBeautifier performWithItems:v64 maximumNumberOfItemsToChoose:v29 progressBlock:v80];
    v34 = v33;
    if (*(v97 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v101 = 572;
        *&v101[4] = 2080;
        *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        v35 = MEMORY[0x277D86220];
LABEL_29:
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v33 count] >= v30)
      {
        goto LABEL_71;
      }

      v36 = [MEMORY[0x277CBEB58] setWithArray:v34];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_304;
      v75[3] = &unk_27888A188;
      v76 = v59;
      v77 = &v92;
      v78 = &v96;
      v79 = 0x3F847AE147AE147BLL;
      v37 = [v60 performWithItems:allItems maximumNumberOfItemsToChoose:v30 progressBlock:v75];
      v38 = v37;
      v39 = *(v97 + 24);
      if (v39 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v101 = 583;
          *&v101[4] = 2080;
          *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v57 = *(v97 + 24);
        v58 = collectionCopy;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v56 = v37;
        v40 = v37;
        v41 = [v40 countByEnumeratingWithState:&v71 objects:v102 count:16];
        if (v41)
        {
          v42 = *v72;
LABEL_36:
          v43 = 0;
          while (1)
          {
            if (*v72 != v42)
            {
              objc_enumerationMutation(v40);
            }

            [v36 addObject:*(*(&v71 + 1) + 8 * v43)];
            if ([v36 count] >= v30)
            {
              break;
            }

            if (v41 == ++v43)
            {
              v41 = [v40 countByEnumeratingWithState:&v71 objects:v102 count:16];
              if (v41)
              {
                goto LABEL_36;
              }

              break;
            }
          }
        }

        collectionCopy = v58;
        LOBYTE(v39) = v57;
        v38 = v56;
        allObjects = [v36 allObjects];

        v34 = allObjects;
      }

      if ((v39 & 1) == 0)
      {
LABEL_71:
        if (!v14 || (v45 = CFAbsoluteTimeGetCurrent(), v45 - v93[3] < 0.01) || (v93[3] = v45, v90 = 0, v59[2](v59, &v90, 0.5), v46 = *(v97 + 24) | v90, *(v97 + 24) = v46, (v46 & 1) == 0))
        {
          v47 = [v34 sortedArrayUsingComparator:&__block_literal_global_40652];

          v48 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v51 = v66;
          v52 = v51;
          if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v52, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssetsForPeople", "", buf, 2u);
          }

          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v101 = "CuratedAssetsForPeople";
            *&v101[8] = 2048;
            *&v101[10] = ((((v48 - v61) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          if (v14 && (v53 = CFAbsoluteTimeGetCurrent(), v53 - v93[3] >= 0.01) && (v93[3] = v53, v90 = 0, v59[2](v59, &v90, 1.0), v54 = *(v97 + 24) | v90, *(v97 + 24) = v54, (v54 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v101 = 605;
              *&v101[4] = 2080;
              *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v17 = 0;
            v34 = v47;
          }

          else
          {
            v34 = v47;
            v17 = v34;
          }

          goto LABEL_62;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v101 = 597;
          *&v101[4] = 2080;
          *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          v35 = MEMORY[0x277D86220];
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
LABEL_62:

LABEL_63:
LABEL_64:

LABEL_65:
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v101 = 541;
    *&v101[4] = 2080;
    *&v101[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = 0;
LABEL_66:
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);

  return v17;
}

void __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_302(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_304(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_305(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isAssetCollectionInteresting:(id)interesting curationContext:(id)context
{
  contextCopy = context;
  interestingCopy = interesting;
  defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
  v9 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v9 setFaceInformationPrefetchMode:2];
  v10 = [MEMORY[0x277D27710] feederForAssetCollection:interestingCopy options:defaultAssetFetchOptions feederPrefetchOptions:v9 curationContext:contextCopy];

  LOBYTE(self) = [(PGCurationManager *)self isAssetFeederInteresting:v10 withAlternateJunking:0 smart:0];
  return self;
}

- (double)contentScoreForAssetCollection:(id)collection curationContext:(id)context
{
  contextCopy = context;
  collectionCopy = collection;
  defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
  v9 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v9 setPersonsPrefetchMode:0];
  v10 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:defaultAssetFetchOptions feederPrefetchOptions:v9 curationContext:contextCopy];

  [(PGCurationManager *)self contentScoreForAssetFeeder:v10];
  v12 = v11;

  return v12;
}

- (id)criteriaForKeyAssetCurationWithAssetCollection:(id)collection graph:(id)graph options:(id)options curationContext:(id)context
{
  collectionCopy = collection;
  graphCopy = graph;
  optionsCopy = options;
  contextCopy = context;
  if ([collectionCopy assetCollectionType] == 3)
  {
    v14 = [graphCopy momentNodeForMoment:collectionCopy];
    if (v14)
    {
      v15 = [graphCopy bestMeaningLabelForMeaningfulEvent:v14];
      if (v15)
      {
        curationCriteriaFactory = self->_curationCriteriaFactory;
        enrichableEvent = [v14 enrichableEvent];
        v18 = [(PGCurationCriteriaFactory *)curationCriteriaFactory curationCriteriaWithCollection:enrichableEvent meaningLabel:v15 inGraph:graphCopy client:1];
      }

      else if ([optionsCopy allowContextualTrip] && objc_msgSend(v14, "isTrip"))
      {
        v20 = self->_curationCriteriaFactory;
        enrichableEvent = [v14 enrichableEvent];
        v18 = [(PGCurationCriteriaFactory *)v20 tripCurationCriteriaWithCollection:enrichableEvent client:1];
      }

      else
      {
        v21 = self->_curationCriteriaFactory;
        enrichableEvent = [v14 enrichableEvent];
        v18 = [(PGCurationCriteriaFactory *)v21 petCurationCriteriaWithCollection:enrichableEvent client:1 curationContext:contextCopy];
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dejunkAndDedupeAssetsInAssetCollection:(id)collection options:(id)options curationContext:(id)context progressBlock:(id)block
{
  collectionCopy = collection;
  optionsCopy = options;
  contextCopy = context;
  blockCopy = block;
  v14 = _os_activity_create(&dword_22F0FC000, "Dejunk and Dedup Assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v14, &v22);
  defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
  v16 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v16 setPersonsPrefetchMode:0];
  [v16 setFaceInformationPrefetchMode:2];
  v17 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:defaultAssetFetchOptions feederPrefetchOptions:v16 curationContext:contextCopy];
  v18 = objc_opt_class();
  allItems = [v17 allItems];
  v20 = [v18 dejunkAndDedupeItems:allItems options:optionsCopy debugInfo:0 progressBlock:blockCopy];

  os_activity_scope_leave(&v22);

  return v20;
}

- (id)curatedAssetsForAssetCollection:(id)collection options:(id)options curationContext:(id)context progressBlock:(id)block
{
  v74 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  optionsCopy = options;
  contextCopy = context;
  blockCopy = block;
  v12 = _Block_copy(blockCopy);
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  if (!v12 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v65[3] < 0.01) || (v65[3] = v13, LOBYTE(state.opaque[0]) = 0, (*(v12 + 2))(v12, &state, 0.0), v14 = *(v69 + 24) | LOBYTE(state.opaque[0]), *(v69 + 24) = v14, (v14 & 1) == 0))
  {
    v16 = _os_activity_create(&dword_22F0FC000, "Curated Assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v53 = v16;
    os_activity_scope_enter(v16, &state);
    curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
    v18 = os_signpost_id_generate(curationLoggingConnection);
    v19 = curationLoggingConnection;
    v20 = v19;
    spid = v18;
    v21 = v18 - 1;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CuratedAssets", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v51 = mach_absolute_time();
    v22 = [(PGCurationCache *)self->_cache curatedAssetIdentifiersForMoment:collectionCopy options:optionsCopy];
    if (v12 && (v23 = CFAbsoluteTimeGetCurrent(), v23 - v65[3] >= 0.01) && (v65[3] = v23, v61 = 0, (*(v12 + 2))(v12, &v61, 0.5), v24 = *(v69 + 24) | v61, *(v69 + 24) = v24, (v24 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v73 = 209;
        *&v73[4] = 2080;
        *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      fetchedObjects = 0;
    }

    else
    {
      if (v22)
      {
        v26 = [(PGCurationManager *)self fetchAssetsSortedByDateWithLocalIdentifiers:v22];
        fetchedObjects = [v26 fetchedObjects];

        curationLoggingConnection2 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(curationLoggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v73 = collectionCopy;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_INFO, "Curated Assets: Cache Hit for assetCollection: %@", buf, 0xCu);
        }
      }

      else
      {
        defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
        v28 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
        if ([optionsCopy includesAllFaces])
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v28 setPersonsPrefetchMode:v29];
        [v28 setFaceInformationPrefetchMode:2];
        v50 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:defaultAssetFetchOptions feederPrefetchOptions:v28 curationContext:contextCopy];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __91__PGCurationManager_curatedAssetsForAssetCollection_options_curationContext_progressBlock___block_invoke;
        v56[3] = &unk_27888A188;
        v30 = v12;
        v57 = v30;
        v58 = &v64;
        v59 = &v68;
        v60 = 0x3F847AE147AE147BLL;
        v31 = [(PGCurationManager *)self bestAssetsForAssetFeeder:v50 options:optionsCopy progressBlock:v56];
        fetchedObjects = v31;
        if (*(v69 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v73 = 222;
            *&v73[4] = 2080;
            *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v32 = 0;
        }

        else
        {
          if (![v31 count])
          {
            allItems = [v50 allItems];

            fetchedObjects = allItems;
          }

          v46 = objc_alloc_init(PGKeyAssetCurationOptions);
          v45 = [(PGCurationCache *)self->_cache curatedKeyAssetIdentifierForMoment:collectionCopy options:?];
          v48 = [(PGCurationManager *)self fetchAssetWithLocalIdentifier:?];
          if (v12 && (Current = CFAbsoluteTimeGetCurrent(), Current - v65[3] >= 0.01) && (v65[3] = Current, v61 = 0, (*(v30 + 2))(v30, &v61, 0.5), v34 = *(v69 + 24) | v61, *(v69 + 24) = v34, (v34 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v73 = 235;
              *&v73[4] = 2080;
              *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v32 = 0;
          }

          else
          {
            if (v48 && ([fetchedObjects containsObject:?] & 1) == 0)
            {
              v44 = [fetchedObjects arrayByAddingObject:v48];

              defaultAssetSortDescriptors = [objc_opt_class() defaultAssetSortDescriptors];
              fetchedObjects = [v44 sortedArrayUsingDescriptors:defaultAssetSortDescriptors];
            }

            [(PGCurationCache *)self->_cache setCuratedAssets:fetchedObjects forMoment:collectionCopy options:optionsCopy];
            v32 = 1;
          }
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      v36 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v39 = v20;
      v40 = v39;
      if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssets", "", buf, 2u);
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v73 = "CuratedAssets";
        *&v73[8] = 2048;
        *&v73[10] = ((((v36 - v51) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (!v12 || (v41 = CFAbsoluteTimeGetCurrent(), v41 - v65[3] < 0.01) || (v65[3] = v41, v61 = 0, (*(v12 + 2))(v12, &v61, 1.0), v42 = *(v69 + 24) | v61, *(v69 + 24) = v42, (v42 & 1) == 0))
      {
        fetchedObjects = fetchedObjects;
        v15 = fetchedObjects;
        goto LABEL_53;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v73 = 253;
        *&v73[4] = 2080;
        *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

LABEL_51:
    v15 = 0;
LABEL_53:

    os_activity_scope_leave(&state);
    goto LABEL_54;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v73 = 200;
    *&v73[4] = 2080;
    *&v73[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = 0;
LABEL_54:
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  return v15;
}

void __91__PGCurationManager_curatedAssetsForAssetCollection_options_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)bestAssetsForAssetFeeder:(id)feeder options:(id)options progressBlock:(id)block
{
  blockCopy = block;
  optionsCopy = options;
  feederCopy = feeder;
  v11 = objc_alloc_init(PGCurator_PHAsset);
  [(PGCurator *)v11 setLoggingConnection:self->_curationLoggingConnection];
  v12 = [(PGCurator_PHAsset *)v11 bestAssetsForFeeder:feederCopy options:optionsCopy debugInfo:0 progressBlock:blockCopy];

  return v12;
}

- (id)curatedKeyAssetForAssetCollection:(id)collection curatedAssetCollection:(id)assetCollection options:(id)options criteria:(id)criteria curationContext:(id)context
{
  v61 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  assetCollectionCopy = assetCollection;
  optionsCopy = options;
  criteriaCopy = criteria;
  contextCopy = context;
  curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
  v17 = os_signpost_id_generate(curationLoggingConnection);
  v18 = curationLoggingConnection;
  v19 = v18;
  v20 = v17 - 1;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CuratedKeyAsset", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v50 = mach_absolute_time();
  if (assetCollectionCopy)
  {
    v21 = assetCollectionCopy;
  }

  else
  {
    v21 = collectionCopy;
  }

  v52 = v21;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v51 = criteriaCopy;
  if (criteriaCopy)
  {
    uuid = [collectionCopy uuid];
    v23 = [(PGCurationManager *)self curatedKeyAssetForCollectionUUID:uuid curatedAssetCollection:v52 options:optionsCopy criteria:criteriaCopy curationContext:contextCopy];

    if (v23)
    {
      v24 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v27 = v19;
      v28 = v27;
      if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v17, "CuratedKeyAsset", "Curated Key Asset. Updated asset collection to collection.", buf, 2u);
      }

      v29 = v28;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated Key Asset. Updated asset collection to collection."];
        *buf = 136315650;
        v56 = "CuratedKeyAsset";
        v57 = 2112;
        v58 = v30;
        v59 = 2048;
        v60 = ((((v24 - v50) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }

      goto LABEL_32;
    }
  }

  v49 = assetCollectionCopy;
  v29 = [(PGCurationCache *)self->_cache curatedKeyAssetIdentifierForMoment:collectionCopy options:optionsCopy];
  if (v29)
  {
    v23 = [(PGCurationManager *)self fetchAssetWithLocalIdentifier:v29];
    goto LABEL_22;
  }

  defaultAssetFetchOptions = [(PGCurationManager *)self defaultAssetFetchOptions];
  v32 = v52;
  v33 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v33 setPersonsPrefetchMode:2];
  [v33 setFaceInformationPrefetchMode:2];
  [v33 setScenesPrefetchMode:2];
  v47 = v32;
  v48 = defaultAssetFetchOptions;
  v34 = [MEMORY[0x277D27710] feederForAssetCollection:v32 options:defaultAssetFetchOptions feederPrefetchOptions:v33 curationContext:contextCopy];
  v35 = [(PGCurationManager *)self bestAssetForAssetFeeder:v34 options:optionsCopy];
  if (v35)
  {
    v23 = v35;
  }

  else
  {
    if (![v34 numberOfItems])
    {
      v23 = 0;
      goto LABEL_21;
    }

    v23 = [v34 itemAtIndex:0];
    if (!v23)
    {
      goto LABEL_21;
    }
  }

  [(PGCurationCache *)self->_cache setCuratedKeyAsset:v23 forMoment:collectionCopy options:optionsCopy];
LABEL_21:

LABEL_22:
  v36 = mach_absolute_time();
  v38 = info.numer;
  v37 = info.denom;
  v39 = v19;
  v40 = v39;
  if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    v41 = @"YES";
    if (!v29)
    {
      v41 = @"NO";
    }

    *buf = 138412290;
    v56 = v41;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, v17, "CuratedKeyAsset", "Curated Key Asset (cached: %@)", buf, 0xCu);
  }

  v42 = v40;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = (((v36 - v50) * v38) / v37) / 1000000.0;
    v44 = @"YES";
    if (!v29)
    {
      v44 = @"NO";
    }

    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated Key Asset (cached: %@)", v44];
    *buf = 136315650;
    v56 = "CuratedKeyAsset";
    v57 = 2112;
    v58 = v45;
    v59 = 2048;
    v60 = v43;
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  assetCollectionCopy = v49;
LABEL_32:

  return v23;
}

- (PFSceneGeography)sceneGeography
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sceneGeography)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3B4C0]);
    sceneGeography = selfCopy->_sceneGeography;
    selfCopy->_sceneGeography = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_sceneGeography;

  return v5;
}

- (PGCurationManager)initWithPhotoLibrary:(id)library cacheURL:(id)l
{
  libraryCopy = library;
  lCopy = l;
  v20.receiver = self;
  v20.super_class = PGCurationManager;
  v9 = [(PGCurationManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    v11 = os_log_create("com.apple.PhotosGraph", "curation");
    curationLoggingConnection = v10->_curationLoggingConnection;
    v10->_curationLoggingConnection = v11;

    v13 = objc_alloc_init(PGCurationCriteriaFactory);
    curationCriteriaFactory = v10->_curationCriteriaFactory;
    v10->_curationCriteriaFactory = v13;

    v15 = [PGCurationCache alloc];
    v16 = [(CLSDBCache *)PGCurationCache urlWithParentURL:lCopy];
    v17 = [(CLSDBCache *)v15 initWithURL:v16];
    cache = v10->_cache;
    v10->_cache = v17;
  }

  return v10;
}

+ (id)filteredAssetsFromAssets:(id)assets withContextualAssetLocalIdentifiers:(id)identifiers approximateTimeDistance:(double)distance
{
  v71 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  identifiersCopy = identifiers;
  v10 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_338_40727];
  [v10 setMaximumDistance:distance];
  [v10 setMinimumNumberOfObjects:2];
  identifiersCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier IN %@", identifiersCopy];
  v12 = [assetsCopy filteredArrayUsingPredicate:identifiersCopy];
  v13 = [v12 mutableCopy];

  v52 = v13;
  v14 = [v10 performWithDataset:v13 progressBlock:0];
  if (![v14 count])
  {
    goto LABEL_45;
  }

  v48 = v10;
  v49 = identifiersCopy;
  defaultAssetSortDescriptors = [self defaultAssetSortDescriptors];
  v47 = assetsCopy;
  v50 = [assetsCopy sortedArrayUsingDescriptors:?];
  v53 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v51 = v14;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v15;
  v55 = *v65;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v65 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v64 + 1) + 8 * i);
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      objects = [v18 objects];
      v20 = [objects countByEnumeratingWithState:&v60 objects:v69 count:16];
      if (!v20)
      {
        v23 = 0;
        v22 = 0;
        goto LABEL_23;
      }

      v21 = v20;
      v22 = 0;
      v23 = 0;
      v24 = *v61;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v61 != v24)
          {
            objc_enumerationMutation(objects);
          }

          cls_universalDate = [*(*(&v60 + 1) + 8 * j) cls_universalDate];
          if (!v23 || [v23 compare:cls_universalDate] == 1)
          {
            v27 = cls_universalDate;

            v23 = v27;
          }

          if (!v22 || [v22 compare:cls_universalDate] == -1)
          {
            v28 = cls_universalDate;

            v22 = v28;
          }
        }

        v21 = [objects countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v21);

      if (v23)
      {
        objects = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v22];
        [v53 addObject:objects];
LABEL_23:
      }
    }

    v16 = [obj countByEnumeratingWithState:&v64 objects:v70 count:16];
  }

  while (v16);
LABEL_26:

  v29 = v53;
  v10 = v48;
  identifiersCopy = v49;
  v14 = v51;
  if ([v53 count])
  {
    [v53 sortUsingSelector:sel_startDate];
    v30 = [v53 count];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v31 = v50;
    v32 = [v31 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v57;
      do
      {
        v36 = 0;
        do
        {
          if (*v57 != v35)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v56 + 1) + 8 * v36);
          cls_universalDate2 = [v37 cls_universalDate];
          v39 = [v29 objectAtIndexedSubscript:v34];
          v40 = [v39 containsDate:cls_universalDate2];

          if (v40)
          {
            [v52 addObject:v37];
          }

          else
          {
            if (v34 >= v30)
            {
LABEL_42:

              v10 = v48;
              identifiersCopy = v49;
              v14 = v51;
              v29 = v53;
              goto LABEL_43;
            }

            while (1)
            {
              v41 = [v53 objectAtIndexedSubscript:v34];
              endDate = [v41 endDate];
              v43 = [endDate compare:cls_universalDate2];

              if (v43 != -1)
              {
                break;
              }

              if (v30 == ++v34)
              {
                goto LABEL_42;
              }
            }
          }

          ++v36;
          v14 = v51;
          v29 = v53;
        }

        while (v36 != v33);
        v44 = [v31 countByEnumeratingWithState:&v56 objects:v68 count:16];
        v33 = v44;
        v10 = v48;
        identifiersCopy = v49;
      }

      while (v44);
    }

LABEL_43:
  }

  assetsCopy = v47;
LABEL_45:

  return v52;
}

void __106__PGCurationManager_filteredAssetsFromAssets_withContextualAssetLocalIdentifiers_approximateTimeDistance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  [v5 timeIntervalSinceDate:v6];
}

+ (id)_filteredAssetsWithFaceFilter:(unint64_t)filter forAssets:(id)assets
{
  assetsCopy = assets;
  v6 = assetsCopy;
  if (filter)
  {
    if ([assetsCopy count])
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2020000000;
      v12 = 0;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61__PGCurationManager__filteredAssetsWithFaceFilter_forAssets___block_invoke;
      v10[3] = &unk_278884260;
      v10[4] = v11;
      v10[5] = filter;
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v10];
      v8 = [v6 filteredArrayUsingPredicate:v7];

      _Block_object_dispose(v11, 8);
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = assetsCopy;
  }

  return v8;
}

uint64_t __61__PGCurationManager__filteredAssetsWithFaceFilter_forAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clsFaceInformationSummary];
  if (!v3)
  {
    v4 = *(*(a1 + 32) + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Face information expected but not prefetched.", v10, 2u);
        v4 = *(*(a1 + 32) + 8);
      }

      *(v4 + 24) = 1;
    }
  }

  v5 = [v3 numberOfFaces];
  v6 = v5 != 0;
  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v6 = v5 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (unint64_t)minimumNumberOfItemsForDuration:(unint64_t)duration withMaximumNumberOfItems:(unint64_t)items
{
  v4 = vcvtad_u64_f64(items * 0.3);
  itemsCopy = 4;
  if (items < 4)
  {
    itemsCopy = items;
  }

  if (v4 >= 4)
  {
    return v4;
  }

  else
  {
    return itemsCopy;
  }
}

+ (unint64_t)maximumNumberOfItemsForDuration:(unint64_t)duration withTotalNumberOfItems:(unint64_t)items spanningNumberOfDays:(double)days
{
  if (duration == 1)
  {
    itemsCopy5 = 9;
  }

  else if (duration == 2)
  {
LABEL_3:
    itemsCopy4 = items;
    v7 = 0.8;
LABEL_4:
    itemsCopy5 = pow(itemsCopy4, v7);
    v9 = itemsCopy5 >= 0x50;
    v10 = 80;
LABEL_5:
    if (v9)
    {
      itemsCopy5 = v10;
    }

    v11 = itemsCopy5 > 6;
    v12 = 6;
LABEL_9:
    if (!v11)
    {
      itemsCopy5 = v12;
    }
  }

  else if ((duration & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    itemsCopy5 = items;
    if (items >= 0x15)
    {
      itemsCopy5 = fmin((pow(items / 20.0, 0.148) + -1.0) * 135.135135 + 20.0, 80.0);
    }
  }

  else
  {
    itemsCopy5 = items;
    switch(duration)
    {
      case 3uLL:
      case 5uLL:
        itemsCopy5 = pow(items, 0.827129859);
        if (itemsCopy5 >= 0xC0)
        {
          itemsCopy5 = 192;
        }

        v11 = itemsCopy5 > 0xC;
        v12 = 12;
        goto LABEL_9;
      case 4uLL:
        goto LABEL_3;
      case 6uLL:
      case 0x10uLL:
        break;
      case 7uLL:
        v14 = items >= 0x50;
        itemsCopy5 = 80;
        goto LABEL_29;
      case 8uLL:
      case 0xFuLL:
        v14 = items >= 4;
        itemsCopy5 = 4;
        goto LABEL_29;
      case 9uLL:
      case 0xAuLL:
        v14 = items >= 0x100;
        itemsCopy5 = 256;
        goto LABEL_29;
      case 0xBuLL:
        itemsCopy4 = items;
        v7 = 0.915306674;
        goto LABEL_4;
      case 0xCuLL:
      case 0xDuLL:
        v14 = items >= 7;
        itemsCopy5 = 7;
LABEL_29:
        if (!v14)
        {
          itemsCopy5 = items;
        }

        break;
      case 0xEuLL:
        v15 = fmin(days, 15.0) * 60.0 / 15.0 + 20.0;
        v16 = log((v15 + -20.0) / 60.0 * -0.233333333 + 0.333333333);
        v17 = log(v15 / ((v15 + -20.0) / 60.0 * -0.233333333 + 0.333333333));
        itemsCopy5 = pow(items, v16 / v17 + 1.0);
        v10 = v15;
        v9 = itemsCopy5 >= v15;
        goto LABEL_5;
      default:
        v18 = +[PGLogging sharedLogging];
        loggingConnection = [v18 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported PGDuration", v20, 2u);
        }

        itemsCopy5 = 0;
        break;
    }
  }

  if (itemsCopy5 >= items)
  {
    return items;
  }

  else
  {
    return itemsCopy5;
  }
}

+ (id)assetsBeautifier
{
  beautifier = [MEMORY[0x277D27670] beautifier];
  [beautifier setEnableStatisticalSampling:1];
  [beautifier setEnableNetworkAccess:0];
  [beautifier setEnableIntermediateNaturalClustering:1];
  [beautifier setEnableFinalNaturalClustering:1];
  [beautifier setEnableFinalTimeClustering:1];
  [beautifier setUsesKMeans:1];

  return beautifier;
}

+ (id)summaryClusteringForDuration:(unint64_t)duration
{
  v4 = objc_opt_new();
  [v4 setOptimalDayDistributionThreshold:30.0];
  [v4 setTimeSpanDensityAverageNumberOfObjects:300];
  [v4 setEnableDensityClusteringLocationsDistance:1];
  [v4 setDensityClusteringLocationsDistanceUnit:2000];
  switch(duration)
  {
    case 1uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:7];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v15 = v4;
      v16 = 3;
      goto LABEL_15;
    case 2uLL:
    case 0x14uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:7];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v5 = v4;
      v6 = 3;
      goto LABEL_4;
    case 3uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:7];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:3];
      v25 = v4;
      v26 = 3;
      goto LABEL_29;
    case 4uLL:
    case 0xBuLL:
    case 0x15uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v5 = v4;
      v6 = 1;
LABEL_4:
      [v5 setConciseDensityClusteringMinimumNumberOfObjects:v6];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      v7 = v4;
      v8 = 7;
      goto LABEL_30;
    case 5uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v23 = v4;
      v24 = 1;
      goto LABEL_28;
    case 6uLL:
    case 0xAuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:1800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v9 = v4;
      goto LABEL_7;
    case 7uLL:
      v12 = 1800.0;
      goto LABEL_10;
    case 8uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v14 = 1800.0;
      v13 = v4;
      goto LABEL_12;
    case 9uLL:
    case 0x10uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v9 = v4;
LABEL_7:
      [v9 setConciseDensityClusteringMaximumDistance:1800.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:0];
      v10 = v4;
      v11 = 0;
      goto LABEL_17;
    case 0xCuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v18 = 1800.0;
      v17 = v4;
      goto LABEL_24;
    case 0xDuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:3600.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:900.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setAdaptiveElectionMaximumNumberOfItemsByCluster:1];
      goto LABEL_16;
    case 0xEuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:5];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v23 = v4;
      v24 = 3;
LABEL_28:
      [v23 setConciseDensityClusteringMinimumNumberOfObjects:v24];
      v25 = v4;
      v26 = 1;
LABEL_29:
      [v25 setAdaptiveElectionMinimumNumberOfItemsByCluster:v26];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      v7 = v4;
      v8 = 4;
LABEL_30:
      [v7 setAdaptiveElectionSmootherMinimumLimit:v8];
      v19 = v4;
      v20 = 20;
      goto LABEL_31;
    case 0xFuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      [v4 setAdaptiveElectionSmootherMinimumLimit:1];
      v19 = v4;
      v20 = 2;
      goto LABEL_31;
    case 0x16uLL:
      [v4 setEnableDensityClusteringLocationsDistance:0];
      v12 = 86400.0;
LABEL_10:
      [v4 setDiffuseDensityClusteringMaximumDistance:v12];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v13 = v4;
      v14 = v12;
LABEL_12:
      [v13 setConciseDensityClusteringMaximumDistance:v14];
      v15 = v4;
      v16 = 1;
LABEL_15:
      [v15 setConciseDensityClusteringMinimumNumberOfObjects:v16];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
LABEL_16:
      [v4 setEnableAdaptiveElectionSmoother:1];
      v10 = v4;
      v11 = 1;
LABEL_17:
      [v10 setEnableAdaptiveElectionSmootherAutomaticLimit:v11];
      [v4 setAdaptiveElectionSmootherMinimumLimit:1];
      v19 = v4;
      v20 = 1;
      goto LABEL_31;
    case 0x17uLL:
      [v4 setEnableDensityClusteringLocationsDistance:0];
      [v4 setDiffuseDensityClusteringMaximumDistance:86400.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v17 = v4;
      v18 = 86400.0;
LABEL_24:
      [v17 setConciseDensityClusteringMaximumDistance:v18];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      [v4 setAdaptiveElectionSmootherMinimumLimit:1];
      v19 = v4;
      v20 = 3;
LABEL_31:
      [v19 setAdaptiveElectionSmootherMaximumLimit:v20];
      break;
    default:
      v21 = +[PGLogging sharedLogging];
      loggingConnection = [v21 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Unsupported PGDuration", v28, 2u);
      }

      break;
  }

  return v4;
}

+ (BOOL)areAssetsInteresting:(id)interesting minimumNumberOfCuratedAssets:(unint64_t)assets duration:(unint64_t)duration
{
  v20 = *MEMORY[0x277D85DE8];
  interestingCopy = interesting;
  v9 = [interestingCopy count];
  assetsBeautifier = [self assetsBeautifier];
  v11 = [self maximumNumberOfItemsForDuration:duration withTotalNumberOfItems:v9];
  if (v11 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = [assetsBeautifier performWithItems:interestingCopy maximumNumberOfItemsToChoose:v12 progressBlock:0];

  if ([v13 count] >= assets && v12 * 0.3 <= objc_msgSend(v13, "count"))
  {
    v14 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v16 = 134218240;
      v17 = [v13 count];
      v18 = 2048;
      v19 = v12;
      _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: Not enough best assets from beautifier (%lu/%lu) for assets", &v16, 0x16u);
    }

    v14 = 0;
  }

  return v14;
}

+ (double)contentScoreForAssets:(id)assets
{
  v31 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = [assetsCopy count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = *MEMORY[0x277D3C760];
    v10 = *MEMORY[0x277D3C768];
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        [v15 clsContentScore];
        v17 = v16;
        if (v16 >= v9 && [v15 clsIsUtility])
        {
          v17 = v10;
        }

        v13 = v13 + v17;
        v18 = v11 + 1.0;
        if (v17 >= v10)
        {
          v18 = v11;
        }

        v19 = v12 + 1.0;
        if (v17 > v10)
        {
          v12 = v12 + 1.0;
        }

        else
        {
          v11 = v18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:{16, v18, v19}];
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v20 = v4;

  v21 = (v12 * v12 - v11 * v11) * 0.25 / (v20 * v20);
  v22 = log2(v4);
  v23 = pow(fabs(v21), 1.0 / v22);
  if (v21 < 0.0)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v23;
  }

  return (v13 / v20 + (v24 + 1.0) * 0.5) * 0.5;
}

+ (id)dedupedAssetsWithAssets:(id)assets
{
  assetsCopy = assets;
  assetsBeautifier = [objc_opt_class() assetsBeautifier];
  v5 = [assetsBeautifier deduplicateItems:assetsCopy debugInfo:0];

  return v5;
}

+ (id)representativeAssetsForAssets:(id)assets extendedCuratedAssets:(id)curatedAssets progressBlock:(id)block
{
  assetsCopy = assets;
  curatedAssetsCopy = curatedAssets;
  blockCopy = block;
  if ([curatedAssetsCopy count] > 0x200)
  {
    v11 = [self representativeAssetsForAssets:assetsCopy progressBlock:blockCopy];
  }

  else
  {
    v11 = curatedAssetsCopy;
  }

  v12 = v11;

  return v12;
}

+ (id)representativeAssetsForAssetCollection:(id)collection curationContext:(id)context progressBlock:(id)block
{
  v51 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  contextCopy = context;
  blockCopy = block;
  v11 = _Block_copy(blockCopy);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (!v11 || (v12 = CFAbsoluteTimeGetCurrent(), v12 - v39[3] < 0.01) || (v39[3] = v12, v37 = 0, (*(v11 + 2))(v11, &v37, 0.0), v13 = *(v43 + 24) | v37, *(v43 + 24) = v13, (v13 & 1) == 0))
  {
    photoLibrary = [collectionCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v17 = *MEMORY[0x277CD9B08];
    v46[0] = *MEMORY[0x277CD9AA8];
    v46[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
    [librarySpecificFetchOptions setFetchPropertySets:v18];

    v19 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:0];
    [v19 setPersonsPrefetchMode:0];
    v20 = [MEMORY[0x277D27710] feederForAssetCollection:collectionCopy options:librarySpecificFetchOptions feederPrefetchOptions:v19 curationContext:contextCopy];
    if ([v20 numberOfItems])
    {
      if (!v11 || (v21 = CFAbsoluteTimeGetCurrent(), v21 - v39[3] < 0.01) || (v39[3] = v21, v37 = 0, (*(v11 + 2))(v11, &v37, 0.5), v22 = *(v43 + 24) | v37, *(v43 + 24) = v22, (v22 & 1) == 0))
      {
        allItems = [v20 allItems];
        if ([allItems count] > 0x200)
        {
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __90__PGCurationManager_representativeAssetsForAssetCollection_curationContext_progressBlock___block_invoke;
          v32[3] = &unk_27888A188;
          v27 = v11;
          v33 = v27;
          v34 = &v38;
          v35 = &v42;
          v36 = 0x3F847AE147AE147BLL;
          v28 = [self representativeAssetsForAssets:allItems progressBlock:v32];
          if (v11 && (Current = CFAbsoluteTimeGetCurrent(), Current - v39[3] >= 0.01) && (v39[3] = Current, v37 = 0, (*(v27 + 2))(v27, &v37, 1.0), v30 = *(v43 + 24) | v37, *(v43 + 24) = v30, (v30 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v48 = 409;
              v49 = 2080;
              v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v14 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v14 = v28;
          }
        }

        else
        {
          v14 = allItems;
        }

        goto LABEL_31;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_21:
        v14 = MEMORY[0x277CBEBF8];
LABEL_31:

        goto LABEL_32;
      }

      *buf = 67109378;
      v48 = 398;
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      v23 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v25 = CFAbsoluteTimeGetCurrent();
      if (v25 - v39[3] < 0.01)
      {
        goto LABEL_21;
      }

      v39[3] = v25;
      v37 = 0;
      (*(v11 + 2))(v11, &v37, 1.0);
      v26 = *(v43 + 24) | v37;
      *(v43 + 24) = v26;
      if ((v26 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *buf = 67109378;
      v48 = 394;
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      v23 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v48 = 384;
    v49 = 2080;
    v50 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_32:
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v14;
}

void __90__PGCurationManager_representativeAssetsForAssetCollection_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

+ (id)representativeAssetsForAssets:(id)assets progressBlock:(id)block
{
  v69 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  blockCopy = block;
  v7 = _Block_copy(blockCopy);
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v39 = blockCopy;
  if (v7 && (v8 = CFAbsoluteTimeGetCurrent(), v8 - v56[3] >= 0.01) && (v56[3] = v8, v54 = 0, (*(v7 + 2))(v7, &v54, 0.0), v9 = *(v60 + 24) | v54, *(v60 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v66 = 337;
      v67 = 2080;
      v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v11 = [self summaryClusteringForDuration:6];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __65__PGCurationManager_representativeAssetsForAssets_progressBlock___block_invoke;
    v49[3] = &unk_27888A188;
    v12 = v7;
    v50 = v12;
    v51 = &v55;
    v52 = &v59;
    v53 = 0x3F847AE147AE147BLL;
    v37 = v11;
    v13 = [v11 densityClustersWithItems:assetsCopy progressBlock:v49];
    v14 = v13;
    if (*(v60 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v66 = 346;
        v67 = 2080;
        v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if ([v13 count] < 0x101)
      {
        v17 = v14;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x277D3AD70]);
        [v15 setNumberOfClusters:256];
        v36 = v15;
        v16 = [v15 performWithDataset:v14 progressBlock:0];
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v45 objects:v64 count:16];
        if (v19)
        {
          v20 = *v46;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v46 != v20)
              {
                objc_enumerationMutation(v18);
              }

              objects = [*(*(&v45 + 1) + 8 * i) objects];
              firstObject = [objects firstObject];
              [v17 addObject:firstObject];
            }

            v19 = [v18 countByEnumeratingWithState:&v45 objects:v64 count:16];
          }

          while (v19);
        }
      }

      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = v17;
      v25 = [v14 countByEnumeratingWithState:&v41 objects:v63 count:16];
      if (v25)
      {
        v26 = *v42;
        while (2)
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v42 != v26)
            {
              objc_enumerationMutation(v14);
            }

            v28 = *(*(&v41 + 1) + 8 * j);
            if (v7)
            {
              Current = CFAbsoluteTimeGetCurrent();
              if (Current - v56[3] >= 0.01)
              {
                v56[3] = Current;
                v54 = 0;
                (*(v12 + 2))(v12, &v54, 0.8);
                v30 = *(v60 + 24) | v54;
                *(v60 + 24) = v30;
                if (v30)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v66 = 364;
                    v67 = 2080;
                    v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_41;
                }
              }
            }

            v31 = [v28 count];
            if (v31)
            {
              v32 = [v28 objectAtIndexedSubscript:v31 >> 1];
              [v24 addObject:v32];
            }
          }

          v25 = [v14 countByEnumeratingWithState:&v41 objects:v63 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      if (v7 && (v33 = CFAbsoluteTimeGetCurrent(), v33 - v56[3] >= 0.01) && (v56[3] = v33, v54 = 0, (*(v12 + 2))(v12, &v54, 1.0), v34 = *(v60 + 24) | v54, *(v60 + 24) = v34, (v34 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v66 = 374;
          v67 = 2080;
          v68 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_41:
        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = v24;
      }
    }

    objc_autoreleasePoolPop(context);
  }

  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);

  return v10;
}

void __65__PGCurationManager_representativeAssetsForAssets_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

+ (id)sceneInfoWithAsset:(id)asset curationSession:(id)session
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = asset;
  v5 = MEMORY[0x277CBEA60];
  sessionCopy = session;
  assetCopy = asset;
  v8 = [v5 arrayWithObjects:v16 count:1];
  [sessionCopy prepareAssets:v8];

  clsSceneClassifications = [assetCopy clsSceneClassifications];
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(clsSceneClassifications, "count")}];
  v11 = MEMORY[0x277D3C7A0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__PGCurationManager_sceneInfoWithAsset_curationSession___block_invoke;
  v14[3] = &unk_278884F80;
  v12 = v10;
  v15 = v12;
  [v11 enumerateSignalsFromAsset:assetCopy fullHierarchyName:0 usingBlock:v14];

  return v12;
}

void __56__PGCurationManager_sceneInfoWithAsset_curationSession___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%llu)", a3, a2];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

+ (id)dejunkAndDedupeItems:(id)items options:(id)options debugInfo:(id)info progressBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  optionsCopy = options;
  infoCopy = info;
  v13 = _Block_copy(block);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    if (infoCopy)
    {
      [infoCopy setAgent:@"Dejunk and Dedupe"];
      [infoCopy setStage:@"Initial"];
      v17 = [MEMORY[0x277D3AC38] clusterWithObjects:itemsCopy];
      v32 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      [infoCopy setClusters:v18 withReason:@"DejunkAndDeduper"];
    }

    assetsBeautifier = [self assetsBeautifier];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v31 = 0;
        v13[2](v13, &v31, 0.5);
        if (v31)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v34 = 293;
            v35 = 2080;
            v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = 0;
          goto LABEL_34;
        }

        v14 = Current;
      }
    }

    v21 = [optionsCopy objectForKeyedSubscript:@"dedupingDuration"];

    if (v21)
    {
      v22 = [optionsCopy objectForKeyedSubscript:@"dedupingDuration"];
      [v22 doubleValue];
      v24 = v23;
    }

    else
    {
      v24 = 60.0;
    }

    v25 = [optionsCopy objectForKeyedSubscript:@"dedupingSimilarity"];

    if (v25)
    {
      v26 = [optionsCopy objectForKeyedSubscript:@"dedupingSimilarity"];
      integerValue = [v26 integerValue];
    }

    else
    {
      integerValue = 2;
    }

    v28 = [assetsBeautifier deduplicateItems:itemsCopy withDuration:integerValue andSimilarity:infoCopy debugInfo:v24];
    if ([v28 count])
    {
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v29 = itemsCopy;

      v28 = v29;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    if (CFAbsoluteTimeGetCurrent() - v14 >= 0.01)
    {
      v31 = 0;
      v13[2](v13, &v31, 1.0);
      if (v31 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v34 = 316;
          v35 = 2080;
          v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = 0;
        goto LABEL_33;
      }
    }

LABEL_32:
    v16 = v28;
LABEL_33:

LABEL_34:
    goto LABEL_35;
  }

  v31 = 0;
  v13[2](v13, &v31, 0.0);
  if (v31 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v34 = 281;
    v35 = 2080;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = 0;
LABEL_35:

  return v16;
}

+ (id)defaultAssetSortDescriptors
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)assetPropertySetsForCuration
{
  v12[16] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD9B28];
  v12[0] = *MEMORY[0x277CD9A78];
  v12[1] = v2;
  v3 = *MEMORY[0x277CD9B18];
  v12[2] = *MEMORY[0x277CD9B10];
  v12[3] = v3;
  v4 = *MEMORY[0x277CD9B08];
  v12[4] = *MEMORY[0x277CD9AD0];
  v12[5] = v4;
  v5 = *MEMORY[0x277CD9A60];
  v12[6] = *MEMORY[0x277CD9A80];
  v12[7] = v5;
  v6 = *MEMORY[0x277CD9AC0];
  v12[8] = *MEMORY[0x277CD9A98];
  v12[9] = v6;
  v7 = *MEMORY[0x277CD9AB0];
  v12[10] = *MEMORY[0x277CD9AE8];
  v12[11] = v7;
  v8 = *MEMORY[0x277CD9B20];
  v12[12] = *MEMORY[0x277CD9AB8];
  v12[13] = v8;
  v9 = *MEMORY[0x277CD9AA0];
  v12[14] = *MEMORY[0x277CD9A90];
  v12[15] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:16];

  return v10;
}

- (id)_filteredAssetsForAssets:(id)assets inMoments:(id)moments keepFavorites:(BOOL)favorites
{
  favoritesCopy = favorites;
  v40 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  momentsCopy = moments;
  array = [MEMORY[0x277CBEB18] array];
  v9 = [momentsCopy count];
  firstObject = [momentsCopy firstObject];
  startDate = [firstObject startDate];
  [startDate timeIntervalSinceReferenceDate];
  v13 = v12;

  endDate = [firstObject endDate];
  [endDate timeIntervalSinceReferenceDate];
  v16 = v15;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = assetsCopy;
  v17 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v36;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        if (favoritesCopy)
        {
          if ([*(*(&v35 + 1) + 8 * i) isFavorite])
          {
            goto LABEL_21;
          }

          if (v19 >= v9)
          {
            continue;
          }
        }

        creationDate = [v22 creationDate];
        [creationDate timeIntervalSinceReferenceDate];
        v25 = v24;

        if (v25 < v13)
        {
          continue;
        }

        if (v25 > v16)
        {
          if (++v19 >= v9)
          {
LABEL_15:
            if (!favoritesCopy)
            {
              goto LABEL_24;
            }

            continue;
          }

          while (1)
          {
            v26 = firstObject;
            firstObject = [momentsCopy objectAtIndexedSubscript:v19];

            startDate2 = [firstObject startDate];
            [startDate2 timeIntervalSinceReferenceDate];
            v13 = v28;

            endDate2 = [firstObject endDate];
            [endDate2 timeIntervalSinceReferenceDate];
            v16 = v30;

            if (v16 >= v25)
            {
              break;
            }

            if (v9 == ++v19)
            {
              v19 = v9;
              goto LABEL_15;
            }
          }
        }

        if (v25 >= v13 && v25 <= v16)
        {
LABEL_21:
          [array addObject:v22];
          continue;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

LABEL_24:

  return array;
}

- (id)_libraryDateInterval
{
  v21[2] = *MEMORY[0x277D85DE8];
  photoLibrary = [(PGCurationManager *)self photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v4 = *MEMORY[0x277CD9B08];
  v21[0] = *MEMORY[0x277CD9AA8];
  v21[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [librarySpecificFetchOptions setFetchPropertySets:v5];

  [librarySpecificFetchOptions setFetchLimit:1];
  [librarySpecificFetchOptions setIncludeAssetSourceTypes:5];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v20 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v7];

  v8 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  firstObject = [v8 firstObject];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v19 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v11];

  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  firstObject2 = [v12 firstObject];

  creationDate = [firstObject creationDate];
  creationDate2 = [firstObject2 creationDate];
  v16 = creationDate2;
  v17 = 0;
  if (creationDate && creationDate2)
  {
    v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:creationDate endDate:creationDate2];
  }

  return v17;
}

- (id)_firstBestFacedAssetInAssetCluster:(id)cluster facesByAssetIdentifiers:(id)identifiers
{
  v34 = *MEMORY[0x277D85DE8];
  clusterCopy = cluster;
  identifiersCopy = identifiers;
  if ([clusterCopy count] == 1)
  {
    firstObject = [clusterCopy firstObject];
    [firstObject curationScore];
    if (v8 == *MEMORY[0x277D3C778])
    {
      v9 = 0;
    }

    else
    {
      v9 = firstObject;
    }

    v10 = v9;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    firstObject = clusterCopy;
    v11 = [firstObject countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v10 = 0;
      v13 = *v29;
      v14 = *MEMORY[0x277D3C778];
      v15 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(firstObject);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          [v17 curationScore];
          if (v18 != v14)
          {
            localIdentifier = [v17 localIdentifier];
            v20 = [identifiersCopy objectForKeyedSubscript:localIdentifier];
            memset(v27, 0, sizeof(v27));
            if ([v20 countByEnumeratingWithState:v27 objects:v32 count:16])
            {
              [**(&v27[0] + 1) size];
              if (v21 >= 0.1 && v21 <= 0.7)
              {
                v25 = v17;

                v10 = v25;
                goto LABEL_26;
              }
            }

            else
            {
              v21 = 0.0;
            }

            v22 = 0.4 - v21;
            if (v22 < 0.0)
            {
              v22 = -v22;
            }

            v23 = 1.0 - v22;
            if (1.0 - v22 > v15)
            {
              v24 = v17;

              v10 = v24;
              v15 = v23;
            }
          }
        }

        v12 = [firstObject countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v12);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_26:

  return v10;
}

- (id)_timeBasedAssetClustersForAssets:(id)assets maximumClusterCount:(unint64_t)count
{
  v73 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:count];
  _libraryDateInterval = [(PGCurationManager *)self _libraryDateInterval];
  if (!_libraryDateInterval)
  {
    v42 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  [v7 addObject:_libraryDateInterval];
  v50 = _libraryDateInterval;
  v51 = assetsCopy;
  [v8 setObject:assetsCopy forKeyedSubscript:_libraryDateInterval];
  if ([v7 count] >= count)
  {
    goto LABEL_40;
  }

  v10 = 0;
  v53 = v7;
  countCopy = count;
  do
  {
    if (v10 == [v7 count])
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v11 = [v7 count];
    if (v11 < 1)
    {
      v10 = 0;
      goto LABEL_39;
    }

    v12 = v11;
    v10 = 0;
    while (1)
    {
      v13 = v12 - 1;
      v14 = [v7 objectAtIndexedSubscript:v12 - 1];
      startDate = [v14 startDate];
      endDate = [v14 endDate];
      [v14 duration];
      v18 = v17;
      v62 = [v8 objectForKeyedSubscript:v14];
      if ([v62 count] >= 2 && v18 >= 21600.0)
      {
        break;
      }

      ++v10;
LABEL_34:

      v41 = v12 <= 1;
      v12 = v13;
      if (v41)
      {
        goto LABEL_39;
      }
    }

    v61 = v12;
    v59 = v12 - 1;
    v19 = v18 * 0.5;
    v56 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate duration:v19];
    v55 = [startDate dateByAddingTimeInterval:v19 + 2.22044605e-16];
    v57 = endDate;
    v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v55 endDate:endDate];
    v58 = startDate;
    [startDate timeIntervalSinceReferenceDate];
    v22 = v21;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v23 = v62;
    v24 = [v23 countByEnumeratingWithState:&v67 objects:v72 count:16];
    v25 = v20;
    v60 = v10;
    if (!v24)
    {

      v13 = v59;
      if (v19 >= 1.0)
      {
        goto LABEL_30;
      }

LABEL_26:
      v27 = 1;
      goto LABEL_28;
    }

    v26 = v24;
    v27 = 0;
    v28 = v19 + v22;
    v29 = *v68;
    while (2)
    {
      v30 = 0;
      v31 = v27;
      v27 += v26;
      do
      {
        if (*v68 != v29)
        {
          objc_enumerationMutation(v23);
        }

        creationDate = [*(*(&v67 + 1) + 8 * v30) creationDate];
        [creationDate timeIntervalSinceReferenceDate];
        v34 = v33;

        if (v34 > v28)
        {
          v27 = v31;
          v20 = v25;
          goto LABEL_20;
        }

        ++v31;
        ++v30;
      }

      while (v26 != v30);
      v20 = v25;
      v26 = [v23 countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_20:

    if (v19 >= 1.0)
    {
      v7 = v53;
      v13 = v59;
      if (!v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v7 = v53;
      v13 = v59;
      if (!v27)
      {
        goto LABEL_26;
      }

      if (v27 == [v23 count] && !--v27)
      {
LABEL_30:
        [v7 setObject:v20 atIndexedSubscript:v13];
        [v8 setObject:v23 forKeyedSubscript:v20];
        startDate = v58;
        v36 = v56;
        v37 = v7;
        v25 = v20;
        goto LABEL_32;
      }
    }

LABEL_28:
    v35 = [v23 count];
    v36 = v56;
    [v7 setObject:v56 atIndexedSubscript:v13];
    if (v27 == v35)
    {
      [v8 setObject:v23 forKeyedSubscript:v56];
      startDate = v58;
      v37 = v7;
    }

    else
    {
      v37 = v7;
      [v7 insertObject:v25 atIndex:v61];
      v38 = [v23 subarrayWithRange:{0, v27}];
      [v8 setObject:v38 forKeyedSubscript:v56];

      v39 = [v23 subarrayWithRange:{v27, objc_msgSend(v23, "count") - v27}];
      [v8 setObject:v39 forKeyedSubscript:v25];

      startDate = v58;
    }

LABEL_32:
    [v8 setObject:0 forKeyedSubscript:v14];
    v7 = v37;
    v40 = [v37 count];

    count = countCopy;
    if (v40 < countCopy)
    {
      endDate = v57;
      v10 = v60;
      v12 = v61;
      goto LABEL_34;
    }

    v10 = v60;
LABEL_39:
    objc_autoreleasePoolPop(context);
  }

  while ([v7 count] < count);
LABEL_40:
  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v43 = v7;
  v44 = [v43 countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v64;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v64 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [v8 objectForKeyedSubscript:*(*(&v63 + 1) + 8 * i)];
        [v42 addObject:v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v45);
  }

  _libraryDateInterval = v50;
  assetsCopy = v51;
LABEL_49:

  return v42;
}

- (id)curatedAssetsForPersonLocalIdentifier:(id)identifier progressBlock:(id)block
{
  v342 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v317 = 0;
  v318 = &v317;
  v319 = 0x2020000000;
  v320 = 0;
  v313 = 0;
  v314 = &v313;
  v315 = 0x2020000000;
  v316 = 0;
  v261 = _Block_copy(blockCopy);
  v245 = blockCopy;
  if (!v261 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v314[3] < 0.01) || (v314[3] = v6, LOBYTE(state.opaque[0]) = 0, (v261)[2](v261, &state, 0.0), v7 = *(v318 + 24) | LOBYTE(state.opaque[0]), *(v318 + 24) = v7, (v7 & 1) == 0))
  {
    v9 = _os_activity_create(&dword_22F0FC000, "Curated Assets for people", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0;
    state.opaque[0] = 0;
    os_activity_scope_enter(v9, &state);
    [(PGCurationManager *)self photoLibrary];
    v253 = v243 = v9;
    librarySpecificFetchOptions = [v253 librarySpecificFetchOptions];
    [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_284486030];
    v252 = librarySpecificFetchOptions;
    v11 = MEMORY[0x277CD9938];
    v339 = identifierCopy;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v339 count:1];
    v13 = [v11 fetchPersonsWithLocalIdentifiers:v12 options:v252];
    firstObject = [v13 firstObject];

    if (!firstObject)
    {
      v8 = MEMORY[0x277CBEBF8];
LABEL_267:

      os_activity_scope_leave(&state);
      goto LABEL_268;
    }

    librarySpecificFetchOptions2 = [v253 librarySpecificFetchOptions];
    v338 = *MEMORY[0x277CD9A78];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v338 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v14];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlightBeingExtendedAssets != nil"];
    [librarySpecificFetchOptions2 setInternalPredicate:v15];

    v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v337[0] = v16;
    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"addedDate" ascending:1];
    v337[1] = v17;
    v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"filename" ascending:1];
    v337[2] = v18;
    v242 = [MEMORY[0x277CBEA60] arrayWithObjects:v337 count:3];

    [librarySpecificFetchOptions2 setInternalSortDescriptors:v242];
    v19 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:firstObject options:librarySpecificFetchOptions2];
    fetchedObjects = [v19 fetchedObjects];
    v237 = v19;
    if (v261)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v314[3] >= 0.01)
      {
        v314[3] = Current;
        v311 = 0;
        v261[2](v261, &v311, 0.5);
        v21 = *(v318 + 24) | v311;
        *(v318 + 24) = v21;
        if (v21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v341 = 67;
            *&v341[4] = 2080;
            *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            v22 = MEMORY[0x277D86220];
LABEL_19:
            _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }
    }

    v23 = [fetchedObjects count];
    if (!v23)
    {
      v8 = MEMORY[0x277CBEBF8];
      goto LABEL_266;
    }

    if (v261)
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v314[3] >= 0.01)
      {
        v314[3] = v24;
        v311 = 0;
        v261[2](v261, &v311, 0.5);
        v25 = *(v318 + 24) | v311;
        *(v318 + 24) = v25;
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v341 = 75;
            *&v341[4] = 2080;
            *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            v22 = MEMORY[0x277D86220];
            goto LABEL_19;
          }

LABEL_20:
          v8 = 0;
LABEL_266:

          goto LABEL_267;
        }
      }
    }

    v233 = [objc_opt_class() maximumNumberOfItemsForDuration:4 withTotalNumberOfItems:v23];
    v221 = [objc_opt_class() minimumNumberOfItemsForDuration:4 withMaximumNumberOfItems:v233];
    array = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != v23; ++i)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [fetchedObjects objectAtIndexedSubscript:i];
      if ([v28 isFavorite])
      {
        [array addObject:v28];
      }

      objc_autoreleasePoolPop(v27);
    }

    if (v261)
    {
      v29 = CFAbsoluteTimeGetCurrent();
      if (v29 - v314[3] >= 0.01)
      {
        v314[3] = v29;
        v311 = 0;
        v261[2](v261, &v311, 0.5);
        v30 = *(v318 + 24) | v311;
        *(v318 + 24) = v30;
        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v341 = 92;
            *&v341[4] = 2080;
            *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = 0;
          goto LABEL_265;
        }
      }
    }

    v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v336[0] = v31;
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
    v336[1] = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"estimatedAssetCount" ascending:0];
    v336[2] = v33;
    v236 = [MEMORY[0x277CBEA60] arrayWithObjects:v336 count:3];

    v34 = [MEMORY[0x277CD9880] fetchOptionsWithPhotoLibrary:v253 orObject:0];
    [v34 setSortDescriptors:v236];
    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"estimatedAssetCount >= 10"];
    [v34 setPredicate:v35];
    v235 = v34;

    v36 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:fetchedObjects withType:3 options:v34];
    fetchedObjects2 = [v36 fetchedObjects];

    if (v261)
    {
      v38 = CFAbsoluteTimeGetCurrent();
      if (v38 - v314[3] >= 0.01)
      {
        v314[3] = v38;
        v311 = 0;
        v261[2](v261, &v311, 0.5);
        v39 = *(v318 + 24) | v311;
        *(v318 + 24) = v39;
        if (v39)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v341 = 105;
            *&v341[4] = 2080;
            *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = 0;
          goto LABEL_264;
        }
      }
    }

    v40 = [MEMORY[0x277CD9880] fetchOptionsWithPhotoLibrary:v253 orObject:0];
    [v40 setSortDescriptors:v236];
    v228 = v40;
    v41 = MEMORY[0x277CD97B8];
    firstObject2 = [fetchedObjects firstObject];
    v335[0] = firstObject2;
    lastObject = [fetchedObjects lastObject];
    v335[1] = lastObject;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v335 count:2];
    v227 = [v41 fetchAssetCollectionsContainingAssets:v44 withType:3 options:v228];

    firstObject3 = [v227 firstObject];
    lastObject2 = [v227 lastObject];
    v45 = [fetchedObjects2 count];
    if (!v45)
    {
      goto LABEL_45;
    }

    firstObject4 = [fetchedObjects2 firstObject];
    localIdentifier = [firstObject4 localIdentifier];
    localIdentifier2 = [firstObject3 localIdentifier];
    v49 = [localIdentifier isEqualToString:localIdentifier2];

    if (v49)
    {
      v50 = v45 - 1;
      if (v45 == 1)
      {
        v230 = MEMORY[0x277CBEBF8];
        goto LABEL_50;
      }

      v51 = 1;
    }

    else
    {
      v51 = 0;
      v50 = v45;
    }

    lastObject3 = [fetchedObjects2 lastObject];
    localIdentifier3 = [lastObject3 localIdentifier];
    localIdentifier4 = [lastObject2 localIdentifier];
    v55 = [localIdentifier3 isEqualToString:localIdentifier4];

    v56 = v50 - (v55 & 1);
    if (v45 == v56)
    {
LABEL_45:
      v230 = fetchedObjects2;
LABEL_51:
      if (v261)
      {
        v57 = CFAbsoluteTimeGetCurrent();
        if (v57 - v314[3] >= 0.01)
        {
          v314[3] = v57;
          v311 = 0;
          v261[2](v261, &v311, 0.5);
          v58 = *(v318 + 24) | v311;
          *(v318 + 24) = v58;
          if (v58)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 131;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_263;
          }
        }
      }

      v59 = [(PGCurationManager *)self _filteredAssetsForAssets:fetchedObjects inMoments:v230 keepFavorites:1];
      v225 = [v59 mutableCopy];

      cls_universalEndDate = [firstObject3 cls_universalEndDate];
      [cls_universalEndDate timeIntervalSinceReferenceDate];
      v62 = v61;

      cls_universalStartDate = [lastObject2 cls_universalStartDate];
      [cls_universalStartDate timeIntervalSinceReferenceDate];
      v65 = v64;

      array2 = [MEMORY[0x277CBEB18] array];
      v262 = [array count];
      array3 = [MEMORY[0x277CBEB18] array];
      firstObject5 = [array firstObject];
      if (firstObject5 && ([firstObject5 creationDate], v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "timeIntervalSinceReferenceDate"), v68 = v67 > v62, v66, !v68))
      {
        [array3 addObject:firstObject5];
        v310 = 0u;
        v309 = 0u;
        v308 = 0u;
        v307 = 0u;
        v69 = array;
        v77 = [v69 countByEnumeratingWithState:&v307 objects:v334 count:16];
        if (v77)
        {
          v78 = *v308;
LABEL_70:
          v79 = 0;
          while (1)
          {
            if (*v308 != v78)
            {
              objc_enumerationMutation(v69);
            }

            v80 = *(*(&v307 + 1) + 8 * v79);
            creationDate = [v80 creationDate];
            [creationDate timeIntervalSinceReferenceDate];
            v83 = v82 > v62;

            if (v83)
            {
              break;
            }

            [array2 addObject:v80];
            if (v77 == ++v79)
            {
              v77 = [v69 countByEnumeratingWithState:&v307 objects:v334 count:16];
              if (v77)
              {
                goto LABEL_70;
              }

              break;
            }
          }
        }
      }

      else
      {
        v305 = 0u;
        v306 = 0u;
        v303 = 0u;
        v304 = 0u;
        v69 = fetchedObjects;
        v70 = [v69 countByEnumeratingWithState:&v303 objects:v333 count:16];
        if (v70)
        {
          v71 = *v304;
LABEL_61:
          v72 = 0;
          while (1)
          {
            if (*v304 != v71)
            {
              objc_enumerationMutation(v69);
            }

            v73 = *(*(&v303 + 1) + 8 * v72);
            creationDate2 = [v73 creationDate];
            [creationDate2 timeIntervalSinceReferenceDate];
            v76 = v75 > v62;

            if (v76)
            {
              break;
            }

            [array3 addObject:v73];
            if (v70 == ++v72)
            {
              v70 = [v69 countByEnumeratingWithState:&v303 objects:v333 count:16];
              if (v70)
              {
                goto LABEL_61;
              }

              break;
            }
          }
        }
      }

      if (v261)
      {
        v84 = CFAbsoluteTimeGetCurrent();
        if (v84 - v314[3] >= 0.01)
        {
          v314[3] = v84;
          v311 = 0;
          v261[2](v261, &v311, 0.5);
          v85 = *(v318 + 24) | v311;
          *(v318 + 24) = v85;
          if (v85)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 170;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_262;
          }
        }
      }

      array4 = [MEMORY[0x277CBEB18] array];
      lastObject4 = [array lastObject];
      if (lastObject4 && ([lastObject4 creationDate], v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "timeIntervalSinceReferenceDate"), v88 = v87 < v65, v86, !v88))
      {
        [array4 addObject:lastObject4];
        v301 = 0u;
        v302 = 0u;
        v299 = 0u;
        v300 = 0u;
        reverseObjectEnumerator = [array reverseObjectEnumerator];
        v97 = [reverseObjectEnumerator countByEnumeratingWithState:&v299 objects:v332 count:16];
        if (v97)
        {
          v98 = *v300;
LABEL_95:
          v99 = 0;
          while (1)
          {
            if (*v300 != v98)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v100 = *(*(&v299 + 1) + 8 * v99);
            creationDate3 = [v100 creationDate];
            [creationDate3 timeIntervalSinceReferenceDate];
            v103 = v102 < v62;

            if (v103)
            {
              break;
            }

            [array2 addObject:v100];
            if (v97 == ++v99)
            {
              v97 = [reverseObjectEnumerator countByEnumeratingWithState:&v299 objects:v332 count:16];
              if (v97)
              {
                goto LABEL_95;
              }

              break;
            }
          }
        }
      }

      else
      {
        v297 = 0u;
        v298 = 0u;
        v295 = 0u;
        v296 = 0u;
        reverseObjectEnumerator = [fetchedObjects reverseObjectEnumerator];
        v90 = [reverseObjectEnumerator countByEnumeratingWithState:&v295 objects:v331 count:16];
        if (v90)
        {
          v91 = *v296;
LABEL_86:
          v92 = 0;
          while (1)
          {
            if (*v296 != v91)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v93 = *(*(&v295 + 1) + 8 * v92);
            creationDate4 = [v93 creationDate];
            [creationDate4 timeIntervalSinceReferenceDate];
            v96 = v95 < v65;

            if (v96)
            {
              break;
            }

            [array4 addObject:v93];
            if (v90 == ++v92)
            {
              v90 = [reverseObjectEnumerator countByEnumeratingWithState:&v295 objects:v331 count:16];
              if (v90)
              {
                goto LABEL_86;
              }

              break;
            }
          }
        }
      }

      if ([array2 count])
      {
        [v225 removeObjectsInArray:array2];
      }

      if (v261)
      {
        v104 = CFAbsoluteTimeGetCurrent();
        if (v104 - v314[3] >= 0.01)
        {
          v314[3] = v104;
          v311 = 0;
          v261[2](v261, &v311, 0.5);
          v105 = *(v318 + 24) | v311;
          *(v318 + 24) = v105;
          if (v105)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 203;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_261;
          }
        }
      }

      if (v233 <= 1)
      {
        v106 = 0;
      }

      else
      {
        v106 = v233 - 2;
      }

      v223 = [(PGCurationManager *)self _timeBasedAssetClustersForAssets:v225 maximumClusterCount:v106];
      if (v261)
      {
        v107 = CFAbsoluteTimeGetCurrent();
        if (v107 - v314[3] >= 0.01)
        {
          v314[3] = v107;
          v311 = 0;
          v261[2](v261, &v311, 0.5);
          v108 = *(v318 + 24) | v311;
          *(v318 + 24) = v108;
          if (v108)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 207;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_260;
          }
        }
      }

      array5 = [MEMORY[0x277CBEB18] array];
      v229 = [MEMORY[0x277CD9880] fetchOptionsWithPhotoLibrary:v253 orObject:0];
      v330 = *MEMORY[0x277CD9BC8];
      v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v330 count:1];
      [v229 setFetchPropertySets:v109];

      [v229 setIncludedDetectionTypes:&unk_284486048];
      v110 = MEMORY[0x277CCAC30];
      objectID = [firstObject objectID];
      v111 = [v110 predicateWithFormat:@"%K = %@", @"personForFace", objectID];
      [v229 setInternalPredicate:v111];

      v113 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:fetchedObjects options:v229];
      v220 = [(PGCurationManager *)self _firstBestFacedAssetInAssetCluster:array3 facesByAssetIdentifiers:v113];
      if (v220)
      {
        [array5 addObject:?];
      }

      else
      {
        curationLoggingConnection = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(curationLoggingConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v341 = array3;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection, OS_LOG_TYPE_INFO, "nil asset from first asset cluster: %@", buf, 0xCu);
        }
      }

      if (v261)
      {
        v115 = CFAbsoluteTimeGetCurrent();
        if (v115 - v314[3] >= 0.01)
        {
          v314[3] = v115;
          v311 = 0;
          v261[2](v261, &v311, 0.5);
          v116 = *(v318 + 24) | v311;
          *(v318 + 24) = v116;
          if (v116)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 230;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_179:
            v8 = 0;
LABEL_259:

LABEL_260:
LABEL_261:

LABEL_262:
LABEL_263:

            fetchedObjects2 = v230;
LABEL_264:

LABEL_265:
            goto LABEL_266;
          }
        }
      }

      v293 = 0u;
      v294 = 0u;
      v291 = 0u;
      v292 = 0u;
      obj = v223;
      v117 = [obj countByEnumeratingWithState:&v291 objects:v329 count:16];
      if (v117)
      {
        v118 = 0;
        v248 = *v292;
        v119 = *MEMORY[0x277D3C778];
        do
        {
          v250 = v117;
          for (j = 0; j != v250; ++j)
          {
            if (*v292 != v248)
            {
              objc_enumerationMutation(obj);
            }

            v121 = *(*(&v291 + 1) + 8 * j);
            if (v261)
            {
              v122 = CFAbsoluteTimeGetCurrent();
              if (v122 - v314[3] >= 0.01)
              {
                v314[3] = v122;
                v311 = 0;
                v261[2](v261, &v311, 0.5);
                v123 = *(v318 + 24) | v311;
                *(v318 + 24) = v123;
                if (v123)
                {
                  v153 = MEMORY[0x277D86220];
                  v154 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v341 = 237;
                    *&v341[4] = 2080;
                    *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_178;
                }
              }
            }

            if (v118 >= v262)
            {
LABEL_144:
              if (v261)
              {
                v137 = CFAbsoluteTimeGetCurrent();
                if (v137 - v314[3] >= 0.01)
                {
                  v314[3] = v137;
                  v311 = 0;
                  v261[2](v261, &v311, 0.5);
                  v138 = *(v318 + 24) | v311;
                  *(v318 + 24) = v138;
                  if (v138)
                  {
                    v155 = MEMORY[0x277D86220];
                    v156 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v341 = 264;
                      *&v341[4] = 2080;
                      *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

LABEL_178:

                    goto LABEL_179;
                  }
                }
              }

              v289 = 0u;
              v290 = 0u;
              v287 = 0u;
              v288 = 0u;
              v129 = v121;
              v139 = [v129 countByEnumeratingWithState:&v287 objects:v328 count:16];
              if (v139)
              {
                v140 = *v288;
                while (2)
                {
                  for (k = 0; k != v139; ++k)
                  {
                    if (*v288 != v140)
                    {
                      objc_enumerationMutation(v129);
                    }

                    v142 = *(*(&v287 + 1) + 8 * k);
                    [v142 curationScore];
                    if (v143 != v119)
                    {
                      localIdentifier5 = [v142 localIdentifier];
                      v145 = [v113 objectForKeyedSubscript:localIdentifier5];
                      memset(v286, 0, sizeof(v286));
                      v146 = v145;
                      if ([v146 countByEnumeratingWithState:v286 objects:v327 count:16])
                      {
                        [**(&v286[0] + 1) size];
                        if (v147 >= 0.1 && v147 <= 0.7)
                        {
                          [array5 addObject:v142];

                          goto LABEL_161;
                        }
                      }
                    }
                  }

                  v139 = [v129 countByEnumeratingWithState:&v287 objects:v328 count:16];
                  if (v139)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            else
            {
              firstObject6 = [v121 firstObject];
              creationDate5 = [firstObject6 creationDate];
              [creationDate5 timeIntervalSinceReferenceDate];
              v127 = v126;

              v128 = 0;
              while (1)
              {
                v129 = [array objectAtIndexedSubscript:v118];

                creationDate6 = [v129 creationDate];
                [creationDate6 timeIntervalSinceReferenceDate];
                v132 = v131;

                if (v132 >= v127)
                {
                  break;
                }

                ++v118;
                v128 = v129;
                if (v262 == v118)
                {
                  v118 = v262;
LABEL_143:

                  goto LABEL_144;
                }
              }

              if (!v129)
              {
                goto LABEL_143;
              }

              lastObject5 = [v121 lastObject];
              creationDate7 = [lastObject5 creationDate];
              [creationDate7 timeIntervalSinceReferenceDate];
              v136 = v132 > v135;

              if (v136)
              {
                goto LABEL_143;
              }

              [array5 addObject:v129];
            }

LABEL_161:
          }

          v117 = [obj countByEnumeratingWithState:&v291 objects:v329 count:16];
        }

        while (v117);
      }

      if (v261)
      {
        v148 = CFAbsoluteTimeGetCurrent();
        if (v148 - v314[3] >= 0.01)
        {
          v314[3] = v148;
          v311 = 0;
          v261[2](v261, &v311, 0.5);
          v149 = *(v318 + 24) | v311;
          *(v318 + 24) = v149;
          if (v149)
          {
            v150 = MEMORY[0x277D86220];
            v151 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 300;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_179;
          }
        }
      }

      v152 = [(PGCurationManager *)self _firstBestFacedAssetInAssetCluster:array4 facesByAssetIdentifiers:v113];
      if (v152)
      {
        [array5 addObject:v152];
      }

      else
      {
        curationLoggingConnection2 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(curationLoggingConnection2, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v341 = array4;
          _os_log_impl(&dword_22F0FC000, curationLoggingConnection2, OS_LOG_TYPE_INFO, "nil asset from last asset cluster: %@", buf, 0xCu);
        }
      }

      v219 = v152;
      v158 = array5;
      if (v261 && (v159 = CFAbsoluteTimeGetCurrent(), v159 - v314[3] >= 0.01) && (v314[3] = v159, v311 = 0, v261[2](v261, &v311, 0.5), v160 = *(v318 + 24) | v311, *(v318 + 24) = v160, (v160 & 1) != 0))
      {
        v161 = MEMORY[0x277D86220];
        v162 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v341 = 314;
          *&v341[4] = 2080;
          *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        if ([v158 count] < v221)
        {
          v263 = [MEMORY[0x277CBEB18] arrayWithCapacity:v233];
          v255 = v158;
          v163 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284486060];
          [v163 setK:v233];
          v281[0] = MEMORY[0x277D85DD0];
          v281[1] = 3221225472;
          v281[2] = __81__PGCurationManager_People__curatedAssetsForPersonLocalIdentifier_progressBlock___block_invoke;
          v281[3] = &unk_27888A188;
          v164 = v261;
          v282 = v164;
          v283 = &v313;
          v285 = 0x3F847AE147AE147BLL;
          v284 = &v317;
          v222 = [v163 performWithDataset:fetchedObjects progressBlock:v281];
          v218 = v163;
          if (*(v318 + 24) == 1)
          {
            v165 = MEMORY[0x277D86220];
            v166 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 327;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, v165, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v167 = 0;
          }

          else
          {
            v279 = 0u;
            v280 = 0u;
            v277 = 0u;
            v278 = 0u;
            v168 = v222;
            v169 = [v168 countByEnumeratingWithState:&v277 objects:v326 count:16];
            if (v169)
            {
              v170 = *v278;
              do
              {
                for (m = 0; m != v169; ++m)
                {
                  if (*v278 != v170)
                  {
                    objc_enumerationMutation(v168);
                  }

                  objects = [*(*(&v277 + 1) + 8 * m) objects];
                  firstObject7 = [objects firstObject];
                  [v263 addObject:firstObject7];
                }

                v169 = [v168 countByEnumeratingWithState:&v277 objects:v326 count:16];
              }

              while (v169);
            }

            v174 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
            v325 = v174;
            v175 = [MEMORY[0x277CBEA60] arrayWithObjects:&v325 count:1];
            [v263 sortUsingDescriptors:v175];

            v165 = [MEMORY[0x277CBEB98] setWithArray:v255];
            v251 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](v165, "count")}];
            array6 = [MEMORY[0x277CBEB18] array];
            v275 = 0u;
            v276 = 0u;
            v273 = 0u;
            v274 = 0u;
            v177 = v263;
            v178 = [v177 countByEnumeratingWithState:&v273 objects:v324 count:16];
            if (v178)
            {
              v179 = *v274;
              do
              {
                for (n = 0; n != v178; ++n)
                {
                  if (*v274 != v179)
                  {
                    objc_enumerationMutation(v177);
                  }

                  v181 = *(*(&v273 + 1) + 8 * n);
                  if (([v165 containsObject:v181]& 1) == 0)
                  {
                    [array6 addObject:v181];
                  }
                }

                v178 = [v177 countByEnumeratingWithState:&v273 objects:v324 count:16];
              }

              while (v178);
            }

            v217 = v177;

            if (v261 && (v182 = CFAbsoluteTimeGetCurrent(), v182 - v314[3] >= 0.01) && (v314[3] = v182, v311 = 0, v164[2](v164, &v311, 0.5), v183 = *(v318 + 24) | v311, *(v318 + 24) = v183, (v183 & 1) != 0))
            {
              v184 = MEMORY[0x277D86220];
              v185 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v341 = 349;
                *&v341[4] = 2080;
                *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v167 = 0;
            }

            else
            {
              array7 = [MEMORY[0x277CBEB18] array];
              v187 = [MEMORY[0x277CBEB98] setWithArray:v177];
              v271 = 0u;
              v272 = 0u;
              v269 = 0u;
              v270 = 0u;
              v188 = v255;
              v189 = [v188 countByEnumeratingWithState:&v269 objects:v323 count:16];
              if (v189)
              {
                v190 = *v270;
                do
                {
                  for (ii = 0; ii != v189; ++ii)
                  {
                    if (*v270 != v190)
                    {
                      objc_enumerationMutation(v188);
                    }

                    v192 = *(*(&v269 + 1) + 8 * ii);
                    if (([v187 containsObject:v192] & 1) == 0)
                    {
                      [array7 addObject:v192];
                    }
                  }

                  v189 = [v188 countByEnumeratingWithState:&v269 objects:v323 count:16];
                }

                while (v189);
              }

              v267 = 0u;
              v268 = 0u;
              v265 = 0u;
              v266 = 0u;
              obja = array7;
              v249 = [obja countByEnumeratingWithState:&v265 objects:v322 count:16];
              if (v249)
              {
                v240 = *v266;
LABEL_227:
                v193 = 0;
                while (1)
                {
                  if (*v266 != v240)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v194 = *(*(&v265 + 1) + 8 * v193);
                  if (![array6 count])
                  {
                    break;
                  }

                  v195 = [array6 indexOfObject:v194 inSortedRange:0 options:objc_msgSend(array6 usingComparator:{"count"), 1024, &__block_literal_global_43624}];
                  creationDate8 = [v194 creationDate];
                  if (v195)
                  {
                    v196 = v195 - 1;
                    if (v195 != [array6 count])
                    {
                      v234 = [array6 objectAtIndexedSubscript:v195 - 1];
                      creationDate9 = [v234 creationDate];
                      [creationDate8 timeIntervalSinceDate:creationDate9];
                      v199 = v198;

                      v200 = [array6 objectAtIndexedSubscript:v195];
                      creationDate10 = [v200 creationDate];
                      [creationDate10 timeIntervalSinceDate:creationDate8];
                      v203 = v202;

                      if (v199 >= v203)
                      {
                        v196 = v195;
                      }
                    }
                  }

                  else
                  {
                    v196 = 0;
                  }

                  v204 = [array6 objectAtIndexedSubscript:v196];
                  [array6 removeObjectAtIndex:v196];
                  [v251 addObject:v204];

                  if (v249 == ++v193)
                  {
                    v249 = [obja countByEnumeratingWithState:&v265 objects:v322 count:16];
                    if (v249)
                    {
                      goto LABEL_227;
                    }

                    break;
                  }
                }
              }

              [v217 removeObjectsInArray:v251];
              [v217 addObjectsFromArray:obja];
              v255 = [v217 mutableCopy];

              v167 = 1;
            }
          }

          if ((v167 & 1) == 0)
          {
            v8 = 0;
            v209 = v255;
            goto LABEL_258;
          }

          v158 = v255;
        }

        if (!v261 || (v205 = CFAbsoluteTimeGetCurrent(), v205 - v314[3] < 0.01) || (v314[3] = v205, v311 = 0, v261[2](v261, &v311, 0.5), v206 = *(v318 + 24) | v311, *(v318 + 24) = v206, (v206 & 1) == 0))
        {
          v210 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
          v321 = v210;
          v211 = [MEMORY[0x277CBEA60] arrayWithObjects:&v321 count:1];
          [v158 sortUsingDescriptors:v211];

          if (v261 && (v212 = CFAbsoluteTimeGetCurrent(), v212 - v314[3] >= 0.01) && (v314[3] = v212, v311 = 0, v261[2](v261, &v311, 1.0), v213 = *(v318 + 24) | v311, *(v318 + 24) = v213, (v213 & 1) != 0))
          {
            v214 = MEMORY[0x277D86220];
            v215 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v341 = 410;
              *&v341[4] = 2080;
              *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            v209 = v158;
          }

          else
          {
            v209 = v158;
            v8 = v209;
          }

          goto LABEL_258;
        }

        v207 = MEMORY[0x277D86220];
        v208 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v341 = 403;
          *&v341[4] = 2080;
          *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      v8 = 0;
      v209 = v158;
LABEL_258:

      goto LABEL_259;
    }

    v230 = MEMORY[0x277CBEBF8];
    if (v56 && v56 + v51 <= v45)
    {
      v230 = [fetchedObjects2 subarrayWithRange:v51];

      fetchedObjects2 = v230;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v341 = 37;
    *&v341[4] = 2080;
    *&v341[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_268:
  _Block_object_dispose(&v313, 8);
  _Block_object_dispose(&v317, 8);

  return v8;
}

void __81__PGCurationManager_People__curatedAssetsForPersonLocalIdentifier_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __81__PGCurationManager_People__curatedAssetsForPersonLocalIdentifier_progressBlock___block_invoke_298(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_filterAssets:(id)assets withPositiveLocations:(id)locations negativeLocations:(id)negativeLocations maximumDistance:(double)distance
{
  v50 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  locationsCopy = locations;
  negativeLocationsCopy = negativeLocations;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = assetsCopy;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v44;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        location = [v15 location];
        if (location)
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v17 = locationsCopy;
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v40;
            v21 = 1.79769313e308;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v40 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [location distanceFromLocation:*(*(&v39 + 1) + 8 * j)];
                if (v23 < v21)
                {
                  v21 = v23;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 1.79769313e308;
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v24 = negativeLocationsCopy;
          v25 = [v24 countByEnumeratingWithState:&v35 objects:v47 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v36;
            v28 = 1.79769313e308;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v36 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [location distanceFromLocation:*(*(&v35 + 1) + 8 * k)];
                if (v30 < v28)
                {
                  v28 = v30;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v35 objects:v47 count:16];
            }

            while (v26);
          }

          else
          {
            v28 = 1.79769313e308;
          }

          if (v21 < distance && v21 <= v28)
          {
            [v32 addObject:v15];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v12);
  }

  return v32;
}

+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forLocationNodes:(id)locationNodes withMaximumDistance:(double)distance
{
  locationNodesCopy = locationNodes;
  assetsCopy = assets;
  addressNodes = [nodes addressNodes];
  addressNodes2 = [locationNodesCopy addressNodes];

  v14 = [addressNodes collectionByIntersecting:addressNodes2];
  v15 = [addressNodes collectionBySubtracting:addressNodes2];
  locations = [v14 locations];
  locations2 = [v15 locations];
  v18 = [self _filterAssets:assetsCopy withPositiveLocations:locations negativeLocations:locations2 maximumDistance:distance];

  return v18;
}

+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forStateNodes:(id)stateNodes withMaximumDistance:(double)distance
{
  stateNodesCopy = stateNodes;
  assetsCopy = assets;
  addressNodes = [nodes addressNodes];
  addressNodes2 = [stateNodesCopy addressNodes];

  v14 = [addressNodes collectionByIntersecting:addressNodes2];
  v15 = [addressNodes collectionBySubtracting:addressNodes2];
  locations = [v14 locations];
  locations2 = [v15 locations];
  v18 = [self _filterAssets:assetsCopy withPositiveLocations:locations negativeLocations:locations2 maximumDistance:distance];

  return v18;
}

+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forAreaNodes:(id)areaNodes withMaximumDistance:(double)distance
{
  areaNodesCopy = areaNodes;
  assetsCopy = assets;
  addressNodes = [nodes addressNodes];
  addressNodes2 = [areaNodesCopy addressNodes];

  v14 = [addressNodes collectionByIntersecting:addressNodes2];
  v15 = [addressNodes collectionBySubtracting:addressNodes2];
  locations = [v14 locations];
  locations2 = [v15 locations];
  v18 = [self _filterAssets:assetsCopy withPositiveLocations:locations negativeLocations:locations2 maximumDistance:distance];

  return v18;
}

+ (id)filterAssets:(id)assets inMomentNodes:(id)nodes forCityNodes:(id)cityNodes withMaximumDistance:(double)distance
{
  cityNodesCopy = cityNodes;
  assetsCopy = assets;
  addressNodes = [nodes addressNodes];
  addressNodes2 = [cityNodesCopy addressNodes];

  v14 = [addressNodes collectionByIntersecting:addressNodes2];
  v15 = [addressNodes collectionBySubtracting:addressNodes2];
  locations = [v14 locations];
  locations2 = [v15 locations];
  v18 = [self _filterAssets:assetsCopy withPositiveLocations:locations negativeLocations:locations2 maximumDistance:distance];

  return v18;
}

+ (id)filterAssets:(id)assets withLocation:(id)location maximumDistance:(double)distance
{
  v15 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v8 = MEMORY[0x277CBEA60];
  locationCopy2 = location;
  assetsCopy = assets;
  v11 = [v8 arrayWithObjects:&locationCopy count:1];

  v12 = [self filterAssets:assetsCopy withLocations:v11 maximumDistance:{distance, locationCopy, v15}];

  return v12;
}

+ (id)filterAssets:(id)assets withLocations:(id)locations maximumDistance:(double)distance
{
  v34 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  locationsCopy = locations;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = assetsCopy;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        location = [v13 location];
        if (location)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v15 = locationsCopy;
          v16 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v25;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v25 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [location distanceFromLocation:*(*(&v24 + 1) + 8 * j)];
                if (v20 < distance)
                {
                  [v22 addObject:v13];
                  goto LABEL_17;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  return v22;
}

@end