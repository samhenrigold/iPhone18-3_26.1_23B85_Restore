@interface IOGPUMetalBuffer
- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (BOOL)replaceBackingWithRanges:(id)ranges readOnly:(BOOL)only;
- (IOGPUMetalBuffer)initWithDevice:(id)device addressRanges:(IOGPUAddressRange *)ranges addressRangeCount:(unint64_t)count length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0;
- (IOGPUMetalBuffer)initWithDevice:(id)device iosurface:(__IOSurface *)iosurface gpuAddress:(unint64_t)address args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size;
- (IOGPUMetalBuffer)initWithDevice:(id)device pointer:(void *)pointer length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options sysMemSize:(unint64_t)size gpuAddress:(unint64_t)address gpuTag:(unint64_t)self0 placementSparsePageSize:(int64_t)self1 placementSparseResidencyBytes:(unint64_t)self2 args:(IOGPUNewResourceArgs *)self3 argsSize:(unsigned int)self4 deallocator:(id)aBlock;
- (IOGPUMetalBuffer)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length gpuTag:(unint64_t)tag;
- (IOGPUMetalBuffer)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size gpuTag:(unint64_t)self0;
- (__CFArray)copyAnnotations;
- (__IOSurface)_aneIOSurface;
- (id)formattedDescription:(unint64_t)description;
- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image;
- (int)setOwnerWithIdentity:(unsigned int)identity;
- (unint64_t)allocatedSize;
- (void)dealloc;
- (void)emitResourceInfoTraceEvent;
@end

@implementation IOGPUMetalBuffer

- (void)dealloc
{
  p_res = &self->super._res;
  v4 = *&self->super._anon_50[136];
  if (v4)
  {
    [(IOGPUMetalResource *)self makeAliasable];
    [*&p_res[3].var0 deallocHeapSubResource];
    v4 = *&p_res[3].var0;
  }

  primaryBuffer = self->_primaryBuffer;
  if (primaryBuffer)
  {
    [(__IOSurface *)p_res[1].info.iosurface deallocBufferSubData:primaryBuffer heapIndex:self->_primaryHeapIndex bufferIndex:self->_primaryBufferIndex bufferOffset:self->_primaryBufferOffset length:self->_length];
  }

  deallocator = self->_deallocator;
  if (deallocator)
  {
    deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
    _Block_release(self->_deallocator);
    self->_deallocator = 0;
  }

  iosurface = self->_iosurface;
  if (iosurface)
  {
    CFRelease(iosurface);
  }

  aneIOSurface = self->_aneIOSurface;
  if (aneIOSurface)
  {
    CFRelease(aneIOSurface);
  }

  v9.receiver = self;
  v9.super_class = IOGPUMetalBuffer;
  [(IOGPUMetalResource *)&v9 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v12[21] = *MEMORY[0x1E69E9840];
  v4 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  v6 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = IOGPUMetalBuffer;
  v7 = [(IOGPUMetalBuffer *)&v11 description];
  v12[0] = v4;
  v12[1] = @"label =";
  v8 = @"<none>";
  if (retainedLabel)
  {
    v8 = retainedLabel;
  }

  v12[2] = v8;
  v12[3] = v4;
  v12[4] = @"length =";
  v12[5] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_length];
  v12[6] = v4;
  v12[7] = @"cpuCacheMode =";
  v12[8] = MTLCPUCacheModeString();
  v12[9] = v4;
  v12[10] = @"storageMode =";
  v12[11] = MTLStorageModeString();
  v12[12] = v4;
  v12[13] = @"hazardTrackingMode =";
  [(IOGPUMetalResource *)self hazardTrackingMode];
  v12[14] = MTLHazardTrackingModeString();
  v12[15] = v4;
  v12[16] = @"resourceOptions =";
  [(IOGPUMetalResource *)self resourceOptions];
  v12[17] = MTLResourceOptionsString();
  v12[18] = v4;
  v12[19] = @"purgeableState =";
  v12[20] = MTLPurgeableStateString();
  v9 = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 21), "componentsJoinedByString:", @" "];

  return v9;
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
  v5.super_class = IOGPUMetalBuffer;
  return [(IOGPUMetalResource *)&v5 allocatedSize];
}

- (id)newLinearTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 7085;
  result = [(IOGPUMetalBuffer *)self newTextureWithDescriptor:descriptor offset:offset bytesPerRow:row, image];
  *(StatusReg + 288) = 0;
  return result;
}

