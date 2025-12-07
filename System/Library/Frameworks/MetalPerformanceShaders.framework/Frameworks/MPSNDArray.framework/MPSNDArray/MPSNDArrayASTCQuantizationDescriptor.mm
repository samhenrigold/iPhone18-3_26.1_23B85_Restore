@interface MPSNDArrayASTCQuantizationDescriptor
- (MPSNDArrayASTCQuantizationDescriptor)init;
- (MPSNDArrayASTCQuantizationDescriptor)initWithDataType:(unsigned int)type hasMinValue:(BOOL)value;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MPSNDArrayASTCQuantizationDescriptor

- (MPSNDArrayASTCQuantizationDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayASTCQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v3 init];
  if (result)
  {
    result->_hasMinValue = 0;
  }

  return result;
}

- (MPSNDArrayASTCQuantizationDescriptor)initWithDataType:(unsigned int)type hasMinValue:(BOOL)value
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayASTCQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v6 initWithDataType:*&type quantizationScheme:4];
  if (result)
  {
    result->_hasMinValue = value;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayASTCQuantizationDescriptor;
  result = [(MPSNDArrayQuantizationDescriptor *)&v5 copyWithZone:zone];
  if (result)
  {
    *(result + 24) = self->_hasMinValue;
  }

  return result;
}

@end