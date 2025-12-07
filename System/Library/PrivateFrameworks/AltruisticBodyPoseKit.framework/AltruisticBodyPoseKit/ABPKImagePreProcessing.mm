@interface ABPKImagePreProcessing
- (ABPKImagePreProcessing)initWithPreProcessingParams:(id)params;
- (int)preprocessColorImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (int)preprocessData:(__CVBuffer *)data outputBuffer:(__CVBuffer *)buffer;
- (int)preprocessGrayscaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)logProfilingDetails;
@end

@implementation ABPKImagePreProcessing

- (ABPKImagePreProcessing)initWithPreProcessingParams:(id)params
{
  paramsCopy = params;
  v15.receiver = self;
  v15.super_class = ABPKImagePreProcessing;
  v5 = [(ABPKImagePreProcessing *)&v15 init];
  if (v5)
  {
    paddingParams = [paramsCopy paddingParams];
    paddingParameters = v5->_paddingParameters;
    v5->_paddingParameters = paddingParams;

    if (!v5->_paddingParameters)
    {
      v9 = __ABPKLogSharedInstance(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Padding parameters not specified. Cannot run image pre-processing pipeline ", v14, 2u);
      }
    }

    if (!VTPixelTransferSessionCreate(0, &v5->_vtPixelTransferSession))
    {
      v12 = v5;
      goto LABEL_14;
    }

    vtPixelTransferSession = v5->_vtPixelTransferSession;
    if (vtPixelTransferSession)
    {
      CFRelease(vtPixelTransferSession);
    }

    v5->_vtPixelTransferSession = 0;
    v11 = __ABPKLogSharedInstance(vtPixelTransferSession);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_ERROR, " Unable to create pixel transfer session for image downscaling ", v14, 2u);
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (void)dealloc
{
  vtPixelTransferSession = self->_vtPixelTransferSession;
  if (vtPixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(vtPixelTransferSession);
    CFRelease(self->_vtPixelTransferSession);
    self->_vtPixelTransferSession = 0;
  }

  v4.receiver = self;
  v4.super_class = ABPKImagePreProcessing;
  [(ABPKImagePreProcessing *)&v4 dealloc];
}

- (int)preprocessData:(__CVBuffer *)data outputBuffer:(__CVBuffer *)buffer
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(data);
  if (PixelFormatType <= 875704437)
  {
    if (PixelFormatType != 32 && PixelFormatType != 875704422)
    {
LABEL_13:
      v9 = __ABPKLogSharedInstance(PixelFormatType);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Input image is of invalid format ", v10, 2u);
      }

      return -6660;
    }
  }

  else if (PixelFormatType != 875704438 && PixelFormatType != 1111970369)
  {
    if (PixelFormatType == 1278226488)
    {

      return [(ABPKImagePreProcessing *)self preprocessGrayscaleImage:data outputBuffer:buffer];
    }

    goto LABEL_13;
  }

  return [(ABPKImagePreProcessing *)self preprocessColorImage:data outputBuffer:buffer];
}

