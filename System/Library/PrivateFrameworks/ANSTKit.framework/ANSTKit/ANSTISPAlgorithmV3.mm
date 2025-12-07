@interface ANSTISPAlgorithmV3
+ (BOOL)_requiresPartialNetwork:(id)network;
+ (id)networkDescriptorForConfig:(id)config;
- (ANSTISPAlgorithmV3)initWithConfiguration:(id)configuration;
- (BOOL)_preparePostProcessorWithNetworkDescriptor:(id)descriptor error:(id *)error;
- (BOOL)_prepareWithError:(id *)error;
- (BOOL)_retainIOReferencesWithNetworkDescriptor:(id)descriptor error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (BOOL)resetWithError:(id *)error;
- (id)_resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (void)dealloc;
@end

@implementation ANSTISPAlgorithmV3

- (ANSTISPAlgorithmV3)initWithConfiguration:(id)configuration
{
  v59 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v56.receiver = self;
  v56.super_class = ANSTISPAlgorithmV3;
  v6 = [(ANSTISPAlgorithm *)&v56 initWithConfiguration:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, configuration);
    v9 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, v8, configurationCopy);
    v12 = objc_msgSend_inputImageDescriptor(v9, v10, v11);
    v7->_networkInputBufferWidth = objc_msgSend_width(v12, v13, v14);

    v17 = objc_msgSend_inputImageDescriptor(v9, v15, v16);
    v7->_networkInputBufferHeight = objc_msgSend_height(v17, v18, v19);

    v22 = objc_msgSend_inputImageDescriptor(v9, v20, v21);
    v7->_networkInputBufferPixelFormat = objc_msgSend_pixelFormatType(v22, v23, v24);

    v25 = [ANSTE5MLNetwork alloc];
    v55 = 0;
    v27 = objc_msgSend_initWithInferenceDescriptor_error_(v25, v26, v9, &v55);
    v28 = v55;
    network = v7->_network;
    v7->_network = v27;

    if (v7->_network)
    {
      if (!objc_msgSend__requiresPartialNetwork_(ANSTISPAlgorithmV3, v31, configurationCopy))
      {
        p_super = &v7->_partialNetwork->super;
        v7->_partialNetwork = 0;
        goto LABEL_10;
      }

      p_super = objc_msgSend_copy(v7->_config, v32, v33);
      objc_msgSend_setEnableSkinTone_(p_super, v35, 0);
      objc_msgSend_setEnableBodyKeypoints_(p_super, v36, 0);
      objc_msgSend_setEnableDepth_(p_super, v37, 0);
      v39 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, v38, p_super);
      v40 = [ANSTE5MLNetwork alloc];
      v54 = v28;
      v42 = objc_msgSend_initWithInferenceDescriptor_error_(v40, v41, v39, &v54);
      v43 = v54;

      partialNetwork = v7->_partialNetwork;
      v7->_partialNetwork = v42;

      if (v7->_partialNetwork)
      {

        v28 = v43;
LABEL_10:

        v7->_readyForInference = 0;
        v47 = _ANSTLoggingGetOSLogForCategoryANSTKit(v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_msgSend_description(v7->_config, v48, v49);
          *buf = 138543362;
          v58 = v50;
          _os_log_impl(&dword_22E5D5000, v47, OS_LOG_TYPE_DEFAULT, "ANSTISPAlgorithm v3.5 initialized with config %{public}@.", buf, 0xCu);
        }

        goto LABEL_13;
      }

      v52 = _ANSTLoggingGetOSLogForCategoryANSTKit(v45);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        sub_22E65C540();
      }
    }

    else
    {
      p_super = _ANSTLoggingGetOSLogForCategoryANSTKit(v30);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
      {
        sub_22E65C540();
      }

      v43 = v28;
    }

    v51 = 0;
    goto LABEL_18;
  }

LABEL_13:
  v51 = v7;
LABEL_18:

  return v51;
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
    self->_pixelTransferSession = 0;
  }

  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithmV3;
  [(ANSTISPAlgorithmV3 *)&v4 dealloc];
}

