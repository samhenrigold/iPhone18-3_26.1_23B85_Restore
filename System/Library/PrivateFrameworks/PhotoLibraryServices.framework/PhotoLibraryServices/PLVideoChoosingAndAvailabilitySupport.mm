@interface PLVideoChoosingAndAvailabilitySupport
- (BOOL)_checkIsReallyLocallyAvailableAndAddToRepairListIfNeeded:(id)needed;
- (CGSize)size;
- (NSArray)resourcesNeedingRepair;
- (PLVideoChoosingAndAvailabilitySupport)initWithContext:(id)context assetInformation:(id)information options:(id)options size:(CGSize)size;
- (id)_acceptableResourceVersions;
- (id)_ensureOriginalsAreHighestQuality:(id)quality;
- (id)chooseResourceWithLoadingMode:(int64_t *)mode needsAdjustmentData:(BOOL *)data error:(id *)error;
- (int64_t)_optimalLoadingModeForResource:(id)resource;
- (unsigned)_videoQualityLevelForRequestFallbackToMediumPolicy:(int64_t *)policy;
@end

@implementation PLVideoChoosingAndAvailabilitySupport

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)chooseResourceWithLoadingMode:(int64_t *)mode needsAdjustmentData:(BOOL *)data error:(id *)error
{
  v94[1] = *MEMORY[0x1E69E9840];
  _acceptableResourceVersions = [(PLVideoChoosingAndAvailabilitySupport *)self _acceptableResourceVersions];
  v8 = [(PLVideoResourceContext *)self->_context videoResourcesMatchingVersions:_acceptableResourceVersions];
  if (objc_msgSend_count(v8))
  {
    v75 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v93 = *MEMORY[0x1E696A278];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"zero videos found matching resource versions: %@", _acceptableResourceVersions];
    v94[0] = v11;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    v13 = v12 = error;
    v75 = [v9 errorWithDomain:v10 code:47017 userInfo:v13];

    error = v12;
  }

  if (objc_msgSend_count(v8) && [(PLVideoChoosingOptions *)self->_options restrictToPlayableOnCurrentDevice])
  {
    v14 = [[PLVideoPlaybackResourceChoiceOptimizer alloc] initWithVideoResources:v8];
    preferredVideoResources = [(PLVideoPlaybackResourceChoiceOptimizer *)v14 preferredVideoResources];

    if (!objc_msgSend_count(preferredVideoResources))
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69BFF48];
      v91[0] = *MEMORY[0x1E696A278];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"zero playable videos found"];
      v19 = v18 = error;
      v91[1] = @"PLZeroPlayableVideosErrorKey";
      v92[0] = v19;
      v92[1] = MEMORY[0x1E695E118];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:2];
      v21 = [v16 errorWithDomain:v17 code:47017 userInfo:v20];

      error = v18;
      v75 = v21;
    }

    v8 = preferredVideoResources;
  }

  if (objc_msgSend_count(v8) && [(PLVideoChoosingOptions *)self->_options restrictToStreamable])
  {
    v22 = [[PLVideoStreamingResourceChoiceOptimizer alloc] initWithVideoResources:v8];
    preferredVideoResources2 = [(PLVideoStreamingResourceChoiceOptimizer *)v22 preferredVideoResources];

    if (!objc_msgSend_count(preferredVideoResources2))
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E69BFF48];
      v89[0] = *MEMORY[0x1E696A278];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"zero streamable videos found"];
      v27 = v26 = error;
      v89[1] = @"PLZeroStreamableVideosErrorKey";
      v90[0] = v27;
      v90[1] = MEMORY[0x1E695E118];
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:2];
      v29 = [v24 errorWithDomain:v25 code:47017 userInfo:v28];

      error = v26;
      v75 = v29;
    }

    v8 = preferredVideoResources2;
  }

  if (objc_msgSend_count(v8))
  {
    v76 = 0;
    v30 = [(PLVideoChoosingAndAvailabilitySupport *)self _videoQualityLevelForRequestFallbackToMediumPolicy:&v76];
    v31 = [(PLVideoChoosingAndAvailabilitySupport *)self _ensureOriginalsAreHighestQuality:v8];

    lastObject = [v31 lastObject];
    v70 = v30;
    if (v30 <= 1 && ([(PLVideoChoosingOptions *)self->_options isStreamingAllowed]& 1) == 0 && [(PLVideoChoosingOptions *)self->_options hasValidTimeRange]&& _resourceIsOriginalSlomo(lastObject, self->_assetInformation))
    {
      v76 = 1;
    }

    reverseObjectEnumerator = [v31 reverseObjectEnumerator];
    nextObject = [reverseObjectEnumerator nextObject];
    if (nextObject)
    {
      nextObject3 = nextObject;
      onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent = 0;
      v36 = 0;
      v71 = _acceptableResourceVersions;
      while (1)
      {
        v37 = nextObject3;
        while ([v37 storeClassID] == 3 && ((objc_msgSend(v37, "isOriginalVideo") & 1) != 0 || objc_msgSend(v37, "isOriginalVideoComplement")) && (-[PLVideoChoosingOptions isExplicitUserAction](self->_options, "isExplicitUserAction") & 1) == 0)
        {
          v38 = PLImageManagerGetLog();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "Skipping syndication original video, because the request intent is not a user click", buf, 2u);
          }

          nextObject2 = [reverseObjectEnumerator nextObject];

          v37 = nextObject2;
          if (!nextObject2)
          {
            goto LABEL_58;
          }
        }

        if (v76 && [v37 matchesOrExceedsQualityLevel:2])
        {
          v40 = v76 == 1 ? [onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent isLargeQuality] : 0;
          v41 = 1;
        }

        else
        {
          v40 = 0;
          v41 = 0;
        }

        if (v37 != lastObject && (v41 | [v37 matchesOrExceedsQualityLevel:v70]) != 1)
        {
          break;
        }

        v42 = [(PLVideoChoosingAndAvailabilitySupport *)self _optimalLoadingModeForResource:v37];
        v43 = v42 > v36;
        if (!v40)
        {
          v43 = v42 >= v36;
        }

        if (v43)
        {
          v44 = v42;
          if (v42 < 1)
          {
            v36 = v42;
          }

          else
          {
            v45 = v37;

            v36 = v44;
            onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent = v45;
          }
        }

        _acceptableResourceVersions = v71;
        if (([v37 isLocallyAvailable] & 1) == 0 && (objc_msgSend(v37, "isStreamable") & 1) == 0 && (objc_msgSend(v37, "isDownloadable") & 1) == 0 && (objc_msgSend(v37, "isLocallyGeneratable") & 1) == 0)
        {
          v46 = PLImageManagerGetLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            uuid = [(PLVideoChoosingAssetInformation *)self->_assetInformation uuid];
            isLocallyAvailable = [v37 isLocallyAvailable];
            log = v46;
            isStreamable = [v37 isStreamable];
            isDownloadable = [v37 isDownloadable];
            isLocallyGeneratable = [v37 isLocallyGeneratable];
            *buf = 138544386;
            v80 = uuid;
            v81 = 1024;
            v82 = isLocallyAvailable;
            v83 = 1024;
            v84 = isStreamable;
            v46 = log;
            v85 = 1024;
            v86 = isDownloadable;
            _acceptableResourceVersions = v71;
            v87 = 1024;
            v88 = isLocallyGeneratable;
            _os_log_impl(&dword_19BF1F000, log, OS_LOG_TYPE_ERROR, "Asset %{public}@ video resource is inaccessible (available=%d, streamable=%d, downloadable=%d, generatable=%d", buf, 0x24u);
          }

          [(NSMutableArray *)self->_resourcesNeedingRepair addObject:v37];
        }

        nextObject3 = [reverseObjectEnumerator nextObject];

        if (!nextObject3)
        {
          v37 = 0;
          goto LABEL_58;
        }
      }

      _acceptableResourceVersions = v71;
