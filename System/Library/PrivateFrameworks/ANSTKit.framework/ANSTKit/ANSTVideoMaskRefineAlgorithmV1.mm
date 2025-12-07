@interface ANSTVideoMaskRefineAlgorithmV1
- (ANSTVideoMaskRefineAlgorithmV1)initWithConfiguration:(id)configuration;
- (BOOL)prepareWithError:(id *)error;
- (__CVBuffer)_createCVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32:(id *)float32;
- (id)_networkResult;
- (id)resultForPixelBuffer:(__CVBuffer *)resizedInputBuffer coarseSegementationMasks:(id)masks error:(id *)error;
- (void)dealloc;
- (void)undoPrepareSideEffects;
@end

@implementation ANSTVideoMaskRefineAlgorithmV1

- (ANSTVideoMaskRefineAlgorithmV1)initWithConfiguration:(id)configuration
{
  v17 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = ANSTVideoMaskRefineAlgorithmV1;
  v6 = [(ANSTVideoMaskRefineAlgorithm *)&v14 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    v7->_readyForInference = 0;
    v7->_isFirstFrame = 1;
    v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_msgSend_description(configurationCopy, v10, v11);
      *buf = 138543362;
      v16 = v12;
      _os_log_impl(&dword_22E5D5000, v9, OS_LOG_TYPE_DEFAULT, "ANSTVideoMaskRefineAlgorithmV1 (VMRefiner v1.1) initialized with config %{public}@.", buf, 0xCu);
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
  v4.super_class = ANSTVideoMaskRefineAlgorithmV1;
  [(ANSTVideoMaskRefineAlgorithmV1 *)&v4 dealloc];
}

- (void)undoPrepareSideEffects
{
  CVPixelBufferRelease(self->_resizedInputBuffer);
  CVPixelBufferPoolRelease(self->_outputBufferPool_256x192);
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
    CFRelease(pixelTransferSession);
  }

  network = self->_network;
  self->_network = 0;

  self->_readyForInference = 0;
}

