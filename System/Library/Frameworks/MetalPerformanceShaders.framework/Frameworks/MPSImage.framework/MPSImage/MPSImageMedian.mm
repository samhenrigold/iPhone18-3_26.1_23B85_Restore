@interface MPSImageMedian
- (MPSImageMedian)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageMedian)initWithDevice:(id)device;
- (MPSImageMedian)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageMedian

- (MPSImageMedian)initWithDevice:(id)device kernelDiameter:(NSUInteger)kernelDiameter
{
  v10.receiver = self;
  v10.super_class = MPSImageMedian;
  result = [(MPSUnaryImageKernel *)&v10 initWithDevice:device];
  if (result)
  {
    if (kernelDiameter)
    {
      if (kernelDiameter > 2)
      {
        if (kernelDiameter < 0x80)
        {
          result->_filterDiameter = kernelDiameter;
          v8 = result;
          objc_msgSend_initEncoder(result, v6, v7);
          return v8;
        }

        v9 = result;
        if (MTLReportFailureTypeEnabled())
        {
          goto LABEL_12;
        }

LABEL_13:

        return 0;
      }

      v9 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = result;
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    MTLReportFailure();
    goto LABEL_13;
  }

  return result;
}

- (MPSImageMedian)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_kernelDiameter_, device);
}

- (MPSImageMedian)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSImageMedian;
  v5 = [(MPSUnaryImageKernel *)&v12 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    v5->_filterDiameter = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSImageMedian.kernelDiameter");
    objc_msgSend_initEncoder(v7, v8, v9);
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v6.receiver = self;
  v6.super_class = MPSImageMedian;
  [(MPSUnaryImageKernel *)&v6 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_filterDiameter, @"MPSImageMedian.kernelDiameter");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSImageMedian;
  result = [(MPSUnaryImageKernel *)&v9 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 26) = self->_filterDiameter;
    v8 = result;
    objc_msgSend_initEncoder(self, v6, v7);
    return v8;
  }

  return result;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v9 = *a4;
  v8.receiver = self;
  v8.super_class = MPSImageMedian;
  result = [(MPSRegion *)&v8 sourceRegionForDestinationSize:&v9];
  filterDiameter = self->_filterDiameter;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vdupq_lane_s64(COERCE__INT64((filterDiameter >> 1)), 0));
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vdupq_lane_s64(COERCE__INT64((filterDiameter - 1)), 0));
  return result;
}

@end