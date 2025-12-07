@interface MTLIOAccelTexture
+ (void)initNewTextureDataWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args;
- (BOOL)isAliasable;
- (BOOL)isSparse;
- (MTLIOAccelTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row;
- (MTLIOAccelTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0;
- (MTLIOAccelTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0 isStrideTexture:(BOOL)self1;
- (MTLIOAccelTexture)initWithDevice:(id)device descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unsigned int)plane field:(unsigned int)field args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)size;
- (MTLIOAccelTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemPointer:(void *)pointer sysMemSize:(unint64_t)size sysMemLength:(unint64_t)length sysMemRowBytes:(unint64_t)bytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0 deallocator:(id)aBlock;
- (MTLIOAccelTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0;
- (MTLIOAccelTexture)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length device:(id)device descriptor:(id)descriptor;
- (MTLIOAccelTexture)initWithMasterBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length descriptor:(id)descriptor sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)self0 vidMemRowBytes:(unint64_t)self1 args:(IOAccelNewResourceArgs *)self2 argsSize:(unsigned int)self3;
- (MTLIOAccelTexture)initWithTextureInternal:(id)internal pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle compressedView:(BOOL)view;
- (MTLResource)rootResource;
- (__CFArray)copyAnnotations;
- (__IOSurface)iosurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newSharedTextureHandle;
- (int)setOwnerWithIdentity:(unsigned int)identity;
- (unint64_t)allocatedSize;
- (unint64_t)bufferBytesPerRow;
- (unint64_t)bufferOffset;
- (unint64_t)hazardTrackingMode;
- (void)copyFromPixels:(const void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes toSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size;
- (void)copyFromSlice:(unint64_t)slice mipmapLevel:(unint64_t)level origin:(id *)origin size:(id *)size toPixels:(void *)pixels rowBytes:(unint64_t)bytes imageBytes:(unint64_t)imageBytes;
- (void)dealloc;
- (void)makeAliasable;
- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row;
@end

@implementation MTLIOAccelTexture

- (id)formattedDescription:(unint64_t)description
{
  v18[84] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(MTLIOAccelResource *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = MTLIOAccelTexture;
  v8 = [(MTLIOAccelTexture *)&v17 description];
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
  v18[5] = MTLTextureTypeString(self->_textureType);
  v18[6] = v5;
  v18[7] = @"pixelFormat =";
  v18[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_pixelFormat)];
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
  v18[29] = MTLCPUCacheModeString(*&self->super._anon_50[112]);
  v18[30] = v5;
  v18[31] = @"storageMode =";
  v18[32] = MTLStorageModeString(*&self->super._anon_50[104]);
  v18[33] = v5;
  v18[34] = @"hazardTrackingMode =";
  v18[35] = MTLHazardTrackingModeString([(MTLIOAccelTexture *)self hazardTrackingMode]);
  v18[36] = v5;
  v18[37] = @"resourceOptions =";
  v18[38] = MTLResourceOptionsString([(MTLIOAccelResource *)self resourceOptions]);
  v18[39] = v5;
  v18[40] = @"usage =";
  v18[41] = MTLTextureUsageString(self->_usage);
  v18[42] = v5;
  v18[43] = @"shareable =";
  v18[44] = [MEMORY[0x1E696AD98] numberWithBool:self->_shareable];
  v18[45] = v5;
  v18[46] = @"framebufferOnly =";
  v18[47] = [MEMORY[0x1E696AD98] numberWithBool:self->_framebufferOnly];
  v18[48] = v5;
  v18[49] = @"purgeableState =";
  v18[50] = MTLPurgeableStateString(*&self->super._anon_50[128]);
  v18[51] = v5;
  v18[52] = @"swizzle =";
  v18[53] = MTLTextureSwizzleString(self->_swizzle);
  v18[54] = v5;
  v18[55] = @"isCompressed =";
  v18[56] = [MEMORY[0x1E696AD98] numberWithBool:self->_isCompressed];
  v18[57] = v5;
  v18[58] = @"parentTexture =";
  parentTexture = self->_parentTexture;
  if (parentTexture)
  {
    v11 = [(MTLIOAccelTexture *)parentTexture formattedDescription:description + 4];
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
  buffer = [(MTLIOAccelTexture *)self buffer];
  if (!buffer)
  {
    buffer = [MEMORY[0x1E695DFB0] null];
  }

  v18[68] = buffer;
  v18[69] = v5;
  v18[70] = @"bufferOffset =";
  v18[71] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTLIOAccelTexture bufferOffset](self, "bufferOffset")}];
  v18[72] = v5;
  v18[73] = @"bufferBytesPerRow =";
  v18[74] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MTLIOAccelTexture bufferBytesPerRow](self, "bufferBytesPerRow")}];
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

- (MTLResource)rootResource
{
  parentTexture = self->_parentTexture;
  if (!parentTexture)
  {
    return self->_buffer;
  }

  return parentTexture;
}

