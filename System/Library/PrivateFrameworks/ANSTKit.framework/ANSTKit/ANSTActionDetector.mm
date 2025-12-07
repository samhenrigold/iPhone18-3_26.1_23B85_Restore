@interface ANSTActionDetector
+ (float)normalizationThresholdForActionType:(id)type detectorVersion:(unint64_t)version;
+ (id)new;
+ (id)supportedActionTypesOfDetectorVersion:(unint64_t)version;
+ (id)supportedFrameRatesOfDetectorVersion:(unint64_t)version;
- (ANSTActionDetector)init;
- (ANSTActionDetector)initWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)prepareWithError:(id *)error;
- (CGRect)_postProcessedBoundingBox:(CGRect)box maxWidth:(double)width maxHeight:(double)height contentIsRotated90CCW:(BOOL)w;
- (NSArray)supportedActionTypes;
- (id)_resultForFrameBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation signpostIDPointer:(const void *)pointer error:(id *)error;
- (id)resultForFrameBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error;
- (void)_releaseResourceSafely;
- (void)dealloc;
- (void)reset;
@end

@implementation ANSTActionDetector

- (ANSTActionDetector)init
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

+ (id)new
{
  result = objc_msgSend_doesNotRecognizeSelector_(self, a2, a2);
  __break(1u);
  return result;
}

- (NSArray)supportedActionTypes
{
  v4 = objc_msgSend_version(self->_configuration, a2, v2);

  return objc_msgSend_supportedActionTypesOfDetectorVersion_(ANSTActionDetector, v3, v4);
}

- (ANSTActionDetector)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = ANSTActionDetector;
  v7 = [(ANSTAlgorithm *)&v11 initWithConfiguration:configurationCopy];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, configuration);
    currentDetection = v8->_currentDetection;
    v8->_currentDetection = 0;

    v8->_frameCount = 0;
    v8->_actionRefreshFrameInterval = 3;
    v8->_prepared = 0;
  }

  return v8;
}

