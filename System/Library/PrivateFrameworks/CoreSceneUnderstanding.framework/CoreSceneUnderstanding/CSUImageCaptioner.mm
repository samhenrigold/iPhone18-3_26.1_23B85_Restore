@interface CSUImageCaptioner
- (BOOL)loadResources:(id *)resources;
- (CSUImageCaptioner)initWithConfiguration:(id)configuration;
- (id)computeCaptionForCSUBufferEmbedding:(id)embedding withDecodingMethod:(int64_t)method error:(id *)error;
- (id)computeCaptionForEmbedding:(id)embedding withDecodingMethod:(int64_t)method error:(id *)error;
- (id)computeCaptionForImage:(__CVBuffer *)image withDecodingMethod:(int64_t)method error:(id *)error;
@end

@implementation CSUImageCaptioner

- (CSUImageCaptioner)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v38.receiver = self;
  v38.super_class = CSUImageCaptioner;
  v6 = [(CSUImageCaptioner *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    encoder = v7->_encoder;
    v7->_encoder = 0;

    v13 = objc_msgSend_captioningEncoderConfiguration(v7->_configuration, v9, v10, v11, v12);

    if (v13)
    {
      v14 = [CSUImageCaptioningEncoder alloc];
      v19 = objc_msgSend_captioningEncoderConfiguration(configurationCopy, v15, v16, v17, v18);
      v23 = objc_msgSend_initWithConfiguration_(v14, v20, v19, v21, v22);
      v24 = v7->_encoder;
      v7->_encoder = v23;
    }

    v25 = [CSUImageCaptioningDecoder alloc];
    v30 = objc_msgSend_captioningDecoderConfiguration(configurationCopy, v26, v27, v28, v29);
    v34 = objc_msgSend_initWithConfiguration_(v25, v31, v30, v32, v33);
    decoder = v7->_decoder;
    v7->_decoder = v34;

    v36 = v7;
  }

  return v7;
}

- (BOOL)loadResources:(id *)resources
{
  v7 = objc_msgSend_captioningEncoderConfiguration(self->_configuration, a2, resources, v3, v4);

  if (!v7 || (Resources = objc_msgSend_loadResources_(self->_encoder, v8, resources, v9, v10)) != 0)
  {
    decoder = self->_decoder;

    LOBYTE(Resources) = objc_msgSend_loadResources_(decoder, v8, resources, v9, v10);
  }

  return Resources;
}

- (id)computeCaptionForImage:(__CVBuffer *)image withDecodingMethod:(int64_t)method error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = sub_1AC090E50(self);
  v10 = os_signpost_id_generate(v9);

  v12 = sub_1AC090E50(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v25[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUComputeCaptionForImage", "", v25, 2u);
  }

  v25[0] = &unk_1F20D0E08;
  v25[1] = v10;
  v26 = v25;
  v17 = objc_autoreleasePoolPush();
  encoder = self->_encoder;
  if (encoder)
  {
    v20 = objc_msgSend_computeEncodedCaptioningFeaturesForImage_error_(encoder, v14, image, error, v16);
    if (*error)
    {
      v21 = 0;
    }

    else
    {
      v22 = objc_msgSend_computeDecodedCaptionsForFeaturesWithCSUBuffer_withDecodingMethod_error_(self->_decoder, v19, v20, method, error);
      if (*error)
      {
        v21 = 0;
      }

      else
      {
        v23 = v22;
        v21 = v22;
        v22 = v23;
      }
    }
  }

  else
  {
    objc_msgSend_errorForInternalErrorWithLocalizedDescription_(CSUError, v14, @"Encoder not configured!", v15, v16);
    *error = v21 = 0;
  }

  objc_autoreleasePoolPop(v17);
  if (!v26)
  {
    sub_1AC066F88();
  }

  (*(*v26 + 48))(v26);
  if (v26 == v25)
  {
    (*(*v26 + 32))(v26);
  }

  else if (v26)
  {
    (*(*v26 + 40))();
  }

  return v21;
}

- (id)computeCaptionForEmbedding:(id)embedding withDecodingMethod:(int64_t)method error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  v9 = sub_1AC090E50(embeddingCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = sub_1AC090E50(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUComputeCaptionForEmbeddingNSData", "", buf, 2u);
  }

  *buf = &unk_1F20D0E88;
  v51 = v10;
  v52 = buf;
  v14 = objc_autoreleasePoolPush();
  v16 = v14;
  if (embeddingCopy)
  {
    decoder = self->_decoder;
    v48 = 0;
    v18 = objc_msgSend_computeDecodedCaptionsForFeatures_withDecodingMethod_error_(decoder, v15, embeddingCopy, method, &v48);
    v19 = v48;
    if (!v18)
    {
      v20 = objc_alloc(MEMORY[0x1E696AEC0]);
      v25 = objc_msgSend_domain(v19, v21, v22, v23, v24);
      v29 = objc_msgSend_initWithString_(v20, v26, v25, v27, v28);

      v34 = objc_msgSend_code(v19, v30, v31, v32, v33);
      v35 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = objc_msgSend_userInfo(v19, v36, v37, v38, v39);
      v44 = objc_msgSend_initWithDictionary_(v35, v41, v40, v42, v43);

      goto LABEL_11;
    }
  }

  else
  {
    v19 = sub_1AC090E50(v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v49 = 0;
      _os_log_impl(&dword_1AC05D000, v19, OS_LOG_TYPE_INFO, "Input to computeCaptionForEmbedding is null", v49, 2u);
    }

    v18 = 0;
  }

  v34 = 0;
  v44 = 0;
  v29 = 0;
LABEL_11:

  objc_autoreleasePoolPop(v16);
  if (embeddingCopy)
  {
    if (error && v29)
    {
      *error = objc_msgSend_errorWithDomain_code_userInfo_(CSUError, v45, v29, v34, v44);
    }

    v46 = v18;
  }

  else
  {
    v46 = 0;
  }

  if (!v52)
  {
    sub_1AC066F88();
  }

  (*(*v52 + 48))(v52);
  if (v52 == buf)
  {
    (*(*v52 + 32))(v52);
  }

  else if (v52)
  {
    (*(*v52 + 40))();
  }

  return v46;
}

- (id)computeCaptionForCSUBufferEmbedding:(id)embedding withDecodingMethod:(int64_t)method error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  v9 = sub_1AC090E50(embeddingCopy);
  v10 = os_signpost_id_generate(v9);

  v12 = sub_1AC090E50(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v18[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1AC05D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CSUComputeCaptionForEmbeddingCSUBuffer", "", v18, 2u);
  }

  v18[0] = &unk_1F20D0F08;
  v18[1] = v10;
  v19 = v18;
  v14 = objc_autoreleasePoolPush();
  v16 = objc_msgSend_computeDecodedCaptionsForFeaturesWithCSUBuffer_withDecodingMethod_error_(self->_decoder, v15, embeddingCopy, method, error);
  objc_autoreleasePoolPop(v14);
  if (!v19)
  {
    sub_1AC066F88();
  }

  (*(*v19 + 48))(v19);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  return v16;
}

@end