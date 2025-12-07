@interface ANSTISPAlgorithmV1
- (ANSTISPAlgorithmV1)initWithConfiguration:(id)configuration;
- (BOOL)_destroyPostProcessingWithError:(id *)error;
- (BOOL)_initializePostProcessingWithError:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (__CVBuffer)_createCVPixelBuffer_Uint8_fromAcSaliencyHeatMap:(id *)map;
- (__CVBuffer)_createCVPixelBuffer_Uint8_fromEspressoBufferFloat32:(id *)float32;
- (id)_networkResultWithOriginalInputImage:(__CVBuffer *)image error:(id *)error;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (unint64_t)networkInputBufferHeight;
- (unint64_t)networkInputBufferWidth;
- (void)dealloc;
- (void)undoPrepareSideEffects;
@end

@implementation ANSTISPAlgorithmV1

- (ANSTISPAlgorithmV1)initWithConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = ANSTISPAlgorithmV1;
  v6 = [(ANSTISPAlgorithm *)&v14 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    v7->_readyForInference = 0;
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_msgSend_description(v7->_config, v10, v11);
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22E5D5000, v9, OS_LOG_TYPE_DEFAULT, "ANSTISPAlgorithmV1 (ANST v2.4 model + v2.5 post-processing) initialized with config %{public}@.", buf, 0xCu);
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_readyForInference)
  {
    objc_msgSend_undoPrepareSideEffects(self, a2, v2);
  }

  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithmV1;
  [(ANSTISPAlgorithmV1 *)&v4 dealloc];
}

- (void)undoPrepareSideEffects
{
  objc_msgSend__destroyPostProcessingWithError_(self, a2, 0);
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  CVPixelBufferRelease(self->_resizedInputBuffer);
  self->_resizedInputBuffer = 0;
  CVPixelBufferPoolRelease(self->_outputSemanticBufferPool);
  self->_outputSemanticBufferPool = 0;
  CVPixelBufferPoolRelease(self->_outputSaliencyBufferPool);
  self->_outputSaliencyBufferPool = 0;
  network = self->_network;
  self->_network = 0;

  faceAttributeNetwork = self->_faceAttributeNetwork;
  self->_faceAttributeNetwork = 0;

  self->_readyForInference = 0;
}