- (IOGPUMetalBuffer)initWithDevice:(id)device pointer:(void *)pointer length:(unint64_t)length alignment:(unsigned int)alignment options:(unint64_t)options sysMemSize:(unint64_t)size gpuAddress:(unint64_t)address gpuTag:(unint64_t)self0 placementSparsePageSize:(int64_t)self1 placementSparseResidencyBytes:(unint64_t)self2 args:(IOGPUNewResourceArgs *)self3 argsSize:(unsigned int)self4 deallocator:(id)aBlock
{
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  if (pointer && ((options & 0xF0) == 0x20 || (options & 0xF0) == 0x30))
  {
    MTLReportFailure();
  }

  if (size < length)
  {

    return 0;
  }

  deviceCopy = device;
  if ((options & 0xF) >= 2)
  {
    [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
  }

  if (pointer)
  {
    v23 = 0;
  }

  else
  {
    v23 = options & 0xF;
  }

  v24 = options >> 4;
  if ((v24 | 2) == 2)
  {
    if (pageSize)
    {
LABEL_13:
      size = bytes;
      if (v24 != 2)
      {
        [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
      }

      v25 = [deviceCopy sparseTileSizeInBytesForSparsePageSize:{pageSize, v28}];
      args->var0.var0 = 64;
      args->var0.var16.var0.var3.var0 = v25;
      v26 = (length + v25 - 1) & -v25;
      args->var0.var16.var0.var0 = v26;
      if (v26 < length)
      {
        [IOGPUMetalBuffer initWithDevice:pointer:length:alignment:options:sysMemSize:gpuAddress:gpuTag:placementSparsePageSize:placementSparseResidencyBytes:args:argsSize:deallocator:];
      }

      goto LABEL_19;
    }
  }

  else
  {
    v28 = options >> 4;
    MTLReportFailure();
    if (pageSize)
    {
      goto LABEL_13;
    }
  }

  args->var0.var0 = (pointer != 0) << 7;
  args->var0.var16.var0.var0 = pointer;
  args->var0.var16.var0.var1 = pointer;
LABEL_19:
  args->var0.var16.var0.var2 = size;
  args->var0.var1 = (v23 == 1) << 10;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var14 = alignment;
  if (address)
  {
    args->var0.var12 = address;
    args->var0.var13 = length;
  }

  args->var0.var15 = HIDWORD(tag);
  if ((options & 0x10000) == 0)
  {
    args->var0.var10 = 64;
  }

  v22 = [(IOGPUMetalResource *)self initWithDevice:deviceCopy options:options args:args argsSize:argsSize, v28];
  if (v22)
  {
    v22->_length = length;
    if (aBlock)
    {
      v22->_pointer = pointer;
      v22->_deallocator = _Block_copy(aBlock);
    }

    v22->_placementSparsePageSize = pageSize;
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([deviceCopy deviceRef], 8, 16, *&v22->super._anon_50[48], length, (v23 << 48) | ((v22->_placementSparsePageSize != 0) << 52) | (v24 << 32) | objc_msgSend(deviceCopy, "registryID"), 0);
    }
  }

  return v22;
}

- (IOGPUMetalBuffer)initWithHeap:(id)heap resource:(id)resource offset:(unint64_t)offset length:(unint64_t)length gpuTag:(unint64_t)tag
{
  if (!heap)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  if (!resource)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalBuffer initWithHeap:resource:offset:length:gpuTag:];
  }

  v13 = [(IOGPUMetalResource *)self initWithResource:resource];
  v14 = v13;
  if (v13)
  {
    v13->_length = length;
    *&v13->super._anon_50[136] = heap;
    *&v14->super._anon_50[144] = resource;
    *&v14->super._anon_50[152] = offset;
    *&v14->super._anon_50[160] = length;
    v14->super._anon_50[168] = 0;
    if (![heap type])
    {
      v14->super._anon_50[168] = 1;
    }

    *&v14->super._anon_50[80] += offset;
    *&v14->super._anon_50[24] = (*&v14->super._anon_50[24] + offset) | tag;
    if (*__globalGPUCommPage)
    {
      deviceRef = [*&v14->super._anon_50[32] deviceRef];
      v16 = vandq_s8(vshlq_u64(*&v14->super._anon_50[96], xmmword_1CA0CCC70), xmmword_1CA0CCC80);
      IOGPUDeviceTraceEvent(deviceRef, 8, 16, *&v14->super._anon_50[48], length, vorrq_s8(v16, vdupq_laneq_s64(v16, 1)).u64[0] | [*&v14->super._anon_50[32] registryID], *(*(*&v14->super._anon_50[136] + 56) + 128));
    }
  }

  return v14;
}

