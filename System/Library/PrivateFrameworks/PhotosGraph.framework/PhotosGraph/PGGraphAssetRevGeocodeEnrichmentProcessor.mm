@interface PGGraphAssetRevGeocodeEnrichmentProcessor
+ (id)homeLocationsWithServiceManager:(id)manager;
- (BOOL)_allowReverseGeocodingWithUpdateType:(int64_t)type;
- (BOOL)revGeoProviderDidChangeForGraphApplicationDataURL:(id)l;
- (PGGraphAssetRevGeocodeEnrichmentProcessor)init;
- (void)_processMetricsOfAssetClustersInMoment:(id)moment;
- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter;
- (void)invalidateReverseLocationDataForRevGeoProviderChangeUsingManager:(id)manager progressBlock:(id)block;
- (void)sendMetricsForGeocodeProcesssor:(id)processsor toAnalytics:(id)analytics progressBlock:(id)block;
- (void)setCurrentGeoProviderInGraphApplicationDataURL:(id)l;
@end

@implementation PGGraphAssetRevGeocodeEnrichmentProcessor

- (BOOL)_allowReverseGeocodingWithUpdateType:(int64_t)type
{
  v3 = 1;
  if (type <= 3 && type != 1)
  {
    reachabilityForInternetConnection = [MEMORY[0x277D27798] reachabilityForInternetConnection];
    v3 = [reachabilityForInternetConnection currentNetworkStatus] == 2;
  }

  return v3;
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

          v19 = 88;
          if (v15 < 100.0)
          {
            v19 = 80;
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

- (void)sendMetricsForGeocodeProcesssor:(id)processsor toAnalytics:(id)analytics progressBlock:(id)block
{
  v67 = *MEMORY[0x277D85DE8];
  processsorCopy = processsor;
  analyticsCopy = analytics;
  blockCopy = block;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v48 = _Block_copy(blockCopy);
  if (!v48 || (v8 = CFAbsoluteTimeGetCurrent(), v8 - v56[3] < 0.01) || (v56[3] = v8, v54 = 0, (*(v48 + 2))(v48, &v54, 0.0), v9 = *(v60 + 24) | v54, *(v60 + 24) = v9, (v9 & 1) == 0))
  {
    [processsorCopy sumNumberOfAssetClustersPerMoment];
    v45 = v10;
    numberOfMomentsRevGeocoded = [processsorCopy numberOfMomentsRevGeocoded];
    [processsorCopy sumNumberOfAssetClustersPerMoment];
    v44 = v12;
    [processsorCopy sumSquareNumberOfAssetClustersPerMoment];
    v43 = v13;
    numberOfMomentsRevGeocoded2 = [processsorCopy numberOfMomentsRevGeocoded];
    [processsorCopy sumNumberOfAssetsPerCluster];
    v16 = v15;
    numberOfAssetClustersRevGeocoded = [processsorCopy numberOfAssetClustersRevGeocoded];
    [processsorCopy sumNumberOfAssetsPerCluster];
    v19 = v18;
    [processsorCopy sumSquareNumberOfAssetsPerCluster];
    v21 = v20;
    numberOfAssetClustersRevGeocoded2 = [processsorCopy numberOfAssetClustersRevGeocoded];
    [processsorCopy numberOfAssetClustersWithin10mOfCenter];
    v24 = v23;
    numberOfAssetClustersRevGeocoded3 = [processsorCopy numberOfAssetClustersRevGeocoded];
    [processsorCopy numberOfAssetClustersWithin20mOfCenter];
    v27 = v26;
    numberOfAssetClustersRevGeocoded4 = [processsorCopy numberOfAssetClustersRevGeocoded];
    [processsorCopy numberOfAssetClustersWithin50mOfCenter];
    v30 = v29;
    numberOfAssetClustersRevGeocoded5 = [processsorCopy numberOfAssetClustersRevGeocoded];
    [processsorCopy numberOfAssetClustersWithin100mOfCenter];
    v33 = v32;
    numberOfAssetClustersRevGeocoded6 = [processsorCopy numberOfAssetClustersRevGeocoded];
    [processsorCopy numberOfAssetClusters100mPlusFromCenter];
    v36 = -[PGRevGeoMetricEvent initWithNumberOfAssetClustersPerMomentMean:numberOfAssetClustersPerMomentStdDev:numberOfAssetsPerClusterMean:numberOfAssetsPerClusterStdDev:ratioAssetClustersWithin10mOfCenter:ratioAssetClustersWithin20mOfCenter:ratioAssetClustersWithin50mOfCenter:ratioAssetClustersWithin100mOfCenter:ratioAssetClusters100mPlusFromCenter:]([PGRevGeoMetricEvent alloc], "initWithNumberOfAssetClustersPerMomentMean:numberOfAssetClustersPerMomentStdDev:numberOfAssetsPerClusterMean:numberOfAssetsPerClusterStdDev:ratioAssetClustersWithin10mOfCenter:ratioAssetClustersWithin20mOfCenter:ratioAssetClustersWithin50mOfCenter:ratioAssetClustersWithin100mOfCenter:ratioAssetClusters100mPlusFromCenter:", v45 / numberOfMomentsRevGeocoded, sqrt(numberOfMomentsRevGeocoded2 * v43 - v44 * v44) / numberOfMomentsRevGeocoded2, v16 / numberOfAssetClustersRevGeocoded, sqrt(numberOfAssetClustersRevGeocoded2 * v21 - v19 * v19) / numberOfAssetClustersRevGeocoded2, v24 / numberOfAssetClustersRevGeocoded3, v27 / numberOfAssetClustersRevGeocoded4, v30 / numberOfAssetClustersRevGeocoded5, v33 / numberOfAssetClustersRevGeocoded6, v35 / [processsorCopy numberOfAssetClustersRevGeocoded]);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __103__PGGraphAssetRevGeocodeEnrichmentProcessor_sendMetricsForGeocodeProcesssor_toAnalytics_progressBlock___block_invoke;
    v49[3] = &unk_27888A188;
    v37 = v48;
    v50 = v37;
    v51 = &v55;
    v52 = &v59;
    v53 = 0x3F847AE147AE147BLL;
    [(PGAbstractMetricEvent *)v36 gatherMetricsWithProgressBlock:v49];
    if (*(v60 + 24) == 1)
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_15:

        goto LABEL_16;
      }

      *buf = 67109378;
      v64 = 305;
      v65 = 2080;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
      v38 = MEMORY[0x277D86220];
    }

    else
    {
      identifier = [(PGRevGeoMetricEvent *)v36 identifier];
      payload = [(PGRevGeoMetricEvent *)v36 payload];
      [analyticsCopy sendEvent:identifier withPayload:payload];

      if (!v48)
      {
        goto LABEL_15;
      }

      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v56[3] < 0.01)
      {
        goto LABEL_15;
      }

      v56[3] = Current;
      v54 = 0;
      (*(v37 + 2))(v37, &v54, 1.0);
      v42 = *(v60 + 24) | v54;
      *(v60 + 24) = v42;
      if ((v42 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 67109378;
      v64 = 308;
      v65 = 2080;
      v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
      v38 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v64 = 287;
    v65 = 2080;
    v66 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_16:
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
}

void __103__PGGraphAssetRevGeocodeEnrichmentProcessor_sendMetricsForGeocodeProcesssor_toAnalytics_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.1);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (void)enrichDataModelWithManager:(id)manager curationContext:(id)context graphUpdateInventory:(id)inventory progressReporter:(id)reporter
{
  v97 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  inventoryCopy = inventory;
  reporterCopy = reporter;
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v12 = [reporterCopy isCancelledWithProgress:0.0];
  *(v91 + 24) = v12;
  if (!v12)
  {
    enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
    v14 = os_signpost_id_generate(enrichmentLoggingConnection);
    v15 = enrichmentLoggingConnection;
    v16 = v15;
    v71 = v14 - 1;
    spid = v14;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v70 = mach_absolute_time();
    if (-[PGGraphAssetRevGeocodeEnrichmentProcessor _allowReverseGeocodingWithUpdateType:](self, "_allowReverseGeocodingWithUpdateType:", [inventoryCopy updateType]))
    {
      photoLibrary = [managerCopy photoLibrary];
      pg_urlForGraphApplicationData = [photoLibrary pg_urlForGraphApplicationData];
      if (!pg_urlForGraphApplicationData)
      {
        v23 = +[PGLogging sharedLogging];
        loggingConnection = [v23 loggingConnection];

        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: nil graph application data URL", buf, 2u);
        }

        if (v91[3])
        {
          *(v91 + 24) = 1;
        }

        else
        {
          v30 = [reporterCopy isCancelledWithProgress:1.0];
          *(v91 + 24) = v30;
          if ((v30 & 1) == 0)
          {
            v42 = mach_absolute_time();
            numer = info.numer;
            denom = info.denom;
            v45 = v16;
            v46 = v45;
            if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_22F0FC000, v46, OS_SIGNPOST_INTERVAL_END, v14, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
            }

            if (!os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              goto LABEL_83;
            }

            *buf = 136315394;
            *v96 = "PGGraphAssetRevGeocodeEnrichmentProcessor";
            *&v96[8] = 2048;
            *&v96[10] = ((((v42 - v70) * numer) / denom) / 1000000.0);
            v32 = "[Performance] %s: %f ms";
            v31 = v46;
            v34 = 22;
            goto LABEL_41;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v96 = 220;
          *&v96[4] = 2080;
          *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          v31 = MEMORY[0x277D86220];
          v32 = "Cancelled at line %d in file %s";
LABEL_40:
          v34 = 18;
LABEL_41:
          _os_log_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_INFO, v32, buf, v34);
        }

LABEL_83:

        goto LABEL_84;
      }

      if ([(PGGraphAssetRevGeocodeEnrichmentProcessor *)self revGeoProviderDidChangeForGraphApplicationDataURL:?])
      {
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke;
        v86[3] = &unk_278889448;
        v88 = &v90;
        v87 = reporterCopy;
        [(PGGraphAssetRevGeocodeEnrichmentProcessor *)self invalidateReverseLocationDataForRevGeoProviderChangeUsingManager:managerCopy progressBlock:v86];
        if (*(v91 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v96 = 230;
            *&v96[4] = 2080;
            *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          goto LABEL_83;
        }

        [(PGGraphAssetRevGeocodeEnrichmentProcessor *)self setCurrentGeoProviderInGraphApplicationDataURL:pg_urlForGraphApplicationData];
      }

      if (v91[3])
      {
        *(v91 + 24) = 1;
        goto LABEL_38;
      }

      v33 = [reporterCopy isCancelledWithProgress:0.2];
      *(v91 + 24) = v33;
      if (v33)
      {
LABEL_38:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v96 = 235;
          *&v96[4] = 2080;
          *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          v31 = MEMORY[0x277D86220];
          v32 = "Cancelled at line %d in file %s";
          goto LABEL_40;
        }

        goto LABEL_83;
      }

      v35 = [MEMORY[0x277CBEB58] set];
      isResumingFullAnalysis = [inventoryCopy isResumingFullAnalysis];
      if ((isResumingFullAnalysis & 1) == 0)
      {
        [inventoryCopy momentsToProcessForMomentUpdateTypes:20 includeMomentsToIngest:1];
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v36 = v83 = 0u;
        v37 = [v36 countByEnumeratingWithState:&v82 objects:v94 count:16];
        if (v37)
        {
          v38 = *v83;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v83 != v38)
              {
                objc_enumerationMutation(v36);
              }

              uuid = [*(*(&v82 + 1) + 8 * i) uuid];
              [v35 addObject:uuid];
            }

            v37 = [v36 countByEnumeratingWithState:&v82 objects:v94 count:16];
          }

          while (v37);
        }
      }

      v41 = [PGRevGeocodeProcessor momentsRequiringRevGeocodingWithUUIDs:v35 inPhotoLibrary:photoLibrary defaultToAllAssets:isResumingFullAnalysis loggingConnection:v16];
      if (v91[3])
      {
        *(v91 + 24) = 1;
        goto LABEL_59;
      }

      v47 = [reporterCopy isCancelledWithProgress:0.3];
      *(v91 + 24) = v47;
      if (v47)
      {
LABEL_59:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v96 = 252;
          *&v96[4] = 2080;
          *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        goto LABEL_82;
      }

      v48 = objc_opt_class();
      serviceManager = [managerCopy serviceManager];
      v50 = [v48 homeLocationsWithServiceManager:serviceManager];
      homeLocations = self->_homeLocations;
      self->_homeLocations = v50;

      v52 = [PGRevGeocodeProcessor alloc];
      v53 = self->_homeLocations;
      locationCache = [managerCopy locationCache];
      v55 = [(PGRevGeocodeProcessor *)v52 initWithPhotoLibrary:photoLibrary homeLocations:v53 loggingConnection:v16 locationCache:locationCache];

      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_269;
      v79[3] = &unk_278889448;
      v81 = &v90;
      v56 = reporterCopy;
      v80 = v56;
      v57 = [(PGRevGeocodeProcessor *)v55 revGeocodeMoments:v41 progressBlock:v79];
      if (v91[3])
      {
        *(v91 + 24) = 1;
      }

      else
      {
        v58 = v57;
        v59 = [v56 isCancelledWithProgress:0.7];
        *(v91 + 24) = v59;
        if ((v59 & 1) == 0)
        {
          if (!v58)
          {
            goto LABEL_81;
          }

          if ([(PGRevGeocodeProcessor *)v55 numberOfMomentsRevGeocoded]&& [(PGRevGeocodeProcessor *)v55 numberOfAssetClustersRevGeocoded])
          {
            analytics = [managerCopy analytics];
            v76[0] = MEMORY[0x277D85DD0];
            v76[1] = 3221225472;
            v76[2] = __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_270;
            v76[3] = &unk_278889448;
            v78 = &v90;
            v77 = v56;
            [(PGGraphAssetRevGeocodeEnrichmentProcessor *)self sendMetricsForGeocodeProcesssor:v55 toAnalytics:analytics progressBlock:v76];
          }

          v62 = mach_absolute_time();
          v63 = info.numer;
          v64 = info.denom;
          v65 = v16;
          v66 = v65;
          if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v66, OS_SIGNPOST_INTERVAL_END, spid, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
          }

          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v96 = "PGGraphAssetRevGeocodeEnrichmentProcessor";
            *&v96[8] = 2048;
            *&v96[10] = ((((v62 - v70) * v63) / v64) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v66, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          if (v91[3])
          {
            *(v91 + 24) = 1;
          }

          else
          {
            v67 = [v56 isCancelledWithProgress:1.0];
            *(v91 + 24) = v67;
            if ((v67 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_81;
          }

          *buf = 67109378;
          *v96 = 270;
          *&v96[4] = 2080;
          *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
          v60 = MEMORY[0x277D86220];
          goto LABEL_66;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_81:

LABEL_82:
        goto LABEL_83;
      }

      *buf = 67109378;
      *v96 = 258;
      *&v96[4] = 2080;
      *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
      v60 = MEMORY[0x277D86220];
LABEL_66:
      _os_log_impl(&dword_22F0FC000, v60, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      goto LABEL_81;
    }

    v17 = +[PGLogging sharedLogging];
    loggingConnection2 = [v17 loggingConnection];

    if (os_log_type_enabled(loggingConnection2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection2, OS_LOG_TYPE_INFO, "AssetsRevGeocoding: reverse geocoding not allowed", buf, 2u);
    }

    if (v91[3])
    {
      *(v91 + 24) = 1;
    }

    else
    {
      v19 = [reporterCopy isCancelledWithProgress:1.0];
      *(v91 + 24) = v19;
      if ((v19 & 1) == 0)
      {
        v25 = mach_absolute_time();
        v26 = info.numer;
        v27 = info.denom;
        v28 = v16;
        v29 = v28;
        if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v29, OS_SIGNPOST_INTERVAL_END, v14, "PGGraphAssetRevGeocodeEnrichmentProcessor", "", buf, 2u);
        }

        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          goto LABEL_84;
        }

        *buf = 136315394;
        *v96 = "PGGraphAssetRevGeocodeEnrichmentProcessor";
        *&v96[8] = 2048;
        *&v96[10] = ((((v25 - v70) * v26) / v27) / 1000000.0);
        v21 = "[Performance] %s: %f ms";
        v20 = v29;
        v22 = 22;
        goto LABEL_30;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
LABEL_84:

      goto LABEL_85;
    }

    *buf = 67109378;
    *v96 = 209;
    *&v96[4] = 2080;
    *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
    v20 = MEMORY[0x277D86220];
    v21 = "Cancelled at line %d in file %s";
    v22 = 18;
LABEL_30:
    _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, v21, buf, v22);
    goto LABEL_84;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v96 = 199;
    *&v96[4] = 2080;
    *&v96[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_85:
  _Block_object_dispose(&v90, 8);
}

