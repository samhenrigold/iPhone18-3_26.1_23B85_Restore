@interface CaptureMTLComputeCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)encodeEndDoWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (CaptureMTLComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)enableNullBufferBinds:(BOOL)binds;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)encodeStartIf:(id)if offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)encodeStartWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count;
- (void)memoryBarrierWithScope:(unint64_t)scope;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
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
- (void)setLabel:(id)label;
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
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)signalProgress:(unsigned int)progress;
- (void)touch;
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

@implementation CaptureMTLComputeCommandEncoder

- (void)waitForProgress:(unsigned int)progress
{
  v3 = *&progress;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject waitForProgress:v3];
  v5 = v15;
  *(v15 + 8) = -15709;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v3;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)waitForFence:(id)fence
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject waitForFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -16129;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  RetainArray(self->_retainedObjects, resources, count);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v9);
  bzero(&v26 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    resourcesCopy = resources;
    v13 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v15 = *resourcesCopy++;
      *v13++ = [v15 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject useResources:&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage];
  v16 = v27;
  *(v27 + 8) = -16046;
  v17 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v19 = *(*(&v26 + 1) + 24);
    v20 = BYTE10(v28);
    ++BYTE10(v28);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v23 = StreamArray(&v26, (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), resources, count);
  *v18 = var0;
  *(v18 + 1) = count;
  *(v18 + 2) = usage;
  v18[24] = v23;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)useResourceGroup:(id)group usage:(unint64_t)usage
{
  groupCopy = group;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResourceGroup_usage", "Resource groups", 0, 0);
  [groupCopy touch];
  v6 = groupCopy;
  if (groupCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:groupCopy];
      v6 = groupCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject useResourceGroup:baseObject usage:usage];
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  resourceCopy = resource;
  [resourceCopy touch];
  if (resourceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:resourceCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [resourceCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject useResource:baseObject usage:usage];

  v10 = v22;
  *(v22 + 8) = -16047;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [resourceCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = usage;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResidencySets_count", "Deprecated Residency Set API", 0, 0);
  RetainArray(self->_retainedObjects, sets, count);
  baseObject = self->_baseObject;
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  if (count)
  {
    v11 = v10;
    countCopy = count;
    do
    {
      v13 = *sets++;
      *v11 = [v13 baseObject];
      v11 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject useResidencySets:v10 count:count];
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_useResidencySet", "Deprecated Residency Set API", 0, 0);
  [setCopy touch];
  v4 = setCopy;
  if (setCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:setCopy];
      v4 = setCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v4 baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject useResidencySet:baseObject];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  RetainArray(self->_retainedObjects, heaps, count);
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v7 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v9 = 8 * count;
  __chkstk_darwin(v7);
  bzero(&v24 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    heapsCopy = heaps;
    v11 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v13 = *heapsCopy++;
      *v11++ = [v13 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject useHeaps:&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  v14 = v25;
  *(v25 + 8) = -16044;
  v15 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v17 = *(*(&v24 + 1) + 24);
    v18 = BYTE10(v26);
    ++BYTE10(v26);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v25 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v21 = StreamArray(&v24, (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), heaps, count);
  *v16 = var0;
  *(v16 + 1) = count;
  v16[16] = v21;
  *(v16 + 17) = 0;
  *(v16 + 5) = 0;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)useHeap:(id)heap
{
  heapCopy = heap;
  [heapCopy touch];
  if (heapCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:heapCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [heapCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject useHeap:baseObject];

  v8 = v20;
  *(v20 + 8) = -16045;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [heapCopy traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)updateFence:(id)fence
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject updateFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -16130;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)signalProgress:(unsigned int)progress
{
  v3 = *&progress;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject signalProgress:v3];
  v5 = v15;
  *(v15 + 8) = -15710;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v3;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject setVisibleFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15580;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setVisibleFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15581;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setThreadgroupPackingDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupPackingDisabled:disabledCopy];
  v5 = v15;
  *(v15 + 8) = -15278;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = disabledCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16328;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = length;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setThreadgroupDistributionModeWithClusterGroupIndex:(unsigned int)index
{
  v3 = *&index;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupDistributionModeWithClusterGroupIndex:v3];
  v5 = v15;
  *(v15 + 8) = -15279;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v3;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setThreadgroupDistributionMode:(int64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setThreadgroupDistributionMode:mode];
  v5 = v15;
  *(v15 + 8) = -15280;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = mode;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    texturesCopy = textures;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *texturesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject setTextures:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16333;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setTexture:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16334;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setSubstream:(unsigned int)substream
{
  v3 = *&substream;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setSubstream:v3];
  v5 = v15;
  *(v15 + 8) = -15711;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v3;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setStageInRegionWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setStageInRegionWithIndirectBuffer:baseObject indirectBufferOffset:offset];

  v10 = v22;
  *(v22 + 8) = -16017;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = offset;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setStageInRegion:(id *)region
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v6 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v6;
  v18[2] = *&region->var1.var1;
  [(MTLComputeCommandEncoderSPI *)baseObject setStageInRegion:v18];
  v7 = v20;
  *(v20 + 8) = -16100;
  v8 = BYTE9(v21);
  if (BYTE9(v21) > 8uLL)
  {
    v10 = *(*(&v19 + 1) + 24);
    v11 = BYTE10(v21);
    ++BYTE10(v21);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v20 + 1), v11 | 0x3800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v21));
    BYTE9(v21) += 56;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  v14 = *&region->var0.var2;
  v15 = *&region->var1.var1;
  *(v9 + 8) = *&region->var0.var0;
  *(v9 + 24) = v14;
  *(v9 + 40) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    statesCopy = states;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerStates:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16331;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = statesCopy;
    v15 = (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  v18 = clampsCopy;
  maxClampsCopy = maxClamps;
  v20 = location;
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerStates:&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v21 = v36;
  *(v36 + 8) = -16329;
  v22 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v24 = *(*(&v35 + 1) + 24);
    v25 = BYTE10(v37);
    ++BYTE10(v37);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v36 + 1), v25 | 0x2000000000) + 16;
    v22 = v25;
    v18 = clampsCopy;
  }

  else
  {
    v23 = (v21 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v35, (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v29 = GTTraceEncoder_storeBytes(&v35, v18, 4 * length);
  v30 = GTTraceEncoder_storeBytes(&v35, maxClampsCopy, 4 * length);
  *v23 = var0;
  *(v23 + 1) = v20;
  *(v23 + 2) = length;
  v23[24] = v28;
  v23[25] = v29;
  v23[26] = v30;
  *(v23 + 27) = 0;
  v23[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerState:baseObject lodMinClamp:index lodMaxClamp:v14 atIndex:v15];

  v16 = v28;
  *(v28 + 8) = -16330;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = index;
  *(v18 + 6) = clamp;
  *(v18 + 7) = maxClamp;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setSamplerState:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16332;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject setIntersectionFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15582;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setIntersectionFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15583;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setImageblockWidth:width height:height];
  v7 = v17;
  *(v17 + 8) = -16149;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = width;
  *(v9 + 2) = height;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setComputePipelineState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setComputePipelineState:baseObject];

  v8 = v20;
  *(v20 + 8) = -16337;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];
  if (traceStream2)
  {
    v16 = *traceStream2;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBytes:bytes length:length attributeStride:stride atIndex:index];
  v11 = v22;
  *(v22 + 8) = -15281;
  v12 = BYTE9(v23);
  if (BYTE9(v23) > 0x18uLL)
  {
    v14 = *(*(&v21 + 1) + 24);
    v15 = BYTE10(v23);
    ++BYTE10(v23);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v22 + 1), v15 | 0x2800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v23));
    BYTE9(v23) += 40;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v18 = GTTraceEncoder_storeBlob(&v21, bytes, length);
  }

  else
  {
    v18 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = length;
  *(v13 + 2) = stride;
  *(v13 + 3) = index;
  v13[32] = v18;
  *(v13 + 33) = 0;
  *(v13 + 9) = 0;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBytes:bytes length:length atIndex:index];
  v9 = v20;
  *(v20 + 8) = -16227;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v16 = GTTraceEncoder_storeBlob(&v19, bytes, length);
  }

  else
  {
    v16 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = index;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  v12 = 8 * length;
  __chkstk_darwin(v10);
  bzero(&v29 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = buffersCopy;
    v14 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  offsetsCopy = offsets;
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffers:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:location, length];
  v18 = v32;
  *(v32 + 8) = -16335;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x20uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 32;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v31, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v26 = GTTraceEncoder_storeBytes(&v31, offsetsCopy, 8 * length);
  *v20 = var0;
  *(v20 + 1) = location;
  *(v20 + 2) = length;
  v20[24] = v25;
  v20[25] = v26;
  *(v20 + 26) = 0;
  *(v20 + 15) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  offsetsCopy = offsets;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&offsetsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = buffersCopy;
    v15 = (&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  stridesCopy = strides;
  v19 = location;
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffers:&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy attributeStrides:strides withRange:location, length, offsetsCopy];
  v20 = v36;
  *(v36 + 8) = -15282;
  v21 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v23 = *(*(&v35 + 1) + 24);
    v24 = BYTE10(v37);
    ++BYTE10(v37);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v36 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v35, (&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v28 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v29 = GTTraceEncoder_storeBlob(&v35, offsetsCopy, length);
    v28 = boundaryTrackerInstance;
  }

  else
  {
    v29 = 0;
  }

  if ((*(v28 + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = GTTraceEncoder_storeBlob(&v35, stridesCopy, length);
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v29;
  v22[26] = v30;
  *(v22 + 27) = 0;
  v22[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBufferOffset:offset attributeStride:stride atIndex:index];
  v9 = v19;
  *(v19 + 8) = -15283;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = offset;
  *(v11 + 2) = stride;
  *(v11 + 3) = index;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setBufferOffset:offset atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16226;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = offset;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

  v14 = v26;
  *(v26 + 8) = -15284;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x18uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x2800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 40;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = offset;
  *(v16 + 3) = stride;
  *(v16 + 4) = index;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject setBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -16336;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = offset;
  *(v14 + 3) = index;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier
{
  barrierCopy = barrier;
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject sampleCountersInBuffer:baseObject atSampleIndex:index withBarrier:barrierCopy];

  v12 = v24;
  *(v24 + 8) = -15754;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = index;
  *(v14 + 6) = barrierCopy;
  *(v14 + 7) = 0;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -16323;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [groupCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [groupCopy UTF8String];
    v14 = strlen([groupCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)popDebugGroup
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -16322;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (void)memoryBarrierWithScope:(unint64_t)scope
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject memoryBarrierWithScope:scope];
  v5 = v15;
  *(v15 + 8) = -16009;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = scope;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  CaptureClearFuncSnapshot(scope, self->_snapshotMap);
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count
{
  countCopy = count;
  resourcesCopy = resources;
  RetainArray(self->_retainedObjects, resources, count);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v7 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v9 = 8 * countCopy;
  __chkstk_darwin(v7);
  bzero(&v25 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  if (countCopy)
  {
    v10 = resourcesCopy;
    v11 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = countCopy;
    do
    {
      v13 = *v10++;
      *v11++ = [v13 baseObject];
      --v12;
    }

    while (v12);
  }

  [(MTLComputeCommandEncoderSPI *)baseObject memoryBarrierWithResources:&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) count:countCopy];
  v14 = v26;
  *(v26 + 8) = -16008;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  v21 = StreamArray(&v25, (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), resourcesCopy, countCopy);
  *v16 = var0;
  *(v16 + 1) = countCopy;
  v16[16] = v21;
  *(v16 + 17) = 0;
  *(v16 + 5) = 0;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v27);
  for (*(v26 + 15) |= 8u; countCopy; --countCopy)
  {
    v24 = *resourcesCopy++;
    CaptureRemoveFuncSnapshot(v24, self->_snapshotMap);
  }
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v5 = v18;
  *(v18 + 8) = -16324;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [signpostCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [signpostCopy UTF8String];
    v14 = strlen([signpostCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)insertCompressedTextureReinterpretationFlush
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject insertCompressedTextureReinterpretationFlush];
  v3 = v13;
  *(v13 + 8) = -15511;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (void)endEncoding
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject endEncoding];
  v3 = v13;
  *(v13 + 8) = -16325;
  v4 = BYTE9(v14);
  if (BYTE9(v14) > 0x38uLL)
  {
    v6 = *(*(&v12 + 1) + 24);
    v7 = BYTE10(v14);
    ++BYTE10(v14);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v13 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v14));
    BYTE9(v14) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v14);
  *(v13 + 15) |= 8u;
}

- (void)encodeStartWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v6 = *&value;
  whileCopy = while;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeStartWhile_offset_comparison_referenceValue", "Command buffer jump", 0, 0);
  [whileCopy touch];
  v10 = whileCopy;
  if (whileCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:whileCopy];
      v10 = whileCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v10 baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject encodeStartWhile:baseObject offset:offset comparison:comparison referenceValue:v6];
}

