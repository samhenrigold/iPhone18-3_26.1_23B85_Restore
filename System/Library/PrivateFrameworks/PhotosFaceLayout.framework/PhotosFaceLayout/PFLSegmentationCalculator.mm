@interface PFLSegmentationCalculator
+ (id)sharedInstance;
- (PFLSegmentationCalculator)init;
- (id)queue_bestSegmentationForAsset:(id)asset timePositions:(id)positions error:(id *)error;
- (void)_queue_segmentationForAsset:(id)asset timePosition:(unint64_t)position completion:(id)completion;
- (void)bestSegmentationForAsset:(id)asset completion:(id)completion;
- (void)bestSegmentationForAsset:(id)asset timePosition:(unint64_t)position completion:(id)completion;
@end

@implementation PFLSegmentationCalculator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__PFLSegmentationCalculator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __43__PFLSegmentationCalculator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_instance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PFLSegmentationCalculator)init
{
  v13.receiver = self;
  v13.super_class = PFLSegmentationCalculator;
  v2 = [(PFLSegmentationCalculator *)&v13 init];
  v3 = v2;
  if (v2)
  {
    segmentationData = v2->_segmentationData;
    v2->_segmentationData = 0;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.photosface.segmentationcalculator.work", v5);
    workQueue = v3->_workQueue;
    v3->_workQueue = v6;

    v8 = dispatch_queue_create("com.apple.photosface.segmentationcalculator.segmentation", v5);
    segmentationQueue = v3->_segmentationQueue;
    v3->_segmentationQueue = v8;

    v10 = dispatch_semaphore_create(0);
    segmentationQueueSema = v3->_segmentationQueueSema;
    v3->_segmentationQueueSema = v10;
  }

  return v3;
}

- (void)bestSegmentationForAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke;
  block[3] = &unk_27875BAA0;
  v12 = assetCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = assetCopy;
  v10 = completionCopy;
  dispatch_async(workQueue, block);
}

void __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_2;
  v35[3] = &unk_27875BA78;
  v2 = *(a1 + 48);
  v35[4] = *(a1 + 32);
  v36 = v2;
  v3 = MEMORY[0x2318CC2A0](v35);
  v4 = pfl_layout_log([MEMORY[0x277D3A950] ensureResources]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 8);
    *buf = 138412290;
    v38 = v5;
    _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DISPATCHED, seg data == %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v34 = 0;
  v9 = [v7 queue_bestSegmentationForAsset:v8 timePositions:&unk_284076F08 error:&v34];
  v10 = v34;
  if ((v3)[2](v3, v10))
  {
    goto LABEL_34;
  }

  if (v9)
  {
    [v9 visibleRect];
    IsEmpty = CGRectIsEmpty(v40);
    if (IsEmpty)
    {
      v12 = pfl_layout_log(IsEmpty);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_cold_1(v12);
      }

      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v33 = v10;
      v15 = [v13 queue_bestSegmentationForAsset:v14 timePositions:&unk_284076F20 error:&v33];
      v16 = v33;

      if ((v3)[2](v3, v16))
      {
        v10 = v16;
LABEL_19:
        v9 = v15;
        goto LABEL_34;
      }

      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v15 = v9;
      v16 = v10;
    }

    [v6 addObject:v15];
  }

  else
  {
    v16 = v10;
  }

LABEL_14:
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v32 = v16;
  v9 = [v17 queue_bestSegmentationForAsset:v18 timePositions:&unk_284076F38 error:&v32];
  v10 = v32;

  if ((v3)[2](v3, v10))
  {
    goto LABEL_34;
  }

  if (v9)
  {
    [v6 addObject:v9];
  }

  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v31 = v10;
  v15 = [v19 queue_bestSegmentationForAsset:v20 timePositions:&unk_284076F50 error:&v31];
  v21 = v31;

  if ((v3)[2](v3, v21))
  {
    v10 = v21;
    goto LABEL_19;
  }

  if (v15)
  {
    [v6 addObject:v15];
  }

  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v30 = v21;
  v9 = [v22 queue_bestSegmentationForAsset:v23 timePositions:&unk_284076F68 error:&v30];
  v24 = v30;

  if ((v3)[2](v3, v24))
  {
    v10 = v24;
    goto LABEL_34;
  }

  if (v9)
  {
    [v6 addObject:v9];
  }

  if ([v6 count])
  {
    v10 = v24;
LABEL_31:
    v26 = (*(*(a1 + 48) + 16))();
    v27 = pfl_layout_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2ED000, v27, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DONE", buf, 2u);
    }

    v28 = *(a1 + 32);
    v29 = *(v28 + 8);
    *(v28 + 8) = 0;

    [MEMORY[0x277D3A950] freeResources];
    goto LABEL_34;
  }

  v25 = pfl_layout_log(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_cold_2(v25);
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284075FD0 code:2 userInfo:0];

  if (((v3)[2](v3, v10) & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
}

BOOL __65__PFLSegmentationCalculator_bestSegmentationForAsset_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = (*(*(a1 + 40) + 16))();
    v5 = pfl_layout_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22D2ED000, v5, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DONE with error %@", &v9, 0xCu);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;

    [MEMORY[0x277D3A950] freeResources];
  }

  return v3 != 0;
}