uint64_t __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.2];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_269(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.3 + 0.3];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

uint64_t __126__PGGraphAssetRevGeocodeEnrichmentProcessor_enrichDataModelWithManager_curationContext_graphUpdateInventory_progressReporter___block_invoke_270(uint64_t a1, _BYTE *a2, double a3)
{
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:a3 * 0.3 + 0.7];
    v5 = *(*(a1 + 40) + 8);
  }

  *(v5 + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a2 = 1;
  }

  return result;
}

- (void)invalidateReverseLocationDataForRevGeoProviderChangeUsingManager:(id)manager progressBlock:(id)block
{
  v62[1] = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  blockCopy = block;
  enrichmentLoggingConnection = [managerCopy enrichmentLoggingConnection];
  v8 = os_signpost_id_generate(enrichmentLoggingConnection);
  v9 = enrichmentLoggingConnection;
  v10 = v9;
  v44 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "InvalidReverseLocationRevGeoProviderChange", "", buf, 2u);
  }

  spid = v8;
  v47 = v10;

  info = 0;
  mach_timebase_info(&info);
  v43 = mach_absolute_time();
  v48 = blockCopy;
  v11 = _Block_copy(blockCopy);
  v49 = managerCopy;
  photoLibrary = [managerCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v62[0] = *MEMORY[0x277CD9AF8];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
  [librarySpecificFetchOptions addFetchPropertySets:v14];

  [librarySpecificFetchOptions setIncludeGuestAssets:1];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"additionalAttributes.reverseLocationDataIsValid == YES"];
  [librarySpecificFetchOptions setInternalPredicate:v15];

  v46 = librarySpecificFetchOptions;
  v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v17 = dispatch_group_create();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke;
  aBlock[3] = &unk_278884D60;
  group = v17;
  v55 = group;
  v45 = photoLibrary;
  v56 = v45;
  v18 = _Block_copy(aBlock);
  array = [MEMORY[0x277CBEB18] array];
  v50 = v18;
  if ([v16 count])
  {
    v52 = 0;
    v20 = 0;
    v21 = 0.0;
    while (1)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v16 objectAtIndex:v20];
      v24 = MEMORY[0x277D3ACD0];
      [v23 locationCoordinate];
      if ([v24 canUseCoordinate:?])
      {
        v25 = MEMORY[0x277D3AD68];
        photosOneUpProperties = [v23 photosOneUpProperties];
        reverseLocationData = [photosOneUpProperties reverseLocationData];
        v28 = [v25 infoFromPlistData:reverseLocationData];

        if (([v28 locationWasResolvedWithBestRevGeoProvider] & 1) == 0)
        {
          [array addObject:v23];
        }

        if ([array count] >= 0x3E8)
        {
          dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
          v29 = [array copy];
          v50[2](v50, v29);

          v52 += [array count];
          [array removeAllObjects];
        }

        if (v11)
        {
          Current = CFAbsoluteTimeGetCurrent();
          if (Current - v21 >= 0.01)
          {
            v53 = 0;
            v11[2](v11, &v53, 0.5);
            if (v53)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v59 = 183;
                *&v59[4] = 2080;
                *&v59[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Graph/Data Model Enrichment/PGGraphAssetRevGeocodeEnrichmentProcessor.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              objc_autoreleasePoolPop(v22);
              v33 = v47;
              v31 = v50;
              goto LABEL_28;
            }

            v21 = Current;
          }
        }
      }

      objc_autoreleasePoolPop(v22);
      if (++v20 >= [v16 count])
      {
        goto LABEL_19;
      }
    }
  }

  v52 = 0;