- (unint64_t)allocatedSize
{
  if (self->_masterBuffer)
  {
    return self->_length;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = MTLIOAccelTexture;
  return [(MTLIOAccelResource *)&v5 allocatedSize];
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
    return (self->super._anon_50[192] & 1) == 0;
  }
}

- (void)makeAliasable
{
  if (!self->_buffer && !self->_parentTexture)
  {
    v5 = v2;
    v6 = v3;
    v4.receiver = self;
    v4.super_class = MTLIOAccelTexture;
    [(MTLIOAccelResource *)&v4 makeAliasable];
  }
}

- (id)newSharedTextureHandle
{
  if (!self->_shareable)
  {
    return 0;
  }

  v4 = [MTLSharedTextureHandle alloc];
  iosurface = self->_iosurface;
  label = [(MTLIOAccelResource *)self label];

  return [(MTLSharedTextureHandle *)v4 initWithIOSurface:iosurface label:label];
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

- (void)dealloc
{
  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self->_pointer, self->_length);
    _Block_release(self->_deallocator);
    self->_deallocator = 0;
  }

  if (*&self->super._anon_50[160])
  {
    if ((*&self->super._anon_50[96] & 0xF0) != 0x30)
    {
      [(MTLIOAccelTexture *)self makeAliasable];
      if (!self->_buffer && !self->_parentTexture)
      {
        [*&self->super._anon_50[160] deallocHeapSubResource];
      }
    }
  }

  if (self->_rootResourceIsSuballocatedBuffer)
  {
    [*&self->super._anon_50[32] deallocBufferSubData:self->_masterBuffer heapIndex:self->_masterHeapIndex bufferIndex:self->_masterBufferIndex bufferOffset:self->_masterBufferOffset length:self->_length];
  }

  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  v5.receiver = self;
  v5.super_class = MTLIOAccelTexture;
  [(MTLIOAccelResource *)&v5 dealloc];
}

+ (void)initNewTextureDataWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args
{
  *(&args->var0.var16.var3 + 4) = 0;
  *&args->var0.var16.var0.var0 = 0u;
  *&args->var0.var16.var3.var2[1] = 0u;
  *&args->var0.var8 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  descriptorPrivate = [descriptor descriptorPrivate];
  v22 = *(descriptorPrivate + 72);
  if (v22)
  {
    [(MTLIOAccelTexture *)v22 initNewTextureDataWithDevice:v14 descriptor:v15 sysMemSize:v16 sysMemRowBytes:v17 vidMemSize:v18 vidMemRowBytes:v19 args:v20];
  }

  v23 = (*(descriptorPrivate + 112) & 0xFLL) == 1;
  v24 = *descriptorPrivate;
  args->var0.var0 = (memSize != 0) << 6;
  args->var0.var1 = v23 << 10;
  v25 = *(descriptorPrivate + 24);
  args->var0.var2 = *(descriptorPrivate + 16);
  args->var0.var3 = v25;
  args->var0.var13 = *(descriptorPrivate + 144);
  if (v24 == 6)
  {
    args->var0.var4 = 6 * *(descriptorPrivate + 56);
  }

  else
  {
    if (v24 == 3)
    {
      v26 = *(descriptorPrivate + 56);
    }

    else
    {
      if (v24 == 1)
      {
        args->var0.var3 = *(descriptorPrivate + 56);
        goto LABEL_11;
      }

      v26 = *(descriptorPrivate + 32);
    }

    args->var0.var4 = v26;
  }

LABEL_11:
  args->var0.var6 = rowBytes;
  args->var0.var7 = bytes;
  if ((v24 - 5) >= 2)
  {
    v27 = 1;
  }

  else
  {
    v27 = 6;
  }

  args->var0.var8 = v27;
  args->var0.var9 = *(descriptorPrivate + 40);
  args->var0.var11 = 1;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  MTLPixelFormatGetInfoForDevice(device, *(descriptorPrivate + 8), &v29);
  args->var0.var11 = BYTE8(v30);
  if (*(descriptorPrivate + 64))
  {
    v28 = 64;
  }

  else
  {
    v28 = 0;
  }

  args->var0.var12 = v28;
  *&args->var0.var16.var0.var0 = 0uLL;
  args->var0.var16.var0.var2 = memSize;
  args->var0.var16.var0.var3 = size;
}

