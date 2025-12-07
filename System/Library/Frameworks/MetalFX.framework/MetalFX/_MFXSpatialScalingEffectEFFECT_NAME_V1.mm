@interface _MFXSpatialScalingEffectEFFECT_NAME_V1
- (_MFXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)device descriptor:(id)descriptor;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
@end

@implementation _MFXSpatialScalingEffectEFFECT_NAME_V1

- (_MFXSpatialScalingEffectEFFECT_NAME_V1)initWithDevice:(id)device descriptor:(id)descriptor
{
  deviceCopy = device;
  descriptorCopy = descriptor;
  v96.receiver = self;
  v96.super_class = _MFXSpatialScalingEffectEFFECT_NAME_V1;
  v9 = [(_MTLFXEffectBase *)&v96 init];
  objc_storeStrong(&v9->_device, device);
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v88 = [v10 pathForResource:@"default" ofType:@"metallib"];
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v88];
  v95 = 0;
  v89 = [deviceCopy newLibraryWithURL:v11 error:&v95];
  v12 = v95;

  v9->_inputLinear = 0;
  v9->_inputOutputNormalized = 1;
  v9->_colorTextureFormat = [descriptorCopy colorTextureFormat];
  v9->_outputTextureFormat = [descriptorCopy outputTextureFormat];
  v9->_inputWidth = [descriptorCopy inputWidth];
  v9->_inputHeight = [descriptorCopy inputHeight];
  v9->_outputWidth = [descriptorCopy outputWidth];
  v9->_outputHeight = [descriptorCopy outputHeight];
  colorProcessingMode = [descriptorCopy colorProcessingMode];
  v9->_colorProcessingMode = colorProcessingMode;
  if (colorProcessingMode >= 3)
  {
    goto LABEL_17;
  }

  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  mfxPassDescriptor = v9->_mfxPassDescriptor;
  v9->_mfxPassDescriptor = renderPassDescriptor;

  colorAttachments = [(MTLRenderPassDescriptor *)v9->_mfxPassDescriptor colorAttachments];
  v17 = [colorAttachments objectAtIndexedSubscript:0];
  [v17 setLoadAction:0];

  colorAttachments2 = [(MTLRenderPassDescriptor *)v9->_mfxPassDescriptor colorAttachments];
  v19 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v19 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments3 = [(MTLRenderPassDescriptor *)v9->_mfxPassDescriptor colorAttachments];
  v21 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v21 setStoreAction:1];

  [descriptorCopy colorTextureFormat];
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v9->_inputSRGB = (WORD4(v97) & 0x800) != 0;
  [descriptorCopy outputTextureFormat];
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v97 = 0u;
  MTLPixelFormatGetInfoForDevice();
  v9->_outputSRGB = (WORD4(v97) & 0x800) != 0;
  if (v9->_inputSRGB)
  {
    colorTextureFormat = [descriptorCopy colorTextureFormat];
    if (((colorTextureFormat - 31) > 0x32 || ((1 << (colorTextureFormat - 31)) & 0x4010000000001) == 0) && colorTextureFormat != 11)
    {
      goto LABEL_17;
    }
  }

  if (v9->_outputSRGB)
  {
    outputTextureFormat = [descriptorCopy outputTextureFormat];
    if (((outputTextureFormat - 31) > 0x32 || ((1 << (outputTextureFormat - 31)) & 0x4010000000001) == 0) && outputTextureFormat != 11)
    {
      goto LABEL_17;
    }
  }

  if (v9->_inputSRGB != v9->_outputSRGB)
  {
    NSLog(&cfstr_SMixedSrgbInpu.isa, "[_MFXSpatialScalingEffectEFFECT_NAME_V1 initWithDevice:descriptor:]");
LABEL_18:
    v24 = 0;
    v25 = v12;
    goto LABEL_19;
  }

  if (v9->_inputSRGB && v9->_colorProcessingMode >= 1)
  {
LABEL_17:
    MTLReportFailure();
    goto LABEL_18;
  }

  v9->_inputContentWidth = [descriptorCopy inputWidth];
  v9->_inputContentHeight = [descriptorCopy inputHeight];
  v9->_use3DPipeline = 1;
  v80 = v10;
  if (([(MTLDeviceSPI *)v9->_device supportsFamily:1001]& 1) != 0)
  {
    v78 = @"MFX_SHARPEN_SHADER_V1_FRAG";
    v79 = @"MFX_SCALE_SHADER_V1_FRAG";
    v76 = @"MFX_Sharpen";
    v77 = @"MFX_Scale";
  }

  else
  {
    name = [(MTLDeviceSPI *)v9->_device name];
    if ([name containsString:@"Intel"])
    {
      v78 = @"MFX_SHARPEN_SHADER_V1_FRAG";
      v79 = @"MFX_SCALE_SHADER_V1_FRAG";
      v76 = @"MFX_Sharpen";
      v77 = @"MFX_Scale";
    }

    else
    {
      v84 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"\\s\\d{3}\\D+" options:0 error:0];
      v28 = [v84 matchesInString:name options:0 range:{0, objc_msgSend(name, "length")}];
      v29 = [v28 count];

      if (v29 == 1)
      {
        v9->_use3DPipeline = 0;
        v77 = @"MFX_SCALE_SHADER_V1_FP32";
        v78 = @"MFX_SHARPEN_SHADER_V1_FRAG_FP32";
        v79 = @"MFX_SCALE_SHADER_V1_FRAG_FP32";
        v30 = @"MFX_SHARPEN_SHADER_V1_FP32";
      }

      else
      {
        v77 = @"MFX_Scale";
        v78 = @"MFX_SHARPEN_SHADER_V1_FRAG";
        v79 = @"MFX_SCALE_SHADER_V1_FRAG";
        v30 = @"MFX_Sharpen";
      }

      v76 = v30;
    }
  }

  use3DPipeline = v9->_use3DPipeline;
  v9->_colorTextureUsage = 1;
  v32 = !use3DPipeline;
  v33 = 7;
  if (!v32)
  {
    v33 = 5;
  }

  v9->_outputTextureUsage = v33;
  v9->_inputFormat = [descriptorCopy colorTextureFormat];
  v9->_outputFormat = [descriptorCopy outputTextureFormat];
  if (!v9->_outputSRGB)
  {
    outputTextureFormat2 = [descriptorCopy outputTextureFormat];
    goto LABEL_35;
  }

  outputTextureFormat3 = [descriptorCopy outputTextureFormat];
  if (outputTextureFormat3 > 70)
  {
    if (outputTextureFormat3 == 71)
    {
      outputTextureFormat2 = 70;
      goto LABEL_35;
    }

    if (outputTextureFormat3 == 81)
    {
      outputTextureFormat2 = 80;
      goto LABEL_35;
    }

LABEL_59:
    outputTextureFormat2 = 0;
    goto LABEL_35;
  }

  if (outputTextureFormat3 == 11)
  {
    outputTextureFormat2 = 10;
    goto LABEL_35;
  }

  if (outputTextureFormat3 != 31)
  {
    goto LABEL_59;
  }

  outputTextureFormat2 = 30;
