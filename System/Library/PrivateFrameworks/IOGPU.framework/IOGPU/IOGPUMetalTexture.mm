@interface IOGPUMetalTexture
+ (void)initNewTextureDataWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args;
- (BOOL)isAliasable;
- (BOOL)isSparse;
- (IOGPUMetalBuffer)buffer;
- (IOGPUMetalResource)rootResource;
- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 isStrideTexture:(BOOL)self1;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unsigned int)plane field:(unsigned int)field args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor placementSparseBytes:(unint64_t)bytes placementSparsePageSize:(int64_t)size placementSparseMetaDataBytes:(unint64_t)dataBytes placementSparseResidencyBytes:(unint64_t)residencyBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemPointer:(void *)pointer sysMemSize:(unint64_t)size sysMemLength:(unint64_t)length sysMemRowBytes:(unint64_t)bytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 deallocator:(id)aBlock;
- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalTexture)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length device:(id)device descriptor:(id)descriptor;
- (IOGPUMetalTexture)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length descriptor:(id)descriptor sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)self0 vidMemRowBytes:(unint64_t)self1 args:(IOGPUNewResourceArgs *)self2 argsSize:(unsigned int)self3;
- (IOGPUMetalTexture)initWithTextureInternal:(id)internal pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle compressedView:(BOOL)view;
- (IOGPUMetalTexture)parentTexture;
- (__CFArray)copyAnnotations;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newSharedTextureHandle;
- (int)setOwnerWithIdentity:(unsigned int)identity;
- (unint64_t)allocatedSize;
- (unint64_t)bufferBytesPerRow;
- (unint64_t)bufferOffset;
- (unint64_t)hazardTrackingMode;
- (void)_setLabel:(id)label;
- (void)copyFromPixels:(const void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes toSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size;
- (void)copyFromSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size toPixels:(void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
- (void)makeAliasable;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row;
@end

@implementation IOGPUMetalTexture

- (unint64_t)hazardTrackingMode
{
  v4 = (*&self->super._anon_50[88] >> 8) & 3;
  if (v4)
  {
    return v4;
  }

  buffer = self->_buffer;
  if (!buffer)
  {
    buffer = self->_parentTexture;
    if (!buffer)
    {
      buffer = [(IOGPUMetalResource *)self heap];
      if (!buffer)
      {
        return 2;
      }
    }
  }

  return [(MTLHeap *)buffer hazardTrackingMode];
}

- (void)dealloc
{
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self->_pointer, self->_length);
    _Block_release(self->_deallocator);
    self->_deallocator = 0;
  }

  if (*&self->super._anon_50[136])
  {
    if ((*&self->super._anon_50[88] & 0xF0) != 0x30)
    {
      [(IOGPUMetalTexture *)self makeAliasable];
      if (!self->_buffer && !self->_parentTexture)
      {
        [*&self->super._anon_50[136] deallocHeapSubResource];
      }
    }
  }

  if (self->_rootResourceIsSuballocatedBuffer)
  {
    [*&self->super._anon_50[32] deallocBufferSubData:self->_primaryBuffer heapIndex:self->_primaryHeapIndex bufferIndex:self->_primaryBufferIndex bufferOffset:self->_primaryBufferOffset length:self->_length];
  }

  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetalTexture;
  [(IOGPUMetalResource *)&v5 dealloc];
}

- (IOGPUMetalBuffer)buffer
{
  if (!self->_buffer)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture buffer];
  }

  return self->_buffer;
}

- (IOGPUMetalTexture)parentTexture
{
  if (!self->_parentTexture)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture parentTexture];
  }

  return self->_parentTexture;
}

