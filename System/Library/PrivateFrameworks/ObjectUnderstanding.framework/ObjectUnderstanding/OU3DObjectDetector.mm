@interface OU3DObjectDetector
- (BOOL)IsValidLShapePair:(const void *)pair l_shape_pair:(const void *)l_shape_pair;
- (BOOL)preprocess;
- (NSSet)supportedObjectTypes;
- (id).cxx_construct;
- (id)FindNeedRefineBoxUUID:(id)d withOldObjects:(id)objects;
- (id)MergeLShapeObjects:(id)objects isLastFrame:(BOOL)frame;
- (id)combineBoxTypeAndEmbeddingByUUID:(id)d;
- (id)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects;
- (id)init:(BOOL)init;
- (id)regulateObjectSize:(id)size withOldObjects:(id)objects;
- (id)run;
- (id)updateWithAccumulatePC:(__n128)c currentCameraPose:(__n128)pose;
- (id)updateWithAccumulatePC:(id)c ouframe:(id)ouframe;
- (uint64_t)assignIdentifiersForNewObjects:(uint64_t *)objects withOldObjects:(uint64_t)oldObjects;
- (vector<unsigned)runwithinClassNMS:(OU3DObjectDetector *)self ids:(SEL)ids ori_iou:(const void *)ori_iou nms_iou:(void *)nms_iou;
- (void)CopyObjectEmbedding:(id)embedding fromOldObjects:(id)objects;
- (void)CopyRefineHistory:(id)history fromOldObjects:(id)objects;
- (void)InitializeRGBRefinement:(id)refinement;
- (void)OfflineModelInitialization;
- (void)ResestObjectSizeHistoryIfSizeChange:(id)change withOldObjects:(id)objects;
- (void)ValidateRawDetections:(void *)detections;
- (void)assignIdentifiersForNewObjects:(id)objects withOldObjects:(id)oldObjects;
- (void)assignParentId:(id)id isOffline:(BOOL)offline;
- (void)buildFrustumPointCloudFromWorldPointCloud;
- (void)clear;
- (void)initialization;
- (void)modelProcess;
- (void)postprocess;
- (void)regulateObjectCornerOrders:(id)orders withOldObjects:(id)objects;
- (void)reviseObjectsUponParentId:(id)id;
- (void)setObjectRepresentationEnabled:(BOOL)enabled;
@end

@implementation OU3DObjectDetector

- (id)init:(BOOL)init
{
  initCopy = init;
  v23 = *MEMORY[0x277D85DE8];
  self->isOnline_ = init;
  v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    isMainThread = [MEMORY[0x277CCACC8] isMainThread];
    v7 = "Offline";
    if (initCopy)
    {
      v7 = "Online";
    }

    v8 = "Yes";
    if (!isMainThread)
    {
      v8 = "No";
    }

    *buf = 136315394;
    v20 = v7;
    v21 = 2080;
    v22 = v8;
    _os_log_impl(&dword_25D1DB000, v5, OS_LOG_TYPE_INFO, "[3DOD] %s OD session is initialized in the main thread: %s.", buf, 0x16u);
  }

  v18.receiver = self;
  v18.super_class = OU3DObjectDetector;
  v9 = [(OU3DObjectDetector *)&v18 init];
  *(v9 + 946) = 0;
  [v9 initialization];
  *(v9 + 472) = 257;
  *(v9 + 113) = 0;
  v10 = objc_alloc_init(OUInternalInfoDumper);
  v11 = *(v9 + 116);
  *(v9 + 116) = v10;

  v12 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v12 setDateFormat:@"MM_dd_yyyy_HH_mm_ss_SSS"];
  v13 = MEMORY[0x277CCACA8];
  date = [MEMORY[0x277CBEAA8] date];
  v15 = [v12 stringFromDate:date];
  v16 = [v13 stringWithFormat:@"%@%@", @"/var/mobile/Documents/Rooms/ObjectUnderstanding/", v15];

  [*(v9 + 116) setUpInternalDumpWithLogDir:v16 enable:0];
  [*(v9 + 116) setEnableARFrameDump:0];
  [*(v9 + 116) setEnableLiveDump:0];
  [*(v9 + 116) setEnableARFrameRGB:0];
  [*(v9 + 116) setEnableARFrameDepth:0];
  operator new();
}

- (NSSet)supportedObjectTypes
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:self->det_params->var0];
  det_params = self->det_params;
  if (det_params->var0)
  {
    v5 = 0;
    do
    {
      [v3 addObject:det_params->var2[v5++]];
      det_params = self->det_params;
    }

    while (v5 < det_params->var0);
  }

  v6 = [v3 copy];

  return v6;
}

- (id)updateWithAccumulatePC:(__n128)c currentCameraPose:(__n128)pose
{
  *(self + 160) = a2;
  *(self + 176) = c;
  *(self + 192) = pose;
  *(self + 208) = a5;
  objc_storeStrong((self + 144), a7);
  v8 = [self run];

  return v8;
}

- (id)updateWithAccumulatePC:(id)c ouframe:(id)ouframe
{
  cCopy = c;
  ouframeCopy = ouframe;
  camera = [ouframeCopy camera];
  camera = self->camera_;
  self->camera_ = camera;

  objc_storeStrong(&self->arframe_, ouframe);
  [(_OUFrame *)self->arframe_ GetCameraPoseInVisionWorld];
  *self->_anon_a0 = v11;
  *&self->_anon_a0[16] = v12;
  *&self->_anon_a0[32] = v13;
  *&self->_anon_a0[48] = v14;
  [(_OUFrame *)self->arframe_ GetSceneCameraPoseInVisionWorld];
  *self->_anon_e0 = v15;
  *&self->_anon_e0[16] = v16;
  *&self->_anon_e0[32] = v17;
  *&self->_anon_e0[48] = v18;
  objc_storeStrong(&self->keyframesPointCloud_, c);
  v19 = [(OU3DObjectDetector *)self run];

  return v19;
}

- (id)generateOfflineObjects:(id)objects onlineObjects:(id)onlineObjects
{
  v71 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  onlineObjectsCopy = onlineObjects;
  v7 = OUVizTool::Get(onlineObjectsCopy);
  OUVizTool::StartNewFrame(v7);
  if (objectsCopy && [objectsCopy count])
  {
    if (!self->offline_detector_.__ptr_)
    {
      [(OU3DObjectDetector *)self OfflineModelInitialization];
    }

    v48 = onlineObjectsCopy;
    selfCopy = self;
    v8 = objc_alloc_init(OUPointCloud);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v9 = objectsCopy;
    v10 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
    if (v10)
    {
      v11 = *v63;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v63 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [v9 objectForKeyedSubscript:*(*(&v62 + 1) + 8 * i)];
          pointsToWorld = [v13 pointsToWorld];
          pointsToWorld2 = [v13 pointsToWorld];
          v16 = [v13 count];
          *buf = 0;
          v68 = 0;
          v69 = 0;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(buf, pointsToWorld, pointsToWorld2 + 16 * v16, (pointsToWorld2 + 16 * v16 - pointsToWorld) >> 4);
          v17 = [v13 count];
          -[OUPointCloud append:points:semanticLabels:semanticVotes:](v8, "append:points:semanticLabels:semanticVotes:", v17, *buf, [v13 semanticLabels], objc_msgSend(v13, "semanticVotes"));
          if (*buf)
          {
            v68 = *buf;
            operator delete(*buf);
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v62 objects:v70 count:16];
      }

      while (v10);
    }

    v18 = [(OUPointCloud *)v8 count];
    v20 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v18, v19);
    v21 = v20;
    if (v18 > 0x3E7)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_25D1DB000, v21, OS_LOG_TYPE_INFO, "[3DOU] Running ios train pipeline.", buf, 2u);
      }

      ou3dod::OU3DODInterface::Process(selfCopy->offline_detector_.__ptr_, [(OUPointCloud *)v8 getCpp]);
      ptr = selfCopy->offline_detector_.__ptr_;
      v68 = 0;
      v69 = 0;
      *buf = 0;
      std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(buf, *(ptr + 1), *(ptr + 2), 0x6DB6DB6DB6DB6DB7 * ((*(ptr + 2) - *(ptr + 1)) >> 5));
      ou3dod::OU3DODInterface::GetDetectedBoxes(v61, selfCopy->offline_detector_.__ptr_, &cfstr_Cabinet.isa);
      array = [MEMORY[0x277CBEB18] array];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v24 = v48;
      v25 = [(OUVizTool *)v24 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v25)
      {
        v26 = *v58;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v58 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = *(*(&v57 + 1) + 8 * j);
            detection_source = [v28 detection_source];
            if ([detection_source isEqualToString:@"online"])
            {
              v30 = [v28 hasBoxesDict:@"raw_postprocess"];

              if (v30)
              {
                [array addObject:v28];
              }
            }

            else
            {
            }
          }

          v25 = [(OUVizTool *)v24 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v25);
      }

      boxesFromObjects(array, @"raw_postprocess", 0, v56);
      OU3DKitchenObjectMerger::SetDetectionAndPointCloud(&selfCopy->offline_merger_, v56, v61, ([(OUPointCloud *)v8 getCpp]+ 24));
      OU3DKitchenObjectMerger::Merge(&selfCopy->offline_merger_, v31, v32, v33);
      OU3DKitchenObjectMerger::GetOutput(&selfCopy->offline_merger_, v55);
      merger = selfCopy->merger;
      if (merger)
      {
        objc_msgSend_removeLowHeightStairObjects_(merger);
      }

      else
      {
        memset(v54, 0, sizeof(v54));
      }

      v35 = boxesToObjects(v54, @"rawdetection", 1u);
      v47 = boxesToObjects(buf, @"raw_offline", 1u);
      v36 = array;
      updateObjectsWithBoxes(v56, v36, @"raw_online");
      for (k = 0; [v36 count] > k; ++k)
      {
        v38 = [v36 objectAtIndexedSubscript:k];
        corners_status = [v38 corners_status];
        v40 = [corners_status copy];
        v41 = [v36 objectAtIndexedSubscript:k];
        [v41 setCorners_status:v40];
      }

      [(OU3DObjectDetector *)selfCopy assignIdentifiersForNewObjects:v35 withOldObjects:v36];
      v42 = [v35 mutableCopy];
      [v42 addObjectsFromArray:v36];
      [v42 addObjectsFromArray:v47];
      v43 = [(OU3DObjectDetector *)selfCopy combineBoxTypeAndEmbeddingByUUID:v42];
      [(OU3DObjectDetector *)selfCopy assignParentId:v43 isOffline:1];
      [(OU3DObjectDetector *)selfCopy reviseObjectsUponParentId:v43];
      v44 = [(OU3DObjectDetector *)selfCopy MergeLShapeObjects:v43 isLastFrame:1];

      v22 = v44;
      if (selfCopy->_ObjectRepresentationEnabled)
      {
        ou3dor::OU3DObjectRepresentation::AddObjectRepresentation(selfCopy->ou3dor_.__ptr_, v8, v44);
      }

      v45 = OUVizTool::Get([(OUObjectAsset *)selfCopy->objectAsset_ setObjects:v44]);
      std::string::basic_string[abi:ne200100]<0>(__p, "offline_objects");
      OUVizTool::SaveObjects(v45, __p, v44, @"rawdetection");
      if (v53 < 0)
      {
        operator delete(__p[0]);
      }

      CheckOutputValidation(v44);

      __p[0] = v54;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
      v54[0] = v55;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v54);
      v55[0] = v56;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v55);

      v56[0] = v61;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v56);
      v61[0] = buf;
      std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v61);
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(OU3DObjectDetector *)buf generateOfflineObjects:v21 onlineObjects:?];
      }

      v22 = v48;
    }

    onlineObjectsCopy = v48;
  }

  else
  {
    v22 = onlineObjectsCopy;
  }

  return v22;
}

- (id)combineBoxTypeAndEmbeddingByUUID:(id)d
{
  v53 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = dCopy;
  v37 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v37)
  {
    v36 = *v48;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v47 + 1) + 8 * i);
        identifier = [v4 identifier];
        v6 = [dictionary objectForKey:identifier];
        v7 = v6 == 0;

        if (v7)
        {
          identifier2 = [v4 identifier];
          [dictionary setObject:v4 forKey:identifier2];
          goto LABEL_32;
        }

        identifier3 = [v4 identifier];
        identifier2 = [dictionary objectForKey:identifier3];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        boxesDict = [v4 boxesDict];
        allKeys = [boxesDict allKeys];

        v12 = [allKeys countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v12)
        {
          v13 = *v44;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v44 != v13)
              {
                objc_enumerationMutation(allKeys);
              }

              v15 = *(*(&v43 + 1) + 8 * j);
              boxesDict2 = [identifier2 boxesDict];
              v17 = [boxesDict2 objectForKey:v15];
              v18 = v17 == 0;

              if (v18)
              {
                memset(v40, 0, sizeof(v40));
                boxesDict3 = [v4 boxesDict];
                v23 = [boxesDict3 objectForKeyedSubscript:v15];
                box3dFromNSArray(v23, v40);

                [identifier2 addBoxesDict:v40 forDictKey:v15];
              }

              else
              {
                v21 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v19, v20);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                {
                  [(OU3DObjectDetector *)&buf combineBoxTypeAndEmbeddingByUUID:v42, v21];
                }
              }
            }

            v12 = [allKeys countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v12);
        }

        embedding2d = [identifier2 embedding2d];
        if (![embedding2d count])
        {
          embedding2d2 = [v4 embedding2d];
          v26 = [embedding2d2 count] == 0;

          if (v26)
          {
            goto LABEL_23;
          }

          embedding2d = [v4 embedding2d];
          [identifier2 setEmbedding2d:embedding2d];
        }

