@interface PHAssetResource(MediaAnalysis)
+ (id)vcp_allAcceptableResourcesForAsset:()MediaAnalysis;
+ (id)vcp_allResourcesForAsset:()MediaAnalysis;
+ (id)vcp_allowedBundlesForSyndicationLibrary;
- (BOOL)vcp_hasExtremeAbnormalDimensionForScene;
- (BOOL)vcp_isDecodable;
- (double)vcp_size;
- (id)mad_existingAnalysisFromComputeSyncForAsset:()MediaAnalysis allowDownload:cancel:;
- (id)vcp_uniformTypeIdentifier;
- (uint64_t)mad_isAnalysisCompleteFromComputeSyncForAsset:()MediaAnalysis taskID:allowDownload:cancel:;
- (uint64_t)vcp_fileSize;
- (uint64_t)vcp_isLocallyAvailable;
- (uint64_t)vcp_isMovie;
- (uint64_t)vcp_isPhoto;
@end

@implementation PHAssetResource(MediaAnalysis)

+ (id)vcp_allowedBundlesForSyndicationLibrary
{
  v4[5] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v4[0] = @"com.apple.CloudDocs.MobileDocumentsFileProvider";
  v4[1] = @"com.apple.FileProvider.LocalStorage";
  v4[2] = @"com.apple.CloudDocs.iCloudDriveFileProvider";
  v4[3] = @"com.apple.CloudDocs.iCloudDriveFileProviderManaged";
  v4[4] = @"com.apple.photos.filesPlaceholder";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];
  v2 = [v0 setWithArray:v1];

  [v2 addObject:@"com.apple.mobilenotes"];

  return v2;
}

+ (id)vcp_allResourcesForAsset:()MediaAnalysis
{
  v3 = [MEMORY[0x1E69786D0] assetResourcesForAsset:a3 includeDerivatives:1];

  return v3;
}

+ (id)vcp_allAcceptableResourcesForAsset:()MediaAnalysis
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E69786D0] vcp_allResourcesForAsset:v3];
  if ([v3 isGuestAsset])
  {
    photoLibrary = [v3 photoLibrary];
    isSystemPhotoLibrary = [photoLibrary isSystemPhotoLibrary];

    v7 = isSystemPhotoLibrary ^ 1;
  }

  else
  {
    v7 = 1;
  }

  photoLibrary2 = [v3 photoLibrary];
  vcp_isSyndicationLibrary = [photoLibrary2 vcp_isSyndicationLibrary];

  if (vcp_isSyndicationLibrary)
  {
    [v3 fetchPropertySetsIfNeeded];
    curationProperties = [v3 curationProperties];
    importedByBundleIdentifier = [curationProperties importedByBundleIdentifier];

    if (!importedByBundleIdentifier || ([objc_opt_class() vcp_allowedBundlesForSyndicationLibrary], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", importedByBundleIdentifier), v12, (v13 & 1) == 0))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier = [v3 localIdentifier];
        *buf = 138412546;
        v28 = localIdentifier;
        v29 = 2112;
        v30 = importedByBundleIdentifier;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@][%@] Syndication library asset not from Notes / Files; skipping original resource", buf, 0x16u);
      }

      goto LABEL_14;
    }
  }

  if (v7)
  {
    array = v4;
    goto LABEL_26;
  }

LABEL_14:
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if ([v20 type] != 2 && objc_msgSend(v20, "type") != 1 && objc_msgSend(v20, "type") != 9)
        {
          [array addObject:v20];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

LABEL_26:

  return array;
}

- (id)vcp_uniformTypeIdentifier
{
  v1 = MEMORY[0x1E6982C40];
  uniformTypeIdentifier = [self uniformTypeIdentifier];
  v3 = [v1 typeWithIdentifier:uniformTypeIdentifier];

  return v3;
}

- (uint64_t)vcp_isMovie
{
  vcp_uniformTypeIdentifier = [self vcp_uniformTypeIdentifier];
  if ([vcp_uniformTypeIdentifier conformsToType:*MEMORY[0x1E6982EE8]])
  {
    v3 = 1;
  }

  else
  {
    vcp_uniformTypeIdentifier2 = [self vcp_uniformTypeIdentifier];
    v3 = [vcp_uniformTypeIdentifier2 conformsToType:*MEMORY[0x1E6983080]];
  }

  return v3;
}

- (uint64_t)vcp_isPhoto
{
  vcp_uniformTypeIdentifier = [self vcp_uniformTypeIdentifier];
  v2 = [vcp_uniformTypeIdentifier conformsToType:*MEMORY[0x1E6982E30]];

  return v2;
}

