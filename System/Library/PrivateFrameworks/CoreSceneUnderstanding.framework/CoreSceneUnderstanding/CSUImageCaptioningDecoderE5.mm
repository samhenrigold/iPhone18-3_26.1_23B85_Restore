@interface CSUImageCaptioningDecoderE5
- (BOOL)loadBridge:(id *)bridge;
- (BOOL)loadDecoder:(id *)decoder;
- (BOOL)loadPostProcUtilsWithBeamWidth:(int)width error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (CSUImageCaptioningDecoderE5)initWithConfiguration:(id)configuration;
- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error;
- (id)getBridgeLayerOutput:(id)output error:(id *)error;
- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures:(id *)features;
- (id)postProcessResults:(id)results error:(id *)error;
- (vector<float,)nextTokensForInputs:(CSUImageCaptioningDecoderE5 *)self AndforMaskPosition:(SEL)position;
@end

@implementation CSUImageCaptioningDecoderE5

- (CSUImageCaptioningDecoderE5)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = CSUImageCaptioningDecoderE5;
  v10 = [(CSUImageCaptioningDecoderE5 *)&v13 init];
  if (v10 && objc_msgSend_runtimeEngine(configurationCopy, v6, v7, v8, v9) == 2)
  {
    objc_storeStrong(&v10->_configuration, configuration);
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)loadBridge:(id *)bridge
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, bridge, v3, v4);

  if (!v7 || self->_bridgeE5Net)
  {
    return 1;
  }

  IsPrecompiled = objc_msgSend_bridgeIsPrecompiled(self->_configuration, v8, v9, v10, v11);
  v17 = objc_msgSend_bridgeNetworkPath(self->_configuration, v13, v14, v15, v16);
  v21 = objc_msgSend_stringByAppendingPathComponent_(v17, v18, @"model.specialization.bundle", v19, v20);

  v22 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v26 = objc_msgSend_fileExistsAtPath_(v22, v23, v21, v24, v25);
  if ((v26 & 1) == 0)
  {
    v31 = sub_1AC090E50(v26);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v36 = objc_msgSend_bridgeNetworkPath(self->_configuration, v32, v33, v34, v35);
      v50 = 138412290;
      v51 = v36;
      _os_log_impl(&dword_1AC05D000, v31, OS_LOG_TYPE_INFO, "Could not fing the pre-compiled bundle for %@.", &v50, 0xCu);
    }

    IsPrecompiled = 0;
  }

  v37 = objc_msgSend_espressoExecutionEngine(self->_configuration, v27, v28, v29, v30) ? 3 : 0;
  v38 = [CSUCoreMLInference alloc];
  v43 = objc_msgSend_bridgeNetworkPath(self->_configuration, v39, v40, v41, v42);
  v45 = objc_msgSend_initWithCompiledModelFromUri_useComputeUnit_usePrecompiledE5Bundle_error_(v38, v44, v43, v37, IsPrecompiled, bridge);
  bridgeE5Net = self->_bridgeE5Net;
  p_bridgeE5Net = &self->_bridgeE5Net;
  *p_bridgeE5Net = v45;

  v48 = *p_bridgeE5Net == 0;
  return !v48;
}

- (BOOL)loadPostProcUtilsWithBeamWidth:(int)width error:(id *)error
{
  v5 = *&width;
  v7 = [CSUCaptioningProcUtils alloc];
  v9 = objc_msgSend_initWithDecoderConfiguration_beamWidth_beamScorerType_error_(v7, v8, self->_configuration, v5, 0, error);
  procUtils = self->_procUtils;
  self->_procUtils = v9;

  return self->_procUtils != 0;
}

