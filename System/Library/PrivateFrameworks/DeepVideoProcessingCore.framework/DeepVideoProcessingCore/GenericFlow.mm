@interface GenericFlow
- (BOOL)finishProcessing;
- (BOOL)processWithFirstFrame:(id)frame secondFrame:(id)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow streamingMode:(BOOL)mode error:(id *)error;
- (BOOL)startSessionWithFlowWidth:(unint64_t)width flowHeight:(unint64_t)height frameWidth:(unint64_t)frameWidth frameHeight:(unint64_t)frameHeight useHomographyInFlow:(BOOL)flow error:(id *)error;
- (GenericFlow)initWithOpticalFlow:(id)flow usage:(int64_t)usage rotation:(int64_t)rotation;
- (int64_t)bindWithMTLTextureFromDownscaledImage:(__CVBuffer *)image downscaledSecond:(__CVBuffer *)second forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow prevBackwardFlow:(__CVBuffer *)prevBackwardFlow depth:(__CVBuffer *)depth interleaveFactor:(unint64_t)factor;
- (int64_t)computeForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow;
- (int64_t)preProcessHomographyFirstFrame:(id)frame secondFrame:(id)secondFrame previousFlow:(__CVBuffer *)flow;
- (void)releaseInternalBuffers;
- (void)setPropertiesFromDefaults;
@end

@implementation GenericFlow

- (BOOL)startSessionWithFlowWidth:(unint64_t)width flowHeight:(unint64_t)height frameWidth:(unint64_t)frameWidth frameHeight:(unint64_t)frameHeight useHomographyInFlow:(BOOL)flow error:(id *)error
{
  self->_useHomographyInFlow = flow;
  *&self->_streamingMode = 257;
  [(VEOpticalFlowEstimator *)self->_opticalFlow updateFlowOnlyMode:self->_flowOnlyMode];
  if (!self->_useHomographyInFlow)
  {
    return 1;
  }

  v14 = [[HomographyFlow alloc] initWithDevice:self->_device commmandQueue:self->_commandQueue];
  homographyFlow = self->_homographyFlow;
  self->_homographyFlow = v14;

  if (!self->_homographyFlow || (v16 = [[ImageReg alloc] initWithSubmodules:self->_homographyFlow WithDevice:self->_device commandQueue:self->_commandQueue flowDerivedHomography:self->_streamingMode], pImageRegInstance = self->_pImageRegInstance, self->_pImageRegInstance = v16, pImageRegInstance, (v18 = self->_pImageRegInstance) == 0) || ([(ImageReg *)v18 setStreamingMode:self->_streamingMode], [self->_pImageRegInstance setRefreshCalculation:1], [(GenericFlow *)self setPropertiesFromDefaults], [(VEMetalBase *)self->_homographyFlow setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete], [(GenericFlow *)self releaseInternalBuffers], PixelBuffer = CreatePixelBuffer(width, height, 843264104), (self->_HomoFlow12 = PixelBuffer) == 0) || (v20 = CreatePixelBuffer(width, height, 843264104), (self->_HomoFlow21 = v20) == 0))
  {
    [GenericFlow startSessionWithFlowWidth:error flowHeight:&v27 frameWidth:? frameHeight:? useHomographyInFlow:? error:?];
    return v27;
  }

  if (!self->_streamingMode)
  {
    return 1;
  }

  v21 = 1;
  [(ImageProcessor_Ext *)self->_imageProcessor setUseHomography:1];
  v22 = [[PseudoDepthGenerator alloc] initWithDevice:self->_device commandQueue:self->_commandQueue];
  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  self->_pseudoDepthGenerator = v22;

  [(VEMetalBase *)self->_pseudoDepthGenerator setEnableGpuWaitForComplete:self->_EnableGpuWaitForComplete];
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator setPseudoDepth:1];
  self->_previousFlow = CreatePixelBuffer(width, height, 843264104);
  v24 = vcvts_n_f32_u64(frameWidth, 2uLL);
  v25 = vcvts_n_f32_u64(frameHeight, 2uLL);
  self->_previousDepth = CreatePixelBuffer(v24, v25, 843264104);
  [(PseudoDepthGenerator *)self->_pseudoDepthGenerator allocateFlowOnlyBufferWithFlowWidth:width flowHeight:height depthWidth:v24 depthHeight:v25 interleaveFactor:1];
  return v21;
}

