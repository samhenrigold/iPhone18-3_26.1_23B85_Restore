@interface MPSSVGF
- (MPSSVGF)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSSVGF)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSSVGF)initWithDevice:(id)device;
- (MPSSVGFFunctionHash)getHashForKernelID:(SEL)d haveMotionVectorTexture:(unint64_t)texture haveDepthNormalTexture:(BOOL)normalTexture haveSecondTexture:(BOOL)secondTexture;
- (MPSSVGFParams)params;
- (id)description;
- (id)getPipelineForFunctionName:(id)name kernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthNormalTexture:(BOOL)normalTexture haveSecondTexture:(BOOL)secondTexture;
- (unint64_t)channelCount:(id)count;
- (void)dealloc;
- (void)encodeBilateralFilterToCommandBuffer:(id)commandBuffer stepDistance:(NSUInteger)stepDistance sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id)destinationTexture2 depthNormalTexture:(id)depthNormalTexture;
- (void)encodeReprojectionToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture previousLuminanceMomentsTexture:(id)previousLuminanceMomentsTexture destinationLuminanceMomentsTexture:(id)destinationLuminanceMomentsTexture sourceTexture2:(id)sourceTexture2 previousTexture2:(id)previousTexture2 destinationTexture2:(id)destinationTexture2 previousLuminanceMomentsTexture2:(id)previousLuminanceMomentsTexture2 destinationLuminanceMomentsTexture2:(id)destinationLuminanceMomentsTexture2 previousFrameCountTexture:(id)previousFrameCountTexture destinationFrameCountTexture:(id)destinationFrameCountTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture;
- (void)encodeVarianceEstimationToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture luminanceMomentsTexture:(id)luminanceMomentsTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 luminanceMomentsTexture2:(id)luminanceMomentsTexture2 destinationTexture2:(id)destinationTexture2 frameCountTexture:(id)frameCountTexture depthNormalTexture:(id)depthNormalTexture;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)setBilateralFilterSigma:(float)bilateralFilterSigma;
- (void)setChannelCount2:(NSUInteger)channelCount2;
- (void)setChannelCount:(NSUInteger)channelCount;
- (void)setDepthWeight:(float)depthWeight;
- (void)setLuminanceWeight:(float)luminanceWeight;
- (void)setNormalWeight:(float)normalWeight;
- (void)setReprojectionThreshold:(float)reprojectionThreshold;
- (void)setTemporalReprojectionBlendFactor:(float)temporalReprojectionBlendFactor;
- (void)setTemporalWeighting:(MPSTemporalWeighting)temporalWeighting;
- (void)setVarianceEstimationSigma:(float)varianceEstimationSigma;
- (void)setVariancePrefilterSigma:(float)variancePrefilterSigma;
@end

@implementation MPSSVGF

- (void)setVariancePrefilterSigma:(float)variancePrefilterSigma
{
  if (variancePrefilterSigma <= 0.0)
  {
    sub_239E207EC(self, a2);
  }

  self->_variancePrefilterSigma = variancePrefilterSigma;
}

- (void)setBilateralFilterSigma:(float)bilateralFilterSigma
{
  if (bilateralFilterSigma <= 0.0)
  {
    sub_239E20838(self, a2);
  }

  self->_bilateralFilterSigma = bilateralFilterSigma;
}

- (void)setTemporalWeighting:(MPSTemporalWeighting)temporalWeighting
{
  if (temporalWeighting >= 2)
  {
    sub_239E20884(self, a2);
  }

  self->_temporalWeighting = temporalWeighting;
}

- (void)setTemporalReprojectionBlendFactor:(float)temporalReprojectionBlendFactor
{
  if (temporalReprojectionBlendFactor < 0.0 || temporalReprojectionBlendFactor > 1.0)
  {
    sub_239E208D4(self, a2);
  }

  self->_temporalReprojectionBlendFactor = temporalReprojectionBlendFactor;
}

- (void)setDepthWeight:(float)depthWeight
{
  if (depthWeight <= 0.0)
  {
    sub_239E20920(self, a2);
  }

  self->_depthWeight = depthWeight;
}

- (void)setNormalWeight:(float)normalWeight
{
  if (normalWeight < 0.0)
  {
    sub_239E2096C(self, a2);
  }

  self->_normalWeight = normalWeight;
}

- (void)setLuminanceWeight:(float)luminanceWeight
{
  if (luminanceWeight < 0.0)
  {
    sub_239E209B8(self, a2);
  }

  self->_luminanceWeight = luminanceWeight;
}

- (void)setReprojectionThreshold:(float)reprojectionThreshold
{
  if (reprojectionThreshold < 0.0)
  {
    sub_239E20A04(self, a2);
  }

  self->_reprojectionThreshold = reprojectionThreshold;
}

- (void)setVarianceEstimationSigma:(float)varianceEstimationSigma
{
  if (varianceEstimationSigma <= 0.0)
  {
    sub_239E20A50(self, a2);
  }

  self->_varianceEstimationSigma = varianceEstimationSigma;
}

- (void)setChannelCount:(NSUInteger)channelCount
{
  if (channelCount - 1 >= 3)
  {
    sub_239E20A9C(channelCount, a2);
  }

  self->_channelCount = channelCount;
}

- (void)setChannelCount2:(NSUInteger)channelCount2
{
  if (channelCount2 - 1 >= 3)
  {
    sub_239E20AE8(channelCount2, a2);
  }

  self->_channelCount2 = channelCount2;
}