LABEL_23:
        embedding3d = [identifier2 embedding3d];
        if ([embedding3d count])
        {
          goto LABEL_26;
        }

        embedding3d2 = [v4 embedding3d];
        v29 = [embedding3d2 count] == 0;

        if (!v29)
        {
          embedding3d = [v4 embedding3d];
          [identifier2 setEmbedding3d:embedding3d];
LABEL_26:
        }

        cadModelName = [identifier2 cadModelName];
        if (!cadModelName)
        {
          cadModelName2 = [v4 cadModelName];
          v32 = cadModelName2 == 0;

          if (v32)
          {
            goto LABEL_32;
          }

          cadModelName = [v4 cadModelName];
          [identifier2 setCadModelName:cadModelName];
        }

LABEL_32:
      }

      v37 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v37);
  }

  allValues = [dictionary allValues];

  return allValues;
}

- (void)clear
{
  array = [MEMORY[0x277CBEA60] array];
  pre_size_refined = self->pre_size_refined_;
  self->pre_size_refined_ = array;

  array2 = [MEMORY[0x277CBEA60] array];
  pre_rgb_size_refined = self->pre_rgb_size_refined_;
  self->pre_rgb_size_refined_ = array2;

  v7 = objc_alloc_init(OUPointCloud);
  worldPointCloud = self->worldPointCloud;
  self->worldPointCloud = v7;

  v9 = objc_alloc_init(OUPointCloud);
  arframePointCloud = self->arframePointCloud_;
  self->arframePointCloud_ = v9;

  self->latestTimestamp = 0.0;
  *self->_anon_50 = 0u;
  *&self->_anon_50[16] = 0u;
  *&self->_anon_50[32] = 0u;
  *&self->_anon_50[48] = 0u;
  std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](&self->acc_box3ds_, self->acc_box3ds_.__begin_);
  std::vector<OUBox3d>::__base_destruct_at_end[abi:ne200100](&self->merged_box3ds_, self->merged_box3ds_.__begin_);
  std::vector<std::vector<float>>::clear[abi:ne200100](&self->hist_ori_iou_mat_);
  std::vector<std::vector<float>>::clear[abi:ne200100](&self->hist_nms_iou_mat_);
  self->hist_kept_box_ids_.__end_ = self->hist_kept_box_ids_.__begin_;
  allObjects = self->allObjects;
  self->allObjects = MEMORY[0x277CBEBF8];

  self->size_refined_box_ids_.__end_ = self->size_refined_box_ids_.__begin_;
}

- (void)OfflineModelInitialization
{
  v3 = *MEMORY[0x277D85DE8];
  OU3DSSDConfig::OU3DSSDConfig(v2, 0x21u, xmmword_25D279490, vdupq_n_s32(0x3E19999Au), xmmword_25D2794A0);
  ou3dod::OU3DAnchorFreeDetector::createForOffline();
}

- (void)InitializeRGBRefinement:(id)refinement
{
  sceneColorBuffer = [refinement sceneColorBuffer];
  *v14 = 0x3E99999A3D4CCCCDLL;
  v14[8] = 1;
  *&v14[12] = CVPixelBufferGetWidth(sceneColorBuffer);
  *&v14[16] = CVPixelBufferGetHeight(sceneColorBuffer);
  *&v14[20] = 0xC000000100;
  std::string::basic_string[abi:ne200100]<0>(&v15, "rgb");
  *&v12[0] = 0x3A83126F00000000;
  BYTE8(v12[0]) = 1;
  *(v12 + 12) = vdupq_n_s64(0xC000000100uLL);
  std::string::basic_string[abi:ne200100]<0>(&v13, "semantic");
  [MEMORY[0x277CBEA60] arrayWithObjects:{@"Screen", 0}];
  v5 = [MEMORY[0x277CBEB98] setWithArray:objc_claimAutoreleasedReturnValue()];
  rgb_refine_supported_types = self->rgb_refine_supported_types_;
  self->rgb_refine_supported_types_ = v5;

  v7[0] = *v14;
  *(v7 + 12) = *&v14[12];
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = v15;
  }

  v9[0] = v12[0];
  *(v9 + 12) = *(v12 + 12);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v13;
  }

  v11 = self->rgb_refine_supported_types_;
  operator new();
}

- (void)initialization
{
  v4 = *MEMORY[0x277D85DE8];
  if (self->isOnline_)
  {
    OU3DSSDConfig::OU3DSSDConfig(buf, 0x21u, xmmword_25D2794B0, vdupq_n_s32(0x3E19999Au), xmmword_25D2794C0);
    ou3dod::OU3DAnchorFreeDetector::createForOnline();
  }

  v2 = _OULoggingGetOSLogForCategoryObjectUnderstanding(self, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    buf[0].n128_u16[0] = 0;
    _os_log_impl(&dword_25D1DB000, v2, OS_LOG_TYPE_INFO, "============ 3D Object Detector has been initialized. =========", buf, 2u);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    buf[0].n128_u16[0] = 0;
    _os_log_impl(&dword_25D1DB000, v2, OS_LOG_TYPE_INFO, "Start to init 3D Object Representation.", buf, 2u);
  }

  operator new();
}

- (id)run
{
  v96 = *MEMORY[0x277D85DE8];
  v3 = kdebug_trace();
  v4 = OUVizTool::Get(v3);
  OUVizTool::StartNewFrame(v4);
  selfCopy = self;
  preprocess = [(OU3DObjectDetector *)self preprocess];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:@"3dod_earlyout_preprocess"];

  if (v7)
  {
    v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [OU3DObjectDetector run];
    }

LABEL_4:

    v11 = selfCopy->allObjects;
    goto LABEL_11;
  }

  if (preprocess)
  {
    [(OU3DObjectDetector *)selfCopy modelProcess];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v13 = [standardUserDefaults2 BOOLForKey:@"3dod_earlyout_inference"];

    if (v13)
    {
      v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v14, v15);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [OU3DObjectDetector run];
      }

      goto LABEL_4;
    }

    [(OU3DObjectDetector *)selfCopy postprocess];
    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v18 = [standardUserDefaults3 BOOLForKey:@"3dod_earlyout_post_process"];

    if (v18)
    {
      v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v19, v20);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [OU3DObjectDetector run];
      }

      goto LABEL_4;
    }

    array = [MEMORY[0x277CBEB18] array];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v21 = selfCopy->allObjects;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v81 objects:v95 count:16];
    if (v22)
    {
      v23 = *v82;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v82 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v81 + 1) + 8 * i);
          if ([v25 hasBoxesDict:@"rawdetection"])
          {
            [array addObject:v25];
          }
        }

        v22 = [(NSArray *)v21 countByEnumeratingWithState:&v81 objects:v95 count:16];
      }

      while (v22);
    }

    v26 = boxesToObjects(&selfCopy->merged_box3ds_, @"rawdetection", 1u);
    v27 = packBoxesDict(v26, &selfCopy->merged_box3ds_, @"raw_postprocess");

    [(OU3DObjectDetector *)selfCopy assignIdentifiersForNewObjects:v27 withOldObjects:array];
    v62 = [(OU3DObjectDetector *)selfCopy regulateObjectSize:v27 withOldObjects:array];

    [OU3DObjectDetector regulateObjectCornerOrders:selfCopy withOldObjects:"regulateObjectCornerOrders:withOldObjects:"];
    [OU3DObjectDetector CopyObjectEmbedding:selfCopy fromOldObjects:"CopyObjectEmbedding:fromOldObjects:"];
    v29 = [MEMORY[0x277CBEB58] set];
    if (selfCopy->_RgbRefinementEnabled && OU3DObjectRGBSizeRefiner::IsOUFrameValid(selfCopy->arframe_, v28))
    {
      floor_height = *(selfCopy->online_detector_.__ptr_ + 40);
      if (floor_height >= selfCopy->floor_height_)
      {
        floor_height = selfCopy->floor_height_;
      }

      selfCopy->floor_height_ = floor_height;
      if (!selfCopy->object_rgb_size_refiner_.__ptr_)
      {
        [(OU3DObjectDetector *)selfCopy InitializeRGBRefinement:selfCopy->arframe_];
      }

      v31 = selfCopy->pre_rgb_size_refined_;
      v32 = [v62 copy];
      pre_rgb_size_refined = selfCopy->pre_rgb_size_refined_;
      selfCopy->pre_rgb_size_refined_ = v32;

      [(OU3DObjectDetector *)selfCopy CopyRefineHistory:selfCopy->pre_rgb_size_refined_ fromOldObjects:array];
      [(OU3DObjectDetector *)selfCopy CopyRefineHistory:v62 fromOldObjects:array];
      [(OU3DObjectDetector *)selfCopy ResestObjectSizeHistoryIfSizeChange:v62 withOldObjects:array];
      v34 = [(OU3DObjectDetector *)selfCopy FindNeedRefineBoxUUID:v62 withOldObjects:v31];
      ptr = selfCopy->object_rgb_size_refiner_.__ptr_;
      *(ptr + 352) = selfCopy->floor_height_;
      v36 = OU3DObjectRGBSizeRefiner::RefineObjects(ptr, v62, selfCopy->arframe_, selfCopy->_anon_e0, selfCopy->_anon_e0, array, v34, v29);

      v37 = selfCopy->pre_rgb_size_refined_;
      OU3DObjectRGBSizeRefinerParams::OU3DObjectRGBSizeRefinerParams(&v68, (selfCopy->object_rgb_size_refiner_.__ptr_ + 40));
      SmoothRefinedBoxes(v36, v37, &v68, v29, array, *(selfCopy->object_rgb_size_refiner_.__ptr_ + 49));
      OU3DObjectRGBSizeRefinerParams::~OU3DObjectRGBSizeRefinerParams(&v68.var1);
      selfCopy->num_pre_key_frames_ = selfCopy->num_cur_key_frames_;

      v62 = v36;
    }

    standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v39 = [standardUserDefaults4 BOOLForKey:@"3dod_earlyout_size_refinement"];

    p_allObjects = &selfCopy->allObjects;
    if (v39)
    {
      v42 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v40, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [OU3DObjectDetector run];
      }

      v11 = *p_allObjects;
    }

    else
    {
      kdebug_trace();
      [(OUObjectCompleteness *)selfCopy->object_completeness_ updateRawCornersStatusNoTimer:v62 withOldObjects:array cameraPose:selfCopy->camera_ camera:*selfCopy->_anon_a0, *&selfCopy->_anon_a0[16], *&selfCopy->_anon_a0[32], *&selfCopy->_anon_a0[48]];
      kdebug_trace();
      array2 = [MEMORY[0x277CBEB18] array];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v43 = selfCopy->pre_rgb_size_refined_;
      v44 = [(NSArray *)v43 countByEnumeratingWithState:&v77 objects:&v94 count:16];
      if (v44)
      {
        v45 = *v78;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v78 != v45)
            {
              objc_enumerationMutation(v43);
            }

            v47 = *(*(&v77 + 1) + 8 * j);
            identifier = [v47 identifier];
            v49 = [v29 containsObject:identifier];

            if (v49)
            {
              boxesDict = [v47 boxesDict];
              v51 = [boxesDict objectForKey:@"rawdetection"];

              if (v51)
              {
                memset(v76, 0, sizeof(v76));
                box3dFromNSArray(v51, v76);
                type = [v47 type];
                [v47 confidence];
                v53 = v52;
                identifier2 = [v47 identifier];
                OUBox3d::OUBox3d(&v68, v76, &type, identifier2, v53);

                OUBox3d::OUBox3d(&v86, &v68);
                memset(v66, 0, sizeof(v66));
                std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d const*,OUBox3d const*>(v66, &v86, &v94, 1uLL);
                v55 = boxesToObjects(v66, @"others", 1u);
                v56 = [v55 objectAtIndexedSubscript:0];

                v85 = v66;
                std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v85);

                if (__p)
                {
                  operator delete(__p);
                }

                if (v90)
                {
                  v91 = v90;
                  operator delete(v90);
                }

                [array2 addObject:v56];
                if (v74)
                {
                  operator delete(v74);
                }

                if (v72)
                {
                  v73 = v72;
                  operator delete(v72);
                }
              }
            }
          }

          v44 = [(NSArray *)v43 countByEnumeratingWithState:&v77 objects:&v94 count:16];
        }

        while (v44);
      }

      v57 = [array2 mutableCopy];
      [v57 addObjectsFromArray:v62];
      [(OU3DObjectDetector *)selfCopy assignParentId:v62 isOffline:0];
      objc_storeStrong(p_allObjects, v62);
      v58 = selfCopy;
      [(OUInternalInfoDumper *)selfCopy->debug_dumper_ setFirstARFrame:selfCopy->arframe_];
      [(OUInternalInfoDumper *)v58->debug_dumper_ dumpObjects:v58->allObjects];
      v59 = [(OU3DObjectDetector *)v58 MergeLShapeObjects:v58->allObjects isLastFrame:0];
      v60 = *p_allObjects;
      *p_allObjects = v59;

      kdebug_trace();
      CheckOutputValidation(*p_allObjects);
      v11 = *p_allObjects;
    }
  }

  else
  {
    kdebug_trace();
    v11 = MEMORY[0x277CBEBF8];
  }

