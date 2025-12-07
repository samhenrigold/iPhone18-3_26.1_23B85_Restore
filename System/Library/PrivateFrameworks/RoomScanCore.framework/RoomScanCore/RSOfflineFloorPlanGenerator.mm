@interface RSOfflineFloorPlanGenerator
- (RSOfflineFloorPlanGenerator)init;
- (void)clear;
- (void)generateFloorPlanWithInputPath:(id)path outputPath:(id)outputPath debug:(BOOL)debug;
@end

@implementation RSOfflineFloorPlanGenerator

- (void)clear
{
  v19.receiver = self;
  v19.super_class = RSOfflineFloorPlanGenerator;
  [(RSFloorPlanGeneratorBase *)&v19 clear];
  accumulator = self->_accumulator;
  if (accumulator)
  {
    objc_msgSend_reset(accumulator->_worldpc, v3, v4);
    sub_26229CE70(&accumulator->_accMeta->super.isa, v8, v9);
  }

  sub_2621CD3D4(self->_geometryEstimator, v5, v6);
  projector = self->_projector;
  if (projector)
  {
    image = projector->_image;
    if (image)
    {
      sub_2622C5BB4(image);
    }

    heightImage = projector->_heightImage;
    if (heightImage)
    {
      sub_2622C5BB4(heightImage);
    }

    cameraImage = projector->_cameraImage;
    if (cameraImage)
    {
      sub_2622C5BB4(cameraImage);
    }
  }

  sub_2621E188C(&self->_heightEstimator->super.isa);
  sub_262361768(self->_floorEstimator);
  sub_262316F74(self->_roomNodeGenerator, v14, v15);
  openingHeightAlignment = self->_openingHeightAlignment;
  if (openingHeightAlignment)
  {
    sub_2621CD7C8(&openingHeightAlignment->_openingHeightAlignment._opening_fixed);
    openingHeightAlignment->_openingHeightAlignment._floor_v = 1.0;
  }

  objc_msgSend_removeAllObjects(self->_debugInfo, v16, v17);
}

- (RSOfflineFloorPlanGenerator)init
{
  v57[7] = *MEMORY[0x277D85DE8];
  v48.receiver = self;
  v48.super_class = RSOfflineFloorPlanGenerator;
  v2 = [(RSFloorPlanGeneratorBase *)&v48 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSDoorWindowOfflineDetector);
    doorWindowDetector = v2->_doorWindowDetector;
    v2->_doorWindowDetector = v3;

    v5 = objc_alloc_init(RSOfflineProjection2DZNode);
    projector = v2->_projector;
    v2->_projector = v5;

    v7 = [RSWallOpeningOfflineDetector alloc];
    v46 = sub_2621CD3A4(&v2->_projector->super.isa);
    if (v7)
    {
      v50.receiver = v7;
      v50.super_class = RSWallOpeningOfflineDetector;
      if ([(RSFloorPlanGeneratorBase *)&v50 init])
      {
        v8 = MEMORY[0x277CCA8D8];
        v9 = objc_opt_class();
        v47 = objc_msgSend_bundleForClass_(v8, v10, v9);
        v45 = objc_msgSend_stringByAppendingPathComponent_(@"PrecompiledModels", v11, @"lcnn_floorplan_offline_model.bundle");
        sub_262381FB4(v45, 0, v47);
        objc_claimAutoreleasedReturnValue();
        sub_2621D0F64(&__src, "0_weight.npy");
        sub_2621D0F64(&v52 + 1, "1_weight.npy");
        sub_2621D0F64(v53, "2_weight.npy");
        sub_2621D0F64(v54, "0_bias.npy");
        sub_2621D0F64(v55, "1_bias.npy");
        sub_2621D0F64(&v56, "2_bias.npy");
        memset(v49, 0, sizeof(v49));
        sub_2622C70D0(v49, &__src, v57, 6uLL);
      }

      v7 = 0;
    }

    wallOpeningDetector = v2->_wallOpeningDetector;
    v2->_wallOpeningDetector = v7;

    if (!v2->_wallOpeningDetector)
    {
      v43 = 0;
      goto LABEL_10;
    }

    v13 = objc_alloc_init(RSOfflineKeyframeAccumulation);
    accumulator = v2->_accumulator;
    v2->_accumulator = v13;

    v15 = objc_alloc_init(RSOfflineGeometryCalculation);
    geometryEstimator = v2->_geometryEstimator;
    v2->_geometryEstimator = v15;

    v17 = objc_alloc_init(RSCurvedWallDetection);
    curvedWallDetector = v2->_curvedWallDetector;
    v2->_curvedWallDetector = v17;

    v19 = objc_alloc_init(RSBayWindowFPRemoval);
    baywindowFPRemoval = v2->_baywindowFPRemoval;
    v2->_baywindowFPRemoval = v19;

    v21 = objc_alloc_init(RSStructurePostProcess);
    structurePostprocess = v2->_structurePostprocess;
    v2->_structurePostprocess = v21;

    v23 = objc_alloc_init(RSDeduplicateOpeningOpenDoor);
    deduplicateOpeningOpenDoor = v2->_deduplicateOpeningOpenDoor;
    v2->_deduplicateOpeningOpenDoor = v23;

    v25 = objc_alloc_init(RSOnlineOfflineAssociation);
    onlineOfflineAssociation = v2->_onlineOfflineAssociation;
    v2->_onlineOfflineAssociation = v25;

    v27 = objc_alloc_init(RSNonUniformHeightEstimation);
    heightEstimator = v2->_heightEstimator;
    v2->_heightEstimator = v27;

    v29 = objc_alloc_init(RSFloorEstimation);
    floorEstimator = v2->_floorEstimator;
    v2->_floorEstimator = v29;

    v31 = objc_alloc_init(RSRoomTypeGenerator);
    roomNodeGenerator = v2->_roomNodeGenerator;
    v2->_roomNodeGenerator = v31;

    v33 = objc_alloc_init(RSOpeningHeightAlignment);
    openingHeightAlignment = v2->_openingHeightAlignment;
    v2->_openingHeightAlignment = v33;

    v35 = objc_alloc_init(RSOutsideObjectRemoval);
    removeOutsideObject = v2->_removeOutsideObject;
    v2->_removeOutsideObject = v35;

    v37 = objc_alloc_init(RSDoorWindowPostProcessor);
    doorWindowPostProcessor = v2->_doorWindowPostProcessor;
    v2->_doorWindowPostProcessor = v37;

    v2->_wallOpeningMergeEnabled = 1;
    v2->_openingReplaceOpendoorEnabled = 0;
    v2->_opendoorReplaceOpeningEnabled = 1;
    v2->_roomTypeEnabled = 1;
    v41 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v39, v40);
    debugInfo = v2->_debugInfo;
    v2->_debugInfo = v41;

    v2->_enableOfflineDump = 0;
  }

  v43 = v2;