- (MPSSVGF)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSSVGF;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_temporalWeighting = 0;
    result->_temporalReprojectionBlendFactor = 0.2;
    result->_bilateralFilterSigma = 1.2;
    result->_depthWeight = 1.0;
    result->_normalWeight = 128.0;
    result->_luminanceWeight = 4.0;
    result->_variancePrefilterSigma = 1.33;
    result->_reprojectionThreshold = 0.01;
    result->_varianceEstimationSigma = 2.0;
    result->_minimumFramesForVarianceEstimation = 4;
    result->_varianceEstimationRadius = 3;
    result->_variancePrefilterRadius = 1;
    result->_bilateralFilterRadius = 2;
    result->_channelCount = 3;
    result->_channelCount2 = 3;
  }

  return result;
}

- (MPSSVGF)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v32.receiver = self;
  v32.super_class = MPSSVGF;
  v5 = [(MPSKernel *)&v32 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v5->_temporalWeighting = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSSVGFKeyTemporalWeighting");
      objc_msgSend_decodeFloatForKey_(aDecoder, v8, @"MPSSVGFKeyTemporalReprojectionBlendFactor");
      v7->_temporalReprojectionBlendFactor = v9;
      objc_msgSend_decodeFloatForKey_(aDecoder, v10, @"MPSSVGFKeyVariancePrefilterSigma");
      v7->_variancePrefilterSigma = v11;
      objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSSVGFKeyBilateralFilterSigma");
      v7->_bilateralFilterSigma = v13;
      objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSSVGFKeyDepthWeight");
      v7->_depthWeight = v15;
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSSVGFKeyNormalWeight");
      v7->_normalWeight = v17;
      objc_msgSend_decodeFloatForKey_(aDecoder, v18, @"MPSSVGFKeyLuminanceWeight");
      v7->_luminanceWeight = v19;
      objc_msgSend_decodeFloatForKey_(aDecoder, v20, @"MPSSVGFKeyReprojectionThreshold");
      v7->_reprojectionThreshold = v21;
      objc_msgSend_decodeFloatForKey_(aDecoder, v22, @"MPSSVGFKeyVarianceEstimationSigma");
      v7->_varianceEstimationSigma = v23;
      v7->_minimumFramesForVarianceEstimation = objc_msgSend_decodeInt64ForKey_(aDecoder, v24, @"MPSSVGFKeyMinimumFramesForVarianceEstimation");
      v7->_varianceEstimationRadius = objc_msgSend_decodeInt64ForKey_(aDecoder, v25, @"MPSSVGFKeyVarianceEstimationRadius");
      v7->_variancePrefilterRadius = objc_msgSend_decodeInt64ForKey_(aDecoder, v26, @"MPSSVGFKeyVariancePrefilterRadius");
      v7->_bilateralFilterRadius = objc_msgSend_decodeInt64ForKey_(aDecoder, v27, @"MPSSVGFKeyBilateralFilterRadius");
      v7->_channelCount = objc_msgSend_decodeInt64ForKey_(aDecoder, v28, @"MPSSVGFKeyChannelCount");
      v7->_channelCount2 = objc_msgSend_decodeInt64ForKey_(aDecoder, v29, @"MPSSVGFKeyChannelCount2");
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v30 = objc_opt_class();
        NSStringFromClass(v30);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MPSSVGF;
  [(MPSKernel *)&v2 dealloc];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v28.receiver = self;
  v28.super_class = MPSSVGF;
  [(MPSKernel *)&v28 encodeWithCoder:?];
  objc_msgSend_encodeInteger_forKey_(coder, v5, self->_temporalWeighting, @"MPSSVGFKeyTemporalWeighting");
  *&v6 = self->_temporalReprojectionBlendFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v7, @"MPSSVGFKeyTemporalReprojectionBlendFactor", v6);
  *&v8 = self->_variancePrefilterSigma;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"MPSSVGFKeyVariancePrefilterSigma", v8);
  *&v10 = self->_bilateralFilterSigma;
  objc_msgSend_encodeFloat_forKey_(coder, v11, @"MPSSVGFKeyBilateralFilterSigma", v10);
  *&v12 = self->_depthWeight;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"MPSSVGFKeyDepthWeight", v12);
  *&v14 = self->_normalWeight;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"MPSSVGFKeyNormalWeight", v14);
  *&v16 = self->_luminanceWeight;
  objc_msgSend_encodeFloat_forKey_(coder, v17, @"MPSSVGFKeyLuminanceWeight", v16);
  *&v18 = self->_reprojectionThreshold;
  objc_msgSend_encodeFloat_forKey_(coder, v19, @"MPSSVGFKeyReprojectionThreshold", v18);
  *&v20 = self->_varianceEstimationSigma;
  objc_msgSend_encodeFloat_forKey_(coder, v21, @"MPSSVGFKeyVarianceEstimationSigma", v20);
  objc_msgSend_encodeInteger_forKey_(coder, v22, self->_minimumFramesForVarianceEstimation, @"MPSSVGFKeyMinimumFramesForVarianceEstimation");
  objc_msgSend_encodeInteger_forKey_(coder, v23, self->_varianceEstimationRadius, @"MPSSVGFKeyVarianceEstimationRadius");
  objc_msgSend_encodeInteger_forKey_(coder, v24, self->_variancePrefilterRadius, @"MPSSVGFKeyVariancePrefilterRadius");
  objc_msgSend_encodeInteger_forKey_(coder, v25, self->_bilateralFilterRadius, @"MPSSVGFKeyBilateralFilterRadius");
  objc_msgSend_encodeInteger_forKey_(coder, v26, self->_channelCount, @"MPSSVGFKeyChannelCount");
  objc_msgSend_encodeInteger_forKey_(coder, v27, self->_channelCount2, @"MPSSVGFKeyChannelCount2");
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MPSSVGF;
  v4 = [(MPSSVGF *)&v9 description];
  temporalWeighting = self->_temporalWeighting;
  if (temporalWeighting == 1)
  {
    v7 = "MPSTemporalWeightingExponentialMovingAverage";
  }

  else
  {
    v7 = "Unknown";
  }

  if (temporalWeighting)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\ttemporal weighting: %s\n\ttemporal reprojection blend factor: %f\n\tvariance prefilter sigma: %f\n\tbilateral filter sigma: %f\n\tdepth weight: %f\n\tnormal weight: %f\n\tluminance weight: %f\n\treprojection threshold: %f\n\tvariance estimation sigma: %f\n\tminimum frames for variance estimation: %u\n\tvariance estimation radius: %u\n\tvariance prefilter radius: %u\n\tbilateral filter radius: %u\n\tchannel count: %u\n\tchannel count 2: %u", v4, v7, self->_temporalReprojectionBlendFactor, self->_variancePrefilterSigma, self->_bilateralFilterSigma, self->_depthWeight, self->_normalWeight, self->_luminanceWeight, self->_reprojectionThreshold, self->_varianceEstimationSigma, self->_minimumFramesForVarianceEstimation, self->_varianceEstimationRadius, self->_variancePrefilterRadius, self->_bilateralFilterRadius, self->_channelCount, self->_channelCount2);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\ttemporal weighting: %s\n\ttemporal reprojection blend factor: %f\n\tvariance prefilter sigma: %f\n\tbilateral filter sigma: %f\n\tdepth weight: %f\n\tnormal weight: %f\n\tluminance weight: %f\n\treprojection threshold: %f\n\tvariance estimation sigma: %f\n\tminimum frames for variance estimation: %u\n\tvariance estimation radius: %u\n\tvariance prefilter radius: %u\n\tbilateral filter radius: %u\n\tchannel count: %u\n\tchannel count 2: %u", v4, "MPSTemporalWeightingAverage", self->_temporalReprojectionBlendFactor, self->_variancePrefilterSigma, self->_bilateralFilterSigma, self->_depthWeight, self->_normalWeight, self->_luminanceWeight, self->_reprojectionThreshold, self->_varianceEstimationSigma, self->_minimumFramesForVarianceEstimation, self->_varianceEstimationRadius, self->_variancePrefilterRadius, self->_bilateralFilterRadius, self->_channelCount, self->_channelCount2);
  }
}