LABEL_11:

  return v11;
}

- (BOOL)IsValidLShapePair:(const void *)pair l_shape_pair:(const void *)l_shape_pair
{
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  v5 = *pair;
  v6 = *(pair + 1);
  while (v5 != v6)
  {
    uUIDString = [*(v5 + 144) UUIDString];
    std::string::basic_string[abi:ne200100]<0>(__p, [uUIDString UTF8String]);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(v15, __p, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v5 += 224;
  }

  v8 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v15, l_shape_pair);
  v9 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(v15, l_shape_pair + 3);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15);
  return v11;
}

- (id)MergeLShapeObjects:(id)objects isLastFrame:(BOOL)frame
{
  frameCopy = frame;
  v88[2] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v6 = MEMORY[0x277CBEB98];
  v69 = frameCopy;
  if (frameCopy)
  {
    v88[0] = @"Table";
    v88[1] = @"Cabinet";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v58 = [v6 setWithArray:v7];
  }

  else
  {
    v87[0] = @"Table";
    v87[1] = @"Cabinet";
    v87[2] = @"Sofa";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:3];
    v58 = [v6 setWithArray:v7];
  }

  {
    v56 = MEMORY[0x277CBEB98];
    v86 = @"Table";
    v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:{1, v58, objectsCopy}];
    [OU3DObjectDetector MergeLShapeObjects:isLastFrame:]::kObjectTypesWithParentId = [v56 setWithArray:v57];
  }

  LODWORD(v78) = 33;
  v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(ou3dor::k3DORSupportedAttributeTypeMap, &v78);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v61 = v8[3];
  allValues = [(NSDictionary *)self->keyframesPointCloud_ allValues];
  v65 = objc_alloc_init(MEMORY[0x277CBEB18]);
  rawBoxesFromObjects(objectsCopy, &v78);
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v58;
  v9 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v9)
  {
    v10 = *v75;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v75 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v74 + 1) + 8 * i);
        v13 = MEMORY[0x277CBEB98];
        v82 = v12;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
        v15 = [v13 setWithArray:v14];
        ou3dod::OU3DLShapeObjectMerger::MergeLShape(&v78, allValues, v15, v69, buf);
        std::vector<OUBox3d>::__vdeallocate(&v78);
        v78 = *buf;
        v79 = v84;
        v84 = 0;
        memset(buf, 0, sizeof(buf));
        v80 = buf;
        std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v80);
      }

      v9 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v9);
  }

  LShapeMergeInfo = ou3dod::OU3DLShapeObjectMerger::GetLShapeMergeInfo(self->l_shape_merger_.__ptr_);
  v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding(LShapeMergeInfo, v16);
  oslog = v17;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [OU3DObjectDetector MergeLShapeObjects:isLastFrame:];
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v63 = objectsCopy;
  v18 = [v63 countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v18)
  {
    v66 = *v71;
    do
    {
      v67 = v18;
      for (j = 0; j != v67; ++j)
      {
        if (*v71 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v20 = *(*(&v70 + 1) + 8 * j);
        if ([v20 hasBoxesDict:{@"rawdetection", v58}])
        {
          v21 = *(&v78 + 1);
          for (k = v78; k != v21; k += 224)
          {
            identifier = [v20 identifier];
            uUIDString = [identifier UUIDString];
            uUIDString2 = [*(k + 144) UUIDString];
            v26 = [uUIDString isEqualToString:uUIDString2];

            if (v26)
            {
              [v20 addBoxesDict:k forDictKey:@"lshaped"];
              for (m = *(LShapeMergeInfo + 16); m; m = *m)
              {
                if (*(m + 64) == 1 && [(OU3DObjectDetector *)self IsValidLShapePair:&v78 l_shape_pair:m + 2])
                {
                  identifier2 = [v20 identifier];
                  uUIDString3 = [identifier2 UUIDString];
                  v30 = objc_alloc(MEMORY[0x277CCACA8]);
                  if (*(m + 39) < 0)
                  {
                    v31 = m[2];
                  }

                  else
                  {
                    v31 = (m + 2);
                  }

                  v32 = [v30 initWithUTF8String:v31];
                  v33 = [uUIDString3 isEqualToString:v32];

                  identifier3 = [v20 identifier];
                  uUIDString4 = [identifier3 UUIDString];
                  v36 = objc_alloc(MEMORY[0x277CCACA8]);
                  v37 = m + 5;
                  if (*(m + 63) < 0)
                  {
                    v37 = *v37;
                  }

                  v38 = [v36 initWithUTF8String:v37];
                  v39 = [uUIDString4 isEqualToString:v38];

                  if ((v33 | v39) & 1) != 0 && (v69)
                  {
                    type = [v20 type];
                    v41 = [type isEqualToString:@"Table"];

                    if (v41)
                    {
                      v42 = oslog;
                      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                      {
                        identifier4 = [v20 identifier];
                        uUIDString5 = [identifier4 UUIDString];
                        *buf = 138412290;
                        *&buf[4] = uUIDString5;
                        _os_log_debug_impl(&dword_25D1DB000, oslog, OS_LOG_TYPE_DEBUG, "[3DOD] Add L shape attribute %@", buf, 0xCu);

                        v42 = oslog;
                      }

                      [v20 addObjectPartAttribute:v61];
                    }

                    if (v39)
                    {
                      v43 = [OU3DObjectDetector MergeLShapeObjects:isLastFrame:]::kObjectTypesWithParentId;
                      type2 = [v20 type];
                      LODWORD(v43) = [v43 containsObject:type2];

                      if (v43)
                      {
                        v45 = objc_alloc(MEMORY[0x277CCAD78]);
                        if (*(m + 39) >= 0)
                        {
                          v46 = (m + 2);
                        }

                        else
                        {
                          v46 = m[2];
                        }

                        v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:v46];
                        v48 = [v45 initWithUUIDString:v47];

                        [v20 setParent_id:v48];
                      }
                    }
                  }
                }
              }

              goto LABEL_47;
            }
          }
        }

        else
        {
LABEL_47:
          [v65 addObject:v20];
        }
      }

      v18 = [v63 countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v18);
  }

  v52 = OUVizTool::Get(v51);
  std::string::basic_string[abi:ne200100]<0>(buf, "before_l_shape");
  OUVizTool::SaveObjects(v52, buf, v65, @"rawdetection");
  if (SHIBYTE(v84) < 0)
  {
    operator delete(*buf);
  }

  v54 = OUVizTool::Get(v53);
  std::string::basic_string[abi:ne200100]<0>(buf, "after_l_shape");
  OUVizTool::SaveObjects(v54, buf, v65, @"lshaped");
  if (SHIBYTE(v84) < 0)
  {
    operator delete(*buf);
  }

  *buf = &v78;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](buf);

  return v65;
}

- (void)buildFrustumPointCloudFromWorldPointCloud
{
  v62 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  *&self->_anon_1c0[8] = *self->_anon_1c0;
  *&self->_anon_1c0[32] = *&self->_anon_1c0[24];
  *&self->_anon_1c0[56] = *&self->_anon_1c0[48];
  *&self->_anon_1c0[80] = *&self->_anon_1c0[72];
  OUPointCloudCpp::Reserve(self->_anon_1c0, 0x1ADB0uLL);
  [(OUPointCloud *)self->worldPointCloud reset];
  v3 = tan(self->frustumFOV * 0.5);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = self->keyframesPointCloud_;
  v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v4)
  {
    v54 = &self->_anon_1c0[72];
    v5 = v3;
    v56 = *v58;
    do
    {
      v6 = 0;
      v55 = v4;
      do
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NSDictionary *)self->keyframesPointCloud_ objectForKey:*(*(&v57 + 1) + 8 * v6)];
        v8 = [v7 count];
        semanticLabels = [v7 semanticLabels];
        points = [v7 points];
        semanticVotes = [v7 semanticVotes];
        if (v8)
        {
          v13 = semanticVotes;
          do
          {
            LODWORD(v12) = *semanticLabels;
            *&v12 = vceq_s16((vmovl_u8(*&v12).u64[0] & 0xFF00FF00FF00FFLL), 0xA000A000A000ALL);
            if ((vmaxv_u16(*&v12) & 1) == 0)
            {
              v12 = *points->f32;
              v14 = vaddq_f32(*&self->_anon_140[48], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*self->_anon_140, COERCE_FLOAT(*points->f32)), *&self->_anon_140[16], *points, 1), *&self->_anon_140[32], *points->f32, 2));
              if (fabsf(v14.f32[0]) <= 3.6 && v14.f32[1] <= 4.8 && v14.f32[1] >= 0.0 && fabsf(v14.f32[0] / v14.f32[1]) <= v5)
              {
                v16 = *&self->_anon_1c0[32];
                v15 = *&self->_anon_1c0[40];
                if (v16 >= v15)
                {
                  v18 = *&self->_anon_1c0[24];
                  v19 = (v16 - v18) >> 4;
                  if ((v19 + 1) >> 60)
                  {
                    std::vector<float>::__throw_length_error[abi:ne200100]();
                  }

                  v20 = v15 - v18;
                  v21 = v20 >> 3;
                  if (v20 >> 3 <= (v19 + 1))
                  {
                    v21 = v19 + 1;
                  }

                  if (v20 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v22 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v22 = v21;
                  }

                  if (v22)
                  {
                    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&self->_anon_1c0[24], v22);
                  }

                  v23 = (16 * v19);
                  *v23 = v14;
                  v17 = 16 * v19 + 16;
                  v24 = *&self->_anon_1c0[24];
                  v25 = *&self->_anon_1c0[32] - v24;
                  v26 = v23 - v25;
                  memcpy(v23 - v25, v24, v25);
                  v27 = *&self->_anon_1c0[24];
                  *&self->_anon_1c0[24] = v26;
                  *&self->_anon_1c0[32] = v17;
                  *&self->_anon_1c0[40] = 0;
                  if (v27)
                  {
                    operator delete(v27);
                  }
                }

                else
                {
                  *v16 = v14;
                  v17 = &v16[1];
                }

                *&self->_anon_1c0[32] = v17;
                v29 = *&self->_anon_1c0[56];
                v28 = *&self->_anon_1c0[64];
                if (v29 >= v28)
                {
                  v31 = *&self->_anon_1c0[48];
                  v32 = (v29 - v31) >> 2;
                  if ((v32 + 1) >> 62)
                  {
                    std::vector<float>::__throw_length_error[abi:ne200100]();
                  }

                  v33 = v28 - v31;
                  v34 = v33 >> 1;
                  if (v33 >> 1 <= (v32 + 1))
                  {
                    v34 = v32 + 1;
                  }

                  if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v35 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v35 = v34;
                  }

                  if (v35)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&self->_anon_1c0[48], v35);
                  }

                  v36 = (4 * v32);
                  *v36 = *semanticLabels;
                  v30 = 4 * v32 + 4;
                  v37 = *&self->_anon_1c0[48];
                  v38 = *&self->_anon_1c0[56] - v37;
                  v39 = v36 - v38;
                  memcpy(v36 - v38, v37, v38);
                  v40 = *&self->_anon_1c0[48];
                  *&self->_anon_1c0[48] = v39;
                  *&self->_anon_1c0[56] = v30;
                  *&self->_anon_1c0[64] = 0;
                  if (v40)
                  {
                    operator delete(v40);
                  }
                }

                else
                {
                  *v29 = *semanticLabels;
                  v30 = (v29 + 1);
                }

                *&self->_anon_1c0[56] = v30;
                v41 = *&self->_anon_1c0[80];
                v42 = *&self->_anon_1c0[88];
                if (v41 >= v42)
                {
                  v44 = (v41 - *v54) >> 3;
                  if ((v44 + 1) >> 61)
                  {
                    std::vector<float>::__throw_length_error[abi:ne200100]();
                  }

                  v45 = v42 - *v54;
                  v46 = v45 >> 2;
                  if (v45 >> 2 <= (v44 + 1))
                  {
                    v46 = v44 + 1;
                  }

                  if (v45 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v47 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v47 = v46;
                  }

                  if (v47)
                  {
                    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(v54, v47);
                  }

                  v48 = (8 * v44);
                  *v48 = *v13;
                  v43 = 8 * v44 + 8;
                  v49 = *&self->_anon_1c0[72];
                  v50 = *&self->_anon_1c0[80] - v49;
                  v51 = v48 - v50;
                  memcpy(v48 - v50, v49, v50);
                  v52 = *&self->_anon_1c0[72];
                  *&self->_anon_1c0[72] = v51;
                  *&self->_anon_1c0[80] = v43;
                  *&self->_anon_1c0[88] = 0;
                  if (v52)
                  {
                    operator delete(v52);
                  }
                }

                else
                {
                  *&v12 = *v13;
                  *v41 = *v13;
                  v43 = (v41 + 1);
                }

                *&self->_anon_1c0[80] = v43;
                v4 = v55;
              }
            }

            ++v13;
            points += 2;
            ++semanticLabels;
            --v8;
          }

          while (v8);
        }

        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(self->_anon_1c0, (*&self->_anon_1c0[32] - *&self->_anon_1c0[24]) >> 4);
        -[OUPointCloud append:points:semanticLabels:semanticVotes:colors:](self->worldPointCloud, "append:points:semanticLabels:semanticVotes:colors:", [v7 count], objc_msgSend(v7, "points"), objc_msgSend(v7, "semanticLabels"), objc_msgSend(v7, "semanticVotes"), objc_msgSend(v7, "colors"));

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSDictionary *)obj countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v4);
  }

  kdebug_trace();
}

