@interface SIRotation
- (BOOL)rotateAndCropImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (BOOL)rotateImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (CGRect)getCenterCropSrcSize:(CGSize)size dstSize:(CGSize)dstSize;
- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)degree;
- (__CVBuffer)_createCVPixelBufferWithResolution:(CGSize)resolution pixelFormat:(unsigned int)format;
- (__CVBuffer)rotateAndCropImage:(__CVBuffer *)image;
- (__CVBuffer)rotateImage:(__CVBuffer *)image;
- (id)getInputRotateOrientation;
- (id)initForRotationDegree:(int)degree resolution:(CGSize)resolution pixelFormat:(unsigned int)format algorithmKey:(id)key;
- (void)dealloc;
@end

@implementation SIRotation

- (CGRect)getCenterCropSrcSize:(CGSize)size dstSize:(CGSize)dstSize
{
  v4 = (size.width - dstSize.width) * 0.5;
  v5 = (size.height - dstSize.height) * 0.5;
  v6 = floor(v4 + 0.0);
  v7 = floor(v5 + 0.0);
  v8 = floor(size.width - v4 * 2.0);
  v9 = floor(size.height - v5 * 2.0);
  v10 = v6;
  v11 = v7;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)initForRotationDegree:(int)degree resolution:(CGSize)resolution pixelFormat:(unsigned int)format algorithmKey:(id)key
{
  v6 = *&format;
  height = resolution.height;
  width = resolution.width;
  v9 = *&degree;
  v25 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v21.receiver = self;
  v21.super_class = SIRotation;
  v12 = [(SIRotation *)&v21 init];
  v13 = v12;
  if (!v12)
  {
LABEL_6:
    v16 = 0;
    goto LABEL_10;
  }

  v12->_outputResolution.width = width;
  v12->_outputResolution.height = height;
  v12->_outputPixelFormat = v6;
  v12->_sessionRotate = [(SIRotation *)v12 _createRotationSessionByRotationDegree:v9];
  v13->_rotationDegree = v9;
  v14 = SIPixelBufferPoolCreate(v13->_outputResolution.width, v13->_outputResolution.height, v6, &v13->_pixelBufferCreatePool);
  if (v14)
  {
    v15 = __SceneIntelligenceLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v23 = 1025;
      v24 = 67;
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to create pixel buffer pool for rotation ***", buf, 0x12u);
    }

    goto LABEL_6;
  }

  *buf = 0;
  v17 = keyCopy;
  v18 = [v17 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v17, "length"), 0}];

  v19 = *buf;
  if (!v18)
  {
    v19 = 0;
  }

  v13->_algorithmKey = v19;
  v16 = v13;
LABEL_10:

  return v16;
}

- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)degree
{
  v11 = *MEMORY[0x277D85DE8];
  pixelRotationSessionOut = 0;
  v3 = VTPixelRotationSessionCreate(0, &pixelRotationSessionOut);
  if (!v3)
  {
    return pixelRotationSessionOut;
  }

  v4 = __SceneIntelligenceLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v9 = 1025;
    v10 = 75;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to create vtImageRotationSession ***", buf, 0x12u);
  }

  return 0;
}

- (BOOL)rotateImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
{
  v17 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    dictionary = __SceneIntelligenceLogSharedInstance(self);
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      v13 = 136380931;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v15 = 1025;
      v16 = 81;
      _os_log_impl(&dword_21DE0D000, dictionary, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Recieved null image ***", &v13, 0x12u);
    }

    goto LABEL_8;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  getInputRotateOrientation = [(SIRotation *)self getInputRotateOrientation];
  [dictionary setObject:getInputRotateOrientation forKeyedSubscript:*MEMORY[0x277CE2850]];

  v9 = VTPixelRotationSessionRotateImage(self->_sessionRotate, image, buffer);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = __SceneIntelligenceLogSharedInstance(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136380931;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v15 = 1025;
      v16 = 85;
      _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to perform rotation via pixel transfer ***", &v13, 0x12u);
    }

LABEL_8:
    v10 = 0;
  }

  return v10;
}

