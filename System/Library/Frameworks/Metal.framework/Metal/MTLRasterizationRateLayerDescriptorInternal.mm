@interface MTLRasterizationRateLayerDescriptorInternal
- (BOOL)isEqual:(id)equal;
- (MTLRasterizationRateLayerDescriptorInternal)init;
- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)count;
- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)count horizontal:(const float *)horizontal vertical:(const float *)vertical;
- (id)copyWithZone:(_NSZone *)zone;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)setSampleCount:(id *)count;
@end

@implementation MTLRasterizationRateLayerDescriptorInternal

- (MTLRasterizationRateLayerDescriptorInternal)init
{
  v3.receiver = self;
  v3.super_class = MTLRasterizationRateLayerDescriptorInternal;

  return 0;
}

- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)count
{
  v11 = *count;
  v10.receiver = self;
  v10.super_class = MTLRasterizationRateLayerDescriptorInternal;
  v4 = [(MTLRasterizationRateLayerDescriptor *)&v10 initWithSampleCount:&v11];
  if (v4)
  {
    if (!count->var0 || (var1 = count->var1) == 0 || (v6 = malloc_type_calloc(var1 + count->var0, 4uLL, 0x100004052888210uLL), (*(v4 + 1) = v6) == 0) || (v7 = *&count->var0, *(v4 + 1) = *&count->var0, *(v4 + 4) = 0, *(v4 + 7) = 0, *(v4 + 40) = v7, *(v4 + 8) = -[MTLRasterizationRateSampleArrayInternal initWithData:numElements:]([MTLRasterizationRateSampleArrayInternal alloc], "initWithData:numElements:", [v4 horizontalSampleStorage], *(v4 + 2)), v8 = -[MTLRasterizationRateSampleArrayInternal initWithData:numElements:]([MTLRasterizationRateSampleArrayInternal alloc], "initWithData:numElements:", objc_msgSend(v4, "verticalSampleStorage"), *(v4 + 3)), *(v4 + 9) = v8, !*(v4 + 8)) || !v8)
    {
      [v4 dealloc];
      return 0;
    }
  }

  return v4;
}

- (MTLRasterizationRateLayerDescriptorInternal)initWithSampleCount:(id *)count horizontal:(const float *)horizontal vertical:(const float *)vertical
{
  v10 = *count;
  v7 = [(MTLRasterizationRateLayerDescriptorInternal *)self initWithSampleCount:&v10];
  v8 = v7;
  if (v7)
  {
    memcpy([(MTLRasterizationRateLayerDescriptorInternal *)v7 horizontalSampleStorage], horizontal, 4 * v7->_size.width);
    memcpy([(MTLRasterizationRateLayerDescriptorInternal *)v8 verticalSampleStorage], vertical, 4 * v8->_size.height);
  }

  return v8;
}

- (void)dealloc
{
  free(self->_data);

  v3.receiver = self;
  v3.super_class = MTLRasterizationRateLayerDescriptorInternal;
  [(MTLRasterizationRateLayerDescriptorInternal *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MTLRasterizationRateLayerDescriptorInternal allocWithZone:zone];
  size = self->_size;
  v5 = [(MTLRasterizationRateLayerDescriptorInternal *)v4 initWithSampleCount:&size];
  v6 = v5;
  if (v5)
  {
    memcpy(*(v5 + 8), self->_data, 4 * (self->_size.height + self->_size.width));
    size = self->_currentSampleCount;
    [v6 setSampleCount:&size];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  result = (objc_opt_isKindOfClass() & 1) != 0 && (width = self->_size.width, width == *(equal + 2)) && (height = self->_size.height, height == *(equal + 3)) && self->_currentSampleCount.width == *(equal + 5) && self->_currentSampleCount.height == *(equal + 6) && memcmp(self->_data, *(equal + 1), 4 * (height + width)) == 0;
  return result;
}

- (id)formattedDescription:(unint64_t)description
{
  v19[18] = *MEMORY[0x1E69E9840];
  p_size = &self->_size;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_size.width];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_size.height];
  data = self->_data;
  if (p_size->width)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      *&v8 = data[v11];
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v8), v11++}];
      v10 += 4;
    }

    while (v11 < p_size->width);
    data = (data + v10);
  }

  if (self->_size.height)
  {
    v12 = 0;
    do
    {
      *&v8 = data[v12];
      [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v8), v12++}];
    }

    while (v12 < self->_size.height);
  }

  v13 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v14 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = MTLRasterizationRateLayerDescriptorInternal;
  v15 = [(MTLRasterizationRateLayerDescriptorInternal *)&v18 description];
  v19[0] = v13;
  v19[1] = @"sampleCount.width =";
  p_currentSampleCount = &self->_currentSampleCount;
  v19[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_currentSampleCount->width];
  v19[3] = v13;
  v19[4] = @"sampleCount.height =";
  v19[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_currentSampleCount->height];
  v19[6] = v13;
  v19[7] = @"maxSampleCount.width =";
  v19[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_size->width];
  v19[9] = v13;
  v19[10] = @"maxSampleCount.height =";
  v19[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:p_size->height];
  v19[12] = v13;
  v19[13] = @"horizontal =";
  v19[14] = [v6 componentsJoinedByString:{@", "}];
  v19[15] = v13;
  v19[16] = @"vertical =";
  v19[17] = [v7 componentsJoinedByString:{@", "}];
  return [v14 stringWithFormat:@"%@%@", v15, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v19, 18), "componentsJoinedByString:", @" "];
}

- (void)setSampleCount:(id *)count
{
  var2 = count->var2;
  *&self->_currentSampleCount.width = *&count->var0;
  self->_currentSampleCount.depth = var2;
}

@end