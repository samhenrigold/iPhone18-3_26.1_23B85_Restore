@interface PTAssetReader
+ (void)initialize;
- (BOOL)startReadingFrames:(unint64_t)frames atTime:(id *)time error:(id *)error;
- (BOOL)startReadingFrames:(unint64_t)frames error:(id *)error;
- (BOOL)updateFormatPropertiesFromAsset:(id)asset;
- (PTAssetReader)initWithAsset:(id)asset;
- (PTGlobalCinematographyMetadata)globalCinematographyMetadata;
- (PTGlobalRenderingMetadata)globalRenderingMetadata;
- (PTGlobalStabilizationMetadata)globalStabilizationMetadata;
- (PTGlobalVideoHeaderMetadata)globalVideoHeaderMetadata;
- (id)nextFrame;
- (id)popComposedFrame;
- (unint64_t)estimatedFrameCount;
- (unint64_t)frameCount;
- (void)_decodeGlobalMetadata;
- (void)_decodeMetadata:(id)metadata;
- (void)nextFrame;
- (void)pushComposedFrame:(id)frame;
- (void)stopReadingFrames;
@end

@implementation PTAssetReader

+ (void)initialize
{
  v2 = objc_opt_class();

  [PTSerialization registerSerializationClass:v2];
}

- (void)pushComposedFrame:(id)frame
{
  frameCopy = frame;
  v4 = self->composedFrames;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->composedFrames addObject:frameCopy];
  objc_sync_exit(v4);
}

- (id)popComposedFrame
{
  v3 = self->composedFrames;
  objc_sync_enter(v3);
  if ([(NSMutableArray *)self->composedFrames count])
  {
    v4 = [(NSMutableArray *)self->composedFrames objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->composedFrames removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v3);

  return v4;
}

- (BOOL)updateFormatPropertiesFromAsset:(id)asset
{
  v4 = loadTracksWithMediaType(asset, *MEMORY[0x277CE5EA8]);
  firstObject = [v4 firstObject];
  v6 = firstObject;
  if (!firstObject)
  {
    goto LABEL_9;
  }

  [firstObject estimatedDataRate];
  self->_estimatedDataRate = v7;
  [v6 nominalFrameRate];
  if (v8 == 0.0)
  {
    CMTimeMake(&v23, 1, 30);
  }

  else
  {
    [v6 nominalFrameRate];
    CMTimeMakeWithSeconds(&v23, 1.0 / v9, 90000);
  }

  self->_frameDuration = v23;
  formatDescriptions = [v6 formatDescriptions];
  firstObject2 = [formatDescriptions firstObject];

  if (firstObject2)
  {
    self->_formatDescription = firstObject2;
    v12 = CMFormatDescriptionGetExtensions(firstObject2);
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4D10]];
    YCbCrMatrix = self->_YCbCrMatrix;
    self->_YCbCrMatrix = v13;

    v15 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4C00]];
    colorPrimaries = self->_colorPrimaries;
    self->_colorPrimaries = v15;

    v17 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4CC0]];
    transferFunction = self->_transferFunction;
    self->_transferFunction = v17;

    if (!self->_transferFunction)
    {
      v19 = [v12 objectForKeyedSubscript:*MEMORY[0x277CC4C90]];
      v20 = self->_transferFunction;
      self->_transferFunction = v19;
    }

    v21 = 1;
  }

  else
  {
LABEL_9:
    v21 = 0;
  }

  return v21;
}

