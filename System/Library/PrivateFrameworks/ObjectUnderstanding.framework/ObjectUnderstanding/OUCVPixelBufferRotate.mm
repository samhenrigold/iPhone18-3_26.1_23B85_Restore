@interface OUCVPixelBufferRotate
- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)degree;
- (__CVBuffer)rotateImage:(__CVBuffer *)image;
- (id)initForRotationDegree:(int)degree resolution:(CGSize)resolution pixelFormat:(unsigned int)format;
- (void)dealloc;
@end

@implementation OUCVPixelBufferRotate

- (id)initForRotationDegree:(int)degree resolution:(CGSize)resolution pixelFormat:(unsigned int)format
{
  v5 = *&format;
  height = resolution.height;
  width = resolution.width;
  v8 = *&degree;
  v22[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = OUCVPixelBufferRotate;
  v9 = [(OUCVPixelBufferRotate *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_outputResolution.width = width;
    v9->_outputResolution.height = height;
    v9->_outputPixelFormat = v5;
    v9->_sessionRotate = [(OUCVPixelBufferRotate *)v9 _createRotationSessionByRotationDegree:v8];
    v21[0] = *MEMORY[0x277CC4E30];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
    v22[0] = v11;
    v21[1] = *MEMORY[0x277CC4EC8];
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_outputResolution.width];
    v22[1] = v12;
    v21[2] = *MEMORY[0x277CC4DD8];
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v10->_outputResolution.height];
    v21[3] = *MEMORY[0x277CC4DE8];
    v22[2] = v13;
    v22[3] = MEMORY[0x277CBEC10];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

    v15 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v14, &v10->_pixelBufferCreatePool);
    if (!v15)
    {
      v18 = v10;
      goto LABEL_8;
    }

    v17 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [OUCVPixelBufferRotate initForRotationDegree:resolution:pixelFormat:];
    }
  }

  v18 = 0;
LABEL_8:

  return v18;
}

- (OpaqueVTPixelRotationSession)_createRotationSessionByRotationDegree:(int)degree
{
  v3 = VTImageRotationSessionCreate();
  if (v3)
  {
    v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [OUCVPixelBufferRotate _createRotationSessionByRotationDegree:];
    }
  }

  return 0;
}

- (__CVBuffer)rotateImage:(__CVBuffer *)image
{
  if (!image)
  {
    return 0;
  }

  p_rotatePixelBuffer = &self->_rotatePixelBuffer;
  if (!self->_rotatePixelBuffer)
  {
    PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, self->_pixelBufferCreatePool, p_rotatePixelBuffer);
    if (PixelBuffer)
    {
      v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(PixelBuffer, v11);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [OUCVPixelBufferRotate rotateImage:];
      }

      goto LABEL_10;
    }
  }

  v6 = MEMORY[0x25F8948E0](self->_sessionRotate, image);
  if (v6)
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [OUCVPixelBufferRotate rotateImage:];
    }

LABEL_10:

    return 0;
  }

  return *p_rotatePixelBuffer;
}

- (void)dealloc
{
  MEMORY[0x25F8948D0](self->_sessionRotate, a2);
  CFRelease(self->_sessionRotate);
  self->_sessionRotate = 0;
  CVPixelBufferPoolRelease(self->_pixelBufferCreatePool);
  rotatePixelBuffer = self->_rotatePixelBuffer;
  if (rotatePixelBuffer)
  {
    CVPixelBufferRelease(rotatePixelBuffer);
    self->_rotatePixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = OUCVPixelBufferRotate;
  [(OUCVPixelBufferRotate *)&v4 dealloc];
}

@end