- (unint64_t)bufferOffset
{
  if (self->_buffer)
  {
    return self->_bufferOffset;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)bufferBytesPerRow
{
  if (self->_buffer)
  {
    return self->_bufferBytesPerRow;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)allocatedSize
{
  if (self->_primaryBuffer)
  {
    return self->_length;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = IOGPUMetalTexture;
  return [(IOGPUMetalResource *)&v5 allocatedSize];
}

- (__IOSurface)iosurface
{
  result = self->_iosurface;
  if (!result || self->_shareable)
  {
    return 0;
  }

  return result;
}

- (void)makeAliasable
{
  if (!self->_buffer && !self->_parentTexture)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = IOGPUMetalTexture;
    [(IOGPUMetalResource *)&v4 makeAliasable];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v18[84] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = IOGPUMetalTexture;
  v8 = [(IOGPUMetalTexture *)&v17 description];
  v18[0] = v5;
  v18[1] = @"label =";
  if (retainedLabel)
  {
    v9 = retainedLabel;
  }

  else
  {
    v9 = @"<none>";
  }

  v18[2] = v9;
  v18[3] = v5;
  v18[4] = @"textureType =";
  v18[5] = MTLTextureTypeString();
  v18[6] = v5;
  v18[7] = @"pixelFormat =";
  v18[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName()];
  v18[9] = v5;
  v18[10] = @"width =";
  v18[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_width];
  v18[12] = v5;
  v18[13] = @"height =";
  v18[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_height];
  v18[15] = v5;
  v18[16] = @"depth =";
  v18[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_depth];
  v18[18] = v5;
  v18[19] = @"arrayLength =";
  v18[20] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_arrayLength];
  v18[21] = v5;
  v18[22] = @"mipmapLevelCount =";
  v18[23] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_mipmapLevelCount];
  v18[24] = v5;
  v18[25] = @"sampleCount =";
  v18[26] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sampleCount];
  v18[27] = v5;
  v18[28] = @"cpuCacheMode =";
  v18[29] = MTLCPUCacheModeString();
  v18[30] = v5;
  v18[31] = @"storageMode =";
  v18[32] = MTLStorageModeString();
  v18[33] = v5;
  v18[34] = @"hazardTrackingMode =";
  [(IOGPUMetalTexture *)self hazardTrackingMode];
  v18[35] = MTLHazardTrackingModeString();
  v18[36] = v5;
  v18[37] = @"resourceOptions =";
  [(IOGPUMetalResource *)self resourceOptions];
  v18[38] = MTLResourceOptionsString();
  v18[39] = v5;
  v18[40] = @"usage =";
  v18[41] = MTLTextureUsageString();
  v18[42] = v5;
  v18[43] = @"shareable =";
  v18[44] = [MEMORY[0x1E696AD98] numberWithBool:self->_shareable];
  v18[45] = v5;
  v18[46] = @"framebufferOnly =";
  v18[47] = [MEMORY[0x1E696AD98] numberWithBool:self->_framebufferOnly];
  v18[48] = v5;
  v18[49] = @"purgeableState =";
  v18[50] = MTLPurgeableStateString();
  v18[51] = v5;
  v18[52] = @"swizzle =";
  v18[53] = MTLTextureSwizzleString();
  v18[54] = v5;
  v18[55] = @"isCompressed =";
  v18[56] = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompressed];
  v18[57] = v5;
  v18[58] = @"parentTexture =";
  parentTexture = self->_parentTexture;
  if (parentTexture)
  {
    v11 = [(IOGPUMetalTexture *)parentTexture formattedDescription:description + 4];
  }

  else
  {
    v11 = @"<null>";
  }

  v18[59] = v11;
  v18[60] = v5;
  v18[61] = @"parentRelativeLevel =";
  v18[62] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_parentRelativeLevel];
  v18[63] = v5;
  v18[64] = @"parentRelativeSlice =";
  v18[65] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_parentRelativeSlice];
  v18[66] = v5;
  v18[67] = @"buffer =";
  buffer = [(IOGPUMetalTexture *)self buffer];
  if (!buffer)
  {
    buffer = [MEMORY[0x1E695DFB0] null];
  }

  v18[68] = buffer;
  v18[69] = v5;
  v18[70] = @"bufferOffset =";
  v18[71] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IOGPUMetalTexture bufferOffset](self, "bufferOffset")}];
  v18[72] = v5;
  v18[73] = @"bufferBytesPerRow =";
  v18[74] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IOGPUMetalTexture bufferBytesPerRow](self, "bufferBytesPerRow")}];
  v18[75] = v5;
  v18[76] = @"iosurface =";
  v18[77] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self->_iosurface];
  v18[78] = v5;
  v18[79] = @"iosurfacePlane =";
  v18[80] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_iosurfacePlane];
  v18[81] = v5;
  allowGPUOptimizedContents = self->_allowGPUOptimizedContents;
  v18[82] = @"allowGPUOptimizedContents =";
  if (allowGPUOptimizedContents)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v18[83] = v14;
  v15 = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 84), "componentsJoinedByString:", @" "];

  return v15;
}

- (void)_setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = IOGPUMetalTexture;
  [(IOGPUMetalResource *)&v5 _setLabel:?];
  if (self->_shareable)
  {
    IOSurfaceSetValue(self->_iosurface, *MEMORY[0x1E696CF98], label);
  }
}

- (IOGPUMetalResource)rootResource
{
  parentTexture = self->_parentTexture;
  if (!parentTexture)
  {
    return &self->_buffer->super;
  }

  return &parentTexture->super;
}

- (BOOL)isAliasable
{
  buffer = self->_buffer;
  if (buffer)
  {
    return [buffer isAliasable];
  }

  buffer = self->_parentTexture;
  if (buffer)
  {
    return [buffer isAliasable];
  }

  else
  {
    return (self->super._anon_50[168] & 1) == 0;
  }
}

- (id)newSharedTextureHandle
{
  if (!self->_shareable)
  {
    return 0;
  }

  v4 = objc_alloc(MEMORY[0x1E6974180]);
  iosurface = self->_iosurface;
  label = [(IOGPUMetalResource *)self label];

  return [v4 initWithIOSurface:iosurface label:label];
}

+ (void)initNewTextureDataWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args
{
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  descriptorPrivate = [descriptor descriptorPrivate];
  if (*(descriptorPrivate + 72))
  {
    +[IOGPUMetalTexture initNewTextureDataWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:];
  }

  v11 = (*(descriptorPrivate + 112) & 0xFLL) == 1;
  args->var0.var0 = 0;
  args->var0.var1 = v11 << 10;
  v12 = *(descriptorPrivate + 24);
  args->var0.var2 = *(descriptorPrivate + 16);
  v13 = *descriptorPrivate;
  args->var0.var3 = v12;
  args->var0.var11 = *(descriptorPrivate + 144);
  if (v13 == 6)
  {
    args->var0.var4 = 6 * *(descriptorPrivate + 56);
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *(descriptorPrivate + 56);
    }

    else
    {
      if (v13 == 1)
      {
        args->var0.var3 = *(descriptorPrivate + 56);
        goto LABEL_11;
      }

      v14 = *(descriptorPrivate + 32);
    }

    args->var0.var4 = v14;
  }