- (BOOL)prepareWithError:(id *)error
{
  v124[1] = *MEMORY[0x277D85DE8];
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANSTVideoMaskRefineAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  if (!self->_readyForInference)
  {
    v9 = [ANSTBaseNetworkEspresso alloc];
    v12 = objc_msgSend_networkEngineType(self->_config, v10, v11);
    v15 = objc_msgSend_qualityOfService(self->_config, v13, v14);
    v17 = objc_msgSend_initWithNetworkEngine_qualityOfService_networkName_(v9, v16, v12, v15, @"vmrefiner");
    network = self->_network;
    self->_network = v17;

    if (objc_msgSend_networkEngineType(self->_config, v19, v20))
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B640(v5, v23, v24, v25, v26, v27, v28, v29);
      }

      if (error)
      {
        v32 = MEMORY[0x277CCA9B8];
        v123 = *MEMORY[0x277CCA450];
        v124[0] = @"ANSTKit has deprecated non-ANE execution support. Please stop configuring ANSTVideoMaskRefineAlgorithm for executing on non-ANE platforms.";
        v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v124, &v123, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v32, v34, @"ANSTErrorDomain", 3, v33);
      }

      objc_msgSend_undoPrepareSideEffects(self, v30, v31);
      v35 = os_signpost_id_make_with_pointer(v5, self);

      if (v35 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
      {
        goto LABEL_38;
      }

      *buf = 0;
LABEL_37:
      _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v35, "ANSTVideoMaskRefineAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
LABEL_38:

      return 0;
    }

    if ((objc_msgSend_prepare(self->_network, v21, v22) & 1) == 0)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B6B8(v5, v69, v70, v71, v72, v73, v74, v75);
      }

      if (error)
      {
        v78 = MEMORY[0x277CCA9B8];
        v121 = *MEMORY[0x277CCA450];
        v122 = @"Failed to prepare espresso network.";
        v79 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v76, &v122, &v121, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v78, v80, @"ANSTErrorDomain", 3, v79);
      }

      objc_msgSend_undoPrepareSideEffects(self, v76, v77);
      v35 = os_signpost_id_make_with_pointer(v5, self);

      if (v35 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
      {
        goto LABEL_38;
      }

      *buf = 0;
      goto LABEL_37;
    }

    *buf = 0u;
    v120 = 0u;
    v37 = self->_network;
    v38 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkOutputNames, v36, 2);
    v39 = v38;
    v42 = objc_msgSend_UTF8String(v39, v40, v41);
    self->_lastPersonMask = objc_msgSend_getTensorByName_(v37, v43, v42);

    v44 = self->_network;
    v46 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkOutputNames, v45, 2);
    v47 = v46;
    v50 = objc_msgSend_UTF8String(v47, v48, v49);
    LOBYTE(v44) = objc_msgSend_getBlobDimensionByName_andDestination_(v44, v51, v50, buf);

    if (v44)
    {
      bzero(self->_lastPersonMask->var0, 4 * self->_lastPersonMask->var13);
      objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v54, 1111970369, 256, 192, &self->_resizedInputBuffer);
      if (self->_resizedInputBuffer)
      {
        if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
        {
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B730(v5, v56, v57, v58, v59, v60, v61, v62);
          }

          if (error)
          {
            v65 = MEMORY[0x277CCA9B8];
            v113 = *MEMORY[0x277CCA450];
            v114 = @"Failed to prepare VTPixelTransferSession.";
            v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v63, &v114, &v113, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v65, v67, @"ANSTErrorDomain", 3, v66);
          }

          objc_msgSend_undoPrepareSideEffects(self, v63, v64);
          v68 = os_signpost_id_make_with_pointer(v5, self);

          if (v68 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
          {
            goto LABEL_53;
          }

          *v110 = 0;
        }

        else
        {
          objc_msgSend_createPixelBufferPoolWithCapacity_pixelFormat_width_height_handle_(ANSTUtility, v55, 3, 1278226534, 256, 192, &self->_outputBufferPool_256x192);
          if (self->_outputBufferPool_256x192)
          {
            v8 = 1;
            self->_readyForInference = 1;
            v97 = os_signpost_id_make_with_pointer(v5, self);

            if (v97 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
            {
              *v110 = 0;
              _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v97, "ANSTVideoMaskRefineAlgorithmV1_prepareWithError", &unk_22E663F87, v110, 2u);
            }

            goto LABEL_54;
          }

          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_22E65B7A8(v5, v98, v99, v100, v101, v102, v103, v104);
          }

          if (error)
          {
            v107 = MEMORY[0x277CCA9B8];
            v111 = *MEMORY[0x277CCA450];
            v112 = @"Failed to prepare output pixel buffer pool.";
            v108 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v105, &v112, &v111, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v107, v109, @"ANSTErrorDomain", 3, v108);
          }

          objc_msgSend_undoPrepareSideEffects(self, v105, v106);
          v68 = os_signpost_id_make_with_pointer(v5, self);

          if (v68 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
          {
LABEL_53:
            v8 = 0;
LABEL_54:

            return v8;
          }

          *v110 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_22E65B820(v5, v85, v86, v87, v88, v89, v90, v91);
        }

        if (error)
        {
          v94 = MEMORY[0x277CCA9B8];
          v115 = *MEMORY[0x277CCA450];
          v116 = @"Failed to prepare resized input buffer.";
          v95 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v92, &v116, &v115, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v94, v96, @"ANSTErrorDomain", 3, v95);
        }

        objc_msgSend_undoPrepareSideEffects(self, v92, v93);
        v68 = os_signpost_id_make_with_pointer(v5, self);

        if (v68 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
        {
          goto LABEL_53;
        }

        *v110 = 0;
      }
    }

    else
    {
      if (error)
      {
        v82 = MEMORY[0x277CCA9B8];
        v117 = *MEMORY[0x277CCA450];
        v118 = @"Failed to get last person mask output blob dimensions";
        v83 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v52, &v118, &v117, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v82, v84, @"ANSTErrorDomain", 3, v83);
      }

      objc_msgSend_undoPrepareSideEffects(self, v52, v53);
      v68 = os_signpost_id_make_with_pointer(v5, self);

      if (v68 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v5))
      {
        goto LABEL_53;
      }

      *v110 = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v68, "ANSTVideoMaskRefineAlgorithmV1_prepareWithError", &unk_22E663F87, v110, 2u);
    goto LABEL_53;
  }

  v7 = os_signpost_id_make_with_pointer(v5, self);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v7, "ANSTVideoMaskRefineAlgorithmV1_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  return 1;
}