- (MPSSVGF)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSSVGF;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_temporalWeighting = self->_temporalWeighting;
    result->_temporalReprojectionBlendFactor = self->_temporalReprojectionBlendFactor;
    result->_variancePrefilterSigma = self->_variancePrefilterSigma;
    result->_bilateralFilterSigma = self->_bilateralFilterSigma;
    result->_depthWeight = self->_depthWeight;
    result->_normalWeight = self->_normalWeight;
    result->_luminanceWeight = self->_luminanceWeight;
    result->_reprojectionThreshold = self->_reprojectionThreshold;
    result->_varianceEstimationSigma = self->_varianceEstimationSigma;
    result->_minimumFramesForVarianceEstimation = self->_minimumFramesForVarianceEstimation;
    result->_varianceEstimationRadius = self->_varianceEstimationRadius;
    result->_variancePrefilterRadius = self->_variancePrefilterRadius;
    result->_bilateralFilterRadius = self->_bilateralFilterRadius;
    result->_channelCount = self->_channelCount;
    result->_channelCount2 = self->_channelCount2;
  }

  return result;
}

- (MPSSVGFFunctionHash)getHashForKernelID:(SEL)d haveMotionVectorTexture:(unint64_t)texture haveDepthNormalTexture:(BOOL)normalTexture haveSecondTexture:(BOOL)secondTexture
{
  if (normalTexture)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  if (secondTexture)
  {
    v8 = 16;
  }

  else
  {
    v8 = 0;
  }

  if (a7)
  {
    v9 = 32;
  }

  else
  {
    v9 = 0;
  }

  v10 = (v8 | v7 | v9) & 0xFFFB | *&retstr->var0.var0 & 0xFC00 | texture & 3 | (4 * (*&self[4].var0.var0 & 1));
  v11 = *&self[6].var3;
  retstr->var3 = *&self[6].var1;
  *(&retstr->var3 + 1) = v11;
  retstr[1].var0.var0 = self[7].var0.var1;
  *&retstr->var0.var0 = v10 & 0xFC3F | ((self[5].var1 & 3) << 6) | ((self[5].var3 & 3) << 8);
  return self;
}

- (id)getPipelineForFunctionName:(id)name kernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthNormalTexture:(BOOL)normalTexture haveSecondTexture:(BOOL)secondTexture
{
  v13 = 0u;
  v14 = 0u;
  if (self)
  {
    objc_msgSend_getHashForKernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(self, a2, d, texture, normalTexture, secondTexture);
  }

  v9 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  v10 = *(&self->super.super.isa + *MEMORY[0x277CD7370]);
  v12[0] = v13;
  v12[1] = v14;
  return sub_239DEEE1C(name, v9, v10, v12, sub_239DEEFC0);
}