- (MTLIOAccelTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemSize:(unint64_t)size sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)memSize vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0
{
  descriptorPrivate = [descriptor descriptorPrivate];
  v22 = *descriptorPrivate;
  [MTLIOAccelTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:size sysMemRowBytes:bytes vidMemSize:memSize vidMemRowBytes:rowBytes args:args];
  v18 = [(MTLIOAccelResource *)self initWithDevice:device options:*(descriptorPrivate + 112) args:args argsSize:argsSize];
  v19 = v18;
  if (v18)
  {
    v18->_textureType = *descriptorPrivate;
    v18->_width = *(descriptorPrivate + 16);
    v18->_height = *(descriptorPrivate + 24);
    v18->_depth = *(descriptorPrivate + 32);
    v18->_mipmapLevelCount = *(descriptorPrivate + 40);
    v20 = 6;
    v18->_sampleCount = *(descriptorPrivate + 48);
    if (v22 - 5 >= 2)
    {
      v20 = 1;
    }

    v18->_arrayLength = *(descriptorPrivate + 56);
    v18->_numFaces = v20;
    v18->_pixelFormat = *(descriptorPrivate + 8);
    v18->_usage = *(descriptorPrivate + 192);
    v18->_rotation = 0;
    v18->_swizzle = *(descriptorPrivate + 84);
    v18->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v18->_isCompressed = 0;
    v18->_shareable = 0;
    v18->_framebufferOnly = 0;
    v18->_isDrawable = *(descriptorPrivate + 81);
    v18->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    if (**MEMORY[0x1E69A8488])
    {
      [device deviceRef];
      [device registryID];
      IOAccelDeviceTraceEvent();
    }
  }

  return v19;
}

- (MTLIOAccelTexture)initWithDevice:(id)device descriptor:(id)descriptor sysMemPointer:(void *)pointer sysMemSize:(unint64_t)size sysMemLength:(unint64_t)length sysMemRowBytes:(unint64_t)bytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0 deallocator:(id)aBlock
{
  descriptorPrivate = [descriptor descriptorPrivate];
  v18 = *(descriptorPrivate + 112);
  v24 = *descriptorPrivate;
  [MTLIOAccelTexture initNewTextureDataWithDevice:device descriptor:descriptor sysMemSize:size sysMemRowBytes:bytes vidMemSize:0 vidMemRowBytes:0 args:args];
  args->var0.var0 = 128;
  args->var0.var16.var0.var0 = pointer;
  args->var0.var16.var0.var1 = pointer;
  v19 = [(MTLIOAccelResource *)self initWithDevice:device options:v18 args:args argsSize:argsSize];
  v20 = v19;
  if (v19)
  {
    v19->_textureType = *descriptorPrivate;
    v19->_width = *(descriptorPrivate + 16);
    v19->_height = *(descriptorPrivate + 24);
    v19->_depth = *(descriptorPrivate + 32);
    v19->_mipmapLevelCount = *(descriptorPrivate + 40);
    v21 = 6;
    v19->_sampleCount = *(descriptorPrivate + 48);
    if (v24 - 5 >= 2)
    {
      v21 = 1;
    }

    v19->_arrayLength = *(descriptorPrivate + 56);
    v19->_numFaces = v21;
    v19->_pixelFormat = *(descriptorPrivate + 8);
    v19->_usage = *(descriptorPrivate + 192);
    v19->_rotation = 0;
    v19->_swizzle = *(descriptorPrivate + 84);
    v19->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v19->_shareable = 0;
    v19->_framebufferOnly = 0;
    v19->_isDrawable = *(descriptorPrivate + 81);
    if (aBlock)
    {
      v19->_length = length;
      v19->_pointer = pointer;
      v19->_deallocator = _Block_copy(aBlock);
    }

    v20->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    if (**MEMORY[0x1E69A8488])
    {
      [device deviceRef];
      [device registryID];
      IOAccelDeviceTraceEvent();
    }
  }

  return v20;
}

