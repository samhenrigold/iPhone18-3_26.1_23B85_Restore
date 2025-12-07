@interface MTLFunctionStitchingBuiltinThreadPositionInThreadgroup
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLFunctionStitchingBuiltinThreadPositionInThreadgroup

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (id)formattedDescription:(unint64_t)description
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLFunctionStitchingBuiltinThreadPositionInThreadgroup;
  v6 = [(MTLFunctionStitchingBuiltinThreadPositionInThreadgroup *)&v8 description];
  v9[0] = v4;
  v9[1] = &stru_1EF478240;
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 2), "componentsJoinedByString:", @" "];
}

@end