- (BOOL)loadDecoder:(id *)decoder
{
  v76 = *MEMORY[0x1E69E9840];
  if (self->_decoderE5Net)
  {
    return 1;
  }

  if ((objc_msgSend_loadPostProcUtilsWithBeamWidth_error_(self, a2, 3, decoder, v3) & 1) == 0)
  {
    return 0;
  }

  IsPrecompiled = objc_msgSend_decoderIsPrecompiled(self->_configuration, v7, v8, v9, v10);
  v16 = objc_msgSend_decoderNetworkPath(self->_configuration, v12, v13, v14, v15);
  v72 = objc_msgSend_stringByAppendingPathComponent_(v16, v17, @"model.specialization.bundle", v18, v19);

  v71 = objc_alloc_init(MEMORY[0x1E696AC08]);
  v23 = objc_msgSend_fileExistsAtPath_(v71, v20, v72, v21, v22);
  if ((v23 & 1) == 0)
  {
    v28 = sub_1AC090E50(v23);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v33 = objc_msgSend_decoderNetworkPath(self->_configuration, v29, v30, v31, v32);
      *buf = 138412290;
      v75 = v33;
      _os_log_impl(&dword_1AC05D000, v28, OS_LOG_TYPE_INFO, "Could not fing the pre-compiled bundle for %@.", buf, 0xCu);
    }

    IsPrecompiled = 0;
  }

  if (objc_msgSend_espressoExecutionEngine(self->_configuration, v24, v25, v26, v27))
  {
    v34 = 3;
  }

  else
  {
    v34 = 0;
  }

  v35 = [CSUCoreMLInference alloc];
  v40 = objc_msgSend_decoderNetworkPath(self->_configuration, v36, v37, v38, v39);
  v42 = objc_msgSend_initWithCompiledModelFromUri_useComputeUnit_usePrecompiledE5Bundle_error_(v35, v41, v40, v34, IsPrecompiled, decoder);
  decoderE5Net = self->_decoderE5Net;
  self->_decoderE5Net = v42;

  v44 = self->_decoderE5Net;
  v70 = v44 != 0;
  if (v44)
  {
    v45 = objc_alloc(MEMORY[0x1E695FED0]);
    v50 = objc_msgSend_decoderInputSeqShape(self->_configuration, v46, v47, v48, v49);
    v52 = objc_msgSend_initWithShape_dataType_error_(v45, v51, v50, 65568, decoder);
    inputTokensE5 = self->_inputTokensE5;
    self->_inputTokensE5 = v52;

    v61 = objc_msgSend_maxSeqLen(self->_configuration, v54, v55, v56, v57);
    if (v61)
    {
      for (i = 0; i != v61; ++i)
      {
        v63 = self->_inputTokensE5;
        v73[0] = &unk_1F20DED88;
        v64 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x1E696AD98], v58, i, v59, v60);
        v73[1] = v64;
        v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v65, v73, 2, v66);
        objc_msgSend_setObject_forKeyedSubscript_(v63, v68, &unk_1F20DF0D0, v67, v69);
      }
    }
  }

  return v70;
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_decoderE5Net)
  {
    Decoder = objc_msgSend_loadDecoder_(self, a2, resources, v3, v4);
    v18 = objc_msgSend_bridgeNetworkPath(self->_configuration, v14, v15, v16, v17);

    if (v18)
    {
      goto LABEL_3;
    }

    return Decoder;
  }

  Decoder = 1;
  v8 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, resources, v3, v4);

  if (!v8)
  {
    return Decoder;
  }

LABEL_3:
  bridgeE5Net = self->_bridgeE5Net;
  result = (bridgeE5Net != 0) & Decoder;
  if (!bridgeE5Net && ((Decoder ^ 1) & 1) == 0)
  {

    return objc_msgSend_loadBridge_(self, v9, resources, v10, v11);
  }

  return result;
}

- (id)getBridgeLayerOutput:(id)output error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  if ((objc_msgSend_loadBridge_(self, v7, error, v8, v9) & 1) == 0)
  {
    v34 = 0;
    goto LABEL_12;
  }

  bridgeE5Net = self->_bridgeE5Net;
  v15 = objc_msgSend_inputEncodedFeaturesTensorNameOfBridge(self->_configuration, v10, v11, v12, v13);
  v36 = v15;
  v37[0] = outputCopy;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v37, &v36, 1);
  LOBYTE(bridgeE5Net) = objc_msgSend_setInputFeatures_error_(bridgeE5Net, v18, v17, error, v19);

  if ((bridgeE5Net & 1) == 0)
  {
    v30 = sub_1AC090E50(v20);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F9C8();
    }

    goto LABEL_10;
  }

  v24 = objc_msgSend_predict_(self->_bridgeE5Net, v21, error, v22, v23);
  if ((v24 & 1) == 0)
  {
    v30 = sub_1AC090E50(v24);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11F9FC();
    }

