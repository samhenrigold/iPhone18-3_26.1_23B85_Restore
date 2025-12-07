@interface MTLToolsComputeCommandEncoder
- (BOOL)encodeEndDoWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (MTLToolsComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)newKernelDebugInfo;
- (unint64_t)dispatchType;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)enableNullBufferBinds:(BOOL)binds;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)encodeStartIf:(id)if offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)encodeStartWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setStageInRegion:(id *)region;
- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)setSubstream:(unsigned int)substream;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setThreadgroupDistributionMode:(int64_t)mode;
- (void)setThreadgroupDistributionModeWithClusterGroupIndex:(unsigned int)index;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setThreadgroupPackingDisabled:(BOOL)disabled;
- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)signalProgress:(unsigned int)progress;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResourceGroup:(id)group usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
- (void)waitForProgress:(unsigned int)progress;
@end

@implementation MTLToolsComputeCommandEncoder

- (MTLToolsComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = MTLToolsComputeCommandEncoder;
  v7 = [(MTLToolsCommandEncoder *)&v11 initWithBaseObject:encoder parent:?];
  v8 = v7;
  if (descriptor && v7)
  {
    for (i = 0; i != 4; ++i)
    {
      [parent addRetainedObject:{objc_msgSend(objc_msgSend(objc_msgSend(descriptor, "sampleBufferAttachments"), "objectAtIndexedSubscript:", i), "sampleBuffer")}];
    }
  }

  return v8;
}

- (void)setComputePipelineState:(id)state
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setComputePipelineState:baseObject2];
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBytes:bytes length:length atIndex:index];
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBufferOffset:offset atIndex:index];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setBuffer:baseObject2 offset:offset atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13[31] = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v10 = v13;
    v11 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v12 = *buffersCopy++;
      *v10++ = [v12 baseObject];
      --v11;
    }

    while (v11);
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setBuffer:baseObject2 offset:offset attributeStride:stride atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v15[31] = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    buffersCopy = buffers;
    v12 = v15;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*buffersCopy];
      v14 = *buffersCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBufferOffset:offset attributeStride:stride atIndex:index];
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setBytes:bytes length:length attributeStride:stride atIndex:index];
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];

  [baseObject setTexture:baseObject2 atIndex:index];
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    texturesCopy = textures;
    v8 = v11;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*texturesCopy];
      v10 = *texturesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];

  [baseObject setSamplerState:baseObject2 atIndex:index];
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v12 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v8 = v11;
    v9 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v10 = *statesCopy++;
      *v8++ = [v10 baseObject];
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v13 = clamp;
  *&v14 = maxClamp;

  [baseObject setSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v13 atIndex:v14];
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v16 = *MEMORY[0x277D85DE8];
  if (range.length)
  {
    statesCopy = states;
    v12 = v15;
    v13 = range.length;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:*statesCopy];
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupMemoryLength:length atIndex:index];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = *threadgroups;
  v7 = *threadgroup;
  [baseObject dispatchThreadgroups:&v8 threadsPerThreadgroup:&v7];
}

- (void)setStageInRegion:(id *)region
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v5 = *&region->var0.var2;
  v6[0] = *&region->var0.var0;
  v6[1] = v5;
  v6[2] = *&region->var1.var1;
  [baseObject setStageInRegion:v6];
}

- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject setStageInRegionWithIndirectBuffer:baseObject2 indirectBufferOffset:offset];
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setImageblockWidth:width height:height];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v11 = *threadgroup;
  [baseObject dispatchThreadgroupsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset threadsPerThreadgroup:&v11];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = [(MTLToolsObject *)self baseObject];
  v8 = *threads;
  v7 = *threadgroup;
  [baseObject dispatchThreads:&v8 threadsPerThreadgroup:&v7];
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject dispatchThreadsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset];
}

- (id)newKernelDebugInfo
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject newKernelDebugInfo];
}

- (void)updateFence:(id)fence
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject updateFence:baseObject2];
}

