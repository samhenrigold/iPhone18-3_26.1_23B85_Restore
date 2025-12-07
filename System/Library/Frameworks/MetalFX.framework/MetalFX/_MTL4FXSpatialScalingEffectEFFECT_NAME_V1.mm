@interface _MTL4FXSpatialScalingEffectEFFECT_NAME_V1
- (_MTL4FXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor;
- (void)encodeToCommandBuffer:(id)buffer;
@end

@implementation _MTL4FXSpatialScalingEffectEFFECT_NAME_V1

- (_MTL4FXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor
{
  deviceCopy = device;
  compilerCopy = compiler;
  descriptorCopy = descriptor;
  v117.receiver = self;
  v117.super_class = _MTL4FXSpatialScalingEffectEFFECT_NAME_V1;
  v11 = [(_MTL4FXEffect *)&v117 init];
  objc_storeStrong(&v11->_device, device);
  v102 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  newFence = [(MTLDeviceSPI *)v11->_device newFence];
  internalFence = v11->_internalFence;
  v11->_internalFence = newFence;

  fence = v11->_fence;
  v11->_fence = 0;

  v11->_frame = 0;
  v11->_framesInFlight = 16;
  v11->_colorTextureBarrierStages = 2;
  v11->_outputTextureBarrierStages = 0;
  v101 = [v102 pathForResource:@"default" ofType:@"metallib"];
  v15 = [MEMORY[0x277CBEBC0] URLWithString:v101];
  v116 = 0;
  v103 = [deviceCopy newLibraryWithURL:v15 error:&v116];
  v16 = v116;

  if (!v16)
  {
    v11->_colorTextureFormat = [descriptorCopy colorTextureFormat];
    v11->_outputTextureFormat = [descriptorCopy outputTextureFormat];
    v11->_inputWidth = [descriptorCopy inputWidth];
    v11->_inputHeight = [descriptorCopy inputHeight];
    v11->_outputWidth = [descriptorCopy outputWidth];
    v11->_outputHeight = [descriptorCopy outputHeight];
    v17 = objc_opt_new();
    v18 = [(MTLDeviceSPI *)v11->_device newResidencySetWithDescriptor:v17 error:0];
    residencySetGlobal = v11->_residencySetGlobal;
    v11->_residencySetGlobal = v18;

    colorProcessingMode = [descriptorCopy colorProcessingMode];
    v11->_colorProcessingMode = colorProcessingMode;
    if (colorProcessingMode >= 3)
    {
      goto LABEL_22;
    }

    v21 = objc_opt_new();
    mfxPassDescriptor = v11->_mfxPassDescriptor;
    v11->_mfxPassDescriptor = v21;

    colorAttachments = [(MTL4RenderPassDescriptor *)v11->_mfxPassDescriptor colorAttachments];
    v24 = [colorAttachments objectAtIndexedSubscript:0];
    [v24 setLoadAction:0];

    colorAttachments2 = [(MTL4RenderPassDescriptor *)v11->_mfxPassDescriptor colorAttachments];
    v26 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v26 setClearColor:{0.0, 0.0, 0.0, 0.0}];

    colorAttachments3 = [(MTL4RenderPassDescriptor *)v11->_mfxPassDescriptor colorAttachments];
    v28 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v28 setStoreAction:1];

    [descriptorCopy colorTextureFormat];
    MTLPixelFormatGetInfoForDevice();
    v11->_inputSRGB = 0;
    [descriptorCopy outputTextureFormat];
    *&v110 = 0;
    v108 = 0u;
    v109 = 0u;
    v107 = 0u;
    MTLPixelFormatGetInfoForDevice();
    v11->_outputSRGB = 0;
    if (v11->_inputSRGB)
    {
      colorTextureFormat = [descriptorCopy colorTextureFormat];
      if (((colorTextureFormat - 31) > 0x32 || ((1 << (colorTextureFormat - 31)) & 0x4010000000001) == 0) && colorTextureFormat != 11)
      {
        goto LABEL_22;
      }
    }

    if (v11->_outputSRGB)
    {
      outputTextureFormat = [descriptorCopy outputTextureFormat];
      if (((outputTextureFormat - 31) > 0x32 || ((1 << (outputTextureFormat - 31)) & 0x4010000000001) == 0) && outputTextureFormat != 11)
      {
        goto LABEL_22;
      }
    }

    if (v11->_inputSRGB != v11->_outputSRGB)
    {
      NSLog(&cfstr_SMixedSrgbInpu.isa, "[_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 initWithDevice:compiler:descriptor:]");
LABEL_23:
      v16 = 0;
      goto LABEL_24;
    }

    if (v11->_inputSRGB && v11->_colorProcessingMode >= 1)
    {
LABEL_22:
      MTLReportFailure();
      goto LABEL_23;
    }

    v11->_inputContentWidth = [descriptorCopy inputWidth];
    v11->_inputContentHeight = [descriptorCopy inputHeight];
    v11->_colorTextureUsage = 1;
    v11->_outputTextureUsage = 5;
    v11->_inputFormat = [descriptorCopy colorTextureFormat];
    v11->_outputFormat = [descriptorCopy outputTextureFormat];
    if (!v11->_outputSRGB)
    {
      outputTextureFormat2 = [descriptorCopy outputTextureFormat];
      goto LABEL_27;
    }

    outputTextureFormat3 = [descriptorCopy outputTextureFormat];
    if (outputTextureFormat3 > 70)
    {
      if (outputTextureFormat3 != 71)
      {
        if (outputTextureFormat3 == 81)
        {
          outputTextureFormat2 = 80;
          goto LABEL_27;
        }

        goto LABEL_43;
      }

      outputTextureFormat2 = 70;
    }

    else
    {
      if (outputTextureFormat3 != 11)
      {
        if (outputTextureFormat3 == 31)
        {
          outputTextureFormat2 = 30;
          goto LABEL_27;
        }

LABEL_43:
        outputTextureFormat2 = 0;
        goto LABEL_27;
      }

      outputTextureFormat2 = 10;
    }

LABEL_27:
    v11->_intermediatePixelFormat = outputTextureFormat2;
    v35 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:outputTextureFormat2 width:objc_msgSend(descriptorCopy height:"outputWidth") mipmapped:objc_msgSend(descriptorCopy, "outputHeight"), 0];
    texDesc = v11->_texDesc;
    v11->_texDesc = v35;

    [(MTLTextureDescriptor *)v11->_texDesc setStorageMode:2];
    [(MTLTextureDescriptor *)v11->_texDesc setUsage:5];
    v37 = [(MTLDeviceSPI *)v11->_device newTextureWithDescriptor:v11->_texDesc];
    mfxUpscaledTex = v11->_mfxUpscaledTex;
    v11->_mfxUpscaledTex = v37;

    [(MTLTexture *)v11->_mfxUpscaledTex setLabel:@"MetalFX_Upscaled"];
    v94 = objc_opt_new();
    v115 = 0;
    v93 = objc_opt_new();
    [v93 setLibrary:v103];
    [v93 setName:@"FSQuadVertexShader"];
    v95 = objc_opt_new();
    [v95 setLibrary:v103];
    colorProcessingMode = v11->_colorProcessingMode;
    v11->_needNormPercept = colorProcessingMode > 0;
    if (colorProcessingMode < 1)
    {
      v98 = 0;
    }

    else
    {
      v40 = [(MTLDeviceSPI *)v11->_device newResidencySetWithDescriptor:v17 error:0];
      residencySetPercept = v11->_residencySetPercept;
      v11->_residencySetPercept = v40;

      [(MTLTextureDescriptor *)v11->_texDesc setWidth:v11->_inputWidth];
      [(MTLTextureDescriptor *)v11->_texDesc setHeight:v11->_inputHeight];
      v42 = [(MTLDeviceSPI *)v11->_device newTextureWithDescriptor:v11->_texDesc];
      mfxNormPerceptTex = v11->_mfxNormPerceptTex;
      v11->_mfxNormPerceptTex = v42;

      [(MTLTexture *)v11->_mfxNormPerceptTex setLabel:@"MetalFX_NormalizePerceptual"];
      [v95 setName:@"MFX_NORMALIZE_SHADER_V1_FRAG"];
      v92 = v17;
      v96 = objc_alloc_init(MEMORY[0x277CD6BB8]);
      [v96 setLabel:@"MFX_NPRenderPipelineState"];
      [v96 setRasterSampleCount:1];
      [v96 setVertexFunctionDescriptor:v93];
      [v96 setFragmentFunctionDescriptor:v95];
      intermediatePixelFormat = v11->_intermediatePixelFormat;
      colorAttachments4 = [v96 colorAttachments];
      v46 = [colorAttachments4 objectAtIndexedSubscript:0];
      [v46 setPixelFormat:intermediatePixelFormat];

      v114 = 0;
      v47 = [compilerCopy newRenderPipelineStateWithDescriptor:v96 compilerTaskOptions:0 error:&v114];
      v48 = v114;
      mfxNormPerceptPSO = v11->_mfxNormPerceptPSO;
      v11->_mfxNormPerceptPSO = v47;

      [v94 setMaxTextureBindCount:1];
      [v94 setMaxBufferBindCount:1];
      v113 = v48;
      v50 = [deviceCopy newArgumentTableWithDescriptor:v94 error:&v113];
      v51 = v113;

      normPerceptFragInputs = v11->_normPerceptFragInputs;
      v11->_normPerceptFragInputs = v50;

      v53 = v11->_colorProcessingMode;
      LOBYTE(v115) = v53 == 2;
      BYTE1(v115) = v53 > 0;
      HIWORD(v115) = 0;
      v54 = [deviceCopy newBufferWithBytes:&v115 length:4 options:0];
      normalizeBuffer = v11->_normalizeBuffer;
      v11->_normalizeBuffer = v54;

      [(MTL4ArgumentTable *)v11->_normPerceptFragInputs setAddress:[(MTLBuffer *)v11->_normalizeBuffer gpuAddress] atIndex:0];
      [(MTLResidencySet *)v11->_residencySetPercept addAllocation:v11->_normalizeBuffer];
      [(MTLResidencySet *)v11->_residencySetPercept addAllocation:v11->_mfxNormPerceptTex];
      [(MTLResidencySet *)v11->_residencySetPercept commit];
      v98 = v51;

      v17 = v92;
    }

    [v95 setName:@"MFX_SCALE_SHADER_V1_FRAG"];
    v97 = objc_alloc_init(MEMORY[0x277CD6BB8]);
    [v97 setLabel:@"MFX_ScaleRenderPipelineStateV1"];
    [v97 setRasterSampleCount:1];
    [v97 setVertexFunctionDescriptor:v93];
    [v97 setFragmentFunctionDescriptor:v95];
    v56 = v11->_intermediatePixelFormat;
    colorAttachments5 = [v97 colorAttachments];
    v58 = [colorAttachments5 objectAtIndexedSubscript:0];
    [v58 setPixelFormat:v56];

    v112 = v98;
    v59 = [compilerCopy newRenderPipelineStateWithDescriptor:v97 compilerTaskOptions:0 error:&v112];
    v16 = v112;

    mfxUpscalePSO = v11->_mfxUpscalePSO;
    v11->_mfxUpscalePSO = v59;

    if (v16)
    {
      v61 = [v16 description];
      NSLog(&cfstr_Error.isa, v61);
    }

    else
    {
      [v94 setMaxTextureBindCount:1];
      [v94 setMaxBufferBindCount:2];
      v111 = 0;
      v62 = [deviceCopy newArgumentTableWithDescriptor:v94 error:&v111];
      v99 = v111;
      scaleFragInputs = v11->_scaleFragInputs;
      v11->_scaleFragInputs = v62;

      v115 = 0;
      v64 = [deviceCopy newBufferWithBytes:&v115 length:4 options:0];
      scaleBuffer = v11->_scaleBuffer;
      v11->_scaleBuffer = v64;

      [(MTL4ArgumentTable *)v11->_scaleFragInputs setAddress:[(MTLBuffer *)v11->_scaleBuffer gpuAddress] atIndex:1];
      inputContentWidth = v11->_inputContentWidth;
      inputContentHeight = v11->_inputContentHeight;
      inputWidth = v11->_inputWidth;
      inputHeight = v11->_inputHeight;
      v70 = 1.0 / v11->_outputWidth;
      v71 = 1.0 / v11->_outputHeight;
      *&v107 = v70 * inputContentWidth;
      *(&v107 + 1) = v71 * inputContentHeight;
      *(&v107 + 2) = (vcvts_n_f32_u64(inputContentWidth, 1uLL) * v70) + -0.5;
      *(&v107 + 3) = (vcvts_n_f32_u64(inputContentHeight, 1uLL) * v71) + -0.5;
      *&v108 = 1.0 / inputWidth;
      *(&v108 + 1) = 1.0 / inputHeight;
      *(&v108 + 2) = 1.0 / inputWidth;
      *(&v108 + 3) = -(1.0 / inputHeight);
      *&v109 = -(1.0 / inputWidth);
      *(&v109 + 1) = *(&v108 + 1) + *(&v108 + 1);
      *(&v109 + 2) = 1.0 / inputWidth;
      *(&v109 + 3) = *(&v108 + 1) + *(&v108 + 1);
      *&v110 = (1.0 / inputWidth) * 0.0;
      *(&v110 + 1) = (1.0 / inputHeight) * 4.0;
      *(&v110 + 1) = 0;
      v72 = [MEMORY[0x277CBEB18] arrayWithCapacity:v11->_framesInFlight];
      fxrUpscaleBuffer = v11->_fxrUpscaleBuffer;
      v11->_fxrUpscaleBuffer = v72;

      if (v11->_framesInFlight)
      {
        v74 = 0;
        do
        {
          v75 = [deviceCopy newBufferWithBytes:&v107 length:64 options:0];
          [(NSMutableArray *)v11->_fxrUpscaleBuffer setObject:v75 atIndexedSubscript:v74];

          v76 = v11->_residencySetGlobal;
          v77 = [(NSMutableArray *)v11->_fxrUpscaleBuffer objectAtIndexedSubscript:v74];
          [(MTLResidencySet *)v76 addAllocation:v77];

          ++v74;
        }

        while (v74 < v11->_framesInFlight);
      }

      [v95 setName:@"MFX_SHARPEN_SHADER_V1_FRAG"];
      v78 = objc_alloc_init(MEMORY[0x277CD6BB8]);
      [v78 setLabel:@"MFX_SharpenRenderPipelineStateV1"];
      [v78 setRasterSampleCount:1];
      [v78 setVertexFunctionDescriptor:v93];
      [v78 setFragmentFunctionDescriptor:v95];
      v79 = v11->_intermediatePixelFormat;
      colorAttachments6 = [v78 colorAttachments];
      v81 = [colorAttachments6 objectAtIndexedSubscript:0];
      [v81 setPixelFormat:v79];

      v106 = v99;
      v82 = [compilerCopy newRenderPipelineStateWithDescriptor:v78 compilerTaskOptions:0 error:&v106];
      v16 = v106;

      mfxSharpenPSO = v11->_mfxSharpenPSO;
      v11->_mfxSharpenPSO = v82;

      if (!v16)
      {
        [v94 setMaxTextureBindCount:1];
        [v94 setMaxBufferBindCount:2];
        v105 = 0;
        v85 = [deviceCopy newArgumentTableWithDescriptor:v94 error:&v105];
        v100 = v105;
        sharpenFragInputs = v11->_sharpenFragInputs;
        v11->_sharpenFragInputs = v85;

        [(MTL4ArgumentTable *)v11->_sharpenFragInputs setTexture:[(MTLTexture *)v11->_mfxUpscaledTex gpuResourceID] atIndex:0];
        LOWORD(v115) = 0;
        v87 = v11->_colorProcessingMode;
        BYTE2(v115) = v87 > 0;
        HIBYTE(v115) = v87 == 2;
        v88 = [deviceCopy newBufferWithBytes:&v115 length:4 options:0];
        sharpenBuffer = v11->_sharpenBuffer;
        v11->_sharpenBuffer = v88;

        [(MTL4ArgumentTable *)v11->_sharpenFragInputs setAddress:[(MTLBuffer *)v11->_sharpenBuffer gpuAddress] atIndex:1];
        v109 = 0u;
        v110 = 0u;
        v107 = xmmword_2398F28B0;
        v108 = 0u;
        v90 = [deviceCopy newBufferWithBytes:&v107 length:64 options:0];
        fxrSharpenBuffer = v11->_fxrSharpenBuffer;
        v11->_fxrSharpenBuffer = v90;

        [(MTL4ArgumentTable *)v11->_sharpenFragInputs setAddress:[(MTLBuffer *)v11->_fxrSharpenBuffer gpuAddress] atIndex:0];
        [(MTLResidencySet *)v11->_residencySetGlobal addAllocation:v11->_fxrSharpenBuffer];
        [(MTLResidencySet *)v11->_residencySetGlobal addAllocation:v11->_sharpenBuffer];
        [(MTLResidencySet *)v11->_residencySetGlobal addAllocation:v11->_mfxUpscaledTex];

        [(MTLResidencySet *)v11->_residencySetGlobal commit];
        [(_MTL4FXSpatialScaler *)v11 _emitTelemetry:descriptorCopy forDevice:v11->_device];
        v33 = v11;
        v16 = v100;
        goto LABEL_38;
      }

      v84 = [v16 description];
      NSLog(&cfstr_Error.isa, v84);
    }

    v33 = 0;
LABEL_38:

    goto LABEL_25;
  }

  v17 = [v16 description];
  MTLReportFailure();