LABEL_11:
  if ((v13 - 5) >= 2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 6;
  }

  args->var0.var6 = v15;
  args->var0.var7 = *(descriptorPrivate + 40);
  args->var0.var9 = 1;
  MTLPixelFormatGetInfoForDevice();
  args->var0.var9 = 0;
  if (*(descriptorPrivate + 64))
  {
    v16 = 64;
  }

  else
  {
    v16 = 0;
  }

  args->var0.var10 = v16;
  *&args->var0.var16.var0.var0 = 0uLL;
  args->var0.var16.var0.var2 = size;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  descriptorPrivate = [descriptor descriptorPrivate];
  v22 = *descriptorPrivate;
  [IOGPUMetalTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:size sysMemRowBytes:bytes vidMemSize:memSize vidMemRowBytes:rowBytes args:args];
  v18 = [(IOGPUMetalResource *)self initWithDevice:device options:*(descriptorPrivate + 112) args:args argsSize:argsSize];
  v19 = v18;
  if (v18)
  {
    v18->_textureType = *descriptorPrivate;
    v20 = 6;
    v18->_width = *(descriptorPrivate + 16);
    if (v22 - 5 >= 2)
    {
      v20 = 1;
    }

    v18->_height = *(descriptorPrivate + 24);
    v18->_depth = *(descriptorPrivate + 32);
    v18->_mipmapLevelCount = *(descriptorPrivate + 40);
    v18->_sampleCount = *(descriptorPrivate + 48);
    v18->_arrayLength = *(descriptorPrivate + 56);
    v18->_numFaces = v20;
    v18->_pixelFormat = *(descriptorPrivate + 8);
    v18->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:];
    }

    v18->_rotation = 0;
    v18->_swizzle = *(descriptorPrivate + 84);
    v18->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v18->_isCompressed = 0;
    v18->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemSize:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:];
    }

    v18->_framebufferOnly = 0;
    v18->_isDrawable = *(descriptorPrivate + 81);
    v18->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v18->_placementSparsePageSize = *(descriptorPrivate + 184);
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([device deviceRef], 8, 15, *&v18->super._anon_50[48], v18->_height | (v18->_width << 32), ((v18->_placementSparsePageSize != 0) << 52) | ((v18->_textureType & 0xF) << 48) | (v18->_pixelFormat << 32) | objc_msgSend(device, "registryID"), 0);
    }
  }

  return v19;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemPointer:(void *)pointer sysMemSize:(unint64_t)size sysMemLength:(unint64_t)length sysMemRowBytes:(unint64_t)bytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 deallocator:(id)aBlock
{
  descriptorPrivate = [descriptor descriptorPrivate];
  v18 = *(descriptorPrivate + 112);
  v24 = *descriptorPrivate;
  [IOGPUMetalTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:size sysMemRowBytes:bytes vidMemSize:0 vidMemRowBytes:0 args:args];
  args->var0.var0 = 128;
  args->var0.var16.var0.var0 = pointer;
  args->var0.var16.var0.var1 = pointer;
  v19 = [(IOGPUMetalResource *)self initWithDevice:device options:v18 args:args argsSize:argsSize];
  v20 = v19;
  if (v19)
  {
    v19->_textureType = *descriptorPrivate;
    v21 = 6;
    v19->_width = *(descriptorPrivate + 16);
    if (v24 - 5 >= 2)
    {
      v21 = 1;
    }

    v19->_height = *(descriptorPrivate + 24);
    v19->_depth = *(descriptorPrivate + 32);
    v19->_mipmapLevelCount = *(descriptorPrivate + 40);
    v19->_sampleCount = *(descriptorPrivate + 48);
    v19->_arrayLength = *(descriptorPrivate + 56);
    v19->_numFaces = v21;
    v19->_pixelFormat = *(descriptorPrivate + 8);
    v19->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    v19->_rotation = 0;
    v19->_swizzle = *(descriptorPrivate + 84);
    v19->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v19->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    v19->_framebufferOnly = 0;
    v19->_isDrawable = *(descriptorPrivate + 81);
    if (aBlock)
    {
      v19->_length = length;
      v19->_pointer = pointer;
      v19->_deallocator = _Block_copy(aBlock);
    }

    v20->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    if (*(descriptorPrivate + 184))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:sysMemPointer:sysMemSize:sysMemLength:sysMemRowBytes:args:argsSize:deallocator:];
    }

    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([device deviceRef], 8, 15, *&v20->super._anon_50[48], v20->_height | (v20->_width << 32), ((v20->_textureType & 0xF) << 48) | (v20->_pixelFormat << 32) | objc_msgSend(device, "registryID"), 0);
    }
  }

  return v20;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unsigned int)plane field:(unsigned int)field args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size
{
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  descriptorPrivate = [descriptor descriptorPrivate];
  v14 = descriptorPrivate;
  if (*(descriptorPrivate + 72) >= 5uLL)
  {
    v30 = *(descriptorPrivate + 72);
    MTLReportFailure();
  }

  v15 = IOSurfaceCopyValue(iosurface, *MEMORY[0x1E696CEF8]);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E69743D0]] != 0;
  }

  else
  {
    v17 = 0;
  }

  MTLPixelFormatGetInfoForDevice();
  v18 = *(v14 + 72);
  deviceCopy = device;
  if (v18 <= 4 && ((1 << v18) & 0x1A) != 0)
  {
    v19 = (v14 + 16);
    v20 = (v14 + 24);
  }

  else
  {
    v20 = (v14 + 24);
    v19 = (v14 + 16);
  }

  if (!iosurface)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
  }

  if (IOSurfaceGetPlaneCount(iosurface) == 0 && !v17)
  {
    IOSurfaceGetBaseAddress(iosurface);
    IOSurfaceGetBytesPerRow(iosurface);
    _mtlValidateStrideTextureParameters();
    if (plane)
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    [descriptor pixelFormat];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    IOSurfaceGetBytesPerRow(iosurface);
    IOSurfaceGetAllocSize(iosurface);
    IOSurfaceGetBytesPerRow(iosurface);
    IOSurfaceGetHeight(iosurface);
    IOSurfaceGetElementHeight(iosurface);
    if (!IOSurfaceAllowsPixelSizeCasting(iosurface) && IOSurfaceGetBytesPerElement(iosurface))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }
  }

  v21 = *v14;
  if ((*v14 - 7) < 0xFFFFFFFFFFFFFFFELL)
  {
    v22 = 1;
  }

  else
  {
    v22 = 6;
  }

  v23 = (*v14 - 7) < 0xFFFFFFFFFFFFFFFELL || v17;
  if ((v23 & 1) == 0)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
  }

  *&args->var0.var0 = 130;
  args->var0.var2 = *v19;
  args->var0.var3 = *v20;
  if (v21 == 6)
  {
    args->var0.var4 = 6 * *(v14 + 56);
    v24 = deviceCopy;
  }

  else
  {
    v24 = deviceCopy;
    if (v21 == 3)
    {
      v25 = *(v14 + 56);
    }

    else
    {
      if (v21 == 1)
      {
        args->var0.var3 = *(v14 + 56);
        goto LABEL_33;
      }

      v25 = *(v14 + 32);
    }

    args->var0.var4 = v25;
  }

