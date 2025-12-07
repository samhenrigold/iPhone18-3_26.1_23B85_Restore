@interface MTLBuiltInArgument
- (BOOL)isEqual:(id)equal;
- (MTLBuiltInArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access active:(BOOL)active index:(unint64_t)index dataType:(unint64_t)dataType builtInType:(unint64_t)inType;
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLBuiltInArgument

- (MTLBuiltInArgument)initWithName:(id)name type:(unint64_t)type access:(unint64_t)access active:(BOOL)active index:(unint64_t)index dataType:(unint64_t)dataType builtInType:(unint64_t)inType
{
  dataTypeCopy = dataType;
  v11.receiver = self;
  v11.super_class = MTLBuiltInArgument;
  result = [(MTLBindingInternal *)&v11 initWithName:name type:type access:access index:index active:active arrayLength:1];
  result->_builtInType = inType;
  result->_builtInDataType = dataTypeCopy;
  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v10[3] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLBuiltInArgument;
  v7 = [(MTLBindingInternal *)&v9 formattedDescription:description];
  v10[0] = v5;
  v10[1] = @"BuiltInArgumentType =";
  v10[2] = MTLBuiltInArgumentTypeString(self->_builtInType);
  return [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 3), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_builtInType != *(equal + 84) || self->_builtInDataType != *(equal + 85))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLBuiltInArgument;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end