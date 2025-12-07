@interface CNNMLScalerEspressoV2
- (CNNMLScalerEspressoV2)initWithConfig:(id)config modelIndex:(int64_t)index inputSize:(CGSize)size scalingFactor:(int)factor;
- (int)configInput:(int)input;
- (int)copyOutput:(id)output pixelbuffer:(__CVBuffer *)pixelbuffer;
- (int)inferenceWithPixelBuffer:(__CVBuffer *)buffer toDestinationPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)prepareInput:(__CVBuffer *)input withChannels:(int)channels;
- (void)dealloc;
@end

@implementation CNNMLScalerEspressoV2

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CNNMLScalerEspressoV2;
  [(CNNMLScalerEspressoV2 *)&v2 dealloc];
}

- (CNNMLScalerEspressoV2)initWithConfig:(id)config modelIndex:(int64_t)index inputSize:(CGSize)size scalingFactor:(int)factor
{
  height = size.height;
  width = size.width;
  configCopy = config;
  v26.receiver = self;
  v26.super_class = CNNMLScalerEspressoV2;
  v12 = [(CNNMLScalerEspressoV2 *)&v26 init];
  v13 = v12;
  if (v12)
  {
    vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
    resourceURL = [vcp_mediaAnalysisBundle resourceURL];

    v12->_inputWidth = width;
    v12->_inputHeight = height;
    v12->_outputWidth = width * factor;
    v12->_outputHeight = height * factor;
    if (index != 1 || factor != 4 && factor != 2)
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "CNNMLScalerEspressoV2 model not supported!", v25, 2u);
      }

      goto LABEL_21;
    }

    v16 = objc_alloc_init(_MADObjCModelCatalogModel);
    v17 = [(_MADObjCModelCatalogModel *)v16 getModelURL:0];

    if (v17)
    {
      if (factor == 2)
      {
        v18 = @"cnn_gp_mlscaler";
      }

      else
      {
        v18 = @"cnn_gp_mlscaler4x";
      }

      v19 = [MEMORY[0x1E695DFF8] URLWithString:v18 relativeToURL:v17];
      v20 = [[VCPCNNModelEspressoV2 alloc] initWithParameters:v19 outputNames:&unk_1F49BE848 inputNames:&unk_1F49BE860 functionName:configCopy precompiled:0];
      modelEspressoV2 = v12->_modelEspressoV2;
      v12->_modelEspressoV2 = v20;

      if (v12->_modelEspressoV2)
      {
        v22 = [(CNNMLScalerEspressoV2 *)v12 configInput:4];

        if (!v22)
        {
          v13 = v12;
          goto LABEL_22;
        }

LABEL_21:
        v13 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Cannot find MLScaler model from ModelCatalog", v25, 2u);
      }

      v19 = 0;
    }

    goto LABEL_21;
  }

LABEL_22:
  v23 = v13;

  return v23;
}

- (int)inferenceWithPixelBuffer:(__CVBuffer *)buffer toDestinationPixelBuffer:(__CVBuffer *)pixelBuffer
{
  v7 = VCPSignPostLog(self);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v25) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLScalingInference", "", &v25, 2u);
  }

  v12 = [(CNNMLScalerEspressoV2 *)self prepareInput:buffer withChannels:4];
  if (!v12)
  {
    inputsType = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
    v14 = [inputsType objectAtIndexedSubscript:0];
    unsignedIntValue = [v14 unsignedIntValue];

    v12 = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 espressoForward:[(VCPEspressoV2Data *)self->_inputData getData:unsignedIntValue]];
    if (!v12)
    {
      outputsSize = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 outputsSize];
      if ([outputsSize count])
      {
        modelEspressoV2 = self->_modelEspressoV2;
        if (modelEspressoV2)
        {
          objc_msgSend_outputs(modelEspressoV2);
          v21 = v25;
          v20 = v26;
          v28 = &v25;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);
          if (v20 != v21)
          {
            objc_msgSend_outputs(self->_modelEspressoV2);
            v16 = [(CNNMLScalerEspressoV2 *)self copyOutput:*v25 pixelbuffer:pixelBuffer];
            v28 = &v25;
            std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);
            if (!v16)
            {
              v23 = VCPSignPostLog(v22);
              v24 = v23;
              if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
              {
                LOWORD(v25) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v24, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADMLScalingInference", "", &v25, 2u);
              }

              v16 = 0;
            }

            goto LABEL_18;
          }
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = &v25;
          std::vector<VCPEspressoV2Data * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v28);
        }
      }

      v16 = 1;
LABEL_18:

      return v16;
    }
  }

  return v12;
}

- (int)configInput:(int)input
{
  inputsSize = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsSize];
  v6 = [inputsSize objectAtIndexedSubscript:0];
  unsignedIntValue = [v6 unsignedIntValue];

  if (unsignedIntValue != self->_inputHeight * input * self->_inputWidth)
  {
    return -50;
  }

  inputsType = [(VCPCNNModelEspressoV2 *)self->_modelEspressoV2 inputsType];
  v9 = [inputsType objectAtIndexedSubscript:0];
  unsignedIntValue2 = [v9 unsignedIntValue];

  v11 = [[VCPEspressoV2Data alloc] initWithTensorType:unsignedIntValue2 size:unsignedIntValue];
  inputData = self->_inputData;
  self->_inputData = v11;

  if (self->_inputData)
  {
    return 0;
  }

  else
  {
    return -108;
  }
}