- (void)setPropertiesFromDefaults
{
  keyExistsAndHasValidFormat = 1;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"EnableGpuWaitForComplete", @"com.apple.VirtualShutterAngle", &keyExistsAndHasValidFormat);
  self->_EnableGpuWaitForComplete = 0;
  if (keyExistsAndHasValidFormat)
  {
    self->_EnableGpuWaitForComplete = AppBooleanValue != 0;
  }
}

- (void)releaseInternalBuffers
{
  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  if (pseudoDepthGenerator)
  {
    [(PseudoDepthGenerator *)pseudoDepthGenerator releaseResources];
  }

  previousFlow = self->_previousFlow;
  if (previousFlow)
  {
    CVPixelBufferRelease(previousFlow);
  }

  previousDepth = self->_previousDepth;
  if (previousDepth)
  {
    CVPixelBufferRelease(previousDepth);
  }

  warpedImage = self->_warpedImage;
  if (warpedImage)
  {
    CVPixelBufferRelease(warpedImage);
  }

  HomoFlow12 = self->_HomoFlow12;
  if (HomoFlow12)
  {
    CVPixelBufferRelease(HomoFlow12);
  }

  HomoFlow21 = self->_HomoFlow21;
  if (HomoFlow21)
  {
    CVPixelBufferRelease(HomoFlow21);
  }

  self->_previousDepth = 0;
  *&self->_warpedImage = 0u;
  *&self->_HomoFlow21 = 0u;
  previousFlowTexture = self->_previousFlowTexture;
  self->_previousFlowTexture = 0;

  previousDepthTexture = self->_previousDepthTexture;
  self->_previousDepthTexture = 0;

  forwardFlowTexture = self->_forwardFlowTexture;
  self->_forwardFlowTexture = 0;

  backwardFlowTexture = self->_backwardFlowTexture;
  self->_backwardFlowTexture = 0;

  downscaleImage1Texture = self->_downscaleImage1Texture;
  self->_downscaleImage1Texture = 0;

  downscaleImage2Texture = self->_downscaleImage2Texture;
  self->_downscaleImage2Texture = 0;
}

- (BOOL)finishProcessing
{
  imageProcessor = self->_imageProcessor;
  self->_imageProcessor = 0;

  homographyFlow = self->_homographyFlow;
  self->_homographyFlow = 0;

  pImageRegInstance = self->_pImageRegInstance;
  self->_pImageRegInstance = 0;

  [(GenericFlow *)self releaseInternalBuffers];
  pseudoDepthGenerator = self->_pseudoDepthGenerator;
  if (pseudoDepthGenerator)
  {
    self->_pseudoDepthGenerator = 0;
  }

  return 1;
}