- (void)encodeStartIf:(id)if offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v6 = *&value;
  ifCopy = if;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeStartIf_offset_comparison_referenceValue", "Command buffer jump", 0, 0);
  [ifCopy touch];
  v10 = ifCopy;
  if (ifCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:ifCopy];
      v10 = ifCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v10 baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject encodeStartIf:baseObject offset:offset comparison:comparison referenceValue:v6];
}

- (void)encodeStartElse
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeStartElse", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject encodeStartElse];
}

- (void)encodeStartDoWhile
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeStartDoWhile", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  [(MTLComputeCommandEncoderSPI *)baseObject encodeStartDoWhile];
}

- (BOOL)encodeEndWhile
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeEndWhile", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLComputeCommandEncoderSPI *)baseObject encodeEndWhile];
}

- (BOOL)encodeEndIf
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeEndIf", "Command buffer jump", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLComputeCommandEncoderSPI *)baseObject encodeEndIf];
}

- (BOOL)encodeEndDoWhile:(id)while offset:(unint64_t)offset comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v6 = *&value;
  whileCopy = while;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_encodeEndDoWhile_offset_comparison_referenceValue", "Command buffer jump", 0, 0);
  [whileCopy touch];
  if (whileCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:whileCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [whileCopy baseObject];
  v14 = [(MTLComputeCommandEncoderSPI *)baseObject encodeEndDoWhile:baseObject offset:offset comparison:comparison referenceValue:v6];

  return v14;
}