LABEL_33:
  args->var0.var6 = v22;
  args->var0.var7 = *(v14 + 40);
  args->var0.var9 = 0;
  args->var0.var10 = 0;
  args->var0.var16.var1.var0 = IOSurfaceGetID(iosurface);
  args->var0.var16.var1.var1 = plane;
  args->var0.var16.var0.var1 = field;
  v26 = [(IOGPUMetalResource *)self initWithDevice:v24 options:*(v14 + 112) args:args argsSize:size];
  v27 = v26;
  if (v26)
  {
    v26->_textureType = *v14;
    v26->_width = *(v14 + 16);
    v26->_height = *(v14 + 24);
    v26->_depth = *(v14 + 32);
    v26->_mipmapLevelCount = *(v14 + 40);
    v26->_sampleCount = *(v14 + 48);
    v26->_arrayLength = *(v14 + 56);
    v26->_numFaces = v22;
    v26->_pixelFormat = *(v14 + 8);
    v26->_usage = *(v14 + 192);
    v28 = *(v14 + 72);
    if (v28 && (*(v14 + 80) & 1) == 0)
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    v26->_rotation = v28;
    v26->_swizzle = *(v14 + 84);
    v26->_writeSwizzleEnabled = *(v14 + 88);
    v26->_shareable = v17;
    if (v17)
    {
      *&v26->super._anon_50[40] = IOSurfaceCopyValue(iosurface, *MEMORY[0x1E696CF98]);
    }

    v27->_framebufferOnly = *(v14 + 80);
    CFRetain(iosurface);
    v27->_iosurface = iosurface;
    v27->_iosurfacePlane = plane;
    v27->_isDrawable = *(v14 + 81);
    v27->super._res.info.iosurface = iosurface;
    *(&v27->super._res.var1 + 3) = field;
    *&v27->super._res.var0 = IOSurfaceGetAllocSize(iosurface) & 0xFFFFFFFFFFFFFFLL | (*(&v27->super._res.var1 + 3) << 56);
    v27->_allowGPUOptimizedContents = *(v14 + 128);
    if (*(v14 + 184))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:];
    }

    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([v24 deviceRef], 8, 15, *&v27->super._anon_50[48], v27->_height | (v27->_width << 32), ((v27->_textureType & 0xF) << 48) | (v27->_pixelFormat << 32) | objc_msgSend(v24, "registryID"), 0);
    }
  }

  return v27;
}

- (IOGPUMetalTexture)initWithDevice:(id)device descriptor:(id)descriptor placementSparseBytes:(unint64_t)bytes placementSparsePageSize:(int64_t)size placementSparseMetaDataBytes:(unint64_t)dataBytes placementSparseResidencyBytes:(unint64_t)residencyBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  descriptorPrivate = [descriptor descriptorPrivate];
  if ((*descriptorPrivate - 5) >= 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = 6;
  }

  [IOGPUMetalTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:0 sysMemRowBytes:0 vidMemSize:0 vidMemRowBytes:0 args:args];
  if (*(descriptorPrivate + 208) != 2)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
  }

  v19 = [device sparseTileSizeInBytesForSparsePageSize:size];
  args->var0.var0 = 64;
  args->var0.var16.var0.var3.var0 = v19;
  v20 = (bytes + v19 - 1) & -v19;
  args->var0.var16.var0.var0 = v20;
  if (v20 < bytes)
  {
    [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
  }

  args->var0.var16.var0.var1 = dataBytes;
  args->var0.var16.var0.var2 = residencyBytes;
  v21 = [(IOGPUMetalResource *)self initWithDevice:device options:*(descriptorPrivate + 112) args:args argsSize:argsSize];
  v22 = v21;
  if (v21)
  {
    v21->_textureType = *descriptorPrivate;
    v21->_width = *(descriptorPrivate + 16);
    v21->_height = *(descriptorPrivate + 24);
    v21->_depth = *(descriptorPrivate + 32);
    v21->_mipmapLevelCount = *(descriptorPrivate + 40);
    v21->_sampleCount = *(descriptorPrivate + 48);
    v21->_arrayLength = *(descriptorPrivate + 56);
    v21->_numFaces = v18;
    v21->_pixelFormat = *(descriptorPrivate + 8);
    v21->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
    }

    v21->_rotation = 0;
    v21->_swizzle = *(descriptorPrivate + 84);
    v21->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v21->_isCompressed = 0;
    v21->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithDevice:descriptor:placementSparseBytes:placementSparsePageSize:placementSparseMetaDataBytes:placementSparseResidencyBytes:args:argsSize:];
    }

    v21->_framebufferOnly = 0;
    v21->_isDrawable = *(descriptorPrivate + 81);
    v21->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v21->_placementSparsePageSize = *(descriptorPrivate + 184);
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([device deviceRef], 8, 15, *&v21->super._anon_50[48], v21->_height | (v21->_width << 32), (v21->_pixelFormat << 32) & 0xFFF0FFFF00000000 | ((v21->_textureType & 0xF) << 48) | objc_msgSend(device, "registryID") | 0x10000000000000, 0);
    }
  }

  return v22;
}

