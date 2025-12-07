@interface CVNLPCaptionEncoderTransformer
- (CVNLPCaptionEncoderTransformer)initWithOptions:(id)options runTimeParams:(id)params;
- (id).cxx_construct;
- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs;
- (void)computeCaptionForImageImpl:(vImage_Buffer *)impl outputs:(id *)outputs;
- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs;
- (void)computeCaptionForPixelBufferImpl:(__CVBuffer *)impl outputs:(id *)outputs;
- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs;
- (void)computeCaptionForVideoPixelBufferImpl:(void *)impl outputs:(id *)outputs;
- (void)dealloc;
@end

@implementation CVNLPCaptionEncoderTransformer

- (CVNLPCaptionEncoderTransformer)initWithOptions:(id)options runTimeParams:(id)params
{
  optionsCopy = options;
  paramsCopy = params;
  v14.receiver = self;
  v14.super_class = CVNLPCaptionEncoderTransformer;
  if ([(CVNLPCaptionModelBase *)&v14 initWithOptions:optionsCopy runTimeParams:paramsCopy])
  {
    v10 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v8, CVNLPCaptionModelPath, v9);
    objc_msgSend_URLByAppendingPathComponent_(v10, v11, @"encoder_opt.espresso.net", v12, v10);
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = CVNLPCaptionEncoderTransformer;
  [(CVNLPCaptionEncoderTransformer *)&v3 dealloc];
}

- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs
{
  v7 = objc_msgSend_perfResults(self, a2, image, outputs);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9D944E8;
  v9[3] = &unk_1E858E040;
  v9[4] = self;
  v9[5] = image;
  v9[6] = outputs;
  objc_msgSend_run_block_(v7, v8, @"Encode", v9);
}

- (void)computeCaptionForImageImpl:(vImage_Buffer *)impl outputs:(id *)outputs
{
  v35[1] = *MEMORY[0x1E69E9840];
  v6 = *&impl->width;
  v24 = *&impl->data;
  v25 = v6;
  if (espresso_network_bind_input_vimagebuffer_rgba8())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v21);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (espresso_plan_execute_sync())
  {
    v22 = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(v22, v23);
    __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = MEMORY[0x1E695DEF0];
  data = self->attFeatsBlob.data;
  v11 = *&self->attFeatsBlob.stride_batch_number;
  v32 = *&self->attFeatsBlob.stride_height;
  v33 = v11;
  v34 = *&self->attFeatsBlob.storage_type;
  v12 = *&self->attFeatsBlob.width;
  v28 = *&self->attFeatsBlob.stride[2];
  v29 = v12;
  v13 = *&self->attFeatsBlob.sequence_length;
  v30 = *&self->attFeatsBlob.channels;
  v31 = v13;
  v14 = *self->attFeatsBlob.dim;
  v24 = *&self->attFeatsBlob.data;
  v25 = v14;
  v15 = *self->attFeatsBlob.stride;
  v26 = *&self->attFeatsBlob.dim[2];
  v27 = v15;
  v16 = objc_msgSend__blob_size_(self, v7, &v24, v8);
  v18 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v9, v17, data, 4 * v16, 0);
  v35[0] = v18;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v35, 1);
}

- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs
{
  v7 = objc_msgSend_perfResults(self, a2, buffer, outputs);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9D947C4;
  v9[3] = &unk_1E858E040;
  v9[4] = self;
  v9[5] = buffer;
  v9[6] = outputs;
  objc_msgSend_run_block_(v7, v8, @"EncodePx", v9);
}

- (void)computeCaptionForPixelBufferImpl:(__CVBuffer *)impl outputs:(id *)outputs
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (espresso_network_bind_cvpixelbuffer() || espresso_plan_execute_sync())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v20);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v8 = MEMORY[0x1E695DEF0];
  data = self->attFeatsBlob.data;
  v10 = *&self->attFeatsBlob.stride_batch_number;
  v21[8] = *&self->attFeatsBlob.stride_height;
  v21[9] = v10;
  v22 = *&self->attFeatsBlob.storage_type;
  v11 = *&self->attFeatsBlob.width;
  v21[4] = *&self->attFeatsBlob.stride[2];
  v21[5] = v11;
  v12 = *&self->attFeatsBlob.sequence_length;
  v21[6] = *&self->attFeatsBlob.channels;
  v21[7] = v12;
  v13 = *self->attFeatsBlob.dim;
  v21[0] = *&self->attFeatsBlob.data;
  v21[1] = v13;
  v14 = *self->attFeatsBlob.stride;
  v21[2] = *&self->attFeatsBlob.dim[2];
  v21[3] = v14;
  v15 = objc_msgSend__blob_size_(self, v6, v21, v7);
  v17 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v8, v16, data, 4 * v15, 0);
  v23[0] = v17;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v23, 1);
}

- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs
{
  v7 = objc_msgSend_perfResults(self, a2, buffer, outputs);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1D9D94A6C;
  v9[3] = &unk_1E858E040;
  v9[4] = self;
  v9[5] = buffer;
  v9[6] = outputs;
  objc_msgSend_run_block_(v7, v8, @"EncodePx", v9);
}

- (void)computeCaptionForVideoPixelBufferImpl:(void *)impl outputs:(id *)outputs
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (*(impl + 1) != *impl)
  {
    v7 = 0;
    v8 = 0;
    while (!espresso_network_bind_cvpixelbuffer())
    {
      ++v8;
      v7 += 24;
      if (v8 >= (*(impl + 1) - *impl) >> 3)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x10uLL);
    espresso_plan_get_error_info();
    std::runtime_error::runtime_error(exception, v23);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_5:
  if (espresso_plan_execute_sync())
  {
    goto LABEL_7;
  }

  v11 = MEMORY[0x1E695DEF0];
  data = self->attFeatsBlob.data;
  v13 = *&self->attFeatsBlob.stride_batch_number;
  v24[8] = *&self->attFeatsBlob.stride_height;
  v24[9] = v13;
  v25 = *&self->attFeatsBlob.storage_type;
  v14 = *&self->attFeatsBlob.width;
  v24[4] = *&self->attFeatsBlob.stride[2];
  v24[5] = v14;
  v15 = *&self->attFeatsBlob.sequence_length;
  v24[6] = *&self->attFeatsBlob.channels;
  v24[7] = v15;
  v16 = *self->attFeatsBlob.dim;
  v24[0] = *&self->attFeatsBlob.data;
  v24[1] = v16;
  v17 = *self->attFeatsBlob.stride;
  v24[2] = *&self->attFeatsBlob.dim[2];
  v24[3] = v17;
  v18 = objc_msgSend__blob_size_(self, v9, v24, v10);
  v20 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v11, v19, data, 4 * v18, 0);
  v26[0] = v20;
  *outputs = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v26, 1);
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  return self;
}

@end