- (MTLIOAccelTexture)initWithDevice:(id)device descriptor:(id)descriptor iosurface:(__IOSurface *)iosurface plane:(unsigned int)plane field:(unsigned int)field args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)size
{
  v10 = *&plane;
  *(&args->var0.var16.var3 + 4) = 0;
  *&args->var0.var16.var0.var0 = 0u;
  *&args->var0.var16.var3.var2[1] = 0u;
  *&args->var0.var8 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  descriptorPrivate = [descriptor descriptorPrivate];
  v19 = descriptorPrivate;
  if (*(descriptorPrivate + 72) >= 5uLL)
  {
    MTLReportFailure(0, "[MTLIOAccelTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:]", 630, @"IOSurface texture has invalid rotation %u", v15, v16, v17, v18, *(descriptorPrivate + 72));
  }

  v20 = IOSurfaceCopyValue(iosurface, *MEMORY[0x1E696CEF8]);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 objectForKeyedSubscript:kMetalRegistryID] != 0;
  }

  else
  {
    v22 = 0;
  }

  v89 = 0;
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  MTLPixelFormatGetInfoForDevice(device, *(v19 + 8), &v86);
  v31 = *(v19 + 72);
  if (v31 <= 4 && ((1 << v31) & 0x1A) != 0)
  {
    v32 = (v19 + 16);
    v33 = (v19 + 24);
  }

  else
  {
    v33 = (v19 + 16);
    v32 = (v19 + 24);
  }

  v34 = *v33;
  v35 = *v32;
  if (!iosurface)
  {
    [(MTLIOAccelTexture *)v23 initWithDevice:v24 descriptor:v25 iosurface:v26 plane:v27 field:v28 args:v29 argsSize:v30];
  }

  v77 = v22;
  if (IOSurfaceGetPlaneCount(iosurface) == 0 && !v22)
  {
    BaseAddress = IOSurfaceGetBaseAddress(iosurface);
    BytesPerRow = IOSurfaceGetBytesPerRow(iosurface);
    _mtlValidateStrideTextureParameters(device, descriptor, v34, BaseAddress, BytesPerRow, 1);
    if (v10)
    {
      [(MTLIOAccelTexture *)v10 initWithDevice:v38 descriptor:v39 iosurface:v40 plane:v41 field:v42 args:v43 argsSize:v44];
    }

    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
    memset(v81, 0, sizeof(v81));
    MTLGetTextureLevelInfoForDeviceWithOptions(device, [descriptor pixelFormat], v34, v35, 1uLL, 1, 0, 0, v81);
    v45 = v84;
    if (v45 > IOSurfaceGetBytesPerRow(iosurface))
    {
      MTLReportFailure(0, "[MTLIOAccelTexture initWithDevice:descriptor:iosurface:plane:field:args:argsSize:]", 682, @"Descriptor rowBytes (%lu) > IOSurface rowBytes (%lu)", v46, v47, v48, v49, v45);
    }

    v50 = *(v19 + 56) * *(&v82 + 1);
    Height = IOSurfaceGetHeight(iosurface);
    ElementHeight = IOSurfaceGetElementHeight(iosurface);
    if (v50 > ElementHeight * Height)
    {
      [(MTLIOAccelTexture *)ElementHeight initWithDevice:v53 descriptor:v54 iosurface:v55 plane:v56 field:v57 args:v58 argsSize:v59];
    }

    if (!IOSurfaceAllowsPixelSizeCasting(iosurface))
    {
      BytesPerElement = IOSurfaceGetBytesPerElement(iosurface);
      if (*(&v83 + 1) != BytesPerElement)
      {
        [(MTLIOAccelTexture *)BytesPerElement initWithDevice:v61 descriptor:v62 iosurface:v63 plane:v64 field:v65 args:v66 argsSize:v67];
      }
    }
  }

  deviceCopy = device;
  v68 = v10;
  v69 = *v19;
  if ((*v19 - 5) >= 2)
  {
    v70 = 1;
  }

  else
  {
    v70 = 6;
  }

  *&args->var0.var0 = 130;
  v71 = *(v19 + 24);
  args->var0.var2 = *(v19 + 16);
  args->var0.var3 = v71;
  if (v69 == 6)
  {
    args->var0.var4 = 6 * *(v19 + 56);
    fieldCopy2 = field;
    goto LABEL_33;
  }

  fieldCopy2 = field;
  if (v69 == 3)
  {
    v73 = *(v19 + 56);
LABEL_32:
    args->var0.var4 = v73;
    goto LABEL_33;
  }

  if (v69 != 1)
  {
    v73 = *(v19 + 32);
    goto LABEL_32;
  }

  args->var0.var3 = *(v19 + 56);
LABEL_33:
  args->var0.var6 = 0;
  args->var0.var7 = 0;
  args->var0.var8 = v70;
  args->var0.var9 = *(v19 + 40);
  args->var0.var11 = BYTE8(v87);
  args->var0.var12 = 0;
  args->var0.var16.var1.var0 = IOSurfaceGetID(iosurface);
  args->var0.var16.var1.var1 = v68;
  args->var0.var16.var2.var2 = fieldCopy2;
  args->var0.var16.var2.var3 = 0;
  v74 = [(MTLIOAccelResource *)self initWithDevice:deviceCopy options:*(v19 + 112) args:args argsSize:size];
  v75 = v74;
  if (v74)
  {
    v74->_textureType = *v19;
    v74->_width = *(v19 + 16);
    v74->_height = *(v19 + 24);
    v74->_depth = *(v19 + 32);
    v74->_mipmapLevelCount = *(v19 + 40);
    v74->_sampleCount = *(v19 + 48);
    v74->_arrayLength = *(v19 + 56);
    v74->_numFaces = v70;
    v74->_pixelFormat = *(v19 + 8);
    v74->_usage = *(v19 + 192);
    v74->_rotation = *(v19 + 72);
    v74->_swizzle = *(v19 + 84);
    v74->_writeSwizzleEnabled = *(v19 + 88);
    v74->_shareable = v77;
    v74->_framebufferOnly = *(v19 + 80);
    CFRetain(iosurface);
    v75->_iosurface = iosurface;
    v75->_iosurfacePlane = v68;
    v75->_isDrawable = *(v19 + 81);
    v75->super._res.info.iosurface = iosurface;
    *(&v75->super._res.var1 + 3) = fieldCopy2;
    *&v75->super._res.var0 = IOSurfaceGetAllocSize(iosurface) & 0xFFFFFFFFFFFFFFLL | (*(&v75->super._res.var1 + 3) << 56);
    v75->_allowGPUOptimizedContents = *(v19 + 128);
    if (**MEMORY[0x1E69A8488])
    {
      [deviceCopy deviceRef];
      [deviceCopy registryID];
      IOAccelDeviceTraceEvent();
    }
  }

  return v75;
}

