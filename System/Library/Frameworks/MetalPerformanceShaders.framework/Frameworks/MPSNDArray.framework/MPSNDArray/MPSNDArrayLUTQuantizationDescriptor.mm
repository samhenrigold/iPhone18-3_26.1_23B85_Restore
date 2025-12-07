@interface MPSNDArrayLUTQuantizationDescriptor
- (MPSNDArrayLUTQuantizationDescriptor)initWithDataType:(unsigned int)type vectorAxes:(id)axes;
- (MPSNDArrayLUTQuantizationDescriptor)initWithDataType:(unsigned int)type vectorAxis:(unint64_t)axis;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setVectorAxes:(id)axes;
@end

@implementation MPSNDArrayLUTQuantizationDescriptor

- (void)setVectorAxes:(id)axes
{
  vectorAxes = self->_vectorAxes;
  if (vectorAxes != axes)
  {
    v5 = vectorAxes;
    self->_vectorAxes = [axes copy];
  }
}

- (MPSNDArrayLUTQuantizationDescriptor)initWithDataType:(unsigned int)type vectorAxes:(id)axes
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v8 initWithDataType:*&type quantizationScheme:2];
  if (result)
  {
    v6 = result;
    v7 = [axes copy];
    result = v6;
    v6->_vectorAxes = v7;
  }

  return result;
}

- (MPSNDArrayLUTQuantizationDescriptor)initWithDataType:(unsigned int)type vectorAxis:(unint64_t)axis
{
  v4 = *&type;
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:axis];
  return -[MPSNDArrayLUTQuantizationDescriptor initWithDataType:vectorAxes:](self, "initWithDataType:vectorAxes:", v4, [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1]);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLUTQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v8 copyWithZone:zone];
  if (result)
  {
    vectorAxes = self->_vectorAxes;
    v6 = result;
    v7 = [(NSArray *)vectorAxes copy];
    result = v6;
    v6[3] = v7;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayLUTQuantizationDescriptor;
  [(MPSNDArrayLUTQuantizationDescriptor *)&v3 dealloc];
}

@end