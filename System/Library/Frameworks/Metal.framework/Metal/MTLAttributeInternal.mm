@interface MTLAttributeInternal
- (MTLAttributeInternal)initWithName:(id)name attributeIndex:(unint64_t)index attributeType:(unint64_t)type flags:(MTLAttributeFlags)flags;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation MTLAttributeInternal

- (MTLAttributeInternal)initWithName:(id)name attributeIndex:(unint64_t)index attributeType:(unint64_t)type flags:(MTLAttributeFlags)flags
{
  var1 = flags.var0.var1;
  v13.receiver = self;
  v13.super_class = MTLAttributeInternal;
  v10 = [(MTLAttributeInternal *)&v13 init];
  v10->_name = name;
  nameCopy = name;
  v10->_attributeIndex = index;
  v10->_attributeType = type;
  v10->_flags = var1;
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLAttributeInternal;
  [(MTLAttributeInternal *)&v3 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v10[18] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLAttributeInternal;
  v6 = [(MTLAttributeInternal *)&v9 description];
  v10[0] = v4;
  v10[1] = @"name =";
  name = self->_name;
  if (!name)
  {
    name = @"<none>";
  }

  v10[2] = name;
  v10[3] = v4;
  v10[4] = @"attributeIndex =";
  v10[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_attributeIndex];
  v10[6] = v4;
  v10[7] = @"attributeType =";
  v10[8] = MTLDataTypeString(self->_attributeType);
  v10[9] = v4;
  v10[10] = @"active =";
  v10[11] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_flags & 1];
  v10[12] = v4;
  v10[13] = @"isPatchData =";
  v10[14] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:(self->_flags >> 1) & 1];
  v10[15] = v4;
  v10[16] = @"isPatchControlPointData =";
  v10[17] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:(self->_flags >> 2) & 1];
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 18), "componentsJoinedByString:", @" "];
}

@end