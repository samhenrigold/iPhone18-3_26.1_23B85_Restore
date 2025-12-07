@interface MTLTensorBindingInternal
- (BOOL)isEqual:(id)equal;
- (MTLTensorBindingInternal)initWithName:(id)name access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arrayLength:(unint64_t)length dataType:(int64_t)type indexType:(unint64_t)indexType dimensions:(id)self0;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLTensorBindingInternal

- (MTLTensorBindingInternal)initWithName:(id)name access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arrayLength:(unint64_t)length dataType:(int64_t)type indexType:(unint64_t)indexType dimensions:(id)self0
{
  v13.receiver = self;
  v13.super_class = MTLTensorBindingInternal;
  v11 = [(MTLBindingInternal *)&v13 initWithName:name type:37 access:access index:index active:active arrayLength:length];
  v11->_tensorDataType = type;
  v11->_indexType = indexType;
  if (dimensions)
  {
    v11->_dimensions = [dimensions copy];
  }

  return v11;
}

- (void)dealloc
{
  dimensions = self->_dimensions;
  if (dimensions)
  {
  }

  v4.receiver = self;
  v4.super_class = MTLTensorBindingInternal;
  [(MTLBindingInternal *)&v4 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v10[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLTensorBindingInternal;
  v7 = [(MTLBindingInternal *)&v9 formattedDescription:description];
  v10[0] = v5;
  v10[1] = @"TensorDataType =";
  v10[2] = MTLTensorDataTypeString(self->_tensorDataType);
  v10[3] = v5;
  v10[4] = @"IndexType =";
  v10[5] = MTLDataTypeString(self->_indexType);
  v10[6] = v5;
  v10[7] = @"Dimensions =";
  v10[8] = [(MTLTensorExtents *)self->_dimensions formattedDescription:0];
  return [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 9), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && self->_tensorDataType == *(equal + 21) && self->_indexType == *(equal + 22))
    {
      dimensions = self->_dimensions;
      v6 = *(equal + 23);
      if (dimensions)
      {
        if (v6)
        {
          v7 = [(MTLTensorExtents *)dimensions isEqual:?];
          if (!v7)
          {
            return v7;
          }

          goto LABEL_13;
        }
      }

      else if (!v6)
      {
LABEL_13:
        v9.receiver = self;
        v9.super_class = MTLTensorBindingInternal;
        LOBYTE(v7) = [(MTLBindingInternal *)&v9 isEqual:equal];
        return v7;
      }
    }

    LOBYTE(v7) = 0;
    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

@end