LABEL_24:
  v33 = 0;
LABEL_25:

  return v33;
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  v43 = bufferCopy;
  [(_MTL4FXEffect *)self _beginEncodeWithCommandBuffer:bufferCopy];
  if (MTLReportFailureTypeEnabled())
  {
    if (!self->_fence && !self->_outputTextureBarrierStages)
    {
      MTLReportFailure();
    }

    checkInputOutputTexturesForSpatial(self->_inputTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    if ([(MTLTexture *)self->_outputTexture storageMode]!= 2)
    {
      MTLReportFailure();
    }
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v44, 0, self, 4, self->super.super.super._encodeID, 0);
  inputTexture = self->_inputTexture;
  if (!self->_inputSRGB)
  {
    v8 = inputTexture;
    goto LABEL_20;
  }

  pixelFormat = [(MTLTexture *)inputTexture pixelFormat];
  if (pixelFormat > 70)
  {
    if (pixelFormat == 71)
    {
      v7 = 70;
      goto LABEL_19;
    }

    if (pixelFormat == 81)
    {
      v7 = 80;
      goto LABEL_19;
    }

LABEL_16:
    v7 = 0;
    goto LABEL_19;
  }

  if (pixelFormat == 11)
  {
    v7 = 10;
    goto LABEL_19;
  }

  if (pixelFormat != 31)
  {
    goto LABEL_16;
  }

  v7 = 30;
LABEL_19:
  v8 = [(MTLTexture *)inputTexture newTextureViewWithPixelFormat:v7];
LABEL_20:
  v9 = v8;
  outputTexture = self->_outputTexture;
  v42 = v9;
  if (self->_outputSRGB)
  {
    v11 = [(MTLTexture *)outputTexture newTextureViewWithPixelFormat:self->_intermediatePixelFormat];
  }

  else
  {
    v11 = outputTexture;
  }

  v41 = v11;
  if (self->_needNormPercept)
  {
    [(MTL4ArgumentTable *)self->_normPerceptFragInputs setTexture:[(MTLTexture *)v9 gpuResourceID] atIndex:0];
    mfxNormPerceptTex = self->_mfxNormPerceptTex;
    colorAttachments = [(MTL4RenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
    v14 = [colorAttachments objectAtIndexedSubscript:0];
    [v14 setTexture:mfxNormPerceptTex];

    v15 = [bufferCopy renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
    [(_MTL4FXEffect *)self _didCreateRenderCommandEncoder:v15 forEncode:self->super.super.super._encodeID];
    [bufferCopy useResidencySet:self->_residencySetPercept];
    fence = self->_fence;
    if (fence)
    {
      [v15 waitForFence:fence beforeEncoderStages:2];
    }

    [v15 setLabel:@"Metal4FX_Normalize"];
    [v15 setArgumentTable:self->_normPerceptFragInputs atStages:2];
    [v15 setRenderPipelineState:self->_mfxNormPerceptPSO];
    [v15 drawPrimitives:3 vertexStart:0 vertexCount:3];
    [v15 updateFence:self->_internalFence afterEncoderStages:2];
    [v15 endEncoding];
  }

  [bufferCopy useResidencySet:self->_residencySetGlobal];
  mfxUpscaledTex = self->_mfxUpscaledTex;
  colorAttachments2 = [(MTL4RenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
  v19 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v19 setTexture:mfxUpscaledTex];

  v20 = [bufferCopy renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
  [v20 setLabel:@"Metal4FX_Scale"];
  if (MTLTraceEnabled())
  {
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self inputWidth];
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self inputHeight];
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self outputWidth];
    [(_MTL4FXSpatialScalingEffectEFFECT_NAME_V1 *)self outputHeight];
    if (MTLTraceEnabled())
    {
      [v20 globalTraceObjectID];
      kdebug_trace();
    }
  }

  [(_MTL4FXEffect *)self _didCreateRenderCommandEncoder:v20 forEncode:self->super.super.super._encodeID];
  v21 = self->_fence;
  if (v21)
  {
    [v20 waitForFence:v21 beforeEncoderStages:2];
  }

  inputContentWidth = self->_inputContentWidth;
  inputWidth = self->_inputWidth;
  inputContentHeight = self->_inputContentHeight;
  inputHeight = self->_inputHeight;
  if (inputContentWidth != inputWidth || inputContentHeight != inputHeight)
  {
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v28 = [(NSMutableArray *)self->_fxrUpscaleBuffer objectAtIndexedSubscript:self->_frame];
    contents = [v28 contents];
    v30 = 1.0 / outputWidth;
    v31 = 1.0 / outputHeight;
    v32 = 1.0 / inputWidth;
    *contents = v30 * inputContentWidth;
    *(contents + 4) = v31 * inputContentHeight;
    v33 = 1.0 / inputHeight;
    *(contents + 8) = (vcvts_n_f32_u64(inputContentWidth, 1uLL) * v30) + -0.5;
    *(contents + 12) = (vcvts_n_f32_u64(inputContentHeight, 1uLL) * v31) + -0.5;
    *(contents + 16) = v32;
    *(contents + 20) = v33;
    *(contents + 24) = v32;
    *(contents + 28) = -v33;
    *(contents + 32) = -v32;
    *(contents + 36) = v33 + v33;
    *(contents + 40) = v32;
    *(contents + 44) = v33 + v33;
    *(contents + 48) = v32 * 0.0;
    *(contents + 52) = v33 * 4.0;
    *(contents + 56) = 0;
  }

  scaleFragInputs = self->_scaleFragInputs;
  v35 = [(NSMutableArray *)self->_fxrUpscaleBuffer objectAtIndexedSubscript:self->_frame];
  -[MTL4ArgumentTable setAddress:atIndex:](scaleFragInputs, "setAddress:atIndex:", [v35 gpuAddress], 0);

  v36 = v42;
  if (self->_needNormPercept)
  {
    v36 = self->_mfxNormPerceptTex;
  }

  [(MTL4ArgumentTable *)self->_scaleFragInputs setTexture:[(MTLTexture *)v36 gpuResourceID] atIndex:0];
  [v20 setArgumentTable:self->_scaleFragInputs atStages:2];
  [v20 setRenderPipelineState:self->_mfxUpscalePSO];
  [v20 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v20 updateFence:self->_internalFence afterEncoderStages:2];
  [v20 endEncoding];
  colorAttachments3 = [(MTL4RenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
  v38 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v38 setTexture:v41];

  v39 = [v43 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];

  [v39 waitForFence:self->_internalFence beforeEncoderStages:2];
  [v39 setLabel:@"Metal4FX_Sharpen"];
  [(_MTL4FXEffect *)self _didCreateRenderCommandEncoder:v39 forEncode:self->super.super.super._encodeID];
  [v39 setArgumentTable:self->_sharpenFragInputs atStages:2];
  [v39 setRenderPipelineState:self->_mfxSharpenPSO];
  [v39 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v39 updateFence:self->_internalFence afterEncoderStages:2];
  v40 = self->_fence;
  if (v40)
  {
    [v39 updateFence:v40 afterEncoderStages:2];
  }

  else
  {
    [v39 barrierAfterStages:2 beforeQueueStages:self->_outputTextureBarrierStages visibilityOptions:1];
  }

  [v39 endEncoding];
  self->_frame = (self->_frame + 1) % self->_framesInFlight;

  MetalFxScopedSignpost::~MetalFxScopedSignpost(v44);
}

@end