- (BOOL)prepareWithError:(id *)error
{
  v130[1] = *MEMORY[0x277D85DE8];
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  if (self->_readyForInference)
  {
    v8 = os_signpost_id_make_with_pointer(v5, self);

    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v8, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
    }

    v9 = 1;
    goto LABEL_25;
  }

  if ((objc_msgSend__initializePostProcessingWithError_(self, v7, error) & 1) == 0)
  {
    objc_msgSend_undoPrepareSideEffects(self, v10, v11);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
LABEL_23:
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v26, v27, &unk_22E663F87, buf, 2u);
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  v12 = 25;
  v13 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v10, 25);
  networkOutputNames = self->_networkOutputNames;
  self->_networkOutputNames = v13;

  netOutputNames = self->_detParams.netOutputNames;
  do
  {
    v17 = self->_networkOutputNames;
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, netOutputNames);
    objc_msgSend_addObject_(v17, v19, v18);

    ++netOutputNames;
    --v12;
  }

  while (v12);
  if (objc_msgSend_networkEngineType(self->_config, v15, v20))
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659D3C();
    }

    if (error)
    {
      v23 = MEMORY[0x277CCA9B8];
      v129 = *MEMORY[0x277CCA450];
      v130[0] = @"ANSTKit has deprecated non-ANE execution support. Please stop configuring ANSTISPAlgorithm for executing on non-ANE platforms.";
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, v130, &v129, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v23, v25, @"ANSTErrorDomain", 3, v24);
    }

    objc_msgSend_undoPrepareSideEffects(self, v21, v22);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithm_prepareWithError";
    goto LABEL_23;
  }

  v29 = [ANSTBaseNetworkEspresso alloc];
  v32 = objc_msgSend_networkEngineType(self->_config, v30, v31);
  v35 = objc_msgSend_qualityOfService(self->_config, v33, v34);
  if (objc_msgSend_networkResolution(self->_config, v36, v37) == 1)
  {
    v39 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkResolution_(v29, v38, v32, v35, @"anst", @"resolution1024x576");
  }

  else
  {
    v39 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_networkResolution_(v29, v38, v32, v35, @"anst", @"resolution512x384");
  }

  network = self->_network;
  self->_network = v39;

  if ((objc_msgSend_prepare(self->_network, v41, v42) & 1) == 0)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659DBC();
    }

    if (error)
    {
      v73 = MEMORY[0x277CCA9B8];
      v127 = *MEMORY[0x277CCA450];
      v128 = @"Failed to prepare espresso network.";
      v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &v128, &v127, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v73, v75, @"ANSTErrorDomain", 3, v74);
    }

    objc_msgSend_undoPrepareSideEffects(self, v71, v72);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  v45 = self->_network;
  v46 = objc_msgSend_UTF8String(kANSTNetworkInputName, v43, v44);
  objc_msgSend_getResolutionByBlobName_(v45, v47, v46);
  v49 = v48;
  v50 = self->_network;
  v53 = objc_msgSend_UTF8String(kANSTNetworkInputName, v51, v52);
  objc_msgSend_getResolutionByBlobName_(v50, v54, v53);
  v56 = v55;
  if (objc_msgSend_networkInputBufferWidth(self, v57, v58) != v49 || objc_msgSend_networkInputBufferHeight(self, v59, v60) != v56)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659E3C();
    }

    if (error)
    {
      v78 = MEMORY[0x277CCA9B8];
      v125 = *MEMORY[0x277CCA450];
      v126 = @"Prepared espresso network returned unexpected input width or height.";
      v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v76, &v126, &v125, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v78, v80, @"ANSTErrorDomain", 3, v79);
    }

    objc_msgSend_undoPrepareSideEffects(self, v76, v77);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  v63 = objc_msgSend_networkInputBufferPixelFormat(self, v61, v62);
  objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v64, v63, v49, v56, &self->_resizedInputBuffer);
  if (!self->_resizedInputBuffer)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A04C();
    }

    if (error)
    {
      v83 = MEMORY[0x277CCA9B8];
      v123 = *MEMORY[0x277CCA450];
      v124 = @"Failed to prepare resized input buffer.";
      v84 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v81, &v124, &v123, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v83, v85, @"ANSTErrorDomain", 3, v84);
    }

    objc_msgSend_undoPrepareSideEffects(self, v81, v82);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659EC8();
    }

    if (error)
    {
      v68 = MEMORY[0x277CCA9B8];
      v121 = *MEMORY[0x277CCA450];
      v122 = @"Failed to prepare VTPixelTransferSession.";
      v69 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v66, &v122, &v121, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v68, v70, @"ANSTErrorDomain", 3, v69);
    }

    objc_msgSend_undoPrepareSideEffects(self, v66, v67);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  objc_msgSend_createPixelBufferPoolWithCapacity_pixelFormat_width_height_handle_(ANSTUtility, v65, 5, 1278226488, v49 >> 1, v56 >> 1, &self->_outputSemanticBufferPool);
  objc_msgSend_createPixelBufferPoolWithCapacity_pixelFormat_width_height_handle_(ANSTUtility, v86, 1, 1278226488, 64, 48, &self->_outputSaliencyBufferPool);
  if (!self->_outputSemanticBufferPool || !self->_outputSaliencyBufferPool)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E659FCC();
    }

    if (error)
    {
      v104 = MEMORY[0x277CCA9B8];
      v119 = *MEMORY[0x277CCA450];
      v120 = @"Failed to prepare output pixel buffer pool.";
      v105 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v102, &v120, &v119, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v104, v106, @"ANSTErrorDomain", 3, v105);
    }

    objc_msgSend_undoPrepareSideEffects(self, v102, v103);
    v26 = os_signpost_id_make_with_pointer(v5, self);

    if (v26 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v27 = "ANSTISPAlgorithmV1_prepareWithError";
    goto LABEL_23;
  }

  if (!objc_msgSend_enableFaceAttributes(self->_config, v87, v88))
  {
LABEL_69:
    v9 = 1;
    self->_readyForInference = 1;
    v101 = os_signpost_id_make_with_pointer(v5, self);

    if (v101 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v101, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
    }

    goto LABEL_25;
  }

  v89 = [ANSTFaceAttributeAlgorithmConfiguration alloc];
  v91 = objc_msgSend_initWithVersion_(v89, v90, 0x10000);
  v92 = [ANSTFaceAttributeAlgorithm alloc];
  v93 = v91;
  v95 = objc_msgSend_initWithConfiguration_(v92, v94, v91);
  faceAttributeNetwork = self->_faceAttributeNetwork;
  self->_faceAttributeNetwork = v95;

  v97 = self->_faceAttributeNetwork;
  v115 = 0;
  LOBYTE(v91) = objc_msgSend_prepareWithError_(v97, v98, &v115);
  v99 = v115;
  if (v91)
  {

    goto LABEL_69;
  }

  v107 = v99;
  v108 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v100, @"Failed to prepare face attribute network - %@", v99);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_22E659F48();
  }

  if (error)
  {
    v111 = MEMORY[0x277CCA9B8];
    v117 = *MEMORY[0x277CCA450];
    v118 = v108;
    v112 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v109, &v118, &v117, 1);
    *error = objc_msgSend_errorWithDomain_code_userInfo_(v111, v113, @"ANSTErrorDomain", 3, v112);
  }

  objc_msgSend_undoPrepareSideEffects(self, v109, v110);
  v114 = os_signpost_id_make_with_pointer(v5, self);

  if (v114 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v114, "ANSTISPAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  v9 = 0;
  v5 = v93;
LABEL_25:

  return v9;
}