- (id)resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTISPAlgorithmV3_resultForPixelBuffer", &unk_22E663F87, buf, 2u);
  }

  v12 = objc_msgSend__resultForPixelBuffer_orientation_error_(self, v11, buffer, orientation, error);
  v13 = os_signpost_id_make_with_pointer(v9, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v13, "ANSTISPAlgorithmV3_resultForPixelBuffer", &unk_22E663F87, v15, 2u);
  }

  return v12;
}

- (BOOL)prepareWithError:(id *)error
{
  v5 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v6 = os_signpost_id_make_with_pointer(v5, self);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ANSTISPAlgorithmV3_prepareWithError", &unk_22E663F87, buf, 2u);
  }

  v8 = objc_msgSend__prepareWithError_(self, v7, error);
  v9 = os_signpost_id_make_with_pointer(v5, self);

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v5, OS_SIGNPOST_INTERVAL_END, v9, "ANSTISPAlgorithmV3_prepareWithError", &unk_22E663F87, v11, 2u);
  }

  return v8;
}

- (BOOL)resetWithError:(id *)error
{
  if (!self->_readyForInference)
  {
    return 1;
  }

  v5 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, a2, self->_config);
  network = self->_network;
  v9 = objc_msgSend_inputMemoryDescriptor(v5, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);
  v14 = objc_msgSend_tensorSurfaceForNetworkInputNamed_error_(network, v13, v12, error);

  if (v14)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22E627FA0;
    v19[3] = &unk_27884FFE0;
    v20 = v5;
    objc_msgSend_performMutableDataAccessWithOptions_usingBlock_error_(v14, v15, 0, v19, error);
    v17 = objc_msgSend_resetWithError_(self->_postprocessor, v16, error);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)networkDescriptorForConfig:(id)config
{
  configCopy = config;
  v4 = [ANSTISPInferenceConfiguration alloc];
  v6 = objc_msgSend_initWithISPAlgorithmConfiguration_(v4, v5, configCopy);

  v16 = 0;
  v8 = objc_msgSend_descriptorWithConfiguration_error_(ANSTISPInferenceDescriptor, v7, v6, &v16);
  v9 = v16;
  v11 = v9;
  if (!v8)
  {
    v12 = _ANSTLoggingGetOSLogForCategoryANSTKit(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_22E65C5B4();
    }
  }

  v13 = objc_msgSend_conformsToProtocol_(v8, v10, &unk_28432ED88);
  if ((v13 & 1) == 0)
  {
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_22E65C628(v14);
    }
  }

  return v8;
}

+ (BOOL)_requiresPartialNetwork:(id)network
{
  networkCopy = network;
  if (objc_msgSend_enableSkinTone(networkCopy, v4, v5) & 1) != 0 || (objc_msgSend_enableBodyKeypoints(networkCopy, v6, v7))
  {
    v10 = 1;
  }

  else
  {
    v10 = objc_msgSend_enableDepth(networkCopy, v8, v9);
  }

  return v10;
}

