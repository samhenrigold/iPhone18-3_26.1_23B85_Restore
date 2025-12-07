@interface CNAssetInfo
+ (void)checkIfCinematic:(AVAsset *)asset completionHandler:(void *)completionHandler;
+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
+ (void)loadFromCinematicVideoTrack:(id)track completionHandler:(id)handler;
- (AVAsset)asset;
- (CGAffineTransform)preferredTransform;
- (CGSize)naturalSize;
- (CGSize)preferredSize;
- (CMTimeRange)timeRange;
- (NSArray)allCinematicTracks;
- (NSArray)sampleDataTrackIDs;
- (NSArray)videoCompositionTrackIDs;
- (NSArray)videoCompositionTracks;
- (id)_initWithVideoTrack:(id)track disparityTrack:(id)disparityTrack metadataTrack:(id)metadataTrack;
@end

@implementation CNAssetInfo

+ (void)checkIfCinematic:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CNAssetInfo_checkIfCinematic_completionHandler___block_invoke;
  v7[3] = &unk_278A16150;
  v8 = v5;
  v6 = v5;
  [CNAssetInfo loadFromAsset:asset completionHandler:v7];
}

uint64_t __50__CNAssetInfo_checkIfCinematic_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 16))(v3, v5);
}

+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v6 = asset;
  v7 = completionHandler;
  v8 = *MEMORY[0x277CE5EA8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke;
  v11[3] = &unk_278A161A0;
  v12 = v6;
  v13 = v7;
  selfCopy = self;
  v9 = v7;
  v10 = v6;
  [(AVAsset *)v10 loadTracksWithMediaType:v8 completionHandler:v11];
}

void __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v18 = v4;
  v19 = v5;
  if (v5)
  {
    v6 = _CNLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_cold_1();
    }

    v7 = _CNCinematicError(3, v19);
    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  else
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy_;
    v33[4] = __Block_byref_object_dispose_;
    v34 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v8 = dispatch_group_create();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:{16, v4}];
    if (v10)
    {
      v11 = *v26;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v13 isEnabled])
          {
            dispatch_group_enter(v8);
            v14 = *(a1 + 48);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_2;
            v21[3] = &unk_278A16178;
            v23 = v33;
            v24 = &v29;
            v22 = v8;
            [v14 loadFromCinematicVideoTrack:v13 completionHandler:v21];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v10);
    }

    v15 = dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v30 + 24) == 1)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v16 = _CNLogSystem(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_cold_2(v16);
      }

      v17 = _CNCinematicError(3, 0);
      (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(v33, 8);
  }
}

void __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (!a3)
  {
    v6 = [v9 cinematicDisparityTrack];
    if ([v6 isEnabled])
    {
      v7 = [v9 cinematicMetadataTrack];
      v8 = [v7 isEnabled];

      if (v8)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)loadFromCinematicVideoTrack:(id)track completionHandler:(id)handler
{
  trackCopy = track;
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke;
  v11[3] = &unk_278A161F0;
  v12 = trackCopy;
  v13 = handlerCopy;
  selfCopy = self;
  v8 = *MEMORY[0x277CE61A8];
  v9 = handlerCopy;
  v10 = trackCopy;
  _CNLoadFirstAssociatedTrack(v10, v8, v11);
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = _CNLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4;
    v20 = &unk_278A161C8;
    v21 = v9;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v23 = v10;
    v24 = v11;
    v22 = v5;
    v12 = v21;
    v13 = &v17;
    v14 = [v12 asset];
    v15 = *MEMORY[0x277CE5E70];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = ___CNLoadMetadataTrackForVideoTrack_block_invoke;
    v25[3] = &unk_278A16018;
    v26 = v12;
    v27 = v13;
    v16 = v12;
    [v14 loadTracksWithMediaType:v15 completionHandler:v25];
  }
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = _CNLogSystem(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_2();
    }

    v17 = 3;
    v18 = v7;
    goto LABEL_12;
  }

  v8 = [v5 formatDescriptions];
  v9 = [v8 firstObject];

  if (!v9 || (CMMetadataFormatDescriptionGetIdentifiers(v9), v11 = objc_claimAutoreleasedReturnValue(), [@"mdta/" stringByAppendingString:0x284A05300], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "containsObject:", v12), v12, v11, (v13 & 1) == 0))
  {
    v19 = _CNLogSystem(v10);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_1();
    }

    v17 = 4;
    v18 = 0;
LABEL_12:
    v14 = _CNCinematicError(v17, v18);
    v15 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  v14 = [objc_alloc(*(a1 + 56)) _initWithVideoTrack:*(a1 + 32) disparityTrack:*(a1 + 40) metadataTrack:v5];
  v15 = *(*(a1 + 48) + 16);