- (IOGPUMetalTexture)initWithTextureInternal:(id)internal pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle compressedView:(BOOL)view
{
  if (!internal)
  {
    [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
  }

  length = levels.length;
  location = levels.location;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
  }

  v15 = MTLTextureSwizzleChannelsToKey();
  _mtlValidateMTLTextureSwizzleKey();
  [internal device];
  LOBYTE(v25) = view;
  _mtlValidateArgumentsForTextureViewOnDevice();
  v16 = [(IOGPUMetalResource *)self initWithResource:internal, v25];
  if (v16)
  {
    v16->_parentTexture = internal;
    v16->_buffer = [internal buffer];
    v16->_parentRelativeLevel = location;
    v16->_parentRelativeSlice = slices.location;
    if (v16->_buffer)
    {
      if (length != 1)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }

      if (slices.length != 1)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }
    }

    v16->_bufferOffset = [internal bufferOffset];
    v16->_bufferBytesPerRow = [internal bufferBytesPerRow];
    v16->_textureType = type;
    v17 = *(internal + 50) >> location;
    if (v17 <= 1)
    {
      v17 = 1;
    }

    v16->_width = v17;
    v18 = *(internal + 51) >> location;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    v16->_height = v18;
    v19 = *(internal + 52) >> location;
    if (v19 <= 1)
    {
      v19 = 1;
    }

    v16->_depth = v19;
    v16->_pixelFormat = format;
    v16->_usage = *(internal + 48);
    v20 = 6;
    if (type - 5 >= 2)
    {
      v20 = 1;
    }

    v16->_numFaces = v20;
    v16->_arrayLength = slices.length / v20;
    v16->_mipmapLevelCount = length;
    v16->_sampleCount = *(internal + 54);
    v16->_rotation = *(internal + 49);
    v16->_swizzle = v15;
    v16->_writeSwizzleEnabled = *(internal + 340);
    if ([objc_msgSend(internal "device")] && v16->_swizzle != 84148994)
    {
      if (!v16->_usage)
      {
        [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
      }

      [internal device];
      v16->_usage &= ~MTLGetDisallowedTextureUsagesWhenSwizzling();
      _mtlValidateTextureUsage();
    }

    v16->_shareable = 0;
    v16->_framebufferOnly = *(internal + 457);
    v16->_iosurface = *(internal + 44);
    v16->_iosurfacePlane = *(internal + 45);
    v16->_isDrawable = *(internal + 458);
    v16->_allowGPUOptimizedContents = *(internal + 512);
    v21 = *(internal + 27);
    v22 = *(internal + 28);
    *&v16->super._anon_50[136] = v21;
    *&v16->super._anon_50[144] = v22;
    *&v16->super._anon_50[152] = *(internal + 232);
    v16->super._anon_50[168] = *(internal + 248);
    *&v16->super._anon_50[80] = *(internal + 20);
    *&v16->super._anon_50[24] = *(internal + 13);
    iosurface = v16->_iosurface;
    if (iosurface != v16->super._res.info.iosurface)
    {
      [IOGPUMetalTexture initWithTextureInternal:pixelFormat:textureType:levels:slices:swizzle:compressedView:];
    }

    if (iosurface)
    {
      CFRetain(iosurface);
    }

    v16->_placementSparsePageSize = *(internal + 65);
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([*&v16->super._anon_50[32] deviceRef], 8, 15, *&v16->super._anon_50[48], v16->_height | (v16->_width << 32), ((v16->_textureType & 0xF) << 48) | (v16->_pixelFormat << 32) | objc_msgSend(*&v16->super._anon_50[32], "registryID"), *&v16->_parentTexture->super._anon_50[48]);
    }
  }

  return v16;
}

- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0 isStrideTexture:(BOOL)self1
{
  if (!buffer)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
  }

  sizeCopy = size;
  textureCopy = texture;
  device = [buffer device];
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  args->var0.var16.var0.var3.var1 = 0;
  descriptorPrivate = [descriptor descriptorPrivate];
  v20 = descriptorPrivate;
  v21 = *descriptorPrivate;
  if ((*descriptorPrivate - 5) >= 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = 6;
  }

  if (texture)
  {
    _mtlValidateStrideTextureParameters();
    v23 = [(IOGPUMetalResource *)self initWithResource:buffer];
    v24 = v23;
    if (!v23)
    {
      return v24;
    }

    *&v23->super._anon_50[24] += offset;
    goto LABEL_27;
  }

  if (descriptorPrivate[9])
  {
    v37 = descriptorPrivate[9];
    MTLReportFailure();
    v21 = *v20;
  }

  args->var0.var0 = (v20[26] != 2) << 7;
  args->var0.var1 = 0;
  v25 = v20[3];
  args->var0.var2 = v20[2];
  args->var0.var3 = v25;
  switch(v21)
  {
    case 6:
      LODWORD(v26) = *(v20 + 14) * v22;
      break;
    case 3:
      v26 = v20[7];
      break;
    case 1:
      args->var0.var3 = v20[7];
      goto LABEL_19;
    default:
      v26 = v20[4];
      break;
  }

  args->var0.var4 = v26;
