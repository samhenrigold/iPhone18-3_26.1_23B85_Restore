@interface MTLFunctionConstantInternal
- (MTLFunctionConstantInternal)initWithName:(id)name type:(unint64_t)type index:(unint64_t)index required:(BOOL)required;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLFunctionConstantInternal

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLFunctionConstantInternal;
  [(MTLFunctionConstantInternal *)&v3 dealloc];
}

- (MTLFunctionConstantInternal)initWithName:(id)name type:(unint64_t)type index:(unint64_t)index required:(BOOL)required
{
  v12.receiver = self;
  v12.super_class = MTLFunctionConstantInternal;
  v10 = [(MTLFunctionConstantInternal *)&v12 init];
  v10->_name = [name copy];
  v10->_type = type;
  v10->_index = index;
  v10->_required = required;
  return v10;
}

- (id)formattedDescription:(unint64_t)description
{
  v11[12] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = MTLFunctionConstantInternal;
  v6 = [(MTLFunctionConstantInternal *)&v10 description];
  name = self->_name;
  v11[0] = v4;
  v11[1] = @"name =";
  if (name)
  {
    v8 = name;
  }

  else
  {
    v8 = @"<none>";
  }

  v11[2] = v8;
  v11[3] = v4;
  v11[4] = @"type =";
  v11[5] = MTLDataTypeString(self->_type);
  v11[6] = v4;
  v11[7] = @"index =";
  v11[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_index];
  v11[9] = v4;
  v11[10] = @"required =";
  v11[11] = [MEMORY[0x1E696AD98] numberWithBool:self->_required];
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v11, 12), "componentsJoinedByString:", @" "];
}

@end