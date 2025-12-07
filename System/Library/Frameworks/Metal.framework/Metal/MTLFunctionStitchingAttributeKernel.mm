@interface MTLFunctionStitchingAttributeKernel
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLFunctionStitchingAttributeKernel

- (id)formattedDescription:(unint64_t)description
{
  v9[2] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLFunctionStitchingAttributeKernel;
  v6 = [(MTLFunctionStitchingAttributeKernel *)&v8 description];
  v9[0] = v4;
  v9[1] = @"kernel";
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 2), "componentsJoinedByString:", @" "];
}

@end