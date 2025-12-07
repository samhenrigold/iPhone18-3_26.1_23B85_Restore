@interface PGRevGeocodeProcessor
+ (id)momentsRequiringRevGeocodingWithUUIDs:(id)ds inPhotoLibrary:(id)library defaultToAllAssets:(BOOL)assets loggingConnection:(id)connection;
+ (id)reverseGeoFetchOptionsForPhotoLibrary:(id)library;
- (BOOL)_populateCacheWithRegions:(id)regions withProgressBlock:(id)block;
- (BOOL)_regionIsHome:(id)home;
- (BOOL)_revGeocodeAssetClusters:(id)clusters progressBlock:(id)block;
- (BOOL)_setRevGeoLocationData:(id)data onAssets:(id)assets;
- (BOOL)revGeocodeAssets:(id)assets progressBlock:(id)block;
- (BOOL)revGeocodeMoments:(id)moments progressBlock:(id)block;
- (PGRevGeocodeProcessor)initWithPhotoLibrary:(id)library homeLocations:(id)locations loggingConnection:(id)connection locationCache:(id)cache;
- (PHPhotoLibrary)photoLibrary;
- (id)_clusterAssets:(id)assets assetsWithInvalidLocationInMoment:(id *)moment;
- (id)_clusterAssetsInMoment:(id)moment assetsWithInvalidLocationInMoment:(id *)inMoment;
- (id)_revGeoLocationDataForRegion:(id)region;
- (void)_processMetricsOfAssetClustersInMoment:(id)moment;
- (void)_resetMetrics;
- (void)_updateGeoInfoForAssetClusters:(id)clusters progressBlock:(id)block;
@end

@implementation PGRevGeocodeProcessor

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)_resetMetrics
{
  self->_numberOfAssetClustersRevGeocoded = 0;
  *&self->_numberOfAssetClusters100mPlusFromCenter = 0u;
  *&self->_numberOfAssetClustersWithin50mOfCenter = 0u;
  *&self->_numberOfAssetClustersWithin10mOfCenter = 0u;
  *&self->_sumNumberOfAssetsPerCluster = 0u;
  *&self->_sumNumberOfAssetClustersPerMoment = 0u;
}

- (void)_processMetricsOfAssetClustersInMoment:(id)moment
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = moment;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v27)
  {
    v26 = *v35;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * i);
        assets = [v5 assets];
        v7 = [assets count];

        region = [v5 region];
        v32 = 0;
        v33 = 0;
        [region center];
        v32 = v9;
        v33 = v10;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        assets2 = [v5 assets];
        v12 = [assets2 countByEnumeratingWithState:&v28 objects:v38 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
          v15 = 0.0;
LABEL_8:
          v16 = 0;
          while (1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(assets2);
            }

            location = [*(*(&v28 + 1) + 8 * v16) location];
            [location coordinate];

            CLLocationCoordinate2DGetDistanceFrom();
            if (v15 < v18)
            {
              v15 = v18;
            }

            if (v15 >= 100.0)
            {
              break;
            }

            if (v13 == ++v16)
            {
              v13 = [assets2 countByEnumeratingWithState:&v28 objects:v38 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }

          v19 = 104;
          if (v15 < 100.0)
          {
            v19 = 96;
          }

          p_numberOfAssetClustersWithin50mOfCenter = (self + v19);
          if (v15 < 50.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin50mOfCenter;
          }

          if (v15 < 20.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin20mOfCenter;
          }

          if (v15 < 10.0)
          {
            p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin10mOfCenter;
          }
        }

        else
        {

          p_numberOfAssetClustersWithin50mOfCenter = &self->_numberOfAssetClustersWithin10mOfCenter;
        }

        *p_numberOfAssetClustersWithin50mOfCenter = *p_numberOfAssetClustersWithin50mOfCenter + 1.0;
        v21 = self->_sumSquareNumberOfAssetsPerCluster + (v7 * v7);
        self->_sumNumberOfAssetsPerCluster = self->_sumNumberOfAssetsPerCluster + v7;
        self->_sumSquareNumberOfAssetsPerCluster = v21;
      }

      v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  v22 = [obj count];
  v23 = self->_sumSquareNumberOfAssetClustersPerMoment + (v22 * v22);
  self->_sumNumberOfAssetClustersPerMoment = self->_sumNumberOfAssetClustersPerMoment + v22;
  self->_sumSquareNumberOfAssetClustersPerMoment = v23;
  v24.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v24.i64[1] = v22;
  *&self->_numberOfMomentsRevGeocoded = vaddq_s64(*&self->_numberOfMomentsRevGeocoded, v24);
}

