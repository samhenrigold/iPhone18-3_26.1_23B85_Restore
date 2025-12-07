@interface ABPKPersonIDTracker
- (ABPKPersonIDTracker)init;
- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)portrait withImageRes:(CGSize)res;
- (int)runWithInput:(__CVBuffer *)input atTimeStamp:(double)stamp andOutput:(id)output;
@end

@implementation ABPKPersonIDTracker

- (ABPKPersonIDTracker)init
{
  v18.receiver = self;
  v18.super_class = ABPKPersonIDTracker;
  v2 = [(ABPKPersonIDTracker *)&v18 init];
  v4 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v5 = isANSTPersonTrackerSupportedOnThisDevice(v2, v3);
  if ((v5 & 1) == 0)
  {
    v12 = __ABPKLogSharedInstance(v5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " ABPKPersonIDTracker not supported on this device ", buf, 2u);
    }

    goto LABEL_11;
  }

  v6 = objc_alloc(MEMORY[0x277CE4A00]);
  v7 = objc_opt_new();
  v8 = [v6 initWithConfiguration:v7];
  anstAlgorithm = v4->_anstAlgorithm;
  v4->_anstAlgorithm = v8;

  v10 = v4->_anstAlgorithm;
  v16 = 0;
  LOBYTE(v6) = [(ANSTISPAlgorithm *)v10 prepareWithError:&v16];
  v11 = v16;
  v12 = v11;
  if ((v6 & 1) == 0)
  {
    v14 = __ABPKLogSharedInstance(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_ERROR, " Failed to initialize ANST algorithm for multi-person tracking ", buf, 2u);
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v13 = v4;
LABEL_12:

  return v13;
}

- (CGRect)_rotateBoundingBoxToPortrait:(CGRect)portrait withImageRes:(CGSize)res
{
  width = portrait.size.width;
  v5 = res.width * 0.5 - (portrait.origin.y - res.width * 0.5);
  v6 = res.height * 0.5 + portrait.origin.x - res.height * 0.5;
  v7 = v5 - portrait.size.height;
  height = portrait.size.height;
  v9 = width;
  result.size.height = v9;
  result.size.width = height;
  result.origin.y = v6;
  result.origin.x = v7;
  return result;
}

- (int)runWithInput:(__CVBuffer *)input atTimeStamp:(double)stamp andOutput:(id)output
{
  v56[1] = *MEMORY[0x277D85DE8];
  outputCopy = output;
  v50 = outputCopy;
  if (!input)
  {
    v11 = __ABPKLogSharedInstance(outputCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " Input image is nil ", buf, 2u);
    }

    goto LABEL_30;
  }

  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  PixelFormatType = CVPixelBufferGetPixelFormatType(input);
  if (Height > Width)
  {
    v11 = __ABPKLogSharedInstance(PixelFormatType);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " ABPKPersonIDTracker: Portrait image is not supported ", buf, 2u);
    }

LABEL_30:

LABEL_43:
    v44 = -6668;
    goto LABEL_44;
  }

  v12 = PixelFormatType;
  if (PixelFormatType != 32 && PixelFormatType != 875704438 && PixelFormatType != 1111970369)
  {
    v11 = __ABPKLogSharedInstance(PixelFormatType);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " ABPKPersonIDTracker: Input image is of invalid format ", buf, 2u);
    }

    goto LABEL_30;
  }

  pixelBufferOut = 0;
  v55 = *MEMORY[0x277CC4DE8];
  v56[0] = MEMORY[0x277CBEC10];
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  pixelBufferAttributes = v13;
  if (v12 != 1111970369)
  {
    if (v12 == 875704438)
    {
      v41 = __ABPKLogSharedInstance(v13);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v42 = " \t\t ABPKPersonIDTracker: Converting image format: YCbCr --> BGRA ";
    }

    else
    {
      v41 = __ABPKLogSharedInstance(v13);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v42 = " \t\t ABPKPersonIDTracker: Converting image format: ARGB --> BGRA ";
    }

    _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_DEBUG, v42, buf, 2u);
LABEL_38:

    v45 = CVPixelBufferCreate(0, Width, Height, 0x42475241u, pixelBufferAttributes, &pixelBufferOut);
    if (v45)
    {
      v46 = __ABPKLogSharedInstance(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = " ABPKPersonIDTracker: Could not create imageBGRA buffer ";
LABEL_41:
        _os_log_impl(&dword_23EDDC000, v46, OS_LOG_TYPE_ERROR, v47, buf, 2u);
      }
    }

    else if (v12 == 875704438)
    {
      v15 = convertFormatYCbCrToBGRA(input, &pixelBufferOut);
      if (!v15)
      {
        goto LABEL_16;
      }

      v46 = __ABPKLogSharedInstance(v15);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = " ABPKPersonIDTracker: Could not convert Format YCbCr to BGRA. ";
        goto LABEL_41;
      }
    }

    else
    {
      v15 = changeChannelsARGB(input, &pixelBufferOut);
      if (!v15)
      {
        goto LABEL_16;
      }

      v46 = __ABPKLogSharedInstance(v15);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v47 = " ABPKPersonIDTracker: changeChannelsARGB failed. ";
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  v14 = __ABPKLogSharedInstance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_DEBUG, " \t\t ABPKPersonIDTracker: Image is already BGRA type ", buf, 2u);
  }

  pixelBufferOut = input;
LABEL_16:
  v16 = __ABPKLogSharedInstance(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_DEBUG, " Input image is landscape ", buf, 2u);
  }

  anstAlgorithm = self->_anstAlgorithm;
  v51 = 0;
  v18 = [(ANSTISPAlgorithm *)anstAlgorithm resultForPixelBuffer:pixelBufferOut error:&v51];
  v19 = v51;
  v20 = v19;
  if (!v18 || v19)
  {
    v43 = __ABPKLogSharedInstance(v19);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v43, OS_LOG_TYPE_ERROR, " No objects found in this image ", buf, 2u);
    }

    goto LABEL_43;
  }

  v21 = [v18 detectedObjectsForCategory:*MEMORY[0x277CE49C8]];
  v22 = __ABPKLogSharedInstance(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v21 count];
    *buf = 134217984;
    v54 = v23;
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " ABPKPersonIDTracker: Full bodies found in the image: %lu ", buf, 0xCu);
  }

  for (i = 0; [v21 count] > i; ++i)
  {
    v25 = [ABPKTrackedObject alloc];
    v26 = [v21 objectAtIndexedSubscript:i];
    objectID = [v26 objectID];
    v28 = [v21 objectAtIndexedSubscript:i];
    category = [v28 category];
    v30 = [v21 objectAtIndexedSubscript:i];
    [v30 boundingBox];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [v21 objectAtIndexedSubscript:i];
    v40 = -[ABPKTrackedObject initWithObjectID:category:boundingBox:confidence:](v25, "initWithObjectID:category:boundingBox:confidence:", objectID, category, [v39 confidence], v32, v34, v36, v38);

    [v50 addObject:v40];
  }

  v44 = 0;
LABEL_44:

  return v44;
}

@end