- (void)dispatchThreadsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadsWithIndirectBuffer:baseObject indirectBufferOffset:offset];

  v10 = v22;
  *(v22 + 8) = -16079;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = offset;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v21 = *threads;
  v20 = *threadgroup;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreads:&v21 threadsPerThreadgroup:&v20];
  v8 = v23;
  *(v23 + 8) = -16078;
  v9 = BYTE9(v24);
  if (BYTE9(v24) > 8uLL)
  {
    v11 = *(*(&v22 + 1) + 24);
    v12 = BYTE10(v24);
    ++BYTE10(v24);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v23 + 1), v12 | 0x3800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v24));
    BYTE9(v24) += 56;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threads->var2;
  v16 = threadgroup->var2;
  *v10 = var0;
  v17 = *&threadgroup->var0;
  *(v10 + 8) = *&threads->var0;
  *(v10 + 3) = var2;
  *(v10 + 2) = v17;
  *(v10 + 6) = v16;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerThreadgroup:(id *)threadgroup
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v24 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadgroupsWithIndirectBuffer:baseObject indirectBufferOffset:offset threadsPerThreadgroup:&v24];

  v12 = v27;
  *(v27 + 8) = -16220;
  v13 = BYTE9(v28);
  if (BYTE9(v28) > 0x10uLL)
  {
    v15 = *(*(&v26 + 1) + 24);
    v16 = BYTE10(v28);
    ++BYTE10(v28);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v27 + 1), v16 | 0x3000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v28));
    BYTE9(v28) += 48;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  v21 = threadgroup->var2;
  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = offset;
  *(v14 + 24) = *&threadgroup->var0;
  *(v14 + 5) = v21;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v21 = *threadgroups;
  v20 = *threadgroup;
  [(MTLComputeCommandEncoderSPI *)baseObject dispatchThreadgroups:&v21 threadsPerThreadgroup:&v20];
  v8 = v23;
  *(v23 + 8) = -16327;
  v9 = BYTE9(v24);
  if (BYTE9(v24) > 8uLL)
  {
    v11 = *(*(&v22 + 1) + 24);
    v12 = BYTE10(v24);
    ++BYTE10(v24);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v23 + 1), v12 | 0x3800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v24));
    BYTE9(v24) += 56;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroups->var2;
  v16 = threadgroup->var2;
  *v10 = var0;
  v17 = *&threadgroup->var0;
  *(v10 + 8) = *&threadgroups->var0;
  *(v10 + 3) = var2;
  *(v10 + 2) = v17;
  *(v10 + 6) = v16;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v7 = v17;
  *(v17 + 8) = -14963;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = stages;
  *(v9 + 2) = beforeStages;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -16339;
  v6 = BYTE9(v19);
  if (BYTE9(v19) > 0x30uLL)
  {
    v8 = *(*(&v17 + 1) + 24);
    v9 = BYTE10(v19);
    ++BYTE10(v19);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v18 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v19));
    BYTE9(v19) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [labelCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [labelCopy UTF8String];
    v14 = strlen([labelCopy UTF8String]);
    LOBYTE(uTF8String) = GTTraceEncoder_storeBytes(&v17, uTF8String2, v14 + 1);
  }

  *v7 = var0;
  v7[8] = uTF8String;
  *(v7 + 9) = 0;
  *(v7 + 3) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLComputeCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = CaptureMTLComputeCommandEncoder;
  v3 = [(CaptureMTLComputeCommandEncoder *)&v7 description];
  v4 = [(MTLComputeCommandEncoderSPI *)self->_baseObject description];
  v5 = [NSString stringWithFormat:@"%@ -> %@", v3, v4];

  return v5;
}

