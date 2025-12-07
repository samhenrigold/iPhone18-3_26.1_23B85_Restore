@interface _MTLHeap
- (_MTLHeap)initWithType:(int64_t)type options:(unint64_t)options;
- (id)formattedDescription:(unint64_t)description;
- (unint64_t)hazardTrackingMode;
- (unint64_t)resourceOptions;
@end

@implementation _MTLHeap

- (_MTLHeap)initWithType:(int64_t)type options:(unint64_t)options
{
  v7.receiver = self;
  v7.super_class = _MTLHeap;
  result = [(_MTLAllocation *)&v7 initWithAllocationType:2];
  if (result)
  {
    result->_heapType = type;
    result->_heapResourceOptions = options;
  }

  return result;
}

- (unint64_t)hazardTrackingMode
{
  heapResourceOptions = self->_heapResourceOptions;
  if (((heapResourceOptions >> 8) & 2) != 0)
  {
    return (heapResourceOptions >> 8) & 3;
  }

  else
  {
    return 1;
  }
}

- (unint64_t)resourceOptions
{
  storageMode = [(_MTLHeap *)self storageMode];
  cpuCacheMode = [(_MTLHeap *)self cpuCacheMode];
  return cpuCacheMode & 0xF | (16 * (storageMode & 0xF)) | (([(_MTLHeap *)self hazardTrackingMode]& 3) << 8);
}

- (id)formattedDescription:(unint64_t)description
{
  v18[24] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(_MTLObjectWithLabel *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = _MTLHeap;
  v7 = [(_MTLHeap *)&v17 description];
  v18[0] = v4;
  v18[1] = @"label =";
  v8 = @"<none>";
  if (retainedLabel)
  {
    v8 = retainedLabel;
  }

  v18[2] = v8;
  v18[3] = v4;
  v18[4] = @"type =";
  type = [(_MTLHeap *)self type];
  v10 = @"MTLHeapTypePlacement";
  if (type != 1)
  {
    v10 = @"Invalid";
  }

  if (!type)
  {
    v10 = @"MTLHeapTypeAutomatic";
  }

  v18[5] = v10;
  v18[6] = v4;
  v18[7] = @"size =";
  v18[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MTLHeap size](self, "size")}];
  v18[9] = v4;
  v18[10] = @"usedSize =";
  v18[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_MTLHeap usedSize](self, "usedSize")}];
  v18[12] = v4;
  v18[13] = @"cpuCacheMode =";
  cpuCacheMode = [(_MTLHeap *)self cpuCacheMode];
  v12 = @"MTLCPUCacheModeDefaultCache";
  if (cpuCacheMode)
  {
    v12 = @"Invalid";
  }

  if (cpuCacheMode == 1)
  {
    v12 = @"MTLCPUCacheModeWriteCombined";
  }

  v18[14] = v12;
  v18[15] = v4;
  v18[16] = @"storageMode =";
  storageMode = [(_MTLHeap *)self storageMode];
  v14 = @"MTLStorageModePrivate";
  if (storageMode != 2)
  {
    v14 = @"Invalid";
  }

  if (!storageMode)
  {
    v14 = @"MTLStorageModeShared";
  }

  v18[17] = v14;
  v18[18] = v4;
  v18[19] = @"hazardTrackingMode =";
  v18[20] = MTLHazardTrackingModeString([(_MTLHeap *)self hazardTrackingMode]);
  v18[21] = v4;
  v18[22] = @"resourceOptions =";
  v18[23] = MTLResourceOptionsString([(_MTLHeap *)self resourceOptions]);
  v15 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 24), "componentsJoinedByString:", @" "];

  return v15;
}

@end