- (BOOL)preprocess
{
  kdebug_trace();
  v23 = *&self->_anon_a0[48];
  v3 = vaddq_f32(*&self->_anon_a0[32], vmlaq_f32(vmulq_f32(*self->_anon_a0, 0), 0, *&self->_anon_a0[16])).u64[0];
  v4 = 1.57079633 - atan2f(*(&v3 + 1), *&v3);
  v5.i64[0] = 0;
  v5.i32[2] = 0;
  *&v5.i32[3] = -*&v23;
  v6.i64[0] = 0;
  v6.i32[2] = 0;
  *&v6.i32[3] = -*(&v23 + 1);
  v7 = vzip2q_s32(v5, xmmword_25D277BC0);
  v8 = vzip2q_s32(v6, xmmword_25D277B90);
  v21 = vzip2q_s32(v7, v8);
  v24 = vzip1q_s32(v7, v8);
  v11 = __sincosf_stret(v4);
  *v10.i32 = v11.__cosval;
  *v9.i8 = v11;
  v12 = 0;
  *&v10.i32[1] = -v11.__sinval;
  v13 = vzip1q_s32(v10, 0);
  v14 = vzip1q_s32(v9, 0);
  v15 = vzip1q_s32(v13, v14);
  v16 = vzip2q_s32(v13, v14);
  v26[0] = xmmword_25D277BA0;
  v26[1] = xmmword_25D277BB0;
  v26[2] = v24;
  v26[3] = v21;
  do
  {
    v27.columns[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(v26[v12])), v16, *&v26[v12], 1), xmmword_25D277BC0, v26[v12], 2), xmmword_25D277B90, v26[v12], 3);
    ++v12;
  }

  while (v12 != 4);
  v22 = v27.columns[1];
  v25 = v27.columns[0];
  v19 = v27.columns[3];
  v20 = v27.columns[2];
  v28 = __invert_f4(v27);
  *self->_anon_140 = v25;
  *&self->_anon_140[16] = v22;
  *&self->_anon_140[32] = v20;
  *&self->_anon_140[48] = v19;
  *self->_anon_180 = v28;
  [(OU3DObjectDetector *)self buildFrustumPointCloudFromWorldPointCloud];
  v17 = *&self->_anon_1c0[32] - *&self->_anon_1c0[24] > 0x3E70uLL;
  kdebug_trace();
  return v17;
}

- (void)modelProcess
{
  ou3dod::OU3DODInterface::Process(self->online_detector_.__ptr_, self->_anon_1c0);
  ptr = self->online_detector_.__ptr_;
  if (&self->cur_box3ds_ != (ptr + 8))
  {
    v4 = *(ptr + 1);
    v5 = *(ptr + 2);

    std::vector<OUBox3d>::__assign_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(&self->cur_box3ds_, v4, v5, 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 5));
  }
}

- (void)ValidateRawDetections:(void *)detections
{
  v4 = *(detections + 1);
  v5 = *detections;
  v6 = -1227133513 * ((v4 - *detections) >> 5);
  v7 = v6 - 1;
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *detections + 224 * v8;
      if ([*(v9 + 128) isEqualToString:@"Chair"] && (v16 = vsubq_f32(*(v9 + 16), *(v9 + 32)), sqrtf(vaddv_f32(*&vmulq_f32(v16, v16))) > 0.9))
      {
        std::swap[abi:ne200100]<OUBox3d>((*detections + 224 * v8), (*detections + 224 * v7--), v10, v11, v12, v13, v14, v15);
      }

      else
      {
        ++v8;
      }
    }

    while (v8 <= v7);
    v5 = *detections;
    v4 = *(detections + 1);
  }

  std::vector<OUBox3d>::erase(detections, (v5 + 224 * v7 + 224), v4);
}

- (void)postprocess
{
  v73 = *MEMORY[0x277D85DE8];
  p_cur_box3ds = &self->cur_box3ds_;
  kdebug_trace();
  v4 = [(OU3DObjectDetector *)self ValidateRawDetections:p_cur_box3ds];
  v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 0x6DB6DB6DB6DB6DB7 * ((self->cur_box3ds_.__end_ - self->cur_box3ds_.__begin_) >> 5);
    LODWORD(buf.var1) = 134217984;
    *(&buf.var1 + 4) = v7;
    _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "[3DOD] Detected new objects: %zu", &buf, 0xCu);
  }

  begin = self->cur_box3ds_.__begin_;
  end = self->cur_box3ds_.__end_;
  if (begin != end)
  {
    v10 = *self->_anon_180;
    v11 = *&self->_anon_180[16];
    v12 = *&self->_anon_180[32];
    v13 = *&self->_anon_180[48];
    do
    {
      for (i = 0; i != 128; i += 16)
      {
        *(&begin->var1 + i) = vaddq_f32(v13, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(*(&begin->var1 + i))), v11, *(&begin->var1 + i), 1), v12, *(&begin->var1 + i), 2));
      }

      begin = (begin + 224);
    }

    while (begin != end);
  }

  sizeRevision(p_cur_box3ds);
  v15 = p_cur_box3ds[1];
  if (*p_cur_box3ds != v15)
  {
    v16 = std::vector<OUBox3d>::__insert_with_size[abi:ne200100]<std::__wrap_iter<OUBox3d*>,std::__wrap_iter<OUBox3d*>>(&self->acc_box3ds_.__begin_, self->acc_box3ds_.__end_, *p_cur_box3ds, v15, 0x6DB6DB6DB6DB6DB7 * ((v15 - *p_cur_box3ds) >> 5));
    v17 = OUVizTool::Get(v16);
    std::string::basic_string[abi:ne200100]<0>(&buf, "accumulatedBoxData");
    OUVizTool::SaveBoxes(v17, &buf, &self->acc_box3ds_);
    if (SHIBYTE(buf.var3) < 0)
    {
      operator delete(buf.var1);
    }

    memset(v60, 0, sizeof(v60));
    p_hist_kept_box_ids = &self->hist_kept_box_ids_;
    withinClassNMS(&self->acc_box3ds_.__begin_, &self->hist_kept_box_ids_.__begin_, &self->hist_ori_iou_mat_.__begin_, &self->hist_nms_iou_mat_.__begin_, v60, &v58, 0.2);
    v57 = 0;
    v56 = 0uLL;
    std::vector<OUBox3d>::reserve(&v56, (v59 - v58) >> 3);
    v19 = v58;
    v20 = v59;
    memset(&v61, 0, sizeof(v61));
    std::vector<OUBox3d>::__init_with_size[abi:ne200100]<OUBox3d*,OUBox3d*>(&v61, self->acc_box3ds_.__begin_, self->acc_box3ds_.__end_, 0x6DB6DB6DB6DB6DB7 * ((self->acc_box3ds_.__end_ - self->acc_box3ds_.__begin_) >> 5));
    for (; v19 != v20; ++v19)
    {
      OUBox3d::OUBox3d(&buf, &v61.__begin_[56 * *v19]);
      v21 = *(&v56 + 1);
      if (*(&v56 + 1) >= v57)
      {
        v31 = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d>(&v56, &buf);
      }

      else
      {
        v22 = *&buf.var1;
        v23 = *&buf.var3;
        v24 = *&buf.var5.var2;
        *(*(&v56 + 1) + 32) = *&buf.var5.var0;
        *(v21 + 48) = v24;
        *v21 = v22;
        *(v21 + 16) = v23;
        v25 = *&buf.var6.var1;
        v26 = *&buf.var7;
        v27 = v64;
        *(v21 + 96) = v63;
        *(v21 + 112) = v27;
        *(v21 + 64) = v25;
        *(v21 + 80) = v26;
        v28 = v65;
        v65 = 0;
        *(v21 + 128) = v28;
        *(v21 + 136) = v66;
        v29 = v67;
        v67 = 0u;
        *(v21 + 176) = 0;
        *(v21 + 144) = v29;
        *(v21 + 160) = 0u;
        *(v21 + 160) = *v68;
        *(v21 + 176) = v69;
        *v68 = 0u;
        v69 = 0;
        *(v21 + 184) = __p[0];
        *(v21 + 192) = *&__p[1];
        memset(__p, 0, sizeof(__p));
        v30 = v71;
        v71 = 0;
        *(v21 + 208) = v30;
        *(v21 + 216) = v72;
        v31 = v21 + 224;
      }

      *(&v56 + 1) = v31;

      if (__p[0])
      {
        operator delete(__p[0]);
      }

      if (v68[0])
      {
        v68[1] = v68[0];
        operator delete(v68[0]);
      }
    }

    buf.var1 = &v61;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&buf);
    std::vector<OUBox3d>::__vdeallocate(&self->acc_box3ds_);
    *&self->acc_box3ds_.__begin_ = v56;
    self->acc_box3ds_.__cap_ = v57;
    v57 = 0;
    v56 = 0uLL;
    buf.var1 = &v56;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&buf);
    memset(&v61, 0, sizeof(v61));
    std::vector<int>::reserve(&v61, (v59 - v58) >> 3);
    v32 = v58;
    v33 = v59;
    memset(&buf, 0, 24);
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&buf, self->hist_kept_box_ids_.__begin_, self->hist_kept_box_ids_.__end_, self->hist_kept_box_ids_.__end_ - self->hist_kept_box_ids_.__begin_);
    if (v32 != v33)
    {
      v34 = v61.__end_;
      do
      {
        v35 = *(buf.var1 + *v32);
        if (v34 >= v61.__end_cap_.__value_)
        {
          v36 = v61.__begin_;
          v37 = v34 - v61.__begin_;
          v38 = v34 - v61.__begin_;
          v39 = v38 + 1;
          if ((v38 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v40 = v61.__end_cap_.__value_ - v61.__begin_;
          if ((v61.__end_cap_.__value_ - v61.__begin_) >> 1 > v39)
          {
            v39 = v40 >> 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v41 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&v61, v41);
          }

          v42 = v34 - v61.__begin_;
          v43 = (4 * v38);
          v44 = (4 * v38 - 4 * v42);
          *v43 = v35;
          v34 = v43 + 1;
          memcpy(v44, v36, v37);
          v45 = v61.__begin_;
          v61.__begin_ = v44;
          v61.__end_ = v34;
          v61.__end_cap_.__value_ = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v34++ = v35;
        }

        v61.__end_ = v34;
        ++v32;
      }

      while (v32 != v33);
    }

    if (buf.var1)
    {
      *&buf.var2 = buf.var1;
      operator delete(buf.var1);
    }

    v46 = p_hist_kept_box_ids->__begin_;
    if (p_hist_kept_box_ids->__begin_)
    {
      self->hist_kept_box_ids_.__end_ = v46;
      operator delete(v46);
      p_hist_kept_box_ids->__begin_ = 0;
      self->hist_kept_box_ids_.__end_ = 0;
      self->hist_kept_box_ids_.__cap_ = 0;
    }

    self->hist_kept_box_ids_ = v61;
    v47 = OUVizTool::Get(v46);
    std::string::basic_string[abi:ne200100]<0>(&buf, "withinClassNMSBoxData");
    OUVizTool::SaveBoxes(v47, &buf, &self->acc_box3ds_);
    if (SHIBYTE(buf.var3) < 0)
    {
      operator delete(buf.var1);
    }

    merger = self->merger;
    if (merger)
    {
      merger = objc_msgSend_mergeOtherObjects_(merger);
    }

    else
    {
      memset(&buf, 0, 24);
    }

    v49 = OUVizTool::Get(merger);
    std::string::basic_string[abi:ne200100]<0>(&v61, "mergeOtherObjectsBoxData");
    OUVizTool::SaveBoxes(v49, &v61, &buf);
    if (SHIBYTE(v61.__end_cap_.__value_) < 0)
    {
      operator delete(v61.__begin_);
    }

    v50 = self->merger;
    if (v50)
    {
      objc_msgSend_mergeCabinets_iou_mat_(v50);
    }

    else
    {
      memset(&v61, 0, sizeof(v61));
    }

    std::vector<OUBox3d>::__vdeallocate(&buf);
    *&buf.var1 = *&v61.__begin_;
    buf.var3 = v61.__end_cap_.__value_;
    memset(&v61, 0, sizeof(v61));
    *&v56 = &v61;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v56);
    v52 = OUVizTool::Get(v51);
    std::string::basic_string[abi:ne200100]<0>(&v61, "mergeCabinetsBoxData");
    OUVizTool::SaveBoxes(v52, &v61, &buf);
    if (SHIBYTE(v61.__end_cap_.__value_) < 0)
    {
      operator delete(v61.__begin_);
    }

    v53 = self->merger;
    if (v53)
    {
      objc_msgSend_crossClassNMS_(v53);
    }

    else
    {
      memset(&v61, 0, sizeof(v61));
    }

    std::vector<OUBox3d>::__vdeallocate(p_cur_box3ds + 6);
    *(p_cur_box3ds + 3) = *&v61.__begin_;
    self->merged_box3ds_.__cap_ = v61.__end_cap_.__value_;
    memset(&v61, 0, sizeof(v61));
    *&v56 = &v61;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v56);
    v55 = OUVizTool::Get(v54);
    std::string::basic_string[abi:ne200100]<0>(&v61, "crossClassNMSBoxData");
    OUVizTool::SaveBoxes(v55, &v61, p_cur_box3ds + 6);
    if (SHIBYTE(v61.__end_cap_.__value_) < 0)
    {
      operator delete(v61.__begin_);
    }

    v61.__begin_ = &buf;
    std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](&v61);
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    buf.var1 = v60;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&buf);
  }

  kdebug_trace();
}