- (MPSSVGFParams)params
{
  var1 = self[3].var1;
  retstr->var2 = self[3].var0;
  retstr->var3 = var1;
  retstr->var4 = self[3].var2;
  var4 = self[2].var4;
  var3 = self[3].var3;
  retstr->var0 = self[2].var8;
  retstr->var1 = var3;
  retstr->var6 = self[3].var4;
  retstr->var7 = var4;
  retstr->var5 = *&self[4].var0;
  LODWORD(retstr->var8) = self[2].var5;
  return self;
}

- (unint64_t)channelCount:(id)count
{
  v3 = *(&self->super.super.isa + *MEMORY[0x277CD7350]);
  v4 = objc_msgSend_pixelFormat(count, a2, count);
  PixelInfo = MPSDevice::GetPixelInfo(v3, v4, MPSImageFeatureChannelFormatNone);
  if ((PixelInfo & 0xE000000) != 0)
  {
    return HIBYTE(PixelInfo) & 0xF;
  }

  else
  {
    return 1;
  }
}

- (void)encodeReprojectionToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture previousLuminanceMomentsTexture:(id)previousLuminanceMomentsTexture destinationLuminanceMomentsTexture:(id)destinationLuminanceMomentsTexture sourceTexture2:(id)sourceTexture2 previousTexture2:(id)previousTexture2 destinationTexture2:(id)destinationTexture2 previousLuminanceMomentsTexture2:(id)previousLuminanceMomentsTexture2 destinationLuminanceMomentsTexture2:(id)destinationLuminanceMomentsTexture2 previousFrameCountTexture:(id)previousFrameCountTexture destinationFrameCountTexture:(id)destinationFrameCountTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture
{
  v21 = sourceTexture;
  selfCopy = self;
  v122 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v122))
  {
    goto LABEL_48;
  }

  if (commandBuffer)
  {
    if (sourceTexture)
    {
      goto LABEL_4;
    }
  }

  else
  {
    self = sub_239E20B9C(self, a2);
    if (v21)
    {
      goto LABEL_4;
    }
  }

  sub_239E20BEC(self, a2);
LABEL_4:
  objc_msgSend_channelCount_(selfCopy, a2, v21);
  v26 = objc_msgSend_channelCount_(selfCopy, v25, v21);
  if (v26 < selfCopy->_channelCount)
  {
    v26 = sub_239E20C3C(selfCopy, v21);
    if (previousTexture)
    {
      goto LABEL_6;
    }
  }

  else if (previousTexture)
  {
    goto LABEL_6;
  }

  sub_239E20C94(v26, v27);
LABEL_6:
  objc_msgSend_channelCount_(selfCopy, v27, previousTexture);
  v29 = objc_msgSend_channelCount_(selfCopy, v28, previousTexture);
  if (v29 < selfCopy->_channelCount)
  {
    v29 = sub_239E20CE4(selfCopy, previousTexture);
    if (destinationTexture)
    {
      goto LABEL_8;
    }
  }

  else if (destinationTexture)
  {
    goto LABEL_8;
  }

  sub_239E20D3C(v29, v30);
LABEL_8:
  objc_msgSend_channelCount_(selfCopy, v30, destinationTexture);
  v32 = objc_msgSend_channelCount_(selfCopy, v31, destinationTexture);
  if (v32 < selfCopy->_channelCount)
  {
    v32 = sub_239E20D8C(selfCopy, destinationTexture);
    if (previousLuminanceMomentsTexture)
    {
      goto LABEL_10;
    }
  }

  else if (previousLuminanceMomentsTexture)
  {
    goto LABEL_10;
  }

  sub_239E20DE4(v32, v33);
LABEL_10:
  objc_msgSend_channelCount_(selfCopy, v33, previousLuminanceMomentsTexture);
  v35 = objc_msgSend_channelCount_(selfCopy, v34, previousLuminanceMomentsTexture);
  if (v35 <= 1)
  {
    v35 = sub_239E20E34(selfCopy, previousLuminanceMomentsTexture);
    if (destinationLuminanceMomentsTexture)
    {
      goto LABEL_12;
    }
  }

  else if (destinationLuminanceMomentsTexture)
  {
    goto LABEL_12;
  }

  sub_239E20E84(v35, v36);
