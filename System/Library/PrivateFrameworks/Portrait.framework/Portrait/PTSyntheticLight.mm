@interface PTSyntheticLight
- (PTSyntheticLight)initWithMetalContext:(id)context msrColorPyramid:(id)pyramid colorSize:(id *)size prewarmOnly:(BOOL)only sharedResources:(id)resources;
- (id)debugTextures;
- (void)dealloc;
- (void)estimateLightIntensity:(id)intensity relightStrength:(float)strength;
- (void)estimateLightIntensityWithFaceRects:(PTSyntheticLight *)self inColor:(SEL)color numberOfFaceRects:transform:humanDetections:asyncWork:;
- (void)interpolateLightIntensity:(float)intensity;
- (void)updateSubjectRelighting:(uint64_t)relighting inLuma:(void *)luma inChroma:(void *)chroma inFaceRects:(uint64_t)rects runOnAsyncCommandQueue:(int)queue transform:(__int128 *)transform dependentCommandBuffer:(void *)buffer;
@end

@implementation PTSyntheticLight

- (PTSyntheticLight)initWithMetalContext:(id)context msrColorPyramid:(id)pyramid colorSize:(id *)size prewarmOnly:(BOOL)only sharedResources:(id)resources
{
  onlyCopy = only;
  v81[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  pyramidCopy = pyramid;
  resourcesCopy = resources;
  v79.receiver = self;
  v79.super_class = PTSyntheticLight;
  v15 = [(PTSyntheticLight *)&v79 init];
  v16 = v15;
  v17 = v15;
  if (!v15)
  {
    goto LABEL_40;
  }

  objc_storeStrong(&v15->_mainMetalContext, context);
  v18 = [contextCopy copy];
  asyncMetalContext = v17->_asyncMetalContext;
  v17->_asyncMetalContext = v18;

  v20 = objc_msgSend_device(v17->_asyncMetalContext);
  newCommandQueue = [v20 newCommandQueue];
  [(PTMetalContext *)v17->_asyncMetalContext setCommandQueue:newCommandQueue];

  commandQueue = [(PTMetalContext *)v17->_asyncMetalContext commandQueue];
  v23 = commandQueue == 0;

  if (v23)
  {
    v32 = _PTLogSystem(v24);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  effectUtil = [resourcesCopy effectUtil];
  effectUtil = v17->_effectUtil;
  v17->_effectUtil = effectUtil;

  objc_storeStrong(&v16->_msrColorPyramid, pyramid);
  v17->_config.firstFrame = 1;
  *&v17->_config.framesSinceLightEstimate = 0x1E00000000;
  v17->_config.emaCoefficient = 0.3;
  v17->_subjectRelightingRunning = 0;
  v27 = [contextCopy computePipelineStateFor:@"lightEstimation" withConstants:0];
  lightEstimation = v17->_lightEstimation;
  v17->_lightEstimation = v27;

  if (!v17->_lightEstimation)
  {
    v32 = _PTLogSystem(v29);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  if (onlyCopy)
  {
    p_personSemanticsNetwork = &v17->_personSemanticsNetwork;
    personSemanticsNetwork = v17->_personSemanticsNetwork;
    v17->_personSemanticsNetwork = 0;
  }

  else
  {
    v33 = [[PTPersonSemanticsNetwork alloc] initWithMetalContext:contextCopy sharedResources:resourcesCopy];
    p_personSemanticsNetwork = &v17->_personSemanticsNetwork;
    v34 = v17->_personSemanticsNetwork;
    v17->_personSemanticsNetwork = v33;

    if (!v17->_personSemanticsNetwork)
    {
      v32 = _PTLogSystem(v35);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
      }

      goto LABEL_25;
    }
  }

  v36 = [PTSubjectRelighting alloc];
  effectUtil2 = [resourcesCopy effectUtil];
  v38 = [(PTSubjectRelighting *)v36 initWithMetalContext:contextCopy effectUtil:effectUtil2 prewarmOnly:onlyCopy];
  subjectRelighting = v17->_subjectRelighting;
  v17->_subjectRelighting = v38;

  if (!v17->_subjectRelighting)
  {
    v32 = _PTLogSystem(v40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

    goto LABEL_25;
  }

  if (!onlyCopy)
  {
    faceAttributesNetwork = [resourcesCopy faceAttributesNetwork];
    faceAttributesNetwork = v17->_faceAttributesNetwork;
    v17->_faceAttributesNetwork = faceAttributesNetwork;

    v44 = objc_msgSend_device(contextCopy);
    v45 = [v44 newBufferWithLength:64 options:0];
    lightEstimationBuffer = v17->_lightEstimationBuffer;
    v17->_lightEstimationBuffer = v45;

    targetRGBA = [pyramidCopy targetRGBA];
    width = [targetRGBA width];
    targetRGBA2 = [pyramidCopy targetRGBA];
    height = [targetRGBA2 height];
    v51 = *MEMORY[0x277CC4D60];
    v80[0] = *MEMORY[0x277CC4DE8];
    v80[1] = v51;
    v81[0] = MEMORY[0x277CBEC10];
    v81[1] = &unk_2837F3118;
    v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
    LODWORD(width) = CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x42475241u, v52, &v16->_rgbaPixelBufferCopy);

    if (!width)
    {
      v54 = MEMORY[0x277CD7058];
      Width = CVPixelBufferGetWidth(v16->_rgbaPixelBufferCopy);
      v56 = [v54 texture2DDescriptorWithPixelFormat:81 width:Width height:CVPixelBufferGetHeight(v16->_rgbaPixelBufferCopy) mipmapped:0];
      [v56 setUsage:{+[PTPixelBufferUtil getNoConcurrentAccessHint:](PTPixelBufferUtil, "getNoConcurrentAccessHint:", v16->_rgbaPixelBufferCopy) | 3}];
      v57 = objc_msgSend_device(contextCopy);
      v58 = [v57 newTextureWithDescriptor:v56 iosurface:CVPixelBufferGetIOSurface(v16->_rgbaPixelBufferCopy) plane:0];
      rgbaTextureCopy = v17->_rgbaTextureCopy;
      v17->_rgbaTextureCopy = v58;

      if (v17->_rgbaTextureCopy)
      {
        textureUtil = [contextCopy textureUtil];
        v62 = [textureUtil createWithWidth:size->var0 >> 1 height:size->var1 >> 1 pixelFormat:10];
        quarterSizeLumaCopy = v17->_quarterSizeLumaCopy;
        v17->_quarterSizeLumaCopy = v62;

        if (v17->_quarterSizeLumaCopy)
        {
          textureUtil2 = [contextCopy textureUtil];
          v66 = [textureUtil2 createWithWidth:size->var0 >> 2 height:size->var1 >> 2 pixelFormat:30];
          quarterSizeChromaCopy = v17->_quarterSizeChromaCopy;
          v17->_quarterSizeChromaCopy = v66;

          if (v17->_quarterSizeChromaCopy)
          {
            textureUtil3 = [contextCopy textureUtil];
            inRGBA = [*p_personSemanticsNetwork inRGBA];
            width2 = [inRGBA width];
            inRGBA2 = [*p_personSemanticsNetwork inRGBA];
            v73 = [textureUtil3 createWithWidth:width2 height:objc_msgSend(inRGBA2 pixelFormat:"height"), 71];
            skinMaskRGBA = v17->_skinMaskRGBA;
            v17->_skinMaskRGBA = v73;

            if (v17->_skinMaskRGBA)
            {

              goto LABEL_15;
            }

            v76 = _PTLogSystem(v75);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
            }
          }

          else
          {
            v76 = _PTLogSystem(v68);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
            }
          }
        }

        else
        {
          v76 = _PTLogSystem(v64);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
          }
        }
      }

      else
      {
        v76 = _PTLogSystem(v60);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
        }
      }

LABEL_40:
      v41 = 0;
      goto LABEL_41;
    }

    v32 = _PTLogSystem(v53);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [PTSyntheticLight initWithMetalContext:msrColorPyramid:colorSize:prewarmOnly:sharedResources:];
    }