- (MTLIOAccelTexture)initWithTextureInternal:(id)internal pixelFormat:(unint64_t)format textureType:(unint64_t)type levels:(_NSRange)levels slices:(_NSRange)slices swizzle:(id)swizzle compressedView:(BOOL)view
{
  length = levels.length;
  location = levels.location;
  MTLTextureSwizzleChannelsToKey();
  v16 = v15;
  _mtlValidateMTLTextureSwizzleKey(v15, v17, v18, v19, v20, v21, v22, v23);
  _mtlValidateArgumentsForTextureViewOnDevice([internal device], internal, format, type, location, length, slices.location, slices.length, view);
  v24 = [(MTLIOAccelResource *)self initWithResource:internal];
  if (v24)
  {
    v24->_parentTexture = internal;
    v24->_buffer = *(internal + 41);
    v24->_parentRelativeLevel = location;
    v24->_parentRelativeSlice = slices.location;
    v24->_bufferOffset = [internal bufferOffset];
    v24->_bufferBytesPerRow = [internal bufferBytesPerRow];
    v24->_textureType = type;
    v25 = *(internal + 50) >> location;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v24->_width = v25;
    v26 = *(internal + 51) >> location;
    if (v26 <= 1)
    {
      v26 = 1;
    }

    v24->_height = v26;
    v27 = *(internal + 52) >> location;
    if (v27 <= 1)
    {
      v27 = 1;
    }

    v24->_depth = v27;
    v24->_pixelFormat = format;
    v24->_usage = *(internal + 48);
    v28 = 6;
    if (type - 5 >= 2)
    {
      v28 = 1;
    }

    v24->_numFaces = v28;
    v24->_arrayLength = slices.length / v28;
    v24->_mipmapLevelCount = length;
    v24->_sampleCount = *(internal + 54);
    v24->_rotation = *(internal + 49);
    v24->_swizzle = v16;
    v24->_writeSwizzleEnabled = *(internal + 340);
    if ([objc_msgSend(internal "device")] && v24->_swizzle != 84148994)
    {
      v29 = v24->_usage & ~MTLGetDisallowedTextureUsagesWhenSwizzling([internal device], v24->_writeSwizzleEnabled);
      v24->_usage = v29;
      _mtlValidateTextureUsage(v29, v30, v31, v32, v33, v34, v35, v36);
    }

    v24->_shareable = 0;
    v24->_framebufferOnly = *(internal + 457);
    v24->_iosurface = *(internal + 44);
    v24->_iosurfacePlane = *(internal + 45);
    v24->_isDrawable = *(internal + 458);
    v24->_allowGPUOptimizedContents = *(internal + 512);
    v37 = (internal + 32);
    v38 = v37[26];
    v39 = v37[27];
    *&v24->super._anon_50[160] = v38;
    *&v24->super._anon_50[168] = v39;
    *&v24->super._anon_50[176] = *(v37 + 14);
    v24->super._anon_50[192] = *(v37 + 240);
    *&v24->super._anon_50[88] = v37[17];
    *&v24->super._anon_50[24] = v37[9];
    iosurface = v24->_iosurface;
    if (iosurface)
    {
      CFRetain(iosurface);
    }

    if (**MEMORY[0x1E69A8488])
    {
      [*&v24->super._anon_50[32] deviceRef];
      [*&v24->super._anon_50[32] registryID];
      IOAccelDeviceTraceEvent();
    }
  }

  return v24;
}