LABEL_12:
  objc_msgSend_channelCount_(selfCopy, v36, destinationLuminanceMomentsTexture);
  v38 = objc_msgSend_channelCount_(selfCopy, v37, destinationLuminanceMomentsTexture);
  if (v38 <= 1)
  {
    v38 = sub_239E20ED4(selfCopy, destinationLuminanceMomentsTexture);
  }

  if (sourceTexture2)
  {
    objc_msgSend_channelCount_(selfCopy, v39, sourceTexture2);
    v41 = objc_msgSend_channelCount_(selfCopy, v40, sourceTexture2);
    if (v41 < selfCopy->_channelCount2)
    {
      v41 = sub_239E20F24(selfCopy, sourceTexture2);
    }

    v43 = previousTexture2;
    if (!previousTexture2)
    {
      sub_239E20F7C(v41, v42);
      v43 = 0;
    }

    v44 = destinationLuminanceMomentsTexture;
    v45 = v43;
    objc_msgSend_channelCount_(selfCopy, v42, v43);
    v47 = objc_msgSend_channelCount_(selfCopy, v46, v45);
    if (v47 < selfCopy->_channelCount2)
    {
      v47 = sub_239E20FCC(selfCopy, previousTexture2);
    }

    v49 = destinationTexture2;
    if (destinationTexture2)
    {
      objc_msgSend_channelCount_(selfCopy, v48, destinationTexture2);
    }

    else
    {
      sub_239E21024(v47, v48);
      v49 = 0;
      objc_msgSend_channelCount_(selfCopy, v117, 0);
    }

    v51 = objc_msgSend_channelCount_(selfCopy, v50, v49);
    v21 = sourceTexture;
    if (v51 < selfCopy->_channelCount2)
    {
      v51 = sub_239E21074(selfCopy, destinationTexture2);
    }

    v53 = previousLuminanceMomentsTexture2;
    destinationLuminanceMomentsTexture = v44;
    if (previousLuminanceMomentsTexture2)
    {
      objc_msgSend_channelCount_(selfCopy, v52, previousLuminanceMomentsTexture2);
    }

    else
    {
      sub_239E210CC(v51, v52);
      v53 = 0;
      objc_msgSend_channelCount_(selfCopy, v118, 0);
    }

    v55 = objc_msgSend_channelCount_(selfCopy, v54, v53);
    if (v55 <= 1)
    {
      v55 = sub_239E2111C(selfCopy, previousLuminanceMomentsTexture2);
    }

    v57 = destinationLuminanceMomentsTexture2;
    if (destinationLuminanceMomentsTexture2)
    {
      objc_msgSend_channelCount_(selfCopy, v56, destinationLuminanceMomentsTexture2);
    }

    else
    {
      sub_239E2116C(v55, v56);
      v57 = 0;
      objc_msgSend_channelCount_(selfCopy, v119, 0);
    }

    v38 = objc_msgSend_channelCount_(selfCopy, v58, v57);
    if (v38 <= 1)
    {
      v38 = sub_239E211BC(selfCopy, destinationLuminanceMomentsTexture2);
    }
  }

  v59 = previousFrameCountTexture;
  if (previousFrameCountTexture)
  {
    objc_msgSend_channelCount_(selfCopy, v39, previousFrameCountTexture);
  }

  else
  {
    sub_239E2120C(v38, v39);
    v59 = 0;
    objc_msgSend_channelCount_(selfCopy, v115, 0);
  }

  v61 = objc_msgSend_channelCount_(selfCopy, v60, v59);
  if (!v61)
  {
    v61 = sub_239E2125C(selfCopy, previousFrameCountTexture);
  }

  v63 = destinationFrameCountTexture;
  if (destinationFrameCountTexture)
  {
    objc_msgSend_channelCount_(selfCopy, v62, destinationFrameCountTexture);
  }

  else
  {
    sub_239E212AC(v61, v62);
    v63 = 0;
    objc_msgSend_channelCount_(selfCopy, v116, 0);
  }

  if (!objc_msgSend_channelCount_(selfCopy, v64, v63))
  {
    sub_239E212FC(selfCopy, destinationFrameCountTexture);
  }

  if (motionVectorTexture)
  {
    objc_msgSend_channelCount_(selfCopy, a2, motionVectorTexture);
    v66 = objc_msgSend_channelCount_(selfCopy, v65, motionVectorTexture);
    if (v66 <= 1)
    {
      v66 = sub_239E2134C(selfCopy, motionVectorTexture);
      if (previousDepthNormalTexture)
      {
        goto LABEL_44;
      }
    }

    else if (previousDepthNormalTexture)
    {
      goto LABEL_44;
    }

    sub_239E2139C(v66, v67);
LABEL_44:
    objc_msgSend_channelCount_(selfCopy, v67, previousDepthNormalTexture);
    v69 = objc_msgSend_channelCount_(selfCopy, v68, previousDepthNormalTexture);
    if (v69 == 4)
    {
      if (depthNormalTexture)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v69 = sub_239E213EC(selfCopy, previousDepthNormalTexture);
      if (depthNormalTexture)
      {
        goto LABEL_46;
      }
    }

    sub_239E2143C(v69, v70);
LABEL_46:
    objc_msgSend_channelCount_(selfCopy, v70, depthNormalTexture);
    if (objc_msgSend_channelCount_(selfCopy, v71, depthNormalTexture) != 4)
    {
      sub_239E2148C(selfCopy, depthNormalTexture);
    }
  }