LABEL_35:
  v9->_intermediatePixelFormat = outputTextureFormat2;
  v36 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:outputTextureFormat2 width:objc_msgSend(descriptorCopy height:"outputWidth") mipmapped:objc_msgSend(descriptorCopy, "outputHeight"), 0];
  texDesc = v9->_texDesc;
  v9->_texDesc = v36;

  [(MTLTextureDescriptor *)v9->_texDesc setStorageMode:2];
  if (v9->_use3DPipeline)
  {
    v38 = 5;
  }

  else
  {
    v38 = 7;
  }

  [(MTLTextureDescriptor *)v9->_texDesc setUsage:v38];
  v39 = [(MTLDeviceSPI *)v9->_device newTextureWithDescriptor:v9->_texDesc];
  mfxUpscaledTex = v9->_mfxUpscaledTex;
  v9->_mfxUpscaledTex = v39;

  [(MTLTexture *)v9->_mfxUpscaledTex setLabel:@"MetalFX_Upscaled"];
  v85 = [v89 newFunctionWithName:@"FSQuadVertexShader"];
  v81 = [v89 newFunctionWithName:@"MFX_NORMALIZE_SHADER_V1_FRAG"];
  v41 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v41 setLabel:@"MFX_NPRenderPipelineState"];
  [v41 setRasterSampleCount:1];
  [v41 setVertexFunction:v85];
  [v41 setFragmentFunction:v81];
  intermediatePixelFormat = v9->_intermediatePixelFormat;
  colorAttachments4 = [v41 colorAttachments];
  v44 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v44 setPixelFormat:intermediatePixelFormat];

  device = v9->_device;
  v94 = v12;
  v46 = [(MTLDeviceSPI *)device newRenderPipelineStateWithDescriptor:v41 error:&v94];
  v47 = v94;

  mfxNormPerceptPSO = v9->_mfxNormPerceptPSO;
  v9->_mfxNormPerceptPSO = v46;

  v49 = [v89 newFunctionWithName:v79];
  v50 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v50 setLabel:@"MFX_ScaleRenderPipelineStateV1"];
  [v50 setRasterSampleCount:1];
  [v50 setVertexFunction:v85];
  [v50 setFragmentFunction:v49];
  v51 = v9->_intermediatePixelFormat;
  colorAttachments5 = [v50 colorAttachments];
  v53 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v53 setPixelFormat:v51];

  v54 = v9->_device;
  v93 = v47;
  v55 = [(MTLDeviceSPI *)v54 newRenderPipelineStateWithDescriptor:v50 error:&v93];
  v82 = v49;
  v86 = v93;

  mfxUpscalePSO = v9->_mfxUpscalePSO;
  v9->_mfxUpscalePSO = v55;

  v57 = [v89 newFunctionWithName:v78];
  v58 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v58 setLabel:@"MFX_SharpenRenderPipelineStateV1"];
  [v58 setRasterSampleCount:1];
  [v58 setVertexFunction:v85];
  [v58 setFragmentFunction:v57];
  v59 = v9->_intermediatePixelFormat;
  colorAttachments6 = [v58 colorAttachments];
  v61 = [colorAttachments6 objectAtIndexedSubscript:0];
  [v61 setPixelFormat:v59];

  v62 = v9->_device;
  v92 = v86;
  v63 = [(MTLDeviceSPI *)v62 newRenderPipelineStateWithDescriptor:v58 error:&v92];
  v83 = v57;
  v64 = v92;

  mfxSharpenPSO = v9->_mfxSharpenPSO;
  v9->_mfxSharpenPSO = v63;

  v66 = [v89 newFunctionWithName:v77];
  v67 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v67 setLabel:@"MFX_ScaleComputePipelineState"];
  [v67 setComputeFunction:v66];
  [v67 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  v68 = v9->_device;
  v91 = v64;
  v69 = [(MTLDeviceSPI *)v68 newComputePipelineStateWithDescriptor:v67 error:&v91];
  v87 = v91;

  mfxUpscaleKernel = v9->_mfxUpscaleKernel;
  v9->_mfxUpscaleKernel = v69;

  v71 = [v89 newFunctionWithName:v76];
  v72 = objc_alloc_init(MEMORY[0x277CD6D30]);
  [v72 setLabel:@"MFX_SharpenComputePipelineState"];
  [v72 setComputeFunction:v71];
  [v72 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:1];
  v73 = v9->_device;
  v90 = v87;
  v74 = [(MTLDeviceSPI *)v73 newComputePipelineStateWithDescriptor:v72 error:&v90];
  v25 = v90;

  mfxSharpenKernel = v9->_mfxSharpenKernel;
  v9->_mfxSharpenKernel = v74;

  if (!v25 && v9->_mfxPassDescriptor && v9->_mfxUpscaledTex && v9->_mfxUpscalePSO && v9->_mfxSharpenPSO && v9->_mfxNormPerceptPSO && v9->_mfxUpscaleKernel && v9->_mfxSharpenKernel && v85 && v81 && v82 && v57)
  {
    [(_MTLFXSpatialScaler *)v9 _emitTelemetry:descriptorCopy forDevice:v9->_device];
    v10 = v80;
    if (MetalFXHUDEnabled() && MetalFXHUDAddTAAUMetrics(void)::onceToken != -1)
    {
      [_MFXSpatialScalingEffectEFFECT_NAME_V1 initWithDevice:descriptor:];
    }

    v24 = v9;
  }

  else
  {
    MTLReportFailure();
    v24 = 0;
    v10 = v80;
  }

LABEL_19:
  return v24;
}