- (BOOL)vcp_isDecodable
{
  vcp_uniformTypeIdentifier = [self vcp_uniformTypeIdentifier];
  v2 = [VCPImageManager canDecodeAcceleratedUniformTypeIdentifier:vcp_uniformTypeIdentifier];

  return v2;
}

- (uint64_t)vcp_isLocallyAvailable
{
  if ([objc_opt_class() instancesRespondToSelector:sel_isLocallyAvailable])
  {

    return [self isLocallyAvailable];
  }

  else
  {
    privateFileURL = [self privateFileURL];
    if (privateFileURL)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [privateFileURL path];
      v7 = [defaultManager fileExistsAtPath:path];
    }

    else
    {
      v7 = 0;
    }

    return v7;
  }
}

- (BOOL)vcp_hasExtremeAbnormalDimensionForScene
{
  if ([self pixelHeight] < 1)
  {
    v3 = 1.0;
  }

  else
  {
    pixelWidth = [self pixelWidth];
    v3 = pixelWidth / [self pixelHeight];
  }

  pixelWidth2 = [self pixelWidth];
  pixelHeight = [self pixelHeight];
  if (v3 <= 10.0 && v3 >= 0.1)
  {
    return 0;
  }

  if (pixelWidth2 >= pixelHeight)
  {
    v7 = pixelHeight;
  }

  else
  {
    v7 = pixelWidth2;
  }

  return v7 < 0x32;
}

- (uint64_t)vcp_fileSize
{
  privateFileURL = [self privateFileURL];
  path = [privateFileURL path];

  if (path)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v4 = [defaultManager attributesOfItemAtPath:path error:0];
    fileSize = [v4 fileSize];
  }

  else
  {
    fileSize = 0;
  }

  return fileSize;
}

- (double)vcp_size
{
  v2 = (([self pixelWidth] + 1) & 0xFFFFFFFFFFFFFFFELL);
  [self pixelHeight];
  return v2;
}

- (id)mad_existingAnalysisFromComputeSyncForAsset:()MediaAnalysis allowDownload:cancel:
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (([v8 mad_isEligibleForComputeSync] & 1) == 0 || !objc_msgSend(v8, "mad_isEligibleForComputeSyncIngestion"))
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if ([self type] != 112)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier = [v8 localIdentifier];
      *buf = 138412546;
      v34 = localIdentifier;
      v35 = 1024;
      LODWORD(v36) = [self type];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid resource type (%d), unable to extract analysis results from compute sync", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (v9 && v9[2](v9))
  {
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier2 = [v8 localIdentifier];
      *buf = 138412290;
      v34 = localIdentifier2;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Analysis extraction from compute sync resource cancelled", buf, 0xCu);
    }

    goto LABEL_12;
  }

  privateFileURL = [self privateFileURL];
  if (a4 && ([objc_opt_class() mad_disableComputeSyncDownload] & 1) == 0)
  {
    v16 = [v8 mad_isEligibleForComputeSyncDownloadWithAnalysisTask:1];
    if ((v16 & 1) == 0)
    {
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        localIdentifier3 = [v8 localIdentifier];
        *buf = 138412546;
        v34 = localIdentifier3;
        v35 = 1024;
        LODWORD(v36) = 1;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible for compute sync downalod with taskID %d", buf, 0x12u);
      }

      goto LABEL_46;
    }

    v17 = VCPSignPostLog(v16);
    v18 = os_signpost_id_generate(v17);

    v20 = VCPSignPostLog(v19);
    v21 = v20;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MADDownloadComputeSyncResource", "", buf, 2u);
    }

    v32 = privateFileURL;
    v22 = [MEMORY[0x1E69786E8] vcp_requestFileURLForAssetResource:self withTaskID:1 toResourceURL:&v32 cancel:v9];
    v23 = v32;

    v25 = VCPSignPostLog(v24);
    v26 = v25;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_END, v18, "MADDownloadComputeSyncResource", "", buf, 2u);
    }

    if (v22)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier4 = [v8 localIdentifier];
        *buf = 138412546;
        v34 = localIdentifier4;
        v35 = 1024;
        LODWORD(v36) = v22;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to download compute sync resource (%d)", buf, 0x12u);
      }

      v12 = 0;
      privateFileURL = v23;
      goto LABEL_47;
    }

    privateFileURL = v23;
    if (v23)
    {
      goto LABEL_19;
    }
  }

  else if (privateFileURL)
  {
LABEL_19:
    if ([self isLocallyAvailable])
    {
      v15 = [MEMORY[0x1E69786D0] computeSyncMediaAnalysisPayloadDataForResourceURL:privateFileURL];
      if (v15)
      {
        v12 = [MADComputeSyncPayloadResults resultsForAsset:v8 payloadData:v15];
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier5 = [v8 localIdentifier];
          path = [privateFileURL path];
          *buf = 138412546;
          v34 = localIdentifier5;
          v35 = 2112;
          v36 = path;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] No MediaAnalysis payload data in compute sync resource at %@", buf, 0x16u);
        }

        v12 = 0;
      }

      goto LABEL_47;
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier6 = [v8 localIdentifier];
    *buf = 138412546;
    v34 = localIdentifier6;
    v35 = 1024;
    LODWORD(v36) = a4;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Compute sync resource not locally available (allowDownload: %d)", buf, 0x12u);
  }