- (void)ResestObjectSizeHistoryIfSizeChange:(id)change withOldObjects:(id)objects
{
  v42 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  objectsCopy = objects;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = changeCopy;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v6)
  {
    v26 = *v37;
    do
    {
      v27 = v6;
      for (i = 0; i != v27; ++i)
      {
        if (*v37 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        refined_box_history = [v7 refined_box_history];
        v9 = [refined_box_history count] == 0;

        if (!v9)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v10 = objectsCopy;
          v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v11)
          {
            v12 = *v33;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v33 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                identifier = [*(*(&v32 + 1) + 8 * j) identifier];
                identifier2 = [v7 identifier];
                v16 = [identifier isEqual:identifier2];

                if (v16)
                {
                  boxesDict = [v7 boxesDict];
                  v18 = [boxesDict objectForKeyedSubscript:@"rawdetection"];
                  box3dFromNSArray(v18, v30);
                  box3dToCentroidSizeAngle(v31, v30);

                  refined_box_history2 = [v7 refined_box_history];
                  lastObject = [refined_box_history2 lastObject];
                  preRefinedBox = [lastObject preRefinedBox];
                  box3dFromNSArray(preRefinedBox, v30);
                  box3dToCentroidSizeAngle(__p, v30);

                  v22 = __p[0];
                  if ((vabds_f32(*(v31[0] + 3), *(__p[0] + 3)) / *(__p[0] + 3)) <= 0.25 && (vabds_f32(*(v31[0] + 4), *(__p[0] + 4)) / *(__p[0] + 4)) <= 0.25 && (vabds_f32(*(v31[0] + 5), *(__p[0] + 5)) / *(__p[0] + 5)) <= 0.25 || (v23 = objc_opt_new(), [v7 setRefined_box_history:v23], v23, (v22 = __p[0]) != 0))
                  {
                    __p[1] = v22;
                    operator delete(v22);
                  }

                  if (v31[0])
                  {
                    v31[1] = v31[0];
                    operator delete(v31[0]);
                  }
                }
              }

              v11 = [v10 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v11);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v6);
  }
}

- (void)CopyRefineHistory:(id)history fromOldObjects:(id)objects
{
  v33 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  objectsCopy = objects;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = historyCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v20 = *v28;
    do
    {
      v22 = v6;
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = objectsCopy;
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = *v24;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              identifier = [v13 identifier];
              identifier2 = [v8 identifier];
              v16 = [identifier isEqual:identifier2];

              if (v16)
              {
                refined_box_history = [v13 refined_box_history];
                v18 = [refined_box_history copy];
                [v8 setRefined_box_history:v18];
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }
}

- (void)CopyObjectEmbedding:(id)embedding fromOldObjects:(id)objects
{
  v35 = *MEMORY[0x277D85DE8];
  embeddingCopy = embedding;
  objectsCopy = objects;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = embeddingCopy;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v22 = *v30;
    do
    {
      v24 = v6;
      for (i = 0; i != v24; ++i)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = objectsCopy;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = *v26;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = *(*(&v25 + 1) + 8 * j);
              identifier = [v13 identifier];
              identifier2 = [v8 identifier];
              v16 = [identifier isEqual:identifier2];

              if (v16)
              {
                embedding2d = [v13 embedding2d];
                v18 = [embedding2d copy];
                [v8 setEmbedding2d:v18];

                embedding3d = [v13 embedding3d];
                v20 = [embedding3d copy];
                [v8 setEmbedding3d:v20];
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }
}

- (id)FindNeedRefineBoxUUID:(id)d withOldObjects:(id)objects
{
  dCopy = d;
  objectsCopy = objects;
  rawBoxesFromObjects(dCopy, v34);
  rawBoxesFromObjects(objectsCopy, v33);
  v29 = [MEMORY[0x277CBEB58] set];
  v28 = objectsCopy;
  v8 = [dCopy count];
  if (v8 >= 1)
  {
    v9 = 0;
    v30 = v8 & 0x7FFFFFFF;
    do
    {
      v10 = v34[0] + 224 * v9;
      if ([(NSSet *)self->rgb_refine_supported_types_ containsObject:*(v10 + 128)])
      {
        v11 = [dCopy objectAtIndexedSubscript:v9];
        refined_box_history = [v11 refined_box_history];
        v13 = [refined_box_history count];

        if (!v13)
        {
          goto LABEL_9;
        }

        if (self->num_pre_key_frames_ != self->num_cur_key_frames_)
        {
          goto LABEL_11;
        }

        v14 = [dCopy objectAtIndexedSubscript:v9];
        v15 = dCopy;
        refined_box_history2 = [v14 refined_box_history];
        if (![refined_box_history2 count])
        {

          dCopy = v15;
LABEL_11:
          v22 = v33[0];
          v21 = v33[1];
          while (v22 != v21)
          {
            if ([*(v10 + 144) isEqual:v22[9].i64[0]])
            {
              box3dToCentroidSizeAngle(v32, v22);
              box3dToCentroidSizeAngle(__p, v10);
              v23 = 0;
              v24 = 0;
              v25 = __p[0];
              do
              {
                v24 |= vabds_f32(*(v32[0] + v23), *(__p[0] + v23)) > 0.05;
                v23 += 4;
              }

              while (v23 != 24);
              if ((v24 & 1) == 0 || ([v29 addObject:*(v10 + 144)], (v25 = __p[0]) != 0))
              {
                __p[1] = v25;
                operator delete(v25);
              }

              if (v32[0])
              {
                v32[1] = v32[0];
                operator delete(v32[0]);
              }

              goto LABEL_23;
            }

            v22 += 14;
          }

LABEL_9:
          [v29 addObject:*(v10 + 144)];
          goto LABEL_23;
        }

        v17 = [v15 objectAtIndexedSubscript:v9];
        refined_box_history3 = [v17 refined_box_history];
        lastObject = [refined_box_history3 lastObject];
        refinedBox = [lastObject refinedBox];

        dCopy = v15;
        if (!refinedBox)
        {
          goto LABEL_11;
        }
      }

LABEL_23:
      ++v9;
    }

    while (v9 != v30);
  }

  v26 = [v29 copy];

  v32[0] = v33;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v32);
  v33[0] = v34;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](v33);

  return v26;
}

- (id)regulateObjectSize:(id)size withOldObjects:(id)objects
{
  v36 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  objectsCopy = objects;
  v6 = 0;
  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  v24 = @"rawdetection";
  while (1)
  {
    v32 = v6;
    if ([sizeCopy count] <= v6)
    {
      break;
    }

    v7 = [sizeCopy objectAtIndexedSubscript:v32];
    type = [v7 type];
    v9 = [type isEqualToString:@"Screen"];

    if (v9)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = objectsCopy;
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
      if (v11)
      {
        v12 = *v29;
LABEL_6:
        v13 = 0;
        while (1)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          identifier = [v7 identifier];
          identifier2 = [v14 identifier];
          v17 = [identifier isEqual:identifier2];

          if (v17)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
            if (v11)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:

        boxesDict = [v7 boxesDict];
        v10 = [boxesDict objectForKey:v24];

        if (v10)
        {
          memset(v27, 0, sizeof(v27));
          box3dFromNSArray(v10, v27);
          box3dToCentroidSizeAngle(__p, v27);
          v19 = __p[0];
          if (sqrtf((*(__p[0] + 5) * *(__p[0] + 5)) + (*(__p[0] + 3) * *(__p[0] + 3))) >= 0.94 || (std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v33, &v32, &v32), (v19 = __p[0]) != 0))
          {
            __p[1] = v19;
            operator delete(v19);
          }
        }
      }
    }

    v6 = v32 + 1;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; i = v27[0].i32[0] + 1)
  {
    v27[0].i32[0] = i;
    if ([sizeCopy count] <= i)
    {
      break;
    }

    if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v33, v27))
    {
      v22 = [sizeCopy objectAtIndexedSubscript:v27[0].i32[0]];
      [v20 addObject:v22];
    }
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v33);

  return v20;
}

- (void)regulateObjectCornerOrders:(id)orders withOldObjects:(id)objects
{
  ordersCopy = orders;
  objectsCopy = objects;
  v45 = ordersCopy;
  kdebug_trace();
  rawBoxesFromObjects(ordersCopy, &v56);
  rawBoxesFromObjects(objectsCopy, &v54);
  v7 = OUVizTool::Get(v6);
  std::string::basic_string[abi:ne200100]<0>(__p, "regulateObjectCornerOrders");
  OUVizTool::SaveBoxes(v7, __p, &v56);
  if (SBYTE7(v47) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v56;
  v9 = v57;
  if (v57 != v56)
  {
    v10 = 0;
    v11 = 0;
    v12 = v54;
    v13 = v55;
    v14 = 64;
    do
    {
      if (v13 == v12)
      {
        v13 = v12;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = (v8 + 224 * v11);
        v43 = v14;
        v44 = v10;
        v18 = v8 + v10;
        v19 = v8 + v14;
        do
        {
          if ([*(v56 + 224 * v11 + 144) isEqual:*(v12 + 224 * v16 + 144)])
          {
            v20 = 0;
            v21 = 0;
            v22 = 3.4028e38;
            do
            {
              v23 = 0;
              v24 = 0.0;
              v25 = v20;
              do
              {
                if (v25 <= 0)
                {
                  v26 = -(-v25 & 3);
                }

                else
                {
                  v26 = v25 & 3;
                }

                v27 = vsubq_f32(v17[v26], *(v54 + v15 + v23));
                v28 = vmulq_f32(v27, v27);
                v24 = v24 + sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
                v23 += 16;
                ++v25;
              }

              while (v23 != 64);
              if (v24 < v22)
              {
                v22 = v24;
                v21 = v20;
              }

              ++v20;
            }

            while (v20 != 4);
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            *__p = 0u;
            v47 = 0u;
            v29 = *v17;
            v30 = v17[1];
            v31 = v17[3];
            v48 = v17[2];
            v49 = v31;
            *__p = v29;
            v47 = v30;
            v32 = v17[4];
            v33 = v17[5];
            v34 = v17[7];
            v52 = v17[6];
            v53 = v34;
            v50 = v32;
            v51 = v33;
            if (v21 >= 1)
            {
              v35 = 0;
              v36 = 4 - v21;
              do
              {
                if (v36 <= 0)
                {
                  v37 = -(-v36 & 3);
                }

                else
                {
                  v37 = v36 & 3;
                }

                *&__p[2 * v37] = *(v18 + v35);
                v35 += 16;
                ++v36;
              }

              while (v35 != 64);
              v38 = 0;
              v39 = 8 - v21;
              do
              {
                if (v39 <= 0)
                {
                  v40 = -(-v39 & 3);
                }

                else
                {
                  v40 = v39 & 3;
                }

                *&__p[2 * (v40 + 4)] = *(v19 + v38);
                v38 += 16;
                ++v39;
              }

              while (v38 != 64);
            }

            v41 = [v45 objectAtIndexedSubscript:v11];
            [v41 addBoxesDict:__p forDictKey:@"rawdetection"];
          }

          ++v16;
          v12 = v54;
          v13 = v55;
          v15 += 224;
        }

        while (0x6DB6DB6DB6DB6DB7 * ((v55 - v54) >> 5) > v16);
        v8 = v56;
        v9 = v57;
        v14 = v43;
        v10 = v44;
      }

      ++v11;
      v10 += 224;
      v14 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 5) > v11);
  }

  kdebug_trace();
  __p[0] = &v54;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v56;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
}

- (void)reviseObjectsUponParentId:(id)id
{
  v39 = *MEMORY[0x277D85DE8];
  idCopy = id;
  for (i = 0; i < [idCopy count]; ++i)
  {
    v4 = [idCopy objectAtIndexedSubscript:i];
    type = [v4 type];
    if ([type isEqualToString:@"Stove"])
    {
      v6 = [idCopy objectAtIndexedSubscript:i];
      parent_id = [v6 parent_id];

      if (parent_id)
      {
        v8 = [idCopy objectAtIndexedSubscript:i];
        for (j = 0; ; ++j)
        {
          if (j >= [idCopy count])
          {

            goto LABEL_25;
          }

          v28 = [idCopy objectAtIndexedSubscript:j];
          identifier = [v28 identifier];
          parent_id2 = [v8 parent_id];
          if ([identifier isEqual:parent_id2])
          {
            v12 = [idCopy objectAtIndexedSubscript:j];
            v13 = [v12 hasBoxesDict:@"rawdetection"];

            if ((v13 & 1) == 0)
            {
              continue;
            }

            v14 = [idCopy objectAtIndexedSubscript:j];
            v37 = 0u;
            memset(v36, 0, sizeof(v36));
            v28 = v14;
            boxesDict = [v14 boxesDict];
            v16 = [boxesDict objectForKey:@"rawdetection"];
            box3dFromNSArray(v16, v36);

            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            boxesDict2 = [v8 boxesDict];
            allKeys = [boxesDict2 allKeys];

            v19 = [allKeys countByEnumeratingWithState:&v32 objects:v38 count:16];
            if (v19)
            {
              v20 = *v33;
              do
              {
                for (k = 0; k != v19; ++k)
                {
                  if (*v33 != v20)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v22 = *(*(&v32 + 1) + 8 * k);
                  boxesDict3 = [v8 boxesDict];
                  v24 = [boxesDict3 objectForKey:v22];
                  box3dFromNSArray(v24, v30);
                  box3dToCentroidSizeAngle(__p, v30);

                  v25 = __p[0];
                  *(__p[0] + 5) = 1028443341;
                  v25[2] = *(&v37 + 2) + 0.025;
                  memset(v30, 0, sizeof(v30));
                  centroidSizeAngleToBox3d(__p, 1, v30);
                  boxesDict4 = [v8 boxesDict];
                  v27 = box3dToNSArray(v30);
                  [boxesDict4 setValue:v27 forKey:v22];

                  if (__p[0])
                  {
                    __p[1] = __p[0];
                    operator delete(__p[0]);
                  }
                }

                v19 = [allKeys countByEnumeratingWithState:&v32 objects:v38 count:16];
              }

              while (v19);
            }
          }

          else
          {
          }
        }
      }
    }

    else
    {
    }
  }

LABEL_25:
}

