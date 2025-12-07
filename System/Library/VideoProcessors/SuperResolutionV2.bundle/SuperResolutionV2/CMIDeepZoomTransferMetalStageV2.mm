@interface CMIDeepZoomTransferMetalStageV2
- (CMIDeepZoomTransferMetalStageV2)initWithMetalContext:(id)context options:(id)options;
- (__n128)tileOverlap;
- (__n128)tileSize;
- (int)clearBuffer:(__CVBuffer *)buffer;
- (int)cutTilesFrom:(id)from to:(id)to params:(id *)params outCommandBuffer:(id *)buffer;
- (int)pasteTilesFrom:(id)from with:(id)with inputFullPixelBuffers:(id)buffers to:(__CVBuffer *)to params:(id *)params outCommandBuffer:(id *)buffer;
- (int)updateMetadata:(id)metadata forInputFullPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)finishProcessing;
@end

@implementation CMIDeepZoomTransferMetalStageV2

- (CMIDeepZoomTransferMetalStageV2)initWithMetalContext:(id)context options:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  v63[0] = kCVPixelBufferMetalCompatibilityKey;
  v63[1] = kCVPixelBufferIOSurfaceCoreAnimationCompatibilityKey;
  v64[0] = &__kCFBooleanTrue;
  v64[1] = &__kCFBooleanTrue;
  v63[2] = kCVPixelBufferIOSurfacePropertiesKey;
  v64[2] = &__NSDictionary0__struct;
  v9 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:3];
  v62.receiver = self;
  v62.super_class = CMIDeepZoomTransferMetalStageV2;
  v10 = [(CMIDeepZoomTransferMetalStageV2 *)&v62 init];
  if (!v10)
  {
    goto LABEL_2;
  }

  v13 = [optionsCopy objectForKeyedSubscript:@"DeepTransferNetwork"];
  intValue = [v13 intValue];

  if (intValue == 2)
  {
    v16 = *(v10 + 23);
    v17 = @"deep_transfer_stereo_photo-v2";
  }

  else if (intValue == 1)
  {
    v16 = *(v10 + 23);
    v17 = @"deep_transfer_zoom-v2";
  }

  else
  {
    if (intValue)
    {
LABEL_27:
      sub_B4F8(v10);
      v11 = 0;
      goto LABEL_3;
    }

    v15 = FigCapturePlatformIdentifier();
    v16 = *(v10 + 23);
    if (v15 < 12)
    {
      v17 = @"deep_transfer-v2";
    }

    else
    {
      v17 = @"deep_transfer-v3";
    }
  }

  *(v10 + 23) = v17;

  v18 = objc_opt_new();
  v19 = *(v10 + 11);
  *(v10 + 11) = v18;

  v20 = *(v10 + 11);
  v21 = [optionsCopy objectForKeyedSubscript:@"TuningParameters"];
  v22 = [v20 readPlist:v21];

  if (v22)
  {
    sub_CF28(v22);
    goto LABEL_27;
  }

  v23 = [NSArray arrayWithObjects:@"in_img_1", @"in_img_2", 0];
  v24 = *(v10 + 24);
  *(v10 + 24) = v23;

  v25 = [NSArray arrayWithObjects:&off_19110, &off_19128, 0];
  v26 = *(v10 + 25);
  *(v10 + 25) = v25;

  v27 = [NSNumber numberWithUnsignedInt:1278226536];
  v28 = [NSNumber numberWithUnsignedInt:1278226536];
  v29 = [NSArray arrayWithObjects:v27, v28, 0];
  v30 = *(v10 + 26);
  *(v10 + 26) = v29;

  v31 = [NSArray arrayWithObjects:@"out_img", 0];
  v32 = *(v10 + 28);
  *(v10 + 28) = v31;

  v33 = [NSArray arrayWithObjects:&off_19140, 0];
  v34 = *(v10 + 29);
  *(v10 + 29) = v33;

  v35 = [NSNumber numberWithUnsignedInt:1278226536];
  v36 = [NSArray arrayWithObjects:v35, 0];
  v37 = *(v10 + 30);
  *(v10 + 30) = v36;

  *(v10 + 2) = 0x10001001C001F0;
  *(v10 + 172) = 0x10001001C001F0;
  objc_storeStrong(v10 + 1, context);
  if (!*(v10 + 1))
  {
    v38 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [[FigMetalContext alloc] initWithbundle:v38 andOptionalCommandQueue:0];
    v40 = *(v10 + 1);
    *(v10 + 1) = v39;

    if (!*(v10 + 1))
    {
      goto LABEL_27;
    }
  }

  v41 = objc_alloc_init(NSMutableDictionary);
  v42 = *(v10 + 16);
  *(v10 + 16) = v41;

  if (!*(v10 + 16))
  {
    goto LABEL_27;
  }

  v43 = [[NSMutableArray alloc] initWithCapacity:2];
  v44 = *(v10 + 20);
  *(v10 + 20) = v43;

  if (!*(v10 + 20))
  {
    goto LABEL_27;
  }

  device = [*(v10 + 1) device];
  newCommandQueue = [device newCommandQueue];
  [*(v10 + 20) setObject:newCommandQueue atIndexedSubscript:0];

  device2 = [*(v10 + 1) device];
  newCommandQueue2 = [device2 newCommandQueue];
  [*(v10 + 20) setObject:newCommandQueue2 atIndexedSubscript:1];

  if (sub_ABD4(v10))
  {
    goto LABEL_27;
  }

  v49 = [[CMIDeepZoomTransferPreProcMetalStageV2 alloc] initWithMetalContext:contextCopy withTileConfiguration:v10 + 16];
  v50 = *(v10 + 18);
  *(v10 + 18) = v49;

  if (!*(v10 + 18))
  {
    goto LABEL_27;
  }

  v51 = [[CMIDeepZoomTransferPostProcMetalStageV2 alloc] initWithMetalContext:contextCopy withTileConfiguration:v10 + 16];
  v52 = *(v10 + 19);
  *(v10 + 19) = v51;

  if (!*(v10 + 19))
  {
    goto LABEL_27;
  }

  v60 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v61 = &off_19010;
  v53 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  device3 = [*(v10 + 1) device];
  v55 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v53, device3, 0, v10 + 3);

  if (v55 || CVPixelBufferCreate(kCFAllocatorDefault, 3 * *(v10 + 8), 3 * *(v10 + 9), 0x4C303068u, v9, v10 + 12) || (sub_B168(v10, *(v10 + 12), 1), v56 = objc_claimAutoreleasedReturnValue(), [v56 objectAtIndexedSubscript:0], v57 = objc_claimAutoreleasedReturnValue(), v58 = *(v10 + 13), *(v10 + 13) = v57, v58, v56, !*(v10 + 13)) || sub_4940(v10, *(v10 + 12), v10 + 8, v59))
  {

    goto LABEL_27;
  }

