@interface MPSImageStatisticsMinMaxMean
- ($1C75447F214D9465CD650DD956230C7F)clipRectSource;
- (MPSImageStatisticsMinMaxMean)initWithCoder:(id)coder device:(id)device;
- (MPSImageStatisticsMinMaxMean)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initEncoder;
- (void)setClipRectSource:(id *)source;
- (void)setColorConversionData:(id)data;
- (void)setColorConversionFunction:(id)function;
@end

@implementation MPSImageStatisticsMinMaxMean

- (void)setColorConversionFunction:(id)function
{
  colorConversionFunction = self->_colorConversionFunction;
  if (colorConversionFunction != function)
  {
    v5 = colorConversionFunction;
    self->_colorConversionFunction = function;
  }
}

- (void)setColorConversionData:(id)data
{
  colorConversionData = self->_colorConversionData;
  if (colorConversionData != data)
  {
    v5 = colorConversionData;
    self->_colorConversionData = data;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageStatisticsMinMaxMean;
  [(MPSKernel *)&v3 dealloc];
}

- (void)initEncoder
{
  self->super._encodeData = self;
  self->super._encode = sub_23997BBE0;
  *self->_strides = 0x100000001;
  self->_colorConversionData = 0;
  v13 = 0;
  v4 = objc_msgSend_device(self, a2, v2);
  v7 = objc_msgSend_newLibraryWithSource_options_error_(v4, v5, @"[[visible]] float4 __attribute__((__always_inline__)) color_conversion(float4 v, constant void* data){return v;}", 0, &v13);
  if (!v7 && MTLReportFailureTypeEnabled())
  {
    v12 = objc_msgSend_localizedDescription(v13, v6, v9);
    MTLReportFailure();
  }

  v8 = objc_msgSend_newFunctionWithName_(v7, v6, @"color_conversion", v12);
  self->_defaultConversion = v8;
  if (v8 || !MTLReportFailureTypeEnabled())
  {
  }

  else
  {
    objc_msgSend_localizedDescription(v13, v10, v11);
    MTLReportFailure();
  }
}

- (MPSImageStatisticsMinMaxMean)initWithDevice:(id)device
{
  v9.receiver = self;
  v9.super_class = MPSImageStatisticsMinMaxMean;
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
  v6.super_class = MPSImageStatisticsMinMaxMean;
  v3 = [(MPSUnaryImageKernel *)&v6 debugDescription];
  return objc_msgSend_stringWithFormat_(v2, v4, @"%@\n", v3);
}

- (MPSImageStatisticsMinMaxMean)initWithCoder:(id)coder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSImageStatisticsMinMaxMean;
  v5 = [(MPSUnaryImageKernel *)&v19 initWithCoder:coder device:device];
  v8 = v5;
  if (!v5)
  {
    return v8;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_initEncoder(v5, v6, v7);
    v8->super._checkFlags = 515;
    v8->_clipRectSource.origin.x = objc_msgSend_decodeInt64ForKey_(coder, v9, @"MPSImageStatistics.clipRectSource.origin.x");
    v8->_clipRectSource.origin.y = objc_msgSend_decodeInt64ForKey_(coder, v10, @"MPSImageStatistics.clipRectSource.origin.y");
    v8->_clipRectSource.origin.z = objc_msgSend_decodeInt64ForKey_(coder, v11, @"MPSImageStatistics.clipRectSource.origin.z");
    v8->_clipRectSource.size.width = objc_msgSend_decodeInt64ForKey_(coder, v12, @"MPSImageStatistics.clipRectSource.size.width");
    v8->_clipRectSource.size.height = objc_msgSend_decodeInt64ForKey_(coder, v13, @"MPSImageStatistics.clipRectSource.size.height");
    v8->_clipRectSource.size.depth = objc_msgSend_decodeInt64ForKey_(coder, v14, @"MPSImageStatistics.clipRectSource.size.depth");
    *v8->_strides = objc_msgSend_decodeInt64ForKey_(coder, v15, @"MPSImageStatistics.stride.x");
    *&v8->_strides[4] = objc_msgSend_decodeInt64ForKey_(coder, v16, @"MPSImageStatistics.stride.y");
    return v8;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v18 = objc_opt_class();
    NSStringFromClass(v18);
    MTLReportFailure();
  }

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v13.receiver = self;
  v13.super_class = MPSImageStatisticsMinMaxMean;
  [(MPSUnaryImageKernel *)&v13 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, selfCopy->_clipRectSource.origin.x, @"MPSImageStatistics.clipRectSource.origin.x");
  objc_msgSend_encodeInt64_forKey_(coder, v6, selfCopy->_clipRectSource.origin.y, @"MPSImageStatistics.clipRectSource.origin.y");
  objc_msgSend_encodeInt64_forKey_(coder, v7, selfCopy->_clipRectSource.origin.z, @"MPSImageStatistics.clipRectSource.origin.z");
  objc_msgSend_encodeInt64_forKey_(coder, v8, selfCopy->_clipRectSource.size.width, @"MPSImageStatistics.clipRectSource.size.width");
  objc_msgSend_encodeInt64_forKey_(coder, v9, selfCopy->_clipRectSource.size.height, @"MPSImageStatistics.clipRectSource.size.height");
  objc_msgSend_encodeInt64_forKey_(coder, v10, selfCopy->_clipRectSource.size.depth, @"MPSImageStatistics.clipRectSource.size.depth");
  selfCopy = (selfCopy + 256);
  objc_msgSend_encodeInt64_forKey_(coder, v11, selfCopy->super.super.super.isa, @"MPSImageStatistics.stride.x");
  objc_msgSend_encodeInt64_forKey_(coder, v12, HIDWORD(selfCopy->super.super.super.isa), @"MPSImageStatistics.stride.y");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v11.receiver = self;
  v11.super_class = MPSImageStatisticsMinMaxMean;
  v7 = [(MPSUnaryImageKernel *)&v11 copyWithZone:zone device:device];
  if (v7)
  {
    objc_msgSend_initEncoder(self, v5, v6);
    v9 = *&self->_clipRectSource.origin.z;
    v8 = *&self->_clipRectSource.size.height;
    v7[13] = *&self->_clipRectSource.origin.x;
    v7[14] = v9;
    v7[15] = v8;
    *(v7 + 32) = *self->_strides;
    *(v7 + 34) = self->_colorConversionFunction;
    *(v7 + 35) = self->_colorConversionData;
  }

  return v7;
}

- ($1C75447F214D9465CD650DD956230C7F)clipRectSource
{
  v3 = *&self[4].var1.var1;
  *&retstr->var0.var0 = *&self[4].var0.var2;
  *&retstr->var0.var2 = v3;
  *&retstr->var1.var1 = *&self[5].var0.var0;
  return self;
}

- (void)setClipRectSource:(id *)source
{
  v4 = *&source->var0.var2;
  v3 = *&source->var1.var1;
  *&self->_clipRectSource.origin.x = *&source->var0.var0;
  *&self->_clipRectSource.origin.z = v4;
  *&self->_clipRectSource.size.height = v3;
}

@end