- (BOOL)_prepareWithError:(id *)error
{
  v64[1] = *MEMORY[0x277D85DE8];
  if (!self->_readyForInference)
  {
    v6 = objc_msgSend_networkDescriptorForConfig_(ANSTISPAlgorithmV3, a2, self->_config);
    if (objc_msgSend_loadNetworkWithError_(self->_network, v7, error) && objc_msgSend_allocateAndBindNetworkIOExceptInputsNamed_outputsNamed_error_(self->_network, v8, 0, 0, error))
    {
      network = self->_network;
      v12 = objc_msgSend_outputPriorMaskMapDescriptor(v6, v9, v10);
      v15 = objc_msgSend_name(v12, v13, v14);
      v59 = v6;
      v18 = objc_msgSend_inputMemoryDescriptor(v6, v16, v17);
      v21 = objc_msgSend_name(v18, v19, v20);
      if (!objc_msgSend_registerNetworkOutputNamed_asDataSourceForNetworkInputNamed_error_(network, v22, v15, v21, error))
      {

LABEL_27:
        goto LABEL_28;
      }

      v24 = objc_msgSend_commitNetworkIOBindingsWithError_(self->_network, v23, error);

      if (!v24)
      {
LABEL_28:
        v3 = 0;
        v6 = v59;
        goto LABEL_24;
      }

      v6 = v59;
      if (objc_msgSend__retainIOReferencesWithNetworkDescriptor_error_(self, v25, v59, error) && objc_msgSend__preparePostProcessorWithNetworkDescriptor_error_(self, v26, v59, error) && (!objc_msgSend__requiresPartialNetwork_(ANSTISPAlgorithmV3, v27, self->_config) || objc_msgSend_loadNetworkWithError_(self->_partialNetwork, v28, error) && objc_msgSend_bindNetworkIOToExistingNetwork_error_(self->_partialNetwork, v29, self->_network, error) && objc_msgSend_commitNetworkIOBindingsWithError_(self->_partialNetwork, v30, error)))
      {
        if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
        {
          v33 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v31, @"Failed to prepare VTPixelTransferSession");
          v34 = _ANSTLoggingGetOSLogForCategoryANSTKit(v33);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_22E65C6AC();
          }

          if (error)
          {
            v36 = MEMORY[0x277CCA9B8];
            v63 = *MEMORY[0x277CCA068];
            v64[0] = v33;
            v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v64, &v63, 1);
            v6 = v59;
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v36, v38, @"ANSTErrorDomain", 3, v37);
          }

          pixelTransferSession = self->_pixelTransferSession;
          if (pixelTransferSession)
          {
            CFRelease(pixelTransferSession);
            self->_pixelTransferSession = 0;
          }

          goto LABEL_23;
        }

        if (!objc_msgSend_enableFaceAttributes(self->_config, v31, v32))
        {
LABEL_32:
          v3 = 1;
          self->_readyForInference = 1;
          goto LABEL_24;
        }

        v41 = [ANSTFaceAttributeAlgorithmConfiguration alloc];
        v12 = objc_msgSend_initWithVersion_(v41, v42, 0x10000);
        v43 = [ANSTFaceAttributeAlgorithm alloc];
        v45 = objc_msgSend_initWithConfiguration_(v43, v44, v12);
        faceAttributeNetwork = self->_faceAttributeNetwork;
        self->_faceAttributeNetwork = v45;

        v47 = self->_faceAttributeNetwork;
        v60 = 0;
        v49 = objc_msgSend_prepareWithError_(v47, v48, &v60);
        v50 = v60;
        if (v49)
        {

          goto LABEL_32;
        }

        v52 = v50;
        v53 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v51, @"Failed to prepare face attribute network - %@", v50);
        v54 = _ANSTLoggingGetOSLogForCategoryANSTKit(v53);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_22E65C6AC();
        }

        if (error)
        {
          v56 = MEMORY[0x277CCA9B8];
          v61 = *MEMORY[0x277CCA068];
          v62 = v53;
          v57 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, &v62, &v61, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v56, v58, @"ANSTErrorDomain", 3, v57);
        }

        goto LABEL_27;
      }
    }

LABEL_23:
    v3 = 0;
LABEL_24:

    return v3;
  }

  return 1;
}