- (IOGPUMetalBuffer)initWithPrimaryBuffer:(id)buffer heapIndex:(signed __int16)index bufferIndex:(signed __int16)bufferIndex bufferOffset:(unint64_t)offset length:(unint64_t)length args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size gpuTag:(unint64_t)self0
{
  self->_primaryBuffer = buffer;
  self->_primaryHeapIndex = index;
  self->_primaryBufferIndex = bufferIndex;
  self->_primaryBufferOffset = offset;
  self->_length = length;
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 0u;
  v13 = buffer + 32;
  args->var0.var0 = *(*(buffer + 18) + 52) | 0x80;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var16.var0.var0 = *(buffer + 20) + offset;
  args->var0.var16.var0.var1 = *(buffer + 20);
  args->var0.var16.var0.var2 = *(buffer + 43);
  args->var0.var16.var0.var3.var0 = *(buffer + 20);
  args->var0.var10 = 2048;
  args->var0.var15 = HIDWORD(tag);
  v14 = -[IOGPUMetalResource initWithDevice:options:args:argsSize:](self, "initWithDevice:options:args:argsSize:", [buffer device], *(buffer + 21), args, size);
  v15 = v14;
  if (v14)
  {
    p_res = &v14->super._res;
    v14->super._anon_50[128] = 0;
    if (args->var0.var16.var0.var0 != *&v14->super._anon_50[80])
    {
      [IOGPUMetalBuffer initWithPrimaryBuffer:heapIndex:bufferIndex:bufferOffset:length:args:argsSize:gpuTag:];
    }

    if (*&v14->super._anon_50[24] != ((*(v13 + 9) + offset) | tag))
    {
      [IOGPUMetalBuffer initWithPrimaryBuffer:heapIndex:bufferIndex:bufferOffset:length:args:argsSize:gpuTag:];
    }

    if (*__globalGPUCommPage)
    {
      deviceRef = [*&v14->super._anon_50[32] deviceRef];
      v18 = vandq_s8(vshlq_u64(*p_res[3].vendor.reserved, xmmword_1CA0CCC70), xmmword_1CA0CCC80);
      IOGPUDeviceTraceEvent(deviceRef, 8, 16, p_res[2].vendor.reserved[0], length, vorrq_s8(v18, vdupq_laneq_s64(v18, 1)).u64[0] | [(__IOSurface *)p_res[1].info.iosurface registryID], *(v13 + 12));
    }
  }

  return v15;
}

- (IOGPUMetalBuffer)initWithDevice:(id)device iosurface:(__IOSurface *)iosurface gpuAddress:(unint64_t)address args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)size
{
  v7 = *&size;
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 130;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var16.var1.var0 = IOSurfaceGetID(iosurface);
  args->var0.var16.var1.var1 = 0;
  args->var0.var16.var0.var1 = 0;
  AllocSize = IOSurfaceGetAllocSize(iosurface);
  v14 = AllocSize;
  if (address)
  {
    args->var0.var12 = address;
    args->var0.var13 = AllocSize;
  }

  v15 = [(IOGPUMetalResource *)self initWithDevice:device options:0 args:args argsSize:v7];
  if (v15)
  {
    CFRetain(iosurface);
    v15->_iosurface = iosurface;
    v15->_length = v14;
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([device deviceRef], 8, 16, *&v15->super._anon_50[48], v15->_length, objc_msgSend(device, "registryID"), 0);
    }
  }

  return v15;
}

- (IOGPUMetalBuffer)initWithDevice:(id)device addressRanges:(IOGPUAddressRange *)ranges addressRangeCount:(unint64_t)count length:(unint64_t)length options:(unint64_t)options gpuAddress:(unint64_t)address args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)self0
{
  *&args->var0.var0 = 0u;
  *&args->var0.var6 = 0u;
  *&args->var0.var14 = 0u;
  *&args->var0.var16.var4.var1 = 0u;
  args->var0.var16.var0.var3.var1 = 0;
  *&args->var0.var12 = 0u;
  *&args->var0.var0 = 128;
  *&args->var0.var2 = 65537;
  args->var0.var4 = 1;
  *&args->var0.var6 = 16777473;
  args->var0.var16.var0.var0 = ranges;
  args->var0.var16.var0.var1 = count;
  args->var0.var10 |= 0x200000u;
  v15.receiver = self;
  v15.super_class = IOGPUMetalBuffer;
  v12 = [(IOGPUMetalResource *)&v15 initWithDevice:device options:options args:args argsSize:size];
  v13 = v12;
  if (v12)
  {
    *(v12 + 43) = length;
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([device deviceRef], 8, 16, *(v12 + 16), *(v12 + 43), objc_msgSend(device, "registryID"), 0);
    }
  }

  return v13;
}