LABEL_25:

    goto LABEL_40;
  }

LABEL_15:
  v41 = v17;
LABEL_41:

  return v41;
}

- (void)dealloc
{
  rgbaPixelBufferCopy = self->_rgbaPixelBufferCopy;
  if (rgbaPixelBufferCopy)
  {
    CVPixelBufferRelease(rgbaPixelBufferCopy);
  }

  v4.receiver = self;
  v4.super_class = PTSyntheticLight;
  [(PTSyntheticLight *)&v4 dealloc];
}

- (void)updateSubjectRelighting:(uint64_t)relighting inLuma:(void *)luma inChroma:(void *)chroma inFaceRects:(uint64_t)rects runOnAsyncCommandQueue:(int)queue transform:(__int128 *)transform dependentCommandBuffer:(void *)buffer
{
  lumaCopy = luma;
  chromaCopy = chroma;
  [buffer waitUntilScheduled];
  v16 = transform[1];
  v36 = *transform;
  v37 = v16;
  v38 = transform[2];
  v17 = [PTUtil orientationFromTransform:&v36 inverse:1];
  kdebug_trace();
  v18 = 16;
  if (queue)
  {
    v18 = 24;
  }

  v19 = *(self + v18);
  [*(self + 32) executeNetwork:v19];
  commandBuffer = [v19 commandBuffer];

  if (!commandBuffer)
  {
    v22 = _PTLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PTEspressoGenericExecutor convertBindInput:];
    }
  }

  commandBuffer2 = [v19 commandBuffer];
  [commandBuffer2 setLabel:@"PTSyntheticLight updateSubjectRelighting"];

  v24 = *(rects + 64);
  v25 = transform[1];
  v36 = *transform;
  v37 = v25;
  v38 = transform[2];
  v26 = [PTEffectUtil faceRectsForVision:rects numberOfFaceRects:v24 transform:&v36];
  v27 = [*(self + 104) faceLandmarksInPixelBuffer:relighting faceRects:v26 orientation:v17];
  v28 = *(self + 96);
  *(self + 96) = v27;

  v29 = *(self + 88);
  commandBuffer3 = [v19 commandBuffer];
  outSkinMask = [*(self + 32) outSkinMask];
  outPersonMask = [*(self + 32) outPersonMask];
  v33 = *(self + 96);
  v34 = transform[1];
  v36 = *transform;
  v37 = v34;
  v38 = transform[2];
  [v29 runSRLForLivePhotosWithInputBuffer:commandBuffer3 lumaTexture:lumaCopy chromaTexture:chromaCopy skinMaskTexture:outSkinMask personMaskTexture:outPersonMask skinToneClassification:v33 validROI:0.0 expBias:0.0 faceExpRatio:1.0 transform:{1.0, 0.0, 0.0, &v36}];

  if (queue)
  {
    [v19 commitAndWaitUntilCompleted];
  }

  else
  {
    [v19 commit];
  }

  [v19 commit];
  kdebug_trace();
}