- (MTLIOAccelTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0 isStrideTexture:(BOOL)self1
{
  bufferCopy = buffer;
  device = [buffer device];
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var8 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var0.var0 = 0u;
  *&args->var0.var16.var3.var2[1] = 0u;
  *(&args->var0.var16.var3 + 4) = 0;
  descriptorPrivate = [descriptor descriptorPrivate];
  v23 = descriptorPrivate;
  v24 = *descriptorPrivate;
  if ((*descriptorPrivate - 5) >= 2)
  {
    v25 = 1;
  }

  else
  {
    v25 = 6;
  }

  v48 = v25;
  if (texture)
  {
    _mtlValidateStrideTextureParameters(device, descriptor, descriptorPrivate[2], bufferCopy[21] + offset, bytes, 0);
    v26 = [(MTLIOAccelResource *)self initWithResource:bufferCopy];
    v27 = v26;
    if (!v26)
    {
      return v27;
    }

    *&v26->super._anon_50[24] += offset;
    offsetCopy2 = offset;
    goto LABEL_27;
  }

  v29 = bufferCopy;
  v30 = device;
  if (descriptorPrivate[9])
  {
    v47 = v25;
    MTLReportFailure(0, "[MTLIOAccelTexture initWithBuffer:descriptor:sysMemOffset:sysMemRowBytes:vidMemSize:vidMemRowBytes:args:argsSize:isStrideTexture:]", 1102, @"Buffer texture has invalid rotation %u", v19, v20, v21, v22, descriptorPrivate[9]);
    LODWORD(v25) = v47;
    v24 = *v23;
  }

  if (size)
  {
    v31 = 192;
  }

  else
  {
    v31 = 128;
  }

  args->var0.var0 = v31;
  args->var0.var1 = 0;
  v32 = v23[3];
  args->var0.var2 = v23[2];
  args->var0.var3 = v32;
  offsetCopy2 = offset;
  switch(v24)
  {
    case 6:
      LODWORD(v33) = *(v23 + 14) * v25;
      break;
    case 3:
      v33 = v23[7];
      break;
    case 1:
      args->var0.var3 = v23[7];
      goto LABEL_20;
    default:
      v33 = v23[4];
      break;
  }

  args->var0.var4 = v33;
LABEL_20:
  args->var0.var6 = rowBytes;
  args->var0.var7 = bytes;
  args->var0.var8 = v25;
  args->var0.var9 = v23[5];
  args->var0.var11 = 1;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v34 = v30;
  MTLPixelFormatGetInfoForDevice(v30, v23[1], &v51);
  args->var0.var11 = BYTE8(v52);
  if (*(v23 + 64))
  {
    v35 = 64;
  }

  else
  {
    v35 = 0;
  }

  args->var0.var12 = v35;
  bufferCopy = v29;
  v36 = v29 + 4;
  v37 = v36[17];
  args->var0.var16.var0.var0 = v37 + offset;
  args->var0.var16.var0.var1 = v37;
  args->var0.var16.var0.var2 = size;
  args->var0.var16.var0.var3 = [bufferCopy resourceSize];
  v38 = *(v36 + 12);
  if (v38)
  {
    args->var0.var16.var0.var4 = v38;
    args->var0.var12 |= 0x800u;
  }

  v39 = v36[20] | (16 * v36[19]);
  v40 = v36[18] & 0x300;
  v50.receiver = self;
  v50.super_class = MTLIOAccelTexture;
  v41 = [(MTLIOAccelResource *)&v50 initWithDevice:v34 options:v39 | v40 args:args argsSize:argsSize];
  v27 = v41;
  if (v41)
  {
    v41->super._anon_50[136] = 0;
    if (!size)
    {
      v42 = 0;
LABEL_28:
      v27->_buffer = v42;
      v27->_bufferOffset = offsetCopy2;
      v27->_bufferBytesPerRow = bytes;
      v27->_textureType = *v23;
      v27->_width = v23[2];
      v27->_height = v23[3];
      v27->_depth = v23[4];
      v27->_mipmapLevelCount = v23[5];
      v27->_sampleCount = v23[6];
      v27->_arrayLength = v23[7];
      v27->_numFaces = v48;
      v27->_pixelFormat = v23[1];
      v27->_usage = v23[24];
      v27->_rotation = 0;
      v27->_swizzle = *(v23 + 21);
      v27->_writeSwizzleEnabled = *(v23 + 88);
      v27->_shareable = 0;
      v27->_framebufferOnly = 0;
      v27->_isDrawable = *(v23 + 81);
      v27->_allowGPUOptimizedContents = *(v23 + 128);
      v43 = bufferCopy + 4;
      v44 = v43[26];
      v45 = v43[27];
      *&v27->super._anon_50[160] = v44;
      *&v27->super._anon_50[168] = v45;
      *&v27->super._anon_50[176] = *(v43 + 14);
      v27->super._anon_50[192] = *(v43 + 240);
      if (texture && v44)
      {
        *&v27->super._anon_50[24] = v43[9] + offsetCopy2;
      }

      *&v27->super._anon_50[88] = v43[17] + offsetCopy2;
      return v27;
    }

LABEL_27:
    v42 = bufferCopy;
    goto LABEL_28;
  }

  return v27;
}

- (MTLIOAccelTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor sysMemOffset:(unint64_t)offset sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)size vidMemRowBytes:(unint64_t)rowBytes args:(IOAccelNewResourceArgs *)args argsSize:(unsigned int)self0
{
  BYTE4(v11) = 1;
  LODWORD(v11) = argsSize;
  return [(MTLIOAccelTexture *)self initWithBuffer:buffer descriptor:descriptor sysMemOffset:offset sysMemRowBytes:bytes vidMemSize:size vidMemRowBytes:rowBytes args:args argsSize:v11 isStrideTexture:?];
}

- (MTLIOAccelTexture)initWithBuffer:(id)buffer descriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row
{
  device = [buffer device];
  descriptorPrivate = [descriptor descriptorPrivate];
  _mtlValidateStrideTextureParameters(device, descriptor, *(descriptorPrivate + 16), *(buffer + 21) + offset, row, 0);
  v13 = [(MTLIOAccelResource *)self initWithResource:buffer];
  if (v13)
  {
    v13->_buffer = buffer;
    v13->_bufferOffset = offset;
    v13->_bufferBytesPerRow = row;
    v13->_textureType = *descriptorPrivate;
    v13->_width = *(descriptorPrivate + 16);
    v13->_height = *(descriptorPrivate + 24);
    v13->_depth = *(descriptorPrivate + 32);
    v13->_mipmapLevelCount = *(descriptorPrivate + 40);
    v13->_sampleCount = *(descriptorPrivate + 48);
    v13->_arrayLength = *(descriptorPrivate + 56);
    v14 = 6;
    if ((*descriptorPrivate - 5) >= 2)
    {
      v14 = 1;
    }

    v13->_numFaces = v14;
    v13->_pixelFormat = *(descriptorPrivate + 8);
    v13->_usage = *(descriptorPrivate + 192);
    v13->_rotation = 0;
    v13->_swizzle = *(descriptorPrivate + 84);
    v13->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v13->_shareable = 0;
    v13->_framebufferOnly = 0;
    v13->_isDrawable = *(descriptorPrivate + 81);
    v13->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    v15 = *(buffer + 30);
    v16 = *(buffer + 31);
    *&v13->super._anon_50[160] = v15;
    *&v13->super._anon_50[168] = v16;
    *&v13->super._anon_50[176] = *(buffer + 16);
    v13->super._anon_50[192] = *(buffer + 272);
    if (v15)
    {
      v17 = *(buffer + 13);
    }

    else
    {
      v17 = *&v13->super._anon_50[24];
    }

    *&v13->super._anon_50[24] = v17 + offset;
    *&v13->super._anon_50[88] = *(buffer + 21) + offset;
  }

  return v13;
}

- (MTLIOAccelTexture)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length device:(id)device descriptor:(id)descriptor
{
  descriptorPrivate = [descriptor descriptorPrivate];
  if (resource)
  {
    v16 = [(MTLIOAccelResource *)self initWithResource:resource];
  }

  else
  {
    v16 = [(MTLIOAccelResource *)self initMemoryless:device descriptor:descriptor];
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
    v16->_rotation = 0;
    v16->_swizzle = *(descriptorPrivate + 84);
    v16->_writeSwizzleEnabled = *(descriptorPrivate + 88);
    v16->_shareable = 0;
    v16->_framebufferOnly = 0;
    v16->_isDrawable = *(descriptorPrivate + 81);
    v16->_allowGPUOptimizedContents = *(descriptorPrivate + 128);
    *&v16->super._anon_50[160] = heap;
    *&v17->super._anon_50[168] = resource;
    if (resource)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = 0;
    }

    *&v17->super._anon_50[176] = offset;
    *&v17->super._anon_50[184] = lengthCopy;
    v17->super._anon_50[192] = 1;
    if ([heap type] == 1)
    {
      v17->super._anon_50[192] = 0;
    }

    if (resource)
    {
      *&v17->super._anon_50[88] = *(resource + 21) + offset;
      *&v17->super._anon_50[24] += offset;
    }
  }

  return v17;
}