- (int)preprocessGrayscaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
{
  v36[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v7 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v7, OS_LOG_TYPE_DEBUG, " \t\t Preprocessing GrayscaleImage ", buf, 2u);
  }

  v35 = *MEMORY[0x277CC4DE8];
  v36[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
  self->_startScale = CFAbsoluteTimeGetCurrent();
  v10 = __ABPKLogSharedInstance(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v10, OS_LOG_TYPE_DEBUG, " \t\t Scaling image ", buf, 2u);
  }

  [(ABPKImagePreProcessing *)self _startScaleSignpost];
  *buf = 0;
  width = [(ABPKPaddingParams *)self->_paddingParameters width];
  height = [(ABPKPaddingParams *)self->_paddingParameters height];
  v13 = *MEMORY[0x277CBECE8];
  v14 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x4C303038u, v8, buf);
  if (v14)
  {
    v15 = __ABPKLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v32 = 0;
      _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, " Could not create scaledImage buffer ", v32, 2u);
    }

    goto LABEL_9;
  }

  v16 = VTPixelTransferSessionTransferImage(self->_vtPixelTransferSession, image, *buf);
  _endScaleSignpost = [(ABPKImagePreProcessing *)self _endScaleSignpost];
  if (!v16)
  {
    self->_timeScale = CFAbsoluteTimeGetCurrent() - self->_startScale;
    self->_startPadding = CFAbsoluteTimeGetCurrent();
    v21 = __ABPKLogSharedInstance(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *v32 = 0;
      _os_log_impl(&dword_23EDDC000, v21, OS_LOG_TYPE_DEBUG, " \t\t Padding image ", v32, 2u);
    }

    [(ABPKImagePreProcessing *)self _startPaddingSignpost];
    *v32 = 0;
    Width = CVPixelBufferGetWidth(buffer);
    Height = CVPixelBufferGetHeight(buffer);
    v24 = CVPixelBufferCreate(v13, Width, Height, 0x4C303038u, v8, v32);
    if (v24)
    {
      v25 = __ABPKLogSharedInstance(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        v26 = " Could not create scaledImage buffer ";
LABEL_28:
        _os_log_impl(&dword_23EDDC000, v25, OS_LOG_TYPE_ERROR, v26, v31, 2u);
      }
    }

    else
    {
      v27 = padImage(*buf, v32, [(ABPKPaddingParams *)self->_paddingParameters offsetHeight], [(ABPKPaddingParams *)self->_paddingParameters offsetWidth]);
      if (!v27)
      {
        [(ABPKImagePreProcessing *)self _endPaddingSignpost];
        self->_timePadding = CFAbsoluteTimeGetCurrent() - self->_startPadding;
        v29 = __ABPKLogSharedInstance(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *v31 = 0;
          _os_log_impl(&dword_23EDDC000, v29, OS_LOG_TYPE_DEBUG, " Convert Format GrayScale To ARGB_BGRA ", v31, 2u);
        }

        self->_startConvertGrayScaleToBGRA = CFAbsoluteTimeGetCurrent();
        [(ABPKImagePreProcessing *)self _startGrayToBGRASignpost];
        v30 = convertFormatGrayScaleToARGB_BGRA(*v32, &bufferCopy);
        if (!v30)
        {
          [(ABPKImagePreProcessing *)self _endGrayToBGRASignpost];
          self->_timeConvertGrayScaleToBGRA = CFAbsoluteTimeGetCurrent() - self->_startConvertGrayScaleToBGRA;
          CVPixelBufferRelease(*buf);
          CVPixelBufferRelease(*v32);
          v16 = 0;
          goto LABEL_14;
        }

        v25 = __ABPKLogSharedInstance(v30);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        *v31 = 0;
        v26 = " Could not convert Grayscale to BGRA buffer ";
        goto LABEL_28;
      }

      v25 = __ABPKLogSharedInstance(v27);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *v31 = 0;
        v26 = " Could not pad buffer ";
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_9:
    v16 = -6660;
    goto LABEL_14;
  }

  v18 = __ABPKLogSharedInstance(_endScaleSignpost);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v32 = 0;
    _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_ERROR, " Could not scale Image ", v32, 2u);
  }

LABEL_14:
  return v16;
}

- (int)preprocessColorImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
{
  v39[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  PixelFormatType = CVPixelBufferGetPixelFormatType(image);
  v9 = PixelFormatType;
  if (PixelFormatType > 875704437)
  {
    if (PixelFormatType == 875704438)
    {
      goto LABEL_7;
    }

    v10 = 1111970369;
  }

  else
  {
    if (PixelFormatType == 32)
    {
      goto LABEL_7;
    }

    v10 = 875704422;
  }

  if (PixelFormatType == v10)
  {
LABEL_7:
    v11 = PixelFormatType == 1111970369;
    *v36 = 0;
    v38 = *MEMORY[0x277CC4DE8];
    v39[0] = MEMORY[0x277CBEC10];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v13 = v12;
    if (v11)
    {
      *v36 = image;
      goto LABEL_9;
    }

    if ((v9 & 0x76777267) == 0x34323066)
    {
      v22 = __ABPKLogSharedInstance(v12);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_DEBUG, " \t\t Converting image format: YCbCr --> BGRA ", buf, 2u);
      }

      self->_startConvertYCbCrToBGRA = CFAbsoluteTimeGetCurrent();
      [(ABPKImagePreProcessing *)self _startYCbCrToARGBSignpost];
    }

    else
    {
      v24 = __ABPKLogSharedInstance(v12);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v24, OS_LOG_TYPE_DEBUG, " \t\t Converting image format: ARGB --> BGRA ", buf, 2u);
      }

      self->_startConvertARGBToBGRA = CFAbsoluteTimeGetCurrent();
      [(ABPKImagePreProcessing *)self _startARGBToBGRASignpost];
    }

    v25 = CVPixelBufferCreate(0, Width, Height, 0x42475241u, v13, v36);
    if (v25)
    {
      v26 = __ABPKLogSharedInstance(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " Could not create imageBGRA buffer ", buf, 2u);
      }

LABEL_30:

      v21 = -6660;
      goto LABEL_31;
    }

    if ((v9 & 0x76777267) == 0x34323066)
    {
      v29 = convertFormatYCbCrToBGRA(image, v36);
      if (v29)
      {
        v26 = __ABPKLogSharedInstance(v29);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " Could not convert Format YCbCr to BGRA. ", buf, 2u);
        }

        goto LABEL_30;
      }

      [(ABPKImagePreProcessing *)self _endYCbCrToARGBSignpost];
      self->_timeConvertYCbCrToBGRA = CFAbsoluteTimeGetCurrent() - self->_startConvertYCbCrToBGRA;
    }

    else
    {
      v30 = changeChannelsARGB(image, v36);
      if (v30)
      {
        v26 = __ABPKLogSharedInstance(v30);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23EDDC000, v26, OS_LOG_TYPE_ERROR, " changeChannelsARGB failed. ", buf, 2u);
        }

        goto LABEL_30;
      }

      [(ABPKImagePreProcessing *)self _endARGBToBGRASignpost];
      self->_timeConvertARGBToBGRA = CFAbsoluteTimeGetCurrent() - self->_startConvertARGBToBGRA;
    }

