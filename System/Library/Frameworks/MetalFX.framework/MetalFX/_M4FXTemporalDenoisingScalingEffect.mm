@interface _M4FXTemporalDenoisingScalingEffect
- (CGPoint)jitterOffset;
- (CGPoint)motionVectorScale;
- (_M4FXTemporalDenoisingScalingEffect)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor history:(id)history;
- (__n128)setViewToClipMatrix:(__n128)matrix;
- (__n128)setWorldToViewMatrix:(__n128)matrix;
- (float)jitterOffsetX;
- (float)motionVectorScaleX;
- (id).cxx_construct;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
@end

@implementation _M4FXTemporalDenoisingScalingEffect

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

- (_M4FXTemporalDenoisingScalingEffect)initWithDevice:(id)device compiler:(id)compiler descriptor:(id)descriptor history:(id)history
{
  device;
  compiler;
  descriptorCopy = descriptor;
  history;
  v14.receiver = self;
  v14.super_class = _M4FXTemporalDenoisingScalingEffect;
  v12 = [(_MTL4FXEffect *)&v14 init];
  objc_storeStrong(&v12->_device, device);
  operator new();
}

- (void)dealloc
{
  if (self->_filter)
  {
    BRNet_v3_Filter<MFXDevice4>::~BRNet_v3_Filter();
  }

  self->_filter = 0;
  if (self->_denoiseFilter)
  {
    BFNet_v1_Filter<MFXDevice4>::~BFNet_v1_Filter();
  }

  self->_denoiseFilter = 0;
  device4 = self->device4;
  if (device4)
  {
    MFXDevice4::~MFXDevice4(device4);
    MEMORY[0x23EE7AA60]();
  }

  self->device4 = 0;
  v4.receiver = self;
  v4.super_class = _M4FXTemporalDenoisingScalingEffect;
  [(_M4FXTemporalDenoisingScalingEffect *)&v4 dealloc];
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  [(_MTL4FXEffect *)self _beginEncodeWithCommandBuffer:?];
  if (MTLReportFailureTypeEnabled())
  {
    checkInputOutputTexturesForDenoiser(self->_colorTexture, self->_depthTexture, self->_motionTexture, self->_normalTexture, self->_diffuseAlbedoTexture, self->_specularAlbedoTexture, self->_roughnessTexture, self->_specularHitDistanceTexture, self->_denoiseStrengthMaskTexture, self->_preUpscaleComposeTexture, self->_reactiveMaskTexture, self->_outputTexture, self->_inputWidth, self->_inputHeight, self->_colorTextureFormat, self->_inputContentWidth, self->_inputContentHeight, self->_outputWidth, self->_outputHeight, self->_outputTextureFormat, self->_depthTextureFormat, self->_motionTextureFormat, self->_normalTextureFormat, self->_diffuseAlbedoTextureFormat, self->_specularAlbedoTextureFormat, self->_roughnessTextureFormat, self->_specularHitDistanceTextureFormat, self->_denoiseStrengthMaskTextureFormat, self->_preUpscaleComposeTextureFormat, self->_reactiveMaskTextureFormat);
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
  *(self->_filter + 136) = *(self->_filter + 136) == 0;
  *(self->_denoiseFilter + 299) = *(self->_denoiseFilter + 299) == 0;
  [bufferCopy useResidencySet:self->device4->var2];
  device4 = self->device4;
  MFXComputeEncoder4::beginEncoding(device4->var4, bufferCopy, device4->var3);
  var4 = device4->var4;
  if (MTLTraceEnabled())
  {
    outputWidth = [(_M4FXTemporalDenoisingScalingEffect *)self outputWidth];
    outputHeight = [(_M4FXTemporalDenoisingScalingEffect *)self outputHeight];
    inputWidth = [(_M4FXTemporalDenoisingScalingEffect *)self inputWidth];
    v19 = inputWidth & 0xFFFFFFFF0000FFFFLL | ([(_M4FXTemporalDenoisingScalingEffect *)self inputHeight]<< 16);
    v20 = self->device4;
    v20->var6 = self;
    MFXDevice4::emitSignPostForComputeEncoder(v20, v12 | (v13 << 16) | (outputWidth << 32) | (outputHeight << 48), v19);
  }

  fence = self->_fence;
  if (fence)
  {
    [*var4 waitForFence:fence beforeEncoderStages:0x8000000];
  }

  [*var4 waitForFence:self->_internalFence beforeEncoderStages:0x8000000];
  *var4;
  var4[1];
  var4[3];
  BRNet_v3_Filter<MFXDevice4>::encodeExposureCalcForDenoiser();
}

- (__n128)setWorldToViewMatrix:(__n128)matrix
{
  result[47] = a2;
  result[48] = matrix;
  result[49] = a4;
  result[50] = a5;
  return result;
}

- (__n128)setViewToClipMatrix:(__n128)matrix
{
  result[51] = a2;
  result[52] = matrix;
  result[53] = a4;
  result[54] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 31) = 0u;
  *(self + 32) = 0u;
  *(self + 30) = 0u;
  return self;
}

@end