LABEL_58:
      if (onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v37 = 0;
      v36 = 0;
    }

    if (![(PLVideoChoosingOptions *)self->_options videoVersion]&& [(PLVideoChoosingAssetInformation *)self->_assetInformation hasAdjustments]&& [(PLVideoChoosingAssetInformation *)self->_assetInformation isPhotoIris])
    {
      onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent = [(PLVideoResourceContext *)self->_context onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent];
    }

    else
    {
      onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent = 0;
    }

LABEL_64:

    v49 = objc_msgSend_count(v31);
    goto LABEL_65;
  }

  v36 = 0;
  onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent = 0;
  v31 = v8;
  v49 = objc_msgSend_count(v8);
LABEL_65:
  if (!v49 && ![(PLVideoChoosingOptions *)self->_options videoVersion]&& [(PLVideoChoosingAssetInformation *)self->_assetInformation hasAdjustments]&& ([(PLVideoChoosingAssetInformation *)self->_assetInformation shouldUseNonAdjustedVersion]& 1) == 0 && [(PLVideoChoosingAssetInformation *)self->_assetInformation isOriginalSlomo])
  {
    v50 = [(PLVideoResourceContext *)self->_context videoResourcesMatchingVersions:&unk_1F0FC0240];
    v51 = [v50 indexOfObjectPassingTest:&__block_literal_global_105_109756];
    if (v51 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v52 = v51;
      v53 = PLImageManagerGetLog();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(PLVideoChoosingAssetInformation *)self->_assetInformation uuid];
        *buf = 138543362;
        v80 = uuid2;
        _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Slomo asset (%{public}@) with non-standard adjustment format is missing renders, optimistically returning original video and adjustment data", buf, 0xCu);
      }

      v55 = [v50 objectAtIndexedSubscript:v52];

      v36 = [(PLVideoChoosingAndAvailabilitySupport *)self _optimalLoadingModeForResource:v55];
      onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent = v55;
    }
  }

  if (onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent)
  {
    if (_resourceIsOriginalSlomo(onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent, self->_assetInformation))
    {
      v56 = [(PLVideoChoosingOptions *)self->_options videoVersion]== 0;
    }

    else
    {
      v56 = 0;
    }

    modeCopy2 = mode;
    dataCopy2 = data;
    v57 = v75;
    if (mode)
    {
LABEL_84:
      *modeCopy2 = v36;
    }
  }

  else
  {
    v57 = v75;
    if (!v75)
    {
      v58 = MEMORY[0x1E696ABC0];
      v59 = *MEMORY[0x1E69BFF48];
      v77[0] = *MEMORY[0x1E696A278];
      v77[1] = @"PLZeroPlayableVideosErrorKey";
      v78[0] = @"chooser found zero valid videos";
      v78[1] = MEMORY[0x1E695E118];
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:2];
      v57 = [v58 errorWithDomain:v59 code:47017 userInfo:v60];
    }

    v56 = 0;
    modeCopy2 = mode;
    dataCopy2 = data;
    if (mode)
    {
      goto LABEL_84;
    }
  }

  if (dataCopy2)
  {
    *dataCopy2 = v56;
  }

  if (error)
  {
    v63 = v57;
    *error = v57;
  }

  v64 = onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent;

  return onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent;
}

