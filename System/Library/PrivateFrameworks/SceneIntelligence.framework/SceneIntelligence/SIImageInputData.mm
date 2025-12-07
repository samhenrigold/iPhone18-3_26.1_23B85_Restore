@interface SIImageInputData
- (BOOL)copyDataTo:(id)to;
- (SIImageInputData)init;
- (__n128)setDeviceFromCamera:(__n128)camera;
- (__n128)setDeviceTransform:(__n128)transform;
- (__n128)setWorldFromDevice:(__n128)device;
@end

@implementation SIImageInputData

- (SIImageInputData)init
{
  v11.receiver = self;
  v11.super_class = SIImageInputData;
  v2 = [(SIImageInputData *)&v11 init];
  if (v2)
  {
    v3 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    inputImagePixelBuffer = v2->_inputImagePixelBuffer;
    v2->_inputImagePixelBuffer = v3;

    v5 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    inputNormalBuffer = v2->_inputNormalBuffer;
    v2->_inputNormalBuffer = v5;

    v7 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    inputDepthBuffer = v2->_inputDepthBuffer;
    v2->_inputDepthBuffer = v7;

    v2->_inputImageLuxValue = -1;
    v9 = v2;
  }

  return v2;
}

- (BOOL)copyDataTo:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = toCopy;
  if (self)
  {
    [(SIImageInputData *)self worldFromDevice];
    [v5 setWorldFromDevice:?];
    [(SIImageInputData *)self deviceTransform];
    [v5 setDeviceTransform:?];
    if (![v5 inputImageBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputImageBuffer](self, "inputImageBuffer"), objc_msgSend(v5, "inputImageBuffer")) & 1) == 0)
    {
      Width = CVPixelBufferGetWidth([(SIImageInputData *)self inputImageBuffer]);
      Height = CVPixelBufferGetHeight([(SIImageInputData *)self inputImageBuffer]);
      PixelFormatType = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputImageBuffer]);
      isIOSurfaceBacked = [(SIImageInputData *)self isIOSurfaceBacked];
      v10 = SIPixelFormatToStr(PixelFormatType);
      v11 = [v10 isEqualToString:@"444f"];
      inputImageBuffer = [(SIImageInputData *)self inputImageBuffer];
      if (v11)
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(inputImageBuffer, 0);
      }

      else
      {
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(inputImageBuffer);
      }

      v16 = BytesPerRowOfPlane;

      v17 = SICreateCVPixelBufferWithCustomStride(Width, Height, PixelFormatType, v16, isIOSurfaceBacked);
      [v5 setInputImageBuffer:v17];
      CVPixelBufferRelease(v17);
    }

    v18 = SIPixelBufferCopy(-[SIImageInputData inputImageBuffer](self, "inputImageBuffer"), [v5 inputImageBuffer]);
    if (!v18)
    {
      if ([(SIImageInputData *)self inputDepthBuffer])
      {
        if (![v5 inputDepthBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputDepthBuffer](self, "inputDepthBuffer"), objc_msgSend(v5, "inputDepthBuffer")) & 1) == 0)
        {
          v21 = CVPixelBufferGetWidth([(SIImageInputData *)self inputDepthBuffer]);
          v22 = CVPixelBufferGetHeight([(SIImageInputData *)self inputDepthBuffer]);
          v23 = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputDepthBuffer]);
          isIOSurfaceBacked2 = [(SIImageInputData *)self isIOSurfaceBacked];
          BytesPerRow = CVPixelBufferGetBytesPerRow([(SIImageInputData *)self inputDepthBuffer]);
          v26 = SICreateCVPixelBufferWithCustomStride(v21, v22, v23, BytesPerRow, isIOSurfaceBacked2);
          [v5 setInputDepthBuffer:v26];
          CVPixelBufferRelease(v26);
        }

        v27 = SIPixelBufferCopy(-[SIImageInputData inputDepthBuffer](self, "inputDepthBuffer"), [v5 inputDepthBuffer]);
        if (v27)
        {
          v14 = __SceneIntelligenceLogSharedInstance(v27);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v35 = 136380931;
          v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
          v37 = 1025;
          v38 = 88;
          v15 = " %{private}s:%{private}d *** Failed to copy image depth for SIImageInputData ***";
          goto LABEL_13;
        }
      }

      else
      {
        [v5 setInputDepthBuffer:0];
      }

      if ([(SIImageInputData *)self inputNormalBuffer])
      {
        if (![v5 inputNormalBuffer] || (SIPixelBufferHasSameAttr(-[SIImageInputData inputNormalBuffer](self, "inputNormalBuffer"), objc_msgSend(v5, "inputNormalBuffer")) & 1) == 0)
        {
          v28 = CVPixelBufferGetWidth([(SIImageInputData *)self inputNormalBuffer]);
          v29 = CVPixelBufferGetHeight([(SIImageInputData *)self inputNormalBuffer]);
          v30 = CVPixelBufferGetPixelFormatType([(SIImageInputData *)self inputNormalBuffer]);
          isIOSurfaceBacked3 = [(SIImageInputData *)self isIOSurfaceBacked];
          v32 = CVPixelBufferGetBytesPerRow([(SIImageInputData *)self inputNormalBuffer]);
          v33 = SICreateCVPixelBufferWithCustomStride(v28, v29, v30, v32, isIOSurfaceBacked3);
          [v5 setInputNormalBuffer:v33];
          CVPixelBufferRelease(v33);
        }

        v34 = SIPixelBufferCopy(-[SIImageInputData inputNormalBuffer](self, "inputNormalBuffer"), [v5 inputNormalBuffer]);
        if (v34)
        {
          v14 = __SceneIntelligenceLogSharedInstance(v34);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          v35 = 136380931;
          v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
          v37 = 1025;
          v38 = 108;
          v15 = " %{private}s:%{private}d *** Failed to copy image depth for SIImageInputData ***";
          goto LABEL_13;
        }
      }

      else
      {
        [v5 setInputNormalBuffer:0];
      }

      v19 = 1;
      goto LABEL_15;
    }

    v14 = __SceneIntelligenceLogSharedInstance(v18);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v35 = 136380931;
      v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
      v37 = 1025;
      v38 = 72;
      v15 = " %{private}s:%{private}d *** Failed to copy image input for SIImageInputData ***";
      goto LABEL_13;
    }
  }

  else
  {
    v14 = __SceneIntelligenceLogSharedInstance(toCopy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v35 = 136380931;
      v36 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIImageInputData.m";
      v37 = 1025;
      v38 = 52;
      v15 = " %{private}s:%{private}d *** Trying to copy a nil SIImageInputData ***";
LABEL_13:
      _os_log_impl(&dword_21DE0D000, v14, OS_LOG_TYPE_ERROR, v15, &v35, 0x12u);
    }
  }

LABEL_14:

  v19 = 0;
LABEL_15:

  return v19;
}

- (__n128)setDeviceTransform:(__n128)transform
{
  result[4] = a2;
  result[5] = transform;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (__n128)setWorldFromDevice:(__n128)device
{
  result[8] = a2;
  result[9] = device;
  result[10] = a4;
  result[11] = a5;
  return result;
}

- (__n128)setDeviceFromCamera:(__n128)camera
{
  result[12] = a2;
  result[13] = camera;
  result[14] = a4;
  result[15] = a5;
  return result;
}

@end