LABEL_2:
  v11 = v10;
LABEL_3:

  return v11;
}

- (int)updateMetadata:(id)metadata forInputFullPixelBuffer:(__CVBuffer *)buffer
{
  metadataForPixelBuffers = self->_metadataForPixelBuffers;
  metadataCopy = metadata;
  v7 = [NSNumber numberWithLong:buffer];
  [(NSMutableDictionary *)metadataForPixelBuffers setObject:metadataCopy forKeyedSubscript:v7];

  return 0;
}

- (void)finishProcessing
{
  [(FigMetalContext *)self->_metalContext waitForIdle];
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
  }

  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  if (tileOutputPixelBuffer)
  {
    CFRelease(tileOutputPixelBuffer);
    self->_tileOutputPixelBuffer = 0;
  }

  tileOutputEnhancedPixelBuffer = self->_tileOutputEnhancedPixelBuffer;
  if (tileOutputEnhancedPixelBuffer)
  {
    CFRelease(tileOutputEnhancedPixelBuffer);
    self->_tileOutputEnhancedPixelBuffer = 0;
  }
}

- (__n128)tileSize
{
  LOWORD(v1) = *(self + 172);
  WORD2(v1) = *(self + 174);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)tileOverlap
{
  LOWORD(v1) = *(self + 176);
  WORD2(v1) = *(self + 178);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (void)dealloc
{
  sub_B4F8(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomTransferMetalStageV2;
  [(CMIDeepZoomTransferMetalStageV2 *)&v3 dealloc];
}

- (int)clearBuffer:(__CVBuffer *)buffer
{
  if (!buffer)
  {
    sub_275C();
    v36 = -12780;
    goto LABEL_12;
  }

  v5 = v6;
  p_tileOutputPixelBuffer = &self->_tileOutputPixelBuffer;
  tileOutputPixelBuffer = self->_tileOutputPixelBuffer;
  self->_currentCommandQueueIndex = 0;
  if (tileOutputPixelBuffer)
  {
    currentCommandQueueIndex = 0;
LABEL_7:
    v22 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:currentCommandQueueIndex];
    p_tileOutputPixelBuffer = [v22 commandBuffer];

    if (!p_tileOutputPixelBuffer)
    {
      p_tileOutputPixelBuffer = "com.apple.cameracapture";
      v4 = "";
      sub_1FB4();
      sub_34CC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v42, v43, v44, v45, v46, v47, v49);
      sub_1FB4();
      sub_1EAC();
      v36 = FigSignalErrorAtGM(v38);
      sub_275C();
      goto LABEL_12;
    }

    computeCommandEncoder = [p_tileOutputPixelBuffer computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      sub_1F20();
      v41 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v6, v43, v44, v45, v46, v47, v49);
      sub_1F20();
      sub_1EAC();
      v36 = FigSignalErrorAtGM(v39);
      v5 = 0;
      v4 = 0;
      goto LABEL_12;
    }

    v4 = computeCommandEncoder;
    v5 = sub_B168(self, buffer, 2);
    if ([v5 count] != &dword_0 + 2)
    {
      v36 = -12786;
      goto LABEL_12;
    }

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2740() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    threadExecutionWidth = [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup];
    v25 = [sub_2740() objectAtIndexedSubscript:?];
    [v25 width];
    v26 = [sub_2740() objectAtIndexedSubscript:?];
    height = [v26 height];
    sub_2080(height, v28, v29, v30);

    [(__CFAllocator *)v4 setComputePipelineState:self->_clearTexturePipelineState];
    [sub_2734() objectAtIndexedSubscript:?];
    objc_claimAutoreleasedReturnValue();
    [sub_1F54() setTexture:? atIndex:?];

    [(MTLComputePipelineState *)self->_clearTexturePipelineState threadExecutionWidth];
    [(MTLComputePipelineState *)self->_clearTexturePipelineState maxTotalThreadsPerThreadgroup];
    v31 = [sub_2734() objectAtIndexedSubscript:?];
    [v31 width];
    v32 = [sub_2734() objectAtIndexedSubscript:?];
    height2 = [v32 height];
    sub_2080(height2, v33, v34, v35);

    [(__CFAllocator *)v4 endEncoding];
    [p_tileOutputPixelBuffer commit];
    goto LABEL_11;
  }

  v4 = kCFAllocatorDefault;
  CVPixelBufferGetPixelFormatType(buffer);
  CVPixelBufferGetAttributes();
  v11 = sub_2784();
  if (!CVPixelBufferCreate(v11, v12, v13, v14, v15, v16))
  {
    CVPixelBufferGetPixelFormatType(buffer);
    CVPixelBufferGetAttributes();
    v17 = sub_2784();
    if (!CVPixelBufferCreate(v17, v18, v19, v20, v21, p_tileOutputPixelBuffer))
    {
      currentCommandQueueIndex = self->_currentCommandQueueIndex;
      goto LABEL_7;
    }
  }

  sub_275C();