- (int)prepareInput:(__CVBuffer *)input withChannels:(int)channels
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = VCPSignPostLog(self);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLScalingPrepareInput", "", buf, 2u);
  }

  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  if (channels != 4)
  {
    return -50;
  }

  inputWidth = self->_inputWidth;
  inputHeight = self->_inputHeight;
  pixelBuffer = input;
  unlockFlags = 1;
  if (input)
  {
    v15 = Height;
    v16 = CVPixelBufferLockBaseAddress(input, 1uLL);
    *buf = v16;
    if (!v16 || os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR) && (*v48 = 134218240, v49 = pixelBuffer, v50 = 1024, v51 = v16, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", v48, 0x12u), (v16 = *buf) == 0))
    {
      v36 = v8 - 1;
      v37 = v8;
      BaseAddress = CVPixelBufferGetBaseAddress(input);
      BytesPerRow = CVPixelBufferGetBytesPerRow(input);
      if (v15 >= 1)
      {
        v20 = 0;
        v43 = inputWidth * inputHeight;
        v44 = 0;
        v42 = 2 * inputWidth * inputHeight;
        v21 = 3 * inputWidth * inputHeight;
        v38 = v15 & 0x7FFFFFFF;
        v39 = BytesPerRow;
        do
        {
          v41 = v20;
          if (Width >= 1)
          {
            v22 = 0;
            v24 = v43;
            v23 = v44;
            v25 = v42;
            v26 = v21;
            do
            {
              LOBYTE(v19) = BaseAddress[v22 + 2];
              *&v19 = LODWORD(v19) / 255.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v23 atIndex:v19, v36, v37];
              LOBYTE(v27) = BaseAddress[v22 + 1];
              *&v28 = v27 / 255.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v24 atIndex:v28];
              LOBYTE(v29) = BaseAddress[v22];
              *&v30 = v29 / 255.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v25 atIndex:v30];
              LODWORD(v31) = 1.0;
              [(VCPEspressoV2Data *)self->_inputData setValueFP:v26 atIndex:v31];
              v22 += 4;
              ++v26;
              ++v25;
              ++v24;
              ++v23;
            }

            while (4 * Width != v22);
          }

          BaseAddress += v39;
          v20 = v41 + 1;
          v21 += Width;
          v42 += Width;
          v43 += Width;
          v44 += Width;
        }

        while (v41 + 1 != v38);
      }

      v32 = CVPixelBufferLock::Unlock(buf);
      v16 = v32;
      if (!v32)
      {
        v33 = VCPSignPostLog(v32);
        v34 = v33;
        if (v36 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *v48 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, v37, "VCPMADMLScalingPrepareInput", "", v48, 2u);
        }

        v16 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v16 = -50;
    *buf = -50;
  }

  if (pixelBuffer && !*buf && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v16;
}

- (int)copyOutput:(id)output pixelbuffer:(__CVBuffer *)pixelbuffer
{
  outputCopy = output;
  v7 = VCPSignPostLog(outputCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VCPMADMLScalingCopyOutput", "", buf, 2u);
  }

  Width = CVPixelBufferGetWidth(pixelbuffer);
  Height = CVPixelBufferGetHeight(pixelbuffer);
  outputWidth = self->_outputWidth;
  outputHeight = self->_outputHeight;
  pixelBuffer = pixelbuffer;
  unlockFlags = 1;
  if (pixelbuffer)
  {
    v16 = Height;
    v17 = CVPixelBufferLockBaseAddress(pixelbuffer, 1uLL);
    *buf = v17;
    if (v17)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(pixelbuffer);
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelbuffer);
      v20 = [outputCopy getData:2];
      if (v16 >= 1)
      {
        v21 = 0;
        v22 = v20 + 4 * outputWidth * outputHeight;
        v23 = v20 + 8 * outputWidth * outputHeight;
        v24 = v20 + 12 * outputWidth * outputHeight;
        v25 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v26 = 0;
            do
            {
              BaseAddress[v26 + 2] = (*(v20 + v26) * 255.0);
              BaseAddress[v26 + 1] = (*(v22 + v26) * 255.0);
              BaseAddress[v26] = (*(v23 + v26) * 255.0);
              BaseAddress[v26 + 3] = (*(v24 + v26) * 255.0);
              v26 += 4;
            }

            while (v25 != v26);
          }

          BaseAddress += BytesPerRow;
          ++v21;
          v20 += v25;
          v22 += v25;
          v23 += v25;
          v24 += v25;
        }

        while (v21 != (v16 & 0x7FFFFFFF));
      }

      v27 = CVPixelBufferLock::Unlock(buf);
      v17 = v27;
      if (!v27)
      {
        v28 = VCPSignPostLog(v27);
        v29 = v28;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
        {
          v31[0] = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v8, "VCPMADMLScalingCopyOutput", "", v31, 2u);
        }

        v17 = 0;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    v17 = -50;
    *buf = -50;
  }

  if (pixelBuffer && !*buf && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
  }

  return v17;
}

@end