- (void)estimateLightIntensityWithFaceRects:(PTSyntheticLight *)self inColor:(SEL)color numberOfFaceRects:transform:humanDetections:asyncWork:
{
  v8 = v7;
  v9 = v6;
  v48 = v5;
  v49 = v2;
  v10 = v4;
  v12 = v3;
  v13 = v9;
  v50 = v12;
  v51 = v8;
  asYUV = [v12 asYUV];
  os_unfair_lock_lock(&sSRLAsyncLock);
  LOBYTE(v12) = self->_subjectRelightingRunning;
  os_unfair_lock_unlock(&sSRLAsyncLock);
  if ((v12 & 1) == 0 && (self->_config.firstFrame || v10 >= 1 && self->_config.framesSinceLightEstimate >= self->_config.lightEstimateFrequency))
  {
    v14 = 0;
    v15 = 0;
    v16 = 64;
    while (v14 < [v13 detectionsRawCount])
    {
      v15 |= fabsf(fmodf(*([v13 detectionsRaw] + v16) + 180.0, 360.0) + -180.0) < 60.0;
      ++v14;
      v16 += 144;
    }

    if (((v10 > 0) & v15) != 0)
    {
      v66 = 0;
      v67 = &v66;
      v68 = 0x8012000000;
      v69 = __Block_byref_object_copy__0;
      v70 = __Block_byref_object_dispose__0;
      v71 = "";
      v17 = v49[1];
      v72 = *v49;
      v73 = v17;
      v18 = v49[3];
      v74 = v49[2];
      v75 = v18;
      v76 = v10;
      commandBuffer = [(PTMetalContext *)self->_mainMetalContext commandBuffer];

      if (!commandBuffer)
      {
        v21 = _PTLogSystem(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [PTEspressoGenericExecutor convertBindInput:];
        }
      }

      commandBuffer2 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      [commandBuffer2 setLabel:@"PTSyntheticLight estimateLightIntensityWithFaceRects"];

      textureUtil = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer3 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      targetRGBA = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
      inRGBA = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork inRGBA];
      [textureUtil copy:commandBuffer3 inTex:targetRGBA outTex:inRGBA];

      self->_config.framesSinceLightEstimate = 0;
      textureUtil2 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer4 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      targetRGBA2 = [(PTMSRResize *)self->_msrColorPyramid targetRGBA];
      [textureUtil2 copy:commandBuffer4 inTex:targetRGBA2 outTex:self->_rgbaTextureCopy];

      textureUtil3 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer5 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      texLuma = [asYUV texLuma];
      [textureUtil3 copy:commandBuffer5 inTex:texLuma outTex:self->_quarterSizeLumaCopy];

      textureUtil4 = [(PTMetalContext *)self->_mainMetalContext textureUtil];
      commandBuffer6 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      texChroma = [asYUV texChroma];
      [textureUtil4 copy:commandBuffer6 inTex:texChroma outTex:self->_quarterSizeChromaCopy];

      commandBuffer7 = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      [(PTMetalContext *)self->_mainMetalContext commit];
      if (self->_config.firstFrame || sPTEffectDisableAsyncWork == 1)
      {
        self->_subjectRelightingRunning = 0;
        v37 = *(v67 + 4);
        v38 = *(v67 + 5);
        v39 = *(v67 + 7);
        v64 = *(v67 + 6);
        v65 = v39;
        rgbaPixelBufferCopy = self->_rgbaPixelBufferCopy;
        quarterSizeLumaCopy = self->_quarterSizeLumaCopy;
        quarterSizeChromaCopy = self->_quarterSizeChromaCopy;
        v62 = v37;
        v63 = v38;
        v43 = *(v67 + 3);
        v44 = v48[1];
        v60[0] = *v48;
        v60[1] = v44;
        v60[2] = v48[2];
        *location = v43;
        [(PTSyntheticLight *)self updateSubjectRelighting:rgbaPixelBufferCopy inLuma:quarterSizeLumaCopy inChroma:quarterSizeChromaCopy inFaceRects:location runOnAsyncCommandQueue:0 transform:v60 dependentCommandBuffer:commandBuffer7];
      }

      else
      {
        v45 = self->_rgbaPixelBufferCopy;
        CVPixelBufferRetain(v45);
        self->_subjectRelightingRunning = 1;
        objc_initWeak(location, self);
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __118__PTSyntheticLight_estimateLightIntensityWithFaceRects_inColor_numberOfFaceRects_transform_humanDetections_asyncWork___block_invoke;
        v53[3] = &unk_278523338;
        objc_copyWeak(v56, location);
        v56[1] = v45;
        v55 = &v66;
        v46 = v48[1];
        v57 = *v48;
        v58 = v46;
        v59 = v48[2];
        v54 = commandBuffer7;
        v47 = MEMORY[0x22AA50020](v53);
        [v51 addObject:v47];

        objc_destroyWeak(v56);
        objc_destroyWeak(location);
      }

      _Block_object_dispose(&v66, 8);
    }
  }
}

