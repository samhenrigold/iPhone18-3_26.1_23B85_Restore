@interface MPSImageLaplacian
- (MPSImageLaplacian)initWithCoder:(id)coder device:(id)device;
- (MPSImageLaplacian)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageLaplacian

- (MPSImageLaplacian)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageLaplacian;
  result = [(MPSUnaryImageKernel *)&v4 initWithDevice:device];
  if (result)
  {
    result->_bias = 0.0;
    result->super._encode = sub_239945368;
    result->super._encodeData = result;
  }

  return result;
}

- (MPSImageLaplacian)initWithCoder:(id)coder device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSImageLaplacian;
  v5 = [(MPSUnaryImageKernel *)&v11 initWithCoder:coder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(coder, v6, @"MPSImageLaplacian.bias");
    v7->_bias = v8;
    v7->super._encode = sub_239945368;
    v7->super._encodeData = v7;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v10 = objc_opt_class();
    NSStringFromClass(v10);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v7.receiver = self;
  v7.super_class = MPSImageLaplacian;
  [(MPSUnaryImageKernel *)&v7 encodeWithCoder:?];
  *&v5 = self->_bias;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSImageLaplacian.bias", v5);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSImageLaplacian;
  result = [(MPSUnaryImageKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 52) = LODWORD(self->_bias);
  }

  return result;
}

@end