- (void)waitForFence:(id)fence
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [fence baseObject];

  [baseObject waitForFence:baseObject2];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  [baseObject useResource:baseObject2 usage:usage];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v9 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:resources[v9]];
      baseObject = [resources[v9] baseObject];
      *(__p[0] + v9++) = baseObject;
    }

    while (count != v9);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResources:__p[0] count:count usage:usage];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)heap
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject useHeap:baseObject2];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:heaps[v7]];
      baseObject = [heaps[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useHeaps:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 withRange:{location, length}];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [indirectBuffer baseObject];

  [baseObject executeCommandsInBuffer:baseObject2 indirectBuffer:baseObject3 indirectBufferOffset:offset];
}

- (unint64_t)dispatchType
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject dispatchType];
}

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject memoryBarrierWithScope:scope];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      baseObject = [resources[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 memoryBarrierWithResources:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier
{
  barrierCopy = barrier;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject sampleCountersInBuffer:baseObject2 atSampleIndex:index withBarrier:barrierCopy];
}

- (void)enableNullBufferBinds:(BOOL)binds
{
  bindsCopy = binds;
  [(MTLToolsObject *)self baseObject];
  if (objc_opt_respondsToSelector())
  {
    baseObject = [(MTLToolsObject *)self baseObject];

    [baseObject enableNullBufferBinds:bindsCopy];
  }
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setVisibleFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto23MTLVisibleFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setVisibleFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [table baseObject];

  [baseObject setIntersectionFunctionTable:baseObject2 atBufferIndex:index];
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<objc_object  {objcproto28MTLIntersectionFunctionTable}*>::vector[abi:ne200100](__p, range.length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [tables[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setIntersectionFunctionTables:__p[0] withBufferRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setAccelerationStructure:baseObject2 atBufferIndex:index];
}

- (void)useResourceGroup:(id)group usage:(unint64_t)usage
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject useResourceGroup:group usage:usage];
}

- (void)insertCompressedTextureReinterpretationFlush
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject insertCompressedTextureReinterpretationFlush];
}

- (void)encodeStartDoWhile
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject encodeStartDoWhile];
}

- (BOOL)encodeEndDoWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v6 = *&value;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [while baseObject];

  return [baseObject encodeEndDoWhile:baseObject2 offset:offset comparison:comparison referenceValue:v6];
}

- (void)encodeStartWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v6 = *&value;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [while baseObject];

  [baseObject encodeStartWhile:baseObject2 offset:offset comparison:comparison referenceValue:v6];
}

- (BOOL)encodeEndWhile
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject encodeEndWhile];
}

- (void)encodeStartIf:(id)if offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v6 = *&value;
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [if baseObject];

  [baseObject encodeStartIf:baseObject2 offset:offset comparison:comparison referenceValue:v6];
}

- (void)encodeStartElse
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject encodeStartElse];
}

- (BOOL)encodeEndIf
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject encodeEndIf];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)setSubstream:(unsigned int)substream
{
  v3 = *&substream;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setSubstream:v3];
}

- (void)signalProgress:(unsigned int)progress
{
  v3 = *&progress;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject signalProgress:v3];
}

- (void)waitForProgress:(unsigned int)progress
{
  v3 = *&progress;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject waitForProgress:v3];
}

- (void)setThreadgroupPackingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupPackingDisabled:disabledCopy];
}

- (void)setThreadgroupDistributionMode:(int64_t)mode
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupDistributionMode:mode];
}

- (void)setThreadgroupDistributionModeWithClusterGroupIndex:(unsigned int)index
{
  v3 = *&index;
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setThreadgroupDistributionModeWithClusterGroupIndex:v3];
}

- (void)useResidencySet:(id)set
{
  [(MTLToolsCommandEncoder *)self addRetainedObject:?];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [set baseObject];

  [baseObject useResidencySet:baseObject2];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  std::vector<objc_object  {objcproto15MTLResidencySet}*>::vector[abi:ne200100](__p, count);
  if (count)
  {
    v7 = 0;
    do
    {
      [(MTLToolsCommandEncoder *)self addRetainedObject:sets[v7]];
      baseObject = [sets[v7] baseObject];
      *(__p[0] + v7++) = baseObject;
    }

    while (count != v7);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResidencySets:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setToolsDispatchBufferSPI:(unint64_t)i atIndex:(unint64_t)index
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setToolsDispatchBufferSPI:i atIndex:index];
}

@end