LABEL_11:
  v36 = 0;
LABEL_12:

  return v36;
}

- (int)cutTilesFrom:(id)from to:(id)to params:(id *)params outCommandBuffer:(id *)buffer
{
  fromCopy = from;
  toCopy = to;
  v121 = fromCopy;
  if ([fromCopy count] != &dword_0 + 2)
  {
    v13 = -12780;
    goto LABEL_34;
  }

  v12 = [toCopy count];
  v13 = -12780;
  if (params && v12)
  {
    v14 = sub_C2B8(self, fromCopy, params);
    if (!v14)
    {
      v15 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
      commandBuffer = [v15 commandBuffer];

      if (commandBuffer)
      {
        computeCommandEncoder = [commandBuffer computeCommandEncoder];
        if (!computeCommandEncoder)
        {
          sub_358C();
          sub_34CC();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v99, v100, v101, v102, v104, v106, v108, v110);
          sub_358C();
          sub_1EAC();
          v13 = FigSignalErrorAtGM(v98);

          goto LABEL_34;
        }

        v18 = computeCommandEncoder;
        v19 = *(params + 1);
        v139 = *params;
        v140 = v19;
        v20 = [sub_3520() objectAtIndexedSubscript:?];
        Width = CVPixelBufferGetWidth(v20);

        v21 = [sub_3520() objectAtIndexedSubscript:?];
        Height = CVPixelBufferGetHeight(v21);

        v23.i16[2] = HIWORD(v140);
        v23.i16[0] = WORD6(v140);
        v123 = v23;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        v138 = 0u;
        obj = [toCopy allKeys];
        v120 = [obj countByEnumeratingWithState:&v135 objects:v134 count:16];
        if (!v120)
        {
LABEL_29:

          [v18 endEncoding];
          v95 = commandBuffer;
          *buffer = commandBuffer;

          v13 = 0;
          goto LABEL_34;
        }

        paramsCopy = params;
        bufferCopy = buffer;
        v105 = commandBuffer;
        v25 = 0;
        v26 = 0;
        *&v24 = vdiv_f32(vcvt_f32_u32(vand_s8(v123, 0xFFFF0000FFFFLL)), vcvt_f32_u32(__PAIR64__(Height, Width)));
        v109 = v24;
        v119 = *v136;
        v107 = kFigCaptureSampleBufferMetadata_FinalCropRect;
        v116 = matrix_identity_float3x3.columns[1];
        v117 = matrix_identity_float3x3.columns[0];
        v115 = matrix_identity_float3x3.columns[2];
        __asm { FMOV            V9.2S, #1.0 }

        v114 = toCopy;
LABEL_9:
        v32 = 0;
        v33 = v25;
        v34 = v26;
        while (1)
        {
          if (*v136 != v119)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v135 + 1) + 8 * v32);
          v131 = v117;
          v132 = v116;
          v133 = v115;
          v36 = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
          v37 = [v35 isEqual:v36];

          LODWORD(Width) = v37;
          if (v37)
          {
            v129 = 0u;
            v130 = 0u;
            metadataForPixelBuffers = self->_metadataForPixelBuffers;
            v79 = [sub_34DC() objectAtIndexedSubscript:?];
            v80 = [NSNumber numberWithLong:v79];
            v38 = [(NSMutableDictionary *)metadataForPixelBuffers objectForKeyedSubscript:v80];

            FigCFDictionaryGetCGRectIfPresent();
            v81 = [sub_3514() objectAtIndexedSubscript:?];
            v82 = CVPixelBufferGetWidth(v81);
            v83 = [sub_34DC() objectAtIndexedSubscript:?];
            *v84.i32 = v82 / CVPixelBufferGetWidth(v83);
            *&v140 = vdup_lane_s32(v84, 0);

            *(&v85 + 1) = *(&v109 + 1);
            v86 = *&v109 / v130.f64[0];
            *&v140 = vmul_n_f32(*&v140, v86);
            *&v85 = vcvt_f32_f64(v130);
            v109 = v85;
            v87 = vcvt_f32_f64(v129);
            v88 = [sub_34DC() objectAtIndexedSubscript:?];
            LODWORD(v83) = CVPixelBufferGetWidth(v88);

            v89 = [sub_34DC() objectAtIndexedSubscript:?];
            *&v90 = __PAIR64__(CVPixelBufferGetHeight(v89), v83);
            v124 = v90;

            v53 = 0;
            v91 = vcvt_f32_u32(*&v124);
            v92 = vcvt_n_u32_f32(vrnda_f32(vmul_f32(vmul_f32(v87, v91), 0x3F0000003F000000)), 1uLL);
            WORD5(v140) = v92.i16[2];
            WORD4(v140) = v92.i16[0];
            v93 = vcvt_n_u32_f32(vrnda_f32(vmul_f32(vmul_f32(*&v109, v91), 0x3F0000003F000000)), 1uLL);
            HIWORD(v140) = v93.i16[2];
            WORD6(v140) = v93.i16[0];
          }

          else
          {
            *&v140 = _D9;
            v38 = [(NSMutableArray *)self->_localHomographiesTable objectAtIndexedSubscript:0];
            if ([v38 count] != &dword_8 + 1)
            {

LABEL_33:
              v13 = -12786;
              goto LABEL_34;
            }

            v39 = [v38 objectAtIndexedSubscript:0];
            [v39 floatValue];
            v40 = [v38 objectAtIndexedSubscript:1];
            [v40 floatValue];
            v41 = [v38 objectAtIndexedSubscript:2];
            [v41 floatValue];
            sub_3504();
            v131 = v42;

            v43 = [v38 objectAtIndexedSubscript:3];
            [v43 floatValue];
            v44 = [v38 objectAtIndexedSubscript:4];
            [v44 floatValue];
            v45 = [v38 objectAtIndexedSubscript:5];
            [v45 floatValue];
            sub_3504();
            v132 = v46;

            v47 = [v38 objectAtIndexedSubscript:6];
            [v47 floatValue];
            v124 = v48;
            v49 = [v38 objectAtIndexedSubscript:7];
            [v49 floatValue];
            v122 = v50;
            v51 = [v38 objectAtIndexedSubscript:8];
            [v51 floatValue];
            sub_3504();
            v133 = v52;

            v53 = 1;
          }

          v54 = [v121 objectAtIndexedSubscript:v53];
          v26 = sub_B168(self, v54, 1);

          if ([v26 count] != &dword_0 + 2)
          {
            v34 = v26;
            toCopy = v114;
            goto LABEL_33;
          }

          toCopy = v114;
          v55 = [v114 objectForKeyedSubscript:v35];
          v25 = sub_B168(self, v55, 2);

          if (![v25 count])
          {
            v33 = v25;
            v34 = v26;
            goto LABEL_33;
          }

          if ([v25 count] == &dword_0 + 3)
          {
            [v18 setComputePipelineState:self->_tileCutInSlicesPipelineState];
            [v26 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v26 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:2];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            v56 = sub_354C();
            sub_356C(v56, v57, v58, v59, v60, v61, v62, v63, v99, v100, v101, bufferCopy, v105, v107, v109, *(&v109 + 1), v111, obj, paramsCopy, v114, v115.i64[0], v115.i64[1], v116.i64[0], v116.i64[1], v117.i64[0], v117.i64[1], v118, v119, v120, v121, v122, *(&v122 + 1), v124, *(&v124 + 1), Width, v126, v127, v128, *&v129.f64[0], *&v129.f64[1], *&v130.f64[0], *&v130.f64[1]);
            v64 = 80;
            if (Width)
            {
              v64 = 72;
            }

            [v18 setSamplerState:*(&self->super.isa + v64) atIndex:0];
            threadExecutionWidth = [(MTLComputePipelineState *)self->_tileCutInSlicesPipelineState threadExecutionWidth];
            tileCutInSlicesPipelineState = self->_tileCutInSlicesPipelineState;
          }

          else
          {
            [v18 setComputePipelineState:self->_tileCutPipelineState];
            [v26 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v26 objectAtIndexedSubscript:1];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            [v25 objectAtIndexedSubscript:0];
            objc_claimAutoreleasedReturnValue();
            [sub_34BC() setTexture:? atIndex:?];

            v67 = sub_354C();
            sub_356C(v67, v68, v69, v70, v71, v72, v73, v74, v99, v100, v101, bufferCopy, v105, v107, v109, *(&v109 + 1), v111, obj, paramsCopy, v114, v115.i64[0], v115.i64[1], v116.i64[0], v116.i64[1], v117.i64[0], v117.i64[1], v118, v119, v120, v121, v122, *(&v122 + 1), v124, *(&v124 + 1), Width, v126, v127, v128, *&v129.f64[0], *&v129.f64[1], *&v130.f64[0], *&v130.f64[1]);
            v75 = 80;
            if (Width)
            {
              v75 = 72;
            }

            [v18 setSamplerState:*(&self->super.isa + v75) atIndex:0];
            threadExecutionWidth = [(MTLComputePipelineState *)self->_tileCutPipelineState threadExecutionWidth];
            tileCutInSlicesPipelineState = self->_tileCutPipelineState;
          }

          maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)tileCutInSlicesPipelineState maxTotalThreadsPerThreadgroup];
          *&v77 = *(paramsCopy + 1);
          *&v129.f64[0] = *paramsCopy;
          v129.f64[1] = v77;
          *&v130.f64[0] = 1;
          v126 = threadExecutionWidth;
          v127 = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
          v128 = 1;
          [v18 dispatchThreads:&v129 threadsPerThreadgroup:&v126];
          v32 = v32 + 1;
          v33 = v25;
          v34 = v26;
          if (v120 == v32)
          {
            v94 = [obj countByEnumeratingWithState:&v135 objects:v134 count:16];
            v120 = v94;
            if (!v94)
            {

              buffer = bufferCopy;
              commandBuffer = v105;
              goto LABEL_29;
            }

            goto LABEL_9;
          }
        }
      }

      sub_358C();
      sub_34CC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v99, v100, v101, v102, v104, v106, v108, v110);
      sub_358C();
      sub_1EAC();
      v14 = FigSignalErrorAtGM(v97);
    }

    v13 = v14;
  }