- (unint64_t)streamReference
{
  traceStream = self->_traceStream;
  if (traceStream)
  {
    return traceStream->var0;
  }

  else
  {
    return 0;
  }
}

- (void)touch
{
  traceStream = self->_traceStream;
  v3 = mach_absolute_time();
  if (traceStream)
  {
    v4 = atomic_load(&traceStream[1].var1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(&traceStream[1].var1, &v5, v4 & 0x3F | v3 & 0xFFFFFFFFFFFFFFC0);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
  }
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLComputeCommandEncoder_setAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLComputeCommandEncoderSPI *)baseObject setAccelerationStructure:baseObject atBufferIndex:index];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v11 = self->_baseObject;
  baseObject2 = [v7 baseObject];
  [(MTLComputeCommandEncoderSPI *)v11 setAccelerationStructure:baseObject2 atBufferIndex:index];

  v13 = v27;
  *(v27 + 8) = -15623;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v7 traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v23;
  *(v15 + 2) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
LABEL_17:
}

- (void)enableNullBufferBinds:(BOOL)binds
{
  bindsCopy = binds;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLComputeCommandEncoderSPI *)self->_baseObject enableNullBufferBinds:bindsCopy];
  v5 = v15;
  *(v15 + 8) = -15732;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = bindsCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  if ([bufferCopy size])
  {
    [bufferCopy touch];
    if (bufferCopy)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      }
    }

    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    [(MTLComputeCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];

    v11 = v51;
    *(v51 + 8) = -15964;
    v12 = BYTE9(v52);
    if (BYTE9(v52) > 0x10uLL)
    {
      v16 = *(*(&v50 + 1) + 24);
      v17 = BYTE10(v52);
      ++BYTE10(v52);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v51 + 1), v17 | 0x3000000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v52));
      BYTE9(v52) += 48;
    }

    *(v11 + 13) = v12;
    traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [bufferCopy traceStream];
    if (traceStream2)
    {
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = location;
    *(v13 + 3) = length;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v52);
    *(v51 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v26 = bufferCopy;
      v27 = MTLIndirectCommandBuffer_descriptor([v26 traceStream]);
      v28 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v27);
      FuncSnapshot = CaptureFindFuncSnapshot(v26, self->_snapshotMap);
      if (FuncSnapshot)
      {
        v30 = FuncSnapshot;
        v31 = 0;
        v32 = 0;
        SnapshotMemory = *(FuncSnapshot + 8);
      }

      else
      {
        v49 = 0;
        v32 = CreateIndirectComputeCommandBufferSnapshot(self, v26, v28, &v49);
        v31 = v49;
        SnapshotMemory = AllocateSnapshotMemory(&v50, v27, [v26 size]);
        pool = self->_pool;
        ht = self->_snapshotMap;
        streamReference = [v26 streamReference];
        v30 = apr_palloc(pool, 0x18uLL);
        *v30 = streamReference;
        apr_hash_set(ht, v30, 8, v30);
        v36 = *v51;
        v30[1] = SnapshotMemory;
        v30[2] = v36;
      }

      RestoreComputeCommandEncoder(self);
      v13[40] = SnapshotMemory[8];
      *(v13 + 4) = v30[2];
      v37 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v38 = DEVICEOBJECT(v37);

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = __69__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_withRange___block_invoke;
      v44[3] = &unk_2F1FF8;
      v45 = v31;
      v46 = v32;
      v47 = v28;
      v48 = SnapshotMemory;
      v39 = v28;
      v40 = v32;
      v41 = v31;
      [v38 addCompletedHandler:v44];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v14 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLComputeCommandEncoderSPI *)v14 executeCommandsInBuffer:baseObject2 withRange:location, length];
  }
}