- (BOOL)prepareWithError:(id *)error
{
  v219[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    v6 = [ANSTISPAlgorithmConfiguration alloc];
    v8 = objc_msgSend_initWithVersion_(v6, v7, 0x10000);
    objc_msgSend_setEnableObjectTracking_(v8, v9, 1);
    objc_msgSend_setEnableSegmentation_(v8, v10, 0);
    v11 = [ANSTISPAlgorithm alloc];
    v13 = objc_msgSend_initWithConfiguration_(v11, v12, v8);
    anstModel = self->_anstModel;
    self->_anstModel = v13;

    if ((objc_msgSend_prepareWithError_(self->_anstModel, v15, error) & 1) == 0)
    {
LABEL_8:
      objc_msgSend__releaseResourceSafely(self, v16, v17);
      v3 = 0;
LABEL_9:

      return v3;
    }

    if (VTPixelRotationSessionCreate(*MEMORY[0x277CBECE8], &self->_pixelRotationSession) || VTSessionSetProperty(self->_pixelRotationSession, *MEMORY[0x277CE2850], *MEMORY[0x277CE2A30]))
    {
      if (error)
      {
        v18 = MEMORY[0x277CCA9B8];
        v218 = *MEMORY[0x277CCA068];
        v219[0] = @"Failed to prepare pixel rotation session";
        v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v16, v219, &v218, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"ANSTErrorDomain", 3, v19);
      }

      goto LABEL_8;
    }

    if (VTPixelTransferSessionCreate(0, &self->_pixelTransferSession) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A78]) || VTSessionSetProperty(self->_pixelTransferSession, *MEMORY[0x277CE28A8], *MEMORY[0x277CBED28]))
    {
      if (error)
      {
        v24 = MEMORY[0x277CCA9B8];
        v216 = *MEMORY[0x277CCA068];
        v217 = @"Failed to prepare VTPixelTransferSession.";
        v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v217, &v216, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v24, v26, @"ANSTErrorDomain", 3, v25);
      }

      objc_msgSend__releaseResourceSafely(self, v22, v23);
      v3 = 1;
      goto LABEL_9;
    }

    v27 = objc_msgSend_defaultConfigurationForVersion_withError_(ANSTISPInferenceConfiguration, v22, 0x10000, error);
    v30 = v27;
    if (!v27)
    {
      objc_msgSend__releaseResourceSafely(self, v28, v29);
      v3 = 0;
LABEL_29:

      goto LABEL_9;
    }

    objc_msgSend_setObjectTrackingEnabled_(v27, v28, 1);
    objc_msgSend_setSegmentationEnabled_(v30, v31, 0);
    v33 = objc_msgSend_descriptorWithConfiguration_error_(ANSTISPInferenceDescriptor, v32, v30, error);
    v36 = v33;
    if (!v33)
    {
      objc_msgSend__releaseResourceSafely(self, v34, v35);
      v3 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v37 = objc_msgSend_inputImageDescriptor(v33, v34, v35);
    anstInputBufferDescriptor = self->_anstInputBufferDescriptor;
    self->_anstInputBufferDescriptor = v37;

    v206 = v36;
    v41 = objc_msgSend_inputImageDescriptor(v36, v39, v40);
    v44 = objc_msgSend_pixelFormatType(v41, v42, v43);
    v47 = objc_msgSend_width(self->_anstInputBufferDescriptor, v45, v46);
    v50 = objc_msgSend_height(self->_anstInputBufferDescriptor, v48, v49);
    if (objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v51, v44, v47, v50, &self->_anstInputBuffer_landscape))
    {

LABEL_24:
      if (error)
      {
        v69 = MEMORY[0x277CCA9B8];
        v214 = *MEMORY[0x277CCA068];
        v215 = @"Failed to allocate input buffer for ANST algorithm";
        v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v54, &v215, &v214, 1);
        *error = objc_msgSend_errorWithDomain_code_userInfo_(v69, v71, @"ANSTErrorDomain", 3, v70);
      }

      objc_msgSend__releaseResourceSafely(self, v54, v55);
      v3 = 0;
      goto LABEL_27;
    }

    v56 = objc_msgSend_inputImageDescriptor(v206, v52, v53);
    v59 = objc_msgSend_pixelFormatType(v56, v57, v58);
    v205 = v30;
    v62 = objc_msgSend_height(self->_anstInputBufferDescriptor, v60, v61);
    v65 = objc_msgSend_width(self->_anstInputBufferDescriptor, v63, v64);
    v66 = v62;
    v30 = v205;
    PixelBufferWithPixelFormat_width_height_handle = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v67, v59, v66, v65, &self->_anstInputBuffer_portrait);

    if (PixelBufferWithPixelFormat_width_height_handle)
    {
      goto LABEL_24;
    }

    if (objc_msgSend_version(self->_configuration, v54, v55) == 0x40000)
    {
      v72 = [ANSTActionHighlightModel alloc];
      v75 = objc_msgSend_version(self->_configuration, v73, v74);
      v77 = objc_msgSend_initForVersion_(v72, v76, v75);
      gruModel = self->_gruModel;
      self->_gruModel = v77;

      v203 = objc_msgSend_inputImageDescriptor(self->_gruModel, v79, v80);
      v83 = objc_msgSend_pixelFormatType(v203, v81, v82);
      v86 = objc_msgSend_inputImageDescriptor(self->_gruModel, v84, v85);
      v89 = objc_msgSend_width(v86, v87, v88);
      v92 = objc_msgSend_inputImageDescriptor(self->_gruModel, v90, v91);
      v95 = objc_msgSend_height(v92, v93, v94);
      LODWORD(v83) = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v96, v83, v89, v95, &self->_gruModelInputBuffer);

      if (v83)
      {
        if (error)
        {
          v99 = MEMORY[0x277CCA9B8];
          v212 = *MEMORY[0x277CCA068];
          v213 = @"Failed to allocate buffer for GRU action model";
          v100 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v97, &v213, &v212, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v99, v101, @"ANSTErrorDomain", 3, v100);
        }
      }

      else if (objc_msgSend_prepareWithError_(self->_gruModel, v97, error) && (objc_msgSend_bindInputFrameBuffer_error_(self->_gruModel, v97, self->_gruModelInputBuffer, error) & 1) != 0)
      {
        v109 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v97, v98);
        v112 = objc_msgSend_sizeInBytes(v109, v110, v111);
        v113 = malloc_type_malloc(v112, 0xAD08D776uLL);

        v116 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v114, v115);
        v119 = objc_msgSend_sizeInBytes(v116, v117, v118);
        bzero(v113, v119);

        v120 = [ANSTTensorData alloc];
        v123 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v121, v122);
        v126 = objc_msgSend_stateTensorDescriptor(self->_gruModel, v124, v125);
        v129 = objc_msgSend_sizeInBytes(v126, v127, v128);
        v131 = objc_msgSend_initWithDescriptor_dataPointer_length_deallocator_error_(v120, v130, v123, v113, v129, &unk_28431E208, error);
        gruModelStateTensorData = self->_gruModelStateTensorData;
        self->_gruModelStateTensorData = v131;

        v3 = 1;
        self->_prepared = 1;
LABEL_56:
        v30 = v205;
