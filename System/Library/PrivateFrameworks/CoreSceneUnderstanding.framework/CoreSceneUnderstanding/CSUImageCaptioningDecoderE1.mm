@interface CSUImageCaptioningDecoderE1
- (BOOL)compareTensorShapesForShape1:(const void *)shape1 Shape2:(unint64_t)shape2[5] rank:(unint64_t)rank;
- (BOOL)loadBridge:(id *)bridge;
- (BOOL)loadDecoder:(id *)decoder;
- (BOOL)loadPostProcUtilsWithBeamWidth:(int)width error:(id *)error;
- (BOOL)loadResources:(id *)resources;
- (BOOL)populateInputBufferWithBridgeFeatures:(id)features WithError:(id *)error;
- (BOOL)reshapeEncodedFeaturesBufferForBridgeNet:(id)net WithError:(id *)error;
- (CSUImageCaptioningDecoderE1)initWithConfiguration:(id)configuration;
- (id).cxx_construct;
- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error;
- (id)getBridgeLayerOutput:(id)output error:(id *)error;
- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures;
- (id)postProcessResults:(id)results error:(id *)error;
- (vector<float,)nextTokensForInputs:(CSUImageCaptioningDecoderE1 *)self AndforMaskPosition:(SEL)position;
@end

@implementation CSUImageCaptioningDecoderE1

- (CSUImageCaptioningDecoderE1)initWithConfiguration:(id)configuration
{
  v34 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v32.receiver = self;
  v32.super_class = CSUImageCaptioningDecoderE1;
  v10 = [(CSUImageCaptioningDecoderE1 *)&v32 init];
  if (v10)
  {
    if (objc_msgSend_revision(configurationCopy, v6, v7, v8, v9) != 1)
    {
LABEL_17:
      objc_storeStrong(&v10->_configuration, configuration);
      v26 = v10;
      goto LABEL_18;
    }

    objc_msgSend_supportedComputeDevices(configurationCopy, v11, v12, v13, v14);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v15 = v29 = 0u;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v28, v33, 16);
    if (v18)
    {
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v28 + 1) + 8 * v20);
          if (v21)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_msgSend_setComputeDevice_(configurationCopy, v17, v21, v22, v23, v28);

              goto LABEL_17;
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v28, v33, 16);
      }

      while (v18);
    }

    v25 = sub_1AC090E50(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AC120118(v25);
    }
  }

  v26 = 0;
LABEL_18:

  return v26;
}

- (BOOL)loadBridge:(id *)bridge
{
  v6 = objc_msgSend_bridgeNetworkPath(self->_configuration, a2, bridge, v3, v4);

  if (v6 && !self->_bridgeNet.__ptr_)
  {
    v12 = objc_msgSend_bridgeNetworkPath(self->_configuration, v7, v8, v9, v10);
    objc_msgSend_UTF8String(v12, v13, v14, v15, v16);
    objc_msgSend_espressoExecutionEngine(self->_configuration, v17, v18, v19, v20);
    sub_1AC063040();
  }

  return 1;
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
  v37 = *MEMORY[0x1E69E9840];
  if (self->_decoderNet.__ptr_)
  {
    return 1;
  }

  if (objc_msgSend_loadPostProcUtilsWithBeamWidth_error_(self, a2, 3, decoder, v3))
  {
    v10 = objc_msgSend_decoderNetworkPath(self->_configuration, v6, v7, v8, v9);
    v36 = objc_msgSend_UTF8String(v10, v11, v12, v13, v14);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = objc_msgSend_espressoExecutionEngine(self->_configuration, v15, v16, v17, v18);
    v23 = 1;
    v24 = 0;
    v25 = 0;
    v26 = 0xFFFFFFFFLL;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *v31 = 0u;
    *v32 = 0u;
    v33 = 1065353216;
    v35 = 0;
    LOBYTE(__p) = 0;
    sub_1AC063040();
  }

  return 0;
}

- (BOOL)loadResources:(id *)resources
{
  if (!self->_decoderNet.__ptr_)
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
  ptr = self->_bridgeNet.__ptr_;
  result = (ptr != 0) & Decoder;
  if (!ptr && ((Decoder ^ 1) & 1) == 0)
  {

    return objc_msgSend_loadBridge_(self, v9, resources, v10, v11);
  }

  return result;
}

