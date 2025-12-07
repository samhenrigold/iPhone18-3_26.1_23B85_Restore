@interface CVNLPCaptionEncoderLSTM
- (CVNLPCaptionEncoderLSTM)initWithOptions:(id)options runTimeParams:(id)params;
- (void)_run:(vImage_Buffer *)_run meanFeatures:(id *)features attnFeatures:(id *)attnFeatures projectedAttnFeatures:(id *)projectedAttnFeatures;
- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs;
- (void)dealloc;
@end

@implementation CVNLPCaptionEncoderLSTM

- (CVNLPCaptionEncoderLSTM)initWithOptions:(id)options runTimeParams:(id)params
{
  optionsCopy = options;
  paramsCopy = params;
  v40.receiver = self;
  v40.super_class = CVNLPCaptionEncoderLSTM;
  v8 = [(CVNLPCaptionModelBase *)&v40 initWithOptions:optionsCopy runTimeParams:paramsCopy];
  v11 = v8;
  if (v8)
  {
    v8->meanFeaturesPresent = 0;
    v12 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v9, CVNLPCaptionModelPath, v10);
    v15 = objc_msgSend_URLByAppendingPathComponent_(v12, v13, @"encoder_opt.espresso.net", v14);
    v11->encoderCtx = espresso_create_context();
    v11->encoderPlan = espresso_create_plan();
    v19 = objc_msgSend_path(v15, v16, v17, v18);
    v20 = v19;
    objc_msgSend_UTF8String(v20, v21, v22, v23);
    v24 = espresso_plan_add_network();

    if (v24)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(exception, v27);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_plan_build())
    {
      v28 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v28, v29);
      __cxa_throw(v28, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_query_blob_dimensions())
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v30, v31);
      __cxa_throw(v30, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (c_network_get_output_names())
    {
      v32 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v32, v33);
      __cxa_throw(v32, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (v11->meanFeaturesPresent && espresso_network_bind_buffer())
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v38, v39);
      __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v34 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v34, v35);
      __cxa_throw(v34, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (espresso_network_bind_buffer())
    {
      v36 = __cxa_allocate_exception(0x10uLL);
      espresso_plan_get_error_info();
      std::runtime_error::runtime_error(v36, v37);
      __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return v11;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = CVNLPCaptionEncoderLSTM;
  [(CVNLPCaptionEncoderLSTM *)&v3 dealloc];
}

- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs
{
  v13[3] = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = 0;
  v10 = 0;
  objc_msgSend__run_meanFeatures_attnFeatures_projectedAttnFeatures_(self, a2, image, &v12, &v11, &v10);
  v6 = v12;
  v7 = v11;
  v9 = v10;
  if (image->data)
  {
    MEMORY[0x1DA741250](image->data, 0x1000C8077774924);
  }

  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v9;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v13, 3);
}

- (void)_run:(vImage_Buffer *)_run meanFeatures:(id *)features attnFeatures:(id *)attnFeatures projectedAttnFeatures:(id *)projectedAttnFeatures
{
  v56 = xmmword_1D9DDE660;
  v57 = 0;
  v10 = *&_run->width;
  v42 = *&_run->data;
  v43 = v10;
  if (espresso_network_bind_input_vimagebuffer_rgba8() || espresso_plan_execute_sync())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v38);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (self->meanFeaturesPresent)
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v14 = *&self->meanFeatsBlob.stride_height;
    v15 = *&self->meanFeatsBlob.stride_batch_number;
    v16 = *&self->meanFeatsBlob.channels;
    v49 = *&self->meanFeatsBlob.sequence_length;
    v50 = v14;
    v51 = v15;
    v52 = *&self->meanFeatsBlob.storage_type;
    v17 = *&self->meanFeatsBlob.width;
    v46 = *&self->meanFeatsBlob.stride[2];
    v47 = v17;
    v48 = v16;
    v18 = *self->meanFeatsBlob.dim;
    v42 = *&self->meanFeatsBlob.data;
    v43 = v18;
    v19 = *self->meanFeatsBlob.stride;
    v44 = *&self->meanFeatsBlob.dim[2];
    v45 = v19;
    objc_msgSend__copy_data_from_blob_to_(self, v11, &v42, &v53);
    *features = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v20, v53, v54 - v53);
    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }
  }

  else
  {
    *features = objc_msgSend_data(MEMORY[0x1E695DEF0], v11, v12, v13);
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  v22 = *&self->attFeatsBlob.stride_height;
  v23 = *&self->attFeatsBlob.stride_batch_number;
  v24 = *&self->attFeatsBlob.channels;
  v49 = *&self->attFeatsBlob.sequence_length;
  v50 = v22;
  v51 = v23;
  v52 = *&self->attFeatsBlob.storage_type;
  v25 = *&self->attFeatsBlob.width;
  v46 = *&self->attFeatsBlob.stride[2];
  v47 = v25;
  v48 = v24;
  v26 = *self->attFeatsBlob.dim;
  v42 = *&self->attFeatsBlob.data;
  v43 = v26;
  v27 = *self->attFeatsBlob.stride;
  v44 = *&self->attFeatsBlob.dim[2];
  v45 = v27;
  objc_msgSend__copy_data_from_blob_to_(self, v21, &v42, &v53);
  *attnFeatures = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v28, v53, v54 - v53);
  __p = 0;
  v40 = 0;
  v41 = 0;
  v29 = *&self->pAttFeatsBlob.stride_height;
  v30 = *&self->pAttFeatsBlob.stride_batch_number;
  v31 = *&self->pAttFeatsBlob.channels;
  v49 = *&self->pAttFeatsBlob.sequence_length;
  v50 = v29;
  v51 = v30;
  v52 = *&self->pAttFeatsBlob.storage_type;
  v32 = *&self->pAttFeatsBlob.width;
  v46 = *&self->pAttFeatsBlob.stride[2];
  v47 = v32;
  v48 = v31;
  v33 = *self->pAttFeatsBlob.dim;
  v42 = *&self->pAttFeatsBlob.data;
  v43 = v33;
  v34 = *self->pAttFeatsBlob.stride;
  v44 = *&self->pAttFeatsBlob.dim[2];
  v45 = v34;
  objc_msgSend__copy_data_from_blob_to_(self, v35, &v42, &__p);
  *projectedAttnFeatures = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v36, __p, v40 - __p);
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

@end