- (void)bestSegmentationForAsset:(id)asset timePosition:(unint64_t)position completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  workQueue = self->_workQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__PFLSegmentationCalculator_bestSegmentationForAsset_timePosition_completion___block_invoke;
  v13[3] = &unk_27875BAC8;
  v13[4] = self;
  v14 = assetCopy;
  v15 = completionCopy;
  positionCopy = position;
  v11 = completionCopy;
  v12 = assetCopy;
  dispatch_async(workQueue, v13);
}

void __78__PFLSegmentationCalculator_bestSegmentationForAsset_timePosition_completion___block_invoke(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = pfl_layout_log([MEMORY[0x277D3A950] ensureResources]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1[4] + 8);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_22D2ED000, v2, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DISPATCHED, seg data == %@", buf, 0xCu);
  }

  v4 = a1[4];
  v5 = a1[5];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v15 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v14 = 0;
  v8 = [v4 queue_bestSegmentationForAsset:v5 timePositions:v7 error:&v14];
  v9 = v14;

  v10 = (*(a1[6] + 16))();
  v11 = pfl_layout_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2ED000, v11, OS_LOG_TYPE_DEFAULT, "PFL: bestSegmentationForAsset DONE", buf, 2u);
  }

  v12 = a1[4];
  v13 = *(v12 + 8);
  *(v12 + 8) = 0;

  [MEMORY[0x277D3A950] freeResources];
}

- (id)queue_bestSegmentationForAsset:(id)asset timePositions:(id)positions error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = positions;
  v51 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
  if (v51)
  {
    v7 = 0;
    v48 = *v63;
    v46 = *MEMORY[0x277D3B598];
    v8 = -1.0;
LABEL_3:
    v9 = 0;
    while (1)
    {
      v10 = v7;
      if (*v63 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v62 + 1) + 8 * v9);
      *v72 = 0;
      *&v72[8] = v72;
      *&v72[16] = 0x3032000000;
      v73 = __Block_byref_object_copy__0;
      v74 = __Block_byref_object_dispose__0;
      v75 = 0;
      v56 = 0;
      v57 = &v56;
      v58 = 0x3032000000;
      v59 = __Block_byref_object_copy__0;
      v60 = __Block_byref_object_dispose__0;
      v61 = 0;
      segmentationQueue = self->_segmentationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke;
      block[3] = &unk_27875BB18;
      block[4] = v11;
      block[5] = self;
      v13 = assetCopy;
      v53 = v13;
      v54 = v72;
      v55 = &v56;
      dispatch_async(segmentationQueue, block);
      v14 = dispatch_semaphore_wait(self->_segmentationQueueSema, 0xFFFFFFFFFFFFFFFFLL);
      v15 = pfl_layout_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = *&v11;
        _os_log_impl(&dword_22D2ED000, v15, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset DONE SEGMENTING for %@", buf, 0xCu);
      }

      v17 = v57[5];
      if (v17)
      {
        if (error)
        {
          v16 = v17;
          *error = v17;
        }

        v18 = pfl_layout_log(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2ED000, v18, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset ALL DONE with an error; returning nil layout", buf, 2u);
        }
      }

      else
      {
        v19 = pfl_layout_log(v16);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          scores = [(PISegmentationData *)self->_segmentationData scores];
          v21 = [scores objectForKeyedSubscript:v46];
          [v21 floatValue];
          v23 = v22;
          [*(*&v72[8] + 40) visibleRect];
          v28 = _rectAsString(v24, v25, v26, v27);
          *buf = 138412802;
          v67 = *&v11;
          v68 = 2048;
          v69 = v23;
          v70 = 2112;
          v71 = v28;
          _os_log_impl(&dword_22D2ED000, v19, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset: score for %@ == %.2f, crop == %@", buf, 0x20u);
        }

        if (!self->_segmentationData)
        {
          goto LABEL_21;
        }

        v29 = [PFLLayoutConfiguration alloc];
        intValue = [v11 intValue];
        v18 = [(PFLLayoutConfiguration *)v29 initWithAsset:v13 timePosition:intValue segmentationData:self->_segmentationData coreLayout:*(*&v72[8] + 40)];
        [v18 cropScore];
        if (v31 > v8)
        {
          v18 = v18;

          cropScore = [v18 cropScore];
          v8 = v33;
          v34 = pfl_layout_log(cropScore);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v67 = v8;
            v68 = 2112;
            v69 = *&v11;
            _os_log_impl(&dword_22D2ED000, v34, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset: top score is now %.2f (%@)", buf, 0x16u);
          }

          v10 = v18;
        }
      }

LABEL_21:
      _Block_object_dispose(&v56, 8);

      _Block_object_dispose(v72, 8);
      if (v17)
      {

        v35 = 0;
        goto LABEL_30;
      }

      ++v9;
      v7 = v10;
      if (v51 == v9)
      {
        v51 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
        v7 = v10;
        if (v51)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }
  }

  v7 = 0;