LABEL_19:
  if ([array count])
  {
    v31 = v50;
    v50[2](v50, array);
    v32 = [array count] + v52;
    v33 = v47;
  }

  else
  {
    v33 = v47;
    v31 = v50;
    v32 = v52;
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v34 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v37 = v33;
  v38 = v37;
  if (v44 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 134217984;
    *v59 = v32;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v38, OS_SIGNPOST_INTERVAL_END, spid, "InvalidReverseLocationRevGeoProviderChange", "%ld assets invalidated", buf, 0xCu);
  }

  v39 = v38;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    v40 = (((v34 - v43) * numer) / denom) / 1000000.0;
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld assets invalidated", v32];
    *buf = 136315650;
    *v59 = "InvalidReverseLocationRevGeoProviderChange";
    *&v59[8] = 2112;
    *&v59[10] = v41;
    v60 = 2048;
    v61 = v40;
    _os_log_impl(&dword_22F0FC000, v39, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

LABEL_28:
}

void __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_2;
  v8[3] = &unk_27888A660;
  v9 = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_3;
  v6[3] = &unk_278884D38;
  v7 = *(a1 + 32);
  v5 = v3;
  [v4 performChanges:v8 completionHandler:v6];
}

void __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setReverseLocationData:0];
        [v6 setReverseLocationDataIsValid:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __124__PGGraphAssetRevGeocodeEnrichmentProcessor_invalidateReverseLocationDataForRevGeoProviderChangeUsingManager_progressBlock___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[PGLogging sharedLogging];
    v7 = [v6 loggingConnection];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_ERROR, "Cannot reset the reverse location information with error %@", &v8, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)setCurrentGeoProviderInGraphApplicationDataURL:(id)l
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [l URLByAppendingPathComponent:@"revgeoprovider.plist"];
  currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v13 = @"revgeoprovider";
  v14[0] = currentRevGeoProvider;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = 0;
  v6 = [v5 writeToURL:v3 error:&v10];
  v7 = v10;
  if ((v6 & 1) == 0)
  {
    v8 = +[PGLogging sharedLogging];
    loggingConnection = [v8 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "AssetsRevGeocoding: Could not save the new rev geo provider with error (%@)", buf, 0xCu);
    }
  }
}

