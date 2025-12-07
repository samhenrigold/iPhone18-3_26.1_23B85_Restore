@interface MPSImageCanny
- (MPSImageCanny)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageCanny)initWithDevice:(id)device;
- (MPSImageCanny)initWithDevice:(id)device linearToGrayScaleTransform:(const float *)transform sigma:(const float)sigma;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageCanny

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageCanny;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageCanny)initWithDevice:(id)device
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 0x3F1645A23E991687;
  v6 = 1038710997;
  LODWORD(v3) = 1068827891;
  return objc_msgSend_initWithDevice_linearToGrayScaleTransform_sigma_(self, a2, device, &v5, v3);
}

- (MPSImageCanny)initWithDevice:(id)device linearToGrayScaleTransform:(const float *)transform sigma:(const float)sigma
{
  v17.receiver = self;
  v17.super_class = MPSImageCanny;
  result = [(MPSUnaryImageKernel *)&v17 initWithDevice:?];
  if (result)
  {
    if (transform)
    {
      v9 = transform[2];
      *result->_colVec = *transform;
      result->_colVec[2] = v9;
      result->super._checkFlags |= 2u;
      result->super._encode = sub_23994A590;
      result->super._encodeData = result;
      result->lThresh = 0.2;
      result->hThresh = 0.4;
      result->_canny_window = 4;
      result->_useFastMode = 0;
      result->_maxEdgeTracingIterations = 0.1;
      v10 = result;
      v11 = [MPSImageGaussianBlur alloc];
      *&v12 = sigma;
      v10->gaussKernel = objc_msgSend_initWithDevice_sigma_(v11, v13, device, v12);
      v10->_indirectDispatchBufferArgs = objc_msgSend_newBufferWithLength_options_((*(&v10->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v14, 12, 0);
      MPSDevice = MPSDevice::GetMPSDevice();
      result = v10;
      v10->_supportsReadWriteTextures = (*(MPSDevice + 1476) & 4) != 0;
    }

    else
    {
      v16 = result;
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageCanny;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  objc_msgSend_sigma(self->gaussKernel, v5, v6);
  return objc_msgSend_stringWithFormat_(v3, v8, @"%@\n\tsigma: %f\n\tlow threshold: %f\n\thigh threshold: %f\n", v4, v7, self->lThresh, self->hThresh);
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v19.receiver = self;
  v19.super_class = MPSImageCanny;
  [(MPSUnaryImageKernel *)&v19 encodeWithCoder:?];
  *&v5 = self->_colVec[0];
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageCanny.transformR", v5);
  *&v7 = self->_colVec[1];
  objc_msgSend_encodeFloat_forKey_(coder, v8, @"MPSImageCanny.transformG", v7);
  *&v9 = self->_colVec[2];
  objc_msgSend_encodeFloat_forKey_(coder, v10, @"MPSImageCanny.transformB", v9);
  *&v11 = self->lThresh;
  objc_msgSend_encodeFloat_forKey_(coder, v12, @"MPSImageCanny.lowThresh", v11);
  *&v13 = self->hThresh;
  objc_msgSend_encodeFloat_forKey_(coder, v14, @"MPSImageCanny.highThresh", v13);
  *&v15 = self->_maxEdgeTracingIterations;
  objc_msgSend_encodeFloat_forKey_(coder, v16, @"MPSImageCanny.edgeTracingIterations", v15);
  objc_msgSend_encodeBool_forKey_(coder, v17, self->_useFastMode, @"MPSImageCanny.fastMode");
  objc_msgSend_encodeWithCoder_(self->gaussKernel, v18, coder);
}

- (MPSImageCanny)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v26.receiver = self;
  v26.super_class = MPSImageCanny;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v8 = v6;
  if (v6)
  {
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->super._encode = sub_23994A590;
      v6->super._encodeData = v6;
      v6->_canny_window = 4;
      objc_msgSend_decodeFloatForKey_(aDecoder, v7, @"MPSImageCanny.transformR");
      v8->_colVec[0] = v9;
      objc_msgSend_decodeFloatForKey_(aDecoder, v10, @"MPSImageCanny.transformG");
      v8->_colVec[1] = v11;
      objc_msgSend_decodeFloatForKey_(aDecoder, v12, @"MPSImageCanny.transformB");
      v8->_colVec[2] = v13;
      objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSImageCanny.lowThresh");
      v8->lThresh = v15;
      objc_msgSend_decodeFloatForKey_(aDecoder, v16, @"MPSImageCanny.highThresh");
      v8->hThresh = v17;
      v8->_useFastMode = objc_msgSend_decodeBoolForKey_(aDecoder, v18, @"MPSImageCanny.fastMode");
      objc_msgSend_decodeFloatForKey_(aDecoder, v19, @"MPSImageCanny.edgeTracingIterations");
      v8->_maxEdgeTracingIterations = v20;
      v21 = [MPSImageGaussianBlur alloc];
      v8->gaussKernel = objc_msgSend_initWithCoder_device_(v21, v22, aDecoder, device);
      v8->_indirectDispatchBufferArgs = objc_msgSend_newBufferWithLength_options_((*(&v8->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v23, 12, 0);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v24 = objc_opt_class();
        NSStringFromClass(v24);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSImageCanny;
  result = [(MPSUnaryImageKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = LODWORD(self->_colVec[0]);
    *(result + 53) = LODWORD(self->_colVec[1]);
    *(result + 54) = LODWORD(self->_colVec[2]);
    *(result + 55) = LODWORD(self->lThresh);
    *(result + 56) = LODWORD(self->hThresh);
    *(result + 228) = self->_useFastMode;
    *(result + 58) = LODWORD(self->_maxEdgeTracingIterations);
    *(result + 118) = self->_canny_window;
    v6 = result;
    *(result + 30) = self->gaussKernel;
    v8 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v7, 12, 0);
    result = v6;
    v6[31] = v8;
  }

  return result;
}

@end