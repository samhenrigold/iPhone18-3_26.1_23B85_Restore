@interface RSOnlineFloorPlanGenerator
- (RSOnlineFloorPlanGenerator)init;
- (void)clear;
- (void)generateFloorPlanWithInputDir:(id)dir outputDir:(id)outputDir debug:(BOOL)debug;
- (void)generateFloorPlanWithInputPath:(id)path outputPath:(id)outputPath debug:(BOOL)debug;
@end

@implementation RSOnlineFloorPlanGenerator

- (void)clear
{
  v131 = *MEMORY[0x277D85DE8];
  v128.receiver = self;
  v128.super_class = RSOnlineFloorPlanGenerator;
  [(RSFloorPlanGeneratorBase *)&v128 clear];
  onlineWallOpeningConsistency = self->_onlineWallOpeningConsistency;
  if (onlineWallOpeningConsistency)
  {
    size = onlineWallOpeningConsistency[31].__r_.__value_.__l.__size_;
    data = onlineWallOpeningConsistency[31].__r_.__value_.__l.__data_;
    if (size != data)
    {
      v9 = size - 176;
      v10 = (size - 176);
      v11 = (size - 176);
      do
      {
        v12 = *v11;
        v11 -= 22;
        (*v12)(v10);
        v9 -= 176;
        _ZF = v10 == data;
        v10 = v11;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[31].__r_.__value_.__l.__size_ = data;
    v14 = onlineWallOpeningConsistency[32].__r_.__value_.__l.__size_;
    v15 = onlineWallOpeningConsistency[32].__r_.__value_.__l.__data_;
    if (v14 != v15)
    {
      v16 = v14 - 176;
      v17 = (v14 - 176);
      v18 = (v14 - 176);
      do
      {
        v19 = *v18;
        v18 -= 22;
        (*v19)(v17);
        v16 -= 176;
        _ZF = v17 == v15;
        v17 = v18;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[32].__r_.__value_.__l.__size_ = v15;
    v20 = onlineWallOpeningConsistency[33].__r_.__value_.__l.__size_;
    v21 = onlineWallOpeningConsistency[33].__r_.__value_.__l.__data_;
    if (v20 != v21)
    {
      v22 = v20 - 176;
      v23 = (v20 - 176);
      v24 = (v20 - 176);
      do
      {
        v25 = *v24;
        v24 -= 22;
        (*v25)(v23);
        v22 -= 176;
        _ZF = v23 == v21;
        v23 = v24;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[33].__r_.__value_.__l.__size_ = v21;
    v26 = onlineWallOpeningConsistency[34].__r_.__value_.__l.__size_;
    v27 = onlineWallOpeningConsistency[34].__r_.__value_.__l.__data_;
    if (v26 != v27)
    {
      v28 = v26 - 176;
      v29 = (v26 - 176);
      v30 = (v26 - 176);
      do
      {
        v31 = *v30;
        v30 -= 22;
        (*v31)(v29);
        v28 -= 176;
        _ZF = v29 == v27;
        v29 = v30;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[34].__r_.__value_.__l.__size_ = v27;
    v32 = onlineWallOpeningConsistency[35].__r_.__value_.__l.__size_;
    v33 = onlineWallOpeningConsistency[35].__r_.__value_.__l.__data_;
    if (v32 != v33)
    {
      v34 = v32 - 176;
      v35 = (v32 - 176);
      v36 = (v32 - 176);
      do
      {
        v37 = *v36;
        v36 -= 22;
        (*v37)(v35);
        v34 -= 176;
        _ZF = v35 == v33;
        v35 = v36;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[35].__r_.__value_.__l.__size_ = v33;
    v38 = onlineWallOpeningConsistency[36].__r_.__value_.__l.__size_;
    v39 = onlineWallOpeningConsistency[36].__r_.__value_.__l.__data_;
    if (v38 != v39)
    {
      v40 = v38 - 176;
      v41 = (v38 - 176);
      v42 = (v38 - 176);
      do
      {
        v43 = *v42;
        v42 -= 22;
        (*v43)(v41);
        v40 -= 176;
        _ZF = v41 == v39;
        v41 = v42;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[36].__r_.__value_.__l.__size_ = v39;
    v44 = onlineWallOpeningConsistency[37].__r_.__value_.__l.__size_;
    v45 = onlineWallOpeningConsistency[37].__r_.__value_.__l.__data_;
    while (v44 != v45)
    {
      v46 = *(v44 - 8);
      v44 -= 8;
    }

    onlineWallOpeningConsistency[37].__r_.__value_.__l.__size_ = v45;
    sub_262353488(onlineWallOpeningConsistency[38].__r_.__value_.__r.__words);
    v48 = onlineWallOpeningConsistency[61].__r_.__value_.__l.__data_;
    v49 = onlineWallOpeningConsistency[60].__r_.__value_.__r.__words[2];
    if (v48 != v49)
    {
      v50 = v48 - 320;
      v51 = (v48 - 320);
      do
      {
        (**v51)(v51);
        v50 -= 320;
        _ZF = v51 == v49;
        v51 -= 40;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[61].__r_.__value_.__r.__words[0] = v49;
    v52 = onlineWallOpeningConsistency[62].__r_.__value_.__l.__data_;
    v53 = onlineWallOpeningConsistency[61].__r_.__value_.__r.__words[2];
    while (v52 != v53)
    {
      v54 = *(v52 - 1);
      v52 -= 8;
    }

    onlineWallOpeningConsistency[62].__r_.__value_.__r.__words[0] = v53;
    onlineWallOpeningConsistency[66].__r_.__value_.__s.__data_[8] = 0;
    v55 = onlineWallOpeningConsistency[67].__r_.__value_.__l.__data_;
    v56 = onlineWallOpeningConsistency[66].__r_.__value_.__r.__words[2];
    if (v55 != v56)
    {
      v57 = v55 - 176;
      v58 = (v55 - 176);
      v59 = (v55 - 176);
      do
      {
        v60 = *v59;
        v59 -= 22;
        (*v60)(v58);
        v57 -= 176;
        _ZF = v58 == v56;
        v58 = v59;
      }

      while (!_ZF);
    }

    onlineWallOpeningConsistency[67].__r_.__value_.__r.__words[0] = v56;
    onlineWallOpeningConsistency[29].__r_.__value_.__l.__size_ = onlineWallOpeningConsistency[29].__r_.__value_.__r.__words[0];
    v129[0] = 0;
    v130 = 0;
    sub_262277818(onlineWallOpeningConsistency + 14, v129, v47);
    if (v130 == 1)
    {
      sub_2621C50C4(v129);
    }

    v61 = objc_alloc_init(RSFloorPlan);
    v62 = onlineWallOpeningConsistency[68].__r_.__value_.__l.__data_;
    onlineWallOpeningConsistency[68].__r_.__value_.__r.__words[0] = v61;

    sub_2622F7918(onlineWallOpeningConsistency[69].__r_.__value_.__r.__words);
  }

  onlineDoorWindow = self->_onlineDoorWindow;
  if (onlineDoorWindow)
  {
    sub_26224A528(&onlineDoorWindow->_merger_for_close_door_window);
    sub_26224A528(&onlineDoorWindow->_merger_for_open_door);
    objc_msgSend_removeAllObjects(onlineDoorWindow->_wall_selector_for_door_window._infer_wall_openings, v64, v65);
    objc_msgSend_removeAllObjects(onlineDoorWindow->_wall_selector_for_door_window._target_infer_wall_openings, v66, v67);
    onlineDoorWindow->_wall_selector_for_door_window._infer_wall_openings_attributes.__end_ = onlineDoorWindow->_wall_selector_for_door_window._infer_wall_openings_attributes.__begin_;
    onlineDoorWindow->_wall_selector_for_door_window._target_infer_wall_openings_attributes.__end_ = onlineDoorWindow->_wall_selector_for_door_window._target_infer_wall_openings_attributes.__begin_;
    objc_msgSend_removeAllObjects(onlineDoorWindow->_open_selector_for_door_window._infer_wall_openings, v68, v69);
    objc_msgSend_removeAllObjects(onlineDoorWindow->_open_selector_for_door_window._target_infer_wall_openings, v70, v71);
    onlineDoorWindow->_open_selector_for_door_window._infer_wall_openings_attributes.__end_ = onlineDoorWindow->_open_selector_for_door_window._infer_wall_openings_attributes.__begin_;
    onlineDoorWindow->_open_selector_for_door_window._target_infer_wall_openings_attributes.__end_ = onlineDoorWindow->_open_selector_for_door_window._target_infer_wall_openings_attributes.__begin_;
  }

  mirrorDetector = self->_mirrorDetector;
  if (mirrorDetector)
  {
    objc_msgSend_removeAllObjects(mirrorDetector->_mirrorPoints, v3, v4);
  }

  accumulator = self->_accumulator;
  if (accumulator)
  {
    objc_msgSend_removeAllObjects(accumulator->_metas, v3, v4);
    objc_msgSend_removeAllObjects(accumulator->_diffKeyframes, v74, v75);
    objc_msgSend_removeAllObjects(accumulator->_newKeyframes, v76, v77);
    objc_msgSend_removeAllObjects(accumulator->_keyframeOrderDict, v78, v79);
    objc_msgSend_reset(accumulator->_worldpc, v80, v81);
    sub_26229CE70(&accumulator->_accMeta->super.isa, v82, v83);
    accumulator->_skipCnt = 0;
  }

  geometryEstimator = self->_geometryEstimator;
  if (geometryEstimator)
  {
    geoMeta = geometryEstimator->_geoMeta;
    if (geoMeta)
    {
      geoMeta->_isCenterScaleUpdated = 0;
      v86 = geometryEstimator->_geoMeta;
      if (v86)
      {
        v86->_pixelSize = geometryEstimator->_initParam.pixel_sz;
        v87 = geometryEstimator->_geoMeta;
        if (v87)
        {
          v5.f64[0] = geometryEstimator->_initParam.z_slice_pixel;
          __asm { FMOV            V2.2D, #1.0 }

          *&v87->_scale[4] = vdivq_f64(_Q2, vdupq_lane_s64(COERCE__INT64(v87->_pixelSize), 0));
          *&v87->_scale[20] = vdivq_f64(_Q2, v5);
          v92 = geometryEstimator->_geoMeta;
          if (v92)
          {
            *&v92->_center[4] = 0u;
            v93 = geometryEstimator->_geoMeta;
            if (v93)
            {
              *&v93->_shift[4] = 0;
              *&v93->_shift[12] = 0;
              *&v93->_shift[20] = 0uLL;
              v94 = geometryEstimator->_geoMeta;
              if (v94)
              {
                v94->_floorHeight = 0.0;
                v95 = geometryEstimator->_geoMeta;
                if (v95)
                {
                  v95->_ceilingHeight = 0.0;
                  v96 = geometryEstimator->_geoMeta;
                  if (v96)
                  {
                    v96->_supportHeight = 0.0;
                    v97 = geometryEstimator->_geoMeta;
                    if (v97)
                    {
                      v98 = 20;
                      if (geometryEstimator->_initParam.use_dynamic_img_sz)
                      {
                        v98 = 28;
                      }

                      v97->_imageSize = *(&geometryEstimator->super.isa + v98);
                      v99 = geometryEstimator->_geoMeta;
                      if (v99)
                      {
                        *&v99->_floorCeilingCount[4] = 0;
                        v100 = geometryEstimator->_geoMeta;
                        if (v100)
                        {
                          v100->_zSlice = geometryEstimator->_initParam.z_slice;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    img_sz_step = geometryEstimator->_initParam.img_sz_step;
    geometryEstimator->_output_count = 0;
    geometryEstimator->_img_sz_step = img_sz_step;
  }

  sub_2622E7360(self->_scanUiFormatter);
  projector = self->_projector;
  if (projector)
  {
    image = projector->_image;
    if (image)
    {
      sub_2622C5BB4(image);
    }

    bufferImage = projector->_bufferImage;
    if (bufferImage)
    {
      sub_2622C5BB4(bufferImage);
    }

    heightImage = projector->_heightImage;
    if (heightImage)
    {
      sub_2622C5BB4(heightImage);
    }

    bufferHeightImage = projector->_bufferHeightImage;
    if (bufferHeightImage)
    {
      sub_2622C5BB4(bufferHeightImage);
    }

    doorImage = projector->_doorImage;
    if (doorImage)
    {
      sub_2622C5BB4(doorImage);
    }

    bufferDoorImage = projector->_bufferDoorImage;
    if (bufferDoorImage)
    {
      sub_2622C5BB4(bufferDoorImage);
    }

    *&projector->_maxDensity2d = vcvt_s32_f32(*&projector->_initParam.global_max_density);
  }

  markerCoaching = self->_markerCoaching;
  if (markerCoaching)
  {
    markerCoaching->_generator._pool.__end_ = markerCoaching->_generator._pool.__begin_;
    sub_2621E1D94(&markerCoaching->_generator._all_major_convex_hulls);
    markerCoaching->_all_major_view_lines.__end_ = markerCoaching->_all_major_view_lines.__begin_;
    markerCoaching[1]._generator._vptr$MarkerProposal = markerCoaching[1].super.isa;
  }

  sub_2621E188C(&self->_heightEstimator->super.isa);
  openingHeightAlignment = self->_openingHeightAlignment;
  if (openingHeightAlignment)
  {
    sub_2621CD7C8(&openingHeightAlignment->_openingHeightAlignment._opening_fixed);
    openingHeightAlignment->_openingHeightAlignment._floor_v = 1.0;
  }

  recessedAreaReconstructor = self->_recessedAreaReconstructor;
  if (recessedAreaReconstructor)
  {
    objc_msgSend_removeAllObjects(recessedAreaReconstructor->_current_frame_recessed_area_list, v110, v111);
    objc_msgSend_removeAllObjects(recessedAreaReconstructor->_recessed_area_pool, v114, v115);
    if (recessedAreaReconstructor->_last_frame_recall_idx.__table_.__size_)
    {
      next = recessedAreaReconstructor->_last_frame_recall_idx.__table_.__first_node_.__next_;
      if (next)
      {
        do
        {
          v117 = *next;
          operator delete(next);
          next = v117;
        }

        while (v117);
      }

      recessedAreaReconstructor->_last_frame_recall_idx.__table_.__first_node_.__next_ = 0;
      v118 = recessedAreaReconstructor->_last_frame_recall_idx.__table_.__bucket_list_.__deleter_.__size_;
      if (v118)
      {
        for (i = 0; i != v118; ++i)
        {
          recessedAreaReconstructor->_last_frame_recall_idx.__table_.__bucket_list_.__ptr_[i] = 0;
        }
      }

      recessedAreaReconstructor->_last_frame_recall_idx.__table_.__size_ = 0;
    }
  }

  sub_262361768(self->_floorEstimator);
  v120 = objc_alloc_init(RSFloorPlan);
  floorPlanForOffline = self->_floorPlanForOffline;
  self->_floorPlanForOffline = v120;

  v122 = objc_alloc_init(RSMarkerSignal);
  markerSignal = self->_markerSignal;
  self->_markerSignal = v122;

  v126 = objc_msgSend_array(MEMORY[0x277CBEB18], v124, v125);
  floorPlanDebug = self->_floorPlanDebug;
  self->_floorPlanDebug = v126;
}

- (RSOnlineFloorPlanGenerator)init
{
  v62[7] = *MEMORY[0x277D85DE8];
  v53.receiver = self;
  v53.super_class = RSOnlineFloorPlanGenerator;
  v2 = [(RSFloorPlanGeneratorBase *)&v53 init];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = objc_alloc_init(RSWallOpeningOnlineOptimizer);
  onlineWallOpeningConsistency = v2->_onlineWallOpeningConsistency;
  v2->_onlineWallOpeningConsistency = v3;

  v5 = objc_alloc_init(RSDoorWindowOnlineDetector);
  onlineDoorWindow = v2->_onlineDoorWindow;
  v2->_onlineDoorWindow = v5;

  v7 = objc_alloc_init(RSMirrorDetection);
  mirrorDetector = v2->_mirrorDetector;
  v2->_mirrorDetector = v7;

  v9 = objc_alloc_init(RSProjection2DZ);
  projector = v2->_projector;
  v2->_projector = v9;

  v11 = [RSWallOpeningOnlineDetector alloc];
  v51 = sub_2621CD3A4(&v2->_projector->super.isa);
  if (v11)
  {
    v55.receiver = v11;
    v55.super_class = RSWallOpeningOnlineDetector;
    v12 = [(RSFloorPlanGeneratorBase *)&v55 init];
    if (v12)
    {
      v13 = MEMORY[0x277CCA8D8];
      v50 = v12;
      v14 = objc_opt_class();
      v52 = objc_msgSend_bundleForClass_(v13, v15, v14);
      v49 = objc_msgSend_stringByAppendingPathComponent_(@"PrecompiledModels", v16, @"lcnn_floorplan_model.bundle");
      sub_262381FB4(v49, 0, v52);
      if (objc_claimAutoreleasedReturnValue())
      {
        sub_2621D0F64(buf, "0_weight.npy");
        sub_2621D0F64(&v57 + 1, "1_weight.npy");
        sub_2621D0F64(v58, "2_weight.npy");
        sub_2621D0F64(v59, "0_bias.npy");
        sub_2621D0F64(v60, "1_bias.npy");
        sub_2621D0F64(&v61, "2_bias.npy");
        memset(v54, 0, sizeof(v54));
        sub_2622C70D0(v54, buf, v62, 6uLL);
      }

      v18 = 0;
      v17 = v50;
    }

    else
    {
      v17 = 0;
      v18 = v17;
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  wallOpeningDetector = v2->_wallOpeningDetector;
  v2->_wallOpeningDetector = v18;

  if (v2->_wallOpeningDetector)
  {
    v20 = objc_alloc_init(RSKeyframeAccumulation);
    accumulator = v2->_accumulator;
    v2->_accumulator = v20;

    v22 = objc_alloc_init(RSGeometryCalculation);
    geometryEstimator = v2->_geometryEstimator;
    v2->_geometryEstimator = v22;

    v24 = objc_alloc_init(RSScanUIFormatter);
    scanUiFormatter = v2->_scanUiFormatter;
    v2->_scanUiFormatter = v24;

    v26 = objc_alloc_init(RSMarkerCoaching);
    markerCoaching = v2->_markerCoaching;
    v2->_markerCoaching = v26;

    v28 = objc_alloc_init(RSNonUniformHeightEstimation);
    heightEstimator = v2->_heightEstimator;
    v2->_heightEstimator = v28;

    v30 = objc_alloc_init(RSOpeningHeightAlignment);
    openingHeightAlignment = v2->_openingHeightAlignment;
    v2->_openingHeightAlignment = v30;

    v32 = objc_alloc_init(RSParentAssociation);
    parentAssociation = v2->_parentAssociation;
    v2->_parentAssociation = v32;

    v34 = objc_alloc_init(RSRecessedAreaReconstructor);
    recessedAreaReconstructor = v2->_recessedAreaReconstructor;
    v2->_recessedAreaReconstructor = v34;

    v36 = objc_alloc_init(RSFloorEstimation);
    floorEstimator = v2->_floorEstimator;
    v2->_floorEstimator = v36;

    v2->_isMarkerCoachingEnabled = 0;
    v2->_isNonUniformHeightEnabled = 1;
    v2->_isOpeningReplaceOpendoorEnabled = 1;
    v2->_isOpendoorReplaceOpeningEnabled = 0;
    v2->_isDoorReplaceOpeningEnabled = 1;
    v2->_isBayWindowRecessedAreaEnabled = 0;
    v38 = objc_alloc_init(RSFloorPlan);
    floorPlanForOffline = v2->_floorPlanForOffline;
    v2->_floorPlanForOffline = v38;

    v40 = objc_alloc_init(RSMarkerSignal);
    markerSignal = v2->_markerSignal;
    v2->_markerSignal = v40;

    v44 = objc_msgSend_array(MEMORY[0x277CBEB18], v42, v43);
    floorPlanDebug = v2->_floorPlanDebug;
    v2->_floorPlanDebug = v44;

    v2->_enableLiveDump = 0;
LABEL_10:
    v46 = v2;
    goto LABEL_16;
  }

  if (qword_27FF0C090 != -1)
  {
    dispatch_once(&qword_27FF0C090, &unk_2874EE160);
  }

  v47 = qword_27FF0C088;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2621C3000, v47, OS_LOG_TYPE_ERROR, "Detector init failed", buf, 2u);
  }

  v46 = 0;
LABEL_16:

  return v46;
}

- (void)generateFloorPlanWithInputDir:(id)dir outputDir:(id)outputDir debug:(BOOL)debug
{
  debugCopy = debug;
  v111 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  outputDirCopy = outputDir;
  v96 = dirCopy;
  v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
  v11 = objc_msgSend_contentsOfDirectoryAtPath_error_(v9, v10, dirCopy, 0);

  v94 = v11;
  v104 = objc_msgSend_sortedArrayUsingComparator_(v11, v12, &unk_2874EE2A0);
  v15 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v13, v14);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v15, v16, outputDirCopy, 1, 0, 0);

  if (debugCopy)
  {
    self->_enableLiveDump = 1;
  }

  v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18);
  v22 = 0;
  v102 = 0;
  while (v22 < objc_msgSend_count(v104, v19, v20))
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v104, v23, v22);
    v103 = v22;
    hasSuffix = objc_msgSend_hasSuffix_(v24, v25, @"fp_input.plist");

    if (hasSuffix)
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v104, v19, v103);
      v101 = objc_msgSend_stringByAppendingPathComponent_(v96, v28, v27);

      v29 = objc_alloc(MEMORY[0x277CBEAC0]);
      v100 = objc_msgSend_initWithContentsOfFile_(v29, v30, v101);
      v32 = objc_msgSend_objectForKeyedSubscript_(v100, v31, @"keyframes");
      v33 = RSKeyframeSequenceFromDictionary(v32);

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v36 = objc_msgSend_allKeys(v33, v34, v35);
      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v106, v110, 16);
      if (v39)
      {
        v40 = *v107;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v107 != v40)
            {
              objc_enumerationMutation(v36);
            }

            v42 = *(*(&v106 + 1) + 8 * i);
            v43 = objc_msgSend_objectForKeyedSubscript_(v33, v38, v42);
            objc_msgSend_setObject_forKey_(v21, v44, v43, v42);
          }

          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v106, v110, 16);
        }

        while (v39);
      }

      v105 = sub_2621EEA88(self, v21, MEMORY[0x277CBEBF8]);
      v99 = objc_msgSend_walls(v105, v45, v46);
      v49 = objc_msgSend_count(v99, v47, v48);
      v52 = objc_msgSend_openings(v105, v50, v51);
      v55 = objc_msgSend_count(v52, v53, v54);
      v58 = objc_msgSend_windows(v105, v56, v57);
      v61 = objc_msgSend_count(v58, v59, v60);
      v64 = objc_msgSend_doors(v105, v62, v63);
      v67 = objc_msgSend_count(v64, v65, v66);
      v70 = objc_msgSend_opendoors(v105, v68, v69);
      v73 = objc_msgSend_count(v70, v71, v72);
      NSLog(&cfstr_RunWithFloorpl.isa, v102, v49, v55, v61, v67, v73);

      v75 = objc_msgSend_objectAtIndexedSubscript_(v104, v74, v103);
      v77 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v75, v76, @"fp_input.plist", @"fp_output.plist");

      v79 = objc_msgSend_stringByAppendingPathComponent_(outputDirCopy, v78, v77);
      v82 = objc_msgSend_dictionaryRepresentation(v105, v80, v81);
      objc_msgSend_writeToFile_atomically_(v82, v83, v79, 1);

      if (debugCopy)
      {
        v86 = objc_msgSend_stringByDeletingPathExtension(v79, v84, v85);
        v88 = objc_msgSend_stringByAppendingPathExtension_(v86, v87, @"obj");
        objc_msgSend_writeToObj_(v105, v89, v88);
      }

      ++v102;
    }

    v22 = v103 + 1;
  }

  if (debugCopy)
  {
    v90 = sub_2621EEB10(self, v23);
    v92 = objc_msgSend_stringByAppendingPathComponent_(outputDirCopy, v91, @"debug_info.plist");
    objc_msgSend_writeToFile_atomically_(v90, v93, v92, 1);
  }
}

- (void)generateFloorPlanWithInputPath:(id)path outputPath:(id)outputPath debug:(BOOL)debug
{
  debugCopy = debug;
  pathCopy = path;
  v79 = debugCopy;
  outputPathCopy = outputPath;
  v78 = pathCopy;
  NSLog(&cfstr_InputPathOutpu.isa, pathCopy, outputPathCopy, debugCopy);
  v10 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v9, pathCopy);
  self->_enableLiveDump = debugCopy;
  v77 = v10;
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, @"keyframes");
  v13 = RSKeyframeSequenceFromDictionary(v12);

  v76 = v13;
  v16 = objc_msgSend_array(MEMORY[0x277CBEA60], v14, v15);
  selfCopy = self;
  v17 = sub_2621EEA88(self, v13, v16);

  v20 = objc_msgSend_walls(v17, v18, v19);
  v23 = objc_msgSend_count(v20, v21, v22);
  v26 = objc_msgSend_openings(v17, v24, v25);
  v29 = objc_msgSend_count(v26, v27, v28);
  v32 = objc_msgSend_windows(v17, v30, v31);
  v35 = objc_msgSend_count(v32, v33, v34);
  v38 = objc_msgSend_doors(v17, v36, v37);
  v41 = objc_msgSend_count(v38, v39, v40);
  v44 = objc_msgSend_opendoors(v17, v42, v43);
  v47 = objc_msgSend_count(v44, v45, v46);
  NSLog(&cfstr_OverallWallsLu.isa, v23, v29, v35, v41, v47);

  if (objc_msgSend_hasSuffix_(outputPathCopy, v48, @".plist"))
  {
    v51 = objc_msgSend_dictionaryRepresentation(v17, v49, v50);
    objc_msgSend_writeToFile_atomically_(v51, v52, outputPathCopy, 1);
  }

  else if (objc_msgSend_hasSuffix_(outputPathCopy, v49, @".json"))
  {
    v55 = outputPathCopy;
    v58 = objc_msgSend_UTF8String(v55, v56, v57);
    v59 = strlen(v58);
    if (v59 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2621CC980();
    }

    v61 = v59;
    if (v59 >= 0x17)
    {
      operator new();
    }

    v82 = v59;
    if (v59)
    {
      memmove(&__dst, v58, v59);
    }

    *(&__dst + v61) = 0;
    sub_26234A5B8(v17, &__dst, v60);
    if (v82 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    NSLog(&cfstr_OutputFormatNo.isa, outputPathCopy);
  }

  if (v79)
  {
    v62 = objc_msgSend_stringByDeletingPathExtension(outputPathCopy, v53, v54);
    v64 = objc_msgSend_stringByAppendingPathExtension_(v62, v63, @"obj");
    objc_msgSend_writeToObj_(v17, v65, v64);

    v67 = sub_2621EEB10(selfCopy, v66);
    v68 = MEMORY[0x277CCACA8];
    v71 = objc_msgSend_stringByDeletingPathExtension(outputPathCopy, v69, v70);
    v73 = objc_msgSend_stringWithFormat_(v68, v72, @"%@_debug.plist", v71);
    objc_msgSend_writeToFile_atomically_(v67, v74, v73, 1);
  }
}

@end