- (int64_t)_optimalLoadingModeForResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy isLocallyAvailable] && -[PLVideoChoosingAndAvailabilitySupport _checkIsReallyLocallyAvailableAndAddToRepairListIfNeeded:](self, "_checkIsReallyLocallyAvailableAndAddToRepairListIfNeeded:", resourceCopy) && !-[PLVideoChoosingOptions restrictToStreamable](self->_options, "restrictToStreamable"))
  {
    v5 = 5;
  }

  else if ([resourceCopy isLocallyGeneratable] && !-[PLVideoChoosingOptions restrictToStreamable](self->_options, "restrictToStreamable"))
  {
    v5 = 4;
  }

  else if (-[PLVideoChoosingOptions isStreamingAllowed](self->_options, "isStreamingAllowed") && [resourceCopy isStreamable] && !_resourceIsOriginalSlomo(resourceCopy, self->_assetInformation))
  {
    v5 = 3;
  }

  else if ([resourceCopy isDownloadable] && (-[PLVideoChoosingOptions isNetworkAccessAllowed](self->_options, "isNetworkAccessAllowed") & 1) != 0)
  {
    v5 = 2;
  }

  else if ([resourceCopy isDownloadable])
  {
    v5 = [(PLVideoChoosingOptions *)self->_options isNetworkAccessAllowed]^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_checkIsReallyLocallyAvailableAndAddToRepairListIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [(PLVideoResourceContext *)self->_context validateResource:neededCopy];
  if ((v5 & 1) == 0)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Video resource local availability is incorrect", v8, 2u);
    }

    [(NSMutableArray *)self->_resourcesNeedingRepair addObject:neededCopy];
  }

  return v5;
}

- (id)_ensureOriginalsAreHighestQuality:(id)quality
{
  v19 = *MEMORY[0x1E69E9840];
  qualityCopy = quality;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = qualityCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isOriginalVideoComplement] & 1) != 0 || objc_msgSend(v11, "isOriginalVideo"))
        {
          v12 = v11;

          v8 = v12;
        }

        else
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);

    if (v8)
    {
      [v4 addObject:v8];
    }
  }

  else
  {

    v8 = 0;
  }

  return v4;
}

