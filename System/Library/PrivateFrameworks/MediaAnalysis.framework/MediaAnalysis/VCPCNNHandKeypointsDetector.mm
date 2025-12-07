@interface VCPCNNHandKeypointsDetector
+ (id)detector:(BOOL)detector sharedModel:(BOOL)model modelName:(id)name enableHandObject:(BOOL)object options:(id)options;
- (id).cxx_construct;
- (int)copyImage:(__CVBuffer *)image toData:(float *)data;
- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width box:(id)box;
- (int)cvtHeatmaps2Keypoints:(float *)keypoints outHeight:(int)height outWidth:(int)width inHeight:(int)inHeight inWidth:(int)inWidth outChannel:(int)channel keypoints:(CGPoint *)a9 keypointConfidence:(float *)self0 offset:(float)self1;
- (int)handKeypointsDetection:(__CVBuffer *)detection box:(id)box keypoints:(CGPoint)keypoints[21] keypointConfidence:(float)confidence[21] handHoldsObjectConfidence:(float *)objectConfidence;
@end

@implementation VCPCNNHandKeypointsDetector

+ (id)detector:(BOOL)detector sharedModel:(BOOL)model modelName:(id)name enableHandObject:(BOOL)object options:(id)options
{
  objectCopy = object;
  modelCopy = model;
  detectorCopy = detector;
  nameCopy = name;
  optionsCopy = options;
  v13 = [[VCPCNNHandKeypointsDetectorEspresso alloc] init:detectorCopy sharedModel:modelCopy modelName:nameCopy enableHandObject:objectCopy options:optionsCopy];

  return v13;
}

- (int)copyImage:(__CVBuffer *)image toData:(float *)data
{
  v7 = VCPSignPostLog(self);
  v8 = os_signpost_id_generate(v7);

  v10 = VCPSignPostLog(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "copyImageToBGRHandKeypointCallFromSPI", "", buf, 2u);
  }

  if (CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  pixelBuffer = image;
  unlockFlags = 1;
  if (image)
  {
    v14 = Height;
    v15 = CVPixelBufferLockBaseAddress(image, 1uLL);
    *buf = v15;
    if (v15)
    {
      v16 = v15;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [VCPImageConverter convertImage:yuvFrame:];
      }
    }

    else
    {
      BaseAddress = CVPixelBufferGetBaseAddress(image);
      BytesPerRow = CVPixelBufferGetBytesPerRow(image);
      bzero(data, 3 * 4 * Width * v14);
      if (v14 >= 1)
      {
        v20 = 0;
        v21 = &data[2 * v14 * Width];
        v22 = &data[v14 * Width];
        v23 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v24 = 0;
            v25 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v19) = BaseAddress[(v24 * 4)];
              *&v26 = (LODWORD(v19) / self->_std) - self->_mean;
              data[v24] = *&v26;
              LOBYTE(v26) = BaseAddress[(v24 * 4) + 1];
              *&v27 = (v26 / self->_std) - self->_mean;
              v22[v24] = *&v27;
              LOBYTE(v27) = BaseAddress[(v24 * 4) + 2];
              v19 = (v27 / self->_std) - self->_mean;
              v21[v24++] = v19;
              --v25;
            }

            while (v25);
          }

          BaseAddress += BytesPerRow;
          ++v20;
          v21 = (v21 + v23);
          v22 = (v22 + v23);
          data = (data + v23);
        }

        while (v20 != v14);
      }

      v28 = CVPixelBufferLock::Unlock(buf);
      v16 = v28;
      if (!v28)
      {
        v29 = VCPSignPostLog(v28);
        v30 = v29;
        if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
        {
          *v32 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v30, OS_SIGNPOST_INTERVAL_END, v8, "copyImageToBGRHandKeypointCallFromSPI", "", v32, 2u);
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
    [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
  }

  return v16;
}