LABEL_27:
        v36 = v206;
        goto LABEL_28;
      }

      objc_msgSend__releaseResourceSafely(self, v97, v98);
      v3 = 0;
      goto LABEL_56;
    }

    v102 = [ANSTVideoFeatureExtractorConfiguration alloc];
    v204 = objc_msgSend_initWithVersion_(v102, v103, 0x10000);
    v106 = objc_msgSend_version(self->_configuration, v104, v105);
    v108 = v106;
    if (v106 != 0x10000)
    {
      if (v106 == 196608)
      {
        v108 = 196609;
      }

      else
      {
        if (v106 != 0x20000)
        {
          goto LABEL_54;
        }

        v108 = 131073;
      }
    }

    objc_msgSend_setFoundationModelVersion_(v204, v107, v108);
    v133 = [ANSTVideoFeatureExtractor alloc];
    v135 = objc_msgSend_initWithConfig_error_(v133, v134, v204, error);
    featureExtractor = self->_featureExtractor;
    self->_featureExtractor = v135;

    v137 = self->_featureExtractor;
    if (v137)
    {
      v138 = objc_msgSend_inputImageDescriptor(v137, v107, v108);
      v202 = objc_msgSend_pixelFormatType(v138, v139, v140);
      v143 = objc_msgSend_inputImageDescriptor(self->_featureExtractor, v141, v142);
      v146 = objc_msgSend_width(v143, v144, v145);
      v149 = objc_msgSend_inputImageDescriptor(self->_featureExtractor, v147, v148);
      v152 = objc_msgSend_height(v149, v150, v151);
      LODWORD(v146) = objc_msgSend_createPixelBufferWithPixelFormat_width_height_handle_(ANSTUtility, v153, v202, v146, v152, &self->_featureExtractorInputBuffer);

      if (v146)
      {
        if (error)
        {
          v154 = MEMORY[0x277CCA9B8];
          v210 = *MEMORY[0x277CCA068];
          v211 = @"Failed to allocate buffer for feature extraction";
          v155 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v107, &v211, &v210, 1);
          *error = objc_msgSend_errorWithDomain_code_userInfo_(v154, v156, @"ANSTErrorDomain", 3, v155);
        }

        goto LABEL_54;
      }

      if (objc_msgSend_bindVideoInput_error_(self->_featureExtractor, v107, self->_featureExtractorInputBuffer, error) && (objc_msgSend_commitInputBindingWithError_(self->_featureExtractor, v107, error) & 1) != 0)
      {
        v157 = objc_msgSend_supportedActionTypes(self, v107, v108);
        self->_actionCount = objc_msgSend_count(v157, v158, v159);

        v162 = objc_msgSend_outputFeatureDescriptor(self->_featureExtractor, v160, v161);
        v165 = objc_msgSend_lengths(v162, v163, v164);
        v167 = objc_msgSend_objectAtIndexedSubscript_(v165, v166, 1);
        self->_featureLength = objc_msgSend_unsignedIntValue(v167, v168, v169);

        self->_rawScores = malloc_type_malloc(4 * self->_actionCount, 0x100004052888210uLL);
        self->_probabilities = malloc_type_malloc(4 * self->_actionCount, 0x100004052888210uLL);
        featureLength = self->_featureLength;
        v209[0] = self->_actionCount;
        v209[1] = featureLength;
        v171 = [ANSTTensorDescriptor alloc];
        v175 = objc_msgSend_initWithName_dataType_numberOfDimensions_lengths_alignment_error_(v171, v172, @"decodingMatrix", 102, 2, v209, 1, error);
        if (v175)
        {
          v176 = objc_msgSend_version(self->_configuration, v173, v174);
          switch(v176)
          {
            case 65536:
              objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v173, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/action_decoding_matrix.bin");
              goto LABEL_59;
            case 196608:
              objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v173, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/decoding_matrix_gestureV1.bin");
              goto LABEL_59;
            case 131072:
              objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v173, @"/AppleInternal/Library/Application Support/com.apple.ANSTKit/vfm.mlmodelc/decoding_matrix_fitnessV1.bin");
              v178 = LABEL_59:;
              v177 = 1;
              v180 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x277CBEA90], v179, v178, 1, error);
              decodingMatrixData = self->_decodingMatrixData;
              self->_decodingMatrixData = v180;

              if (self->_decodingMatrixData)
              {
                v184 = [ANSTTensorData alloc];
                v187 = objc_msgSend_bytes(self->_decodingMatrixData, v185, v186);
                v190 = objc_msgSend_sizeInBytes(v175, v188, v189);
                v192 = objc_msgSend_initWithDescriptor_dataPointer_length_deallocator_error_(v184, v191, v175, v187, v190, 0, error);
                decodingMatrix = self->_decodingMatrix;
                self->_decodingMatrix = v192;

                self->_prepared = 1;
LABEL_66:

                goto LABEL_55;
              }

              objc_msgSend__releaseResourceSafely(self, v182, v183);

LABEL_65:
              v177 = 0;
              goto LABEL_66;
          }

          if (error)
          {
            v194 = MEMORY[0x277CCACA8];
            v195 = objc_msgSend_version(self->_configuration, v173, v174);
            v197 = objc_msgSend_stringWithFormat_(v194, v196, @"Unexpected version %lu", v195);
            v198 = MEMORY[0x277CCA9B8];
            v207 = *MEMORY[0x277CCA068];
            v208 = v197;
            v200 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v199, &v208, &v207, 1);
            *error = objc_msgSend_errorWithDomain_code_userInfo_(v198, v201, @"ANSTErrorDomain", 14, v200);
          }
        }

        objc_msgSend__releaseResourceSafely(self, v173, v174);
        goto LABEL_65;
      }
    }

LABEL_54:
    objc_msgSend__releaseResourceSafely(self, v107, v108);
    v177 = 0;
LABEL_55:

    v3 = v177;
    goto LABEL_56;
  }

  return 1;
}

- (void)_releaseResourceSafely
{
  pixelRotationSession = self->_pixelRotationSession;
  if (pixelRotationSession)
  {
    VTPixelRotationSessionInvalidate(self->_pixelRotationSession);
    CFRelease(pixelRotationSession);
  }

  self->_pixelRotationSession = 0;
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(self->_pixelTransferSession);
    CFRelease(pixelTransferSession);
  }

  self->_pixelTransferSession = 0;
  CVPixelBufferRelease(self->_anstInputBuffer_portrait);
  self->_anstInputBuffer_portrait = 0;
  CVPixelBufferRelease(self->_anstInputBuffer_landscape);
  self->_anstInputBuffer_landscape = 0;
  CVPixelBufferRelease(self->_gruModelInputBuffer);
  self->_gruModelInputBuffer = 0;
  CVPixelBufferRelease(self->_featureExtractorInputBuffer);
  self->_featureExtractorInputBuffer = 0;
  rawScores = self->_rawScores;
  if (rawScores)
  {
    free(rawScores);
  }

  self->_rawScores = 0;
  probabilities = self->_probabilities;
  if (probabilities)
  {
    free(probabilities);
  }

  self->_probabilities = 0;
}