- (id)_clusterAssets:(id)assets assetsWithInvalidLocationInMoment:(id *)moment
{
  v59 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = assetsCopy;
  v8 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v52 + 1) + 8 * i);
        v13 = MEMORY[0x277D3ACD0];
        [v12 locationCoordinate];
        if ([v13 canUseCoordinate:?])
        {
          v14 = array2;
        }

        else
        {
          v14 = array;
        }

        [v14 addObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  if (moment)
  {
    v15 = array;
    *moment = array;
  }

  if ([array2 count])
  {
    v39 = array;
    v16 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_56004];
    [v16 setMaximumDistance:20.0];
    [v16 setMinimumNumberOfObjects:1];
    v37 = v16;
    v38 = array2;
    v17 = [v16 performWithDataset:array2 progressBlock:0];
    array3 = [MEMORY[0x277CBEB18] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v41 = v17;
    v18 = [v41 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      v21 = *MEMORY[0x277CE4208];
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v41);
          }

          v23 = *(*(&v48 + 1) + 8 * j);
          v24 = [v23 meanRegion:20.0];
          if (v24)
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            objects = [v23 objects];
            v26 = [objects countByEnumeratingWithState:&v44 objects:v56 count:16];
            v27 = v21;
            if (v26)
            {
              v28 = v26;
              v29 = *v45;
              v27 = v21;
              do
              {
                for (k = 0; k != v28; ++k)
                {
                  if (*v45 != v29)
                  {
                    objc_enumerationMutation(objects);
                  }

                  coarseLocationProperties = [*(*(&v44 + 1) + 8 * k) coarseLocationProperties];
                  [coarseLocationProperties gpsHorizontalAccuracy];
                  v27 = fmax(v27, v32);
                }

                v28 = [objects countByEnumeratingWithState:&v44 objects:v56 count:16];
              }

              while (v28);
            }

            [v24 setClsHorizontalAccuracy:v27];
            v33 = [PGAssetCluster alloc];
            objects2 = [v23 objects];
            v35 = [(PGAssetCluster *)v33 initWithAssets:objects2 region:v24];

            [array3 addObject:v35];
          }
        }

        v19 = [v41 countByEnumeratingWithState:&v48 objects:v57 count:16];
      }

      while (v19);
    }

    [(PGRevGeocodeProcessor *)self _processMetricsOfAssetClustersInMoment:array3];
    array2 = v38;
    array = v39;
  }

  else
  {
    array3 = MEMORY[0x277CBEBF8];
  }

  return array3;
}

double __74__PGRevGeocodeProcessor__clusterAssets_assetsWithInvalidLocationInMoment___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 coarseLocationProperties];
  [v6 gpsHorizontalAccuracy];
  v8 = v7;

  v9 = [v5 coarseLocationProperties];
  [v9 gpsHorizontalAccuracy];
  v11 = v10;

  LODWORD(v9) = [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v8];
  v12 = 21.0;
  if (v9 == [MEMORY[0x277D3ACD0] horizontalAccuracyIsCoarse:v11])
  {
    [v4 locationCoordinate];
    [v5 locationCoordinate];
    CLLocationCoordinate2DGetDistanceFrom();
    v12 = v13;
  }

  return v12;
}

