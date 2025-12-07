@interface MTLObjectPayloadBindingInternal
- (BOOL)isEqual:(id)equal;
- (MTLObjectPayloadBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arraySize:(unint64_t)size dataType:(unint64_t)dataType dataSize:(unint64_t)self0 alignment:(unint64_t)self1;
- (id)formattedDescription:(unint64_t)description;
- (id)objectPayloadStructType;
- (void)setStructType:(id)type doRetain:(BOOL)retain;
@end

@implementation MTLObjectPayloadBindingInternal

- (MTLObjectPayloadBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arraySize:(unint64_t)size dataType:(unint64_t)dataType dataSize:(unint64_t)self0 alignment:(unint64_t)self1
{
  v15.receiver = self;
  v15.super_class = MTLObjectPayloadBindingInternal;
  v12 = [(MTLBindingInternal *)&v15 initWithName:name type:type access:access index:index active:active arrayLength:1];
  v12->_alignment = alignment;
  v12->_dataSize = dataSize;
  v12->_dataType = dataType;
  LOBYTE(v14) = 0;
  v12->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:dataType elementTypeDescription:0 access:access alignment:alignment dataSize:dataSize elementIsIndirectArgumentBuffer:0 isConstantBuffer:v14];
  return v12;
}

- (id)objectPayloadStructType
{
  if (self->_dataType == 1)
  {
    return [(MTLType *)self->super._typeInfo elementStructType];
  }

  else
  {
    return 0;
  }
}

- (void)setStructType:(id)type doRetain:(BOOL)retain
{
  if (type)
  {

    BYTE1(v7) = retain;
    LOBYTE(v7) = 0;
    self->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:1 elementTypeDescription:type access:self->super._access alignment:self->_alignment dataSize:self->_dataSize elementIsIndirectArgumentBuffer:0 isConstantBuffer:v7 doRetain:?];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v10[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLObjectPayloadBindingInternal;
  v7 = [(MTLBindingInternal *)&v9 formattedDescription:description];
  v10[0] = v5;
  v10[1] = @"Alignment =";
  v10[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_alignment];
  v10[3] = v5;
  v10[4] = @"DataSize =";
  v10[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataSize];
  return [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 6), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_alignment != *(equal + 84) || self->_dataSize != *(equal + 43) || self->_dataType != *(equal + 22))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLObjectPayloadBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end