- (BOOL)revGeoProviderDidChangeForGraphApplicationDataURL:(id)l
{
  v3 = [l URLByAppendingPathComponent:@"revgeoprovider.plist"];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  currentRevGeoProvider = [MEMORY[0x277D3AD60] currentRevGeoProvider];
  v6 = [v4 objectForKeyedSubscript:@"revgeoprovider"];
  v7 = [currentRevGeoProvider isEqualToString:v6];

  return v7 ^ 1;
}

- (PGGraphAssetRevGeocodeEnrichmentProcessor)init
{
  v6.receiver = self;
  v6.super_class = PGGraphAssetRevGeocodeEnrichmentProcessor;
  v2 = [(PGGraphAssetRevGeocodeEnrichmentProcessor *)&v6 init];
  v3 = v2;
  if (v2)
  {
    homeLocations = v2->_homeLocations;
    v2->_homeLocations = MEMORY[0x277CBEBF8];

    v3->_requiresValidGraph = 0;
  }

  return v3;
}

+ (id)homeLocationsWithServiceManager:(id)manager
{
  v3 = MEMORY[0x277CBEB18];
  managerCopy = manager;
  v5 = objc_alloc_init(v3);
  mePerson = [managerCopy mePerson];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__PGGraphAssetRevGeocodeEnrichmentProcessor_homeLocationsWithServiceManager___block_invoke;
  v9[3] = &unk_278884D88;
  v7 = v5;
  v10 = v7;
  [mePerson enumerateAddressesOfType:0 asCLLocationsWithBlock:v9];

  return v7;
}

@end