LABEL_9:
    self->_startScale = CFAbsoluteTimeGetCurrent();
    v15 = __ABPKLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " \t\t Scaling image ", buf, 2u);
    }

    [(ABPKImagePreProcessing *)self _startScaleSignpost];
    *buf = 0;
    width = [(ABPKPaddingParams *)self->_paddingParameters width];
    height = [(ABPKPaddingParams *)self->_paddingParameters height];
    v18 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x42475241u, v13, buf);
    if (v18)
    {
      v19 = __ABPKLogSharedInstance(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v34 = 0;
        v20 = " Could not create scaledImage buffer ";
LABEL_14:
        _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, v20, v34, 2u);
      }
    }

    else
    {
      v21 = VTPixelTransferSessionTransferImage(self->_vtPixelTransferSession, *v36, *buf);
      _endScaleSignpost = [(ABPKImagePreProcessing *)self _endScaleSignpost];
      if (v21)
      {
        v19 = __ABPKLogSharedInstance(_endScaleSignpost);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v34 = 0;
          _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, " Could not scale Image ", v34, 2u);
        }

        goto LABEL_16;
      }

      self->_timeScale = CFAbsoluteTimeGetCurrent() - self->_startScale;
      self->_startPadding = CFAbsoluteTimeGetCurrent();
      v32 = __ABPKLogSharedInstance(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *v34 = 0;
        _os_log_impl(&dword_23EDDC000, v32, OS_LOG_TYPE_DEBUG, " \t\t Padding image ", v34, 2u);
      }

      [(ABPKImagePreProcessing *)self _startPaddingSignpost];
      v33 = padImage(*buf, &bufferCopy, [(ABPKPaddingParams *)self->_paddingParameters offsetHeight], [(ABPKPaddingParams *)self->_paddingParameters offsetWidth]);
      if (!v33)
      {
        [(ABPKImagePreProcessing *)self _endPaddingSignpost];
        self->_timePadding = CFAbsoluteTimeGetCurrent() - self->_startPadding;
        CVPixelBufferRelease(*buf);
        if (v9 != 1111970369)
        {
          CVPixelBufferRelease(*v36);
        }

        v21 = 0;
        goto LABEL_31;
      }

      v19 = __ABPKLogSharedInstance(v33);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v34 = 0;
        v20 = " Could not pad buffer ";
        goto LABEL_14;
      }
    }

    v21 = -6660;
LABEL_16:

LABEL_31:
    return v21;
  }

  v23 = __ABPKLogSharedInstance(PixelFormatType);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *v36 = 0;
    _os_log_impl(&dword_23EDDC000, v23, OS_LOG_TYPE_ERROR, " Input image is of invalid format ", v36, 2u);
  }

  return -6660;
}

- (void)logProfilingDetails
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __ABPKLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    timeConvertYCbCrToBGRA = self->_timeConvertYCbCrToBGRA;
    v20 = 134217984;
    v21 = timeConvertYCbCrToBGRA;
    _os_log_impl(&dword_23EDDC000, v3, OS_LOG_TYPE_DEBUG, " ConvertYCbCrToBGRA: %f ", &v20, 0xCu);
  }

  v6 = __ABPKLogSharedInstance(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    timeConvertARGBToBGRA = self->_timeConvertARGBToBGRA;
    v20 = 134217984;
    v21 = timeConvertARGBToBGRA;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " ConvertARGBToBGRA: %f ", &v20, 0xCu);
  }

  v9 = __ABPKLogSharedInstance(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    timeConvertGrayScaleToBGRA = self->_timeConvertGrayScaleToBGRA;
    v20 = 134217984;
    v21 = timeConvertGrayScaleToBGRA;
    _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_DEBUG, " ConvertGrayScaleToBGRA: %f ", &v20, 0xCu);
  }

  v12 = __ABPKLogSharedInstance(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    timeScale = self->_timeScale;
    v20 = 134217984;
    v21 = timeScale;
    _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_DEBUG, " Scale: %f ", &v20, 0xCu);
  }

  v15 = __ABPKLogSharedInstance(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    timePadding = self->_timePadding;
    v20 = 134217984;
    v21 = timePadding;
    _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_DEBUG, " Padding: %f ", &v20, 0xCu);
  }

  v18 = __ABPKLogSharedInstance(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = self->_timeConvertARGBToBGRA + self->_timeConvertYCbCrToBGRA + self->_timeConvertGrayScaleToBGRA + self->_timeScale + self->_timePadding;
    v20 = 134217984;
    v21 = v19;
    _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " Total: %f ", &v20, 0xCu);
  }
}

@end