@interface _MTLRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (MTLDevice)device;
- (_MTLRasterizationRateMap)initWithDevice:(id)device descriptor:(id)descriptor;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
@end

@implementation _MTLRasterizationRateMap

- (_MTLRasterizationRateMap)initWithDevice:(id)device descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = _MTLRasterizationRateMap;
  v6 = [(_MTLRasterizationRateMap *)&v11 init];
  if (v6)
  {
    *(v6 + 1) = device;
    *(v6 + 2) = [descriptor label];
    if (descriptor)
    {
      objc_msgSend_screenSize(descriptor);
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    *(v6 + 24) = v9;
    *(v6 + 5) = v10;
    *(v6 + 5) = [descriptor layerCount];
    *(v6 + 6) = [descriptor mutability];
    [descriptor minFactor];
    *(v6 + 14) = v7;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _MTLRasterizationRateMap;
  [(_MTLRasterizationRateMap *)&v3 dealloc];
}

- (MTLDevice)device
{
  v2 = self->_device;

  return v2;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize
{
  *&retstr->var0 = *&self[1].var0;
  retstr->var2 = 0;
  return self;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity
{
  *&retstr->var0 = vdupq_n_s64(0x20uLL);
  retstr->var2 = 0;
  return self;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  v2 = 0;
  v3 = 1;
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer
{
  if (self)
  {
    return objc_msgSend_screenSize(self, layer, a4);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return self;
}

- (id)formattedDescription:(unint64_t)description
{
  v17[24] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (self)
  {
    objc_msgSend_physicalGranularity(self);
  }

  parameterBufferSizeAndAlign = [(_MTLRasterizationRateMap *)self parameterBufferSizeAndAlign];
  v7 = v6;
  v8 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = _MTLRasterizationRateMap;
  v9 = [(_MTLRasterizationRateMap *)&v13 description];
  v17[0] = v4;
  v17[1] = @"label =";
  label = self->_label;
  width = self->_dim.width;
  if (!label)
  {
    label = @"<none>";
  }

  v17[2] = label;
  v17[3] = v4;
  v17[4] = @"screenSize.width =";
  v17[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:width];
  v17[6] = v4;
  v17[7] = @"screenSize.height =";
  v17[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dim.height];
  v17[9] = v4;
  v17[10] = @"layerCount =";
  v17[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_dim.depth];
  v17[12] = v4;
  v17[13] = @"physicalGranularity.width =";
  v17[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14];
  v17[15] = v4;
  v17[16] = @"physicalGranularity.height =";
  v17[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
  v17[18] = v4;
  v17[19] = @"parameterBuffer.size =";
  v17[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:parameterBufferSizeAndAlign];
  v17[21] = v4;
  v17[22] = @"parameterBuffer.align =";
  v17[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  return [v8 stringWithFormat:@"%@%@", v9, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v17, 24), "componentsJoinedByString:", @" "];
}

@end