- (void)assignParentId:(id)id isOffline:(BOOL)offline
{
  offlineCopy = offline;
  v147 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = [idCopy count];
  v112 = [MEMORY[0x277CBEB98] setWithObjects:{@"Dishwasher", @"Washer", @"Oven", 0}];
  v7 = [MEMORY[0x277CBEB98] setWithObjects:{@"Stove", @"Sink", 0}];
  v111 = v7;
  if (offlineCopy)
  {
    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [OU3DObjectDetector assignParentId:isOffline:];
    }

    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v11 = [idCopy objectAtIndexedSubscript:i];
        [v11 setParent_id:0];
      }

LABEL_9:
      for (j = 0; j != v6; ++j)
      {
        v13 = [idCopy objectAtIndexedSubscript:j];
        type = [v13 type];
        if ([type isEqualToString:@"Cabinet"])
        {
          v15 = [idCopy objectAtIndexedSubscript:j];
          v16 = [v15 hasBoxesDict:@"rawdetection"];

          if (v16)
          {
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v17 = [idCopy objectAtIndexedSubscript:j];
            boxesDict = [v17 boxesDict];
            v19 = [boxesDict objectForKeyedSubscript:@"rawdetection"];
            box3dFromNSArray(v19, &v129);

            for (k = 0; k != v6; ++k)
            {
              v21 = [idCopy objectAtIndexedSubscript:k];
              type2 = [v21 type];
              if ([v112 containsObject:type2])
              {
                v23 = [idCopy objectAtIndexedSubscript:k];
                v24 = [v23 hasBoxesDict:@"rawdetection"];

                if (v24)
                {
                  v127 = 0u;
                  v128 = 0u;
                  v125 = 0u;
                  v126 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v25 = [idCopy objectAtIndexedSubscript:k];
                  boxesDict2 = [v25 boxesDict];
                  v27 = [boxesDict2 objectForKeyedSubscript:@"rawdetection"];
                  box3dFromNSArray(v27, &v121);

                  v114 = 0u;
                  v115 = 0u;
                  v113 = 0u;
                  box3dIou(&v113, &v129, &v121, 0, v28);
                  if (v113.f32[3] >= 0.8)
                  {
                    LODWORD(v29) = v114;
                    if (*&v114 < *(&v114 + 1))
                    {
                      v30 = [idCopy objectAtIndexedSubscript:{j, v29}];
                      identifier = [v30 identifier];
                      v32 = [identifier copy];
                      v33 = [idCopy objectAtIndexedSubscript:k];
                      [v33 setParent_id:v32];

                      v36 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v34, v35);
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                      {
                        v107 = [idCopy objectAtIndexedSubscript:k];
                        type3 = [v107 type];
                        v37 = [idCopy objectAtIndexedSubscript:j];
                        type4 = [v37 type];
                        v39 = [idCopy objectAtIndexedSubscript:k];
                        parent_id = [v39 parent_id];
                        *buf = 138412802;
                        *&buf[4] = type3;
                        *&buf[12] = 2112;
                        *&buf[14] = type4;
                        *&buf[22] = 2112;
                        *&buf[24] = parent_id;
                        _os_log_debug_impl(&dword_25D1DB000, v36, OS_LOG_TYPE_DEBUG, "%@ has parent object (%@) with parent_id: %@", buf, 0x20u);
                      }
                    }
                  }
                }
              }

              else
              {
              }
            }
          }
        }

        else
        {
        }
      }

      for (m = 0; m != v6; ++m)
      {
        v42 = [idCopy objectAtIndexedSubscript:m];
        type5 = [v42 type];
        v44 = type5;
        if (type5 == @"Cabinet")
        {
          v45 = [idCopy objectAtIndexedSubscript:m];
          v46 = [v45 hasBoxesDict:@"rawdetection"];

          if (v46)
          {
            for (n = 0; n != v6; ++n)
            {
              v48 = [idCopy objectAtIndexedSubscript:n];
              type6 = [v48 type];
              if ([v111 containsObject:type6])
              {
                v50 = [idCopy objectAtIndexedSubscript:n];
                v51 = [v50 hasBoxesDict:@"rawdetection"];

                if (v51)
                {
                  v135 = 0u;
                  v136 = 0u;
                  v133 = 0u;
                  v134 = 0u;
                  v131 = 0u;
                  v132 = 0u;
                  v129 = 0u;
                  v130 = 0u;
                  v52 = [idCopy objectAtIndexedSubscript:m];
                  boxesDict3 = [v52 boxesDict];
                  v54 = [boxesDict3 objectForKeyedSubscript:@"rawdetection"];
                  box3dFromNSArray(v54, &v129);

                  v127 = 0u;
                  v128 = 0u;
                  v125 = 0u;
                  v126 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v55 = [idCopy objectAtIndexedSubscript:n];
                  boxesDict4 = [v55 boxesDict];
                  v57 = [boxesDict4 objectForKeyedSubscript:@"rawdetection"];
                  box3dFromNSArray(v57, &v121);

                  v119 = 0u;
                  v120 = 0u;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  box3dEnlarge(&v113, &v121, 0, 0.0, 0.3);
                  *v146 = 0u;
                  memset(buf, 0, sizeof(buf));
                  box3dIou(buf, &v129, &v113, 0, v58);
                  if (*buf >= 0.000001)
                  {
                    *&v59 = v146[1];
                    if (v146[1] >= 0.5)
                    {
                      v60 = [idCopy objectAtIndexedSubscript:{m, v59}];
                      identifier2 = [v60 identifier];
                      v62 = [identifier2 copy];
                      v63 = [idCopy objectAtIndexedSubscript:n];
                      [v63 setParent_id:v62];

                      v66 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v64, v65);
                      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                      {
                        v108 = [idCopy objectAtIndexedSubscript:n];
                        type7 = [v108 type];
                        v67 = [idCopy objectAtIndexedSubscript:m];
                        type8 = [v67 type];
                        v69 = [idCopy objectAtIndexedSubscript:n];
                        [v69 parent_id];
                        v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                        *v137 = 138412802;
                        v138 = type7;
                        v139 = 2112;
                        v140 = type8;
                        v141 = 2112;
                        v142 = v70;
                        _os_log_debug_impl(&dword_25D1DB000, v66, OS_LOG_TYPE_DEBUG, "%@ has parent object (%@) with parent_id: %@", v137, 0x20u);
                      }
                    }
                  }
                }
              }

              else
              {
              }
            }
          }
        }

        else
        {
        }
      }

      v71 = 0;
      while (1)
      {
        v72 = [idCopy objectAtIndexedSubscript:v71];
        type9 = [v72 type];
        if (![type9 isEqualToString:@"Sink"])
        {
          goto LABEL_58;
        }

        v74 = [idCopy objectAtIndexedSubscript:v71];
        if (([v74 hasBoxesDict:@"rawdetection"] & 1) == 0)
        {
          break;
        }

        v75 = [idCopy objectAtIndexedSubscript:v71];
        parent_id2 = [v75 parent_id];
        v77 = parent_id2 == 0;

        if (v77)
        {
          v78 = 0;
          while (1)
          {
            v79 = [idCopy objectAtIndexedSubscript:v78];
            type10 = [v79 type];
            if ([type10 isEqualToString:@"Cabinet"])
            {
              break;
            }

            v81 = [idCopy objectAtIndexedSubscript:v78];
            type11 = [v81 type];
            v83 = [type11 isEqualToString:@"Table"];

            if (v83)
            {
              goto LABEL_48;
            }

LABEL_55:
            if (v6 == ++v78)
            {
              goto LABEL_59;
            }
          }

LABEL_48:
          v84 = [idCopy objectAtIndexedSubscript:v78];
          v85 = [v84 hasBoxesDict:@"rawdetection"];

          if (v85)
          {
            v135 = 0u;
            v136 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v86 = [idCopy objectAtIndexedSubscript:v71];
            boxesDict5 = [v86 boxesDict];
            v88 = [boxesDict5 objectForKeyedSubscript:@"rawdetection"];
            box3dFromNSArray(v88, &v129);

            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v121 = 0u;
            v122 = 0u;
            v89 = [idCopy objectAtIndexedSubscript:v78];
            boxesDict6 = [v89 boxesDict];
            v91 = [boxesDict6 objectForKeyedSubscript:@"rawdetection"];
            box3dFromNSArray(v91, &v121);

            v92 = *(&v133 + 2);
            v93 = *(&v125 + 2);
            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            box3dEnlarge(&v113, &v129, 0, 0.0, 0.2);
            *v146 = 0u;
            memset(buf, 0, sizeof(buf));
            box3dIou(buf, &v113, &v121, 0, v94);
            v95 = *buf;
            if (*buf > 0.01 && v92 > v93)
            {
              *&v95 = v146[1];
              if (v146[1] >= 0.5)
              {
                v96 = [idCopy objectAtIndexedSubscript:{v78, v95}];
                identifier3 = [v96 identifier];
                v98 = [identifier3 copy];
                v99 = [idCopy objectAtIndexedSubscript:v71];
                [v99 setParent_id:v98];

                v102 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v100, v101);
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                {
                  v103 = [idCopy objectAtIndexedSubscript:v78];
                  type12 = [v103 type];
                  v105 = [idCopy objectAtIndexedSubscript:v71];
                  parent_id3 = [v105 parent_id];
                  *v137 = 138413058;
                  v138 = type12;
                  v139 = 2112;
                  v140 = parent_id3;
                  v141 = 2048;
                  v142 = v146[0];
                  v143 = 2048;
                  v144 = v146[1];
                  _os_log_debug_impl(&dword_25D1DB000, v102, OS_LOG_TYPE_DEBUG, "The sink has parent object (%@) with parent_id: %@, %f, %f", v137, 0x2Au);
                }
              }
            }
          }

          goto LABEL_55;
        }

LABEL_59:
        if (++v71 == v6)
        {
          goto LABEL_60;
        }
      }

LABEL_58:
      goto LABEL_59;
    }
  }

  else if (v6)
  {
    goto LABEL_9;
  }

LABEL_60:
}

- (void)assignIdentifiersForNewObjects:(id)objects withOldObjects:(id)oldObjects
{
  v101[2] = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  oldObjectsCopy = oldObjects;
  kdebug_trace();
  rawBoxesFromObjects(objectsCopy, v97);
  rawBoxesFromObjects(oldObjectsCopy, &v95);
  v6 = @"Cabinet";
  v101[0] = v6;
  v101[1] = @"Shelf";
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v94, v101, 2);
  for (i = 1; i != -1; --i)
  {
  }

  v100[0] = @"Sofa";
  v100[1] = @"Chair";
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v93, v100, 2);
  for (j = 1; j != -1; --j)
  {
  }

  v99[0] = @"Dishwasher";
  v99[1] = @"Refrigerator";
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v92, v99, 2);
  for (k = 1; k != -1; --k)
  {
  }

  v98[0] = v6;
  v98[1] = @"Table";
  std::set<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::set[abi:ne200100](v91, v98, 2);
  for (m = 1; m != -1; --m)
  {
  }

  v12 = v97[0];
  v11 = v97[1];
  v13 = v95;
  v64 = v96;
  v14 = 0x6DB6DB6DB6DB6DB7 * ((v96 - v95) >> 5);
  v73.i32[0] = -1082130432;
  std::vector<float>::vector[abi:ne200100](__p, v14, &v73);
  std::vector<std::vector<float>>::vector[abi:ne200100](&v89, 0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 5), __p);
  v61 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v59 = v12;
  v60 = v11;
  if (v11 != v12)
  {
    v15 = 0;
    if (v14 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v14;
    }

    v17 = 0x6DB6DB6DB6DB6DB7 * ((v11 - v12) >> 5);
    if (v61 <= 1)
    {
      v17 = 1;
    }

    v63 = v17;
    while (v64 == v13)
    {
LABEL_40:
      if (++v15 == v63)
      {
        goto LABEL_41;
      }
    }

    v18 = 0;
    v19 = 0;
    while (1)
    {
      v20 = [*(v97[0] + 224 * v15 + 128) isEqualToString:*(v95 + v18 + 128)];
      v21 = v97[0] + 224 * v15;
      if (v20)
      {
        break;
      }

      if (std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v94, (v21 + 128)) && std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v94, (v95 + v18 + 128)))
      {
        box3dIou(__p, (v97[0] + 224 * v15), (v95 + v18), 0, v26);
        *(*(v89 + 24 * v15) + 4 * v19) = __p[0];
      }

      if (std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v93, (v97[0] + 224 * v15 + 128)) && std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v93, (v95 + v18 + 128)) || std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v92, (v97[0] + 224 * v15 + 128)) && std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v92, (v95 + v18 + 128)))
      {
        box3dIou(__p, (v97[0] + 224 * v15), (v95 + v18), 0, v27);
        if (*__p > 0.7)
        {
          *(*(v89 + 24 * v15) + 4 * v19) = __p[0];
        }
      }

      if (!std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v91, (v97[0] + 224 * v15 + 128)) || !std::__tree<NSString * {__strong},CompareNSString,std::allocator<NSString * {__strong}>>::__count_unique<NSString * {__strong}>(v91, (v95 + v18 + 128)))
      {
        goto LABEL_39;
      }

      box3dIou(__p, (v97[0] + 224 * v15), (v95 + v18), 0, v28);
      v24 = __p[0];
      v25 = *(v89 + 24 * v15);
      if (*__p > 0.3)
      {
        goto LABEL_38;
      }

      *(v25 + 4 * v19) = -1073741824;
