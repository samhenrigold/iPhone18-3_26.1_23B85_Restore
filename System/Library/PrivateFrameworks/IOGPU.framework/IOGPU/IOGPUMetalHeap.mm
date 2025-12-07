@interface IOGPUMetalHeap
- (IOGPUMetalHeap)initWithDevice:(id)device size:(unint64_t)size options:(unint64_t)options args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)argsSize desc:(id)desc;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newSubResourceAtOffset:(unint64_t)offset withLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options;
- (id)newSubResourceWithLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options offset:(unint64_t *)offset;
- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)usedSize;
- (void)dealloc;
- (void)deallocHeapSubResource;
- (void)setLabel:(id)label;
- (void)unpinMemoryAtOffset:(unint64_t)offset withLength:(unint64_t)length;
@end

@implementation IOGPUMetalHeap

- (void)deallocHeapSubResource
{
  pthread_mutex_lock(&self->_mutex);

  pthread_mutex_unlock(&self->_mutex);
}

- (void)dealloc
{
  if (![(_MTLHeap *)self type])
  {
    MTLRangeAllocatorDestroy();
  }

  self->_device = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalHeap;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (unint64_t)usedSize
{
  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  size = self->_size;
  v3 = size - MTLRangeAllocatorGetFreeSize();
  pthread_mutex_unlock(&self->_mutex);
  return v3;
}

- (unint64_t)maxAvailableSizeWithAlignment:(unint64_t)alignment
{
  if ((alignment & (alignment - 1)) != 0)
  {
    [IOGPUMetalHeap maxAvailableSizeWithAlignment:];
  }

  if ([(_MTLHeap *)self type])
  {
    return 0;
  }

  pthread_mutex_lock(&self->_mutex);
  MaxFreeSize = MTLRangeAllocatorGetMaxFreeSize();
  pthread_mutex_unlock(&self->_mutex);
  return MaxFreeSize;
}

- (IOGPUMetalHeap)initWithDevice:(id)device size:(unint64_t)size options:(unint64_t)options args:(IOGPUNewResourceArgs *)args argsSize:(unsigned int)argsSize desc:(id)desc
{
  v9 = *&argsSize;
  if ((options & 0x300) != 0)
  {
    optionsCopy = options;
  }

  else
  {
    optionsCopy = options | 0x100;
  }

  if (desc)
  {
    type = [desc type];
  }

  else
  {
    type = 0;
  }

  v22.receiver = self;
  v22.super_class = IOGPUMetalHeap;
  v16 = [(_MTLHeap *)&v22 initWithType:type options:optionsCopy];
  args->var0.var11 = [desc protectionOptions];
  if ((args->var0.var0 & 0xF) == 0 && [desc memoryPoolId])
  {
    args->var0.var10 |= 0x100000u;
    args->var0.var16.var0.var3.var1 = [desc memoryPoolId];
  }

  addressRanges = [desc addressRanges];
  if (addressRanges)
  {
    v18 = addressRanges;
    if ([desc memoryPoolId])
    {
      [IOGPUMetalHeap initWithDevice:size:options:args:argsSize:desc:];
    }

    args->var0.var0 = 128;
    args->var0.var16.var0.var0 = [v18 ranges];
    args->var0.var16.var0.var1 = [v18 count];
    args->var0.var10 |= 0x200000u;
  }

  if (v16)
  {
    v19 = [[IOGPUMetalResource alloc] initWithDevice:device options:optionsCopy args:args argsSize:v9];
    v16->_resource = v19;
    if (v19)
    {
      v16->_device = device;
      v16->_size = size;
      [(IOGPUMetalResource *)v16->_resource setLabel:@"IOGPUMetalHeap"];
      pthread_mutex_init(&v16->_mutex, 0);
      if (![(_MTLHeap *)v16 type])
      {
        MTLRangeAllocatorInit();
      }

      v16->_maxCompatiblePlacementSparsePageSize = [desc maxCompatiblePlacementSparsePageSize];
    }

    else
    {
      v21.receiver = v16;
      v21.super_class = IOGPUMetalHeap;
      [(_MTLObjectWithLabel *)&v21 dealloc];
      return 0;
    }
  }

  return v16;
}

- (void)setLabel:(id)label
{
  v5 = objc_autoreleasePoolPush();
  -[IOGPUMetalResource setLabel:](self->_resource, "setLabel:", [@"IOGPUMetalHeap" stringByAppendingFormat:@", %@", label]);
  objc_autoreleasePoolPop(v5);
  v6.receiver = self;
  v6.super_class = IOGPUMetalHeap;
  [(_MTLObjectWithLabel *)&v6 setLabel:label];
}

- (id)newSubResourceWithLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options offset:(unint64_t *)offset
{
  optionsCopy = options;
  if ([(_MTLHeap *)self type])
  {
    [IOGPUMetalHeap newSubResourceWithLength:alignment:options:offset:];
  }

  if (self->_size < length)
  {
    return 0;
  }

  v10 = *&self->_resource->_anon_50[88];
  if ((optionsCopy & 0xF) != (v10 & 0xF))
  {
    MTLCPUCacheModeString();
    MTLCPUCacheModeString();
    MTLReportFailure();
    v10 = *&self->_resource->_anon_50[88];
  }

  v11 = optionsCopy >> 4;
  if (v11 != 3)
  {
    v12 = v10 >> 4;
    if (v11 != v12)
    {
      [IOGPUMetalHeap newSubResourceWithLength:v11 alignment:v12 options:? offset:?];
    }
  }

  pthread_mutex_lock(&self->_mutex);
  if (MTLRangeAllocatorAllocate())
  {
    v9 = self->_resource;
  }

  else
  {
    v9 = 0;
  }

  pthread_mutex_unlock(&self->_mutex);
  return v9;
}

- (void)unpinMemoryAtOffset:(unint64_t)offset withLength:(unint64_t)length
{
  if ([(_MTLHeap *)self type])
  {
    [IOGPUMetalHeap unpinMemoryAtOffset:withLength:];
  }

  pthread_mutex_lock(&self->_mutex);
  MTLRangeAllocatorDeallocate();

  pthread_mutex_unlock(&self->_mutex);
}

- (unint64_t)setPurgeableState:(unint64_t)state
{
  pthread_mutex_lock(&self->_mutex);
  v5 = [(IOGPUMetalResource *)self->_resource setPurgeableState:state];
  pthread_mutex_unlock(&self->_mutex);
  return v5;
}

- (id)newSubResourceAtOffset:(unint64_t)offset withLength:(unint64_t)length alignment:(unint64_t)alignment options:(unint64_t)options
{
  optionsCopy = options;
  if ([(_MTLHeap *)self type]!= 1)
  {
    [IOGPUMetalHeap newSubResourceAtOffset:withLength:alignment:options:];
  }

  v11 = *&self->_resource->_anon_50[88];
  if ((optionsCopy & 0xF) != (v11 & 0xF))
  {
    MTLCPUCacheModeString();
    MTLCPUCacheModeString();
    MTLReportFailure();
    v11 = *&self->_resource->_anon_50[88];
  }

  v12 = optionsCopy >> 4;
  v13 = v11 >> 4;
  if (v12 != v13)
  {
    [IOGPUMetalHeap newSubResourceAtOffset:v12 withLength:v13 alignment:? options:?];
  }

  if (__CFADD__(offset, length) || offset + length > self->_size || ((alignment | offset) & (alignment - 1)) != 0)
  {
    return 0;
  }

  resource = self->_resource;

  return resource;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:];
    }

    v6 = [(IOGPUMetalHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions]];
    if (v6)
    {
      v7 = v6;
      v8 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v6 offset:0];

      return v8;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithDescriptor:];
    }

    v6 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];

    return [(IOGPUMetalHeap *)self newAccelerationStructureWithSize:v6];
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:offset:];
    }

    v8 = [(_MTLHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions] offset:offset];
    if (v8)
    {
      v9 = v8;
      v10 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v8 offset:0];

      return v10;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithDescriptor:offset:];
    }

    v8 = [(MTLDevice *)self->_device heapAccelerationStructureSizeAndAlignWithDescriptor:descriptor];

    return [(IOGPUMetalHeap *)self newAccelerationStructureWithSize:v8 offset:offset];
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
    return 0;
  }
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:resourceIndex:];
    }

    v8 = [(IOGPUMetalHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions]];
    if (v8)
    {
      v9 = v8;
      v10 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v8 offset:0 resourceIndex:index];

      return v10;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  if (([(MTLDevice *)self->_device requiresRaytracingEmulation]& 1) != 0)
  {
    if ([(_MTLHeap *)self storageMode]!= 2)
    {
      [IOGPUMetalHeap newAccelerationStructureWithSize:offset:resourceIndex:];
    }

    v10 = [(_MTLHeap *)self newBufferWithLength:size options:[(_MTLHeap *)self resourceOptions] offset:offset];
    if (v10)
    {
      v11 = v10;
      v12 = [(MTLDevice *)self->_device newAccelerationStructureWithBuffer:v10 offset:0 resourceIndex:index];

      return v12;
    }
  }

  else
  {
    [(IOGPUMetalHeap *)self doesNotRecognizeSelector:a2];
  }

  return 0;
}

- (uint64_t)newSubResourceWithLength:(uint64_t)a1 alignment:(uint64_t)a2 options:offset:.cold.2(uint64_t a1, uint64_t a2)
{
  MTLStorageModeString();
  MTLStorageModeString();
  return MTLReportFailure();
}

- (uint64_t)newSubResourceAtOffset:(uint64_t)a1 withLength:(uint64_t)a2 alignment:options:.cold.2(uint64_t a1, uint64_t a2)
{
  MTLStorageModeString();
  MTLStorageModeString();
  return MTLReportFailure();
}

@end