- (GenericFlow)initWithOpticalFlow:(id)flow usage:(int64_t)usage rotation:(int64_t)rotation
{
  flowCopy = flow;
  v21.receiver = self;
  v21.super_class = GenericFlow;
  v10 = [(GenericFlow *)&v21 init];
  v11 = v10;
  if (v10 && (objc_storeStrong(&v10->_opticalFlow, flow), v12 = MTLCreateSystemDefaultDevice(), device = v11->_device, v11->_device = v12, device, v14 = [(MTLDevice *)v11->_device newCommandQueue], commandQueue = v11->_commandQueue, v11->_commandQueue = v14, commandQueue, v16 = [[ImageProcessor_Ext alloc] initWithUsage:usage device:v11->_device commandQueue:v11->_commandQueue opticalFlowModeOnly:1], imageProcessor = v11->_imageProcessor, v11->_imageProcessor = v16, imageProcessor, (v18 = v11->_imageProcessor) != 0))
  {
    [(ImageProcessor_Ext *)v18 setFirstRotation:rotation];
    [(ImageProcessor_Ext *)v11->_imageProcessor setSecondRotation:rotation];
    v11->_flowOnlyMode = 1;
    v19 = v11;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)processWithFirstFrame:(id)frame secondFrame:(id)secondFrame forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow streamingMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  if (self->_useHomographyInFlow)
  {
    [self->_pImageRegInstance setStreamingMode:modeCopy];
    v16 = !modeCopy || !self->_streamingMode;
    [self->_pImageRegInstance setRefreshCalculation:v16];
    [(VEOpticalFlowEstimator *)self->_opticalFlow setStreamingMode:0];
    if (self->_streamingMode != modeCopy)
    {
      self->_isFirstFrameInStream = modeCopy;
      self->_streamingMode = modeCopy;
    }
  }

  else if ([(VEOpticalFlowEstimator *)self->_opticalFlow streamingMode]!= modeCopy)
  {
    [(VEOpticalFlowEstimator *)self->_opticalFlow setIsFirstFrameInStream:modeCopy];
    [(VEOpticalFlowEstimator *)self->_opticalFlow setStreamingMode:modeCopy];
  }

  v17 = -[ImageProcessor_Ext getPixelAttributesForBuffer:](self->_imageProcessor, "getPixelAttributesForBuffer:", [frameCopy buffer]);
  if (!v17)
  {
    v17 = [(ImageProcessor_Ext *)self->_imageProcessor preserveCMAttachmentFirstFrame:frameCopy secondFrame:secondFrameCopy];
    if (!v17)
    {
      OUTLINED_FUNCTION_0_0(732313708);
      v17 = -[ImageProcessor_Ext preProcessFirstInput:secondInput:waitForCompletion:](self->_imageProcessor, "preProcessFirstInput:secondInput:waitForCompletion:", [frameCopy buffer], objc_msgSend(secondFrameCopy, "buffer"), 0);
      if (!v17 && (!self->_useHomographyInFlow || (v17 = [(GenericFlow *)self preProcessHomographyFirstFrame:frameCopy secondFrame:secondFrameCopy previousFlow:self->_previousFlow]) == 0))
      {
        OUTLINED_FUNCTION_0_0(732313744);
        v17 = [(GenericFlow *)self computeForwardFlow:flow backwardFlow:backwardFlow];
        if (!v17)
        {
          v17 = [(ImageProcessor_Ext *)self->_imageProcessor restoreCMAttachmentToFirstFrame:frameCopy secondFrame:secondFrameCopy synthesizedFrame:0];
        }
      }
    }
  }

  v18 = v17;
  if (error && v17)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.OpticalFlow" code:v17 userInfo:0];
  }

  return v18 == 0;
}

- (int64_t)bindWithMTLTextureFromDownscaledImage:(__CVBuffer *)image downscaledSecond:(__CVBuffer *)second forwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow prevBackwardFlow:(__CVBuffer *)prevBackwardFlow depth:(__CVBuffer *)depth interleaveFactor:(unint64_t)factor
{
  result = 12;
  if (image && flow && backwardFlow && prevBackwardFlow && depth)
  {
    if (self->_streamingMode && self->_bindTexture && (v13 = checkTextureBoundBuffer(self->_forwardFlowTexture, flow), self->_bindTexture = v13))
    {
      return 0;
    }

    else
    {
      self->_bindTexture = 0;
      v14 = createRGBATextureFromCVPixelBuffer(image, self->_device);
      downscaleImage1Texture = self->_downscaleImage1Texture;
      self->_downscaleImage1Texture = v14;

      if (self->_downscaleImage1Texture && (createRGBATextureFromCVPixelBuffer(second, self->_device), v16 = objc_claimAutoreleasedReturnValue(), downscaleImage2Texture = self->_downscaleImage2Texture, self->_downscaleImage2Texture = v16, downscaleImage2Texture, self->_downscaleImage2Texture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v18, v19, v20, v21), v22 = objc_claimAutoreleasedReturnValue(), forwardFlowTexture = self->_forwardFlowTexture, self->_forwardFlowTexture = v22, forwardFlowTexture, self->_forwardFlowTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v24, v25, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), backwardFlowTexture = self->_backwardFlowTexture, self->_backwardFlowTexture = v28, backwardFlowTexture, self->_backwardFlowTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v30, v31, v32, v33), v34 = objc_claimAutoreleasedReturnValue(), previousDepthTexture = self->_previousDepthTexture, self->_previousDepthTexture = v34, previousDepthTexture, self->_previousDepthTexture) && (OUTLINED_FUNCTION_7(), createTexturesFromCVPixelBuffer(v36, v37, v38, v39), v40 = objc_claimAutoreleasedReturnValue(), previousFlowTexture = self->_previousFlowTexture, self->_previousFlowTexture = v40, previousFlowTexture, self->_previousFlowTexture))
      {
        result = 0;
        self->_bindTexture = 1;
      }

      else
      {
        return 9;
      }
    }
  }

  return result;
}