- (id)_clusterAssetsInMoment:(id)moment assetsWithInvalidLocationInMoment:(id *)inMoment
{
  momentCopy = moment;
  v7 = objc_opt_class();
  photoLibrary = [(PGRevGeocodeProcessor *)self photoLibrary];
  v9 = [v7 reverseGeoFetchOptionsForPhotoLibrary:photoLibrary];

  v10 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:momentCopy options:v9];

  v11 = [(PGRevGeocodeProcessor *)self _clusterAssets:v10 assetsWithInvalidLocationInMoment:inMoment];

  return v11;
}

- (BOOL)_regionIsHome:(id)home
{
  v27 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  [homeCopy radius];
  v6 = v5;
  [homeCopy center];
  v24 = v7;
  v25 = v8;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  homeLocations = [(PGRevGeocodeProcessor *)self homeLocations];
  v10 = [homeLocations countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v6 + 100.0;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(homeLocations);
        }

        [*(*(&v20 + 1) + 8 * i) coordinate];
        v18 = v14;
        v19 = v15;
        CLLocationCoordinate2DGetDistanceFrom();
        if (v16 <= v11)
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [homeLocations countByEnumeratingWithState:&v20 objects:v26 count:{16, v18, v19}];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (id)_revGeoLocationDataForRegion:(id)region
{
  v26 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  [(CLSLocationCache *)self->_locationCache placemarksForLocation:regionCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        revGeoLocationData = [*(*(&v17 + 1) + 8 * i) revGeoLocationData];
        if (revGeoLocationData)
        {
          v14 = revGeoLocationData;
          v15 = [MEMORY[0x277D3AD68] infoFromPlistData:revGeoLocationData];
          [v15 setIsHome:{-[PGRevGeocodeProcessor _regionIsHome:](self, "_regionIsHome:", regionCopy)}];
          plistData = [v15 plistData];

          loggingConnection = v5;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[PGLogging sharedLogging];
  loggingConnection = [v11 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 138478083;
    v22 = regionCopy;
    v23 = 2113;
    v24 = v5;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: placemarks for region (%{private}@) did not contain rev geo data: (%{private}@)", buf, 0x16u);
  }

  plistData = 0;
LABEL_13:

  return plistData;
}

- (BOOL)_populateCacheWithRegions:(id)regions withProgressBlock:(id)block
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D27720];
  blockCopy = block;
  regionsCopy = regions;
  v9 = [[v6 alloc] initWithLocationCache:self->_locationCache];
  v10 = objc_alloc(MEMORY[0x277D277A0]);
  v22[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v12 = [v10 initWithQueryPerformers:v11];

  loggingConnection = [(PGRevGeocodeProcessor *)self loggingConnection];
  [v12 setLoggingConnection:loggingConnection];

  v19 = 0;
  v14 = [v12 createCacheForRegions:regionsCopy progressBlock:blockCopy error:&v19];

  v15 = v19;
  if ((v14 & 1) == 0)
  {
    v16 = +[PGLogging sharedLogging];
    loggingConnection2 = [v16 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v15;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: Could not create cache for regions with error (%@)", buf, 0xCu);
    }
  }

  return v14;
}

- (void)_updateGeoInfoForAssetClusters:(id)clusters progressBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  blockCopy = block;
  v8 = [clustersCopy count];
  if (v8)
  {
    v9 = v8;
    v25 = blockCopy;
    v10 = _Block_copy(blockCopy);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = clustersCopy;
    v11 = clustersCopy;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 1.0 / v9;
      v15 = *v29;
      v16 = 0.0;
      v17 = 0.0;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          if (v10)
          {
            Current = CFAbsoluteTimeGetCurrent();
            if (Current - v17 >= 0.01)
            {
              v27 = 0;
              v10[2](v10, &v27, v16);
              if (v27)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *buf = 67109378;
                  v33 = 337;
                  v34 = 2080;
                  v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                }

                objc_autoreleasePoolPop(v20);

                blockCopy = v25;
                clustersCopy = v26;
                goto LABEL_23;
              }

              v17 = Current;
            }
          }

          region = [v19 region];
          v23 = [(PGRevGeocodeProcessor *)self _revGeoLocationDataForRegion:region];

          assets = [v19 assets];
          [(PGRevGeocodeProcessor *)self _setRevGeoLocationData:v23 onAssets:assets];

          v16 = v14 + v16;
          objc_autoreleasePoolPop(v20);
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0.0;
    }

    blockCopy = v25;
    clustersCopy = v26;
    if (v10)
    {
      if (CFAbsoluteTimeGetCurrent() - v17 >= 0.01)
      {
        v27 = 0;
        v10[2](v10, &v27, 1.0);
        if (v27)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v33 = 345;
            v34 = 2080;
            v35 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }
        }
      }
    }