- (void)encodeToCommandQueue:(id)queue
{
  commandBuffer = [queue commandBuffer];
  [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self encodeToCommandBuffer:?];
  [commandBuffer commit];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTLFXEffectBase *)self _beginEncode];
  v57 = bufferCopy;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v4 = MetalFXHUDInstanceV3(void)::v3;
  v5 = v4;
  if (v4)
  {
    [v4 markCommandBuffer:v57 component:3];
  }

  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_inputTexture, 0, 0, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    if ([(MTLTexture *)self->_outputTexture storageMode]!= 2)
    {
      MTLReportFailure();
    }
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v69, 0, self, 4, self->super.super.super._encodeID, 0);
  if (MTLTraceEnabled())
  {
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self inputWidth];
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self inputHeight];
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self outputWidth];
    [(_MFXSpatialScalingEffectEFFECT_NAME_V1 *)self outputHeight];
    if (MTLTraceEnabled())
    {
      [v57 globalTraceObjectID];
      kdebug_trace();
    }
  }

  colorProcessingMode = self->_colorProcessingMode;
  if (colorProcessingMode)
  {
    if (colorProcessingMode < 1)
    {
      v55 = self->_colorProcessingMode;
      v7 = 0;
      goto LABEL_20;
    }
  }

  else if (self->_inputOutputNormalized)
  {
    if (!self->_inputLinear)
    {
      v7 = 0;
      v55 = 0;
      goto LABEL_20;
    }

    colorProcessingMode = 1;
  }

  else
  {
    colorProcessingMode = 2;
  }

  v55 = colorProcessingMode;
  if (!self->_mfxNormPerceptTex)
  {
    [(MTLTextureDescriptor *)self->_texDesc setWidth:[(MTLTexture *)self->_inputTexture width]];
    [(MTLTextureDescriptor *)self->_texDesc setHeight:[(MTLTexture *)self->_inputTexture height]];
    v8 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:self->_texDesc];
    mfxNormPerceptTex = self->_mfxNormPerceptTex;
    self->_mfxNormPerceptTex = v8;

    [(MTLTexture *)self->_mfxNormPerceptTex setLabel:@"MetalFX_NormalizePerceptual"];
  }

  v7 = 1;