void __118__PTSyntheticLight_estimateLightIntensityWithFaceRects_inColor_numberOfFaceRects_transform_humanDetections_asyncWork___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 8);
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[7];
    v15[3] = v5[6];
    v15[4] = v8;
    v9 = *(a1 + 56);
    v15[1] = v6;
    v15[2] = v7;
    v10 = v5[3];
    v11 = WeakRetained[17];
    v12 = WeakRetained[18];
    v13 = *(a1 + 80);
    v14[0] = *(a1 + 64);
    v14[1] = v13;
    v14[2] = *(a1 + 96);
    v15[0] = v10;
    [WeakRetained updateSubjectRelighting:v9 inLuma:v11 inChroma:v12 inFaceRects:v15 runOnAsyncCommandQueue:1 transform:v14 dependentCommandBuffer:v4];
    os_unfair_lock_lock(&sSRLAsyncLock);
    v3[112] = 0;
    os_unfair_lock_unlock(&sSRLAsyncLock);
  }

  CVPixelBufferRelease(*(a1 + 56));
}

- (void)interpolateLightIntensity:(float)intensity
{
  os_unfair_lock_lock(&sSRLAsyncLock);
  subjectRelightingRunning = self->_subjectRelightingRunning;
  os_unfair_lock_unlock(&sSRLAsyncLock);
  if (!subjectRelightingRunning)
  {
    framesSinceLightEstimate = self->_config.framesSinceLightEstimate;
    if (framesSinceLightEstimate < self->_config.lightEstimateFrequency)
    {
      commandBuffer = [(PTMetalContext *)self->_mainMetalContext commandBuffer];
      *&v8 = intensity;
      [(PTSyntheticLight *)self estimateLightIntensity:commandBuffer relightStrength:v8];

      framesSinceLightEstimate = self->_config.framesSinceLightEstimate;
    }

    self->_config.firstFrame = 0;
    self->_config.framesSinceLightEstimate = framesSinceLightEstimate + 1;
  }
}

