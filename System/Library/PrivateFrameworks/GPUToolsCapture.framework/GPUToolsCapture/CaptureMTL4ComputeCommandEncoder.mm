@interface CaptureMTL4ComputeCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (CaptureMTL4ComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (GTAccelerationStructureDescriptorDownloader_MTL4)descriptorDownloader;
- (NSString)description;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (unint64_t)streamReference;
- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options;
- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index;
- (void)generateMipmapsForTexture:(id)texture;
- (void)insertDebugSignpost:(id)signpost;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)setArgumentTable:(id)table;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setLabel:(id)label;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)touch;
- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
@end

@implementation CaptureMTL4ComputeCommandEncoder

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  sizeCopy = size;
  [sizeCopy touch];
  v7 = sizeCopy;
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
      v7 = sizeCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeSerializedAccelerationStructureSize:baseObject toBuffer:var0, var1];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  [structureCopy touch];
  v7 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v7 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject toBuffer:var0, var1];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  structureCopy = structure;
  intoCopy = into;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  LOBYTE(baseObject) = [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject into:intoCopy];

  return baseObject;
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  structureCopy = structure;
  intoCopy = into;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v11 = unwrapMTLGenericBVHBuffersSPI(intoCopy);

  v12 = [(MTL4CommandEncoderSPI *)baseObject writeGenericBVHStructureOfAccelerationStructure:baseObject into:v11];
  return v12;
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  sizeCopy = size;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:baseObject toBuffer:var0, var1];

  v11 = v23;
  *(v23 + 8) = -14826;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x20uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x2000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 32;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v17 = traceStream->var0;
  }

  else
  {
    v17 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = v17;
  *(v13 + 1) = v19;
  *(v13 + 2) = var0;
  *(v13 + 3) = var1;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  depthCopy = depth;
  [depthCopy touch];
  if (depthCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:depthCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [depthCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeAccelerationStructureTraversalDepth:baseObject toBuffer:var0, var1];

  v11 = v23;
  *(v23 + 8) = -14827;
  v12 = BYTE9(v24);
  if (BYTE9(v24) > 0x20uLL)
  {
    v14 = *(*(&v22 + 1) + 24);
    v15 = BYTE10(v24);
    ++BYTE10(v24);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v23 + 1), v15 | 0x2000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v24));
    BYTE9(v24) += 32;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v17 = traceStream->var0;
  }

  else
  {
    v17 = 0;
  }

  traceStream2 = [depthCopy traceStream];
  if (traceStream2)
  {
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = v17;
  *(v13 + 1) = v19;
  *(v13 + 2) = var0;
  *(v13 + 3) = var1;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  dataCopy = data;
  [dataCopy touch];
  v7 = dataCopy;
  if (dataCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:dataCopy];
      v7 = dataCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject writeAccelerationStructureSerializationData:baseObject toBuffer:var0, var1];
}