LABEL_13:
  v15();
}

- (AVAsset)asset
{
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  asset = [cinematicVideoTrack asset];

  return asset;
}

- (CMTimeRange)timeRange
{
  *&retstr->start.epoch = 0u;
  *&retstr->duration.timescale = 0u;
  *&retstr->start.value = 0u;
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  v6 = cinematicVideoTrack;
  if (cinematicVideoTrack)
  {
    objc_msgSend_timeRange(cinematicVideoTrack);
  }

  else
  {
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  cinematicDisparityTrack = [(CNAssetInfo *)self cinematicDisparityTrack];
  v8 = cinematicDisparityTrack;
  if (cinematicDisparityTrack)
  {
    objc_msgSend_timeRange(cinematicDisparityTrack);
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  v9 = *&retstr->start.epoch;
  *&v16.start.value = *&retstr->start.value;
  *&v16.start.epoch = v9;
  *&v16.duration.timescale = *&retstr->duration.timescale;
  CMTimeRangeGetIntersection(&v18, &v16, &otherRange);
  v10 = *&v18.start.epoch;
  *&retstr->start.value = *&v18.start.value;
  *&retstr->start.epoch = v10;
  *&retstr->duration.timescale = *&v18.duration.timescale;

  cinematicMetadataTrack = [(CNAssetInfo *)self cinematicMetadataTrack];
  v12 = cinematicMetadataTrack;
  if (cinematicMetadataTrack)
  {
    objc_msgSend_timeRange(cinematicMetadataTrack);
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  v13 = *&retstr->start.epoch;
  *&v16.start.value = *&retstr->start.value;
  *&v16.start.epoch = v13;
  *&v16.duration.timescale = *&retstr->duration.timescale;
  CMTimeRangeGetIntersection(&v18, &v16, &otherRange);
  v14 = *&v18.start.epoch;
  *&retstr->start.value = *&v18.start.value;
  *&retstr->start.epoch = v14;
  *&retstr->duration.timescale = *&v18.duration.timescale;

  return result;
}

- (CGSize)naturalSize
{
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  [cinematicVideoTrack naturalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)preferredSize
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(CNAssetInfo *)self naturalSize];
  v6 = v5;
  v8 = v7;
  objc_msgSend_preferredTransform(self);
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  v14 = CGRectApplyAffineTransform(v13, &v11);
  width = v14.size.width;
  height = v14.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  if (cinematicVideoTrack)
  {
    v6 = cinematicVideoTrack;
    objc_msgSend_preferredTransform(cinematicVideoTrack);
    cinematicVideoTrack = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (NSArray)allCinematicTracks
{
  v8[3] = *MEMORY[0x277D85DE8];
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  cinematicDisparityTrack = [(CNAssetInfo *)self cinematicDisparityTrack];
  v8[1] = cinematicDisparityTrack;
  cinematicMetadataTrack = [(CNAssetInfo *)self cinematicMetadataTrack];
  v8[2] = cinematicMetadataTrack;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  return v6;
}

- (NSArray)videoCompositionTracks
{
  v7[2] = *MEMORY[0x277D85DE8];
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  v7[0] = cinematicVideoTrack;
  cinematicDisparityTrack = [(CNAssetInfo *)self cinematicDisparityTrack];
  v7[1] = cinematicDisparityTrack;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  return v5;
}

- (NSArray)videoCompositionTrackIDs
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  cinematicVideoTrack = [(CNAssetInfo *)self cinematicVideoTrack];
  v5 = [v3 numberWithInt:{objc_msgSend(cinematicVideoTrack, "trackID")}];
  v11[0] = v5;
  v6 = MEMORY[0x277CCABB0];
  cinematicDisparityTrack = [(CNAssetInfo *)self cinematicDisparityTrack];
  v8 = [v6 numberWithInt:{objc_msgSend(cinematicDisparityTrack, "trackID")}];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

- (NSArray)sampleDataTrackIDs
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  cinematicMetadataTrack = [(CNAssetInfo *)self cinematicMetadataTrack];
  v4 = [v2 numberWithInt:{objc_msgSend(cinematicMetadataTrack, "trackID")}];
  v7[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)_initWithVideoTrack:(id)track disparityTrack:(id)disparityTrack metadataTrack:(id)metadataTrack
{
  trackCopy = track;
  disparityTrackCopy = disparityTrack;
  metadataTrackCopy = metadataTrack;
  v15.receiver = self;
  v15.super_class = CNAssetInfo;
  v12 = [(CNAssetInfo *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_cinematicVideoTrack, track);
    objc_storeStrong(p_isa + 2, disparityTrack);
    objc_storeStrong(p_isa + 3, metadataTrack);
  }

  return p_isa;
}

void __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_2()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end