void __69__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_withRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) length];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = GTMTLDecodeIndirectCommandBuffer(v2, *(a1 + 48));
    v7 = v3;
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = (v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    v6 = v3;
    memcpy(v5, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  if ([bufferCopy size])
  {
    [bufferCopy touch];
    if (bufferCopy)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      }
    }

    [indirectBufferCopy touch];
    if (indirectBufferCopy)
    {
      v11 = self->_retainedObjects;
      if (v11)
      {
        [(NSMutableSet *)v11 addObject:indirectBufferCopy];
      }
    }

    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v77);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    baseObject2 = [indirectBufferCopy baseObject];
    [(MTLComputeCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:baseObject2 indirectBufferOffset:offset];

    v15 = v78;
    *(v78 + 8) = -15963;
    v16 = BYTE9(v79);
    if (BYTE9(v79) > 0x10uLL)
    {
      v21 = *(*(&v77 + 1) + 24);
      v22 = BYTE10(v79);
      ++BYTE10(v79);
      v17 = GTTraceMemPool_allocateBytes(v21, *(&v78 + 1), v22 | 0x3000000000) + 16;
      v16 = v22;
    }

    else
    {
      v17 = (v15 + BYTE9(v79));
      BYTE9(v79) += 48;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [bufferCopy traceStream];
    if (traceStream2)
    {
      v26 = *traceStream2;
    }

    else
    {
      v26 = 0;
    }

    traceStream3 = [indirectBufferCopy traceStream];
    if (traceStream3)
    {
      v28 = *traceStream3;
    }

    else
    {
      v28 = 0;
    }

    *v17 = var0;
    *(v17 + 1) = v26;
    *(v17 + 2) = v28;
    *(v17 + 3) = offset;
    *(v17 + 4) = 0;
    *(v17 + 5) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v79);
    *(v78 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v33 = bufferCopy;
      v34 = MTLIndirectCommandBuffer_descriptor([v33 traceStream]);
      v35 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v34);
      FuncSnapshot = CaptureFindFuncSnapshot(v33, self->_snapshotMap);
      v66 = v35;
      v67 = v33;
      offsetCopy = offset;
      if (FuncSnapshot)
      {
        v64 = 0;
        v65 = 0;
        v60 = FuncSnapshot;
        v63 = *(FuncSnapshot + 8);
      }

      else
      {
        v76 = 0;
        v65 = CreateIndirectComputeCommandBufferSnapshot(self, v33, v35, &v76);
        v64 = v76;
        SnapshotMemory = AllocateSnapshotMemory(&v77, v34, [v33 size]);
        pool = self->_pool;
        snapshotMap = self->_snapshotMap;
        streamReference = [v33 streamReference];
        v41 = apr_palloc(pool, 0x18uLL);
        *v41 = streamReference;
        apr_hash_set(snapshotMap, v41, 8, v41);
        v63 = SnapshotMemory;
        v41[1] = SnapshotMemory;
        v60 = v41;
        v41[2] = *v78;
      }

      RestoreComputeCommandEncoder(self);
      selfCopy = self;
      v43 = indirectBufferCopy;
      device = [(CaptureMTLComputeCommandEncoder *)selfCopy device];
      v45 = DEVICEOBJECT(v43);

      device2 = [v45 device];
      v47 = [device2 newBufferWithLength:8 options:0];
      v48 = DEVICEOBJECT(selfCopy);

      v62 = v47;
      [v48 setBuffer:v47 offset:0 atIndex:0];
      [v48 setBuffer:v45 offset:offsetCopy atIndex:1];
      computePipelineCopyBuffer = [device computePipelineCopyBuffer];
      [v48 setComputePipelineState:computePipelineCopyBuffer];
      supportsNonUniformThreadgroupSize = [device2 supportsNonUniformThreadgroupSize];
      v81 = xmmword_2975D0;
      v82 = 1;
      if (supportsNonUniformThreadgroupSize)
      {
        *v80 = [computePipelineCopyBuffer threadExecutionWidth];
        *&v80[8] = vdupq_n_s64(1uLL);
        [v48 dispatchThreads:&v81 threadsPerThreadgroup:v80];
      }

      else
      {
        *v80 = vdupq_n_s64(1uLL);
        *&v80[16] = 1;
        [v48 dispatchThreadgroups:&v81 threadsPerThreadgroup:v80];
      }

      v51 = *(*(&v77 + 1) + 24);
      v52 = BYTE10(v79);
      ++BYTE10(v79);
      Bytes = GTTraceMemPool_allocateBytes(v51, *(&v78 + 1), v52 | 0x1000000100);
      v17[40] = v63[8];
      v17[41] = Bytes[8];
      *(v17 + 4) = v60[2];
      v54 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v55 = DEVICEOBJECT(v54);

      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = __95__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke;
      v69[3] = &unk_2F1FD0;
      v70 = v64;
      v71 = v65;
      v72 = v66;
      v73 = v62;
      v74 = v63;
      v75 = Bytes;
      v56 = v62;
      v57 = v66;
      v58 = v65;
      v59 = v64;
      [v55 addCompletedHandler:v69];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v18 = self->_baseObject;
    baseObject3 = [bufferCopy baseObject];
    baseObject4 = [indirectBufferCopy baseObject];
    [(MTLComputeCommandEncoderSPI *)v18 executeCommandsInBuffer:baseObject3 indirectBuffer:baseObject4 indirectBufferOffset:offset];
  }
}