- (id)resultForPixelBuffer:(__CVBuffer *)resizedInputBuffer coarseSegementationMasks:(id)masks error:(id *)error
{
  v146[1] = *MEMORY[0x277D85DE8];
  masksCopy = masks;
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(masksCopy);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTVideoMaskRefineAlgorithm_resultForPixelBuffer", &unk_22E663F87, buf, 2u);
  }

  if (!self->_readyForInference)
  {
    if (error)
    {
      v28 = MEMORY[0x277CCA9B8];
      v145 = *MEMORY[0x277CCA450];
      v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v146, &v145, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v28, v30, @"ANSTErrorDomain", 4, v29);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  if (!resizedInputBuffer)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BAF0(v9, v31, v32, v33, v34, v35, v36, v37);
    }

    if (error)
    {
      v39 = MEMORY[0x277CCA9B8];
      v143 = *MEMORY[0x277CCA450];
      v144 = @"Nil input buffer.";
      v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, &v144, &v143, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v39, v41, @"ANSTErrorDomain", 2, v40);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  Width = CVPixelBufferGetWidth(resizedInputBuffer);
  Height = CVPixelBufferGetHeight(resizedInputBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(resizedInputBuffer);
  if (Width < Height)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BA78(v9, v16, v17, v18, v19, v20, v21, v22);
    }

    if (error)
    {
      v24 = MEMORY[0x277CCA9B8];
      v141 = *MEMORY[0x277CCA450];
      v142 = @"Input pixel buffer width < height. ANSTISPAlgorithm only supports landscape input.";
      v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v142, &v141, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"ANSTErrorDomain", 2, v25);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