LABEL_19:
  args->var0.var6 = v22;
  args->var0.var7 = v20[5];
  args->var0.var9 = 1;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  MTLPixelFormatGetInfoForDevice();
  args->var0.var9 = 0;
  if (*(v20 + 64))
  {
    v27 = 64;
  }

  else
  {
    v27 = 0;
  }

  args->var0.var10 = v27;
  v28 = *(buffer + 20);
  args->var0.var16.var0.var0 = v28 + offset;
  args->var0.var16.var0.var1 = v28;
  args->var0.var16.var0.var2 = [buffer resourceSize];
  v29 = *(buffer + 20);
  if (v29)
  {
    args->var0.var16.var0.var3.var0 = v29;
    args->var0.var10 |= 0x800u;
  }

  v30 = *(buffer + 23) | (16 * *(buffer + 22));
  v31 = *(buffer + 21) & 0x300;
  v39.receiver = self;
  v39.super_class = IOGPUMetalTexture;
  v32 = [(IOGPUMetalResource *)&v39 initWithDevice:device options:v30 | v31 args:args argsSize:argsSize];
  v24 = v32;
  if (v32)
  {
    v32->super._anon_50[128] = 0;
    if (!sizeCopy)
    {
      bufferCopy = 0;
      textureCopy = 0;
      goto LABEL_28;
    }

    textureCopy = 0;
LABEL_27:
    bufferCopy = buffer;
LABEL_28:
    v24->_buffer = bufferCopy;
    v24->_bufferOffset = offset;
    v24->_bufferBytesPerRow = bytes;
    v24->_textureType = *v20;
    v24->_width = v20[2];
    v24->_height = v20[3];
    v24->_depth = v20[4];
    v24->_mipmapLevelCount = v20[5];
    v24->_sampleCount = v20[6];
    v24->_arrayLength = v20[7];
    v24->_numFaces = v22;
    v24->_pixelFormat = v20[1];
    v24->_usage = v20[24];
    if (v20[9])
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
    }

    v24->_rotation = 0;
    v24->_swizzle = *(v20 + 21);
    v24->_writeSwizzleEnabled = *(v20 + 88);
    v24->_shareable = 0;
    if (*(v20 + 80))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:];
    }

    v24->_framebufferOnly = 0;
    v24->_isDrawable = *(v20 + 81);
    v24->_allowGPUOptimizedContents = *(v20 + 128);
    v34 = *(buffer + 27);
    v35 = *(buffer + 28);
    *&v24->super._anon_50[136] = v34;
    *&v24->super._anon_50[144] = v35;
    *&v24->super._anon_50[152] = *(buffer + 232);
    v24->super._anon_50[168] = *(buffer + 248);
    if (textureCopy && v34)
    {
      *&v24->super._anon_50[24] = *(buffer + 13) + offset;
    }

    *&v24->super._anon_50[80] = *(buffer + 20) + offset;
    v24->_placementSparsePageSize = [buffer placementSparsePageSize];
  }

  return v24;
}

- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  BYTE4(v11) = 1;
  LODWORD(v11) = argsSize;
  return [(IOGPUMetalTexture *)self initWithBuffer:buffer descriptor:descriptor sysMemOffset:offset sysMemRowBytes:bytes vidMemSize:size vidMemRowBytes:rowBytes args:args argsSize:v11 isStrideTexture:?];
}

- (IOGPUMetalTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  if (!buffer)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
  }

  [buffer device];
  descriptorPrivate = [descriptor descriptorPrivate];
  _mtlValidateStrideTextureParameters();
  v12 = [(IOGPUMetalResource *)self initWithResource:buffer];
  if (v12)
  {
    v12->_buffer = buffer;
    v12->_bufferOffset = offset;
    v12->_bufferBytesPerRow = row;
    v12->_textureType = *descriptorPrivate;
    v12->_width = *(descriptorPrivate + 16);
    v12->_height = *(descriptorPrivate + 24);
    v12->_depth = *(descriptorPrivate + 32);
    v12->_mipmapLevelCount = *(descriptorPrivate + 40);
    v12->_sampleCount = *(descriptorPrivate + 48);
    v12->_arrayLength = *(descriptorPrivate + 56);
    v13 = 6;
    if ((*descriptorPrivate - 5) >= 2)
    {
      v13 = 1;
    }

    v12->_numFaces = v13;
    v12->_pixelFormat = *(descriptorPrivate + 8);
    v12->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
    }

    v12->_rotation = 0;
    v12->_swizzle = *(descriptorPrivate + 84);
    v12->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v12->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithBuffer:descriptor:offset:bytesPerRow:];
    }

    v12->_framebufferOnly = 0;
    v12->_isDrawable = *(descriptorPrivate + 81);
    v12->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v14 = *(buffer + 27);
    v15 = *(buffer + 28);
    *&v12->super._anon_50[136] = v14;
    *&v12->super._anon_50[144] = v15;
    *&v12->super._anon_50[152] = *(buffer + 232);
    v12->super._anon_50[168] = *(buffer + 248);
    if (v14)
    {
      v16 = *(buffer + 13);
    }

    else
    {
      v16 = *&v12->super._anon_50[24];
    }

    *&v12->super._anon_50[24] = v16 + offset;
    *&v12->super._anon_50[80] = *(buffer + 20) + offset;
    v12->_placementSparsePageSize = [buffer placementSparsePageSize];
  }

  return v12;
}

