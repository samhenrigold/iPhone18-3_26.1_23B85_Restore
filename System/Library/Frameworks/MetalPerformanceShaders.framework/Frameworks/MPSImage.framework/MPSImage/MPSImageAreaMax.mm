@interface MPSImageAreaMax
- (MPSImageAreaMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageAreaMax)initWithDevice:(id)device;
- (MPSImageAreaMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)initEncoder;
@end

@implementation MPSImageAreaMax

- (void)initEncoder
{
  self->super._getPreferredTileSize = sub_23994C3F4;
  self->super._encode = sub_23994C584;
  self->super._encodeData = self;
}

- (MPSImageAreaMax)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v11.receiver = self;
  v11.super_class = MPSImageAreaMax;
  result = [(MPSUnaryImageKernel *)&v11 initWithDevice:device];
  if (result)
  {
    result->_kernelWidth = kernelWidth;
    result->_kernelHeight = kernelHeight;
    result->info = 0;
    result->info_half = 28;
    v10 = result;
    objc_msgSend_initEncoder(result, v8, v9);
    return v10;
  }

  return result;
}

- (MPSImageAreaMax)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(self, v5, device, 1, 1);
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v7.receiver = self;
  v7.super_class = MPSImageAreaMax;
  [(MPSUnaryImageKernel *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelWidth, @"MPSMinMax.kernelWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_kernelHeight, @"MPSMinMax.kernelHeight");
}

- (MPSImageAreaMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSImageAreaMax;
  v5 = [(MPSUnaryImageKernel *)&v13 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSMinMax.kernelWidth");
    v7->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSMinMax.kernelHeight");
    v7->info = 0;
    v7->info_half = 28;
    objc_msgSend_initEncoder(v7, v9, v10);
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    MTLReportFailure();
  }

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSImageAreaMax;
  result = [(MPSUnaryImageKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 26) = self->_kernelWidth;
    *(result + 27) = self->_kernelHeight;
    *(result + 56) = self->info;
    *(result + 57) = self->info_half;
    v8 = result;
    objc_msgSend_initEncoder(self, v6, v7);
    return v8;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSImageAreaMax;
  v4 = [(MPSUnaryImageKernel *)&v13 debugDescription];
  v7 = objc_msgSend_kernelWidth(self, v5, v6);
  v10 = objc_msgSend_kernelHeight(self, v8, v9);
  return objc_msgSend_stringWithFormat_(v3, v11, @"%@\n\tkernelWidth: %lu\n\tkernelHeight: %lu", v4, v7, v10);
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageAreaMax;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_kernelWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

@end