@interface MPSImageStatisticsMinAndMax
- (MPSImageStatisticsMinAndMax)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageStatisticsMinAndMax)initWithDevice:(id)device;
- (MTLRegion)clipRectSource;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setClipRectSource:(MTLRegion *)clipRectSource;
@end

@implementation MPSImageStatisticsMinAndMax

- (MPSImageStatisticsMinAndMax)initWithDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSImageStatisticsMinAndMax;
  result = [(MPSUnaryImageKernel *)&v9 initWithDevice:device];
  if (result)
  {
    v6 = result;
    objc_msgSend_initEncoder(result, v4, v5);
    result = v6;
    v6->super._checkFlags = 515;
    v7 = *MEMORY[0x277CD7200];
    v8 = *(MEMORY[0x277CD7200] + 32);
    *&v6->_clipRectSource.origin.z = *(MEMORY[0x277CD7200] + 16);
    *&v6->_clipRectSource.size.height = v8;
    *&v6->_clipRectSource.origin.x = v7;
  }

  return result;
}

- (id)debugDescription
{
  v2 = MEMORY[0x277CCACA8];
  v6.receiver = self;
  v6.super_class = MPSImageStatisticsMinAndMax;
  v3 = [(MPSUnaryImageKernel *)&v6 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n", v3);
}

- (MPSImageStatisticsMinAndMax)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v17.receiver = self;
  v17.super_class = MPSImageStatisticsMinAndMax;
  v5 = [(MPSUnaryImageKernel *)&v17 initWithCoder:aDecoder device:device];
  v8 = v5;
  if (!v5)
  {
    return v8;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_initEncoder(v5, v6, v7);
    v8->super._checkFlags = 515;
    v8->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImageStatistics.clipRectSource.origin.x");
    v8->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v10, @"MPSImageStatistics.clipRectSource.origin.y");
    v8->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(aDecoder, v11, @"MPSImageStatistics.clipRectSource.origin.z");
    v8->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(aDecoder, v12, @"MPSImageStatistics.clipRectSource.size.width");
    v8->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(aDecoder, v13, @"MPSImageStatistics.clipRectSource.size.height");
    v8->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSImageStatistics.clipRectSource.size.depth");
    return v8;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v16 = objc_opt_class();
    NSStringFromClass(v16);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v11.receiver = self;
  v11.super_class = MPSImageStatisticsMinAndMax;
  [(MPSUnaryImageKernel *)&v11 encodeWithCoder:?];
  selfCopy += 26;
  objc_msgSend_encodeInt64_forKey_(coder, v5, *selfCopy, @"MPSImageStatistics.clipRectSource.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, selfCopy[1], @"MPSImageStatistics.clipRectSource.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, selfCopy[2], @"MPSImageStatistics.clipRectSource.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, selfCopy[3], @"MPSImageStatistics.clipRectSource.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v9, selfCopy[4], @"MPSImageStatistics.clipRectSource.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v10, selfCopy[5], @"MPSImageStatistics.clipRectSource.size.depth");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSImageStatisticsMinAndMax;
  result = [(MPSUnaryImageKernel *)&v11 copyWithZone:zone device:device];
  if (result)
  {
    v9 = *&self->_clipRectSource.origin.z;
    v8 = *&self->_clipRectSource.size.height;
    *(result + 13) = *&self->_clipRectSource.origin.x;
    *(result + 14) = v9;
    *(result + 15) = v8;
    v10 = result;
    objc_msgSend_initEncoder(self, v6, v7);
    return v10;
  }

  return result;
}

- (MTLRegion)clipRectSource
{
  v3 = *&self[4].size.height;
  *&retstr->origin.x = *&self[4].origin.z;
  *&retstr->origin.z = v3;
  *&retstr->size.height = *&self[5].origin.x;
  return self;
}

- (void)setClipRectSource:(MTLRegion *)clipRectSource
{
  v4 = *&clipRectSource->origin.z;
  v3 = *&clipRectSource->size.height;
  *&self->_clipRectSource.origin.x = *&clipRectSource->origin.x;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end