- (void)waitForFence:(id)fence beforeEncoderStages:(unint64_t)stages
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

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject waitForFence:baseObject beforeEncoderStages:stages];

  v10 = v22;
  *(v22 + 8) = -15081;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = stages;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)updateFence:(id)fence afterEncoderStages:(unint64_t)stages
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

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject updateFence:baseObject afterEncoderStages:stages];

  v10 = v22;
  *(v22 + 8) = -15082;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = stages;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTL4CommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15083;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTL4CommandEncoderSPI *)self->_baseObject setImageblockWidth:width height:height];
  v7 = v17;
  *(v17 + 8) = -15084;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  [(MTL4CommandEncoderSPI *)baseObject setComputePipelineState:baseObject];

  v8 = v20;
  *(v20 + 8) = -15085;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)setArgumentTable:(id)table
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

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject setArgumentTable:baseObject];

  v8 = v20;
  *(v20 + 8) = -15086;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  [structureCopy touch];
  v7 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v7 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject serializePrimitiveAccelerationStructure:baseObject toBuffer:var0, var1];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_resetCommandsInBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject resetCommandsInBuffer:baseObject withRange:location, length];
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -15088;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  [(MTL4CommandEncoderSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -15089;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_optimizeIndirectCommandBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeIndirectCommandBuffer:baseObject withRange:location, length];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:baseObject slice:slice level:level];

  v12 = v24;
  *(v24 + 8) = -15091;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
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
  *(v14 + 2) = slice;
  *(v14 + 3) = level;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:baseObject];

  v8 = v20;
  *(v20 + 8) = -15092;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
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

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:baseObject slice:slice level:level];

  v12 = v24;
  *(v24 + 8) = -15093;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
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
  *(v14 + 2) = slice;
  *(v14 + 3) = level;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  accessCopy = access;
  [accessCopy touch];
  if (accessCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:accessCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [accessCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:baseObject];

  v8 = v20;
  *(v20 + 8) = -15094;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [accessCopy traceStream];
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

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v5 = v18;
  *(v18 + 8) = -15095;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)generateMipmapsForTexture:(id)texture
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

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject generateMipmapsForTexture:baseObject];

  v8 = v20;
  *(v20 + 8) = -15096;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index
{
  v5 = *&index;
  v6 = *&lastBatch;
  v7 = *&batch;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_filterCounterRangeWithFirstBatch_lastBatch_filterIndex", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;

  [(MTL4CommandEncoderSPI *)baseObject filterCounterRangeWithFirstBatch:v7 lastBatch:v6 filterIndex:v5];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  textureCopy = texture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color_pixelFormat", "Metal 4 Compute Command Encoder", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v21 = *&region->var0.var2;
  v22[0] = *&region->var0.var0;
  v22[1] = v21;
  v22[2] = *&region->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v22 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  textureCopy = texture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_color", "Metal 4 Compute Command Encoder", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v19 = *&region->var0.var2;
  v20[0] = *&region->var0.var0;
  v20[1] = v19;
  v20[2] = *&region->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v20 color:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  textureCopy = texture;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillTexture_level_slice_region_bytes_length", "Metal 4 Compute Command Encoder", 0, 0);
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v18 = *&region->var0.var2;
  v19[0] = *&region->var0.var0;
  v19[1] = v18;
  v19[2] = *&region->var1.var1;
  [(MTL4CommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v19 bytes:bytes length:length];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value
{
  valueCopy = value;
  length = range.length;
  location = range.location;
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

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject fillBuffer:baseObject range:location value:length, valueCopy];

  v13 = v25;
  *(v25 + 8) = -15100;
  v14 = BYTE9(v26);
  if (BYTE9(v26) > 0x18uLL)
  {
    v16 = *(*(&v24 + 1) + 24);
    v17 = BYTE10(v26);
    ++BYTE10(v26);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v25 + 1), v17 | 0x2800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v26));
    BYTE9(v26) += 40;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = location;
  *(v15 + 3) = length;
  v15[32] = valueCopy;
  *(v15 + 33) = 0;
  *(v15 + 9) = 0;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  v5 = *&pattern4;
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_fillBuffer_range_pattern4", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v9 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v9 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v9 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject fillBuffer:baseObject range:location pattern4:length, v5];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_withRange", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v7 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v7 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_executeCommandsInBuffer_indirectBuffer", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  v6 = bufferCopy;
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      v6 = bufferCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:indirectBuffer];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_endEncodingAndRetrieveProgramAddressTable", "Metal 4 Profiling SPI", 0, 0);
  baseObject = self->_baseObject;

  return [(MTL4CommandEncoderSPI *)baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTL4CommandEncoderSPI *)self->_baseObject dispatchThreadsWithIndirectBuffer:buffer];
  v5 = v15;
  *(v15 + 8) = -15105;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = buffer;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
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
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreads:&v21 threadsPerThreadgroup:&v20];
  v8 = v23;
  *(v23 + 8) = -15106;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v18 = *threadgroup;
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreadgroupsWithIndirectBuffer:buffer threadsPerThreadgroup:&v18];
  v8 = v20;
  *(v20 + 8) = -15107;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x18uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x2800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 40;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroup->var2;
  *v10 = var0;
  *(v10 + 1) = buffer;
  *(v10 + 1) = *&threadgroup->var0;
  *(v10 + 4) = var2;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
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
  [(MTL4CommandEncoderSPI *)baseObject dispatchThreadgroups:&v21 threadsPerThreadgroup:&v20];
  v8 = v23;
  *(v23 + 8) = -15108;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  [structureCopy touch];
  v7 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v7 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v7 baseObject];
  [(MTL4CommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBuffer:var0, var1];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  destinationCopy = destination;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTL4ComputeCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex", "Metal 4 Compute Command Encoder", 0, 0);
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [destinationCopy touch];
  if (destinationCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:destinationCopy];
    }
  }

  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyIndirectCommandBuffer:baseObject sourceRange:location destination:length destinationIndex:baseObject2, index];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:toTextureCopy];
    }
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject toTexture:baseObject2];

  v13 = v27;
  *(v27 + 8) = -15111;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v23 = *traceStream3;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = v23;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:toTextureCopy];
    }
  }

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:count levelCount:levelCount];

  v21 = *(&v36 + 1);
  v22 = v37;
  *(v37 + 8) = -15112;
  v23 = *(v21 + 24);
  v24 = BYTE10(v38);
  ++BYTE10(v38);
  Bytes = GTTraceMemPool_allocateBytes(v23, *(&v37 + 1), v24 | 0x4800000000);
  *(v22 + 13) = v24;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v29 = *traceStream2;
  }

  else
  {
    v29 = 0;
  }

  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v31 = *traceStream3;
  }

  else
  {
    v31 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v29;
  *(Bytes + 4) = slice;
  *(Bytes + 5) = level;
  *(Bytes + 6) = v31;
  *(Bytes + 7) = destinationSlice;
  *(Bytes + 8) = destinationLevel;
  *(Bytes + 9) = count;
  *(Bytes + 10) = levelCount;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v38);
  *(v37 + 15) |= 8u;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  textureCopy = texture;
  toTextureCopy = toTexture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [toTextureCopy touch];
  if (toTextureCopy)
  {
    v19 = self->_retainedObjects;
    if (v19)
    {
      [(NSMutableSet *)v19 addObject:toTextureCopy];
    }
  }

  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v52);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  v50 = *&origin->var0;
  var2 = origin->var2;
  v48 = *&size->var0;
  v49 = size->var2;
  v47 = *destinationOrigin;
  levelCopy = level;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v50 sourceSize:&v48 toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v47];

  v23 = *(&v52 + 1);
  v24 = v53;
  *(v53 + 8) = -15113;
  v25 = *(v23 + 24);
  v26 = BYTE10(v54);
  ++BYTE10(v54);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v53 + 1), v26 | 0x8000000000);
  *(v24 + 13) = v26;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  v45 = textureCopy;
  if (traceStream2)
  {
    v31 = *traceStream2;
  }

  else
  {
    v31 = 0;
  }

  v33 = origin->var0;
  var1 = origin->var1;
  v34 = origin->var2;
  v36 = size->var0;
  v35 = size->var1;
  v37 = size->var2;
  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v39 = *traceStream3;
  }

  else
  {
    v39 = 0;
  }

  v40 = destinationOrigin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v31;
  *(Bytes + 4) = slice;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 12) = v39;
  *(Bytes + 13) = destinationSlice;
  *(Bytes + 14) = destinationLevel;
  v41 = *&destinationOrigin->var0;
  *(Bytes + 6) = v33;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v34;
  *(Bytes + 9) = v36;
  *(Bytes + 10) = v35;
  *(Bytes + 11) = v37;
  *(Bytes + 120) = v41;
  *(Bytes + 17) = v40;
  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v54);
  *(v53 + 15) |= 8u;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  textureCopy = texture;
  bufferCopy = buffer;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v21 = self->_retainedObjects;
    if (v21)
    {
      [(NSMutableSet *)v21 addObject:bufferCopy];
    }
  }

  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v51);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v49 = *&origin->var0;
  var2 = origin->var2;
  v47 = *&size->var0;
  v48 = size->var2;
  sliceCopy = slice;
  levelCopy = level;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v49 sourceSize:&v47 toBuffer:baseObject2 destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];

  v25 = *(&v51 + 1);
  v26 = v52;
  *(v52 + 8) = -15114;
  v27 = *(v25 + 24);
  v28 = BYTE10(v53);
  ++BYTE10(v53);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v52 + 1), v28 | 0x7800000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  v46 = textureCopy;
  if (traceStream2)
  {
    v33 = *traceStream2;
  }

  else
  {
    v33 = 0;
  }

  v35 = origin->var0;
  var1 = origin->var1;
  v36 = origin->var2;
  v38 = size->var0;
  v37 = size->var1;
  v39 = size->var2;
  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v41 = *traceStream3;
  }

  else
  {
    v41 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v33;
  *(Bytes + 4) = sliceCopy;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 6) = v35;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v36;
  *(Bytes + 9) = v38;
  *(Bytes + 10) = v37;
  *(Bytes + 11) = v39;
  *(Bytes + 12) = v41;
  *(Bytes + 13) = offset;
  *(Bytes + 14) = row;
  *(Bytes + 15) = image;
  *(Bytes + 16) = options;
  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v53);
  *(v52 + 15) |= 8u;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  textureCopy = texture;
  bufferCopy = buffer;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:bufferCopy];
    }
  }

  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v48 = *&origin->var0;
  var2 = origin->var2;
  v46 = *&size->var0;
  v47 = size->var2;
  sliceCopy = slice;
  levelCopy = level;
  [(MTL4CommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v48 sourceSize:&v46 toBuffer:baseObject2 destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image];

  v24 = *(&v50 + 1);
  v25 = v51;
  *(v51 + 8) = -15115;
  v26 = *(v24 + 24);
  v27 = BYTE10(v52);
  ++BYTE10(v52);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v51 + 1), v27 | 0x7000000000);
  *(v25 + 13) = v27;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  v45 = textureCopy;
  if (traceStream2)
  {
    v32 = *traceStream2;
  }

  else
  {
    v32 = 0;
  }

  v34 = origin->var0;
  var1 = origin->var1;
  v35 = origin->var2;
  v37 = size->var0;
  v36 = size->var1;
  v38 = size->var2;
  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v40 = *traceStream3;
  }

  else
  {
    v40 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v32;
  *(Bytes + 4) = sliceCopy;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 6) = v34;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v35;
  *(Bytes + 9) = v37;
  *(Bytes + 10) = v36;
  *(Bytes + 11) = v38;
  *(Bytes + 12) = v40;
  *(Bytes + 13) = offset;
  *(Bytes + 14) = row;
  *(Bytes + 15) = image;
  s();
  *v41 = v42;
  *(v41 + 8) = BYTE8(v52);
  *(v51 + 15) |= 8u;
}

- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions
{
  tensorCopy = tensor;
  toTensorCopy = toTensor;
  destinationDimensionsCopy = destinationDimensions;
  destinationOriginCopy = destinationOrigin;
  dimensionsCopy = dimensions;
  originCopy = origin;
  [tensorCopy touch];
  if (tensorCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tensorCopy];
    }
  }

  [toTensorCopy touch];
  if (toTensorCopy)
  {
    v21 = self->_retainedObjects;
    if (v21)
    {
      [(NSMutableSet *)v21 addObject:toTensorCopy];
    }
  }

  v113 = 0u;
  v114 = 0u;
  v112 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v112);
  baseObject = self->_baseObject;
  v111 = tensorCopy;
  baseObject = [tensorCopy baseObject];
  v110 = toTensorCopy;
  baseObject2 = [toTensorCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromTensor:baseObject sourceOrigin:originCopy sourceDimensions:dimensionsCopy toTensor:baseObject2 destinationOrigin:destinationOriginCopy destinationDimensions:destinationDimensionsCopy];

  v25 = *(&v112 + 1);
  v26 = v113;
  *(v113 + 8) = -14812;
  v27 = *(v25 + 24);
  v28 = BYTE10(v114);
  ++BYTE10(v114);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v113 + 1), v28 | 0x23800000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v111 traceStream];
  if (traceStream2)
  {
    v108 = *traceStream2;
  }

  else
  {
    v108 = 0;
  }

  rank = [originCopy rank];
  v106 = *[originCopy extents];
  v105 = *([originCopy extents] + 1);
  v104 = *([originCopy extents] + 2);
  v103 = *([originCopy extents] + 3);
  v102 = *([originCopy extents] + 4);
  v101 = *([originCopy extents] + 5);
  v100 = *([originCopy extents] + 6);
  v99 = *([originCopy extents] + 7);
  v98 = *([originCopy extents] + 8);
  v97 = *([originCopy extents] + 9);
  v96 = *([originCopy extents] + 10);
  v95 = *([originCopy extents] + 11);
  v94 = *([originCopy extents] + 12);
  v93 = *([originCopy extents] + 13);
  v92 = *([originCopy extents] + 14);
  extents = [originCopy extents];

  v91 = extents[15];
  rank2 = [dimensionsCopy rank];
  v89 = *[dimensionsCopy extents];
  v88 = *([dimensionsCopy extents] + 1);
  v87 = *([dimensionsCopy extents] + 2);
  v86 = *([dimensionsCopy extents] + 3);
  v85 = *([dimensionsCopy extents] + 4);
  v84 = *([dimensionsCopy extents] + 5);
  v83 = *([dimensionsCopy extents] + 6);
  v82 = *([dimensionsCopy extents] + 7);
  v81 = *([dimensionsCopy extents] + 8);
  v80 = *([dimensionsCopy extents] + 9);
  v79 = *([dimensionsCopy extents] + 10);
  v78 = *([dimensionsCopy extents] + 11);
  v77 = *([dimensionsCopy extents] + 12);
  v76 = *([dimensionsCopy extents] + 13);
  v75 = *([dimensionsCopy extents] + 14);
  extents2 = [dimensionsCopy extents];

  v74 = extents2[15];
  traceStream3 = [v110 traceStream];
  if (traceStream3)
  {
    v73 = *traceStream3;
  }

  else
  {
    v73 = 0;
  }

  rank3 = [destinationOriginCopy rank];
  v71 = *[destinationOriginCopy extents];
  v70 = *([destinationOriginCopy extents] + 1);
  v69 = *([destinationOriginCopy extents] + 2);
  v68 = *([destinationOriginCopy extents] + 3);
  v67 = *([destinationOriginCopy extents] + 4);
  v66 = *([destinationOriginCopy extents] + 5);
  v65 = *([destinationOriginCopy extents] + 6);
  v64 = *([destinationOriginCopy extents] + 7);
  v63 = *([destinationOriginCopy extents] + 8);
  v62 = *([destinationOriginCopy extents] + 9);
  v61 = *([destinationOriginCopy extents] + 10);
  v60 = *([destinationOriginCopy extents] + 11);
  v59 = *([destinationOriginCopy extents] + 12);
  v58 = *([destinationOriginCopy extents] + 13);
  v57 = *([destinationOriginCopy extents] + 14);
  extents3 = [destinationOriginCopy extents];

  v56 = extents3[15];
  rank4 = [destinationDimensionsCopy rank];
  v54 = *[destinationDimensionsCopy extents];
  v53 = *([destinationDimensionsCopy extents] + 1);
  v52 = *([destinationDimensionsCopy extents] + 2);
  v51 = *([destinationDimensionsCopy extents] + 3);
  v50 = *([destinationDimensionsCopy extents] + 4);
  v49 = *([destinationDimensionsCopy extents] + 5);
  v48 = *([destinationDimensionsCopy extents] + 6);
  v47 = *([destinationDimensionsCopy extents] + 7);
  v36 = *([destinationDimensionsCopy extents] + 8);
  v37 = *([destinationDimensionsCopy extents] + 9);
  v38 = *([destinationDimensionsCopy extents] + 10);
  v39 = *([destinationDimensionsCopy extents] + 11);
  v40 = *([destinationDimensionsCopy extents] + 12);
  v41 = *([destinationDimensionsCopy extents] + 13);
  v42 = *([destinationDimensionsCopy extents] + 14);
  extents4 = [destinationDimensionsCopy extents];

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v108;
  v44 = extents4[15];
  *(Bytes + 4) = rank;
  *(Bytes + 5) = v106;
  *(Bytes + 6) = v105;
  *(Bytes + 7) = v104;
  *(Bytes + 8) = v103;
  *(Bytes + 9) = v102;
  *(Bytes + 10) = v101;
  *(Bytes + 11) = v100;
  *(Bytes + 12) = v99;
  *(Bytes + 13) = v98;
  *(Bytes + 14) = v97;
  *(Bytes + 15) = v96;
  *(Bytes + 16) = v95;
  *(Bytes + 17) = v94;
  *(Bytes + 18) = v93;
  *(Bytes + 19) = v92;
  *(Bytes + 20) = v91;
  *(Bytes + 21) = rank2;
  *(Bytes + 22) = v89;
  *(Bytes + 23) = v88;
  *(Bytes + 24) = v87;
  *(Bytes + 25) = v86;
  *(Bytes + 26) = v85;
  *(Bytes + 27) = v84;
  *(Bytes + 28) = v83;
  *(Bytes + 29) = v82;
  *(Bytes + 30) = v81;
  *(Bytes + 31) = v80;
  *(Bytes + 32) = v79;
  *(Bytes + 33) = v78;
  *(Bytes + 34) = v77;
  *(Bytes + 35) = v76;
  *(Bytes + 36) = v75;
  *(Bytes + 37) = v74;
  *(Bytes + 38) = v73;
  *(Bytes + 39) = rank3;
  *(Bytes + 40) = v71;
  *(Bytes + 41) = v70;
  *(Bytes + 42) = v69;
  *(Bytes + 43) = v68;
  *(Bytes + 44) = v67;
  *(Bytes + 45) = v66;
  *(Bytes + 46) = v65;
  *(Bytes + 47) = v64;
  *(Bytes + 48) = v63;
  *(Bytes + 49) = v62;
  *(Bytes + 50) = v61;
  *(Bytes + 51) = v60;
  *(Bytes + 52) = v59;
  *(Bytes + 53) = v58;
  *(Bytes + 54) = v57;
  *(Bytes + 55) = v56;
  *(Bytes + 56) = rank4;
  *(Bytes + 57) = v54;
  *(Bytes + 58) = v53;
  *(Bytes + 59) = v52;
  *(Bytes + 60) = v51;
  *(Bytes + 61) = v50;
  *(Bytes + 62) = v49;
  *(Bytes + 63) = v48;
  *(Bytes + 64) = v47;
  *(Bytes + 65) = v36;
  *(Bytes + 66) = v37;
  *(Bytes + 67) = v38;
  *(Bytes + 68) = v39;
  *(Bytes + 69) = v40;
  *(Bytes + 70) = v41;
  *(Bytes + 71) = v42;
  *(Bytes + 72) = v44;
  s();
  *v45 = v46;
  *(v45 + 8) = BYTE8(v114);
  *(v113 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  bufferCopy = buffer;
  toBufferCopy = toBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [toBufferCopy touch];
  if (toBufferCopy)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:toBufferCopy];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [toBufferCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset toBuffer:baseObject2 destinationOffset:destinationOffset size:size];

  v19 = v33;
  *(v33 + 8) = -15117;
  v20 = BYTE9(v34);
  if (BYTE9(v34) > 0x10uLL)
  {
    v22 = *(*(&v32 + 1) + 24);
    v23 = BYTE10(v34);
    ++BYTE10(v34);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v33 + 1), v23 | 0x3000000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v34));
    BYTE9(v34) += 48;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  traceStream3 = [toBufferCopy traceStream];
  if (traceStream3)
  {
    v29 = *traceStream3;
  }

  else
  {
    v29 = 0;
  }

  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = offset;
  *(v21 + 3) = v29;
  *(v21 + 4) = destinationOffset;
  *(v21 + 5) = size;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  bufferCopy = buffer;
  textureCopy = texture;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [textureCopy touch];
  if (textureCopy)
  {
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:textureCopy];
    }
  }

  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v49);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [textureCopy baseObject];
  v47 = *&size->var0;
  var2 = size->var2;
  v46 = *origin;
  rowCopy = row;
  rowCopy2 = row;
  imageCopy = image;
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset sourceBytesPerRow:rowCopy2 sourceBytesPerImage:image sourceSize:&v47 toTexture:baseObject2 destinationSlice:slice destinationLevel:level destinationOrigin:&v46 options:options];

  v26 = *(&v49 + 1);
  v27 = v50;
  *(v50 + 8) = -15118;
  v28 = *(v26 + 24);
  v29 = BYTE10(v51);
  ++BYTE10(v51);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v50 + 1), v29 | 0x7800000000);
  *(v27 + 13) = v29;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v34 = *traceStream2;
  }

  else
  {
    v34 = 0;
  }

  v35 = size->var0;
  var1 = size->var1;
  v37 = size->var2;
  traceStream3 = [textureCopy traceStream];
  if (traceStream3)
  {
    v39 = *traceStream3;
  }

  else
  {
    v39 = 0;
  }

  v40 = origin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v34;
  *(Bytes + 4) = offset;
  *(Bytes + 5) = rowCopy;
  *(Bytes + 10) = v39;
  *(Bytes + 11) = slice;
  *(Bytes + 12) = level;
  v41 = *&origin->var0;
  *(Bytes + 6) = imageCopy;
  *(Bytes + 7) = v35;
  *(Bytes + 8) = var1;
  *(Bytes + 9) = v37;
  *(Bytes + 104) = v41;
  *(Bytes + 15) = v40;
  *(Bytes + 16) = options;
  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v51);
  *(v50 + 15) |= 8u;
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  bufferCopy = buffer;
  textureCopy = texture;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [textureCopy touch];
  if (textureCopy)
  {
    v19 = self->_retainedObjects;
    if (v19)
    {
      [(NSMutableSet *)v19 addObject:textureCopy];
    }
  }

  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v48);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [textureCopy baseObject];
  v46 = *&size->var0;
  var2 = size->var2;
  v45 = *origin;
  rowCopy = row;
  rowCopy2 = row;
  imageCopy = image;
  [(MTL4CommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset sourceBytesPerRow:rowCopy2 sourceBytesPerImage:image sourceSize:&v46 toTexture:baseObject2 destinationSlice:slice destinationLevel:level destinationOrigin:&v45];

  v25 = *(&v48 + 1);
  v26 = v49;
  *(v49 + 8) = -15119;
  v27 = *(v25 + 24);
  v28 = BYTE10(v50);
  ++BYTE10(v50);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v49 + 1), v28 | 0x7000000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
    v33 = *traceStream2;
  }

  else
  {
    v33 = 0;
  }

  v34 = size->var0;
  var1 = size->var1;
  v36 = size->var2;
  traceStream3 = [textureCopy traceStream];
  if (traceStream3)
  {
    v38 = *traceStream3;
  }

  else
  {
    v38 = 0;
  }

  v39 = origin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v33;
  *(Bytes + 4) = offset;
  *(Bytes + 5) = rowCopy;
  *(Bytes + 10) = v38;
  *(Bytes + 11) = slice;
  *(Bytes + 12) = level;
  v40 = *&origin->var0;
  *(Bytes + 6) = imageCopy;
  *(Bytes + 7) = v34;
  *(Bytes + 8) = var1;
  *(Bytes + 9) = v36;
  *(Bytes + 104) = v40;
  *(Bytes + 15) = v39;
  s();
  *v41 = v42;
  *(v41 + 8) = BYTE8(v50);
  *(v49 + 15) |= 8u;
}