- (BOOL)_initializePostProcessingWithError:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_runningFrameRate(self->_config, a2, error);
  HIDWORD(v18) = sub_22E6054B8(v5);
  AcANSTCreate(&self->_det, &v21, &v17, &self->_detState);
  if (v6 || (v6 = AcANSTStart(self->_det, &self->_detState), v6) || (v6 = AcANSTGetParams(self->_det, self->_detState.data, &v17, &self->_detParams), v6) || (v6 = AcANSTUseLowThresholds(self->_det), v6) || (v6 = AcANSTSetRunSaliency(self->_det, 1), v6) || (v6 = AcANSTSetRunSaliencyObjectDetection(self->_det, 1), v6) || (det = self->_det, v9 = 1, v6 = AcANSTSetRunViSeg(det), v6))
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"Failed to setup ANST network config (AcReturn code %d)", v6);
    v11 = _ANSTLoggingGetOSLogForCategoryANSTKit(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A0CC();
    }

    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA450];
      v23[0] = v10;
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v23, &v22, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v13, v15, @"ANSTErrorDomain", 3, v14);
    }

    return 0;
  }

  return v9;
}

- (BOOL)_destroyPostProcessingWithError:(id *)error
{
  det = self->_det;
  if (det)
  {
    v5 = AcANSTStop(det);
    if (v5)
    {
      v6 = _ANSTLoggingGetOSLogForCategoryANSTKit(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_22E65A1D8();
      }
    }

    v7 = AcANSTDestroy(self->_det);
    if (v7)
    {
      v8 = _ANSTLoggingGetOSLogForCategoryANSTKit(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_22E65A254();
      }
    }

    self->_det = 0;
  }

  return 1;
}