LABEL_71:
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v27, "ANSTVideoMaskRefineAlgorithm_resultForPixelBuffer", &unk_22E663F87, buf, 2u);
LABEL_72:
    v101 = 0;
    goto LABEL_73;
  }

  if (Width != 256 || Height != 192 || PixelFormatType != 1111970369)
  {
    if (VTPixelTransferSessionTransferImage(self->_pixelTransferSession, resizedInputBuffer, self->_resizedInputBuffer))
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22E65B898(v9, v42, v43, v44, v45, v46, v47, v48);
      }

      if (error)
      {
        v50 = MEMORY[0x277CCA9B8];
        v139 = *MEMORY[0x277CCA450];
        v140 = @"Failed to transfer input pixel buffer.";
        v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v140, &v139, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v50, v52, @"ANSTErrorDomain", 4, v51);
      }

      v27 = os_signpost_id_make_with_pointer(v9, self);

      if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
      {
        goto LABEL_72;
      }

      *buf = 0;
      goto LABEL_71;
    }

    resizedInputBuffer = self->_resizedInputBuffer;
  }

  v53 = objc_msgSend_objectForKeyedSubscript_(masksCopy, v15, @"Skin");

  v55 = objc_msgSend_objectForKeyedSubscript_(masksCopy, v54, @"Hair");

  v57 = objc_msgSend_objectForKeyedSubscript_(masksCopy, v56, @"Person");

  if (!v53 || !v55 || !v57)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BA00(v9, v79, v80, v81, v82, v83, v84, v85);
    }

    if (error)
    {
      v87 = MEMORY[0x277CCA9B8];
      v137 = *MEMORY[0x277CCA450];
      v138 = @"Missing one or more required coarse input mask.";
      v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, &v138, &v137, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v87, v89, @"ANSTErrorDomain", 2, v88);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  if (CVPixelBufferGetWidth(v53) != 256 || CVPixelBufferGetHeight(v53) != 192 || CVPixelBufferGetWidth(v55) != 256 || CVPixelBufferGetHeight(v55) != 192 || CVPixelBufferGetWidth(v57) != 256 || CVPixelBufferGetHeight(v57) != 192)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B910(v9, v90, v91, v92, v93, v94, v95, v96);
    }

    if (error)
    {
      v98 = MEMORY[0x277CCA9B8];
      v135 = *MEMORY[0x277CCA450];
      v136 = @"Unexpected input mask dimension. VMRefiner expects 256 x 192 input.";
      v99 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v97, &v136, &v135, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v98, v100, @"ANSTErrorDomain", 2, v99);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  if (CVPixelBufferGetPixelFormatType(v53) != 1278226488 || CVPixelBufferGetPixelFormatType(v55) != 1278226488 || CVPixelBufferGetPixelFormatType(v57) != 1278226488)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22E65B988(v9, v103, v104, v105, v106, v107, v108, v109);
    }

    if (error)
    {
      v111 = MEMORY[0x277CCA9B8];
      v133 = *MEMORY[0x277CCA450];
      v134 = @"Unexpected input mask pixel format. VMRefiner expects OneComponent8.";
      v112 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v110, &v134, &v133, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v111, v113, @"ANSTErrorDomain", 2, v112);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  network = self->_network;
  v127 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkInputNames, v58, 0);
  if (!objc_msgSend_setInput_fromCVPixelBuffer_(network, v60, v127, resizedInputBuffer))
  {
    goto LABEL_85;
  }

  v62 = self->_network;
  v63 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkInputNames, v61, 1);
  if (!objc_msgSend_setInput_fromCVPixelBuffer_(v62, v64, v63, v53))
  {
LABEL_84:

LABEL_85:
    goto LABEL_86;
  }

  v66 = self->_network;
  v67 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkInputNames, v65, 2);
  if ((objc_msgSend_setInput_fromCVPixelBuffer_(v66, v68, v67, v55) & 1) == 0)
  {

    goto LABEL_84;
  }

  v70 = self->_network;
  v71 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkInputNames, v69, 3);
  LODWORD(v70) = objc_msgSend_setInput_fromCVPixelBuffer_(v70, v72, v71, v57);

  if (!v70)
  {
    goto LABEL_86;
  }

  v74 = self->_network;
  if (self->_isFirstFrame)
  {
    v75 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkInputNames, v73, 4);
    v77 = objc_msgSend_setInput_fromCVPixelBuffer_(v74, v76, v75, v57);

    if (v77)
    {
      self->_isFirstFrame = 0;
      goto LABEL_92;
    }

LABEL_86:
    if (error)
    {
      v114 = MEMORY[0x277CCA9B8];
      v131 = *MEMORY[0x277CCA450];
      v132 = @"Failed to set network input buffers";
      v115 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, &v132, &v131, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v114, v116, @"ANSTErrorDomain", 4, v115);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  lastPersonMask = self->_lastPersonMask;
  v118 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkInputNames, v73, 4);
  v120 = objc_msgSend_bindNetworkInputWithEspressoBuffer_withInputName_(v74, v119, lastPersonMask, v118);

  if ((v120 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_92:
  if ((objc_msgSend_runNetwork(self->_network, v73, v78) & 1) == 0)
  {
    if (error)
    {
      v124 = MEMORY[0x277CCA9B8];
      v129 = *MEMORY[0x277CCA450];
      v130 = @"Failed to run network";
      v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v121, &v130, &v129, 1);
      *error = objc_msgSend_errorWithDomain_code_userInfo_(v124, v126, @"ANSTErrorDomain", 4, v125);
    }

    v27 = os_signpost_id_make_with_pointer(v9, self);

    if (v27 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v9))
    {
      goto LABEL_72;
    }

    *buf = 0;
    goto LABEL_71;
  }

  v101 = objc_msgSend__networkResult(self, v121, v122);
  v123 = os_signpost_id_make_with_pointer(v9, self);

  if (v123 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v123, "ANSTVideoMaskRefineAlgorithm_resultForPixelBuffer", &unk_22E663F87, buf, 2u);
  }

