@interface MTLPointerTypeInternal
- (BOOL)isEqual:(id)equal;
- (MTLPointerTypeInternal)initWithElementType:(unint64_t)type elementTypeDescription:(id)description access:(unint64_t)access alignment:(unint64_t)alignment dataSize:(unint64_t)size elementIsIndirectArgumentBuffer:(BOOL)buffer isConstantBuffer:(BOOL)constantBuffer;
- (MTLPointerTypeInternal)initWithElementType:(unint64_t)type elementTypeDescription:(id)description access:(unint64_t)access alignment:(unint64_t)alignment dataSize:(unint64_t)size elementIsIndirectArgumentBuffer:(BOOL)buffer isConstantBuffer:(BOOL)constantBuffer doRetain:(BOOL)self0;
- (id)elementArrayType;
- (id)elementStructType;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLPointerTypeInternal

- (void)dealloc
{
  if (self->_doRetain)
  {
  }

  v3.receiver = self;
  v3.super_class = MTLPointerTypeInternal;
  [(MTLPointerTypeInternal *)&v3 dealloc];
}

- (MTLPointerTypeInternal)initWithElementType:(unint64_t)type elementTypeDescription:(id)description access:(unint64_t)access alignment:(unint64_t)alignment dataSize:(unint64_t)size elementIsIndirectArgumentBuffer:(BOOL)buffer isConstantBuffer:(BOOL)constantBuffer doRetain:(BOOL)self0
{
  v18.receiver = self;
  v18.super_class = MTLPointerTypeInternal;
  v16 = [(MTLPointerTypeInternal *)&v18 init];
  v16->_dataType = 60;
  v16->_elementType = type;
  v16->_doRetain = retain;
  if (retain)
  {
    description = description;
  }

  v16->_elementTypeInfo = description;
  v16->_access = access;
  v16->_alignment = alignment;
  v16->_dataSize = size;
  v16->_elementIsArgumentBuffer = buffer;
  v16->_isConstantBuffer = constantBuffer;
  return v16;
}

- (MTLPointerTypeInternal)initWithElementType:(unint64_t)type elementTypeDescription:(id)description access:(unint64_t)access alignment:(unint64_t)alignment dataSize:(unint64_t)size elementIsIndirectArgumentBuffer:(BOOL)buffer isConstantBuffer:(BOOL)constantBuffer
{
  BYTE1(v10) = 1;
  LOBYTE(v10) = constantBuffer;
  return [(MTLPointerTypeInternal *)self initWithElementType:type elementTypeDescription:description access:access alignment:alignment dataSize:size elementIsIndirectArgumentBuffer:buffer isConstantBuffer:v10 doRetain:?];
}

- (id)elementStructType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 1)
    {
      return self->_elementTypeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)elementArrayType
{
  result = self->_elementTypeInfo;
  if (result)
  {
    if ([result dataType] == 2)
    {
      return self->_elementTypeInfo;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v8 = MEMORY[0x1E696AEC0];
  v14 = v7;
  v15 = @"DataType =";
  v16 = MTLDataTypeString(self->_dataType);
  v17 = v7;
  v18 = @"ElementType =";
  v19 = MTLDataTypeString(self->_elementType);
  elementTypeInfo = self->_elementTypeInfo;
  if (elementTypeInfo)
  {
    v10 = [v8 stringWithFormat:@"%@ ElementTypeDescription = %@", v7, -[MTLType formattedDescription:withPrintedTypes:](elementTypeInfo, "formattedDescription:withPrintedTypes:", description + 4, types), v14, v15, v16, v17, v18, v19];
  }

  else
  {
    v10 = &stru_1EF478240;
  }

  v20 = v10;
  v21 = v7;
  v22 = @"Access =";
  access = self->_access;
  if (access > 2)
  {
    v12 = @"Unknown";
  }

  else
  {
    v12 = off_1E6EECDC0[access];
  }

  v23 = v12;
  v24 = v7;
  v25 = @"Alignment =";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_alignment];
  v27 = v7;
  v28 = @"DataSize =";
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dataSize];
  v30 = v7;
  v31 = @"ConstantBuffer = ";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConstantBuffer];
  return [v8 stringWithFormat:@"%@", objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v14, 19), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_dataType != *(equal + 1) || self->_elementType != *(equal + 2))
  {
    goto LABEL_12;
  }

  elementTypeInfo = self->_elementTypeInfo;
  if (!(elementTypeInfo | *(equal + 3)) || (v6 = [(MTLType *)elementTypeInfo isEqual:?]) != 0)
  {
    if (self->_access == *(equal + 4) && self->_alignment == *(equal + 5) && self->_dataSize == *(equal + 6) && self->_elementIsArgumentBuffer == *(equal + 56))
    {
      LOBYTE(v6) = self->_isConstantBuffer == *(equal + 57);
      return v6;
    }

LABEL_12:
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end