LABEL_27:
  v36 = v7;

  v38 = pfl_layout_log(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    timePosition = [v36 timePosition];
    [v36 visibleRect];
    v44 = _rectAsString(v40, v41, v42, v43);
    *v72 = 134218242;
    *&v72[4] = timePosition;
    *&v72[12] = 2112;
    *&v72[14] = v44;
    _os_log_impl(&dword_22D2ED000, v38, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset ALL DONE; winner == %ld (%@)", v72, 0x16u);
  }

  v10 = v36;
  v35 = v10;
LABEL_30:

  return v35;
}

void __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = pfl_layout_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 8);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_22D2ED000, v2, OS_LOG_TYPE_DEFAULT, "PFL: queue_bestSegmentationForAsset START SEGMENTING for %@, seg data == %@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = [*(a1 + 32) intValue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320;
  v11[3] = &unk_27875BAF0;
  v8 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v14 = *(a1 + 56);
  v9 = v8;
  v10 = *(a1 + 32);
  v12 = v9;
  v13 = v10;
  [v6 _queue_segmentationForAsset:v5 timePosition:v7 completion:v11];
}

void __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320(void *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_storeStrong((a1[4] + 8), a2);
  objc_storeStrong((*(a1[7] + 8) + 40), a3);
  objc_storeStrong((*(a1[8] + 8) + 40), a4);
  if (*(*(a1[8] + 8) + 40))
  {
    v12 = pfl_layout_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320_cold_1(a1, (a1 + 8), v12);
    }
  }

  dispatch_semaphore_signal(*(a1[4] + 32));
}

- (void)_queue_segmentationForAsset:(id)asset timePosition:(unint64_t)position completion:(id)completion
{
  v44[2] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x277CD9A08]) initWithPhotoAsset:assetCopy];
  PFCRectForTimePosition();
  v15 = flipYNormalizedRect(v11, v12, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = objc_alloc(MEMORY[0x277D3B488]);
  v23 = [v22 initWithScreenSize:*MEMORY[0x277D3B3C0] timeRect:*(MEMORY[0x277D3B3C0] + 8) inactiveTimeRect:v15 parallaxPadding:{v17, v19, v21, *&v15, *&v17, *&v19, *&v21, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v24 = [objc_alloc(MEMORY[0x277D3B530]) initWithPortraitConfiguration:v23 landscapeConfiguration:0];
  v25 = [[PFLLayoutProvider alloc] initWithTimePosition:position];
  v26 = MEMORY[0x277CBEB38];
  v27 = *MEMORY[0x277D3AAD8];
  v43[0] = *MEMORY[0x277D3AAE0];
  v43[1] = v27;
  v44[0] = v25;
  v44[1] = v24;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v29 = [v26 dictionaryWithDictionary:v28];

  segmentationData = self->_segmentationData;
  if (segmentationData)
  {
    [v29 setObject:segmentationData forKeyedSubscript:*MEMORY[0x277D3AAF8]];
  }

  v31 = [[PFLJetsamInfoInterval alloc] initWithLabel:@"loadSegmentationForAsset"];
  v32 = MEMORY[0x277D3A950];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke;
  v37[3] = &unk_27875BB40;
  v38 = v31;
  v39 = v25;
  v41 = completionCopy;
  positionCopy = position;
  v40 = assetCopy;
  v33 = completionCopy;
  v34 = assetCopy;
  v35 = v25;
  v36 = v31;
  [v32 loadSegmentationDataForAsset:v10 options:v29 completion:v37];
}

void __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  [v6 logCurrentInterval];
  v8 = [*(a1 + 40) resultsAreValid];
  if (v7 && v8)
  {
    v9 = [*(a1 + 40) watchLayout];
  }

  else
  {
    v10 = pfl_layout_log(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke_cold_1(a1, v5, v10);
    }

    v9 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

void __80__PFLSegmentationCalculator_queue_bestSegmentationForAsset_timePositions_error___block_invoke_320_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412802;
  *&v3[4] = *(a1 + 40);
  *&v3[12] = 2112;
  *&v3[14] = *(a1 + 48);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_0_0(&dword_22D2ED000, a2, a3, "segmentation error for asset %@, time position %@, error %@", *v3, *&v3[8], *&v3[16], *(*(*a2 + 8) + 40));
}

void __81__PFLSegmentationCalculator__queue_segmentationForAsset_timePosition_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412802;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2048;
  *&v3[14] = *(a1 + 64);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_0_0(&dword_22D2ED000, a2, a3, "loadSegmentationDataForAsset did not compute any layout for asset %@, time position %ld, error %@", *v3, *&v3[8], *&v3[16], a2);
}

@end