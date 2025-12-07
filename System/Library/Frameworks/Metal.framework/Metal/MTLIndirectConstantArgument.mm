@interface MTLIndirectConstantArgument
- (BOOL)isEqual:(id)equal;
- (MTLIndirectConstantArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index dataType:(unint64_t)dataType pixelFormat:(unint64_t)format aluType:(unint64_t)self0 dataSize:(unint64_t)self1 alignment:(unint64_t)self2;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLIndirectConstantArgument

- (MTLIndirectConstantArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index dataType:(unint64_t)dataType pixelFormat:(unint64_t)format aluType:(unint64_t)self0 dataSize:(unint64_t)self1 alignment:(unint64_t)self2
{
  dataTypeCopy = dataType;
  v14.receiver = self;
  v14.super_class = MTLIndirectConstantArgument;
  result = [(MTLBindingInternal *)&v14 initWithName:name type:type access:access index:index active:active arrayLength:1];
  result->_alignment = alignment;
  result->_dataSize = size;
  result->_dataType = dataTypeCopy;
  result->_pixelFormat = format;
  result->_aluType = aluType;
  return result;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLIndirectConstantArgument;
  [(MTLBindingInternal *)&v2 dealloc];
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v11[9] = *MEMORY[0x1E69E9840];
  v6 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v7 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLIndirectConstantArgument;
  v8 = [(MTLBindingInternal *)&v10 formattedDescription:description];
  v11[0] = v6;
  v11[1] = @"Alignment =";
  v11[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_alignment];
  v11[3] = v6;
  v11[4] = @"DataSize =";
  v11[5] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_dataSize];
  v11[6] = v6;
  v11[7] = @"DataType =";
  v11[8] = MTLDataTypeString(self->_dataType);
  return [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 9), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_dataType != *(equal + 84) || self->_alignment != *(equal + 85) || self->_dataSize != *(equal + 86) || self->_pixelFormat != *(equal + 22) || self->_aluType != *(equal + 23))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLIndirectConstantArgument;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end