- (PTAssetReader)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PTAssetReader;
  v6 = [(PTAssetReader *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
    if ([(PTAssetReader *)v7 updateFormatPropertiesFromAsset:assetCopy])
    {
      [(PTAssetReader *)v7 stopReadingFrames];
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)startReadingFrames:(unint64_t)frames error:(id *)error
{
  v5 = *MEMORY[0x277CC0898];
  v6 = *(MEMORY[0x277CC0898] + 16);
  return [(PTAssetReader *)self startReadingFrames:frames atTime:&v5 error:error];
}

- (BOOL)startReadingFrames:(unint64_t)frames atTime:(id *)time error:(id *)error
{
  framesCopy = frames;
  selfCopy = self;
  v91 = *MEMORY[0x277D85DE8];
  [(PTAssetReader *)self stopReadingFrames];
  v9 = MEMORY[0x277CE6410];
  asset = [(PTAssetReader *)selfCopy asset];
  v11 = [v9 assetReaderWithAsset:asset error:error];
  assetReader = selfCopy->assetReader;
  selfCopy->assetReader = v11;

  v13 = selfCopy->assetReader;
  if (v13)
  {
    asset2 = [(AVAssetReader *)v13 asset];
    v15 = loadTracksWithMediaType(asset2, *MEMORY[0x277CE5EA8]);
    memset(&range2, 0, sizeof(range2));
    v87 = 0u;
    v16 = [v15 countByEnumeratingWithState:&range2 objects:&range1 count:16];
    if (v16)
    {
      v17 = v16;
      errorCopy = error;
      v19 = framesCopy;
      v20 = *range2.start.epoch;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*range2.start.epoch != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*&range2.start.timescale + 8 * i);
          if ([v22 isEnabled])
          {
            framesCopy = v19;
            error = errorCopy;
            v23 = v22;
            goto LABEL_13;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&range2 objects:&range1 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      framesCopy = v19;
      error = errorCopy;
    }

    v23 = 0;
LABEL_13:

    if (v23)
    {
      if (framesCopy)
      {
        timeCopy = time;
        v82 = selfCopy;
        v83 = v23;
        asset3 = [(AVAssetReader *)selfCopy->assetReader asset];
        v25 = loadTracksWithMediaType(asset3, *MEMORY[0x277CE5E70]);
        memset(&range2, 0, sizeof(range2));
        v87 = 0u;
        v26 = [v25 countByEnumeratingWithState:&range2 objects:&range1 count:16];
        if (v26)
        {
          v27 = v26;
          v79 = asset3;
          v80 = framesCopy;
          v28 = *range2.start.epoch;
          while (2)
          {
            for (j = 0; j != v27; ++j)
            {
              if (*range2.start.epoch != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*&range2.start.timescale + 8 * j);
              if ([v30 isEnabled])
              {
                formatDescriptions = [v30 formatDescriptions];
                firstObject = [formatDescriptions firstObject];

                if (firstObject)
                {
                  v33 = CMMetadataFormatDescriptionGetIdentifiers(firstObject);
                  v34 = [@"mdta/" stringByAppendingString:@"com.apple.quicktime.cinematic-video.cinematography"];
                  v35 = [@"mdta/" stringByAppendingString:@"com.apple.quicktime.cinematography-dictionary"];
                  if ([v33 containsObject:v34] & 1) != 0 || (objc_msgSend(v33, "containsObject:", v35))
                  {
                    v36 = v30;

                    goto LABEL_31;
                  }
                }
              }
            }

            v27 = [v25 countByEnumeratingWithState:&range2 objects:&range1 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }

          v36 = 0;
LABEL_31:
          framesCopy = v80;
          asset3 = v79;
        }

        else
        {
          v36 = 0;
        }

        selfCopy = v82;
        if (!v36)
        {
          v76 = MEMORY[0x277CCACA8];
          asset4 = [(AVAssetReader *)v82->assetReader asset];
          v78 = [v76 stringWithFormat:@"Couldn't find metadata track in asset: %@", asset4];
          *error = AssetReaderError(v78);

          v37 = 0;
          v23 = v83;
          goto LABEL_65;
        }

        v23 = v83;
        objc_msgSend_timeRange(v83);
        objc_msgSend_timeRange(v36);
        v40 = CMTimeRangeEqual(&range1, &range2);
        if (!v40)
        {
          v41 = _PTLogSystem(v40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            objc_msgSend_timeRange(v36);
            v42 = *MEMORY[0x277CBECE8];
            range1 = range2;
            v43 = CMTimeRangeCopyDescription(v42, &range1);
            objc_msgSend_timeRange(v83);
            range1 = range2;
            v44 = CMTimeRangeCopyDescription(v42, &range1);
            LODWORD(range1.start.value) = 138412546;
            *(&range1.start.value + 4) = v43;
            LOWORD(range1.start.flags) = 2112;
            *(&range1.start.flags + 2) = v44;
            _os_log_impl(&dword_2243FB000, v41, OS_LOG_TYPE_INFO, "WARNING: meta timeRange (%@) not equal to vide timeRange (%@)", &range1, 0x16u);
          }
        }

        v45 = [objc_alloc(MEMORY[0x277CE6430]) initWithTrack:v36 outputSettings:0];
        v46 = [objc_alloc(MEMORY[0x277CE6420]) initWithAssetReaderTrackOutput:v45];
        metadataAdaptor = v82->metadataAdaptor;
        v82->metadataAdaptor = v46;

        [(AVAssetReader *)v82->assetReader addOutput:v45];
        time = timeCopy;
      }

      if ((framesCopy & 6) == 0)
      {
LABEL_57:
        if (time->var2)
        {
          *&range1.start.value = *&time->var0;
          range1.start.epoch = time->var3;
          *&range2.start.value = *MEMORY[0x277CC08B0];
          range2.start.epoch = *(MEMORY[0x277CC08B0] + 16);
          CMTimeRangeMake(&v84, &range1.start, &range2.start);
          v72 = selfCopy->assetReader;
          range1 = v84;
          [(AVAssetReader *)v72 setTimeRange:&range1];
        }

        if ([(AVAssetReader *)selfCopy->assetReader startReading])
        {
          v37 = 1;
        }

        else
        {
          [(AVAssetReader *)selfCopy->assetReader error];
          *error = v37 = 0;
        }

        goto LABEL_65;
      }

      v48 = objc_opt_new();
      composedFrames = selfCopy->composedFrames;
      selfCopy->composedFrames = v48;

      asset5 = [(AVAssetReader *)selfCopy->assetReader asset];
      v51 = loadTracksWithMediaType(asset5, *MEMORY[0x277CE5E50]);
      memset(&range2, 0, sizeof(range2));
      v87 = 0u;
      v52 = [v51 countByEnumeratingWithState:&range2 objects:&range1 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *range2.start.epoch;
        while (2)
        {
          for (k = 0; k != v53; ++k)
          {
            if (*range2.start.epoch != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*&range2.start.timescale + 8 * k);
            if ([v56 isEnabled])
            {
              v57 = v56;
              goto LABEL_50;
            }
          }

          v53 = [v51 countByEnumeratingWithState:&range2 objects:&range1 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }

      v57 = 0;
LABEL_50:

      if (v57)
      {
        timeCopy2 = time;
        trackID = [v23 trackID];
        trackID2 = [v57 trackID];
        v61 = objc_alloc_init(PTAssetReaderCompositionInstruction);
        *&range1.start.value = *MEMORY[0x277CC08F0];
        range1.start.epoch = *(MEMORY[0x277CC08F0] + 16);
        *&range2.start.value = *MEMORY[0x277CC08B0];
        range2.start.epoch = *(MEMORY[0x277CC08B0] + 16);
        CMTimeRangeMake(&v85, &range1.start, &range2.start);
        range1 = v85;
        [(PTAssetReaderCompositionInstruction *)v61 setTimeRange:&range1];
        [(PTAssetReaderCompositionInstruction *)v61 setVideTrackID:trackID];
        [(PTAssetReaderCompositionInstruction *)v61 setAuxvTrackID:trackID2];
        [(PTAssetReaderCompositionInstruction *)v61 setAssetReader:selfCopy];
        objc_msgSend_timeRange(v23);
        objc_msgSend_timeRange(v57);
        v62 = CMTimeRangeEqual(&range1, &range2);
        if (!v62)
        {
          v63 = _PTLogSystem(v62);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            objc_msgSend_timeRange(v57);
            v64 = StringFromTimeRange(&range1);
            objc_msgSend_timeRange(v23);
            v65 = StringFromTimeRange(&range1);
            LODWORD(range1.start.value) = 138412546;
            *(&range1.start.value + 4) = v64;
            LOWORD(range1.start.flags) = 2112;
            *(&range1.start.flags + 2) = v65;
            _os_log_impl(&dword_2243FB000, v63, OS_LOG_TYPE_INFO, "WARNING: auxv timeRange (%@) not equal to vide timeRange (%@)", &range1, 0x16u);
          }
        }

        videoComposition = [MEMORY[0x277CE6568] videoComposition];
        videoComposition = selfCopy->videoComposition;
        selfCopy->videoComposition = videoComposition;

        [(AVMutableVideoComposition *)selfCopy->videoComposition setCustomVideoCompositorClass:objc_opt_class()];
        [(AVMutableVideoComposition *)selfCopy->videoComposition setSourceTrackIDForFrameTiming:trackID];
        [v23 naturalSize];
        [(AVMutableVideoComposition *)selfCopy->videoComposition setRenderSize:?];
        *&range1.start.value = *&selfCopy->_frameDuration.value;
        range1.start.epoch = selfCopy->_frameDuration.epoch;
        [(AVMutableVideoComposition *)selfCopy->videoComposition setFrameDuration:&range1];
        v89 = v61;
        v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
        [(AVMutableVideoComposition *)selfCopy->videoComposition setInstructions:v68];

        v88[0] = v23;
        v88[1] = v57;
        v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
        v70 = [objc_alloc(MEMORY[0x277CE6438]) initWithVideoTracks:v69 videoSettings:0];
        videoCompositionOutput = selfCopy->videoCompositionOutput;
        selfCopy->videoCompositionOutput = v70;

        [(AVAssetReaderVideoCompositionOutput *)selfCopy->videoCompositionOutput setVideoComposition:selfCopy->videoComposition];
        [(AVAssetReaderVideoCompositionOutput *)selfCopy->videoCompositionOutput setAlwaysCopiesSampleData:0];
        if ([(AVAssetReader *)selfCopy->assetReader canAddOutput:selfCopy->videoCompositionOutput])
        {
          [(AVAssetReader *)selfCopy->assetReader addOutput:selfCopy->videoCompositionOutput];

          time = timeCopy2;
          goto LABEL_57;
        }

        *error = AssetReaderError(@"Cannot add videoCompositionOutput to assetReader");

        goto LABEL_64;
      }

      v73 = MEMORY[0x277CCACA8];
      asset6 = [(AVAssetReader *)selfCopy->assetReader asset];
      [v73 stringWithFormat:@"Couldn't find disparity track in asset: %@", asset6];
    }

    else
    {
      v38 = MEMORY[0x277CCACA8];
      asset6 = [(AVAssetReader *)selfCopy->assetReader asset];
      [v38 stringWithFormat:@"Couldn't find video track in asset: %@", asset6];
    }
    v74 = ;
    *error = AssetReaderError(v74);

LABEL_64:
    v37 = 0;
LABEL_65:

    return v37;
  }

  return 0;
}

- (void)stopReadingFrames
{
  assetReader = self->assetReader;
  if (assetReader)
  {
    [(AVAssetReader *)assetReader cancelReading];
    v4 = self->assetReader;
    self->assetReader = 0;
  }

  metadataAdaptor = self->metadataAdaptor;
  self->metadataAdaptor = 0;

  videoComposition = self->videoComposition;
  self->videoComposition = 0;

  videoCompositionOutput = self->videoCompositionOutput;
  self->videoCompositionOutput = 0;

  composedFrames = self->composedFrames;
  self->composedFrames = 0;

  self->lastDecodedFrameIndex = -1;
}

- (unint64_t)estimatedFrameCount
{
  asset = [(PTAssetReader *)self asset];
  v4 = loadTracksWithMediaType(asset, *MEMORY[0x277CE5EA8]);

  firstObject = [v4 firstObject];
  v6 = firstObject;
  if (!firstObject)
  {
    goto LABEL_6;
  }

  asset2 = [(PTAssetReader *)self asset];
  v8 = asset2;
  if (asset2)
  {
    objc_msgSend_duration(asset2);
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  [v6 nominalFrameRate];
  v11 = Seconds * v10;

  v12 = vcvtad_u64_f64(v11);
  if (!v12)
  {
LABEL_6:
    v13 = _PTLogSystem(firstObject);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTAssetReader *)v13 estimatedFrameCount];
    }

    v12 = 0;
  }

  return v12;
}

- (unint64_t)frameCount
{
  result = self->_cachedAccurateFrameCount;
  if (!result)
  {
    [(PTAssetReader *)self startReadingFrames:4];
    while (1)
    {
      nextFrame = [(PTAssetReader *)self nextFrame];

      if (!nextFrame)
      {
        break;
      }

      ++self->_cachedAccurateFrameCount;
    }

    [(PTAssetReader *)self stopReadingFrames];
    return self->_cachedAccurateFrameCount;
  }

  return result;
}

- (PTGlobalCinematographyMetadata)globalCinematographyMetadata
{
  globalCinematographyMetadata = self->_globalCinematographyMetadata;
  if (!globalCinematographyMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalCinematographyMetadata = self->_globalCinematographyMetadata;
  }

  return globalCinematographyMetadata;
}

- (PTGlobalRenderingMetadata)globalRenderingMetadata
{
  globalRenderingMetadata = self->_globalRenderingMetadata;
  if (!globalRenderingMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalRenderingMetadata = self->_globalRenderingMetadata;
  }

  return globalRenderingMetadata;
}

- (PTGlobalStabilizationMetadata)globalStabilizationMetadata
{
  globalStabilizationMetadata = self->_globalStabilizationMetadata;
  if (!globalStabilizationMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalStabilizationMetadata = self->_globalStabilizationMetadata;
  }

  return globalStabilizationMetadata;
}

- (PTGlobalVideoHeaderMetadata)globalVideoHeaderMetadata
{
  globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
  if (!globalVideoHeaderMetadata)
  {
    [(PTAssetReader *)self _decodeGlobalMetadata];
    globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
  }

  return globalVideoHeaderMetadata;
}

- (void)_decodeGlobalMetadata
{
  v56 = *MEMORY[0x277D85DE8];
  asset = [(PTAssetReader *)self asset];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy_;
  v53 = __Block_byref_object_dispose_;
  v54 = 0;
  v4 = dispatch_semaphore_create(0);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __loadMetadataForFormat_block_invoke;
  v45[3] = &unk_278522F28;
  v46 = @"com.apple.quicktime.mdta";
  v48 = &v49;
  v5 = v4;
  v47 = v5;
  [asset loadMetadataForFormat:@"com.apple.quicktime.mdta" completionHandler:v45];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v50[5];

  _Block_object_dispose(&v49, 8);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v8)
  {
    v9 = *v42;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v12 isEqualToString:@"com.apple.quicktime.cinematic-video"];

        if (v13)
        {
          value = [v11 value];
          v40 = 0;
          v17 = [PTGlobalVideoMetadata deserializeMetadataWithType:2 fromGlobalMetadata:value error:&v40];
          v18 = v40;
          globalRenderingMetadata = self->_globalRenderingMetadata;
          self->_globalRenderingMetadata = v17;

          if (v18)
          {
            v21 = _PTLogSystem(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v39 = v18;
          v22 = [PTGlobalVideoMetadata deserializeMetadataWithType:3 fromGlobalMetadata:value error:&v39];
          v23 = v39;

          globalStabilizationMetadata = self->_globalStabilizationMetadata;
          self->_globalStabilizationMetadata = v22;

          if (v23)
          {
            v26 = _PTLogSystem(v25);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v38 = v23;
          v27 = [PTGlobalVideoMetadata deserializeMetadataWithType:4 fromGlobalMetadata:value error:&v38];
          v28 = v38;

          globalCinematographyMetadata = self->_globalCinematographyMetadata;
          self->_globalCinematographyMetadata = v27;

          if (v28)
          {
            v31 = _PTLogSystem(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v37 = v28;
          v32 = [PTGlobalVideoMetadata deserializeMetadataWithType:1 fromGlobalMetadata:value error:&v37];
          v33 = v37;

          globalVideoHeaderMetadata = self->_globalVideoHeaderMetadata;
          self->_globalVideoHeaderMetadata = v32;

          if (v33)
          {
            v36 = _PTLogSystem(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [PTAssetReader _decodeGlobalMetadata];
            }
          }

          v15 = v7;
          goto LABEL_28;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v41 objects:v55 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = _PTLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(PTAssetReader *)v15 _decodeGlobalMetadata];
  }

LABEL_28:
}

- (void)_decodeMetadata:(id)metadata
{
  v59[2] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v59[0] = @"com.apple.quicktime.camera-dictionary";
  v59[1] = @"com.apple.quicktime.cinematography-dictionary";
  [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = v52 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v50;
    v47 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v49 + 1) + 8 * i);
        v10 = [metadataCopy objectForKeyedSubscript:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [metadataCopy objectForKeyedSubscript:v9];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v14 = [metadataCopy objectForKeyedSubscript:v9];
            objc_opt_class();
            v15 = objc_opt_isKindOfClass();

            if (v15)
            {
              v17 = [metadataCopy objectForKeyedSubscript:v9];
              v57[0] = objc_opt_class();
              v57[1] = objc_opt_class();
              v57[2] = objc_opt_class();
              v57[3] = objc_opt_class();
              v57[4] = objc_opt_class();
              v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:5];
              v19 = MEMORY[0x277CCAAC8];
              v20 = [MEMORY[0x277CBEB98] setWithArray:v18];
              v48 = 0;
              v21 = [v19 unarchivedObjectOfClasses:v20 fromData:v17 error:&v48];
              v22 = v48;

              if (v22)
              {
                v24 = _PTLogSystem(v23);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v54 = v9;
                  v55 = 2112;
                  v56 = v22;
                  _os_log_error_impl(&dword_2243FB000, v24, OS_LOG_TYPE_ERROR, "ERROR: Failed to decode metadata dictionary for %@. Decoder failed: %@", buf, 0x16u);
                }
              }

              else
              {
                [metadataCopy setObject:v21 forKeyedSubscript:v9];
              }

              v4 = v47;
            }

            else
            {
              v22 = _PTLogSystem(v16);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v54 = v9;
                _os_log_error_impl(&dword_2243FB000, v22, OS_LOG_TYPE_ERROR, "ERROR: Failed to decode metadata dictionary for %@. Value is not NSData.", buf, 0xCu);
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v6);
  }

  v25 = [metadataCopy objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];

  if (v25)
  {
    v26 = [metadataCopy objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];
    globalRenderingMetadata = [(PTAssetReader *)self globalRenderingMetadata];
    majorVersion = [globalRenderingMetadata majorVersion];
    globalRenderingMetadata2 = [(PTAssetReader *)self globalRenderingMetadata];
    v30 = +[PTTimedRenderingMetadata objectFromData:withMajorVersion:minorVersion:](PTTimedRenderingMetadata, "objectFromData:withMajorVersion:minorVersion:", v26, majorVersion, [globalRenderingMetadata2 minorVersion]);

    if (v30)
    {
      [metadataCopy setObject:v30 forKeyedSubscript:@"com.apple.quicktime.cinematic-video.rendering"];
    }

    else
    {
      v32 = _PTLogSystem(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(PTAssetReader *)metadataCopy _decodeMetadata:?];
      }
    }
  }

  v33 = [metadataCopy objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];

  if (v33)
  {
    v34 = [metadataCopy objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];
    globalStabilizationMetadata = [(PTAssetReader *)self globalStabilizationMetadata];
    majorVersion2 = [globalStabilizationMetadata majorVersion];
    globalStabilizationMetadata2 = [(PTAssetReader *)self globalStabilizationMetadata];
    v38 = +[PTTimedStabilizationMetadata objectFromData:withMajorVersion:minorVersion:](PTTimedStabilizationMetadata, "objectFromData:withMajorVersion:minorVersion:", v34, majorVersion2, [globalStabilizationMetadata2 minorVersion]);

    if (v38)
    {
      [metadataCopy setObject:v38 forKeyedSubscript:@"com.apple.quicktime.cinematic-video.stabilization"];
    }

    else
    {
      v40 = _PTLogSystem(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [(PTAssetReader *)metadataCopy _decodeMetadata:?];
      }
    }
  }

  v41 = [metadataCopy objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];

  if (v41)
  {
    v42 = [metadataCopy objectForKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];
    v43 = [PTSerialization objectFromData:v42 error:0];

    if (v43)
    {
      [metadataCopy setObject:v43 forKeyedSubscript:@"com.apple.quicktime.cinematic-video.cinematography"];
    }

    else
    {
      v45 = _PTLogSystem(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [(PTAssetReader *)metadataCopy _decodeMetadata:?];
      }
    }
  }
}

- (id)nextFrame
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  ++self->lastDecodedFrameIndex;
  v4 = objc_opt_new();
  [v4 setIndex:self->lastDecodedFrameIndex];
  metadataAdaptor = self->metadataAdaptor;
  if (metadataAdaptor)
  {
    nextTimedMetadataGroup = [(AVAssetReaderOutputMetadataAdaptor *)metadataAdaptor nextTimedMetadataGroup];
    if (nextTimedMetadataGroup)
    {
      selfCopy = self;
      v34 = v4;
      v35 = v3;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v56 = *MEMORY[0x277CC0898];
      v8 = *(MEMORY[0x277CC0898] + 12);
      v57 = *(MEMORY[0x277CC0898] + 8);
      v9 = *(MEMORY[0x277CC0898] + 16);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v32 = nextTimedMetadataGroup;
      items = [nextTimedMetadataGroup items];
      v11 = [items countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v52;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v52 != v13)
            {
              objc_enumerationMutation(items);
            }

            v15 = *(*(&v51 + 1) + 8 * i);
            if (v8)
            {
              if (v15)
              {
                objc_msgSend_time(*(*(&v51 + 1) + 8 * i));
              }

              else
              {
                memset(time1, 0, 24);
              }

              time2.value = v56;
              time2.timescale = v57;
              time2.flags = v8;
              time2.epoch = v9;
              if (CMTimeCompare(time1, &time2))
              {
                NSLog(&cfstr_WarningMetadat.isa);
              }
            }

            else
            {
              if (v15)
              {
                objc_msgSend_time(*(*(&v51 + 1) + 8 * i));
                v8 = *&time1[12];
                v9 = *&time1[16];
              }

              else
              {
                v9 = 0;
                v8 = 0;
                memset(time1, 0, 24);
              }

              v56 = *time1;
              v57 = *&time1[8];
            }

            value = [v15 value];
            v17 = [v15 key];
            [dictionary setObject:value forKeyedSubscript:v17];
          }

          v12 = [items countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v12);
      }

      self = selfCopy;
      [(PTAssetReader *)selfCopy _decodeMetadata:dictionary];
      v4 = v34;
      [v34 setMetadata:dictionary];
      *time1 = v56;
      *&time1[8] = v57;
      *&time1[12] = v8;
      *&time1[16] = v9;
      [v34 setMetadataTime:time1];
      if ((v8 & 1) == 0)
      {
        NSLog(&cfstr_WarningMetadat_0.isa);
      }

      v3 = v35;
      nextTimedMetadataGroup = v32;
    }

    else if (!self->videoCompositionOutput)
    {

      v4 = 0;
    }
  }

  videoCompositionOutput = self->videoCompositionOutput;
  if (!videoCompositionOutput)
  {
    goto LABEL_46;
  }

  copyNextSampleBuffer = [(AVAssetReaderVideoCompositionOutput *)videoCompositionOutput copyNextSampleBuffer];
  if (!copyNextSampleBuffer)
  {
    v21 = v4;
    v4 = 0;
LABEL_45:

LABEL_46:
    v4 = v4;
    v26 = v4;
    goto LABEL_47;
  }

  CFRelease(copyNextSampleBuffer);
  popComposedFrame = [(PTAssetReader *)self popComposedFrame];
  if (popComposedFrame)
  {
    v21 = popComposedFrame;
    objc_msgSend_time(popComposedFrame);
    *time1 = v48;
    *&time1[16] = v49;
    [v4 setTime:time1];
    [v4 setColorBuffer:{CVPixelBufferRetain(objc_msgSend(v21, "colorBuffer"))}];
    objc_msgSend_time(v21);
    *time1 = v46;
    *&time1[16] = v47;
    [v4 setColorBufferTime:time1];
    videoTracks = [(AVAssetReaderVideoCompositionOutput *)self->videoCompositionOutput videoTracks];
    v23 = [videoTracks objectAtIndexedSubscript:0];
    v24 = v23;
    if (v23)
    {
      objc_msgSend_preferredTransform(v23);
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
    }

    *time1 = v43;
    *&time1[16] = v44;
    v42 = v45;
    [v4 setColorBufferPreferredTransform:time1];

    if ([v21 auxBuffer])
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType([v21 auxBuffer]);
      if (PixelFormatType == 1751411059)
      {
        [v4 setDisparityBuffer:{CVPixelBufferRetain(objc_msgSend(v21, "auxBuffer"))}];
        objc_msgSend_time(v21);
        *time1 = v39;
        *&time1[16] = v40;
        [v4 setDisparityBufferTime:time1];
        videoTracks2 = [(AVAssetReaderVideoCompositionOutput *)self->videoCompositionOutput videoTracks];
        v29 = [videoTracks2 objectAtIndexedSubscript:1];
        v30 = v29;
        if (v29)
        {
          objc_msgSend_preferredTransform(v29);
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
          v36 = 0u;
        }

        *time1 = v36;
        *&time1[16] = v37;
        v42 = v38;
        [v4 setDisparityBufferPreferredTransform:time1];
      }

      else
      {
        videoTracks2 = _PTLogSystem(PixelFormatType);
        if (os_log_type_enabled(videoTracks2, OS_LOG_TYPE_ERROR))
        {
          [(PTAssetReader *)v4 nextFrame];
        }
      }
    }

    goto LABEL_45;
  }

  v25 = _PTLogSystem(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [(PTAssetReader *)v4 nextFrame];
  }

  v26 = 0;
LABEL_47:

  objc_autoreleasePoolPop(v3);
  return v26;
}

- (void)_decodeMetadata:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v3, v4, "Failed to deserialize timed rendering metadata: %@", v5, v6, v7, v8);
}

- (void)_decodeMetadata:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v3, v4, "Failed to deserialize timed stabilization metadata: %@", v5, v6, v7, v8);
}

- (void)_decodeMetadata:(void *)a1 .cold.3(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v3, v4, "Failed to deserialize cinematography metadata: %@", v5, v6, v7, v8);
}

- (void)nextFrame
{
  [self index];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_4(&dword_2243FB000, v1, v2, "Failed to get composed frame %lu from custom compositor", v3, v4, v5, v6);
}

@end