LABEL_48:
  v121 = destinationLuminanceMomentsTexture;
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer))
  {
    v73 = 0;
  }

  else
  {
    v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if ((*(&selfCopy->super.super.isa + v122) & 2) != 0)
  {
    v74 = @"reprojectKernelHalf";
  }

  else
  {
    v74 = @"reprojectKernelFloat";
  }

  haveSecondTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(selfCopy, v72, v74, 0, motionVectorTexture != 0, depthNormalTexture != 0, sourceTexture2 != 0);
  v123 = commandBuffer;
  v78 = objc_msgSend_computeCommandEncoder(commandBuffer, v76, v77);
  objc_msgSend_setLabel_(v78, v79, @"MPSSVGF reprojection");
  objc_msgSend_setComputePipelineState_(v78, v80, haveSecondTexture);
  v130 = 0;
  memset(v129, 0, sizeof(v129));
  objc_msgSend_params(selfCopy, v81, v82);
  objc_msgSend_setBytes_length_atIndex_(v78, v83, v129, 36, 0);
  objc_msgSend_setTexture_atIndex_(v78, v84, v21, 0);
  objc_msgSend_setTexture_atIndex_(v78, v85, previousTexture, 1);
  objc_msgSend_setTexture_atIndex_(v78, v86, previousLuminanceMomentsTexture, 2);
  objc_msgSend_setTexture_atIndex_(v78, v87, destinationTexture, 3);
  objc_msgSend_setTexture_atIndex_(v78, v88, v121, 4);
  objc_msgSend_setTexture_atIndex_(v78, v89, sourceTexture2, 5);
  objc_msgSend_setTexture_atIndex_(v78, v90, previousTexture2, 6);
  objc_msgSend_setTexture_atIndex_(v78, v91, previousLuminanceMomentsTexture2, 7);
  objc_msgSend_setTexture_atIndex_(v78, v92, destinationTexture2, 8);
  objc_msgSend_setTexture_atIndex_(v78, v93, destinationLuminanceMomentsTexture2, 9);
  objc_msgSend_setTexture_atIndex_(v78, v94, previousFrameCountTexture, 10);
  objc_msgSend_setTexture_atIndex_(v78, v95, destinationFrameCountTexture, 11);
  objc_msgSend_setTexture_atIndex_(v78, v96, motionVectorTexture, 12);
  objc_msgSend_setTexture_atIndex_(v78, v97, depthNormalTexture, 13);
  objc_msgSend_setTexture_atIndex_(v78, v98, previousDepthNormalTexture, 14);
  v128[0] = (objc_msgSend_width(destinationTexture, v99, v100) + 7) >> 3;
  v128[1] = (objc_msgSend_height(destinationTexture, v101, v102) + 7) >> 3;
  v128[2] = 1;
  v126 = vdupq_n_s64(8uLL);
  v127 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v78, v103, v128, &v126);
  objc_msgSend_endEncoding(v78, v104, v105);
  if (v73)
  {
    objc_msgSend_addObject_(v73, v106, haveSecondTexture);
    objc_msgSend_addObject_(v73, v107, sourceTexture);
    objc_msgSend_addObject_(v73, v108, previousTexture);
    objc_msgSend_addObject_(v73, v109, previousLuminanceMomentsTexture);
    objc_msgSend_addObject_(v73, v110, destinationTexture);
    objc_msgSend_addObject_(v73, v111, v121);
    if (sourceTexture2)
    {
      objc_msgSend_addObject_(v73, v112, sourceTexture2);
    }

    if (previousTexture2)
    {
      objc_msgSend_addObject_(v73, v112, previousTexture2);
    }

    if (previousLuminanceMomentsTexture2)
    {
      objc_msgSend_addObject_(v73, v112, previousLuminanceMomentsTexture2);
    }

    if (destinationTexture2)
    {
      objc_msgSend_addObject_(v73, v112, destinationTexture2);
    }

    if (destinationLuminanceMomentsTexture2)
    {
      objc_msgSend_addObject_(v73, v112, destinationLuminanceMomentsTexture2);
    }

    objc_msgSend_addObject_(v73, v112, previousFrameCountTexture);
    objc_msgSend_addObject_(v73, v113, destinationFrameCountTexture);
    if (motionVectorTexture)
    {
      objc_msgSend_addObject_(v73, v114, motionVectorTexture);
    }

    if (depthNormalTexture)
    {
      objc_msgSend_addObject_(v73, v114, depthNormalTexture);
    }

    if (previousDepthNormalTexture)
    {
      objc_msgSend_addObject_(v73, v114, previousDepthNormalTexture);
    }

    v125[0] = MEMORY[0x277D85DD0];
    v125[1] = 3221225472;
    v125[2] = sub_239DEFC80;
    v125[3] = &unk_278B3B370;
    v125[4] = v73;
    objc_msgSend_addCompletedHandler_(v123, v114, v125);
  }
}

- (void)encodeVarianceEstimationToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture luminanceMomentsTexture:(id)luminanceMomentsTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 luminanceMomentsTexture2:(id)luminanceMomentsTexture2 destinationTexture2:(id)destinationTexture2 frameCountTexture:(id)frameCountTexture depthNormalTexture:(id)depthNormalTexture
{
  v13 = destinationTexture;
  selfCopy = self;
  v16 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v16))
  {
    goto LABEL_31;
  }

  v17 = *MEMORY[0x277CD7378];
  if (!commandBuffer)
  {
    self = sub_239E214DC(self, a2);
  }

  v19 = sourceTexture;
  if (sourceTexture)
  {
    objc_msgSend_channelCount_(selfCopy, a2, sourceTexture);
  }

  else
  {
    sub_239E2152C(self, a2);
    v19 = 0;
    objc_msgSend_channelCount_(selfCopy, v72, 0);
  }

  v21 = objc_msgSend_channelCount_(selfCopy, v20, v19);
  if (v21 < selfCopy->_channelCount)
  {
    v21 = sub_239E2157C(selfCopy, sourceTexture);
  }

  v13 = destinationTexture;
  if (!destinationTexture)
  {
    sub_239E215D4(v21, v22);
  }

  objc_msgSend_channelCount_(selfCopy, v22, destinationTexture);
  v24 = objc_msgSend_channelCount_(selfCopy, v23, destinationTexture);
  v16 = v17;
  if (v24 < selfCopy->_channelCount + 1)
  {
    v24 = sub_239E21624(selfCopy, v13);
  }

  v26 = luminanceMomentsTexture;
  if (luminanceMomentsTexture)
  {
    objc_msgSend_channelCount_(selfCopy, v25, luminanceMomentsTexture);
  }

  else
  {
    sub_239E2167C(v24, v25);
    v26 = 0;
    objc_msgSend_channelCount_(selfCopy, v73, 0);
  }

  v28 = objc_msgSend_channelCount_(selfCopy, v27, v26);
  if (v28 <= 1)
  {
    v28 = sub_239E216CC(selfCopy, luminanceMomentsTexture);
    if (sourceTexture2)
    {
LABEL_16:
      objc_msgSend_channelCount_(selfCopy, v29, sourceTexture2);
      v31 = objc_msgSend_channelCount_(selfCopy, v30, sourceTexture2);
      if (v31 < selfCopy->_channelCount2)
      {
        v31 = sub_239E2171C(selfCopy, sourceTexture2);
        if (destinationTexture2)
        {
          goto LABEL_18;
        }
      }

      else if (destinationTexture2)
      {
        goto LABEL_18;
      }

      sub_239E21774(v31, v32);
LABEL_18:
      objc_msgSend_channelCount_(selfCopy, v32, destinationTexture2);
      v34 = objc_msgSend_channelCount_(selfCopy, v33, destinationTexture2);
      if (v34 < selfCopy->_channelCount2 + 1)
      {
        v34 = sub_239E217C4(selfCopy, destinationTexture2);
        if (luminanceMomentsTexture2)
        {
          goto LABEL_20;
        }
      }

      else if (luminanceMomentsTexture2)
      {
        goto LABEL_20;
      }

      sub_239E2181C(v34, v35);
LABEL_20:
      objc_msgSend_channelCount_(selfCopy, v35, luminanceMomentsTexture2);
      v28 = objc_msgSend_channelCount_(selfCopy, v36, luminanceMomentsTexture2);
      if (v28 <= 1)
      {
        v28 = sub_239E2186C(selfCopy, luminanceMomentsTexture2);
      }
    }
  }

  else if (sourceTexture2)
  {
    goto LABEL_16;
  }

  if (!frameCountTexture)
  {
    sub_239E218BC(v28, v29);
  }

  objc_msgSend_channelCount_(selfCopy, v29, frameCountTexture);
  if (!objc_msgSend_channelCount_(selfCopy, v37, frameCountTexture))
  {
    sub_239E2190C(selfCopy, frameCountTexture);
  }

  if (selfCopy->_minimumFramesForVarianceEstimation >= 2)
  {
    if (!depthNormalTexture)
    {
      sub_239E2195C(&selfCopy->_minimumFramesForVarianceEstimation, a2);
    }

    objc_msgSend_channelCount_(selfCopy, a2, depthNormalTexture);
    if (objc_msgSend_channelCount_(selfCopy, v38, depthNormalTexture) != 4)
    {
      sub_239E219AC(selfCopy, depthNormalTexture);
    }
  }

