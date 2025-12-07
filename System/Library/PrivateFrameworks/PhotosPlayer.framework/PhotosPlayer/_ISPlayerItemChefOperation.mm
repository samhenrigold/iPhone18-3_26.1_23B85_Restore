@interface _ISPlayerItemChefOperation
- ($542DF6A934A12223D4D27E794AA667E2)trimmedTimeRange;
- (_ISPlayerItemChefOperation)initWithAsset:(id)asset trimmedTimeRange:(id *)range photoTime:(id *)time includeAudio:(BOOL)audio includeVideo:(BOOL)video resultHandler:(id)handler;
- (void)_handleValuesDidLoad;
- (void)_preparePlayerItem;
- (void)main;
@end

@implementation _ISPlayerItemChefOperation

- ($542DF6A934A12223D4D27E794AA667E2)trimmedTimeRange
{
  v3 = *&self[6].var1.var1;
  *&retstr->var0.var0 = *&self[6].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[7].var0.var0;
  return self;
}

- (void)_preparePlayerItem
{
  v99 = *MEMORY[0x277D85DE8];
  asset = [(_ISPlayerItemChefOperation *)self asset];
  includeAudio = [(_ISPlayerItemChefOperation *)self includeAudio];
  resultHandler = [(_ISPlayerItemChefOperation *)self resultHandler];
  v91 = 0;
  v6 = [asset statusOfValueForKey:@"tracks" error:&v91];
  v7 = v91;
  if (v6 == 3)
  {
    v8 = ISGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.start.value) = 134218242;
      *(&buf.start.value + 4) = 3;
      LOWORD(buf.start.flags) = 2112;
      *(&buf.start.flags + 2) = v7;
      _os_log_error_impl(&dword_25E667000, v8, OS_LOG_TYPE_ERROR, "Property loading status:%ld error:%@", &buf, 0x16u);
    }

    v9 = resultHandler[2];
    *&buf.start.value = *MEMORY[0x277CC0898];
    buf.start.epoch = *(MEMORY[0x277CC0898] + 16);
    v9(resultHandler, 0, 0, &buf, v7);
  }

  else
  {
    v10 = *MEMORY[0x277CE5EA8];
    v11 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5EA8] forAsset:asset];
    memset(&buf, 0, sizeof(buf));
    firstObject = [v11 firstObject];
    v13 = firstObject;
    v69 = resultHandler;
    if (firstObject)
    {
      objc_msgSend_timeRange(firstObject);
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v87 objects:v97 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v88;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v88 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v87 + 1) + 8 * i);
          if (v19)
          {
            objc_msgSend_timeRange(v19);
          }

          else
          {
            memset(&otherRange, 0, sizeof(otherRange));
          }

          range = buf;
          CMTimeRangeGetUnion(&v96, &range, &otherRange);
          buf = v96;
        }

        v16 = [v14 countByEnumeratingWithState:&v87 objects:v97 count:16];
      }

      while (v16);
    }

    v20 = objc_alloc_init(MEMORY[0x277CE6548]);
    v84 = v7;
    v96 = buf;
    v67 = *MEMORY[0x277CC0898];
    *&otherRange.start.value = *MEMORY[0x277CC0898];
    v66 = *(MEMORY[0x277CC0898] + 16);
    otherRange.start.epoch = v66;
    v70 = asset;
    v21 = [MEMORY[0x277D3B450] insertTimeRange:&v96 ofAsset:asset atTime:&otherRange intoMutableComposition:v20 error:&v84];
    v22 = v84;

    v23 = [v20 tracksWithMediaType:v10];
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __48___ISPlayerItemChefOperation__preparePlayerItem__block_invoke;
    v82[3] = &unk_279A29F38;
    v24 = v14;
    v83 = v24;
    [v23 enumerateObjectsUsingBlock:v82];

    v68 = v24;
    if (v21)
    {
      v65 = v22;
      v25 = MEMORY[0x277CE65B0];
      v26 = [v20 copy];
      v27 = [v25 playerItemWithAsset:v26];

      LODWORD(v28) = 2139095039;
      [v27 setSpeedThresholdForIFrameOnlyPlayback:v28];
      [v27 setVideoApertureMode:*MEMORY[0x277CE62A8]];
      if (includeAudio)
      {
        flags = buf.duration.flags;
        if ((buf.duration.flags & 0x1D) == 1)
        {
          value = buf.duration.value;
          if (buf.duration.value >= 1)
          {
            v61 = v27;
            v63 = v20;
            timescale = buf.duration.timescale;
            epoch = buf.duration.epoch;
            v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
            memset(&otherRange, 0, 24);
            CMTimeMakeWithSeconds(&otherRange.start, 0.3, 600);
            v96.start.value = value;
            v96.start.timescale = timescale;
            v96.start.flags = flags;
            v96.start.epoch = epoch;
            CMTimeMultiplyByRatio(&range.start, &v96.start, 1, 2);
            time1 = otherRange.start;
            CMTimeMinimum(&v96.start, &time1, &range.start);
            otherRange.start.epoch = v96.start.epoch;
            *&otherRange.start.value = *&v96.start.value;
            memset(&range, 0, 24);
            v96.start.value = value;
            v96.start.timescale = timescale;
            v96.start.flags = flags;
            v96.start.epoch = epoch;
            time1 = otherRange.start;
            CMTimeSubtract(&range.start, &v96.start, &time1);
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v34 = [MEMORY[0x277D3B450] tracksWithMediaType:*MEMORY[0x277CE5E48] forAsset:v70];
            v35 = [v34 countByEnumeratingWithState:&v77 objects:v95 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v78;
              v71 = *MEMORY[0x277CC08F0];
              v38 = *(MEMORY[0x277CC08F0] + 16);
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v78 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v40 = [MEMORY[0x277CE6540] audioMixInputParametersWithTrack:{*(*(&v77 + 1) + 8 * j), v61}];
                  *&time1.value = v71;
                  time1.epoch = v38;
                  duration = otherRange.start;
                  CMTimeRangeMake(&v96, &time1, &duration);
                  LODWORD(v41) = 1.0;
                  [v40 setVolumeRampFromStartVolume:&v96 toEndVolume:0.0 timeRange:v41];
                  time1 = range.start;
                  duration = otherRange.start;
                  CMTimeRangeMake(&v96, &time1, &duration);
                  LODWORD(v42) = 1.0;
                  [v40 setVolumeRampFromStartVolume:&v96 toEndVolume:v42 timeRange:0.0];
                  [v33 addObject:v40];
                }

                v36 = [v34 countByEnumeratingWithState:&v77 objects:v95 count:16];
              }

              while (v36);
            }

            v43 = objc_alloc_init(MEMORY[0x277CE6538]);
            [v43 setInputParameters:v33];
            [v61 setAudioMix:v43];

            v27 = v61;
            v20 = v63;
          }
        }
      }

      if ([(_ISPlayerItemChefOperation *)self isCancelled])
      {
        resultHandler = v69;
        v44 = v69[2];
        *&v96.start.value = v67;
        v96.start.epoch = v66;
        v44(v69, 0, 0, &v96, 0);
        asset = v70;
        v22 = v65;
      }

      else
      {
        v64 = v20;
        v47 = *MEMORY[0x277CBED28];
        v48 = *MEMORY[0x277CD6378];
        v93[0] = *MEMORY[0x277CD6380];
        v93[1] = v48;
        v49 = *MEMORY[0x277CD6388];
        v94[0] = v47;
        v94[1] = v49;
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v62 = v27;
        tracks = [v27 tracks];
        v52 = [tracks countByEnumeratingWithState:&v72 objects:v92 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v73;
          do
          {
            for (k = 0; k != v53; ++k)
            {
              if (*v73 != v54)
              {
                objc_enumerationMutation(tracks);
              }

              v56 = *(*(&v72 + 1) + 8 * k);
              assetTrack = [v56 assetTrack];
              mediaType = [assetTrack mediaType];
              v59 = [mediaType isEqualToString:v10];

              if (v59)
              {
                [v56 setVideoEnhancementFilterOptions:v50];
              }
            }

            v53 = [tracks countByEnumeratingWithState:&v72 objects:v92 count:16];
          }

          while (v53);
        }

        if (_preparePlayerItem_onceToken != -1)
        {
          dispatch_once(&_preparePlayerItem_onceToken, &__block_literal_global_61);
        }

        resultHandler = v69;
        asset = v70;
        v20 = v64;
        v22 = v65;
        v27 = v62;
        [v62 setImageQueueInterpolationCurve:_preparePlayerItem_InterpolationCurveControlPoints];
        memset(&v96, 0, 24);
        if (v70)
        {
          objc_msgSend_duration(v70);
        }

        if (v69)
        {
          v60 = v69[2];
          *&otherRange.start.value = *&v96.start.value;
          otherRange.start.epoch = v96.start.epoch;
          v60(v69, 1, v62, &otherRange, v65);
        }
      }
    }

    else
    {
      v45 = ISGetLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v96.start.value) = 138412290;
        *(&v96.start.value + 4) = v22;
        _os_log_error_impl(&dword_25E667000, v45, OS_LOG_TYPE_ERROR, "Error inserting asset contents into composition: %@", &v96, 0xCu);
      }

      resultHandler = v69;
      v46 = v69[2];
      *&v96.start.value = v67;
      v96.start.epoch = v66;
      v46(v69, 0, 0, &v96, v22);
      asset = v70;
    }

    v7 = v22;
  }
}