- (unsigned)_videoQualityLevelForRequestFallbackToMediumPolicy:(int64_t *)policy
{
  v18 = *MEMORY[0x1E69E9840];
  if (_videoQualityLevelForRequestFallbackToMediumPolicy__onceToken != -1)
  {
    dispatch_once(&_videoQualityLevelForRequestFallbackToMediumPolicy__onceToken, &__block_literal_global_109773);
  }

  if (!_videoQualityLevelForRequestFallbackToMediumPolicy__forceVideoQualityLevelNum)
  {
    if ([(PLVideoChoosingOptions *)self->_options videoDeliveryMode]!= 3 || ((width = self->_size.width, v9 = self->_size.height, width == *MEMORY[0x1E695F060]) ? (v10 = v9 == *(MEMORY[0x1E695F060] + 8)) : (v10 = 0), v10))
    {
      videoDeliveryMode = [(PLVideoChoosingOptions *)self->_options videoDeliveryMode];
      if (videoDeliveryMode > 2)
      {
        if (videoDeliveryMode == 3)
        {
          if ((+[PLPrefetchConfiguration defaultPrefetchOptimizeMode]- 1) >= 2)
          {
            goto LABEL_32;
          }
        }

        else if (videoDeliveryMode != 4)
        {
          goto LABEL_32;
        }

        videoDeliveryMode = 0;
        unsignedIntValue = 1;
        if (!policy)
        {
          return unsignedIntValue;
        }

        goto LABEL_36;
      }

      if (!videoDeliveryMode)
      {
LABEL_29:
        unsignedIntValue = 0;
        if (!policy)
        {
          return unsignedIntValue;
        }

        goto LABEL_36;
      }

      if (videoDeliveryMode == 2)
      {
        videoDeliveryMode = 0;
        unsignedIntValue = 3;
        if (!policy)
        {
          return unsignedIntValue;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (width >= v9)
      {
        height = self->_size.height;
      }

      else
      {
        height = self->_size.width;
      }

      [(PLVideoResourceContext *)self->_context sizeThresholdForHighQuality];
      if (height > v12)
      {
        videoDeliveryMode = 0;
        goto LABEL_29;
      }
    }

LABEL_32:
    videoDeliveryMode = [(PLVideoChoosingOptions *)self->_options isMediumHighQualityAllowed];
    if (videoDeliveryMode)
    {
      unsignedIntValue = 1;
    }

    else
    {
      unsignedIntValue = 2;
    }

    if (!policy)
    {
      return unsignedIntValue;
    }

LABEL_36:
    *policy = videoDeliveryMode;
    return unsignedIntValue;
  }

  unsignedIntValue = [_videoQualityLevelForRequestFallbackToMediumPolicy__forceVideoQualityLevelNum unsignedIntValue];
  v6 = PLImageManagerGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (unsignedIntValue > 3)
    {
      v7 = @"large";
    }

    else
    {
      v7 = off_1E7566390[unsignedIntValue];
    }

    v14 = v7;
    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Forcing video quality level to %@", &v16, 0xCu);
  }

  return unsignedIntValue;
}

void __92__PLVideoChoosingAndAvailabilitySupport__videoQualityLevelForRequestFallbackToMediumPolicy___block_invoke()
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v0 = [v2 objectForKey:@"PLForceVideoQualityLevel"];
  v1 = _videoQualityLevelForRequestFallbackToMediumPolicy__forceVideoQualityLevelNum;
  _videoQualityLevelForRequestFallbackToMediumPolicy__forceVideoQualityLevelNum = v0;
}

- (id)_acceptableResourceVersions
{
  hasAdjustments = [(PLVideoChoosingAssetInformation *)self->_assetInformation hasAdjustments];
  videoVersion = [(PLVideoChoosingOptions *)self->_options videoVersion];
  if (hasAdjustments)
  {
    v5 = videoVersion == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (([(PLVideoChoosingAssetInformation *)self->_assetInformation shouldUseNonAdjustedVersion]& 1) != 0)
    {
      v8 = &unk_1F0FC01B0;
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (!videoVersion)
  {
LABEL_10:
    v6 = &unk_1F0FC0210;
    v7 = &unk_1F0FC01F8;
    goto LABEL_11;
  }

  if (videoVersion != 1)
  {
    v8 = &unk_1F0FC0228;
    goto LABEL_15;
  }

  v6 = &unk_1F0FC01E0;
  v7 = &unk_1F0FC01C8;
LABEL_11:
  if (hasAdjustments)
  {
    v6 = v7;
  }

  v8 = v6;
LABEL_15:

  return v8;
}

- (NSArray)resourcesNeedingRepair
{
  v2 = [(NSMutableArray *)self->_resourcesNeedingRepair copy];

  return v2;
}

- (PLVideoChoosingAndAvailabilitySupport)initWithContext:(id)context assetInformation:(id)information options:(id)options size:(CGSize)size
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  informationCopy = information;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = PLVideoChoosingAndAvailabilitySupport;
  v15 = [(PLVideoChoosingAndAvailabilitySupport *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_context, context);
    objc_storeStrong(&v16->_assetInformation, information);
    objc_storeStrong(&v16->_options, options);
    v16->_size.width = width;
    v16->_size.height = height;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    resourcesNeedingRepair = v16->_resourcesNeedingRepair;
    v16->_resourcesNeedingRepair = v17;
  }

  return v16;
}

@end