LABEL_34:

  return v13;
}

- (int)pasteTilesFrom:(id)from with:(id)with inputFullPixelBuffers:(id)buffers to:(__CVBuffer *)to params:(id *)params outCommandBuffer:(id *)buffer
{
  commandBuffer = v9;
  fromCopy = from;
  withCopy = with;
  buffersCopy = buffers;
  v54 = fromCopy;
  v52 = buffersCopy;
  v53 = withCopy;
  if (![fromCopy count] || !objc_msgSend(withCopy, "count"))
  {
    v20 = 0;
    v55 = 0;
    commandBuffer = 0;
    sub_2798();
    v21 = -12780;
    goto LABEL_17;
  }

  [buffersCopy count];
  v20 = 0;
  v21 = -12780;
  if (!params || !to)
  {
    sub_2718();
    goto LABEL_17;
  }

  bufferCopy = buffer;
  sub_2718();
  if (v22)
  {
    v23 = [(NSMutableArray *)self->_commandQueues objectAtIndexedSubscript:self->_currentCommandQueueIndex];
    commandBuffer = [v23 commandBuffer];

    if (!commandBuffer)
    {
      buffersCopy = "com.apple.cameracapture";
      sub_1FB4();
      sub_34CC();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45, v46, v9, v47, buffer, v50, v52, v53);
      sub_1FB4();
      sub_1EAC();
      v21 = FigSignalErrorAtGM(v42);
      v20 = 0;
      v55 = 0;
      sub_2798();
      goto LABEL_17;
    }

    v24 = [(NSArray *)self->_modelInputBindingNames objectAtIndexedSubscript:0];
    [fromCopy objectForKeyedSubscript:v24];
    objc_claimAutoreleasedReturnValue();
    v25 = sub_3538();
    v8 = sub_B168(v25, v26, v27);

    if ([v8 count])
    {
      v28 = [(NSArray *)self->_modelOutputBindingNames objectAtIndexedSubscript:0];
      [v53 objectForKeyedSubscript:v28];
      objc_claimAutoreleasedReturnValue();
      v29 = sub_3538();
      v20 = sub_B168(v29, v30, v31);

      if ([v20 count])
      {
        v32 = sub_B168(self, self->_tileOutputEnhancedPixelBuffer, 3);
        if ([v32 count] == &dword_0 + 2)
        {
          v51 = sub_B168(self, self->_tileOutputPixelBuffer, 3);
          if ([v51 count] == &dword_0 + 2)
          {
            v55 = sub_B168(self, to, 3);
            if ([v55 count] == &dword_0 + 2)
            {
              v33 = [(CMIDeepZoomTransferPostProcMetalStageV2 *)self->_deepZoomPostProcStage processTileFrom:v8 with:v20 to:v32 commandBuffer:commandBuffer];
              if (v33)
              {
                v21 = v33;
                buffersCopy = commandBuffer;
              }

              else
              {
                computeCommandEncoder = [commandBuffer computeCommandEncoder];
                buffersCopy = commandBuffer;
                if (computeCommandEncoder)
                {
                  v35 = computeCommandEncoder;
                  [computeCommandEncoder setComputePipelineState:self->_tileMergePipelineState];
                  [v32 objectAtIndexedSubscript:0];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  v48 = v32;
                  [v32 objectAtIndexedSubscript:1];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [v35 setTexture:self->_tileInputWeightsTexture atIndex:2];
                  [sub_2740() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [sub_2734() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  fromCopy = v51;
                  [sub_2740() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [sub_2734() objectAtIndexedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [sub_1F54() setTexture:? atIndex:?];

                  [v35 setBytes:params length:24 atIndex:0];
                  threadExecutionWidth = [(MTLComputePipelineState *)self->_tileMergePipelineState threadExecutionWidth];
                  [(MTLComputePipelineState *)self->_tileMergePipelineState maxTotalThreadsPerThreadgroup];
                  sub_276C();
                  v60 = 1;
                  v56 = threadExecutionWidth;
                  v57 = v37 / threadExecutionWidth;
                  v58 = 1;
                  [v35 dispatchThreads:v59 threadsPerThreadgroup:&v56];
                  [v35 endEncoding];
                  buffer = [commandBuffer computeCommandEncoder];

                  if (buffer)
                  {
                    [buffer setComputePipelineState:self->_tilePastePipelineState];
                    [sub_2740() objectAtIndexedSubscript:?];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [sub_2734() objectAtIndexedSubscript:?];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [v55 objectAtIndexedSubscript:0];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [v55 objectAtIndexedSubscript:1];
                    objc_claimAutoreleasedReturnValue();
                    [sub_2708() setTexture:? atIndex:?];

                    [buffer setBytes:params length:24 atIndex:0];
                    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_tilePastePipelineState threadExecutionWidth];
                    [(MTLComputePipelineState *)self->_tilePastePipelineState maxTotalThreadsPerThreadgroup];
                    sub_276C();
                    v60 = 1;
                    v56 = threadExecutionWidth2;
                    v57 = v39 / threadExecutionWidth2;
                    v58 = 1;
                    [buffer dispatchThreads:v59 threadsPerThreadgroup:&v56];
                    [buffer endEncoding];
                    v40 = commandBuffer;
                    v21 = 0;
                    *bufferCopy = commandBuffer;
                    self->_currentCommandQueueIndex = (self->_currentCommandQueueIndex & 1) == 0;
                  }

                  else
                  {
                    sub_1F20();
                    sub_34E8();
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45, v46, v9, v48, bufferCopy, v51, v52, v53);
                    sub_1F20();
                    sub_1EAC();
                    v21 = FigSignalErrorAtGM(v44);
                  }

                  commandBuffer = v48;
                  goto LABEL_17;
                }

                sub_1F20();
                sub_34E8();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45, v46, v9, v47, bufferCopy, v51, v52, v53);
                sub_1F20();
                sub_1EAC();
                v21 = FigSignalErrorAtGM(v43);
              }

              commandBuffer = v32;
              buffer = 0;
LABEL_30:
              fromCopy = v51;
              goto LABEL_17;
            }
          }

          else
          {
            v55 = 0;
          }

          buffersCopy = commandBuffer;
          commandBuffer = v32;
          buffer = 0;
          v21 = -12786;
          goto LABEL_30;
        }

        v55 = 0;
        fromCopy = 0;
        buffersCopy = commandBuffer;
        commandBuffer = v32;
LABEL_24:
        buffer = 0;
        v21 = -12786;
        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    v55 = 0;
    buffersCopy = commandBuffer;
    commandBuffer = 0;
    fromCopy = 0;
    goto LABEL_24;
  }

LABEL_17:

  return v21;
}

@end