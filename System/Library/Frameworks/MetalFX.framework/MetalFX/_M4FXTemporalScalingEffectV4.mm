@interface _M4FXTemporalScalingEffectV4
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (CGPoint)previousJitterOffset;
- (_M4FXTemporalScalingEffectV4)initWithDevice:(id)device descriptor:(id)descriptor compiler:(id)compiler history:(id)history;
- (__n128)setCurrentViewToClipMatrix:(__n128)matrix;
- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix;
- (__n128)setPreviousViewToClipMatrix:(__n128)matrix;
- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
@end

@implementation _M4FXTemporalScalingEffectV4

- (float)jitterOffsetX
{
  v2 = *&self->_jitterOffset[4];
  LODWORD(result) = v2;
  return result;
}

- (float)motionVectorScaleX
{
  v2 = *&self->_motionVectorScale[4];
  LODWORD(result) = v2;
  return result;
}

- (CGPoint)jitterOffset
{
  v2 = vcvtq_f64_f32(*&self->_jitterOffset[4]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)motionVectorScale
{
  v2 = vcvtq_f64_f32(*&self->_motionVectorScale[4]);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (_M4FXTemporalScalingEffectV4)initWithDevice:(id)device descriptor:(id)descriptor compiler:(id)compiler history:(id)history
{
  v15 = *MEMORY[0x277D85DE8];
  device;
  descriptorCopy = descriptor;
  compiler;
  history;
  v14.receiver = self;
  v14.super_class = _M4FXTemporalScalingEffectV4;
  v12 = [(_MTL4FXEffect *)&v14 init];
  objc_storeStrong(&v12->_device, device);
  operator new();
}

- (void)dealloc
{
  device4 = self->device4;
  if (device4)
  {
    MFXDevice4::~MFXDevice4(device4);
    MEMORY[0x23EE7AA60]();
  }

  self->device4 = 0;
  if (self->_filter)
  {
    BRNet_v3_Filter<MFXDevice4>::~BRNet_v3_Filter();
  }

  self->_filter = 0;
  v4.receiver = self;
  v4.super_class = _M4FXTemporalScalingEffectV4;
  [(_M4FXTemporalScalingEffectV4 *)&v4 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTL4FXEffect *)self _beginEncodeWithCommandBuffer:bufferCopy];
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  if (!self->_fence && !self->_outputTextureBarrierStages)
  {
    MTLReportFailure();
  }

  MetalFxScopedSignpost::MetalFxScopedSignpost(v25, 0, self, 7, self->super.super.super._encodeID, 0);
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTextures(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat);
    inputContentWidth = self->_inputContentWidth;
    inputContentHeight = self->_inputContentHeight;
    inputContentMinScale = self->_inputContentMinScale;
    inputContentMaxScale = self->_inputContentMaxScale;
    outputWidth = self->_outputWidth;
    outputHeight = self->_outputHeight;
    v10 = fminf(outputWidth / inputContentWidth, outputHeight / inputContentHeight);
    if (v10 < inputContentMinScale)
    {
      v22 = v10;
      v23 = inputContentMinScale;
      MTLReportFailure();
    }

    v11 = fmaxf(outputWidth / (inputContentWidth + 1), outputHeight / (inputContentHeight + 1));
    if (v11 > inputContentMaxScale)
    {
      v22 = v11;
      v23 = inputContentMaxScale;
      MTLReportFailure();
    }

    if ([(MTLTexture *)self->_outputTexture storageMode:*&v22]!= 2)
    {
      MTLReportFailure();
    }
  }

  self->_colorTexture;
  self->_depthTexture;
  self->_motionTexture;
  self->_outputTexture;
  self->_exposureTexture;
  self->_reactiveMaskTexture;
  v12 = self->_inputContentWidth;
  v13 = self->_inputContentHeight;
  [bufferCopy useResidencySet:self->device4->var2];
  if (self->super.super.super._useRefTensors)
  {
    MTLReportFailure();
  }

  device4 = self->device4;
  MFXComputeEncoder4::beginEncoding(device4->var4, bufferCopy, device4->var3);
  var4 = device4->var4;
  [*var4 setLabel:@"MetalFX_Temporal_PreProcessing"];
  if (MTLTraceEnabled())
  {
    outputWidth = [(_M4FXTemporalScalingEffectV4 *)self outputWidth];
    outputHeight = [(_M4FXTemporalScalingEffectV4 *)self outputHeight];
    inputWidth = [(_M4FXTemporalScalingEffectV4 *)self inputWidth];
    v19 = inputWidth & 0xFFFFFFFF0000FFFFLL | ([(_M4FXTemporalScalingEffectV4 *)self inputHeight]<< 16);
    v20 = self->device4;
    v20->var6 = self;
    MFXDevice4::emitSignPostForComputeEncoder(v20, v12 | (v13 << 16) | (outputWidth << 32) | (outputHeight << 48), v19);
  }

  fence = self->_fence;
  if (fence)
  {
    [*var4 waitForFence:fence beforeEncoderStages:0x8000000];
  }

  [*var4 waitForFence:self->internalFence beforeEncoderStages:0x8000000];
  [*var4 waitForFence:self->internalMLFence beforeEncoderStages:0x8000000];
  BRNet_v3_Filter<MFXDevice4>::encodePre();
}

- (CGPoint)previousJitterOffset
{
  x = self->_previousJitterOffset.x;
  y = self->_previousJitterOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (__n128)setCurrentWorldToViewMatrix:(__n128)matrix
{
  result[36] = a2;
  result[37] = matrix;
  result[38] = a4;
  result[39] = a5;
  return result;
}

- (__n128)setCurrentViewToClipMatrix:(__n128)matrix
{
  result[40] = a2;
  result[41] = matrix;
  result[42] = a4;
  result[43] = a5;
  return result;
}

- (__n128)setPreviousWorldToViewMatrix:(__n128)matrix
{
  result[44] = a2;
  result[45] = matrix;
  result[46] = a4;
  result[47] = a5;
  return result;
}

- (__n128)setPreviousViewToClipMatrix:(__n128)matrix
{
  result[48] = a2;
  result[49] = matrix;
  result[50] = a4;
  result[51] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 54) = 0;
  return self;
}

@end