- (void)estimateLightIntensity:(id)intensity relightStrength:(float)strength
{
  intensityCopy = intensity;
  v7 = intensityCopy;
  v8 = (strength * 0.6) + 0.5;
  if (!self->_config.firstFrame && v8 != self->_lastRelightStrength)
  {
    self->_config.firstFrame = 1;
    self->_config.framesSinceLightEstimate = 0;
  }

  computeCommandEncoder = [intensityCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_lightEstimation];
  srlV2CoeffsBuffer = [(PTSubjectRelighting *)self->_subjectRelighting srlV2CoeffsBuffer];
  [computeCommandEncoder setBuffer:srlV2CoeffsBuffer offset:0 atIndex:0];

  [computeCommandEncoder setBuffer:self->_lightEstimationBuffer offset:0 atIndex:1];
  [computeCommandEncoder setBytes:&self->_config length:16 atIndex:2];
  v15 = 0x3F4CCCCD3F19999ALL;
  v17 = vdupq_n_s32(0x3EB33333u);
  v16 = v8;
  [computeCommandEncoder setBytes:&v15 length:28 atIndex:3];
  v13 = vdupq_n_s64(1uLL);
  v14 = 1;
  threadExecutionWidth = [(MTLComputePipelineState *)self->_lightEstimation threadExecutionWidth];
  v12[0] = 8;
  v12[1] = threadExecutionWidth >> 3;
  v12[2] = 1;
  [computeCommandEncoder dispatchThreads:&v13 threadsPerThreadgroup:v12];
  [computeCommandEncoder endEncoding];
  self->_lastRelightStrength = v8;
}

- (id)debugTextures
{
  v3 = MEMORY[0x277CBEA60];
  outSkinMask = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork outSkinMask];
  outPersonMask = [(PTPersonSemanticsNetwork *)self->_personSemanticsNetwork outPersonMask];
  samplePosDebug = [(PTSubjectRelighting *)self->_subjectRelighting samplePosDebug];
  v7 = [v3 arrayWithObjects:{outSkinMask, outPersonMask, samplePosDebug, 0}];

  return v7;
}

@end