LABEL_10:
    v34 = 0;
    goto LABEL_11;
  }

  v29 = self->_bridgeE5Net;
  v30 = objc_msgSend_outputTensorNameOfBridge(self->_configuration, v25, v26, v27, v28);
  v34 = objc_msgSend_getOutputFor_(v29, v31, v30, v32, v33);
LABEL_11:

LABEL_12:

  return v34;
}

- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error
{
  featuresCopy = features;
  if ((objc_msgSend_loadResources_(self, v11, error, v12, v13) & 1) == 0)
  {
    goto LABEL_14;
  }

  configuration = self->_configuration;
  if (!self->_bridgeE5Net || only)
  {
    v41 = objc_msgSend_decoderEmbeddingShape(configuration, v14, v15, v16, v17);
    v44 = objc_msgSend_reshapeMLMultiArray_toShape_(CSUMLMultiArrayUtilities, v42, featuresCopy, v41, v43);
    encodedFeaturesBufferE5 = self->_encodedFeaturesBufferE5;
    self->_encodedFeaturesBufferE5 = v44;

    if (self->_encodedFeaturesBufferE5)
    {
      goto LABEL_8;
    }

    if (error)
    {
      objc_msgSend_errorWithCode_message_(CSUError, v38, 12, @"Incorrect shape to run Captioner", v40);
      *error = v46 = 0;
LABEL_15:
      v22 = featuresCopy;
      goto LABEL_16;
    }

LABEL_14:
    v46 = 0;
    goto LABEL_15;
  }

  v19 = objc_msgSend_bridgeInputShape(configuration, v14, v15, v16, v17);
  v22 = objc_msgSend_reshapeMLMultiArray_toShape_(CSUMLMultiArrayUtilities, v20, featuresCopy, v19, v21);

  if (v22)
  {
    v25 = objc_msgSend_getBridgeLayerOutput_error_(self, v23, v22, error, v24);
    v26 = self->_encodedFeaturesBufferE5;
    self->_encodedFeaturesBufferE5 = v25;

    v32 = self->_encodedFeaturesBufferE5;
    if (v32)
    {
      v33 = objc_msgSend_decoderEmbeddingShape(self->_configuration, v28, v29, v30, v31);
      v36 = objc_msgSend_reshapeMLMultiArray_toShape_(CSUMLMultiArrayUtilities, v34, v32, v33, v35);
      v37 = self->_encodedFeaturesBufferE5;
      self->_encodedFeaturesBufferE5 = v36;

      featuresCopy = v22;
LABEL_8:
      if (method)
      {
        objc_msgSend_getCaptionsAfterBeamSearchDecodingOnEncodedFeatures_(self, v38, error, v39, v40);
      }

      else
      {
        objc_msgSend_getCaptionsAfterGreedyDecodingOnEncodedFeatures_(self, v38, error, v39, v40);
      }
      v46 = ;
      goto LABEL_15;
    }

    v48 = sub_1AC090E50(v27);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11FA30();
    }

    v46 = 0;
  }

  else if (error)
  {
    objc_msgSend_errorWithCode_message_(CSUError, v23, 12, @"Incorrect shape to run bridge model of Captioner", v24);
    v22 = 0;
    *error = v46 = 0;
  }

  else
  {
    v22 = 0;
    v46 = 0;
  }

LABEL_16:

  return v46;
}

