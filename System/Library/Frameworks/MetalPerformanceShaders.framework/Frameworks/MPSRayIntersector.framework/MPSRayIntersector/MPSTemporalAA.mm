@interface MPSTemporalAA
- (MPSTemporalAA)copyWithZone:(NSZone *)zone device:(id)device;
- (MPSTemporalAA)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSTemporalAA)initWithDevice:(id)device;
- (MPSTemporalAAFunctionHash)getHashForKernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthTexture:(BOOL)depthTexture;
- (id)description;
- (id)getPipelineForFunctionName:(id)name kernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthTexture:(BOOL)depthTexture;
- (unint64_t)channelCount:(id)count;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture motionVectorTexture:(id)motionVectorTexture depthTexture:(id)depthTexture;
- (void)encodeWithCoder:(NSCoder *)coder;
- (void)setBlendFactor:(float)blendFactor;
@end

@implementation MPSTemporalAA

- (void)setBlendFactor:(float)blendFactor
{
  if (blendFactor < 0.0 || blendFactor > 1.0)
  {
    sub_239E21F18(self, a2);
  }

  self->_blendFactor = blendFactor;
}

- (MPSTemporalAA)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSTemporalAA;
  result = [(MPSKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_blendFactor = 0.1;
  }

  return result;
}

- (MPSTemporalAA)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSTemporalAA;
  v5 = [(MPSKernel *)&v11 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSTemporalAAKeyBlendFactor");
      v7->_blendFactor = v8;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v9 = objc_opt_class();
        NSStringFromClass(v9);
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
  v2.super_class = MPSTemporalAA;
  [(MPSKernel *)&v2 dealloc];
}

- (void)encodeWithCoder:(NSCoder *)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v7.receiver = self;
  v7.super_class = MPSTemporalAA;
  [(MPSKernel *)&v7 encodeWithCoder:?];
  *&v5 = self->_blendFactor;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSTemporalAAKeyBlendFactor", v5);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSTemporalAA;
  v4 = [(MPSTemporalAA *)&v7 description];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tblend factor: %f", v4, self->_blendFactor);
}

- (MPSTemporalAA)copyWithZone:(NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSTemporalAA;
  result = [(MPSKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    result->_blendFactor = self->_blendFactor;
  }

  return result;
}

- (MPSTemporalAAFunctionHash)getHashForKernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthTexture:(BOOL)depthTexture
{
  v5 = 2;
  if (!texture)
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | d & 1;
  v7 = 4;
  if (!depthTexture)
  {
    v7 = 0;
  }

  return (v6 | v7);
}

- (id)getPipelineForFunctionName:(id)name kernelID:(unint64_t)d haveMotionVectorTexture:(BOOL)texture haveDepthTexture:(BOOL)depthTexture
{
  haveDepthTexture = objc_msgSend_getHashForKernelID_haveMotionVectorTexture_haveDepthTexture_(self, a2, d, texture, depthTexture);
  v9 = (*(&self->super.super.isa + *MEMORY[0x277CD7350]))[2];
  v10 = *(&self->super.super.isa + *MEMORY[0x277CD7370]);

  return sub_239DF1D00(name, v9, v10, haveDepthTexture, sub_239DF1EA0);
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

- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture previousTexture:(id)previousTexture destinationTexture:(id)destinationTexture motionVectorTexture:(id)motionVectorTexture depthTexture:(id)depthTexture
{
  selfCopy = self;
  if (*(&self->super.super.isa + *MEMORY[0x277CD7378]))
  {
    goto LABEL_9;
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
    self = sub_239E21FD8(self, a2);
    if (sourceTexture)
    {
LABEL_4:
      if (previousTexture)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  self = sub_239E22028(self, a2);
  if (previousTexture)
  {
LABEL_5:
    if (destinationTexture)
    {
      goto LABEL_6;
    }

LABEL_22:
    sub_239E220C8(self, a2);
    if (!motionVectorTexture)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_21:
  self = sub_239E22078(self, a2);
  if (!destinationTexture)
  {
    goto LABEL_22;
  }

LABEL_6:
  if (!motionVectorTexture)
  {
    goto LABEL_9;
  }

LABEL_7:
  objc_msgSend_channelCount_(selfCopy, a2, motionVectorTexture);
  if (objc_msgSend_channelCount_(selfCopy, v15, motionVectorTexture) <= 1)
  {
    sub_239E22118(selfCopy, motionVectorTexture);
  }

LABEL_9:
  if (objc_msgSend_retainedReferences(commandBuffer, a2, commandBuffer))
  {
    v17 = 0;
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  haveDepthTexture = objc_msgSend_getPipelineForFunctionName_kernelID_haveMotionVectorTexture_haveDepthTexture_(selfCopy, v16, @"TAAKernel", 0, motionVectorTexture != 0, depthTexture != 0);
  v45 = commandBuffer;
  v21 = objc_msgSend_computeCommandEncoder(commandBuffer, v19, v20);
  objc_msgSend_setLabel_(v21, v22, @"MPSTemporalAA");
  objc_msgSend_setComputePipelineState_(v21, v23, haveDepthTexture);
  objc_msgSend_params(selfCopy, v24, v25);
  v50 = v26;
  objc_msgSend_setBytes_length_atIndex_(v21, v27, &v50, 4, 0);
  objc_msgSend_setTexture_atIndex_(v21, v28, previousTexture, 0);
  objc_msgSend_setTexture_atIndex_(v21, v29, destinationTexture, 1);
  objc_msgSend_setTexture_atIndex_(v21, v30, sourceTexture, 2);
  objc_msgSend_setTexture_atIndex_(v21, v31, motionVectorTexture, 3);
  objc_msgSend_setTexture_atIndex_(v21, v32, depthTexture, 4);
  v49[0] = (objc_msgSend_width(destinationTexture, v33, v34) + 7) >> 3;
  v49[1] = (objc_msgSend_height(destinationTexture, v35, v36) + 7) >> 3;
  v49[2] = 1;
  v47 = vdupq_n_s64(8uLL);
  v48 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v21, v37, v49, &v47);
  objc_msgSend_endEncoding(v21, v38, v39);
  if (v17)
  {
    objc_msgSend_addObject_(v17, v40, haveDepthTexture);
    objc_msgSend_addObject_(v17, v41, previousTexture);
    objc_msgSend_addObject_(v17, v42, sourceTexture);
    objc_msgSend_addObject_(v17, v43, destinationTexture);
    if (motionVectorTexture)
    {
      objc_msgSend_addObject_(v17, v44, motionVectorTexture);
    }

    if (depthTexture)
    {
      objc_msgSend_addObject_(v17, v44, depthTexture);
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = sub_239DF2468;
    v46[3] = &unk_278B3B370;
    v46[4] = v17;
    objc_msgSend_addCompletedHandler_(v45, v44, v46);
  }
}

@end