- (MTLIOAccelTexture)initWithMasterBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length descriptor:(id)descriptor sysMemRowBytes:(unint64_t)bytes vidMemSize:(unint64_t)self0 vidMemRowBytes:(unint64_t)self1 args:(IOAccelNewResourceArgs *)self2 argsSize:(unsigned int)self3
{
  BYTE4(v19) = 0;
  LODWORD(v19) = argsSize;
  result = [(MTLIOAccelTexture *)self initWithBuffer:buffer descriptor:descriptor sysMemOffset:offset sysMemRowBytes:bytes vidMemSize:size vidMemRowBytes:rowBytes args:args argsSize:v19 isStrideTexture:?];
  if (result)
  {
    result->_rootResourceIsSuballocatedBuffer = 1;
    result->_masterBuffer = buffer;
    result->_masterHeapIndex = index;
    result->_masterBufferIndex = bufferIndex;
    result->_masterBufferOffset = offset;
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
  [(MTLIOAccelTexture *)self getBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes fromRegion:v10 mipmapLevel:level slice:slice];
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
  [(MTLIOAccelTexture *)self replaceRegion:v10 mipmapLevel:level slice:slice withBytes:pixels bytesPerRow:bytes bytesPerImage:imageBytes];
}

- (void)replaceRegion:(id *)region mipmapLevel:(unint64_t)level withBytes:(const void *)bytes bytesPerRow:(unint64_t)row
{
  v6 = *&region->var0.var2;
  v7[0] = *&region->var0.var0;
  v7[1] = v6;
  v7[2] = *&region->var1.var1;
  [(MTLIOAccelTexture *)self replaceRegion:v7 mipmapLevel:level slice:0 withBytes:bytes bytesPerRow:row bytesPerImage:0];
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(MTLIOAccelResource *)self annotateResource:Mutable];
  if (self->_framebufferOnly)
  {
    v4 = @"Renderbuffer";
  }

  else
  {
    v4 = @"Texture";
  }

  CFDictionaryAddValue(Mutable, @"Type", v4);
  v5 = CFStringCreateMutable(0, 512);
  v25 = "MTLIOAccelTexture";
  CFStringAppendFormat(v5, 0, @"%s");
  textureType = self->_textureType;
  if (textureType >= 0xA)
  {
    v22 = "getTargetString";
    v23 = "!INVALID TEXTURE TYPE";
    v24 = 1530;
    goto LABEL_38;
  }

  v25 = off_1E6EEB800[textureType];
  CFStringAppendFormat(v5, 0, @", %s");
  v11 = self->_textureType;
  if (v11 > 9)
  {
    goto LABEL_39;
  }

  if (((1 << v11) & 0x7C) != 0)
  {
    CFStringAppendFormat(v5, 0, @", %ld x %ld", self->_width, self->_height);
    goto LABEL_12;
  }

  if (((1 << v11) & 0x203) != 0)
  {
    CFStringAppendFormat(v5, 0, @", %ld", self->_width);
    goto LABEL_12;
  }

  if (v11 != 7)
  {
LABEL_39:
    v22 = "appendDimensionString";
    v23 = "0";
    v24 = 1467;
LABEL_38:
    MTLReleaseAssertionFailure(v22, v24, v23, 0, v6, v7, v8, v9, v25);
  }

  CFStringAppendFormat(v5, 0, @", %ld x %ld x %ld", self->_width, self->_height, self->_depth);
LABEL_12:
  Name = MTLPixelFormatGetName(self->_pixelFormat);
  CFStringAppendFormat(v5, 0, @", %s", Name);
  if (self->_mipmapLevelCount >= 2)
  {
    CFStringAppendFormat(v5, 0, @", %d mipmap levels", self->_mipmapLevelCount);
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

    CFStringAppendFormat(v5, 0, @", %d array slices", *p_depth);
  }

  if (self->_sampleCount)
  {
    CFStringAppendFormat(v5, 0, @", %d samples", self->_sampleCount);
  }

  string = [MEMORY[0x1E696AD60] string];
  v15 = string;
  usage = self->_usage;
  if (usage)
  {
    [string appendString:@"shaderRead "];
    usage = self->_usage;
    if ((usage & 2) == 0)
    {
LABEL_23:
      if ((usage & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  else if ((usage & 2) == 0)
  {
    goto LABEL_23;
  }

  [v15 appendString:@"shaderWrite "];
  usage = self->_usage;
  if ((usage & 4) == 0)
  {
LABEL_24:
    if ((usage & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v15 appendString:@"renderTarget "];
  usage = self->_usage;
  if ((usage & 0x10) == 0)
  {
LABEL_25:
    if ((usage & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v15 appendString:@"pixelFormatView "];
  usage = self->_usage;
  if ((usage & 0x4000) == 0)
  {
LABEL_26:
    if ((usage & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_35:
  [v15 appendString:@"noConcurrentAccess "];
  usage = self->_usage;
  if ((usage & 0x10000) != 0)
  {
LABEL_27:
    [v15 appendString:@"blockWritesOnly "];
    usage = self->_usage;
  }

LABEL_28:
  CFStringAppendFormat(v5, 0, @", usage (%08x) %@", usage, v15);
  retainedLabel = [(MTLIOAccelResource *)self retainedLabel];
  if (retainedLabel)
  {
    v18 = retainedLabel;
    CFStringAppendFormat(v5, 0, @", %s", [retainedLabel UTF8String]);
  }

  CFDictionaryAddValue(Mutable, @"Description", v5);
  CFRelease(v5);
  v19 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v20 = [(MTLIOAccelResource *)self copyAnnotationDictionary:*&self->super._anon_50[8] obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
  CFArrayAppendValue(v19, v20);
  CFRelease(v20);
  CFRelease(Mutable);
  return v19;
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

- (unint64_t)hazardTrackingMode
{
  v4 = (*&self->super._anon_50[96] >> 8) & 3;
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
      buffer = [(MTLIOAccelResource *)self heap];
      if (!buffer)
      {
        return 2;
      }
    }
  }

  return [(MTLHeap *)buffer hazardTrackingMode];
}

- (BOOL)isSparse
{
  heap = [(MTLIOAccelResource *)self heap];
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
    v7.super_class = MTLIOAccelTexture;
    return [(MTLIOAccelResource *)&v7 setOwnerWithIdentity:*&identity];
  }
}

@end