- (BOOL)resetWithError:(id *)error
{
  if (self->_readyForInference)
  {
    network = self->_network;
    v6 = objc_msgSend_objectAtIndexedSubscript_(self->_networkOutputNames, a2, 17);
    v7 = v6;
    v10 = objc_msgSend_UTF8String(v7, v8, v9);
    TensorByName = objc_msgSend_getTensorByName_(network, v11, v10);

    bzero(*TensorByName, 4 * *(TensorByName + 152));
    v13 = self->_network;
    v16 = objc_msgSend_UTF8String(kANSTNetworkOutputExtraSalientMaskName, v14, v15);
    v18 = objc_msgSend_getTensorByName_(v13, v17, v16);
    bzero(*v18, 4 * *(v18 + 152));
    v20 = objc_msgSend__destroyPostProcessingWithError_(self, v19, error);
    if (v20)
    {

      LOBYTE(v20) = objc_msgSend__initializePostProcessingWithError_(self, v21, error);
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  return v20;
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v88[1] = *MEMORY[0x277D85DE8];
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v78 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTISPAlgorithmV1_resultForPixelBuffer", &unk_22E663F87, v78, 2u);
  }

  if (!self->_readyForInference)
  {
    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v87 = *MEMORY[0x277CCA450];
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v88, &v87, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v22, v24, @"ANSTErrorDomain", 4, v23);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v78 = 0;
    goto LABEL_51;
  }

  if (!buffer)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A3D0();
    }

    if (error)
    {
      v26 = MEMORY[0x277CCA9B8];
      v85 = *MEMORY[0x277CCA450];
      v86 = @"Nil input buffer.";
      v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v86, &v85, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v26, v28, @"ANSTErrorDomain", 2, v27);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v78 = 0;
    goto LABEL_51;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (Width < Height)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A350();
    }

    if (error)
    {
      v18 = MEMORY[0x277CCA9B8];
      v83 = *MEMORY[0x277CCA450];
      v84 = @"Input pixel buffer width < height. ANSTISPAlgorithmV1 only supports landscape input.";
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, &v84, &v83, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 2, v19);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v78 = 0;
LABEL_51:
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v21, "ANSTISPAlgorithmV1_resultForPixelBuffer", &unk_22E663F87, v78, 2u);
LABEL_52:
    v72 = 0;
    goto LABEL_53;
  }

  v29 = PixelFormatType;
  if (Width != objc_msgSend_networkInputBufferWidth(self, v15, v16) || Height != objc_msgSend_networkInputBufferHeight(self, v30, v31) || (resizedInputBuffer = buffer, v29 != objc_msgSend_networkInputBufferPixelFormat(self, v32, v33)))
  {
    if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, buffer, self->_resizedInputBuffer))
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E65A2D0();
      }

      if (error)
      {
        v38 = MEMORY[0x277CCA9B8];
        v81 = *MEMORY[0x277CCA450];
        v82 = @"Failed to transfer input pixel buffer.";
        v39 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v82, &v81, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v38, v40, @"ANSTErrorDomain", 4, v39);
      }

      v21 = os_signpost_id_make_with_pointer(v9, self);

      if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
      {
        goto LABEL_52;
      }

      *v78 = 0;
      goto LABEL_51;
    }

    resizedInputBuffer = self->_resizedInputBuffer;
  }

  self->_detControl.originalImageWidth = Width;
  self->_detControl.originalImageHeight = Height;
  network = self->_network;
  v42 = objc_msgSend_UTF8String(kANSTNetworkInputName, v34, v35);
  objc_msgSend_getResolutionByBlobName_(network, v43, v42);
  self->_detControl.networkInputWidth = v44;
  v45 = self->_network;
  v48 = objc_msgSend_UTF8String(kANSTNetworkInputName, v46, v47);
  objc_msgSend_getResolutionByBlobName_(v45, v49, v48);
  self->_detControl.networkInputHeight = v50;
  self->_detControl.imageOrientation = AcImageOrientationFromANSTImageOrientation(orientation);
  if (!objc_msgSend_setInput_fromCVPixelBuffer_(self->_network, v51, kANSTNetworkInputName, resizedInputBuffer))
  {
    goto LABEL_46;
  }

  v53 = self->_network;
  v54 = objc_msgSend_objectAtIndexedSubscript_(self->_networkOutputNames, v52, 17);
  v55 = v54;
  v58 = objc_msgSend_UTF8String(v55, v56, v57);
  TensorByName = objc_msgSend_getTensorByName_(v53, v59, v58);
  if (!objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(v53, v61, TensorByName, kANSTNetworkInputLastMaskName) || (v64 = self->_network, v65 = objc_msgSend_UTF8String(kANSTNetworkOutputExtraSalientMaskName, v62, v63), v67 = objc_msgSend_getTensorByName_(v64, v66, v65), (objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(v64, v68, v67, kANSTNetworkInputSalientMaskName) & 1) == 0))
  {

    goto LABEL_46;
  }

  v71 = objc_msgSend_runNetwork(self->_network, v69, v70);

  if ((v71 & 1) == 0)
  {
LABEL_46:
    if (error)
    {
      v74 = MEMORY[0x277CCA9B8];
      v79 = *MEMORY[0x277CCA450];
      v80 = @"Failed to execute espresso inference.";
      v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v80, &v79, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v74, v76, @"ANSTErrorDomain", 4, v75);
    }

    v21 = os_signpost_id_make_with_pointer(v9, self);

    if (v21 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_52;
    }

    *v78 = 0;
    goto LABEL_51;
  }

  v72 = objc_msgSend__networkResultWithOriginalInputImage_error_(self, v52, buffer, error);
  v73 = os_signpost_id_make_with_pointer(v9, self);

  if (v73 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v78 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v73, "ANSTISPAlgorithmV1_resultForPixelBuffer", &unk_22E663F87, v78, 2u);
  }