- (__CFArray)copyAnnotations
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(IOGPUMetalResource *)self annotateResource:Mutable];
  CFDictionaryAddValue(Mutable, @"Type", @"Buffer");
  v4 = CFStringCreateMutable(0, 512);
  CFStringAppendFormat(v4, 0, @"%s", "IOGPUMetalBuffer ");
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(MTLResourceOptionsString() stringByReplacingOccurrencesOfString:@"MTLResource" withString:{&stru_1F49C0120), "stringByReplacingOccurrencesOfString:withString:", @"Mode", &stru_1F49C0120}];
  CFStringAppend(v4, v6);
  CFStringAppendFormat(v4, 0, @", handle (%012llx)", [(IOGPUMetalResource *)self gpuAddress]);
  objc_autoreleasePoolPop(v5);
  CFStringAppendFormat(v4, 0, @", size %lluB", self->_length);
  if (*&self->super._anon_50[136])
  {
    CFStringAppendFormat(v4, 0, @", heap (+%llx)", *&self->super._anon_50[152]);
  }

  if (self->_primaryBuffer)
  {
    CFStringAppendFormat(v4, 0, @", suballoc (+%llx)", self->_primaryBufferOffset);
  }

  retainedLabel = [(IOGPUMetalResource *)self retainedLabel];
  if (retainedLabel)
  {
    v8 = retainedLabel;
    CFStringAppendFormat(v4, 0, @", %s", [retainedLabel UTF8String]);
  }

  CFDictionaryAddValue(Mutable, @"Description", v4);
  CFRelease(v4);
  v9 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v10 = *&self->super._anon_50[8];
  v11 = *&self->super._anon_50[16];
  v12 = 1;
  do
  {
    v13 = v12;
    if (v10)
    {
      v14 = [(IOGPUMetalResource *)self copyAnnotationDictionary:v10 obj_key_name:@"OpenGLObjects" obj_dict:Mutable];
      CFArrayAppendValue(v9, v14);
      CFRelease(v14);
    }

    v12 = 0;
    v10 = v11;
  }

  while ((v13 & 1) != 0);
  CFRelease(Mutable);
  return v9;
}

- (__IOSurface)_aneIOSurface
{
  p_res = &self->super._res;
  os_unfair_lock_lock(&self->super._anon_50[172]);
  aneIOSurface = self->_aneIOSurface;
  if (!aneIOSurface)
  {
    if (self->_primaryBuffer)
    {
      p_primaryBufferOffset = &self->_primaryBufferOffset;
    }

    else
    {
      p_primaryBufferOffset = &p_res[4].vendor.reserved[1];
    }

    aneIOSurface = IOGPUResourceCreateIOSurface([(IOGPUMetalResource *)self resourceRef], *p_primaryBufferOffset, self->_length);
    self->_aneIOSurface = aneIOSurface;
  }

  os_unfair_lock_unlock(&p_res[4].vendor.reserved[3] + 1);
  return aneIOSurface;
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
    v7.super_class = IOGPUMetalBuffer;
    return [(IOGPUMetalResource *)&v7 setOwnerWithIdentity:*&identity];
  }
}

- (BOOL)replaceBackingWithBytesNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  v8 = IOGPUResourceReplaceBackingWithBytes([(IOGPUMetalResource *)self resourceRef], copy, length);
  if (!v8)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
      _Block_release(self->_deallocator);
      self->_deallocator = 0;
    }

    if (deallocator)
    {
      self->_deallocator = _Block_copy(deallocator);
    }

    self->_pointer = copy;
    *&self->super._anon_50[80] = copy;
  }

  return v8 == 0;
}

- (BOOL)replaceBackingWithRanges:(id)ranges readOnly:(BOOL)only
{
  v8 = 0;
  v5 = IOGPUResourceReplaceBackingWithRanges(-[IOGPUMetalResource resourceRef](self, "resourceRef"), [ranges ranges], objc_msgSend(ranges, "count"), only, 1, &v8);
  if (!v5)
  {
    deallocator = self->_deallocator;
    if (deallocator)
    {
      deallocator[2](deallocator, self->_pointer, [(IOGPUMetalBuffer *)self length]);
      _Block_release(self->_deallocator);
      self->_deallocator = 0;
    }

    self->_pointer = 0;
    *&self->super._anon_50[80] = v8;
  }

  return v5 == 0;
}

- (void)emitResourceInfoTraceEvent
{
  if (*&self->super._anon_50[32])
  {
    primaryBuffer = self->_primaryBuffer;
    if (!primaryBuffer)
    {
      v3 = *&self->super._anon_50[136];
      if (v3)
      {
        primaryBuffer = *(v3 + 56);
      }

      else
      {
        primaryBuffer = 0;
      }
    }

    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent(0, 8, 44, *&self->super._anon_50[48], *&self->super._res.var0 & 0xFFFFFFFFFFFFFFLL, 1, primaryBuffer);
    }
  }
}

@end