- (void)_handleValuesDidLoad
{
  if (([(_ISPlayerItemChefOperation *)self isCancelled]& 1) == 0)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50___ISPlayerItemChefOperation__handleValuesDidLoad__block_invoke;
    block[3] = &unk_279A2A180;
    block[4] = self;
    dispatch_async(workQueue, block);
  }
}

- (void)main
{
  asset = [(_ISPlayerItemChefOperation *)self asset];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34___ISPlayerItemChefOperation_main__block_invoke;
  v4[3] = &unk_279A2A3C0;
  objc_copyWeak(&v5, &location);
  [asset loadValuesAsynchronouslyForKeys:&unk_28705CEE0 completionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (_ISPlayerItemChefOperation)initWithAsset:(id)asset trimmedTimeRange:(id *)range photoTime:(id *)time includeAudio:(BOOL)audio includeVideo:(BOOL)video resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = _ISPlayerItemChefOperation;
  v17 = [(_ISPlayerItemChefOperation *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, asset);
    v20 = *&range->var0.var3;
    v19 = *&range->var1.var1;
    *&v18->_trimmedTimeRange.start.value = *&range->var0.var0;
    *&v18->_trimmedTimeRange.start.epoch = v20;
    *&v18->_trimmedTimeRange.duration.timescale = v19;
    v21 = *&time->var0;
    v18->_photoTime.epoch = time->var3;
    *&v18->_photoTime.value = v21;
    v18->_includeAudio = audio;
    v18->_includeVideo = video;
    v22 = [handlerCopy copy];
    resultHandler = v18->_resultHandler;
    v18->_resultHandler = v22;

    v24 = dispatch_queue_create("com.apple.playeritemchef", 0);
    workQueue = v18->_workQueue;
    v18->_workQueue = v24;
  }

  return v18;
}

@end