LABEL_46:
  v12 = 0;
LABEL_47:

LABEL_13:

  return v12;
}

- (uint64_t)mad_isAnalysisCompleteFromComputeSyncForAsset:()MediaAnalysis taskID:allowDownload:cancel:
{
  v48 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if (([v10 mad_isEligibleForComputeSync] & 1) != 0 && objc_msgSend(v10, "mad_isEligibleForComputeSyncIngestion"))
  {
    if ([self type] != 112)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier = [v10 localIdentifier];
        *buf = 138412546;
        v39 = localIdentifier;
        v40 = 1024;
        LODWORD(v41) = [self type];
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Invalid resource type (%d), unable to extract analysis results from compute sync", buf, 0x12u);
      }

      goto LABEL_12;
    }

    if (v11 && v11[2](v11))
    {
      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        localIdentifier2 = [v10 localIdentifier];
        *buf = 138412290;
        v39 = localIdentifier2;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Analysis extraction from compute sync resource cancelled", buf, 0xCu);
      }

      goto LABEL_12;
    }

    privateFileURL = [self privateFileURL];
    if (!a5 || ([objc_opt_class() mad_disableComputeSyncDownload] & 1) != 0)
    {
      goto LABEL_16;
    }

    v22 = [v10 mad_isEligibleForComputeSyncDownloadWithAnalysisTask:a4];
    if (v22)
    {
      v23 = VCPSignPostLog(v22);
      v24 = os_signpost_id_generate(v23);

      v26 = VCPSignPostLog(v25);
      v27 = v26;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MADDownloadComputeSyncResource", "", buf, 2u);
      }

      v37 = privateFileURL;
      v28 = [MEMORY[0x1E69786E8] vcp_requestFileURLForAssetResource:self withTaskID:a4 toResourceURL:&v37 cancel:v11];
      v29 = v37;

      privateFileURL = v29;
      v31 = VCPSignPostLog(v30);
      v32 = v31;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v32, OS_SIGNPOST_INTERVAL_END, v24, "MADDownloadComputeSyncResource", "", buf, 2u);
      }

      if (!v28 && privateFileURL && ([self isLocallyAvailable] & 1) != 0)
      {
        mad_refetchAsset = [v10 mad_refetchAsset];
        if (mad_refetchAsset)
        {

          v10 = mad_refetchAsset;
LABEL_16:
          v17 = [v10 vcp_needsProcessingForTask:a4];
          v14 = v17 ^ 1u;
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            localIdentifier3 = [v10 localIdentifier];
            v19 = VCPTaskIDDescription(a4);
            v20 = v19;
            v21 = @"complete";
            *buf = 138413314;
            v39 = localIdentifier3;
            v40 = 2112;
            if (v17)
            {
              v21 = @"incomplete";
            }

            v41 = v19;
            v42 = 2112;
            v43 = v21;
            v44 = 2112;
            v45 = privateFileURL;
            v46 = 1024;
            v47 = a5;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] %@ %@ with compute sync resource at %@ (allowDownload: %d)", buf, 0x30u);
          }

          goto LABEL_43;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier4 = [v10 localIdentifier];
          *buf = 138412290;
          v39 = localIdentifier4;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to re-fetch asset after compute sync download attempt", buf, 0xCu);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        localIdentifier5 = [v10 localIdentifier];
        *buf = 138412546;
        v39 = localIdentifier5;
        v40 = 1024;
        LODWORD(v41) = v28;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to download compute sync resource (%d)", buf, 0x12u);
      }
    }

    else if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      localIdentifier6 = [v10 localIdentifier];
      *buf = 138412546;
      v39 = localIdentifier6;
      v40 = 1024;
      LODWORD(v41) = a4;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[%@] Ineligible for compute sync downalod with taskID %d", buf, 0x12u);
    }

    v14 = 0;
LABEL_43:

    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:

  return v14;
}

@end