LABEL_39:
      ++v19;
      v18 += 224;
      if (v16 == v19)
      {
        goto LABEL_40;
      }
    }

    if ([*(v21 + 128) isEqualToString:@"Screen"])
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      *__p = 0u;
      v82 = 0u;
      box3dEnlarge(__p, (v97[0] + 224 * v15), 0, 0.5, 0.0);
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      box3dEnlarge(&v73, (v95 + v18), 0, 0.5, 0.0);
      box3dIou(v72, __p, &v73, 0, v23);
      v24 = v72[0];
    }

    else
    {
      box3dIou(__p, (v97[0] + 224 * v15), (v95 + v18), 0, v22);
      v24 = __p[0];
    }

    v25 = *(v89 + 24 * v15);
LABEL_38:
    *(v25 + 4 * v19) = v24;
    goto LABEL_39;
  }

LABEL_41:
  std::vector<std::vector<int>>::vector[abi:ne200100](v72, v14);
  v29 = v61;
  std::vector<std::vector<int>>::vector[abi:ne200100](v71, v61);
  LODWORD(__p[0]) = 0;
  if (v60 != v59)
  {
    v30 = 0;
    do
    {
      v73.i32[0] = 0;
      if (v64 != v13)
      {
        v31 = 0;
        v32 = 0;
        do
        {
          if (*(*(v89 + 24 * SLODWORD(__p[0])) + 4 * v32) > 0.0)
          {
            std::vector<int>::push_back[abi:ne200100]((v72[0] + 24 * v32), __p);
            std::vector<int>::push_back[abi:ne200100]((v71[0] + 24 * SLODWORD(__p[0])), &v73);
            v31 = v73.i32[0];
          }

          v73.i32[0] = ++v31;
          v32 = v31;
        }

        while (v14 > v31);
        v30 = __p[0];
      }

      LODWORD(__p[0]) = ++v30;
    }

    while (v61 > v30);
    v33 = 0;
    v34 = 0;
    if (v61 <= 1)
    {
      v29 = 1;
    }

    do
    {
      v35 = *(v71[0] + v33);
      v36 = *(v71[0] + v33 + 8);
      memset(v69, 0, sizeof(v69));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v69, v89, v90, 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3));
      v37 = 126 - 2 * __clz((v36 - v35) >> 2);
      v70 = v34;
      if (v36 == v35)
      {
        v38 = 0;
      }

      else
      {
        v38 = v37;
      }

      std::__introsort<std::_ClassicAlgPolicy,[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_0 &,int *,false>(v35, v36, v69, v38, 1);
      __p[0] = v69;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      ++v34;
      v33 += 24;
    }

    while (v29 != v34);
  }

  if (v64 != v13)
  {
    v39 = 0;
    v40 = 0;
    if (v14 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v14;
    }

    do
    {
      v42 = *(v72[0] + v39);
      v43 = *(v72[0] + v39 + 8);
      memset(v67, 0, sizeof(v67));
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v67, v89, v90, 0xAAAAAAAAAAAAAAABLL * ((v90 - v89) >> 3));
      v44 = 126 - 2 * __clz((v43 - v42) >> 2);
      v68 = v40;
      if (v43 == v42)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      std::__introsort<std::_ClassicAlgPolicy,[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,false>(v42, v43, v67, v45, 1);
      __p[0] = v67;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
      ++v40;
      v39 += 24;
    }

    while (v41 != v40);
  }

  *__p = 0u;
  v82 = 0u;
  LODWORD(v83) = 1065353216;
  v73 = 0u;
  v74 = 0u;
  LODWORD(v75) = 1065353216;
  v66 = 0;
  if (v60 != v59)
  {
    v46 = 0;
    v47 = 0;
    do
    {
      v48 = v71[0] + 24 * v46;
      if (*v48 != *(v48 + 8))
      {
        v65 = **v48;
        if (**(v72[0] + 24 * v65) == v47)
        {
          v49 = [oldObjectsCopy objectAtIndexedSubscript:?];
          identifier = [v49 identifier];
          v51 = [objectsCopy objectAtIndexedSubscript:v66];
          [v51 setIdentifier:identifier];

          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(__p, &v66, &v66);
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v73.f32, &v65, &v65);
          v47 = v66;
        }
      }

      v66 = ++v47;
      v46 = v47;
    }

    while (v61 > v47);
    v66 = 0;
    if (v60 != v59)
    {
      do
      {
        if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(__p, &v66))
        {
          v53 = v71[0] + 24 * v66;
          v54 = *v53;
          v55 = *(v53 + 8);
          while (v54 != v55)
          {
            v65 = *v54;
            if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v73, &v65))
            {
              v56 = [oldObjectsCopy objectAtIndexedSubscript:v65];
              identifier2 = [v56 identifier];
              v58 = [objectsCopy objectAtIndexedSubscript:v66];
              [v58 setIdentifier:identifier2];

              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v73.f32, &v65, &v65);
              break;
            }

            ++v54;
          }
        }

        v52 = ++v66;
      }

      while (v61 > v52);
    }
  }

  kdebug_trace();
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v73);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(__p);
  __p[0] = v71;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v72;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = &v89;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](__p);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v91, v91[1]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v92, v92[1]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v93, v93[1]);
  std::__tree<std::__value_type<NSString * {__strong},float>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},float>,CompareNSString,true>,std::allocator<std::__value_type<NSString * {__strong},float>>>::destroy(v94, v94[1]);
  __p[0] = &v95;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v97;
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](__p);
}

- (void)setObjectRepresentationEnabled:(BOOL)enabled
{
  self->_ObjectRepresentationEnabled = enabled;
  if (enabled)
  {
    operator new();
  }

  p_ou3dor = &self->ou3dor_;

  std::unique_ptr<ou3dor::OU3DObjectRepresentation>::reset[abi:ne200100](p_ou3dor, 0);
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 3) = self + 32;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 85) = 0;
  *(self + 108) = 0;
  *(self + 110) = 0;
  *(self + 109) = 0;
  *(self + 117) = 0;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 17) = 0u;
  *(self + 32) = 0u;
  *(self + 33) = 0u;
  *(self + 30) = 0u;
  *(self + 31) = 0u;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 26) = 0u;
  *(self + 27) = 0u;
  *(self + 24) = 0u;
  *(self + 25) = 0u;
  *(self + 22) = 0u;
  *(self + 23) = 0u;
  *(self + 20) = 0u;
  *(self + 21) = 0u;
  *(self + 83) = 0;
  *(self + 632) = 0u;
  *(self + 648) = 0u;
  *(self + 600) = 0u;
  *(self + 616) = 0u;
  *(self + 568) = 0u;
  *(self + 584) = 0u;
  *(self + 552) = 0u;
  *(self + 824) = 0u;
  *(self + 840) = 0u;
  *(self + 792) = 0u;
  *(self + 808) = 0u;
  *(self + 760) = 0u;
  *(self + 776) = 0u;
  *(self + 728) = 0u;
  *(self + 744) = 0u;
  *(self + 712) = 0u;
  return self;
}

- (vector<unsigned)runwithinClassNMS:(OU3DObjectDetector *)self ids:(SEL)ids ori_iou:(const void *)ori_iou nms_iou:(void *)nms_iou
{
  memset(v8, 0, sizeof(v8));
  withinClassNMS(ori_iou, nms_iou, a6, a7, v8, &retstr->var0, 0.2);
  v9 = v8;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return result;
}

- (uint64_t)assignIdentifiersForNewObjects:(uint64_t *)objects withOldObjects:(uint64_t)oldObjects
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v106 = *(a2 - 1);
        v107 = *v10;
        if (*(*(*objects + 24 * v106) + 4 * *(objects + 6)) <= *(*(*objects + 24 * *v10) + 4 * *(objects + 6)))
        {
          return result;
        }

        *v10 = v106;