- (IOGPUMetalTexture)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length device:(id)device descriptor:(id)descriptor
{
  if (!heap)
  {
    [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
  }

  descriptorPrivate = [descriptor descriptorPrivate];
  if (resource)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16 = [(IOGPUMetalResource *)self initWithResource:resource];
  }

  else
  {
    v16 = [(IOGPUMetalResource *)self initMemoryless:device descriptor:descriptor];
  }

  v17 = v16;
  if (v16)
  {
    v16->_textureType = *descriptorPrivate;
    v16->_width = *(descriptorPrivate + 16);
    v16->_height = *(descriptorPrivate + 24);
    v16->_depth = *(descriptorPrivate + 32);
    v16->_mipmapLevelCount = *(descriptorPrivate + 40);
    v16->_sampleCount = *(descriptorPrivate + 48);
    v16->_arrayLength = *(descriptorPrivate + 56);
    v18 = 6;
    if ((*descriptorPrivate - 5) >= 2)
    {
      v18 = 1;
    }

    v16->_numFaces = v18;
    v16->_pixelFormat = *(descriptorPrivate + 8);
    v16->_usage = *(descriptorPrivate + 192);
    if (*(descriptorPrivate + 72))
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16->_rotation = 0;
    v16->_swizzle = *(descriptorPrivate + 84);
    v16->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v16->_shareable = 0;
    if (*(descriptorPrivate + 80))
    {
      [IOGPUMetalTexture initWithHeap:resource:offset:length:device:descriptor:];
    }

    v16->_framebufferOnly = 0;
    v16->_isDrawable = *(descriptorPrivate + 81);
    v16->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    *&v16->super._anon_50[136] = heap;
    *&v17->super._anon_50[144] = resource;
    if (resource)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = 0;
    }

    *&v17->super._anon_50[152] = offset;
    *&v17->super._anon_50[160] = lengthCopy;
    v17->super._anon_50[168] = 0;
    if (![heap type])
    {
      v17->super._anon_50[168] = 1;
    }

    if (resource)
    {
      *&v17->super._anon_50[80] = *(resource + 20) + offset;
      *&v17->super._anon_50[24] += offset;
    }
  }

  return v17;
}

- (IOGPUMetalTexture)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length descriptor:(id)descriptor sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)self0 vidMemRowBytes:(unint64_t)self1 args:(IOGPUNewResourceArgs *)self2 argsSize:(unsigned int)self3
{
  BYTE4(v19) = 0;
  LODWORD(v19) = argsSize;
  result = [(IOGPUMetalTexture *)self initWithBuffer:buffer descriptor:descriptor sysMemOffset:offset sysMemRowBytes:bytes vidMemSize:size vidMemRowBytes:rowBytes args:args argsSize:v19 isStrideTexture:?];
  if (result)
  {
    result->_rootResourceIsSuballocatedBuffer = 1;
    result->_primaryBuffer = buffer;
    result->_primaryHeapIndex = index;
    result->_primaryBufferIndex = bufferIndex;
    result->_primaryBufferOffset = offset;
    result->_length = length;
  }

  return result;
}