LABEL_10:

  return v43;
}

- (void)generateFloorPlanWithInputPath:(id)path outputPath:(id)outputPath debug:(BOOL)debug
{
  debugCopy = debug;
  pathCopy = path;
  v69 = debugCopy;
  outputPathCopy = outputPath;
  NSLog(&cfstr_InputPathOutpu.isa, pathCopy, outputPathCopy, debugCopy);
  v9 = objc_msgSend_dictionaryWithContentsOfFile_(MEMORY[0x277CBEAC0], v8, pathCopy);
  self->_enableOfflineDump = debugCopy;
  v68 = v9;
  v11 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"keyframes");
  v12 = RSKeyframeSequenceFromDictionary(v11);

  v65 = v12;
  v13 = objc_alloc_init(RSAsset);
  v14 = v12;
  v15 = v13;
  selfCopy = self;
  v16 = sub_262287F84(self, v14, v15);

  v67 = v14;
  v19 = objc_msgSend_walls(v16, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);
  v25 = objc_msgSend_openings(v16, v23, v24);
  v28 = objc_msgSend_count(v25, v26, v27);
  v31 = objc_msgSend_windows(v16, v29, v30);
  v34 = objc_msgSend_count(v31, v32, v33);
  v37 = objc_msgSend_doors(v16, v35, v36);
  v40 = objc_msgSend_count(v37, v38, v39);
  v43 = objc_msgSend_opendoors(v16, v41, v42);
  v46 = objc_msgSend_count(v43, v44, v45);
  NSLog(&cfstr_OverallWallsLu.isa, v22, v28, v34, v40, v46, v65);

  if (objc_msgSend_hasSuffix_(outputPathCopy, v47, @".plist"))
  {
    objc_msgSend_writeToPlist_(v16, v48, outputPathCopy);
  }

  else if (objc_msgSend_hasSuffix_(outputPathCopy, v48, @".json"))
  {
    objc_msgSend_writeToJson_(v16, v51, outputPathCopy);
  }

  else
  {
    NSLog(&cfstr_OutputFormatNo.isa, outputPathCopy);
  }

  if (v69)
  {
    v52 = objc_msgSend_stringByDeletingPathExtension(outputPathCopy, v49, v50);
    v54 = objc_msgSend_stringByAppendingPathExtension_(v52, v53, @"obj");
    objc_msgSend_writeToObj_(v16, v55, v54);

    v57 = sub_262287EF4(selfCopy, v56);
    v58 = MEMORY[0x277CCACA8];
    v61 = objc_msgSend_stringByDeletingPathExtension(outputPathCopy, v59, v60);
    v63 = objc_msgSend_stringWithFormat_(v58, v62, @"%@_debug.plist", v61);
    objc_msgSend_writeToFile_atomically_(v57, v64, v63, 1);
  }
}

@end