LABEL_53:

  return v72;
}

- (id)_networkResultWithOriginalInputImage:(__CVBuffer *)image error:(id *)error
{
  v4 = MEMORY[0x28223BE20](self, a2, image, error);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v119 = *MEMORY[0x277D85DE8];
  v10 = (v4 + 212328);
  *(v4 + 212364) = 0;
  *(v4 + 212368) = 0;
  *(v4 + 212372) = vcvt_f32_u32(*(v4 + 212328));
  v12 = objc_msgSend_runningFrameRate(*(v4 + 32), v11, v7);
  v10[3].i32[1] = sub_22E6054B8(v12);
  bzero(v118, 0x8110uLL);
  v15 = objc_msgSend_enableObjectTracking(*(v9 + 32), v13, v14);
  if (!v15)
  {
    goto LABEL_30;
  }

  v112 = v6;
  v18 = _ANSTLoggingGetOSLogForCategoryANSTKit(v15);
  v19 = os_signpost_id_make_with_pointer(v18, v9);

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v19, "ANSTISPAlgorithmV1_RTCVPostProcess", &unk_22E663F87, buf, 2u);
  }

  v21 = 0;
  v22 = &v117;
  do
  {
    v23 = *(v9 + 40);
    v24 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v20, v21);
    v25 = v24;
    v28 = objc_msgSend_UTF8String(v25, v26, v27);
    TensorByName = objc_msgSend_getTensorByName_(v23, v29, v28);

    v39 = *(TensorByName + 96) * *(TensorByName + 88);
    v40 = *(TensorByName + 80);
    *(v22 - 3) = *TensorByName;
    *(v22 - 1) = v39;
    *v22 = v40;
    v22[1] = 4 * v40;
    v22[2] = 6;
    ++v21;
    v22 += 6;
  }

  while (v21 != 25);
  v41 = AcANSTPostProcessNetOutputs(*(v9 + 56), v10, v9 + 64, buf, 25, (v9 + 3784), v118, v31, v32, v33, v34, v35, v36, v37, v38);
  v42 = os_signpost_id_make_with_pointer(v18, v9);

  if (v42 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
  {
    *v113 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v18, OS_SIGNPOST_INTERVAL_END, v42, "ANSTISPAlgorithmV1_RTCVPostProcess", &unk_22E663F87, v113, 2u);
  }

  v6 = v112;
  if (v41)
  {
    v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"Failed to create AcResult (AcReturn %d)", v41);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A450();
    }

    if (v112)
    {
      v45 = MEMORY[0x277CCA9B8];
      v114 = *MEMORY[0x277CCA450];
      v115 = v43;
      v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v44, &v115, &v114, 1);
      *v112 = objc_msgSend_errorWithDomain_code_userInfo_(v45, v47, @"ANSTErrorDomain", 18, v46);
    }

    v48 = 0;
  }

  else
  {
LABEL_30:
    if (objc_msgSend_enableFaceAttributes(*(v9 + 32), v16, v17))
    {
      objc_msgSend_updateFaceAttributesOfAcResult_inputImage_error_(*(v9 + 212432), v49, v118, v8, v6);
    }

    if (objc_msgSend_enableSegmentation(*(v9 + 32), v49, v50))
    {
      v52 = *(v9 + 40);
      v53 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v51, 18);
      v54 = v53;
      v57 = objc_msgSend_UTF8String(v54, v55, v56);
      v59 = objc_msgSend_getTensorByName_(v52, v58, v57);

      CVPixelBuffer_Uint8_fromEspressoBufferFloat32 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v60, v59);
      v62 = *(v9 + 40);
      v64 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v63, 19);
      v65 = v64;
      v68 = objc_msgSend_UTF8String(v65, v66, v67);
      v70 = objc_msgSend_getTensorByName_(v62, v69, v68);

      v72 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v71, v70);
      v73 = *(v9 + 40);
      v75 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v74, 20);
      v76 = v75;
      v79 = objc_msgSend_UTF8String(v76, v77, v78);
      v81 = objc_msgSend_getTensorByName_(v73, v80, v79);

      v83 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v82, v81);
      v84 = *(v9 + 40);
      v86 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v85, 21);
      v87 = v86;
      v90 = objc_msgSend_UTF8String(v87, v88, v89);
      v92 = objc_msgSend_getTensorByName_(v84, v91, v90);

      v94 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v93, v92);
      v95 = *(v9 + 40);
      v97 = objc_msgSend_objectAtIndexedSubscript_(*(v9 + 48), v96, 22);
      v98 = v97;
      v101 = objc_msgSend_UTF8String(v98, v99, v100);
      v103 = objc_msgSend_getTensorByName_(v95, v102, v101);

      v105 = objc_msgSend__createCVPixelBuffer_Uint8_fromEspressoBufferFloat32_(v9, v104, v103);
    }

    else
    {
      CVPixelBuffer_Uint8_fromEspressoBufferFloat32 = 0;
      v72 = 0;
      v83 = 0;
      v94 = 0;
      v105 = 0;
    }

    v106 = [ANSTISPAlgorithmResult alloc];
    if (objc_msgSend_enableObjectTracking(*(v9 + 32), v107, v108))
    {
      v110 = objc_msgSend_initWithAcResult_personMask_salientPersonMask_skinMask_hairMask_skyMask_saliencyMask_(v106, v109, v118, CVPixelBuffer_Uint8_fromEspressoBufferFloat32, v72, v83, v94, v105, 0);
    }

    else
    {
      v110 = objc_msgSend_initWithAcResult_personMask_salientPersonMask_skinMask_hairMask_skyMask_saliencyMask_(v106, v109, 0, CVPixelBuffer_Uint8_fromEspressoBufferFloat32, v72, v83, v94, v105, 0);
    }

    v48 = v110;
    CVPixelBufferRelease(CVPixelBuffer_Uint8_fromEspressoBufferFloat32);
    CVPixelBufferRelease(v72);
    CVPixelBufferRelease(v83);
    CVPixelBufferRelease(v94);
    CVPixelBufferRelease(v105);
    CVPixelBufferRelease(0);
  }

  return v48;
}