- (void)dealloc
{
  objc_msgSend__releaseResourceSafely(self, a2, v2);
  v4.receiver = self;
  v4.super_class = ANSTActionDetector;
  [(ANSTActionDetector *)&v4 dealloc];
}

- (id)resultForFrameBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation error:(id *)error
{
  v9 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  v10 = os_signpost_id_make_with_pointer(v9, self);

  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ANSTActionDetector_resultForFrameBuffer", &unk_22E663F87, buf, 2u);
  }

  v12 = objc_msgSend__resultForFrameBuffer_orientation_signpostIDPointer_error_(self, v11, buffer, orientation, self, error);
  v13 = os_signpost_id_make_with_pointer(v9, self);

  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_22E5D5000, v9, OS_SIGNPOST_INTERVAL_END, v13, "ANSTActionDetector_resultForFrameBuffer", &unk_22E663F87, v15, 2u);
  }

  return v12;
}

- (id)_resultForFrameBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation signpostIDPointer:(const void *)pointer error:(id *)error
{
  errorCopy = error;
  v369[1] = *MEMORY[0x277D85DE8];
  if (!self->_prepared)
  {
    if (!error)
    {
      goto LABEL_71;
    }

    errorCopy3 = error;
    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v368 = *MEMORY[0x277CCA450];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v369, &v368, 1);
    v28 = objc_msgSend_initWithDomain_code_userInfo_(v24, v27, @"ANSTErrorDomain", 3, v26);
LABEL_14:
    errorCopy = 0;
    *errorCopy3 = v28;
    goto LABEL_70;
  }

  if (!buffer)
  {
    errorCopy3 = error;
    v29 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_22E658248(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    if (!errorCopy)
    {
      errorCopy = 0;
      goto LABEL_71;
    }

    v38 = MEMORY[0x277CCA9B8];
    v366 = *MEMORY[0x277CCA450];
    v367 = @"Nil input buffer.";
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v37, &v367, &v366, 1);
    v28 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v39, @"ANSTErrorDomain", 2, v26);
    goto LABEL_14;
  }

  CVPixelBufferLockBaseAddress(buffer, 1uLL);
  p_anstInputBuffer_landscape = &self->_anstInputBuffer_landscape;
  CVPixelBufferLockBaseAddress(self->_anstInputBuffer_landscape, 0);
  p_anstInputBuffer_portrait = &self->_anstInputBuffer_portrait;
  CVPixelBufferLockBaseAddress(self->_anstInputBuffer_portrait, 0);
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v334 = Width;
  if (Width != objc_msgSend_width(self->_anstInputBufferDescriptor, v12, v13) || Height != objc_msgSend_height(self->_anstInputBufferDescriptor, v14, v15) || (v18 = objc_msgSend_pixelFormatType(self->_anstInputBufferDescriptor, v16, v17), v20 = buffer, PixelFormatType != v18))
  {
    pixelTransferSession = self->_pixelTransferSession;
    if (Width >= Height)
    {
      v22 = &self->_anstInputBuffer_landscape;
      VTPixelTransferSessionTransferImage(pixelTransferSession, buffer, *p_anstInputBuffer_landscape);
    }

    else
    {
      VTPixelTransferSessionTransferImage(pixelTransferSession, buffer, *p_anstInputBuffer_portrait);
      v22 = &self->_anstInputBuffer_landscape;
      VTPixelRotationSessionRotateImage(self->_pixelRotationSession, *p_anstInputBuffer_portrait, *p_anstInputBuffer_landscape);
    }

    v20 = *v22;
  }

  v324 = errorCopy;
  v333 = Height;
  selfCopy = self;
  v327 = objc_msgSend_resultForPixelBuffer_orientation_error_(self->_anstModel, v19, v20, 1, errorCopy);
  CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(*p_anstInputBuffer_landscape, 0);
  CVPixelBufferUnlockBaseAddress(*p_anstInputBuffer_portrait, 0);
  v26 = v327;
  if (v327)
  {
    v326 = objc_msgSend_detectedObjectsForCategory_(v327, v40, @"FullBody");
    v41 = MEMORY[0x277CBEB38];
    v44 = objc_msgSend_count(v326, v42, v43);
    v332 = objc_msgSend_dictionaryWithCapacity_(v41, v45, v44);
    if (objc_msgSend_version(self->_configuration, v46, v47) == 196608)
    {
      v50 = MEMORY[0x277CBEB38];
      v51 = objc_msgSend_count(v326, v48, v49);
      v53 = objc_msgSend_dictionaryWithCapacity_(v50, v52, v51);
      v361 = 0u;
      v362 = 0u;
      v359 = 0u;
      v360 = 0u;
      v55 = objc_msgSend_detectedObjectsForCategory_(v327, v54, @"Body");
      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v359, v365, 16);
      if (v59)
      {
        v60 = *v360;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v360 != v60)
            {
              objc_enumerationMutation(v55);
            }

            v62 = *(*(&v359 + 1) + 8 * i);
            v63 = MEMORY[0x277CCABB0];
            v64 = objc_msgSend_groupID(v62, v57, v58);
            v66 = objc_msgSend_numberWithUnsignedInteger_(v63, v65, v64);
            objc_msgSend_setObject_forKeyedSubscript_(v53, v67, v62, v66);
          }

          v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v359, v365, 16);
        }

        while (v59);
      }

      v357 = 0u;
      v358 = 0u;
      v355 = 0u;
      v356 = 0u;
      obj = v326;
      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v68, &v355, v364, 16);
      if (v69)
      {
        v70 = *v356;
        do
        {
          for (j = 0; j != v69; ++j)
          {
            if (*v356 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v72 = *(*(&v355 + 1) + 8 * j);
            v73 = MEMORY[0x277CCABB0];
            v76 = objc_msgSend_groupID(v72, v74, v75);
            v78 = objc_msgSend_numberWithUnsignedInteger_(v73, v77, v76);
            v80 = objc_msgSend_objectForKeyedSubscript_(v53, v79, v78);

            if (v80)
            {
              objc_msgSend_boundingBox(v72, v81, v82);
              v84 = v83;
              objc_msgSend_boundingBox(v72, v85, v86);
              v90 = v89;
              if (v334 >= v333)
              {
                objc_msgSend_boundingBox(v72, v87, v88);
                v92 = v96;
                objc_msgSend_boundingBox(v80, v97, v98);
              }

              else
              {
                objc_msgSend_boundingBox(v80, v87, v88);
                v92 = v91;
                objc_msgSend_boundingBox(v72, v93, v94);
              }

              objc_msgSend__postProcessedBoundingBox_maxWidth_maxHeight_contentIsRotated90CCW_(selfCopy, v95, v334 < v333, v84, v90, v92);
              v100 = v99;
              v102 = v101;
              v104 = v103;
              v106 = v105;
              v107 = [ANSTObject alloc];
              v110 = objc_msgSend_objectID(v72, v108, v109);
              v113 = objc_msgSend_groupID(v72, v111, v112);
              v116 = objc_msgSend_confidence(v72, v114, v115);
              objc_msgSend_distance(v72, v117, v118);
              LODWORD(v120) = v119;
              v122 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_(v107, v121, v110, v113, @"FullBody", v116, v100, v102, v104, v106, v120);

              v72 = v122;
            }

            v123 = MEMORY[0x277CCABB0];
            v124 = objc_msgSend_objectID(v72, v81, v82);
            v126 = objc_msgSend_numberWithUnsignedInteger_(v123, v125, v124);
            objc_msgSend_setObject_forKeyedSubscript_(v332, v127, v72, v126);
          }

          v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v128, &v355, v364, 16);
        }

        while (v69);
      }
    }

    else
    {
      v353 = 0u;
      v354 = 0u;
      v351 = 0u;
      v352 = 0u;
      v53 = v326;
      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v129, &v351, v363, 16);
      if (v132)
      {
        v133 = *v352;
        do
        {
          for (k = 0; k != v132; ++k)
          {
            if (*v352 != v133)
            {
              objc_enumerationMutation(v53);
            }

            v135 = *(*(&v351 + 1) + 8 * k);
            objc_msgSend_boundingBox(v135, v130, v131);
            objc_msgSend__postProcessedBoundingBox_maxWidth_maxHeight_contentIsRotated90CCW_(selfCopy, v136, v334 < v333);
            v138 = v137;
            v140 = v139;
            v142 = v141;
            v144 = v143;
            v145 = [ANSTObject alloc];
            v148 = objc_msgSend_objectID(v135, v146, v147);
            v151 = objc_msgSend_groupID(v135, v149, v150);
            v154 = objc_msgSend_confidence(v135, v152, v153);
            objc_msgSend_distance(v135, v155, v156);
            LODWORD(v158) = v157;
            v160 = objc_msgSend_initWithObjectID_groupID_category_boundingBox_confidence_distance_(v145, v159, v148, v151, @"FullBody", v154, v138, v140, v142, v144, v158);
            v161 = MEMORY[0x277CCABB0];
            v164 = objc_msgSend_objectID(v135, v162, v163);
            v166 = objc_msgSend_numberWithUnsignedInteger_(v161, v165, v164);
            objc_msgSend_setObject_forKeyedSubscript_(v332, v167, v160, v166);
          }

          v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v130, &v351, v363, 16);
        }

        while (v132);
      }
    }

    v170 = objc_msgSend_actions(selfCopy->_currentDetection, v168, v169);
    v173 = objc_msgSend_firstObject(v170, v171, v172);

    if (v173)
    {
      v176 = objc_msgSend_objectID(v173, v174, v175);
      selfCopy->_trackingObjectID = v176;
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v177, v176);
    }

    else
    {
      objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v174, selfCopy->_trackingObjectID);
    }
    v178 = ;
    v180 = objc_msgSend_objectForKeyedSubscript_(v332, v179, v178);
    v181 = v180 == 0;

    if (v181)
    {
      if (objc_msgSend_count(v332, v182, v183))
      {
        *buf = 0;
        v346 = buf;
        v347 = 0x3032000000;
        v348 = sub_22E5E8E3C;
        v349 = sub_22E5E8E4C;
        v350 = 0;
        v344[0] = 0;
        v344[1] = v344;
        v344[2] = 0x2020000000;
        v344[3] = 0;
        v343[0] = MEMORY[0x277D85DD0];
        v343[1] = 3221225472;
        v343[2] = sub_22E5E8E54;
        v343[3] = &unk_27884FA30;
        v343[4] = v344;
        v343[5] = buf;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v332, v204, v343);
        selfCopy->_trackingObjectID = objc_msgSend_objectID(*(v346 + 5), v206, v207);
        objc_msgSend_boundingBox(*(v346 + 5), v208, v209);
        v190 = v210;
        v192 = v211;
        v194 = v212;
        v196 = v213;
        v199 = objc_msgSend_confidence(*(v346 + 5), v214, v215);
        objc_msgSend_distance(*(v346 + 5), v216, v217);
        v203 = v218;
        _Block_object_dispose(v344, 8);
        _Block_object_dispose(buf, 8);

        v219 = selfCopy;
      }

      else
      {
        v199 = 0;
        v190 = *MEMORY[0x277CBF398];
        v192 = *(MEMORY[0x277CBF398] + 8);
        v194 = *(MEMORY[0x277CBF398] + 16);
        v196 = *(MEMORY[0x277CBF398] + 24);
        v219 = selfCopy;
        selfCopy->_trackingObjectID = 0;
        v203 = 0;
      }

      objc_msgSend_resetInferenceState(v219->_featureExtractor, v204, v205);
      currentDetection = selfCopy->_currentDetection;
      selfCopy->_currentDetection = 0;

      v186 = v173;
      v173 = 0;
    }

    else
    {
      v184 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v182, selfCopy->_trackingObjectID);
      v186 = objc_msgSend_objectForKeyedSubscript_(v332, v185, v184);

      objc_msgSend_boundingBox(v186, v187, v188);
      v190 = v189;
      v192 = v191;
      v194 = v193;
      v196 = v195;
      v199 = objc_msgSend_confidence(v186, v197, v198);
      objc_msgSend_distance(v186, v200, v201);
      v203 = v202;
    }

    v371.origin.x = v190;
    v371.origin.y = v192;
    v371.size.width = v194;
    v371.size.height = v196;
    if (!CGRectIsNull(v371))
    {
      if (v334 >= v333)
      {
        v235 = objc_msgSend_width(selfCopy->_anstInputBufferDescriptor, v221, v222);
        v229 = objc_msgSend_height(selfCopy->_anstInputBufferDescriptor, v236, v237);
        v231 = v334 / v235;
        v232 = v196;
        v233 = v194;
        v234 = v192;
        v230 = v190;
      }

      else
      {
        v223 = objc_msgSend_height(selfCopy->_anstInputBufferDescriptor, v221, v222);
        v226 = objc_msgSend_height(selfCopy->_anstInputBufferDescriptor, v224, v225);
        v229 = objc_msgSend_width(selfCopy->_anstInputBufferDescriptor, v227, v228);
        v230 = v223 - (v196 + v192);
        v231 = v334 / v226;
        v232 = v194;
        v233 = v196;
        v234 = v190;
      }

      v238 = v333 / v229;
      v239 = v230 * v231;
      v240 = v234 * v238;
      v241 = selfCopy;
      frameCount = selfCopy->_frameCount;
      v243 = v232 * v238;
      v244 = frameCount % selfCopy->_actionRefreshFrameInterval;
      if (frameCount == -2)
      {
        v245 = 0;
      }

      else
      {
        v245 = frameCount + 1;
      }

      selfCopy->_frameCount = v245;
      v246 = p_anstInputBuffer_landscape;
      if (v244)
      {
        if (v173)
        {
          v247 = v233 * v231;
          v248 = [ANSTActionDistribution alloc];
          trackingObjectID = selfCopy->_trackingObjectID;
          v252 = objc_msgSend_distribution(v173, v250, v251);
          LODWORD(v253) = v203;
          v255 = objc_msgSend_initWithObjectID_boundingBox_confidence_distance_distribution_(v248, v254, trackingObjectID, v199, v252, v239, v240, v247, v243, v253);

          v257 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v256, v255);
          v258 = [ANSTActionDetectorResult alloc];
          v260 = objc_msgSend_initWithActions_(v258, v259, v257);
          v261 = selfCopy->_currentDetection;
          selfCopy->_currentDetection = v260;

          v241 = selfCopy;
        }

        errorCopy = v241->_currentDetection;
        goto LABEL_69;
      }

      v330 = v233 * v231;
      if (v334 < v333)
      {
        v190 = v239 / v231;
        v192 = v240 / v238;
        v194 = v233 * v231 / v231;
        v246 = p_anstInputBuffer_portrait;
        v196 = v243 / v238;
      }

      v263 = *v246;
      v372.origin.x = v190;
      v372.origin.y = v192;
      v372.size.width = v194;
      v372.size.height = v196;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v372);
      v265 = *MEMORY[0x277CE28B8];
      v266 = VTSessionSetProperty(selfCopy->_pixelTransferSession, *MEMORY[0x277CE28B8], DictionaryRepresentation) == 0;
      CFRelease(DictionaryRepresentation);
      if (v266)
      {
        v269 = objc_msgSend_version(selfCopy->_configuration, v267, v268);
        v270 = &OBJC_IVAR___ANSTActionDetector__featureExtractorInputBuffer;
        if (v269 == 0x40000)
        {
          v270 = &OBJC_IVAR___ANSTActionDetector__gruModelInputBuffer;
        }

        v271 = *(&selfCopy->super.super.isa + *v270);
        CVPixelBufferLockBaseAddress(v263, 1uLL);
        CVPixelBufferLockBaseAddress(v271, 0);
        if (!VTPixelTransferSessionTransferImage(selfCopy->_pixelTransferSession, v263, v271))
        {
          CVPixelBufferUnlockBaseAddress(v263, 1uLL);
          CVPixelBufferUnlockBaseAddress(v271, 0);
          if (!VTSessionSetProperty(selfCopy->_pixelTransferSession, v265, 0))
          {
            if (objc_msgSend_version(selfCopy->_configuration, v272, v273) == 0x40000)
            {
              v275 = _ANSTLoggingGetOSLogForCategoryANSTKit(0x40000);
              v276 = os_signpost_id_make_with_pointer(v275, pointer);

              if (v276 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v275))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_22E5D5000, v275, OS_SIGNPOST_INTERVAL_BEGIN, v276, "ANSTActionDetector_HomeBusy", &unk_22E663F87, buf, 2u);
              }

              v277 = objc_opt_new();
              if (objc_msgSend_executeAndUpdateStateTensorData_outputDictionary_outError_(selfCopy->_gruModel, v278, selfCopy->_gruModelStateTensorData, v277, v324))
              {
                v279 = [ANSTActionDistribution alloc];
                LODWORD(v280) = v203;
                v282 = objc_msgSend_initWithObjectID_boundingBox_confidence_distance_distribution_(v279, v281, selfCopy->_trackingObjectID, v199, v277, v239, v240, v330, v243, v280);
                v283 = [ANSTActionDetectorResult alloc];
                v285 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v284, v282);
                v287 = objc_msgSend_initWithActions_(v283, v286, v285);
                v288 = selfCopy->_currentDetection;
                selfCopy->_currentDetection = v287;

                v289 = os_signpost_id_make_with_pointer(v275, pointer);
                if (v289 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v275))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22E5D5000, v275, OS_SIGNPOST_INTERVAL_END, v289, "ANSTActionDetector_HomeBusy", &unk_22E663F87, buf, 2u);
                }

                errorCopy = selfCopy->_currentDetection;
                v275 = v282;
              }

              else
              {
                v317 = os_signpost_id_make_with_pointer(v275, pointer);

                if (v317 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v275))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_22E5D5000, v275, OS_SIGNPOST_INTERVAL_END, v317, "ANSTActionDetector_HomeBusy", &unk_22E663F87, buf, 2u);
                }

                errorCopy = 0;
              }
            }

            else
            {
              objc_msgSend_executeInferenceWithError_(selfCopy->_featureExtractor, v274, v324);
              featureExtractor = selfCopy->_featureExtractor;
              v342 = 0;
              v292 = objc_msgSend_getCurrentVideoFeatureWithOutError_(featureExtractor, v291, &v342);
              v293 = v342;
              v335 = v293;
              if (v292)
              {
                v296 = objc_msgSend_supportedActionTypes(selfCopy, v294, v295);
                v297 = MEMORY[0x277CBEB38];
                v300 = objc_msgSend_count(v296, v298, v299);
                v302 = objc_msgSend_dictionaryWithCapacity_(v297, v301, v300);
                decodingMatrix = selfCopy->_decodingMatrix;
                v336[0] = MEMORY[0x277D85DD0];
                v336[1] = 3221225472;
                v336[2] = sub_22E5E8EE4;
                v336[3] = &unk_27884FAA8;
                v337 = v292;
                v338 = selfCopy;
                v339 = v296;
                v340 = v302;
                v341 = v324;
                v304 = v302;
                v305 = v296;
                objc_msgSend_performDataAccessWithOptions_usingBlock_error_(decodingMatrix, v306, 0, v336, v324);
                v307 = [ANSTActionDistribution alloc];
                LODWORD(v308) = v203;
                v310 = objc_msgSend_initWithObjectID_boundingBox_confidence_distance_distribution_(v307, v309, selfCopy->_trackingObjectID, v199, v304, v239, v240, v330, v243, v308);
                v311 = [ANSTActionDetectorResult alloc];
                v313 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v312, v310);
                v315 = objc_msgSend_initWithActions_(v311, v314, v313);
                v316 = selfCopy->_currentDetection;
                selfCopy->_currentDetection = v315;

                errorCopy = selfCopy->_currentDetection;
              }

              else if (v293)
              {
                if (v324)
                {
                  v318 = v293;
                  errorCopy = 0;
                  *v324 = v335;
                }

                else
                {
                  errorCopy = 0;
                }
              }

              else
              {
                v319 = [ANSTActionDetectorResult alloc];
                v321 = objc_msgSend_initWithActions_(v319, v320, MEMORY[0x277CBEBF8]);
                v322 = selfCopy->_currentDetection;
                selfCopy->_currentDetection = v321;

                errorCopy = selfCopy->_currentDetection;
              }
            }

            goto LABEL_69;
          }
        }
      }
    }

    errorCopy = 0;
