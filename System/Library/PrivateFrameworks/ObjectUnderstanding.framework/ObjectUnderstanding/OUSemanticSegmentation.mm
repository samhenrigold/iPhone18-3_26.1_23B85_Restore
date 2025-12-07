@interface OUSemanticSegmentation
- (BOOL)setupRotater:(id)rotater;
- (OUSemanticSegmentation)init;
- (__CVBuffer)generateSemanticOnWideCameraWithFrame:(id)frame;
@end

@implementation OUSemanticSegmentation

- (OUSemanticSegmentation)init
{
  v6.receiver = self;
  v6.super_class = OUSemanticSegmentation;
  v2 = [(OUSemanticSegmentation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->deviceOrientation = 0;
    *&v2->_initRotater = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)setupRotater:(id)rotater
{
  rotaterCopy = rotater;
  if (![rotaterCopy semanticLabelBuffer])
  {
    goto LABEL_15;
  }

  if (!self->_initRotater)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType([rotaterCopy colorBuffer]);
    v6 = CVPixelBufferGetPixelFormatType([rotaterCopy semanticLabelBuffer]);
    Width = CVPixelBufferGetWidth([rotaterCopy colorBuffer]);
    Height = CVPixelBufferGetHeight([rotaterCopy colorBuffer]);
    width = [[OUCVPixelBufferRotate alloc] initForRotationDegree:90 resolution:PixelFormatType pixelFormat:Height, Width];
    cvRotate90 = self->cvRotate90;
    self->cvRotate90 = width;

    v11 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:270 resolution:v6 pixelFormat:256.0, 192.0];
    cvRotate90r = self->cvRotate90r;
    self->cvRotate90r = v11;

    height = [[OUCVPixelBufferRotate alloc] initForRotationDegree:180 resolution:PixelFormatType pixelFormat:Width, Height];
    cvRotate180 = self->cvRotate180;
    self->cvRotate180 = height;

    v15 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:180 resolution:v6 pixelFormat:256.0, 192.0];
    cvRotate180r = self->cvRotate180r;
    self->cvRotate180r = v15;

    width2 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:270 resolution:PixelFormatType pixelFormat:Height, Width];
    cvRotate270 = self->cvRotate270;
    self->cvRotate270 = width2;

    v19 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:90 resolution:v6 pixelFormat:256.0, 192.0];
    cvRotate270r = self->cvRotate270r;
    self->cvRotate270r = v19;

    self->_initRotater = 1;
  }

  if (!self->_initSegModel || (deviceOrientation = self->deviceOrientation, deviceOrientation != [rotaterCopy deviceOrientation]))
  {
    self->deviceOrientation = [rotaterCopy deviceOrientation];
    v23 = objc_alloc_init(MEMORY[0x277D4B718]);
    semanticConfig = self->semanticConfig;
    self->semanticConfig = v23;

    deviceOrientation = [rotaterCopy deviceOrientation];
    if ((deviceOrientation - 3) < 2)
    {
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setNetworkModeEnum:1];
      v27 = objc_alloc(MEMORY[0x277D4B708]);
      v28 = 192.0;
      v29 = 256.0;
      goto LABEL_11;
    }

    if ((deviceOrientation - 1) <= 1)
    {
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setNetworkModeEnum:2];
      v27 = objc_alloc(MEMORY[0x277D4B708]);
      v28 = 256.0;
      v29 = 192.0;
LABEL_11:
      v30 = [v27 initWithOutputResolution:{v29, v28}];
      semResultData = self->semResultData;
      self->semResultData = v30;

      self->semanticModel = [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig networkModeEnum];
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setEngineType:1];
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setRunByE5RT:1];
      LODWORD(v32) = 1053609165;
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setUncertaintyThreshold:v32];
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setModelConfig:0];
      v33 = objc_alloc(MEMORY[0x277D4B700]);
      v22 = 1;
      LODWORD(v34) = 1053609165;
      v35 = [v33 initWithComputeEngine:1 andNetworkConfiguration:0 uncertaintyThreshold:v34];
      siSceneSegmentationAlgorithm = self->siSceneSegmentationAlgorithm;
      self->siSceneSegmentationAlgorithm = v35;

      self->_initSegModel = 1;
      goto LABEL_16;
    }

    v37 = _OULoggingGetOSLogForCategoryObjectUnderstanding(deviceOrientation, v26);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [OUSemanticSegmentation setupRotater:];
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v22 = 1;
LABEL_16:

  return v22;
}

- (__CVBuffer)generateSemanticOnWideCameraWithFrame:(id)frame
{
  frameCopy = frame;
  v5 = [(OUSemanticSegmentation *)self setupRotater:frameCopy];
  if (v5)
  {
    sceneColorBuffer = [frameCopy sceneColorBuffer];
    v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding(sceneColorBuffer, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
    }

    deviceOrientation = [frameCopy deviceOrientation];
    if (deviceOrientation > 2)
    {
      if (deviceOrientation == 3)
      {
        siSceneSegmentationAlgorithm = self->siSceneSegmentationAlgorithm;
        IOSurface = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData semantic]);
        v22 = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData confidence]);
        [(SISceneSegmentationAlgorithm *)siSceneSegmentationAlgorithm runWithInput:sceneColorBuffer output:IOSurface confidenceOutput:v22 uncertaintyOutput:CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData uncertainty]) resampleOutput:1 networkConfiguration:1];
        semantic = [(SISceneSegmentationData *)self->semResultData semantic];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
        }

        goto LABEL_23;
      }

      if (deviceOrientation == 4)
      {
        v11 = 32;
        v12 = 24;
        goto LABEL_18;
      }
    }

    else
    {
      if (deviceOrientation == 1)
      {
        v11 = 16;
        v12 = 8;
        goto LABEL_18;
      }

      if (deviceOrientation == 2)
      {
        v11 = 48;
        v12 = 40;
LABEL_18:
        v13 = *(&self->super.isa + v12);
        v15 = *(&self->super.isa + v11);
        v16 = [v13 rotateImage:sceneColorBuffer];
        v17 = self->siSceneSegmentationAlgorithm;
        v18 = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData semantic]);
        v19 = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData confidence]);
        [(SISceneSegmentationAlgorithm *)v17 runWithInput:v16 output:v18 confidenceOutput:v19 uncertaintyOutput:CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData uncertainty]) resampleOutput:1 networkConfiguration:self->semanticModel];
        semantic = [v15 rotateImage:{-[SISceneSegmentationData semantic](self->semResultData, "semantic")}];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          _os_log_impl(&dword_25D1DB000, v9, OS_LOG_TYPE_INFO, "Generating semantic over wide (rotation) camera end", v24, 2u);
        }

        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
    }

    semantic = 0;
LABEL_23:
    v13 = v9;
    goto LABEL_24;
  }

  v13 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v5, v6);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
  }

  semantic = 0;
LABEL_24:

  return semantic;
}

@end