LABEL_31:
  v76 = commandBuffer;
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer))
  {
    v40 = 0;
  }

  else
  {
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if ((*(&selfCopy->super.super.isa + v16) & 2) != 0)
  {
    v41 = @"varianceKernelHalf";
  }

  else
  {
    v41 = @"varianceKernelFloat";
  }

  haveSecondTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(selfCopy, v39, v41, 1, 0, depthNormalTexture != 0, luminanceMomentsTexture2 != 0);
  v45 = objc_msgSend_computeCommandEncoder(v76, v43, v44);
  objc_msgSend_setLabel_(v45, v46, @"MPSSVGF variance estimation");
  objc_msgSend_setComputePipelineState_(v45, v47, haveSecondTexture);
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  objc_msgSend_params(selfCopy, v48, v49);
  objc_msgSend_setBytes_length_atIndex_(v45, v50, v81, 36, 0);
  objc_msgSend_setTexture_atIndex_(v45, v51, v13, 0);
  objc_msgSend_setTexture_atIndex_(v45, v52, luminanceMomentsTexture, 1);
  objc_msgSend_setTexture_atIndex_(v45, v53, sourceTexture, 2);
  objc_msgSend_setTexture_atIndex_(v45, v54, destinationTexture2, 3);
  objc_msgSend_setTexture_atIndex_(v45, v55, luminanceMomentsTexture2, 4);
  objc_msgSend_setTexture_atIndex_(v45, v56, sourceTexture2, 5);
  objc_msgSend_setTexture_atIndex_(v45, v57, depthNormalTexture, 6);
  objc_msgSend_setTexture_atIndex_(v45, v58, frameCountTexture, 7);
  v80[0] = (objc_msgSend_width(v13, v59, v60) + 7) >> 3;
  v80[1] = (objc_msgSend_height(v13, v61, v62) + 7) >> 3;
  v80[2] = 1;
  v78 = vdupq_n_s64(8uLL);
  v79 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v45, v63, v80, &v78);
  objc_msgSend_endEncoding(v45, v64, v65);
  if (v40)
  {
    objc_msgSend_addObject_(v40, v66, haveSecondTexture);
    objc_msgSend_addObject_(v40, v67, sourceTexture);
    objc_msgSend_addObject_(v40, v68, luminanceMomentsTexture);
    objc_msgSend_addObject_(v40, v69, v13);
    if (sourceTexture2)
    {
      objc_msgSend_addObject_(v40, v70, sourceTexture2);
    }

    if (luminanceMomentsTexture2)
    {
      objc_msgSend_addObject_(v40, v70, luminanceMomentsTexture2);
    }

    if (destinationTexture2)
    {
      objc_msgSend_addObject_(v40, v70, destinationTexture2);
    }

    objc_msgSend_addObject_(v40, v70, frameCountTexture);
    if (depthNormalTexture)
    {
      objc_msgSend_addObject_(v40, v71, depthNormalTexture);
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_239DF020C;
    v77[3] = &unk_278B3B370;
    v77[4] = v40;
    objc_msgSend_addCompletedHandler_(v76, v71, v77);
  }
}