LABEL_173:
        *(a2 - 1) = v107;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,0>(v10, v10 + 1, v10 + 2, a2 - 1, objects);
    }

    if (v11 == 5)
    {
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,0>(v10, v10 + 1, v10 + 2, v10 + 3, objects);
      v98 = *(a2 - 1);
      v99 = v10[3];
      v100 = *objects;
      if (*(*(*objects + 24 * v98) + 4 * *(objects + 6)) > *(*(*objects + 24 * v99) + 4 * *(objects + 6)))
      {
        v10[3] = v98;
        *(a2 - 1) = v99;
        v102 = v10[2];
        v101 = v10[3];
        v103 = *(v100 + 24 * v101);
        if (*(v103 + 4 * *(objects + 6)) > *(*(v100 + 24 * v102) + 4 * *(objects + 6)))
        {
          v10[2] = v101;
          v10[3] = v102;
          v104 = v10[1];
          if (*(v103 + 4 * *(objects + 6)) > *(*(v100 + 24 * v104) + 4 * *(objects + 6)))
          {
            v10[1] = v101;
            v10[2] = v104;
            v105 = *v10;
            if (*(v103 + 4 * *(objects + 6)) > *(*(v100 + 24 * *v10) + 4 * *(objects + 6)))
            {
              *v10 = v101;
              v10[1] = v105;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      if (a5)
      {
        if (v10 != a2)
        {
          v115 = v10 + 1;
          if (v10 + 1 != a2)
          {
            v116 = 0;
            v117 = *objects;
            v118 = v10;
            do
            {
              v120 = *v118;
              v119 = v118[1];
              v118 = v115;
              v121 = *(v117 + 24 * v119);
              if (*(v121 + 4 * *(objects + 6)) > *(*(v117 + 24 * v120) + 4 * *(objects + 6)))
              {
                v122 = v116;
                while (1)
                {
                  *(v10 + v122 + 4) = v120;
                  if (!v122)
                  {
                    break;
                  }

                  v120 = *(v10 + v122 - 4);
                  v122 -= 4;
                  if (*(v121 + 4 * *(objects + 6)) <= *(*(v117 + 24 * v120) + 4 * *(objects + 6)))
                  {
                    v123 = (v10 + v122 + 4);
                    goto LABEL_126;
                  }
                }

                v123 = v10;
LABEL_126:
                *v123 = v119;
              }

              v115 = v118 + 1;
              v116 += 4;
            }

            while (v118 + 1 != a2);
          }
        }
      }

      else if (v10 != a2)
      {
        v162 = v10 + 1;
        if (v10 + 1 != a2)
        {
          v163 = *objects;
          do
          {
            v165 = *v9;
            v164 = v9[1];
            v9 = v162;
            v166 = v165;
            v167 = *(v163 + 24 * v164);
            if (*(v167 + 4 * *(objects + 6)) > *(*(v163 + 24 * v166) + 4 * *(objects + 6)))
            {
              v168 = v9;
              do
              {
                *v168 = v166;
                v166 = *(v168 - 2);
                --v168;
              }

              while (*(v167 + 4 * *(objects + 6)) > *(*(v163 + 24 * v166) + 4 * *(objects + 6)));
              *v168 = v164;
            }

            v162 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!oldObjects)
    {
      if (v10 != a2)
      {
        v124 = (v11 - 2) >> 1;
        v125 = *objects;
        v126 = v124;
        do
        {
          v127 = v126;
          if (v124 >= v126)
          {
            v128 = (2 * v126) | 1;
            v129 = &v10[v128];
            if (2 * v127 + 2 >= v11)
            {
              v130 = *(objects + 6);
            }

            else
            {
              v130 = *(objects + 6);
              if (*(*(v125 + 24 * *v129) + 4 * v130) > *(*(v125 + 24 * v129[1]) + 4 * v130))
              {
                ++v129;
                v128 = 2 * v127 + 2;
              }
            }

            v131 = &v10[v127];
            v132 = *v129;
            v133 = *v131;
            v134 = *(v125 + 24 * *v131);
            if (*(*(v125 + 24 * *v129) + 4 * v130) <= *(v134 + 4 * v130))
            {
              do
              {
                v135 = v129;
                *v131 = v132;
                if (v124 < v128)
                {
                  break;
                }

                v136 = 2 * v128;
                v128 = (2 * v128) | 1;
                v129 = &v10[v128];
                v137 = v136 + 2;
                v138 = *(objects + 6);
                if (v137 < v11 && *(*(v125 + 24 * *v129) + 4 * v138) > *(*(v125 + 24 * v129[1]) + 4 * v138))
                {
                  ++v129;
                  v128 = v137;
                }

                v132 = *v129;
                v139 = *(*(v125 + 24 * *v129) + 4 * v138);
                v140 = *(v134 + 4 * v138);
                v131 = v135;
              }

              while (v139 <= v140);
              *v135 = v133;
            }
          }

          v126 = v127 - 1;
        }

        while (v127);
        do
        {
          v141 = 0;
          v142 = *v10;
          v143 = *objects;
          v144 = v10;
          do
          {
            v145 = v144;
            v146 = &v144[v141];
            v144 = v146 + 1;
            v147 = 2 * v141;
            result = (2 * v141) | 1;
            v141 = result;
            v148 = v147 + 2;
            if (v148 < v11)
            {
              v150 = v146[2];
              v149 = v146 + 2;
              result = *(v143 + 24 * v150);
              if (*(*(v143 + 24 * *(v149 - 1)) + 4 * *(objects + 6)) > *(result + 4 * *(objects + 6)))
              {
                v144 = v149;
                v141 = v148;
              }
            }

            *v145 = *v144;
          }

          while (v141 <= ((v11 - 2) >> 1));
          if (v144 == --a2)
          {
            *v144 = v142;
          }

          else
          {
            *v144 = *a2;
            *a2 = v142;
            v151 = (v144 - v10 + 4) >> 2;
            v152 = v151 < 2;
            v153 = v151 - 2;
            if (!v152)
            {
              v154 = v153 >> 1;
              v155 = &v10[v154];
              v156 = *v155;
              v157 = *v144;
              v158 = *(v143 + 24 * *v144);
              if (*(*(v143 + 24 * *v155) + 4 * *(objects + 6)) > *(v158 + 4 * *(objects + 6)))
              {
                do
                {
                  v159 = v155;
                  *v144 = v156;
                  if (!v154)
                  {
                    break;
                  }

                  v154 = (v154 - 1) >> 1;
                  v155 = &v10[v154];
                  v156 = *v155;
                  result = *(objects + 6);
                  v144 = v159;
                }

                while (*(*(v143 + 24 * *v155) + 4 * result) > *(v158 + 4 * result));
                *v159 = v157;
              }
            }
          }

          v152 = v11-- <= 2;
        }

        while (!v152);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *objects;
    v15 = *(objects + 6);
    v16 = *(a2 - 1);
    v17 = *(*(*objects + 24 * v16) + 4 * v15);
    if (v11 >= 0x81)
    {
      v18 = *v12;
      v19 = *v10;
      v20 = *(*(v14 + 24 * *v12) + 4 * v15);
      v21 = *(v14 + 24 * *v10);
      if (v20 <= *(v21 + 4 * v15))
      {
        if (v17 > v20)
        {
          *v12 = v16;
          *(a2 - 1) = v18;
          v26 = *v10;
          if (*(*(v14 + 24 * *v12) + 4 * *(objects + 6)) > *(*(v14 + 24 * *v10) + 4 * *(objects + 6)))
          {
            *v10 = *v12;
            *v12 = v26;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v10 = v16;
          goto LABEL_27;
        }

        *v10 = v18;
        *v12 = v19;
        v28 = *(a2 - 1);
        if (*(*(v14 + 24 * v28) + 4 * *(objects + 6)) > *(v21 + 4 * *(objects + 6)))
        {
          *v12 = v28;
LABEL_27:
          *(a2 - 1) = v19;
        }
      }

      v29 = v12 - 1;
      v30 = *(v12 - 1);
      v31 = v10[1];
      v32 = *(objects + 6);
      v33 = *(*(v14 + 24 * v30) + 4 * v32);
      v34 = *(v14 + 24 * v31);
      v35 = *(a2 - 2);
      v36 = *(*(v14 + 24 * v35) + 4 * v32);
      if (v33 <= *(v34 + 4 * v32))
      {
        if (v36 > v33)
        {
          *v29 = v35;
          *(a2 - 2) = v30;
          v37 = v10[1];
          if (*(*(v14 + 24 * *v29) + 4 * *(objects + 6)) > *(*(v14 + 24 * v37) + 4 * *(objects + 6)))
          {
            v10[1] = *v29;
            *v29 = v37;
          }
        }
      }

      else
      {
        if (v36 > v33)
        {
          v10[1] = v35;
          goto LABEL_39;
        }

        v10[1] = v30;
        *v29 = v31;
        v39 = *(a2 - 2);
        if (*(*(v14 + 24 * v39) + 4 * *(objects + 6)) > *(v34 + 4 * *(objects + 6)))
        {
          *v29 = v39;
LABEL_39:
          *(a2 - 2) = v31;
        }
      }

      v42 = v12[1];
      v40 = v12 + 1;
      v41 = v42;
      v43 = v10[2];
      v44 = *(objects + 6);
      v45 = *(*(v14 + 24 * v42) + 4 * v44);
      v46 = *(v14 + 24 * v43);
      v47 = *(a2 - 3);
      v48 = *(*(v14 + 24 * v47) + 4 * v44);
      if (v45 <= *(v46 + 4 * v44))
      {
        if (v48 > v45)
        {
          *v40 = v47;
          *(a2 - 3) = v41;
          v49 = v10[2];
          if (*(*(v14 + 24 * *v40) + 4 * *(objects + 6)) > *(*(v14 + 24 * v49) + 4 * *(objects + 6)))
          {
            v10[2] = *v40;
            *v40 = v49;
          }
        }
      }

      else
      {
        if (v48 > v45)
        {
          v10[2] = v47;
          goto LABEL_48;
        }

        v10[2] = v41;
        *v40 = v43;
        v50 = *(a2 - 3);
        if (*(*(v14 + 24 * v50) + 4 * *(objects + 6)) > *(v46 + 4 * *(objects + 6)))
        {
          *v40 = v50;
LABEL_48:
          *(a2 - 3) = v43;
        }
      }

      v51 = *v13;
      v52 = *v29;
      v53 = *(objects + 6);
      v54 = *(*(v14 + 24 * *v13) + 4 * v53);
      v55 = *(v14 + 24 * *v29);
      v56 = *v40;
      v57 = *(v14 + 24 * *v40);
      v58 = *(v57 + 4 * v53);
      if (v54 <= *(v55 + 4 * v53))
      {
        if (v58 <= v54)
        {
          goto LABEL_56;
        }

        *v13 = v56;
        *v40 = v51;
        v62 = *(objects + 6);
        v63 = *(v57 + 4 * v62);
        v64 = *(v55 + 4 * v62);
        v40 = v13;
        v51 = v52;
        if (v63 <= v64)
        {
          v51 = v56;
          goto LABEL_56;
        }
      }

      else if (v58 <= v54)
      {
        *v29 = v51;
        *v13 = v52;
        v59 = *(objects + 6);
        v60 = *(v57 + 4 * v59);
        v61 = *(v55 + 4 * v59);
        v29 = v13;
        v51 = v56;
        if (v60 <= v61)
        {
          v51 = v52;
LABEL_56:
          v65 = *v10;
          *v10 = v51;
          *v13 = v65;
          goto LABEL_57;
        }
      }

      *v29 = v56;
      *v40 = v52;
      goto LABEL_56;
    }

    v22 = *v10;
    v23 = *v13;
    v24 = *(*(v14 + 24 * *v10) + 4 * v15);
    v25 = *(v14 + 24 * *v13);
    if (v24 <= *(v25 + 4 * v15))
    {
      if (v17 > v24)
      {
        *v10 = v16;
        *(a2 - 1) = v22;
        v27 = *v13;
        if (*(*(v14 + 24 * *v10) + 4 * *(objects + 6)) > *(*(v14 + 24 * *v13) + 4 * *(objects + 6)))
        {
          *v13 = *v10;
          *v10 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 > v24)
    {
      *v13 = v16;
LABEL_36:
      *(a2 - 1) = v23;
      goto LABEL_57;
    }

    *v13 = v22;
    *v10 = v23;
    v38 = *(a2 - 1);
    if (*(*(v14 + 24 * v38) + 4 * *(objects + 6)) > *(v25 + 4 * *(objects + 6)))
    {
      *v10 = v38;
      goto LABEL_36;
    }

LABEL_57:
    --oldObjects;
    v66 = *v10;
    v67 = *v10;
    v68 = *(objects + 6);
    if (a5)
    {
      v69 = *(v14 + 24 * v67);
      v70 = *(v69 + 4 * v68);
LABEL_60:
      v71 = 0;
      do
      {
        v72 = v10[++v71];
      }

      while (*(*(v14 + 24 * v72) + 4 * v68) > v70);
      v73 = &v10[v71];
      v74 = a2;
      if (v71 == 1)
      {
        v74 = a2;
        do
        {
          if (v73 >= v74)
          {
            break;
          }

          v76 = *--v74;
        }

        while (*(*(v14 + 24 * v76) + 4 * v68) <= v70);
      }

      else
      {
        do
        {
          v75 = *--v74;
        }

        while (*(*(v14 + 24 * v75) + 4 * v68) <= v70);
      }

      if (v73 >= v74)
      {
        v85 = v73 - 1;
      }

      else
      {
        v77 = *v74;
        v78 = v72;
        v79 = v73;
        v80 = v74;
        do
        {
          *v79 = v77;
          *v80 = v78;
          v81 = *(objects + 6);
          v82 = *(v69 + 4 * v81);
          do
          {
            v83 = v79[1];
            ++v79;
            v78 = v83;
          }

          while (*(*(v14 + 24 * v83) + 4 * v81) > v82);
          do
          {
            v84 = *--v80;
            v77 = v84;
          }

          while (*(*(v14 + 24 * v84) + 4 * v81) <= v82);
        }

        while (v79 < v80);
        v85 = v79 - 1;
      }

      if (v85 != v10)
      {
        *v10 = *v85;
      }

      *v85 = v66;
      if (v73 < v74)
      {
        goto LABEL_81;
      }

      v86 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *>(v10, v85, objects);
      v10 = v85 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *>(v85 + 1, a2, objects);
      if (result)
      {
        a2 = v85;
        if (!v86)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v86)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,[OU3DObjectDetector assignIdentifiersForNewObjects:withOldObjects:]::$_1 &,int *,false>(v9, v85, objects, oldObjects, a5 & 1);
        a5 = 0;
        v10 = v85 + 1;
      }
    }

    else
    {
      v69 = *(v14 + 24 * v67);
      v70 = *(v69 + 4 * v68);
      if (*(*(v14 + 24 * *(v10 - 1)) + 4 * v68) > v70)
      {
        goto LABEL_60;
      }

      if (v70 <= *(*(v14 + 24 * *(a2 - 1)) + 4 * v68))
      {
        v88 = (v10 + 1);
        do
        {
          v10 = v88;
          if (v88 >= a2)
          {
            break;
          }

          v88 += 4;
        }

        while (v70 <= *(*(v14 + 24 * *v10) + 4 * v68));
      }

      else
      {
        do
        {
          v87 = v10[1];
          ++v10;
        }

        while (v70 <= *(*(v14 + 24 * v87) + 4 * v68));
      }

      v89 = a2;
      if (v10 < a2)
      {
        v89 = a2;
        do
        {
          v90 = *--v89;
        }

        while (v70 > *(*(v14 + 24 * v90) + 4 * v68));
      }

      if (v10 < v89)
      {
        v91 = *v10;
        v92 = *v89;
        do
        {
          *v10 = v92;
          *v89 = v91;
          v93 = *(objects + 6);
          v94 = *(v69 + 4 * v93);
          do
          {
            v95 = v10[1];
            ++v10;
            v91 = v95;
          }

          while (v94 <= *(*(v14 + 24 * v95) + 4 * v93));
          do
          {
            v96 = *--v89;
            v92 = v96;
          }

          while (v94 > *(*(v14 + 24 * v96) + 4 * v93));
        }

        while (v10 < v89);
      }

      v97 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v97;
      }

      a5 = 0;
      *v97 = v66;
    }
  }

  v107 = *v10;
  v108 = v10[1];
  v109 = *objects;
  v110 = *(objects + 6);
  v111 = *(*(*objects + 24 * v108) + 4 * v110);
  v112 = *(*objects + 24 * *v10);
  v113 = *(a2 - 1);
  v114 = *(*(*objects + 24 * v113) + 4 * v110);
  if (v111 > *(v112 + 4 * v110))
  {
    if (v114 <= v111)
    {
      *v10 = v108;
      v10[1] = v107;
      v169 = *(a2 - 1);
      if (*(*(v109 + 24 * v169) + 4 * *(objects + 6)) <= *(v112 + 4 * *(objects + 6)))
      {
        return result;
      }

      v10[1] = v169;
    }

    else
    {
      *v10 = v113;
    }

    goto LABEL_173;
  }

  if (v114 > v111)
  {
    v10[1] = v113;
    *(a2 - 1) = v108;
    v161 = *v10;
    v160 = v10[1];
    if (*(*(v109 + 24 * v160) + 4 * *(objects + 6)) > *(*(v109 + 24 * *v10) + 4 * *(objects + 6)))
    {
      *v10 = v160;
      v10[1] = v161;
    }
  }

  return result;
}

- (void)generateOfflineObjects:(os_log_t)log onlineObjects:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD] Return online result (might be nil) due to insufficient pc: %zu", buf, 0xCu);
}

- (void)combineBoxTypeAndEmbeddingByUUID:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_25D1DB000, log, OS_LOG_TYPE_DEBUG, "[3DOD] WARNING: there shouldn't be duplicated object box type in the reference array.", buf, 2u);
}

@end