LABEL_69:

    v26 = v327;
    goto LABEL_70;
  }

  errorCopy = 0;
LABEL_70:

LABEL_71:

  return errorCopy;
}

- (CGRect)_postProcessedBoundingBox:(CGRect)box maxWidth:(double)width maxHeight:(double)height contentIsRotated90CCW:(BOOL)w
{
  v6 = box.origin.x + box.size.width * 0.5;
  v7 = box.origin.y + box.size.height * 0.5;
  if (box.size.width <= box.size.height)
  {
    box.size.width = box.size.height;
  }

  v8 = box.size.width * 1.1 * 0.5;
  v9 = box.size.width * 0.5;
  v10 = -(v9 - v8 * 2.0);
  if (w)
  {
    v11 = -(v9 - v8 * 2.0);
  }

  else
  {
    v11 = v8;
  }

  if (w)
  {
    v10 = v8;
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (w)
  {
    v9 = v8;
  }

  v13 = (v6 - v11) & ~((v6 - v11) >> 31);
  v14 = (v7 - v10) & ~((v7 - v10) >> 31);
  v15 = (v6 + v12);
  if (v15 >= width)
  {
    widthCopy = width;
  }

  else
  {
    widthCopy = v15;
  }

  v17 = (v7 + v9);
  if (v17 >= height)
  {
    heightCopy = height;
  }

  else
  {
    heightCopy = v17;
  }

  v19 = v14;
  v20 = v13;
  v21 = widthCopy - v13;
  v22 = heightCopy - v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v19;
  result.origin.x = v20;
  return result;
}

- (void)reset
{
  currentDetection = self->_currentDetection;
  self->_currentDetection = 0;

  featureExtractor = self->_featureExtractor;

  objc_msgSend_resetInferenceState(featureExtractor, v4, v5);
}

+ (id)supportedActionTypesOfDetectorVersion:(unint64_t)version
{
  v34 = *MEMORY[0x277D85DE8];
  switch(version)
  {
    case 0x40000uLL:
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v9, 5, @"NoAction", @"TextOnPhone", @"ReadBook", @"TalkOnPhone", @"UseLaptop", v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      goto LABEL_8;
    case 0x30000uLL:
      v10 = @"HeartOneHand";
      v11 = @"HeartTwoHands";
      v12 = @"ThumbsDown";
      v13 = @"ThumbsUp";
      v14 = @"Victory";
      v15 = @"Clap";
      v16 = @"Rock";
      v17 = @"Shaka";
      v18 = @"Shrug";
      v19 = @"Thanks";
      v20 = @"NoGesture";
      v21 = @"Unknown";
      v4 = MEMORY[0x277CBEA60];
      v5 = &v10;
      goto LABEL_6;
    case 0x20000uLL:
      v22 = @"Squat";
      v23 = @"HighKnee";
      v24 = @"JumpingJack";
      v25 = @"Lunge";
      v26 = @"PushUp";
      v27 = @"SitUp";
      v28 = @"Standing";
      v29 = @"Walking";
      v30 = @"Sitting";
      v31 = @"Jogging";
      v32 = @"Running";
      v33 = @"Jumping";
      v4 = MEMORY[0x277CBEA60];
      v5 = &v22;
LABEL_6:
      objc_msgSend_arrayWithObjects_count_(v4, a2, v5, 12, v9[0], v9[1], v9[2], v9[3], v9[4], v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      v6 = LABEL_8:;
      goto LABEL_12;
  }

  v7 = _ANSTLoggingGetOSLogForCategoryANSTKit(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_22E6583B0(version, v7);
  }

  v6 = MEMORY[0x277CBEBF8];
LABEL_12:

  return v6;
}

+ (float)normalizationThresholdForActionType:(id)type detectorVersion:(unint64_t)version
{
  isEqualToString = type;
  v7 = isEqualToString;
  if (version != 0x40000)
  {
LABEL_13:
    v13 = _ANSTLoggingGetOSLogForCategoryANSTKit(isEqualToString);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_22E65843C(v7, version, v13);
    }

    v8 = 0.0;
    goto LABEL_16;
  }

  v8 = 0.5;
  if (@"NoAction" != isEqualToString && (objc_msgSend_isEqualToString_(isEqualToString, v6, @"NoAction") & 1) == 0)
  {
    if (@"TextOnPhone" == v7 || (objc_msgSend_isEqualToString_(v7, v9, @"TextOnPhone") & 1) != 0 || @"ReadBook" == v7 || (objc_msgSend_isEqualToString_(v7, v10, @"ReadBook") & 1) != 0)
    {
      goto LABEL_8;
    }

    v8 = 0.45;
    if (@"TalkOnPhone" != v7 && (objc_msgSend_isEqualToString_(v7, v11, @"TalkOnPhone") & 1) == 0)
    {
      if (@"UseLaptop" == v7)
      {
LABEL_8:
        v8 = 0.3;
        goto LABEL_16;
      }

      isEqualToString = objc_msgSend_isEqualToString_(v7, v12, @"UseLaptop");
      v8 = 0.3;
      if (isEqualToString)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }
  }

LABEL_16:

  return v8;
}

+ (id)supportedFrameRatesOfDetectorVersion:(unint64_t)version
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, 1);
  v7[0] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 1);

  return v5;
}

@end