LABEL_23:
  }
}

- (BOOL)_revGeocodeAssetClusters:(id)clusters progressBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = clustersCopy;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v11)
  {
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v10);
        }

        region = [*(*(&v31 + 1) + 8 * i) region];
        [array addObject:region];
      }

      v11 = [v10 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v11);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke;
  v26[3] = &unk_27888A188;
  v15 = v8;
  v27 = v15;
  v28 = &v35;
  v29 = &v39;
  v30 = 0x3F847AE147AE147BLL;
  if ([(PGRevGeocodeProcessor *)self _populateCacheWithRegions:array withProgressBlock:v26])
  {
    if (!v15 || (Current = CFAbsoluteTimeGetCurrent(), Current - v36[3] < 0.01) || (v36[3] = Current, v25 = 0, (*(v15 + 2))(v15, &v25, 0.5), v17 = *(v40 + 24) | v25, *(v40 + 24) = v17, (v17 & 1) == 0))
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke_276;
      v20[3] = &unk_27888A188;
      v21 = v15;
      v22 = &v35;
      v23 = &v39;
      v24 = 0x3F847AE147AE147BLL;
      [(PGRevGeocodeProcessor *)self _updateGeoInfoForAssetClusters:v10 progressBlock:v20];

      v18 = 1;
      goto LABEL_16;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v44 = 313;
      v45 = 2080;
      v46 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  v18 = 0;
LABEL_16:

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v18;
}

void __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
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

void __64__PGRevGeocodeProcessor__revGeocodeAssetClusters_progressBlock___block_invoke_276(uint64_t a1, _BYTE *a2, double a3)
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

- (BOOL)_setRevGeoLocationData:(id)data onAssets:(id)assets
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  assetsCopy = assets;
  mEMORY[0x277D27728] = [MEMORY[0x277D27728] sharedLocationShifter];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(assetsCopy, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v7 = assetsCopy;
  v8 = [v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v48;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v48 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        photosOneUpProperties = [v12 photosOneUpProperties];
        shiftedLocationIsValid = [photosOneUpProperties shiftedLocationIsValid];

        if (shiftedLocationIsValid)
        {
          null = [MEMORY[0x277CBEB68] null];
          [v6 addObject:null];
        }

        else
        {
          location = [v12 location];
          null = location;
          if (location && ([location coordinate], v18 = v17, v20 = v19, (objc_msgSend(MEMORY[0x277D3ACD0], "canUseCoordinate:") & 1) != 0) && (objc_msgSend(MEMORY[0x277D27728], "isLocationShiftRequiredForCoordinate:", v18, v20) & 1) != 0)
          {
            [mEMORY[0x277D27728] shiftedCoordinateForOriginalCoordinate:{v18, v20}];
            null2 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v21 longitude:v22];
          }

          else
          {
            null2 = [MEMORY[0x277CBEB68] null];
          }

          v24 = null2;
          [v6 addObject:null2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v9);
  }

  v25 = [v7 count];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    while (1)
    {
      v28 = v27 + 1000;
      v29 = v27 + 1000 >= v26 ? v26 : v27 + 1000;
      photoLibrary = [(PGRevGeocodeProcessor *)self photoLibrary];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __57__PGRevGeocodeProcessor__setRevGeoLocationData_onAssets___block_invoke;
      v41[3] = &unk_278886880;
      v45 = v27;
      v46 = v29;
      v42 = v7;
      v43 = v6;
      v44 = dataCopy;
      v40 = 0;
      v31 = [photoLibrary performChangesAndWait:v41 error:&v40];
      v32 = v40;

      if ((v31 & 1) == 0)
      {
        break;
      }

      v27 = v28;
      if (v28 >= v26)
      {
        goto LABEL_23;
      }
    }

    v34 = +[PGLogging sharedLogging];
    loggingConnection = [v34 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v52 = v32;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: Error saving reverse geocoding data to database: %@", buf, 0xCu);
    }

    v33 = 0;
  }

  else
  {
LABEL_23:
    v33 = 1;
  }

  return v33;
}