- (int)createInput:(float *)input withBuffer:(__CVBuffer *)buffer cnnInputHeight:(int)height cnnInputWidth:(int)width box:(id)box
{
  v7 = *&width;
  v8 = *&height;
  boxCopy = box;
  v13 = boxCopy;
  if (input)
  {
    cf = 0;
    [boxCopy minX];
    v15 = v14;
    [v13 minY];
    v17 = v16;
    [v13 maxX];
    v19 = v18;
    [v13 minX];
    v21 = v20;
    [v13 maxY];
    v23 = v22;
    minY = [v13 minY];
    v26 = v25;
    v27 = VCPSignPostLog(minY);
    v28 = os_signpost_id_generate(v27);

    v30 = VCPSignPostLog(v29);
    v31 = v30;
    v32 = v15;
    v33 = v17;
    v34 = (v19 - v21);
    if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v28, "preProcessingHandKeypointCallFromSPI", "", buf, 2u);
    }

    v43.origin.x = v32;
    v43.origin.y = v33;
    v43.size.width = v34;
    v43.size.height = (v23 - v26);
    v35 = Scaler::ScaleCropped(&self->_scaler, v43, buffer, &cf, v7, v8, 1111970369);
    v36 = v35;
    if (!v35)
    {
      v37 = VCPSignPostLog(v35);
      v38 = v37;
      if (v28 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *v40 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v38, OS_SIGNPOST_INTERVAL_END, v28, "preProcessingHandKeypointCallFromSPI", "", v40, 2u);
      }

      v36 = [(VCPCNNHandKeypointsDetector *)self copyImage:cf toData:input];
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v36 = -108;
  }

  return v36;
}

- (int)cvtHeatmaps2Keypoints:(float *)keypoints outHeight:(int)height outWidth:(int)width inHeight:(int)inHeight inWidth:(int)inWidth outChannel:(int)channel keypoints:(CGPoint *)a9 keypointConfidence:(float *)self0 offset:(float)self1
{
  v18 = VCPSignPostLog(self);
  v19 = os_signpost_id_generate(v18);

  v21 = VCPSignPostLog(v20);
  v22 = v21;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "postProcessingHandKeypointCallFromSPI", "", buf, 2u);
  }

  v23 = 4294967246;
  if (height && width)
  {
    if (channel >= 1)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        if (height < 1)
        {
          v31 = 0.0;
          v28 = 1.1755e-38;
          v30 = 0.0;
          v27 = 0.0;
        }

        else
        {
          v26 = 0;
          v27 = 0.0;
          v28 = 1.1755e-38;
          v29 = v24;
          v30 = 0.0;
          v31 = 0.0;
          do
          {
            if (width >= 1)
            {
              v32 = 0;
              do
              {
                v23 = (v29 + v32);
                v33 = keypoints[v23];
                if (v33 > 0.1)
                {
                  if (v27 <= v33)
                  {
                    v27 = keypoints[v23];
                  }

                  v31 = v31 + (v32 * v33);
                  v30 = v30 + (v26 * v33);
                  v28 = v28 + v33;
                }

                ++v32;
              }

              while (width != v32);
            }

            ++v26;
            v29 += width;
          }

          while (v26 != height);
        }

        v34 = &a9[v25];
        v34->x = (((v31 / v28) + offset) * (inHeight / height));
        v34->y = (((v30 / v28) + offset) * (inWidth / width));
        confidence[v25++] = v27;
        v24 += width * height;
      }

      while (v25 != channel);
    }

    v35 = VCPSignPostLog(v23);
    v36 = v35;
    if (v19 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v35))
    {
      *v38 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v36, OS_SIGNPOST_INTERVAL_END, v19, "postProcessingHandKeypointCallFromSPI", "", v38, 2u);
    }

    LODWORD(v23) = 0;
  }

  return v23;
}

- (int)handKeypointsDetection:(__CVBuffer *)detection box:(id)box keypoints:(CGPoint)keypoints[21] keypointConfidence:(float)confidence[21] handHoldsObjectConfidence:(float *)objectConfidence
{
  boxCopy = box;
  v13 = objc_autoreleasePoolPush();
  *&self->_std = 1065353216;
  Width = CVPixelBufferGetWidth(detection);
  v22 = 0;
  v21 = 0;
  v15 = [(VCPCNNHandKeypointsDetector *)self getInputBuffer:CVPixelBufferGetHeight(detection) srcWidth:Width cnnInputHeight:&v22 cnnInputWidth:&v22 + 4 offset:&v21];
  v16 = [(VCPCNNHandKeypointsDetector *)self createInput:v15 withBuffer:detection cnnInputHeight:v22 cnnInputWidth:HIDWORD(v22) box:boxCopy];
  if (v16)
  {
    v18 = 4;
  }

  else
  {
    LODWORD(v17) = v21;
    LODWORD(objectConfidence) = [(VCPCNNHandKeypointsDetector *)self generateHandKeypoints:keypoints keypointConfidence:confidence offset:objectConfidence handHoldsObjectConfidence:v17];
    v18 = objectConfidence != 0;
  }

  objc_autoreleasePoolPop(v13);
  if ((v18 | 4) == 4)
  {
    objectConfidenceCopy = v16;
  }

  else
  {
    objectConfidenceCopy = objectConfidence;
  }

  return objectConfidenceCopy;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 8) = 0;
  return self;
}

@end