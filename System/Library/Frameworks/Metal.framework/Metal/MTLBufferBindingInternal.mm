@interface MTLBufferBindingInternal
- (BOOL)isEqual:(id)equal;
- (MTLBufferBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arraySize:(unint64_t)size dataType:(unint64_t)dataType pixelFormat:(unint64_t)self0 aluType:(unint64_t)self1 isConstantBuffer:(BOOL)self2 dataSize:(unint64_t)self3 alignment:(unint64_t)self4;
- (MTLPointerType)bufferPointerType;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)bufferDataSize;
- (void)dealloc;
- (void)setStructType:(id)type doRetain:(BOOL)retain;
- (void)setVertexDescriptorBuffer:(BOOL)buffer;
@end

@implementation MTLBufferBindingInternal

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLBufferBindingInternal;
  [(MTLBindingInternal *)&v2 dealloc];
}

- (MTLBufferBindingInternal)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arraySize:(unint64_t)size dataType:(unint64_t)dataType pixelFormat:(unint64_t)self0 aluType:(unint64_t)self1 isConstantBuffer:(BOOL)self2 dataSize:(unint64_t)self3 alignment:(unint64_t)self4
{
  v18.receiver = self;
  v18.super_class = MTLBufferBindingInternal;
  v15 = [(MTLBindingInternal *)&v18 initWithName:name type:type access:access index:index active:active arrayLength:1];
  v15->_alignment = alignment;
  v15->_dataSize = dataSize;
  *(v15 + 84) = *(v15 + 84) & 0x8000 | dataType & 0x7FFF;
  v15->_pixelFormat = format;
  v15->_aluType = aluType;
  *(v15 + 169) &= ~0x80u;
  LOBYTE(v17) = buffer;
  v15->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:dataType elementTypeDescription:0 access:access alignment:alignment dataSize:dataSize elementIsIndirectArgumentBuffer:0 isConstantBuffer:v17];
  return v15;
}

- (void)setVertexDescriptorBuffer:(BOOL)buffer
{
  if (buffer)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *(self + 169) = v3 & 0x80 | *(self + 169) & 0x7F;
}

- (void)setStructType:(id)type doRetain:(BOOL)retain
{
  if (type)
  {
    IsIndirectArgumentBuffer = structIsIndirectArgumentBuffer(type);
    isConstantBuffer = [(MTLType *)self->super._typeInfo isConstantBuffer];

    BYTE1(v9) = retain;
    LOBYTE(v9) = isConstantBuffer;
    self->super._typeInfo = [[MTLPointerTypeInternal alloc] initWithElementType:1 elementTypeDescription:type access:self->super._access alignment:self->_alignment dataSize:self->_dataSize elementIsIndirectArgumentBuffer:IsIndirectArgumentBuffer isConstantBuffer:v9 doRetain:?];
  }
}

- (unint64_t)bufferDataSize
{
  if (self->_dataSize == -1)
  {
    return -1;
  }

  else
  {
    return self->_dataSize;
  }
}

- (MTLPointerType)bufferPointerType
{
  result = self->super._typeInfo;
  if (result)
  {
    if ([(MTLPointerType *)result dataType]== 60)
    {
      return self->super._typeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v10[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLBufferBindingInternal;
  v7 = [(MTLBindingInternal *)&v9 formattedDescription:description];
  v10[0] = v5;
  v10[1] = @"Alignment =";
  v10[2] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:self->_alignment];
  v10[3] = v5;
  v10[4] = @"DataSize =";
  v10[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataSize];
  v10[6] = v5;
  v10[7] = @"DataType =";
  v10[8] = MTLDataTypeString(*(self + 84) & 0x7FFF);
  return [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 9), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((*(equal + 84) ^ *(self + 84)) & 0x7FFF) != 0 || ((*(equal + 169) ^ *(self + 169)) & 0x80) != 0 || self->_alignment != *(equal + 85) || self->_dataSize != *(equal + 43) || self->_pixelFormat != *(equal + 22) || self->_aluType != *(equal + 23))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLBufferBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end