void __57__PGRevGeocodeProcessor__setRevGeoLocationData_onAssets___block_invoke(uint64_t a1)
{
  for (i = *(a1 + 56); i < *(a1 + 64); ++i)
  {
    v3 = [*(a1 + 32) objectAtIndexedSubscript:i];
    v4 = [*(a1 + 40) objectAtIndexedSubscript:i];
    v5 = [MEMORY[0x277CD97B0] changeRequestForAsset:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setShiftedLocation:v4];
    }

    [v5 setReverseLocationData:*(a1 + 48)];
    [v5 setReverseLocationDataIsValid:1];
  }
}

- (BOOL)revGeocodeMoments:(id)moments progressBlock:(id)block
{
  v80 = *MEMORY[0x277D85DE8];
  momentsCopy = moments;
  blockCopy = block;
  v5 = _Block_copy(blockCopy);
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  if (v5)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v69[3] >= 0.01)
    {
      v69[3] = Current;
      LOBYTE(info.numer) = 0;
      v5[2](v5, &info, 0.0);
      v7 = *(v73 + 24) | LOBYTE(info.numer);
      *(v73 + 24) = v7;
      if (v7)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v77 = 142;
          *&v77[4] = 2080;
          *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v8 = 0;
        goto LABEL_62;
      }
    }
  }

  v9 = [momentsCopy count];
  if (!v9)
  {
    v8 = 1;
    goto LABEL_62;
  }

  loggingConnection = [(PGRevGeocodeProcessor *)self loggingConnection];
  v11 = os_signpost_id_generate(loggingConnection);
  v12 = loggingConnection;
  v13 = v12;
  spid = v11;
  v50 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ReverseGeocodeMoments", "", buf, 2u);
  }

  v51 = v13;

  info = 0;
  mach_timebase_info(&info);
  v14 = mach_absolute_time();
  [(PGRevGeocodeProcessor *)self _resetMetrics];
  array = [MEMORY[0x277CBEB18] array];
  v48 = v14;
  array2 = [MEMORY[0x277CBEB18] array];
  v53 = 0;
  v15 = 0.7 / v9;
  v16 = -v9;
  v17 = 0.0;
  v18 = 1;
  v19 = 1.0 / v9;
  do
  {
    v20 = objc_autoreleasePoolPush();
    if (!v5 || (v21 = CFAbsoluteTimeGetCurrent(), v21 - v69[3] < 0.01) || (v69[3] = v21, v66 = 0, v5[2](v5, &v66, v17), v22 = *(v73 + 24) | v66, *(v73 + 24) = v22, (v22 & 1) == 0))
    {
      v24 = [momentsCopy objectAtIndexedSubscript:v18 - 1];
      v65 = 0;
      v25 = [(PGRevGeocodeProcessor *)self _clusterAssetsInMoment:v24 assetsWithInvalidLocationInMoment:&v65];
      v26 = v65;
      [array addObjectsFromArray:v25];
      if (v26)
      {
        [array2 addObjectsFromArray:v26];
      }

      if (v5)
      {
        v27 = CFAbsoluteTimeGetCurrent();
        if (v27 - v69[3] >= 0.01)
        {
          v69[3] = v27;
          v66 = 0;
          v5[2](v5, &v66, v17 + v19 * 0.5);
          v28 = *(v73 + 24) | v66;
          *(v73 + 24) = v28;
          if (v28)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v77 = 180;
              *&v77[4] = 2080;
              *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_40:
            v23 = 0;
            goto LABEL_41;
          }
        }
      }

      v29 = [array2 count];
      v30 = v16 + v18;
      if (v29 && (v29 > 0x3E7 || !v30))
      {
        v31 = [(PGRevGeocodeProcessor *)self _setRevGeoLocationData:0 onAssets:array2];
        [array2 removeAllObjects];
        if (!v31)
        {
          v34 = +[PGLogging sharedLogging];
          loggingConnection2 = [v34 loggingConnection];

          if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: stopping reverse geocoding early", buf, 2u);
          }

          goto LABEL_40;
        }
      }

      if ([array count] > 0x3E7 || !v30)
      {
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __57__PGRevGeocodeProcessor_revGeocodeMoments_progressBlock___block_invoke;
        v58[3] = &unk_278886858;
        v62 = v17;
        v63 = v15 * (v18 - v53);
        v59 = v5;
        v60 = &v68;
        v64 = 0x3F847AE147AE147BLL;
        v61 = &v72;
        if (![(PGRevGeocodeProcessor *)self _revGeocodeAssetClusters:array progressBlock:v58])
        {
          v32 = +[PGLogging sharedLogging];
          loggingConnection3 = [v32 loggingConnection];

          if (os_log_type_enabled(loggingConnection3, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22F0FC000, loggingConnection3, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: stopping reverse geocoding early", buf, 2u);
          }

          goto LABEL_40;
        }

        [array removeAllObjects];

        v17 = v17 + v15 * (v18 - v53);
        v53 = v18;
      }

      v17 = v19 + v17;
      v23 = 1;
LABEL_41:

      goto LABEL_42;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v77 = 167;
      *&v77[4] = 2080;
      *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v23 = 0;
LABEL_42:
    objc_autoreleasePoolPop(v20);
    if ((v23 & 1) == 0)
    {
      v8 = 0;
LABEL_60:
      v45 = array2;
      goto LABEL_61;
    }

    ++v18;
  }

  while (v16 + v18 != 1);
  v36 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v39 = v51;
  v40 = v39;
  if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    numberOfMomentsRevGeocoded = self->_numberOfMomentsRevGeocoded;
    *buf = 134217984;
    *v77 = numberOfMomentsRevGeocoded;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, spid, "ReverseGeocodeMoments", "[REVGEO] Reverse geocode %lu moments", buf, 0xCu);
  }

  v42 = v40;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"[REVGEO] Reverse geocode %lu moments", self->_numberOfMomentsRevGeocoded];
    *buf = 136315650;
    *v77 = "ReverseGeocodeMoments";
    *&v77[8] = 2112;
    *&v77[10] = v43;
    v78 = 2048;
    v79 = ((((v36 - v48) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  if (!v5)
  {
    v8 = 1;
    goto LABEL_60;
  }

  v44 = CFAbsoluteTimeGetCurrent();
  v45 = array2;
  if (v44 - v69[3] >= 0.01 && (v69[3] = v44, v66 = 0, v5[2](v5, &v66, 1.0), v46 = *(v73 + 24) | v66, *(v73 + 24) = v46, (v46 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v77 = 224;
      *&v77[4] = 2080;
      *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGRevGeocodeProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

LABEL_61:

LABEL_62:
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);

  return v8;
}

void __57__PGRevGeocodeProcessor_revGeocodeMoments_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 64);
    Current = CFAbsoluteTimeGetCurrent();
    v9 = *(*(a1 + 40) + 8);
    if (Current - *(v9 + 24) >= *(a1 + 72))
    {
      *(v9 + 24) = Current;
      (*(*(a1 + 32) + 16))(v6 + a3 * v7);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (BOOL)revGeocodeAssets:(id)assets progressBlock:(id)block
{
  v37 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = assetsCopy;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        locationDataProperties = [v12 locationDataProperties];
        [locationDataProperties coordinate];
        v15 = v14;
        v17 = v16;

        if ([MEMORY[0x277D3ACD0] canUseCoordinate:{v15, v17}])
        {
          v18 = objc_alloc(MEMORY[0x277CBFBC8]);
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          v21 = [v18 initWithCenter:uUIDString radius:v15 identifier:{v17, 20.0}];

          coarseLocationProperties = [v12 coarseLocationProperties];
          [coarseLocationProperties gpsHorizontalAccuracy];
          [v21 setClsHorizontalAccuracy:?];

          v23 = [PGAssetCluster alloc];
          v35 = v12;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          v25 = [(PGAssetCluster *)v23 initWithAssets:v24 region:v21];

          [array addObject:v25];
        }

        else
        {
          [array2 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  [(PGRevGeocodeProcessor *)self _setRevGeoLocationData:0 onAssets:array2];
  v26 = [(PGRevGeocodeProcessor *)self _revGeocodeAssetClusters:array progressBlock:blockCopy];

  return v26;
}

- (PGRevGeocodeProcessor)initWithPhotoLibrary:(id)library homeLocations:(id)locations loggingConnection:(id)connection locationCache:(id)cache
{
  libraryCopy = library;
  locationsCopy = locations;
  connectionCopy = connection;
  cacheCopy = cache;
  v17.receiver = self;
  v17.super_class = PGRevGeocodeProcessor;
  v14 = [(PGRevGeocodeProcessor *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_photoLibrary, libraryCopy);
    objc_storeStrong(&v15->_homeLocations, locations);
    objc_storeStrong(&v15->_loggingConnection, connection);
    objc_storeStrong(&v15->_locationCache, cache);
  }

  return v15;
}

+ (id)reverseGeoFetchOptionsForPhotoLibrary:(id)library
{
  v7[3] = *MEMORY[0x277D85DE8];
  librarySpecificFetchOptions = [library librarySpecificFetchOptions];
  v4 = *MEMORY[0x277CD9AC8];
  v7[0] = *MEMORY[0x277CD9A70];
  v7[1] = v4;
  v7[2] = *MEMORY[0x277CD9AF8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  [librarySpecificFetchOptions addFetchPropertySets:v5];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];

  return librarySpecificFetchOptions;
}

+ (id)momentsRequiringRevGeocodingWithUUIDs:(id)ds inPhotoLibrary:(id)library defaultToAllAssets:(BOOL)assets loggingConnection:(id)connection
{
  assetsCopy = assets;
  v43[2] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  connectionCopy = connection;
  libraryCopy = library;
  v12 = os_signpost_id_generate(connectionCopy);
  v13 = connectionCopy;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "MomentsRequiringRevGeocoding", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v15 = mach_absolute_time();
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(%K, $asset, $asset.%K == NO).@count != 0", @"assets", @"additionalAttributes.reverseLocationDataIsValid"];
  if ([dsCopy count])
  {
    v34 = v15;
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", @"uuid", dsCopy];
    v19 = MEMORY[0x277CCA920];
    v43[0] = v17;
    v43[1] = dsCopy;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    v17 = v21;
  }

  else
  {
    if (!assetsCopy)
    {
      v24 = 0;
      goto LABEL_14;
    }

    v34 = v15;
  }

  [librarySpecificFetchOptions setInternalPredicate:v17];
  v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
  v42 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v23];

  v24 = [MEMORY[0x277CD97B8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  v25 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v28 = v14;
  v29 = v28;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    v30 = [v24 count];
    *buf = 134217984;
    v37 = v30;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v12, "MomentsRequiringRevGeocoding", "[REVGEO] Fetch %lu moments requiring reverse geocoding", buf, 0xCu);
  }

  v31 = v29;
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[REVGEO] Fetch %lu moments requiring reverse geocoding", objc_msgSend(v24, "count")];
    *buf = 136315650;
    v37 = "MomentsRequiringRevGeocoding";
    v38 = 2112;
    v39 = v32;
    v40 = 2048;
    v41 = ((((v25 - v34) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

LABEL_14:

  return v24;
}

@end