- (BOOL)compareTensorShapesForShape1:(const void *)shape1 Shape2:(unint64_t)shape2[5] rank:(unint64_t)rank
{
  if (!rank)
  {
    return 1;
  }

  v5 = *shape1 - 8 * rank;
  if (*(v5 + 32) != *shape2)
  {
    return 0;
  }

  v6 = (v5 + 40);
  v7 = 1;
  do
  {
    v8 = v7;
    if (rank == v7)
    {
      break;
    }

    v9 = *v6++;
    v10 = shape2[v7++];
  }

  while (v9 == v10);
  return v8 >= rank;
}

- (vector<float,)nextTokensForInputs:(CSUImageCaptioningDecoderE1 *)self AndforMaskPosition:(SEL)position
{
  v97 = *MEMORY[0x1E69E9840];
  begin = self->_inputTokens.shape_.sizes_.__begin_;
  end = self->_inputTokens.shape_.sizes_.__end_;
  if (begin == end)
  {
    goto LABEL_11;
  }

  v11 = end - begin - 8;
  if (v11 < 0x38)
  {
    v12 = 1;
    v13 = self->_inputTokens.shape_.sizes_.__begin_;
    do
    {
LABEL_7:
      v24 = *v13++;
      v12 *= v24;
    }

    while (v13 != end);
    goto LABEL_8;
  }

  v14 = (v11 >> 3) + 1;
  v13 = &begin[v14 & 0x3FFFFFFFFFFFFFF8];
  v15 = (begin + 4);
  v16.i64[0] = 0x100000001;
  v16.i64[1] = 0x100000001;
  v17 = v14 & 0x3FFFFFFFFFFFFFF8;
  v18.i64[0] = 0x100000001;
  v18.i64[1] = 0x100000001;
  do
  {
    v20 = v15[-2];
    v19 = v15[-1];
    v22 = *v15;
    v21 = v15[1];
    v15 += 4;
    v16 = vmulq_s32(v16, vuzp1q_s32(v20, v19));
    v18 = vmulq_s32(v18, vuzp1q_s32(v22, v21));
    v17 -= 8;
  }

  while (v17);
  v23 = vmulq_s32(v18, v16);
  *v23.i8 = vmul_s32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  v12 = v23.i32[0] * v23.i32[1];
  if (v14 != (v14 & 0x3FFFFFFFFFFFFFF8))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v12)
  {
    if ((v12 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

LABEL_11:
  v25 = *a4;
  v26 = *(a4 + 1);
  v27 = v26 - *a4;
  if (v26 != *a4)
  {
    memmove(0, v25, v27);
  }

  if (self->_inputTokens.type_ != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  (*(*self->_inputTokens.storage_.__ptr_ + 24))(self->_inputTokens.storage_.__ptr_, v25, v27);
  v77 = a5;
  ptr = self->_decoderNet.__ptr_;
  v33 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v29, v30, v31, v32);
  v34 = v33;
  v39 = objc_msgSend_UTF8String(v34, v35, v36, v37, v38);
  v40 = strlen(v39);
  if (v40 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v41 = v40;
  if (v40 >= 0x17)
  {
    operator new();
  }

  v81 = v40;
  if (v40)
  {
    memmove(&__dst, v39, v40);
  }

  *(&__dst + v41) = 0;
  sub_1AC072D54(&v85, &__dst, &self->_encodedFeaturesBuffer);
  v46 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v42, v43, v44, v45);
  v47 = v46;
  v52 = objc_msgSend_UTF8String(v46, v48, v49, v50, v51);
  v53 = strlen(v52);
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v54 = v53;
  if (v53 >= 0x17)
  {
    operator new();
  }

  v79 = v53;
  if (v53)
  {
    memmove(v78, v52, v53);
  }

  *(v78 + v54) = 0;
  sub_1AC072D54(v91, v78, &self->_inputTokens);
  memset(v82, 0, sizeof(v82));
  v83 = 1065353216;
  sub_1AC06C114(v82, &v85, &v85);
  sub_1AC06C114(v82, v91, v91);
  sub_1AC0669EC(ptr, v82, v84);
  sub_1AC066D78(v82);
  v93 = &unk_1F20D01C0;
  v55 = v96;
  if (v96 && !atomic_fetch_add(&v96->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
  }

  if (__p)
  {
    v95 = __p;
    operator delete(__p);
  }

  if (v92 < 0)
  {
    operator delete(v91[0]);
  }

  v87 = &unk_1F20D01C0;
  v56 = v90;
  if (v90 && !atomic_fetch_add(&v90->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v56->__on_zero_shared)(v56);
    std::__shared_weak_count::__release_weak(v56);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86 < 0)
  {
    operator delete(v85);
    if ((v79 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v79 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

  operator delete(v78[0]);
LABEL_40:

  if (v81 < 0)
  {
    operator delete(__dst);
  }

  v61 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v57, v58, v59, v60);
  v62 = v61;
  v67 = objc_msgSend_UTF8String(v61, v63, v64, v65, v66);
  v68 = strlen(v67);
  if (v68 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1AC060A04();
  }

  v69 = v68;
  if (v68 >= 0x17)
  {
    operator new();
  }

  v86 = v68;
  if (v68)
  {
    memmove(&v85, v67, v68);
  }

  *(&v85 + v69) = 0;
  v70 = sub_1AC0686D0(v84, &v85);
  if (!v70)
  {
    sub_1AC0672B0("unordered_map::at: key not found");
  }

  v71 = v70[10];
  if (v86 < 0)
  {
    operator delete(v85);
  }

  v72 = v71[11];
  v73 = 4 * v77 * v72;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v74 = 4 * (v77 + 1) * v72;
  retstr->__begin_ = 0;
  if (v74 != v73)
  {
    if (((v74 - v73) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AC060AAC();
  }

  return sub_1AC066D78(v84);
}

- (BOOL)populateInputBufferWithBridgeFeatures:(id)features WithError:(id *)error
{
  v7[13] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC0C1F64(features);
  LOWORD(v6) = 1;
  sub_1AC06910C(v7, v4);
}

- (BOOL)reshapeEncodedFeaturesBufferForBridgeNet:(id)net WithError:(id *)error
{
  v7[13] = *MEMORY[0x1E69E9840];
  v4 = sub_1AC0C1F64(net);
  LOWORD(v6) = 1;
  sub_1AC06910C(v7, v4);
}

- (id)getBridgeLayerOutput:(id)output error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  if ((objc_msgSend_loadBridge_(self, v7, error, v8, v9) & 1) != 0 && objc_msgSend_reshapeEncodedFeaturesBufferForBridgeNet_WithError_(self, v10, outputCopy, error, v11))
  {
    ptr = self->_bridgeNet.__ptr_;
    v17 = objc_msgSend_inputEncodedFeaturesTensorNameOfBridge(self->_configuration, v12, v13, v14, v15);
    v18 = v17;
    v52 = objc_msgSend_UTF8String(v18, v19, v20, v21, v22);
    sub_1AC0C01E8(v57, &v52, &self->_bridgeInputBuffer);
    __dst = 0u;
    v54 = 0u;
    v55 = 1065353216;
    sub_1AC06C114(&__dst, v57, v57);
    sub_1AC0669EC(ptr, &__dst, v56);
    sub_1AC066D78(&__dst);
    *(&v58 + 1) = &unk_1F20D01C0;
    v23 = *(&v61 + 1);
    if (*(&v61 + 1) && !atomic_fetch_add((*(&v61 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    if (*(&v59 + 1))
    {
      *&v60 = *(&v59 + 1);
      operator delete(*(&v59 + 1));
    }

    if (SBYTE7(v58) < 0)
    {
      operator delete(v57[0]);
    }

    v28 = objc_msgSend_outputTensorNameOfBridge(self->_configuration, v24, v25, v26, v27);
    v29 = v28;
    v34 = objc_msgSend_UTF8String(v28, v30, v31, v32, v33);
    v35 = strlen(v34);
    if (v35 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AC060A04();
    }

    v36 = v35;
    if (v35 >= 0x17)
    {
      operator new();
    }

    BYTE7(v54) = v35;
    if (v35)
    {
      memmove(&__dst, v34, v35);
    }

    *(&__dst + v36) = 0;
    v38 = sub_1AC0686D0(v56, &__dst);
    if (!v38)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    v42 = v38[10];
    v43 = *(v42 + 5);
    v44 = *(v42 + 3);
    *v57 = *(v42 + 1);
    v58 = v44;
    v59 = v43;
    v45 = *(v42 + 11);
    v46 = *(v42 + 13);
    v47 = *(v42 + 9);
    v60 = *(v42 + 7);
    v61 = v47;
    v48 = *(v42 + 15);
    v49 = *(v42 + 17);
    v50 = *(v42 + 19);
    v67 = v42[21];
    v65 = v49;
    v66 = v50;
    v63 = v46;
    v64 = v48;
    v62 = v45;
    v37 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v39, v57, v40, v41);
    if (SBYTE7(v54) < 0)
    {
      operator delete(__dst);
    }

    sub_1AC066D78(v56);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)computeDecodedCaptionsForFeatures:(id)features withDecodingMethod:(int64_t)method runDecoderOnly:(BOOL)only error:(id *)error
{
  featuresCopy = features;
  if ((objc_msgSend_loadResources_(self, v11, error, v12, v13) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (self->_bridgeNet.__ptr_ && !only)
  {
    v18 = objc_msgSend_getBridgeLayerOutput_error_(self, v14, featuresCopy, error, v15);
    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = objc_msgSend_populateInputBufferWithBridgeFeatures_WithError_(self, v16, v18, error, v17);

    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    if (method)
    {
      objc_msgSend_getCaptionsAfterBeamSearchDecodingOnEncodedFeatures(self, v20, v21, v22, v23);
    }

    else
    {
      objc_msgSend_getCaptionsAfterGreedyDecodingOnEncodedFeatures(self, v20, v21, v22, v23);
    }
    v24 = ;
    goto LABEL_12;
  }

  if (objc_msgSend_populateInputBufferWithBridgeFeatures_WithError_(self, v14, featuresCopy, error, v15))
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = 0;
LABEL_12:

  return v24;
}

- (id)getCaptionsAfterGreedyDecodingOnEncodedFeatures
{
  v204 = *MEMORY[0x1E69E9840];
  begin = self->_inputTokens.shape_.sizes_.__begin_;
  end = self->_inputTokens.shape_.sizes_.__end_;
  if (begin != end)
  {
    v5 = end - begin - 8;
    if (v5 >= 0x38)
    {
      v8 = (v5 >> 3) + 1;
      v7 = &begin[v8 & 0x3FFFFFFFFFFFFFF8];
      v9 = (begin + 4);
      v10.i64[0] = 0x100000001;
      v10.i64[1] = 0x100000001;
      v11 = v8 & 0x3FFFFFFFFFFFFFF8;
      v12.i64[0] = 0x100000001;
      v12.i64[1] = 0x100000001;
      do
      {
        v14 = v9[-2];
        v13 = v9[-1];
        v16 = *v9;
        v15 = v9[1];
        v9 += 4;
        v10 = vmulq_s32(v10, vuzp1q_s32(v14, v13));
        v12 = vmulq_s32(v12, vuzp1q_s32(v16, v15));
        v11 -= 8;
      }

      while (v11);
      v17 = vmulq_s32(v12, v10);
      *v17.i8 = vmul_s32(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
      v6 = v17.i32[0] * v17.i32[1];
      if (v8 == (v8 & 0x3FFFFFFFFFFFFFF8))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 1;
      v7 = self->_inputTokens.shape_.sizes_.__begin_;
    }

    do
    {
      v18 = *v7++;
      v6 *= v18;
    }

    while (v7 != end);
LABEL_9:
    v179 = v6;
    goto LABEL_10;
  }

  v179 = 0;
LABEL_10:
  if (self->_inputTokens.type_ != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v177 = (*(*self->_inputTokens.storage_.__ptr_ + 24))(self->_inputTokens.storage_.__ptr_, a2);
  v23 = 0.0;
  if (!v179)
  {
    v180 = 0;
    v181 = 0;
    v119 = 0;
    goto LABEL_97;
  }

  v180 = 0;
  v181 = 0;
  v24 = 0;
  v178 = 0;
  do
  {
    ptr = self->_decoderNet.__ptr_;
    v26 = objc_msgSend_inputEncodedFeaturesTensorName(self->_configuration, v19, v20, v21, v22, v177);
    v27 = v26;
    v32 = objc_msgSend_UTF8String(v26, v28, v29, v30, v31);
    v33 = strlen(v32);
    if (v33 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v34 = v33;
    if (v33 >= 0x17)
    {
      operator new();
    }

    v187 = v33;
    if (v33)
    {
      memmove(&__dst, v32, v33);
    }

    *(&__dst + v34) = 0;
    sub_1AC072D54(v193, &__dst, &self->_encodedFeaturesBuffer);
    v39 = objc_msgSend_inputWordIdsTensorName(self->_configuration, v35, v36, v37, v38);
    v40 = v39;
    v45 = objc_msgSend_UTF8String(v39, v41, v42, v43, v44);
    v46 = strlen(v45);
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v47 = v46;
    if (v46 >= 0x17)
    {
      operator new();
    }

    v185 = v46;
    if (v46)
    {
      memmove(v184, v45, v46);
    }

    *(v184 + v47) = 0;
    sub_1AC072D54(&v198, v184, &self->_inputTokens);
    *v188 = 0u;
    v189 = 0u;
    v190 = 1065353216;
    sub_1AC06C114(v188, v193, v193);
    sub_1AC06C114(v188, &v198, &v198);
    sub_1AC0669EC(ptr, v188, &v191);
    sub_1AC066D78(v188);
    *(&v199 + 1) = &unk_1F20D01C0;
    v48 = *(&v202 + 1);
    if (!*(&v202 + 1) || atomic_fetch_add((*(&v202 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v49 = *(&v200 + 1);
      if (!*(&v200 + 1))
      {
        goto LABEL_29;
      }

LABEL_28:
      *&v201 = v49;
      operator delete(v49);
      goto LABEL_29;
    }

    (v48->__on_zero_shared)(v48);
    std::__shared_weak_count::__release_weak(v48);
    v49 = *(&v200 + 1);
    if (*(&v200 + 1))
    {
      goto LABEL_28;
    }

LABEL_29:
    if (SBYTE7(v199) < 0)
    {
      operator delete(v198);
      *(&v194 + 1) = &unk_1F20D01C0;
      v50 = *(&v197 + 1);
      if (!*(&v197 + 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      *(&v194 + 1) = &unk_1F20D01C0;
      v50 = *(&v197 + 1);
      if (!*(&v197 + 1))
      {
        goto LABEL_34;
      }
    }

    if (atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_34:
      v51 = *(&v195 + 1);
      if (!*(&v195 + 1))
      {
        goto LABEL_36;
      }

LABEL_35:
      *&v196 = v51;
      operator delete(v51);
      goto LABEL_36;
    }

    (v50->__on_zero_shared)(v50);
    std::__shared_weak_count::__release_weak(v50);
    v51 = *(&v195 + 1);
    if (*(&v195 + 1))
    {
      goto LABEL_35;
    }

LABEL_36:
    if (SBYTE7(v194) < 0)
    {
      operator delete(v193[0]);
      if ((v185 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v185 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(v184[0]);
LABEL_38:

    if (v187 < 0)
    {
      operator delete(__dst);
    }

    v56 = objc_msgSend_outputWordProbsTensorName(self->_configuration, v52, v53, v54, v55);
    v57 = v56;
    if (!v56)
    {
LABEL_60:
      v76 = 0;
      goto LABEL_66;
    }

    v58 = v56;
    v63 = objc_msgSend_UTF8String(v57, v59, v60, v61, v62);
    v64 = strlen(v63);
    if (v64 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v65 = v64;
    if (v64 >= 0x17)
    {
      operator new();
    }

    BYTE7(v194) = v64;
    if (v64)
    {
      memmove(v193, v63, v64);
    }

    *(v193 + v65) = 0;
    v66 = sub_1AC0686D0(&v191, v193);
    if (SBYTE7(v194) < 0)
    {
      v75 = v66;
      operator delete(v193[0]);
      if (!v75)
      {
        goto LABEL_60;
      }
    }

    else if (!v66)
    {
      goto LABEL_60;
    }

    v67 = v57;
    v72 = objc_msgSend_UTF8String(v57, v68, v69, v70, v71);
    v73 = strlen(v72);
    if (v73 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1AC060A04();
    }

    v74 = v73;
    if (v73 >= 0x17)
    {
      operator new();
    }

    BYTE7(v189) = v73;
    if (v73)
    {
      memmove(v188, v72, v73);
    }

    *(v188 + v74) = 0;
    v77 = sub_1AC0686D0(&v191, v188);
    if (!v77)
    {
      sub_1AC0672B0("unordered_map::at: key not found");
    }

    v81 = v77[10];
    v82 = *(v81 + 5);
    v83 = *(v81 + 3);
    *v193 = *(v81 + 1);
    v194 = v83;
    v195 = v82;
    v84 = *(v81 + 11);
    v85 = *(v81 + 13);
    v86 = *(v81 + 9);
    v196 = *(v81 + 7);
    v197 = v86;
    v87 = *(v81 + 15);
    v88 = *(v81 + 17);
    v89 = *(v81 + 19);
    v203 = v81[21];
    v201 = v88;
    v202 = v89;
    v199 = v85;
    v200 = v87;
    v198 = v84;
    v76 = objc_msgSend_fromEspressoBuffer_(CSUEspressoBuffer, v78, v193, v79, v80);
    if (SBYTE7(v189) < 0)
    {
      operator delete(v188[0]);
    }

LABEL_66:

    v94 = objc_msgSend_configuration(self, v90, v91, v92, v93);
    v99 = objc_msgSend_saveDecoderFeatures(v94, v95, v96, v97, v98);

    if (v99)
    {
      v181 = v76;
    }

    else
    {
      v181 = 0;
    }

    v100 = sub_1AC0C1F64(v76);
    v101 = v100[10];
    v102 = v101 * v24++;
    if (v102 == v101 * v24)
    {
      goto LABEL_94;
    }

    v103 = (*v100 + 4 * v102);
    v104 = v103 + 1;
    if (v103 + 1 == (*v100 + 4 * v101 * v24))
    {
      goto LABEL_94;
    }

    v105 = *v103;
    v106 = 4 * v101 - 4;
    v107 = v103;
    v108 = v103 + 1;
    do
    {
      v109 = *v108++;
      v110 = v109;
      if (v105 < v109)
      {
        v105 = v110;
        v107 = v104;
      }

      v104 = v108;
      v106 -= 4;
    }

    while (v106);
    v111 = v107 - v103;
    if (!v111)
    {
LABEL_94:

      sub_1AC066D78(&v191);
      v117 = v180;
      if (!v180)
      {
        goto LABEL_95;
      }

      goto LABEL_88;
    }

    if (v24 < v179)
    {
      *(v177 + 4 * v24) = (v111 >> 2);
    }

    v112 = v178;
    v113 = v178 >> 2;
    if (((v178 >> 2) + 1) >> 62)
    {
      sub_1AC060AAC();
    }

    if (v178 >> 2 != -1)
    {
      if (!(((v178 >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    *(4 * v113) = v111 >> 2;
    v178 = 4 * v113 + 4;
    memcpy(0, 0, v112);
    v114 = *v107;
    v115 = v180;
    v116 = v180 >> 2;
    if (((v180 >> 2) + 1) >> 62)
    {
      sub_1AC060AAC();
    }

    if (v180 >> 2 != -1)
    {
      if (!(((v180 >> 2) + 1) >> 62))
      {
        operator new();
      }

      sub_1AC066FD4();
    }

    *(4 * v116) = v114;
    v180 = 4 * v116 + 4;
    memcpy(0, 0, v115);

    sub_1AC066D78(&v191);
  }

  while (v24 != v179);
  v117 = 4 * v116 + 4;
  if (4 * v116 == -4)
  {
LABEL_95:
    v119 = v178;
    goto LABEL_97;
  }

LABEL_88:
  v23 = 0.0;
  v118 = 0;
  v119 = v178;
  if ((v117 - 4) < 0x1C)
  {
    goto LABEL_137;
  }

  v120 = ((v117 - 4) >> 2) + 1;
  v118 = (4 * (v120 & 0x7FFFFFFFFFFFFFF8));
  v121 = 16;
  v122 = v120 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v123 = *(v121 - 16);
    v124 = vcvt_hight_f64_f32(v123);
    v125 = vcvtq_f64_f32(*v123.f32);
    v126 = vcvt_hight_f64_f32(*v121);
    v127 = vcvtq_f64_f32(*v121);
    v23 = v23 + v125.f64[0] + v125.f64[1] + v124.f64[0] + v124.f64[1] + v127.f64[0] + v127.f64[1] + v126.f64[0] + v126.f64[1];
    v121 += 32;
    v122 -= 8;
  }

  while (v122);
  if (v120 != (v120 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_137:
    do
    {
      v128 = *v118++;
      v23 = v23 + v128;
    }

    while (v118 != v117);
  }

LABEL_97:
  v133 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v177);
  if (v119)
  {
    v134 = v119;
    for (i = 0; i != v134; ++i)
    {
      if (!*i)
      {
        break;
      }

      procUtils = self->_procUtils;
      if (procUtils)
      {
        objc_msgSend_vocabulary(procUtils, v129, v130, v131, v132);
        procUtils = v193[0];
      }

      else
      {
        v193[0] = 0;
        v193[1] = 0;
      }

      (*(procUtils->super.isa + 5))(&v182);
      if (v183 < 0)
      {
        operator delete(v182);
        v141 = v193[1];
        if (!v193[1])
        {
          goto LABEL_109;
        }
      }

      else
      {
        v141 = v193[1];
        if (!v193[1])
        {
          goto LABEL_109;
        }
      }

      if (atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_109:
        v142 = MEMORY[0x1E696AEC0];
        v143 = self->_procUtils;
        if (v143)
        {
          goto LABEL_110;
        }

        goto LABEL_112;
      }

      (v141->__on_zero_shared)(v141);
      std::__shared_weak_count::__release_weak(v141);
      v142 = MEMORY[0x1E696AEC0];
      v143 = self->_procUtils;
      if (v143)
      {
LABEL_110:
        objc_msgSend_vocabulary(v143, v137, v138, v139, v140);
        v143 = v191;
        goto LABEL_113;
      }

LABEL_112:
      v191 = 0;
      v192 = 0;
LABEL_113:
      (*(v143->super.isa + 5))(v193);
      if ((SBYTE7(v194) & 0x80u) == 0)
      {
        objc_msgSend_stringWithUTF8String_(v142, v144, v193, v145, v146);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v142, v144, v193[0], v145, v146);
      }
      v147 = ;
      objc_msgSend_addObject_(v133, v148, v147, v149, v150);

      if (SBYTE7(v194) < 0)
      {
        operator delete(v193[0]);
        v151 = v192;
        if (v192)
        {
LABEL_120:
          if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v151->__on_zero_shared)(v151);
            std::__shared_weak_count::__release_weak(v151);
          }
        }
      }

      else
      {
        v151 = v192;
        if (v192)
        {
          goto LABEL_120;
        }
      }
    }
  }

  v152 = objc_msgSend_componentsJoinedByString_(v133, v129, @" ", v131, v132);
  v153 = [CSUCaptionResult alloc];
  v154 = v23 / (v180 >> 2);
  *&v154 = v154;
  v158 = objc_msgSend_initWithCaption_score_(v153, v155, v152, v156, v157, v154);
  v159 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_addObject_(v159, v160, v158, v161, v162);
  v166 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DEC8], v163, v159, v164, v165);
  v170 = objc_msgSend_createCaptionResultsWithResults_(CSUCaptionResults, v167, v166, v168, v169);

  objc_msgSend_setDecoderFeaturesCSUBuffer_(v170, v171, v181, v172, v173);
  v174 = v170;

  return v174;
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
      sub_1AC1201A0(v25);
    }

    v24 = resultsCopy;
  }

  return v24;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 8) = 4;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 3) = &unk_1F20D0320;
  *(self + 22) = 4;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 9) = 0;
  *(self + 10) = &unk_1F20D0320;
  *(self + 36) = 4;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 23) = 0;
  *(self + 16) = 0;
  *(self + 17) = &unk_1F20D0320;
  return self;
}

@end