LABEL_20:
  memset(v68, 0, sizeof(v68));
  v66 = 0u;
  v67 = 0u;
  memset(v65, 0, sizeof(v65));
  inputContentWidth = self->_inputContentWidth;
  inputContentHeight = self->_inputContentHeight;
  width = [(MTLTexture *)self->_inputTexture width];
  height = [(MTLTexture *)self->_inputTexture height];
  width2 = [(MTLTexture *)self->_outputTexture width];
  height2 = [(MTLTexture *)self->_outputTexture height];
  v16.f32[0] = height;
  v17 = 1.0 / width2;
  v18 = 1.0 / height2;
  *&v66 = v17 * inputContentWidth;
  *(&v66 + 1) = v18 * inputContentHeight;
  *(&v66 + 2) = ((inputContentWidth * 0.5) * v17) + -0.5;
  *(&v66 + 3) = ((inputContentHeight * 0.5) * v18) + -0.5;
  v16.f32[1] = width;
  __asm { FMOV            V0.2S, #1.0 }

  v24 = vdiv_f32(_D0, v16);
  *&v67 = vrev64_s32(v24);
  DWORD2(v67) = v24.i32[1];
  v25 = vmul_f32(v24, 0x40000000);
  *(v68 + 12) = v25;
  v25.i32[1] = v24.i32[1];
  *(&v67 + 3) = -v24.f32[0];
  *v68 = -v24.f32[1];
  *(v68 + 4) = v25;
  *(&v68[1] + 1) = 4.0 * v24.f32[0];
  *(&v68[1] + 1) = 0;
  v65[0] = xmmword_2398F28B0;
  v64 = 0;
  inputTexture = self->_inputTexture;
  if (!self->_inputSRGB)
  {
    v58 = inputTexture;
    v28 = v57;
    goto LABEL_34;
  }

  pixelFormat = [(MTLTexture *)self->_inputTexture pixelFormat];
  v28 = v57;
  if (pixelFormat > 70)
  {
    if (pixelFormat == 71)
    {
      v29 = 70;
      goto LABEL_33;
    }

    if (pixelFormat == 81)
    {
      v29 = 80;
      goto LABEL_33;
    }

LABEL_30:
    v29 = 0;
    goto LABEL_33;
  }

  if (pixelFormat == 11)
  {
    v29 = 10;
    goto LABEL_33;
  }

  if (pixelFormat != 31)
  {
    goto LABEL_30;
  }

  v29 = 30;
LABEL_33:
  v58 = [(MTLTexture *)inputTexture newTextureViewWithPixelFormat:v29];
LABEL_34:
  outputTexture = self->_outputTexture;
  if (self->_outputSRGB)
  {
    v56 = [(MTLTexture *)outputTexture newTextureViewWithPixelFormat:self->_intermediatePixelFormat];
    if (!v7)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v56 = outputTexture;
    if (!v7)
    {
      goto LABEL_41;
    }
  }

  v31 = self->_mfxNormPerceptTex;
  colorAttachments = [(MTLRenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
  v33 = [colorAttachments objectAtIndexedSubscript:0];
  [v33 setTexture:v31];

  v34 = [v28 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
  [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:v34 forEncode:self->super.super.super._encodeID];
  fence = self->_fence;
  if (fence)
  {
    [v34 waitForFence:fence beforeStages:2];
  }

  [v34 setLabel:@"MetalFX_Normalize"];
  LOBYTE(v64) = v55 == 2;
  *(&v64 + 1) = 1;
  HIBYTE(v64) = 0;
  [v34 setFragmentBytes:&v64 length:4 atIndex:0];
  [v34 setRenderPipelineState:self->_mfxNormPerceptPSO];
  [v34 setFragmentTexture:v58 atIndex:0];
  [v34 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v34 endEncoding];

LABEL_41:
  if (self->_use3DPipeline)
  {
    mfxUpscaledTex = self->_mfxUpscaledTex;
    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
    v38 = [colorAttachments2 objectAtIndexedSubscript:0];
    [v38 setTexture:mfxUpscaledTex];

    v39 = [v28 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];
    [v39 setLabel:@"MetalFX_Scale"];
    [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:v39 forEncode:self->super.super.super._encodeID];
    v40 = self->_fence;
    if (v40)
    {
      [v39 waitForFence:v40 beforeStages:2];
    }

    [v39 setFragmentBytes:&v66 length:64 atIndex:0];
    v64 = 0;
    [v39 setFragmentBytes:&v64 length:4 atIndex:1];
    [v39 setRenderPipelineState:self->_mfxUpscalePSO];
    v41 = v58;
    if (v7)
    {
      v41 = self->_mfxNormPerceptTex;
    }

    [v39 setFragmentTexture:v41 atIndex:0];
    [v39 drawPrimitives:3 vertexStart:0 vertexCount:3];
    [v39 endEncoding];
    colorAttachments3 = [(MTLRenderPassDescriptor *)self->_mfxPassDescriptor colorAttachments];
    v43 = [colorAttachments3 objectAtIndexedSubscript:0];
    [v43 setTexture:v56];

    computeCommandEncoder = [v28 renderCommandEncoderWithDescriptor:self->_mfxPassDescriptor];

    [computeCommandEncoder setLabel:@"MetalFX_Sharpen"];
    [(_MTLFXEffect *)self _didCreateRenderCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
    [computeCommandEncoder setFragmentBytes:v65 length:64 atIndex:0];
    LOWORD(v64) = 0;
    BYTE2(v64) = v7;
    HIBYTE(v64) = v55 == 2;
    [computeCommandEncoder setFragmentBytes:&v64 length:4 atIndex:1];
    [computeCommandEncoder setRenderPipelineState:self->_mfxSharpenPSO];
    [computeCommandEncoder setFragmentTexture:self->_mfxUpscaledTex atIndex:0];
    [computeCommandEncoder drawPrimitives:3 vertexStart:0 vertexCount:3];
    v45 = self->_fence;
    if (v45)
    {
      [computeCommandEncoder updateFence:v45 afterStages:2];
    }

    [computeCommandEncoder endEncoding];
  }

  else
  {
    computeCommandEncoder = [v28 computeCommandEncoder];
    [(_MTLFXEffect *)self _didCreateComputeCommandEncoder:computeCommandEncoder forEncode:self->super.super.super._encodeID];
    [computeCommandEncoder setLabel:@"MetalFX_SpatialScaleSharpen"];
    if (self->_fence)
    {
      [computeCommandEncoder waitForFence:?];
    }

    [computeCommandEncoder setComputePipelineState:self->_mfxUpscaleKernel];
    [computeCommandEncoder setBytes:&v66 length:64 atIndex:0];
    v64 = 0;
    [computeCommandEncoder setBytes:&v64 length:4 atIndex:1];
    v46 = v58;
    if (v7)
    {
      v46 = self->_mfxNormPerceptTex;
    }

    [computeCommandEncoder setTexture:v46 atIndex:0];
    [computeCommandEncoder setTexture:self->_mfxUpscaledTex atIndex:1];
    width3 = [(MTLTexture *)self->_outputTexture width];
    v48 = ([(MTLTexture *)self->_outputTexture height]+ 15) >> 4;
    v61 = (width3 + 15) >> 4;
    v62 = v48;
    v63 = 1;
    v59 = xmmword_2398F2910;
    v60 = 1;
    [computeCommandEncoder dispatchThreadgroups:&v61 threadsPerThreadgroup:&v59];
    [computeCommandEncoder setBytes:v65 length:64 atIndex:0];
    LOWORD(v64) = 0;
    BYTE2(v64) = v7;
    HIBYTE(v64) = v55 == 2;
    [computeCommandEncoder setBytes:&v64 length:4 atIndex:1];
    [computeCommandEncoder setTexture:self->_mfxUpscaledTex atIndex:0];
    [computeCommandEncoder setTexture:v56 atIndex:1];
    [computeCommandEncoder setComputePipelineState:self->_mfxSharpenKernel];
    v61 = (width3 + 15) >> 4;
    v62 = v48;
    v63 = 1;
    v59 = xmmword_2398F2910;
    v60 = 1;
    [computeCommandEncoder dispatchThreadgroups:&v61 threadsPerThreadgroup:&v59];
    if (self->_fence)
    {
      [computeCommandEncoder updateFence:?];
    }

    [computeCommandEncoder endEncoding];
  }

  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
    v28 = v57;
  }

  if (MetalFXHUDInstance(void)::inst)
  {
    v49 = MetalFXHUDInstance();
    v50 = MetalFXHUDInstanceV3();
    v51 = v50;
    if (v49 && v50)
    {
      v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", self->_inputContentWidth, self->_inputContentHeight];
      [v51 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" label:v52];

      v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", self->_outputWidth, self->_outputHeight];
      [v51 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" label:v53];

      [v51 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.scaling" label:@"Spatial"];
    }
  }

  MetalFxScopedSignpost::~MetalFxScopedSignpost(v69);
}

@end