- (__CVBuffer)rotateImage:(__CVBuffer *)image
{
  imageCopy = image;
  v16 = *MEMORY[0x277D85DE8];
  if (image)
  {
    pixelBufferOut = 0;
    v5 = CVPixelBufferPoolCreatePixelBuffer(0, self->_pixelBufferCreatePool, &pixelBufferOut);
    if (v5)
    {
      dictionary = __SceneIntelligenceLogSharedInstance(v5);
      if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
        v14 = 1025;
        v15 = 98;
        _os_log_impl(&dword_21DE0D000, dictionary, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to create pixel buffer for rotation ***", buf, 0x12u);
      }
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      getInputRotateOrientation = [(SIRotation *)self getInputRotateOrientation];
      [dictionary setObject:getInputRotateOrientation forKeyedSubscript:*MEMORY[0x277CE2850]];

      v8 = VTPixelRotationSessionRotateImage(self->_sessionRotate, imageCopy, pixelBufferOut);
      if (!v8)
      {
        imageCopy = pixelBufferOut;
        goto LABEL_10;
      }

      v9 = __SceneIntelligenceLogSharedInstance(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
        v14 = 1025;
        v15 = 103;
        _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failure to perform rotation via pixel transfer ***", buf, 0x12u);
      }
    }

    imageCopy = 0;
LABEL_10:
  }

  return imageCopy;
}

- (__CVBuffer)rotateAndCropImage:(__CVBuffer *)image
{
  v16 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(image);
  [(SIRotation *)self getCenterCropSrcSize:Width dstSize:CVPixelBufferGetHeight(image), self->_outputResolution.width, self->_outputResolution.height];
  pixelBufferOut = 0;
  v6 = CVPixelBufferPoolCreatePixelBuffer(0, self->_pixelBufferCreatePool, &pixelBufferOut);
  if (v6)
  {
    v7 = __SceneIntelligenceLogSharedInstance(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v14 = 1025;
      v15 = 126;
      v8 = " %{private}s:%{private}d *** Failure to create pixel buffer for rotation ***";
LABEL_8:
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, v8, buf, 0x12u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v9 = VTPixelRotationSessionRotateSubImage();
  if (v9)
  {
    v7 = __SceneIntelligenceLogSharedInstance(v9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v13 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v14 = 1025;
      v15 = 129;
      v8 = " %{private}s:%{private}d *** Failure to perform rotation and crop via pixel transfer ***";
      goto LABEL_8;
    }

LABEL_9:

    return 0;
  }

  return pixelBufferOut;
}

- (BOOL)rotateAndCropImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
{
  v18 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(image);
  v7 = [(SIRotation *)self getCenterCropSrcSize:Width dstSize:CVPixelBufferGetHeight(image), self->_outputResolution.width, self->_outputResolution.height];
  if (v9 != self->_outputResolution.width || v8 != self->_outputResolution.height)
  {
    v10 = __SceneIntelligenceLogSharedInstance(v7);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      return 0;
    }

    v14 = 136380931;
    v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v16 = 1025;
    v17 = 145;
    v11 = " %{private}s:%{private}d *** Wrong crop size for rotation ***";
LABEL_6:
    _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, v11, &v14, 0x12u);
    goto LABEL_7;
  }

  v13 = VTPixelRotationSessionRotateSubImage();
  if (v13)
  {
    v10 = __SceneIntelligenceLogSharedInstance(v13);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v14 = 136380931;
    v15 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
    v16 = 1025;
    v17 = 151;
    v11 = " %{private}s:%{private}d *** Failure to perform rotation and crop via pixel transfer ***";
    goto LABEL_6;
  }

  return 1;
}

- (__CVBuffer)_createCVPixelBufferWithResolution:(CGSize)resolution pixelFormat:(unsigned int)format
{
  height = resolution.height;
  width = resolution.width;
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = *MEMORY[0x277CC4DE8];
  v18[0] = MEMORY[0x277CBEC10];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  pixelBufferOut = 0;
  v8 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, format, v7, &pixelBufferOut);
  if (v8)
  {
    v9 = __SceneIntelligenceLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v14 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIRotation.m";
      v15 = 1025;
      v16 = 166;
      _os_log_impl(&dword_21DE0D000, v9, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not create pixel buffer for rotation ***", buf, 0x12u);
    }

    v10 = 0;
  }

  else
  {
    v10 = pixelBufferOut;
  }

  return v10;
}

- (id)getInputRotateOrientation
{
  v3 = *MEMORY[0x277CE2A20];
  rotationDegree = self->_rotationDegree;
  switch(rotationDegree)
  {
    case 90:
      v5 = MEMORY[0x277CE2A38];
      break;
    case 270:
      v5 = MEMORY[0x277CE2A30];
      break;
    case 180:
      v5 = MEMORY[0x277CE2A28];
      break;
    default:
      goto LABEL_8;
  }

  v6 = *v5;

  v3 = v6;
LABEL_8:

  return v3;
}

- (void)dealloc
{
  VTPixelRotationSessionInvalidate(self->_sessionRotate);
  CFRelease(self->_sessionRotate);
  self->_sessionRotate = 0;
  CVPixelBufferPoolRelease(self->_pixelBufferCreatePool);
  v3.receiver = self;
  v3.super_class = SIRotation;
  [(SIRotation *)&v3 dealloc];
}

@end