@interface MTLTextureBindingInternal
- (BOOL)isEqual:(id)equal;
- (MTLTextureBindingInternal)initWithName:(id)name access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arraySize:(unint64_t)size dataType:(unint64_t)type textureType:(unint64_t)textureType isDepthTexture:(BOOL)self0;
- (id)formattedDescription:(unint64_t)description;
@end

@implementation MTLTextureBindingInternal

- (MTLTextureBindingInternal)initWithName:(id)name access:(unint64_t)access isActive:(BOOL)active locationIndex:(unint64_t)index arraySize:(unint64_t)size dataType:(unint64_t)type textureType:(unint64_t)textureType isDepthTexture:(BOOL)self0
{
  v16.receiver = self;
  v16.super_class = MTLTextureBindingInternal;
  v12 = [(MTLBindingInternal *)&v16 initWithName:name type:2 access:access index:index active:active arrayLength:size];
  v13 = v12;
  *(v12 + 84) = *(v12 + 84) & 0x8000 | textureType & 0x7FFF;
  if (texture)
  {
    v14 = 0x80;
  }

  else
  {
    v14 = 0;
  }

  *(v12 + 169) = v14 & 0x80 | *(v12 + 169) & 0x7F;
  v12->_textureDataType = type;
  v12->super._typeInfo = [[MTLTextureReferenceTypeInternal alloc] initWithDataType:type textureType:textureType access:access isDepthTexture:texture];
  return v13;
}

- (id)formattedDescription:(unint64_t)description
{
  v10[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = MTLTextureBindingInternal;
  v7 = [(MTLBindingInternal *)&v9 formattedDescription:description];
  v10[0] = v5;
  v10[1] = @"TextureType =";
  v10[2] = MTLTextureTypeString(*(self + 84) & 0x7FFF);
  v10[3] = v5;
  v10[4] = @"TextureDataType =";
  v10[5] = MTLDataTypeString(self->_textureDataType);
  v10[6] = v5;
  v10[7] = @"IsDepthTexture =";
  v10[8] = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(self + 169) >> 7];
  return [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v10, 9), "componentsJoinedByString:", @" "];
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((*(equal + 84) ^ *(self + 84)) & 0x7FFF) != 0 || ((*(equal + 169) ^ *(self + 169)) & 0x80) != 0 || self->_textureDataType != *(equal + 85))
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = MTLTextureBindingInternal;
  return [(MTLBindingInternal *)&v6 isEqual:equal];
}

@end