- (BOOL)_retainIOReferencesWithNetworkDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  network = self->_network;
  v10 = objc_msgSend_inputImageDescriptor(descriptorCopy, v8, v9);
  v13 = objc_msgSend_name(v10, v11, v12);
  v15 = objc_msgSend_pixelBufferForNetworkInputNamed_error_(network, v14, v13, error);
  inputImagePixelBuffer = self->_inputImagePixelBuffer;
  self->_inputImagePixelBuffer = v15;

  v69 = 0;
  if (self->_inputImagePixelBuffer)
  {
    if (!objc_msgSend_enableSegmentation(self->_config, v17, v18) || (v21 = self->_network, objc_msgSend_outputPersonMapDescriptor(descriptorCopy, v19, v20), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v22, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v21, v26, v25, error), v27 = objc_claimAutoreleasedReturnValue(), outputPersonMaskPixelBuffer = self->_outputPersonMaskPixelBuffer, self->_outputPersonMaskPixelBuffer = v27, outputPersonMaskPixelBuffer, v25, v22, v29 = self->_network, objc_msgSend_outputSalientPersonMapDescriptor(descriptorCopy, v30, v31), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v32, v33, v34), v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v29, v36, v35, error), v37 = objc_claimAutoreleasedReturnValue(), outputSalientPersonMaskPixelBuffer = self->_outputSalientPersonMaskPixelBuffer, self->_outputSalientPersonMaskPixelBuffer = v37, outputSalientPersonMaskPixelBuffer, v35, v32, v39 = self->_network, objc_msgSend_outputSkinMapDescriptor(descriptorCopy, v40, v41), v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v42, v43, v44), v45 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v39, v46, v45, error), v47 = objc_claimAutoreleasedReturnValue(), outputSkinMaskPixelBuffer = self->_outputSkinMaskPixelBuffer, self->_outputSkinMaskPixelBuffer = v47, outputSkinMaskPixelBuffer, v45, v42, v49 = self->_network, objc_msgSend_outputHairMapDescriptor(descriptorCopy, v50, v51), v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v52, v53, v54), v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v49, v56, v55, error), v57 = objc_claimAutoreleasedReturnValue(), outputHairMaskPixelBuffer = self->_outputHairMaskPixelBuffer, self->_outputHairMaskPixelBuffer = v57, outputHairMaskPixelBuffer, v55, v52, v59 = self->_network, objc_msgSend_outputSkyMapDescriptor(descriptorCopy, v60, v61), v62 = objc_claimAutoreleasedReturnValue(), objc_msgSend_name(v62, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend_pixelBufferForNetworkOutputNamed_error_(v59, v66, v65, error), v67 = objc_claimAutoreleasedReturnValue(), outputSkyMaskPixelBuffer = self->_outputSkyMaskPixelBuffer, self->_outputSkyMaskPixelBuffer = v67, outputSkyMaskPixelBuffer, v65, v62, self->_outputPersonMaskPixelBuffer) && self->_outputSalientPersonMaskPixelBuffer && self->_outputSkinMaskPixelBuffer && self->_outputHairMaskPixelBuffer && self->_outputSkyMaskPixelBuffer)
    {
      v69 = 1;
    }
  }

  return v69;
}

- (BOOL)_preparePostProcessorWithNetworkDescriptor:(id)descriptor error:(id *)error
{
  if (self->_postprocessor)
  {
    return 1;
  }

  v7 = objc_msgSend_newPostprocessorWithError_(descriptor, a2, error);
  postprocessor = self->_postprocessor;
  self->_postprocessor = v7;

  v10 = self->_postprocessor;
  if (v10)
  {
    if (objc_msgSend_bindInputsToNetwork_error_(v10, v9, self->_network, error))
    {
      return 1;
    }

    v11 = self->_postprocessor;
  }

  else
  {
    v11 = 0;
  }

  self->_postprocessor = 0;

  return 0;
}

- (id)_resultForPixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v99[1] = *MEMORY[0x277D85DE8];
  if (!self->_readyForInference)
  {
    if (!error)
    {
      goto LABEL_17;
    }

    v17 = MEMORY[0x277CCA9B8];
    v98 = *MEMORY[0x277CCA450];
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v99, &v98, 1);
    v18 = LABEL_10:;
    objc_msgSend_errorWithDomain_code_userInfo_(v17, v19, @"ANSTErrorDomain", 4, v18);
    *error = LABEL_16:;

    goto LABEL_17;
  }

  if (!buffer)
  {
    v20 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C8A4();
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v96 = *MEMORY[0x277CCA450];
    v97 = @"Nil input buffer.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v21, &v97, &v96, 1);
    v18 = LABEL_15:;
    objc_msgSend_errorWithDomain_code_userInfo_(v16, v22, @"ANSTErrorDomain", 2, v18);
    goto LABEL_16;
  }

  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (Width < Height)
  {
    v14 = _ANSTLoggingGetOSLogForCategoryANSTKit(PixelFormatType);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C824();
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v94 = *MEMORY[0x277CCA450];
    v95 = @"Input pixel buffer width < height. ANSTISPAlgorithmV3Dot5 only supports landscape input.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v95, &v94, 1);
    goto LABEL_15;
  }

  v25 = PixelFormatType;
  if (Width == objc_msgSend_networkInputBufferWidth(self, v12, v13) && Height == objc_msgSend_networkInputBufferHeight(self, v26, v27) && v25 == objc_msgSend_networkInputBufferPixelFormat(self, v26, v27))
  {
    v28 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v26, v27);
    if (BytesPerRow == CVPixelBufferGetBytesPerRow(v28))
    {
      CVPixelBufferLockBaseAddress(buffer, 1uLL);
      v31 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v29, v30);
      CVPixelBufferLockBaseAddress(v31, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(buffer);
      v35 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v33, v34);
      v36 = CVPixelBufferGetBaseAddress(v35);
      memcpy(v36, BaseAddress, BytesPerRow * Height);
      v39 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v37, v38);
      CVPixelBufferUnlockBaseAddress(v39, 0);
      CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
      goto LABEL_31;
    }
  }

  pixelTransferSession = self->_pixelTransferSession;
  v43 = objc_msgSend_pixelBuffer(self->_inputImagePixelBuffer, v26, v27);
  v44 = VTPixelTransferSessionTransferImage(pixelTransferSession, buffer, v43);
  if (v44)
  {
    v45 = _ANSTLoggingGetOSLogForCategoryANSTKit(v44);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_22E65C728();
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v17 = MEMORY[0x277CCA9B8];
    v92 = *MEMORY[0x277CCA450];
    v93 = @"Failed to transfer input pixel buffer.";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v46, &v93, &v92, 1);
    goto LABEL_10;
  }