- (unint64_t)networkInputBufferWidth
{
  v4 = objc_msgSend_networkResolution(self->_config, a2, v2);
  if (v4)
  {
    if (v4 == 1)
    {
      return 1024;
    }

    v6 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_22E65A4D4(&self->_config, v6, v7);
    }
  }

  return 512;
}

- (unint64_t)networkInputBufferHeight
{
  v4 = objc_msgSend_networkResolution(self->_config, a2, v2);
  if (!v4)
  {
    return 384;
  }

  if (v4 == 1)
  {
    return 576;
  }

  v6 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_22E65A564(&self->_config, v6, v7);
  }

  return 512;
}

- (__CVBuffer)_createCVPixelBuffer_Uint8_fromEspressoBufferFloat32:(id *)float32
{
  if (float32->var6 != 1)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A5F4();
    }

    goto LABEL_21;
  }

  if (float32->var14 != 65568)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A674();
    }

    goto LABEL_21;
  }

  pixelBufferOut = 0;
  v4 = CVPixelBufferPoolCreatePixelBuffer(0, self->_outputSemanticBufferPool, &pixelBufferOut);
  if (v4)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A6F0();
    }

LABEL_21:

    return 0;
  }

  var4 = float32->var4;
  var5 = float32->var5;
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  if (var4 != Width || (Width = CVPixelBufferGetHeight(pixelBufferOut), var5 != Width))
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(Width);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A76C();
    }

    goto LABEL_21;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  var0 = float32->var0;
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  if (var5)
  {
    for (i = 0; i != var5; ++i)
    {
      if (var4)
      {
        v13 = &BaseAddress[i * BytesPerRow];
        v14 = &var0[4 * i * var4];
        v15 = var4;
        do
        {
          v16 = *v14++;
          *v13++ = v16;
          --v15;
        }

        while (v15);
      }
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

- (__CVBuffer)_createCVPixelBuffer_Uint8_fromAcSaliencyHeatMap:(id *)map
{
  if (!map->var4)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A868();
    }

    goto LABEL_7;
  }

  mapCopy = map;
  pixelBufferOut = 0;
  v4 = CVPixelBufferPoolCreatePixelBuffer(0, self->_outputSaliencyBufferPool, &pixelBufferOut);
  if (v4)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65A7EC();
    }

LABEL_7:

    return 0;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  if (Height)
  {
    v11 = BaseAddress;
    do
    {
      memcpy(v11, mapCopy, Width);
      v11 += BytesPerRow;
      mapCopy = (mapCopy + Width);
      --Height;
    }

    while (Height);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

@end