@interface MTLIndexedConstantValue
- (MTLIndexedConstantValue)initWithValue:(const void *)value type:(unint64_t)type index:(unint64_t)index;
- (id)describe;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLIndexedConstantValue

- (MTLIndexedConstantValue)initWithValue:(const void *)value type:(unint64_t)type index:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = MTLIndexedConstantValue;
  v7 = [(MTLIndexedConstantValue *)&v9 init];
  if (v7)
  {
    v7->_index = index;
    v7->_dataType = type;
    _MTLConstantDataSize(type);
    operator new[]();
  }

  return 0;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    MEMORY[0x1865FF1F0](data, 0x1000C8077774924);
  }

  self->_data = 0;
  v4.receiver = self;
  v4.super_class = MTLIndexedConstantValue;
  [(MTLIndexedConstantValue *)&v4 dealloc];
}

- (id)describe
{
  v3 = newStringFromConstantValue(self->_data, self->_dataType);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"index: %@; type: %@; value: %@", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", self->_index), MTLDataTypeString(self->_dataType), v3];

  return v4;
}

- (id)formattedDescription:(unint64_t)description
{
  v11[9] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = newStringFromConstantValue(self->_data, self->_dataType);
  v6 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLIndexedConstantValue;
  v7 = [(MTLIndexedConstantValue *)&v10 description];
  v11[0] = v4;
  v11[1] = @"Index =";
  v11[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_index];
  v11[3] = v4;
  v11[4] = @"Type =";
  v11[5] = MTLDataTypeString(self->_dataType);
  v11[6] = v4;
  v11[7] = @"Value =";
  v11[8] = v5;
  v8 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 9), "componentsJoinedByString:", @" "];

  return v8;
}

@end