- (void)copyFromSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size toPixels:(void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes
{
  *v11 = origin->var2;
  v9 = *&origin->var0;
  *&v11[8] = *size;
  v10[0] = v9;
  v10[1] = *v11;
  v10[2] = *&v11[16];
  v10[3] = v9;
  [(IOGPUMetalTexture *)self getBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes fromRegion:v10 mipmapLevel:level slice:slice];
}

- (void)copyFromPixels:(const void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes toSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size
{
  *v11 = origin->var2;
  v9 = *&origin->var0;
  *&v11[8] = *size;
  v10[0] = v9;
  v10[1] = *v11;
  v10[2] = *&v11[16];
  v10[3] = v9;
  [(IOGPUMetalTexture *)self replaceRegion:v10 mipmapLevel:level slice:slice withBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes];
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row
{
  v6 = *&region->var0.var2;
  v7[0] = *&region->var0.var0;
  v7[1] = v6;
  v7[2] = *&region->var1.var1;
  [(IOGPUMetalTexture *)self replaceRegion:v7 mipmapLevel:level slice:0 withBytes:bytes bytesPerRow:row bytesPerImage:0];
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(IOGPUMetalResource *)self annotateResource:Mutable];
  if (self->_framebufferOnly)
  {
    v4 = @"Renderbuffer";
  }

  else
  {
    v4 = @"Texture";
  }

  CFDictionaryAddValue(Mutable, @"Type", v4);
  v5 = objc_autoreleasePoolPush();
  v6 = CFStringCreateMutable(0, 512);
  CFStringAppendFormat(v6, 0, @"%s", "IOGPUMetalTexture");
  textureType = self->_textureType;
  if (textureType >= 0xA)
  {
    goto LABEL_59;
  }

  CFStringAppendFormat(v6, 0, @", %s", off_1E8362D28[textureType]);
  v8 = self->_textureType;
  if (v8 <= 6)
  {
    if ((v8 - 2) < 5)
    {
      CFStringAppendFormat(v6, 0, @", %ld x %ld", self->_width, self->_height);
      goto LABEL_17;
    }

    if (v8 < 2)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

  switch(v8)
  {
    case 7:
      depth = self->_depth;
      break;
    case 8:
      depth = self->_arrayLength;
      break;
    case 9:
LABEL_13:
      CFStringAppendFormat(v6, 0, @", %ld", self->_width);
      goto LABEL_17;
    default:
LABEL_59:
      v25 = MTLReleaseAssertionFailure();
      return [(IOGPUMetalTexture *)v25 isSparse];
  }

  CFStringAppendFormat(v6, 0, @", %ld x %ld x %ld", self->_width, self->_height, depth);
LABEL_17:
  Name = MTLPixelFormatGetName();
  CFStringAppendFormat(v6, 0, @", %s", Name + 14);
  if (self->_mipmapLevelCount >= 2)
  {
    CFStringAppendFormat(v6, 0, @", %d mipmaps", self->_mipmapLevelCount);
  }

  if (self->_arrayLength >= 2)
  {
    if (self->_textureType - 2 >= 6)
    {
      p_depth = &self->_depth;
    }

    else
    {
      p_depth = &self->_height;
    }

    CFStringAppendFormat(v6, 0, @", %d array slices", *p_depth);
  }

  if (self->_sampleCount >= 2)
  {
    CFStringAppendFormat(v6, 0, @", %d samples", self->_sampleCount);
  }

  string = [MEMORY[0x1E696AD60] string];
  v13 = string;
  usage = self->_usage;
  if (!usage)
  {
    [string appendString:@" none"];
    usage = self->_usage;
  }

  if ((~usage & 3) == 0)
  {
    v15 = @" srw";
LABEL_34:
    [v13 appendString:v15];
    goto LABEL_35;
  }

  if (usage)
  {
    [v13 appendString:@" sr"];
    usage = self->_usage;
  }

  if ((usage & 2) != 0)
  {
    v15 = @" sw";
    goto LABEL_34;
  }

LABEL_35:
  v16 = self->_usage;
  if ((v16 & 4) != 0)
  {
    [v13 appendString:@" rt"];
    v16 = self->_usage;
    if ((v16 & 0x10) == 0)
    {
LABEL_37:
      if ((v16 & 0x4000) == 0)
      {
        goto LABEL_38;
      }

LABEL_57:
      [v13 appendString:@" nca"];
      v16 = self->_usage;
      if ((v16 & 0x10000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v16 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  [v13 appendString:@" pfv"];
  v16 = self->_usage;
  if ((v16 & 0x4000) != 0)
  {
    goto LABEL_57;
  }

LABEL_38:
  if ((v16 & 0x10000) != 0)
  {
LABEL_39:
    [v13 appendString:@" bwo"];
    v16 = self->_usage;
  }

LABEL_40:
  CFStringAppendFormat(v6, 0, @", usage (%05x)%@", v16, v13);
  CFStringAppendFormat(v6, 0, @", handle (%05llx)", [(IOGPUMetalTexture *)self gpuResourceID]);
  if (self->_length)
  {
    CFStringAppendFormat(v6, 0, @", size %lluB", self->_length);
  }

  if (*&self->super._anon_50[136])
  {
    CFStringAppendFormat(v6, 0, @", heap (+%llx)", *&self->super._anon_50[152]);
  }

  if (self->_primaryBuffer)
  {
    CFStringAppendFormat(v6, 0, @", suballoc (+%llx)", self->_primaryBufferOffset);
  }

  swizzle = self->_swizzle;
  if (swizzle != 84148994)
  {
    CFStringAppendFormat(v6, 0, @", swizzle %c%c%c%c", copyAnnotations_kLetter[swizzle % 6u], copyAnnotations_kLetter[BYTE1(swizzle) % 6u], copyAnnotations_kLetter[BYTE2(swizzle) % 6u], copyAnnotations_kLetter[(HIBYTE(swizzle) - 6 * ((171 * HIBYTE(swizzle)) >> 10))]);
  }

  parentTexture = self->_parentTexture;
  if (parentTexture)
  {
    CFStringAppendFormat(v6, 0, @", view (parent %05llx, slice %d, level %d)", [(IOGPUMetalTexture *)parentTexture gpuResourceID], self->_parentRelativeSlice, self->_parentRelativeLevel);
  }

  buffer = self->_buffer;
  if (buffer)
  {
    CFStringAppendFormat(v6, 0, @", buffer (parent %012llx, offset %lluB, stride %lluB)", [(IOGPUMetalResource *)buffer gpuAddress], self->_bufferOffset, self->_bufferBytesPerRow);
  }

  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  if (retainedLabel)
  {
    v21 = retainedLabel;
    CFStringAppendFormat(v6, 0, @", %s", [retainedLabel UTF8String]);
  }

  CFDictionaryAddValue(Mutable, @"Description", v6);
  CFRelease(v6);
  objc_autoreleasePoolPop(v5);
  v22 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v23 = [(IOGPUMetalResource *)self copyAnnotationDictionary:*&self->super._anon_50[8] obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
  CFArrayAppendValue(v22, v23);
  CFRelease(v23);
  CFRelease(Mutable);
  return v22;
}

- (BOOL)isSparse
{
  heap = [(IOGPUMetalResource *)self heap];
  if (heap)
  {
    LOBYTE(heap) = [(MTLHeap *)heap type]== 2;
  }

  return heap;
}

- (int)setOwnerWithIdentity:(unsigned int)identity
{
  if (self->_iosurface)
  {
    iosurface = self->_iosurface;

    return MEMORY[0x1EEDC89F0](iosurface, *&identity, 4, 0);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = IOGPUMetalTexture;
    return [(IOGPUMetalResource *)&v7 setOwnerWithIdentity:*&identity];
  }
}

- (void)emitResourceInfoTraceEvent
{
  if (*&self->super._anon_50[32])
  {
    buffer = self->_buffer;
    if (!buffer)
    {
      v3 = *&self->super._anon_50[136];
      if (v3)
      {
        buffer = *(v3 + 56);
      }

      else
      {
        buffer = 0;
      }
    }

    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent(0, 8, 44, *&self->super._anon_50[48], *&self->super._res.var0 & 0xFFFFFFFFFFFFFFLL, 2, buffer);
    }
  }
}

@end