LABEL_73:

  return v101;
}

- (id)_networkResult
{
  network = self->_network;
  v4 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkOutputNames, a2, 0);
  v5 = v4;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  TensorByName = objc_msgSend_getTensorByName_(network, v9, v8);

  CVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32 = objc_msgSend__createCVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32_(self, v11, TensorByName);
  if (CVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32)
  {
    v14 = CVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32;
    v15 = self->_network;
    v16 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkOutputNames, v13, 1);
    v17 = v16;
    v20 = objc_msgSend_UTF8String(v17, v18, v19);
    v22 = objc_msgSend_getTensorByName_(v15, v21, v20);

    v24 = objc_msgSend__createCVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32_(self, v23, v22);
    if (v24)
    {
      v26 = v24;
      v27 = self->_network;
      v28 = objc_msgSend_objectAtIndexedSubscript_(kANSTRefinerNetworkOutputNames, v25, 2);
      v29 = v28;
      v32 = objc_msgSend_UTF8String(v29, v30, v31);
      self->_lastPersonMask = objc_msgSend_getTensorByName_(v27, v33, v32);

      v35 = objc_msgSend__createCVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32_(self, v34, self->_lastPersonMask);
      if (v35)
      {
        v36 = v35;
        v37 = [ANSTVideoMaskRefineAlgorithmResult alloc];
        v39 = objc_msgSend_initWithSkinMask_hairMask_personMask_(v37, v38, v14, v26, v36);
        CVPixelBufferRelease(v14);
        CVPixelBufferRelease(v26);
        CVPixelBufferRelease(v36);
        goto LABEL_12;
      }

      v40 = _ANSTLoggingGetOSLogForCategoryANSTKit(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_22E65BB68(v40, v55, v56, v57, v58, v59, v60, v61);
      }
    }

    else
    {
      v40 = _ANSTLoggingGetOSLogForCategoryANSTKit(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_22E65BBE0(v40, v48, v49, v50, v51, v52, v53, v54);
      }
    }
  }

  else
  {
    v40 = _ANSTLoggingGetOSLogForCategoryANSTKit(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BC58(v40, v41, v42, v43, v44, v45, v46, v47);
    }
  }

  v39 = 0;
LABEL_12:

  return v39;
}

- (__CVBuffer)_createCVPixelBuffer_256x192_Float32_fromEspressoBufferFloat32:(id *)float32
{
  if (float32->var6 != 1)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BCD0(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    goto LABEL_12;
  }

  if (float32->var4 != 256 || float32->var5 != 192)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BD48(v5, v13, v14, v15, v16, v17, v18, v19);
    }

    goto LABEL_12;
  }

  if (float32->var14 != 65568)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BDC0();
    }

    goto LABEL_12;
  }

  pixelBufferOut = 0;
  v4 = CVPixelBufferPoolCreatePixelBuffer(0, self->_outputBufferPool_256x192, &pixelBufferOut);
  if (v4)
  {
    v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22E65BE40();
    }

LABEL_12:

    return 0;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  var5 = float32->var5;
  v22 = 4 * float32->var4;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
  var0 = float32->var0;
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
  v26 = BaseAddress;
  if (v22 == BytesPerRow)
  {
    memcpy(BaseAddress, var0, var5 * v22);
  }

  else if (var5)
  {
    if (v22 >= BytesPerRow)
    {
      v27 = BytesPerRow;
    }

    else
    {
      v27 = v22;
    }

    do
    {
      memcpy(v26, var0, v27);
      v26 += BytesPerRow;
      var0 += v22;
      --var5;
    }

    while (var5);
  }

  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  return pixelBufferOut;
}

@end