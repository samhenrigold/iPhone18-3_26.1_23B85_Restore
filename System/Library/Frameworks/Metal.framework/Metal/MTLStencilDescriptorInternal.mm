@interface MTLStencilDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLStencilDescriptorInternal)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLStencilDescriptorInternal

- (MTLStencilDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLStencilDescriptorInternal;
  result = [(MTLStencilDescriptorInternal *)&v3 init];
  if (result)
  {
    result->_private.stencilCompareFunction = 7;
    result->_private.stencilFailureOperation = 0;
    *&result->_private.depthFailureOperation = 0u;
    *&result->_private.readMask = -1;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  Class = object_getClass(self);
  return Class == object_getClass(equal) && self->_private.stencilCompareFunction == *(equal + 1) && self->_private.stencilFailureOperation == *(equal + 2) && self->_private.depthFailureOperation == *(equal + 3) && self->_private.depthStencilPassOperation == *(equal + 4) && self->_private.readMask == *(equal + 10) && self->_private.writeMask == *(equal + 11);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (result)
  {
    v5 = *&self->_private.readMask;
    v6 = *&self->_private.depthFailureOperation;
    *(result + 8) = *&self->_private.stencilCompareFunction;
    *(result + 24) = v6;
    *(result + 5) = v5;
  }

  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v9[18] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v5 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTLStencilDescriptorInternal;
  v6 = [(MTLStencilDescriptorInternal *)&v8 description];
  v9[0] = v4;
  v9[1] = @"stencilCompareFunction        =";
  v9[2] = MTLCompareFunctionString(self->_private.stencilCompareFunction);
  v9[3] = v4;
  v9[4] = @"stencilFailureOperation       =";
  v9[5] = MTLStencilOperationString(self->_private.stencilFailureOperation);
  v9[6] = v4;
  v9[7] = @"stencilPassDepthFailOperation =";
  v9[8] = MTLStencilOperationString(self->_private.depthFailureOperation);
  v9[9] = v4;
  v9[10] = @"stencilPassDepthPassOperation =";
  v9[11] = MTLStencilOperationString(self->_private.depthStencilPassOperation);
  v9[12] = v4;
  v9[13] = @"stencilReadMask               =";
  v9[14] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", self->_private.readMask];
  v9[15] = v4;
  v9[16] = @"stencilWriteMask              =";
  v9[17] = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%x", self->_private.writeMask];
  return [v5 stringWithFormat:@"%@%@", v6, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v9, 18), "componentsJoinedByString:", @" "];
}

@end