- (void)barrierAfterStages:(unint64_t)stages beforeQueueStages:(unint64_t)queueStages visibilityOptions:(unint64_t)options
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterStages:stages beforeQueueStages:queueStages visibilityOptions:options];
  v9 = v19;
  *(v19 + 8) = -14813;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = stages;
  *(v11 + 2) = queueStages;
  *(v11 + 3) = options;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages visibilityOptions:(unint64_t)options
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages visibilityOptions:options];
  v9 = v19;
  *(v19 + 8) = -14814;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = stages;
  *(v11 + 2) = beforeStages;
  *(v11 + 3) = options;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)barrierAfterEncoderStages:(unint64_t)stages beforeEncoderStages:(unint64_t)encoderStages visibilityOptions:(unint64_t)options
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4CommandEncoderSPI *)self->_baseObject barrierAfterEncoderStages:stages beforeEncoderStages:encoderStages visibilityOptions:options];
  v9 = v19;
  *(v19 + 8) = -14815;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = stages;
  *(v11 + 2) = encoderStages;
  *(v11 + 3) = options;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTL4CommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15127;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  v5 = [(MTL4CommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4ComputeCommandEncoder;
  v3 = [(CaptureMTL4ComputeCommandEncoder *)&v7 description];
  v4 = [(MTL4CommandEncoderSPI *)self->_baseObject description];
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

- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  structuresCopy = structures;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  RetainNSArray(self->_retainedObjects, structuresCopy);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v13 = unwrapNSArray(structuresCopy);

  [(MTL4CommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject referencedAccelerationStructures:v13 fromBuffer:var0, var1];
}

- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  structuresCopy = structures;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  RetainNSArray(self->_retainedObjects, structuresCopy);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v13 = unwrapNSArray(structuresCopy);

  [(MTL4CommandEncoderSPI *)baseObject serializeInstanceAccelerationStructure:baseObject referencedAccelerationStructures:v13 toBuffer:var0, var1];
}

- (void)dealloc
{
  GTAccelerationStructureDescriptorDownloader_MTL4_destroy(self->_descriptorDownloader);
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15109;
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
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
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
  v12.receiver = self;
  v12.super_class = CaptureMTL4ComputeCommandEncoder;
  [(CaptureMTL4ComputeCommandEncoder *)&v12 dealloc];
}

- (void)endEncoding
{
  GTAccelerationStructureDescriptorDownloader_processEndEncoding(self->_descriptorDownloader, a2);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTL4CommandEncoderSPI *)self->_baseObject endEncoding];
  descriptorDownloader = self->_descriptorDownloader;
  accelerationStructureDescriptorProcessEvent = [(CaptureMTL4CommandBuffer *)self->_captureCommandBuffer accelerationStructureDescriptorProcessEvent];
  GTAccelerationStructureDescriptorDownloader_MTL4_postProcess(descriptorDownloader, accelerationStructureDescriptorProcessEvent);

  v5 = v15;
  *(v15 + 8) = -15104;
  v6 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v8 = *(*(&v14 + 1) + 24);
    v9 = BYTE10(v16);
    ++BYTE10(v16);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v15 + 1), v9 | 0x800000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  destinationCopy = destination;
  descriptorCopy = descriptor;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [destinationCopy touch];
  if (destinationCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:destinationCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v42);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:descriptorCopy destination:baseObject2 scratchBuffer:var0 options:var1, options];

  v21 = v43;
  *(v43 + 8) = -14828;
  v22 = BYTE9(v44);
  optionsCopy = options;
  if (BYTE9(v44) > 8uLL)
  {
    v24 = *(*(&v42 + 1) + 24);
    v25 = BYTE10(v44);
    ++BYTE10(v44);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v43 + 1), v25 | 0x3800000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v44));
    BYTE9(v44) += 56;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v39 = traceStream->var0;
  }

  else
  {
    v39 = 0;
  }

  v27 = descriptorCopy;
  traceStream2 = [structureCopy traceStream];
  v29 = var0;
  if (traceStream2)
  {
    v30 = *traceStream2;
  }

  else
  {
    v30 = 0;
  }

  v31 = var1;
  traceStream3 = [destinationCopy traceStream];
  if (traceStream3)
  {
    v33 = *traceStream3;
  }

  else
  {
    v33 = 0;
  }

  v34 = SaveMTL4AccelerationStructureDescriptor(&v42, v27);

  *v23 = v40;
  *(v23 + 1) = v30;
  *(v23 + 2) = v33;
  *(v23 + 3) = v29;
  *(v23 + 4) = v31;
  *(v23 + 5) = optionsCopy;
  v23[48] = v34;
  *(v23 + 49) = 0;
  *(v23 + 13) = 0;
  v35 = destinationCopy;
  v36 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processRefit([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v36, v35);

  s();
  *v37 = v38;
  *(v37 + 8) = BYTE8(v44);
  *(v43 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  destinationCopy = destination;
  descriptorCopy = descriptor;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [destinationCopy touch];
  if (destinationCopy)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:destinationCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  v36 = var0;
  [(MTL4CommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:descriptorCopy destination:baseObject2 scratchBuffer:var0, var1];

  v19 = v38;
  *(v38 + 8) = -14829;
  v20 = BYTE9(v39);
  v21 = var1;
  if (BYTE9(v39) > 0x10uLL)
  {
    v23 = *(*(&v37 + 1) + 24);
    v24 = BYTE10(v39);
    ++BYTE10(v39);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v38 + 1), v24 | 0x3000000000) + 16;
    v20 = v24;
  }

  else
  {
    v22 = (v19 + BYTE9(v39));
    BYTE9(v39) += 48;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v26 = traceStream->var0;
  }

  else
  {
    v26 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  traceStream3 = [destinationCopy traceStream];
  if (traceStream3)
  {
    v30 = *traceStream3;
  }

  else
  {
    v30 = 0;
  }

  v31 = SaveMTL4AccelerationStructureDescriptor(&v37, descriptorCopy);

  *v22 = v26;
  *(v22 + 1) = v28;
  *(v22 + 2) = v30;
  *(v22 + 3) = v36;
  *(v22 + 4) = v21;
  v22[40] = v31;
  *(v22 + 41) = 0;
  *(v22 + 11) = 0;
  v32 = destinationCopy;
  v33 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processRefit([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v33, v32);

  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  structureCopy = structure;
  accelerationStructureCopy = accelerationStructure;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [accelerationStructureCopy touch];
  if (accelerationStructureCopy)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:accelerationStructureCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(accelerationStructureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyAndCompactAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

  v13 = v29;
  *(v29 + 8) = -14830;
  v14 = BYTE9(v30);
  if (BYTE9(v30) > 0x28uLL)
  {
    v16 = *(*(&v28 + 1) + 24);
    v17 = BYTE10(v30);
    ++BYTE10(v30);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v29 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v30));
    BYTE9(v30) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  traceStream3 = [accelerationStructureCopy traceStream];
  if (traceStream3)
  {
    v23 = *traceStream3;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = v23;
  v24 = accelerationStructureCopy;
  v25 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processCopy([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v25, v24, 1);

  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  structureCopy = structure;
  accelerationStructureCopy = accelerationStructure;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [accelerationStructureCopy touch];
  if (accelerationStructureCopy)
  {
    v9 = self->_retainedObjects;
    if (v9)
    {
      [(NSMutableSet *)v9 addObject:accelerationStructureCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(accelerationStructureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject copyAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

  v13 = v29;
  *(v29 + 8) = -14831;
  v14 = BYTE9(v30);
  if (BYTE9(v30) > 0x28uLL)
  {
    v16 = *(*(&v28 + 1) + 24);
    v17 = BYTE10(v30);
    ++BYTE10(v30);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v29 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v30));
    BYTE9(v30) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v21 = *traceStream2;
  }

  else
  {
    v21 = 0;
  }

  traceStream3 = [accelerationStructureCopy traceStream];
  if (traceStream3)
  {
    v23 = *traceStream3;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v21;
  *(v15 + 2) = v23;
  v24 = accelerationStructureCopy;
  v25 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processCopy([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v25, v24, 0);

  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  structureCopy = structure;
  descriptorCopy = descriptor;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v12 = unwrapMTL4AccelerationStructureDescriptor(descriptorCopy);
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  [(MTL4CommandEncoderSPI *)baseObject buildAccelerationStructure:baseObject descriptor:v12 scratchBuffer:var0, var1];

  v15 = v29;
  *(v29 + 8) = -14832;
  v16 = BYTE9(v30);
  if (BYTE9(v30) > 0x18uLL)
  {
    v18 = *(*(&v28 + 1) + 24);
    v19 = BYTE10(v30);
    ++BYTE10(v30);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v29 + 1), v19 | 0x2800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v30));
    BYTE9(v30) += 40;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTL4ComputeCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v21 = traceStream->var0;
  }

  else
  {
    v21 = 0;
  }

  traceStream2 = [structureCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  v24 = SaveMTL4AccelerationStructureDescriptor(&v28, descriptorCopy);

  *v17 = v21;
  *(v17 + 1) = v23;
  *(v17 + 2) = var0;
  *(v17 + 3) = var1;
  v17[32] = v24;
  *(v17 + 33) = 0;
  *(v17 + 9) = 0;
  v25 = structureCopy;
  GTAccelerationStructureDescriptorDownloader_processBuild([(CaptureMTL4ComputeCommandEncoder *)self descriptorDownloader], v25, v12);

  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (CaptureMTL4ComputeCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v22.receiver = self;
  v22.super_class = CaptureMTL4ComputeCommandEncoder;
  v9 = [(CaptureMTL4ComputeCommandEncoder *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    objc_storeStrong(&v10->_captureCommandBuffer, buffer);
    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v14, *([bufferCopy traceStream] + 3));

    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];

    v19 = objc_alloc_init(NSMutableDictionary);
    retainedDescriptorObjectsByStreamRef = v10->_retainedDescriptorObjectsByStreamRef;
    v10->_retainedDescriptorObjectsByStreamRef = v19;

    v10->_descriptorDownloader = 0;
  }

  return v10;
}

- (GTAccelerationStructureDescriptorDownloader_MTL4)descriptorDownloader
{
  result = self->_descriptorDownloader;
  if (!result)
  {
    result = GTAccelerationStructureDescriptorDownloader_MTL4_make(self->_captureDevice, self->_captureCommandBuffer, self, [(CaptureMTL4CommandBuffer *)self->_captureCommandBuffer accelerationStructureCommandEncodingPreamble]);
    self->_descriptorDownloader = result;
  }

  return result;
}

@end