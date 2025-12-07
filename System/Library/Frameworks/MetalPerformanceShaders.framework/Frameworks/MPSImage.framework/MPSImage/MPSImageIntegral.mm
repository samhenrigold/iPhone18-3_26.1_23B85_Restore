@interface MPSImageIntegral
- (MPSImageIntegral)initWithCoder:(id)coder device:(id)device;
- (MPSImageIntegral)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageIntegral

- (MPSImageIntegral)initWithDevice:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageIntegral;
  result = [(MPSUnaryImageKernel *)&v7 initWithDevice:device];
  if (result)
  {
    v6 = result;
    objc_msgSend_InitEncoder(result, v4, v5);
    result = v6;
    v6->super._checkFlags = 833;
  }

  return result;
}

- (MPSImageIntegral)initWithCoder:(id)coder device:(id)device
{
  v10.receiver = self;
  v10.super_class = MPSImageIntegral;
  v4 = [(MPSUnaryImageKernel *)&v10 initWithCoder:coder device:device];
  v7 = v4;
  if (!v4)
  {
    return v7;
  }

  if (*(&v4->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_InitEncoder(v4, v5, v6);
    v7->super._checkFlags = 833;
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageIntegral;
  [(MPSUnaryImageKernel *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSImageIntegral;
  result = [(MPSUnaryImageKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    v8 = result;
    objc_msgSend_InitEncoder(self, v6, v7);
    return v8;
  }

  return result;
}

@end