float __95__CaptureMTLComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) length];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = GTMTLDecodeIndirectCommandBuffer(v2, *(a1 + 48));
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = (v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, [v3 bytes], objc_msgSend(v3, "length"));
  }

  v7 = [*(a1 + 56) contents];
  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = (v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  *&v10 = *v7;
  *(&v10 + 1) = HIDWORD(*v7);
  LODWORD(result) = *v7;
  *v9 = v10;
  return result;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -16338;
  v4 = BYTE9(v15);
  if (BYTE9(v15) > 0x38uLL)
  {
    v6 = *(*(&v13 + 1) + 24);
    v7 = BYTE10(v15);
    ++BYTE10(v15);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v14 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v15));
    BYTE9(v15) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v5 = var0;
  s();
  *v10 = v11;
  *(v10 + 8) = BYTE8(v15);
  *(v14 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  apr_pool_destroy(self->_pool);
  v12.receiver = self;
  v12.super_class = CaptureMTLComputeCommandEncoder;
  [(CaptureMTLComputeCommandEncoder *)&v12 dealloc];
}

- (CaptureMTLComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v20.receiver = self;
  v20.super_class = CaptureMTLComputeCommandEncoder;
  v9 = [(CaptureMTLComputeCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v14, *([bufferCopy traceStream] + 3));

    objc_storeWeak(&v10->_captureCommandBuffer, bufferCopy);
    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
  }

  return v10;
}

@end