LABEL_31:
  if (self->_partialNetwork)
  {
    if (*(objc_msgSend_acResult(self->_postprocessor, v40, v41) + 33036))
    {
      if (*(objc_msgSend_acResult(self->_postprocessor, v47, v48) + 33036) != 1)
      {
        v81 = MEMORY[0x277CCACA8];
        v82 = objc_msgSend_acResult(self->_postprocessor, v49, v50);
        v84 = objc_msgSend_stringWithFormat_(v81, v83, @"Unexpected sCIspAcANSTNetworkPerformanceType %d", *(v82 + 33036));
        v85 = _ANSTLoggingGetOSLogForCategoryANSTKit(v84);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          sub_22E65C7A8();
        }

        if (error)
        {
          v87 = MEMORY[0x277CCA9B8];
          v90 = *MEMORY[0x277CCA068];
          v91 = v84;
          v88 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v86, &v91, &v90, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v87, v89, @"ANSTErrorDomain", 3, v88);
        }

        goto LABEL_17;
      }

      if (objc_msgSend_executeInferenceWithError_(self->_network, v49, error))
      {
        goto LABEL_39;
      }

LABEL_17:
      v23 = 0;
      goto LABEL_18;
    }

    if ((objc_msgSend_executeInferenceWithError_(self->_partialNetwork, v47, error) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (!objc_msgSend_executeInferenceWithError_(self->_network, v40, error))
  {
    goto LABEL_17;
  }

LABEL_39:
  objc_msgSend_setOriginalImageSize_(self->_postprocessor, v51, v52, Width, Height);
  if (!objc_msgSend_processWithError_(self->_postprocessor, v53, error))
  {
    goto LABEL_17;
  }

  if (objc_msgSend_enableFaceAttributes(self->_config, v54, v55))
  {
    faceAttributeNetwork = self->_faceAttributeNetwork;
    v59 = objc_msgSend_acResult(self->_postprocessor, v56, v57);
    objc_msgSend_updateFaceAttributesOfAcResult_inputImage_error_(faceAttributeNetwork, v60, v59, buffer, error);
  }

  v61 = [ANSTISPAlgorithmResult alloc];
  v64 = objc_msgSend_acResult(self->_postprocessor, v62, v63);
  v67 = objc_msgSend_pixelBuffer(self->_outputPersonMaskPixelBuffer, v65, v66);
  v70 = objc_msgSend_pixelBuffer(self->_outputSalientPersonMaskPixelBuffer, v68, v69);
  v73 = objc_msgSend_pixelBuffer(self->_outputSkinMaskPixelBuffer, v71, v72);
  v76 = objc_msgSend_pixelBuffer(self->_outputHairMaskPixelBuffer, v74, v75);
  v79 = objc_msgSend_pixelBuffer(self->_outputSkyMaskPixelBuffer, v77, v78);
  v23 = objc_msgSend_initWithAcResult_personMask_salientPersonMask_skinMask_hairMask_skyMask_saliencyMask_(v61, v80, v64, v67, v70, v73, v76, v79, 0);
LABEL_18:

  return v23;
}

@end