- (void)encodeBilateralFilterToCommandBuffer:(id)commandBuffer stepDistance:(NSUInteger)stepDistance sourceTexture:(id)sourceTexture destinationTexture:(id)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id)destinationTexture2 depthNormalTexture:(id)depthNormalTexture
{
  selfCopy = self;
  v16 = *MEMORY[0x277CD7378];
  if (*(&self->super.super.isa + v16))
  {
    goto LABEL_18;
  }

  if (!commandBuffer)
  {
    self = sub_239E219FC(self, a2);
  }

  if (!sourceTexture)
  {
    sub_239E21A4C(self, a2);
  }

  objc_msgSend_channelCount_(selfCopy, a2, sourceTexture);
  v18 = objc_msgSend_channelCount_(selfCopy, v17, sourceTexture);
  if (v18 < selfCopy->_channelCount + 1)
  {
    v18 = sub_239E21A9C(selfCopy, sourceTexture);
    if (destinationTexture)
    {
      goto LABEL_8;
    }
  }

  else if (destinationTexture)
  {
    goto LABEL_8;
  }

  sub_239E21AF4(v18, v19);
LABEL_8:
  objc_msgSend_channelCount_(selfCopy, v19, destinationTexture);
  v21 = objc_msgSend_channelCount_(selfCopy, v20, destinationTexture);
  if (v21 < selfCopy->_channelCount + 1)
  {
    v21 = sub_239E21B44(selfCopy, destinationTexture);
    if (sourceTexture2)
    {
LABEL_10:
      objc_msgSend_channelCount_(selfCopy, v22, sourceTexture2);
      v24 = objc_msgSend_channelCount_(selfCopy, v23, sourceTexture2);
      if (v24 < selfCopy->_channelCount2 + 1)
      {
        v24 = sub_239E21B9C(selfCopy, sourceTexture2);
        if (destinationTexture2)
        {
          goto LABEL_12;
        }
      }

      else if (destinationTexture2)
      {
        goto LABEL_12;
      }

      sub_239E21BF4(v24, v25);
LABEL_12:
      objc_msgSend_channelCount_(selfCopy, v25, destinationTexture2);
      v21 = objc_msgSend_channelCount_(selfCopy, v26, destinationTexture2);
      if (v21 < selfCopy->_channelCount2 + 1)
      {
        v21 = sub_239E21C44(selfCopy, destinationTexture2);
      }
    }
  }

  else if (sourceTexture2)
  {
    goto LABEL_10;
  }

  if (!depthNormalTexture)
  {
    sub_239E21C9C(v21, v22);
  }

  objc_msgSend_channelCount_(selfCopy, v22, depthNormalTexture);
  if (objc_msgSend_channelCount_(selfCopy, v27, depthNormalTexture) != 4)
  {
    sub_239E21CEC(selfCopy, depthNormalTexture);
  }

LABEL_18:
  v65 = destinationTexture2;
  v29 = sourceTexture;
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer))
  {
    v30 = 0;
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  if ((*(&selfCopy->super.super.isa + v16) & 2) != 0)
  {
    v31 = @"bilateralKernelHalf";
  }

  else
  {
    v31 = @"bilateralKernelFloat";
  }

  haveSecondTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthNormalTexture_haveSecondTexture_(selfCopy, v28, v31, 2, 0, depthNormalTexture != 0, sourceTexture2 != 0);
  v35 = objc_msgSend_computeCommandEncoder(commandBuffer, v33, v34);
  v37 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v36, @"MPSSVGF bilateral filter (stepDistance=%u)", stepDistance);
  objc_msgSend_setLabel_(v35, v38, v37);
  objc_msgSend_setComputePipelineState_(v35, v39, haveSecondTexture);
  v71[0] = stepDistance;
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  objc_msgSend_params(selfCopy, v40, v41);
  objc_msgSend_setBytes_length_atIndex_(v35, v42, v69, 36, 0);
  objc_msgSend_setBytes_length_atIndex_(v35, v43, v71, 4, 1);
  objc_msgSend_setTexture_atIndex_(v35, v44, destinationTexture, 0);
  objc_msgSend_setTexture_atIndex_(v35, v45, v29, 1);
  objc_msgSend_setTexture_atIndex_(v35, v46, v65, 2);
  objc_msgSend_setTexture_atIndex_(v35, v47, sourceTexture2, 3);
  objc_msgSend_setTexture_atIndex_(v35, v48, depthNormalTexture, 4);
  v51 = objc_msgSend_width(destinationTexture, v49, v50);
  v54 = objc_msgSend_height(destinationTexture, v52, v53);
  v56 = 8;
  if (((*(&selfCopy->super.super.isa + *MEMORY[0x277CD7350]))[369] & 0x400) != 0)
  {
    v57 = 3;
  }

  else
  {
    v56 = 16;
    v57 = 4;
  }

  v68[0] = (v56 - 1 + v51) >> v57;
  v68[1] = (v56 - 1 + v54) >> v57;
  v68[2] = 1;
  v67[0] = v56;
  v67[1] = v56;
  v67[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v35, v55, v68, v67);
  objc_msgSend_endEncoding(v35, v58, v59);
  if (v30)
  {
    objc_msgSend_addObject_(v30, v60, haveSecondTexture);
    objc_msgSend_addObject_(v30, v61, v29);
    objc_msgSend_addObject_(v30, v62, destinationTexture);
    if (sourceTexture2)
    {
      objc_msgSend_addObject_(v30, v63, sourceTexture2);
    }

    if (v65)
    {
      objc_msgSend_addObject_(v30, v63, v65);
    }

    objc_msgSend_addObject_(v30, v63, depthNormalTexture);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = sub_239DF069C;
    v66[3] = &unk_278B3B370;
    v66[4] = v30;
    objc_msgSend_addCompletedHandler_(commandBuffer, v64, v66);
  }
}

@end