- (vector<float,)nextTokensForInputs:(CSUImageCaptioningDecoderE5 *)self AndforMaskPosition:(SEL)position
{
  v108[2] = *MEMORY[0x1E69E9840];
  v10 = objc_msgSend_count(self->_inputTokensE5, position, a4, *&a5, v5);
  if (v10)
  {
    if (!(v10 >> 62))
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  v13 = *a4;
  v86 = *(a4 + 1);
  if (v86 != *a4)
  {
    memmove(0, v13, v86 - *a4);
  }

  inputTokensE5 = self->_inputTokensE5;
  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3321888768;
  v103[2] = sub_1AC094794;
  v103[3] = &unk_1F20D0D00;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  MutableBytesWithHandler = objc_msgSend_getMutableBytesWithHandler_(inputTokensE5, v13, v103, v11, v12);
  if (!self->_encodedFeaturesBufferE5)
  {
    v20 = sub_1AC090E50(MutableBytesWithHandler);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11FA64();
    }
  }

  decoderE5Net = self->_decoderE5Net;
  v22 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v16, v17, v18, v19);
  v107[0] = v22;
  v108[0] = self->_encodedFeaturesBufferE5;
  v27 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v23, v24, v25, v26);
  v107[1] = v27;
  v108[1] = self->_inputTokensE5;
  v29 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v28, v108, v107, 2);
  v102 = 0;
  LOBYTE(decoderE5Net) = objc_msgSend_setInputFeatures_error_(decoderE5Net, v30, v29, &v102, v31);
  v32 = v102;

  if ((decoderE5Net & 1) == 0)
  {
    v37 = sub_1AC090E50(v33);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11FA98();
    }
  }

  v38 = self->_decoderE5Net;
  v101 = v32;
  v39 = objc_msgSend_predict_(v38, v34, &v101, v35, v36);
  v40 = v101;

  if (v39)
  {
    v46 = self->_decoderE5Net;
    v47 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v42, v43, v44, v45);
    v51 = objc_msgSend_getOutputFor_(v46, v48, v47, v49, v50);

    v56 = objc_msgSend_shape(v51, v52, v53, v54, v55);
    v61 = objc_msgSend_count(v56, v57, v58, v59, v60);

    v66 = objc_msgSend_shape(v51, v62, v63, v64, v65);
    v70 = objc_msgSend_objectAtIndex_(v66, v67, v61 - 1, v68, v69);
    v75 = objc_msgSend_unsignedIntegerValue(v70, v71, v72, v73, v74);

    v92 = 0;
    v93 = &v92;
    v94 = 0x4812000000;
    v95 = sub_1AC094908;
    v96 = sub_1AC09492C;
    v97 = &unk_1AC1480A7;
    v99 = 0;
    v100 = 0;
    __p = 0;
    if (v75)
    {
      if (!(v75 >> 62))
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = sub_1AC094944;
    v87[3] = &unk_1E7968128;
    v76 = v51;
    v89 = &v92;
    v90 = 0;
    v91 = a5;
    v88 = v76;
    objc_msgSend_getBytesWithHandler_(v76, v77, v87, v78, v79);
    v80 = v93;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    retstr->__begin_ = 0;
    v82 = v80[6];
    v81 = v80[7];
    if (v81 != v82)
    {
      if (((v81 - v82) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AC060AAC();
    }

    _Block_object_dispose(&v92, 8);
    if (__p)
    {
      v99 = __p;
      operator delete(__p);
    }

    v83 = v104;
    if (v104)
    {
LABEL_23:
      v105 = v83;
      operator delete(v83);
    }
  }

  else
  {
    v85 = sub_1AC090E50(v41);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      sub_1AC11FACC();
    }

    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    v83 = v104;
    if (v104)
    {
      goto LABEL_23;
    }
  }

  return result;
}

- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures:(id *)features
{
  v125[2] = *MEMORY[0x1E69E9840];
  v110 = objc_msgSend_maxSeqLen(self->_configuration, a2, features, v3, v4);
  if (!v110)
  {
    v111 = 0;
LABEL_14:
    v78 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9, v10);
    v82 = objc_msgSend_componentsJoinedByString_(v78, v79, @" ", v80, v81);
    v83 = [CSUCaptionResult alloc];
    v84 = 0.0 / 0;
    *&v84 = v84;
    v88 = objc_msgSend_initWithCaption_score_(v83, v85, v82, v86, v87, v84);
    v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_msgSend_addObject_(v89, v90, v88, v91, v92);
    v96 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v93, v89, v94, v95);
    v100 = objc_msgSend_createCaptionResultsWithResults_(CSUCaptionResults, v97, v96, v98, v99);

    objc_msgSend_setDecoderFeaturesMLMultiArray_(v100, v101, v111, v102, v103);
    goto LABEL_19;
  }

  v111 = 0;
  if (self->_encodedFeaturesBufferE5)
  {
    decoderE5Net = self->_decoderE5Net;
    v12 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v7, v8, v9, v10, v113);
    v124[0] = v12;
    v125[0] = self->_encodedFeaturesBufferE5;
    v17 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v13, v14, v15, v16);
    v124[1] = v17;
    v125[1] = self->_inputTokensE5;
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, v125, v124, 2);
    v22 = objc_msgSend_setInputFeatures_error_(decoderE5Net, v20, v19, features, v21);

    if (v22)
    {
      if (objc_msgSend_predict_(self->_decoderE5Net, v23, features, v24, v25))
      {
        v30 = self->_decoderE5Net;
        v31 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v26, v27, v28, v29);
        v35 = objc_msgSend_getOutputFor_(v30, v32, v31, v33, v34);

        v40 = objc_msgSend_configuration(self, v36, v37, v38, v39);
        v45 = objc_msgSend_saveDecoderFeatures(v40, v41, v42, v43, v44);

        if (v45)
        {
          v111 = v35;
        }

        else
        {
          v111 = 0;
        }

        v50 = objc_msgSend_shape(v35, v46, v47, v48, v49);
        v55 = objc_msgSend_count(v50, v51, v52, v53, v54);

        v60 = objc_msgSend_shape(v35, v56, v57, v58, v59);
        v64 = objc_msgSend_objectAtIndex_(v60, v61, v55 - 1, v62, v63);
        v69 = objc_msgSend_unsignedLongValue(v64, v65, v66, v67, v68);

        v123[0] = 0;
        v123[1] = v123;
        v123[2] = 0x2020000000;
        v123[3] = 0;
        v119 = 0;
        v120 = &v119;
        v121 = 0x2020000000;
        v122 = v69 + 1;
        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = sub_1AC0964C0;
        v114[3] = &unk_1E7968150;
        v70 = v35;
        v115 = v70;
        v116 = v123;
        v117 = &v119;
        v118 = 0;
        objc_msgSend_getBytesWithHandler_(v70, v71, v114, v72, v73);
        if (v120[3])
        {
          if (v110 > 1)
          {
            inputTokensE5 = self->_inputTokensE5;
            v112[0] = MEMORY[0x1E69E9820];
            v112[1] = 3221225472;
            v113[0] = sub_1AC0965D0;
            v113[1] = &unk_1E7968178;
            v113[2] = &v119;
            v113[3] = 0;
            objc_msgSend_getMutableBytesWithHandler_(inputTokensE5, v74, v112, v75, v76);
          }

          operator new();
        }

        _Block_object_dispose(&v119, 8);
        _Block_object_dispose(v123, 8);

        goto LABEL_14;
      }

      objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v26, @"Decoder model failed to generate output", v28, v29);
    }

    else
    {
      objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v23, @"Decoder model failed to set input features", v24, v25);
    }
    v104 = ;
    v105 = v104;
    *features = v104;
    objc_msgSend_logInternalError_(CSUError, v106, v104, v107, v108);
  }

  v100 = 0;
LABEL_19:

  return v100;
}

- (id)postProcessResults:(id)results error:(id *)error
{
  resultsCopy = results;
  v11 = objc_msgSend_postProcessingHandler(self->_procUtils, v7, v8, v9, v10);

  if (v11)
  {
    v17 = objc_msgSend_postProcessingHandler(self->_procUtils, v13, v14, v15, v16);
    v22 = objc_msgSend_genderOptionForBeamSearch(self->_procUtils, v18, v19, v20, v21);
    v24 = objc_msgSend_postProcessResults_genderOption_error_(v17, v23, resultsCopy, v22, error);
  }

  else
  {
    v25 = sub_1AC090E50(v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1AC11FBB8();
    }

    v24 = resultsCopy;
  }

  return v24;
}

@end