- (int64_t)preProcessHomographyFirstFrame:(id)frame secondFrame:(id)secondFrame previousFlow:(__CVBuffer *)flow
{
  frameCopy = frame;
  secondFrameCopy = secondFrame;
  v10 = secondFrameCopy;
  v11 = 12;
  if (frameCopy && secondFrameCopy)
  {
    if (!self->_useHomographyInFlow)
    {
LABEL_22:
      v11 = 0;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_0(732313724);
    Width = CVPixelBufferGetWidth([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
    Height = CVPixelBufferGetHeight([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
    if (self->_streamingMode)
    {
      v14 = Width;
      v15 = Height;
      if (self->_isFirstFrameInStream)
      {
        [(VEOpticalFlowEstimator *)self->_opticalFlow opticalFlowFrom:[(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst] to:[(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond] flow:flow];
        pImageRegInstance = self->_pImageRegInstance;
        [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB];
        [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB];
        if (pImageRegInstance)
        {
          objc_msgSend_extractHomographyFromFlow_depth_im1_im2_targetResolution_currentPairFlow_(pImageRegInstance, v14, v15);
          goto LABEL_14;
        }
      }

      else
      {
        v18 = self->_pImageRegInstance;
        [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB];
        [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB];
        if (v18)
        {
          objc_msgSend_extractHomographyFromFlow_depth_im1_im2_targetResolution_currentPairFlow_(v18, v14, v15);
LABEL_14:
          self->_result12 = v25;
          *self->_anon_50 = v26;
          *&self->_anon_50[16] = v27;
          *&self->_anon_50[32] = v28;
          v19 = *&self->_anon_50[32] > 0.3 && *&self->_anon_50[36] > 100;
          self->_homo12good = v19;
          v29 = __invert_f3(*&self->_result12.confidence);
          self->_result21.width = v29.columns[0].i32[2];
          *&self->_result21.confidence = v29.columns[0].i64[0];
          *&self->_anon_90[8] = v29.columns[1].i32[2];
          *self->_anon_90 = v29.columns[1].i64[0];
          *&self->_anon_90[24] = v29.columns[2].i32[2];
          *&self->_anon_90[16] = v29.columns[2].i64[0];
          *&self->_anon_90[32] = *&self->_anon_50[32];
          *&self->_anon_90[36] = *&self->_anon_50[36];
          *&self->_anon_90[44] = *&self->_anon_50[44];
          if (self->_homo12good)
          {
            if (!self->_warpedImage)
            {
              v20 = CVPixelBufferGetWidth([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
              v21 = CVPixelBufferGetHeight([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
              PixelBuffer = CreatePixelBuffer(v20, v21, [(ImageProcessor_Ext *)self->_imageProcessor RGBAFormat]);
              self->_warpedImage = PixelBuffer;
              if (!PixelBuffer)
              {
                v11 = 9;
                goto LABEL_23;
              }
            }

            v23 = [self->_pImageRegInstance preprocessFirst:[(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond:v25] warpedFirst:self->_warpedImage withHomography:*&self->_result21.confidence, *self->_anon_90, *&self->_anon_90[16]];
            if (v23)
            {
              v11 = v23;
              goto LABEL_23;
            }
          }

          OUTLINED_FUNCTION_0_0(732313728);
          goto LABEL_22;
        }
      }
    }

    else
    {
      v17 = self->_pImageRegInstance;
      [(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst];
      [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
      if (v17)
      {
        objc_msgSend_registerImage0_toImage1_Normalize_(v17);
        goto LABEL_14;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0;
    v26 = 0u;
    goto LABEL_14;
  }

LABEL_23:

  return v11;
}

- (int64_t)computeForwardFlow:(__CVBuffer *)flow backwardFlow:(__CVBuffer *)backwardFlow
{
  v4 = 12;
  if (flow && backwardFlow)
  {
    OUTLINED_FUNCTION_0_0(732313748);
    [(VEOpticalFlowEstimator *)self->_opticalFlow setInputRotation:0];
    useHomographyInFlow = self->_useHomographyInFlow;
    opticalFlow = self->_opticalFlow;
    rgbaFirst = [(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst];
    if (useHomographyInFlow)
    {
      if (!self->_homo12good)
      {
        [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
        OUTLINED_FUNCTION_2_7();
      }

      v10 = opticalFlow;
      v11 = rgbaFirst;
    }

    else
    {
      [(ImageProcessor_Ext *)self->_imageProcessor rgbaSecond];
      OUTLINED_FUNCTION_2_7();
    }

    [VEOpticalFlowEstimator opticalFlowsFrom:v10 to:"opticalFlowsFrom:to:forwardFlow:backwardFlow:" forwardFlow:v11 backwardFlow:?];
    OUTLINED_FUNCTION_0_0(732313752);
    if (self->_useHomographyInFlow && self->_homo12good)
    {
      OUTLINED_FUNCTION_0_0(732313788);
      CVPixelBufferGetWidth([(ImageProcessor_Ext *)self->_imageProcessor rgbaFirst]);
      CVPixelBufferGetWidth(flow);
      OUTLINED_FUNCTION_2_7();
      v13 = [v12 postprocessFlowWithhomographyMatrix21:? matrix12:? inputForwardFlow:? inputBackwardFlow:? outputForwardFlow:? outputBackwardFlow:? downscaleFacttor:?];
      if (!self->_streamingMode)
      {
        v4 = v13;
        goto LABEL_18;
      }

      [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledFirstRGB];
      [(ImageProcessor_Ext *)self->_imageProcessor packedDownscaledSecondRGB];
      OUTLINED_FUNCTION_2_7();
      v15 = [v14 bindWithMTLTextureFromDownscaledImage:1 downscaledSecond:? forwardFlow:? backwardFlow:? prevBackwardFlow:? depth:? interleaveFactor:?];
      if (v15)
      {
        return v15;
      }

      LODWORD(v16) = 1.0;
      v15 = [(PseudoDepthGenerator *)self->_pseudoDepthGenerator deriveDepthFromFlowDownscaleFirstImage:self->_downscaleImage1Texture downscaleSecondImage:self->_downscaleImage2Texture backwardFlow:self->_backwardFlowTexture forwardFlow:self->_forwardFlowTexture destination:self->_previousDepthTexture interleave_factor:1 timeScale:v16];
      if (v15)
      {
        return v15;
      }

      v4 = [(PseudoDepthGenerator *)self->_pseudoDepthGenerator saveBackwardFlow:self->_backwardFlowTexture prevBackwardFlow:self->_previousFlowTexture];
      if (!v4)
      {
        self->_isFirstFrameInStream = 0;
LABEL_18:
        OUTLINED_FUNCTION_0_0(732313792);
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

- (void)startSessionWithFlowWidth:(void *)result flowHeight:(_BYTE *)a2 frameWidth:frameHeight:useHomographyInFlow:error:.cold.1(void *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    result = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.OpticalFlow" code:9 userInfo:0];
    *v3 = result;
  }

  *a2 = 0;
  return result;
}

@end