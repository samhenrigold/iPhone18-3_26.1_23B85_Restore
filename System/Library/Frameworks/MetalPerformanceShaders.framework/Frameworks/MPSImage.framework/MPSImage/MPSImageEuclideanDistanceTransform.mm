@interface MPSImageEuclideanDistanceTransform
- (MPSImageEuclideanDistanceTransform)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageEuclideanDistanceTransform)initWithDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageEuclideanDistanceTransform

- (MPSImageEuclideanDistanceTransform)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageEuclideanDistanceTransform;
  result = [(MPSUnaryImageKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->super._encodeData = result;
    result->super._encode = sub_2399538E4;
    result->super._checkFlags = 577;
    result->_searchLimitRadius = 3.4028e38;
  }

  return result;
}

- (MPSImageEuclideanDistanceTransform)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v14.receiver = self;
  v14.super_class = MPSImageEuclideanDistanceTransform;
  result = [(MPSUnaryImageKernel *)&v14 initWithCoder:aDecoder device:device];
  if (result)
  {
    v7 = *MEMORY[0x277CD7358];
    v8 = HIWORD(*(&result->super.super.super.isa + v7));
    if ((v8 - 1) >= 2)
    {
      if (((v8 + 1) & 0x1FFFE) != 2)
      {
        v11 = result;
        v12 = MTLReportFailureTypeEnabled();
        result = v11;
        if (v12)
        {
          v13 = objc_opt_class();
          NSStringFromClass(v13);
          MTLReportFailure();
          result = v11;
        }
      }

      return 0;
    }

    else
    {
      result->super._encodeData = result;
      result->super._encode = sub_2399538E4;
      result->_searchLimitRadius = 3.4028e38;
      if (*(&result->super.super.super.isa + v7) >= 0x20000u)
      {
        v9 = result;
        objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSImageDistanceTransform.searchLimitRadius");
        result = v9;
        v9->_searchLimitRadius = v10;
      }

      result->super._checkFlags = 577;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 2;
  v7.receiver = self;
  v7.super_class = MPSImageEuclideanDistanceTransform;
  [(MPSUnaryImageKernel *)&v7 encodeWithCoder:?];
  *&v5 = self->_searchLimitRadius;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageDistanceTransform.searchLimitRadius", v5);
}

@end