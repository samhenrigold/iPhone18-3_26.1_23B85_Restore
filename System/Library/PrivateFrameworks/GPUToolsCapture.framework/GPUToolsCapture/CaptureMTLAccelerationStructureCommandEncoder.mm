@interface CaptureMTLAccelerationStructureCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (CaptureMTLAccelerationStructureCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer copyEventValue:(unint64_t)value;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset;
- (void)setLabel:(id)label;
- (void)touch;
- (void)updateFence:(id)fence;
- (void)useHeap:(id)heap;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)waitForFence:(id)fence;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type;
- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset;
- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset;
@end

@implementation CaptureMTLAccelerationStructureCommandEncoder

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(id)buffer sizeBufferOffset:(unint64_t)offset
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeSerializedAccelerationStructureSize:baseObject toBuffer:baseObject2 sizeBufferOffset:offset];

  v15 = v29;
  *(v29 + 8) = -15588;
  v16 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v18 = *(*(&v28 + 1) + 24);
    v19 = BYTE10(v30);
    ++BYTE10(v30);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v29 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v25 = *traceStream3;
  }

  else
  {
    v25 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v25;
  *(v17 + 3) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
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
  LOBYTE(baseObject) = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeGenericBVHStructureSizesOfAccelerationStructure:baseObject into:intoCopy];

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

  v12 = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeGenericBVHStructureOfAccelerationStructure:baseObject into:v11];
  return v12;
}

- (void)writeDeserializedPrimitiveAccelerationStructureSizes:(id)sizes serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizesBufferOffset:(unint64_t)bufferOffset
{
  sizesCopy = sizes;
  bufferCopy = buffer;
  [sizesCopy touch];
  if (sizesCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizesCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [sizesCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeDeserializedPrimitiveAccelerationStructureSizes:baseObject serializedOffset:offset toBuffer:baseObject2 sizesBufferOffset:bufferOffset];

  v17 = v31;
  *(v31 + 8) = -15591;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizesCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v27 = *traceStream3;
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = offset;
  *(v19 + 3) = v27;
  *(v19 + 4) = bufferOffset;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)writeDeserializedAccelerationStructureSize:(id)size serializedOffset:(unint64_t)offset toBuffer:(id)buffer sizeBufferOffset:(unint64_t)bufferOffset
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeDeserializedAccelerationStructureSize:baseObject serializedOffset:offset toBuffer:baseObject2 sizeBufferOffset:bufferOffset];

  v17 = v31;
  *(v31 + 8) = -15592;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v27 = *traceStream3;
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = offset;
  *(v19 + 3) = v27;
  *(v19 + 4) = bufferOffset;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset sizeDataType:(unint64_t)type
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:bufferCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:baseObject toBuffer:baseObject2 offset:offset sizeDataType:type];

  v17 = v31;
  *(v31 + 8) = -15502;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v27 = *traceStream3;
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = v27;
  *(v19 + 3) = offset;
  *(v19 + 4) = type;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(id)buffer offset:(unint64_t)offset
{
  sizeCopy = size;
  bufferCopy = buffer;
  [sizeCopy touch];
  if (sizeCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:sizeCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [sizeCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeCompactedAccelerationStructureSize:baseObject toBuffer:baseObject2 offset:offset];

  v15 = v29;
  *(v29 + 8) = -15629;
  v16 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v18 = *(*(&v28 + 1) + 24);
    v19 = BYTE10(v30);
    ++BYTE10(v30);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v29 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [sizeCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v25 = *traceStream3;
  }

  else
  {
    v25 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v25;
  *(v17 + 3) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(id)buffer offset:(unint64_t)offset
{
  depthCopy = depth;
  bufferCopy = buffer;
  [depthCopy touch];
  if (depthCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:depthCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [depthCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeAccelerationStructureTraversalDepth:baseObject toBuffer:baseObject2 offset:offset];

  v15 = v29;
  *(v29 + 8) = -15287;
  v16 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v18 = *(*(&v28 + 1) + 24);
    v19 = BYTE10(v30);
    ++BYTE10(v30);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v29 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [depthCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v25 = *traceStream3;
  }

  else
  {
    v25 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v25;
  *(v17 + 3) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(id)buffer offset:(unint64_t)offset
{
  dataCopy = data;
  bufferCopy = buffer;
  [dataCopy touch];
  if (dataCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:dataCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [dataCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject writeAccelerationStructureSerializationData:baseObject toBuffer:baseObject2 offset:offset];

  v15 = v29;
  *(v29 + 8) = -15365;
  v16 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v18 = *(*(&v28 + 1) + 24);
    v19 = BYTE10(v30);
    ++BYTE10(v30);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v29 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [dataCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v25 = *traceStream3;
  }

  else
  {
    v25 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v25;
  *(v17 + 3) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject waitForFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -15630;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useResources:&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage];
  v16 = v27;
  *(v27 + 8) = -15631;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useResource:baseObject usage:usage];

  v10 = v22;
  *(v22 + 8) = -15632;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useHeaps:&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  v14 = v25;
  *(v25 + 8) = -15633;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject useHeap:baseObject];

  v8 = v20;
  *(v20 + 8) = -15634;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject updateFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -15635;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  bufferCopy = buffer;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject serializePrimitiveAccelerationStructure:baseObject toBuffer:baseObject2 serializedBufferOffset:offset];

  v15 = v29;
  *(v29 + 8) = -15521;
  v16 = BYTE9(v30);
  if (BYTE9(v30) > 0x20uLL)
  {
    v18 = *(*(&v28 + 1) + 24);
    v19 = BYTE10(v30);
    ++BYTE10(v30);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v29 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v30));
    BYTE9(v30) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v25 = *traceStream3;
  }

  else
  {
    v25 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v25;
  *(v17 + 3) = offset;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
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
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject sampleCountersInBuffer:baseObject atSampleIndex:index withBarrier:barrierCopy];

  v12 = v24;
  *(v24 + 8) = -15637;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -15639;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -15640;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLAccelerationStructureCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v5 = v18;
  *(v18 + 8) = -15641;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  structureCopy = structure;
  bufferCopy = buffer;
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

  [bufferCopy touch];
  if (bufferCopy)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:bufferCopy];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v18 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBuffer:baseObject2 serializedBufferOffset:offset withDescriptor:v18];

  v19 = v34;
  *(v34 + 8) = -15465;
  v20 = BYTE9(v35);
  if (BYTE9(v35) > 0x18uLL)
  {
    v22 = *(*(&v33 + 1) + 24);
    v23 = BYTE10(v35);
    ++BYTE10(v35);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x2800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v35));
    BYTE9(v35) += 40;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v29 = *traceStream3;
  }

  else
  {
    v29 = 0;
  }

  v30 = SaveMTLAccelerationStructureDescriptor(&v33, descriptorCopy);

  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = v29;
  *(v21 + 3) = offset;
  v21[32] = v30;
  *(v21 + 33) = 0;
  *(v21 + 9) = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15644;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v12.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  [(CaptureMTLAccelerationStructureCommandEncoder *)&v12 dealloc];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v7 = v17;
  *(v17 + 8) = -14968;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15648;
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
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v5 = [(MTLAccelerationStructureCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  v3 = [(CaptureMTLAccelerationStructureCommandEncoder *)&v7 description];
  v4 = [(MTLAccelerationStructureCommandEncoderSPI *)self->_baseObject description];
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

- (void)endEncoding
{
  selfCopy = self;
  v3 = GTAccelerationStructureDescriptorDownloader_needsDownloader(self->_traceStream);
  if (endEncoding_descriptorDownloaderToken != -1)
  {
    dispatch_once(&endEncoding_descriptorDownloaderToken, &__block_literal_global_9419);
  }

  [(MTLAccelerationStructureCommandEncoderSPI *)selfCopy->_baseObject endEncoding];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
  v5 = DEVICEOBJECT(WeakRetained);

  if ([(NSMutableArray *)selfCopy->_blitOperations count])
  {
    v72 = v3;
    context = objc_autoreleasePoolPush();
    v73 = v5;
    blitCommandEncoder = [v5 blitCommandEncoder];
    [blitCommandEncoder setLabel:@"com.apple.gputools.ADSExtraBuffersBlit"];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v74 = selfCopy;
    obj = selfCopy->_blitOperations;
    v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v83;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v83 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v82 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"srcBuffer"];
          v12 = DEVICEOBJECT(v11);
          v13 = [v10 objectForKeyedSubscript:@"srcOffset"];
          v14 = NumberToInt(v13);
          v15 = [v10 objectForKeyedSubscript:@"dstBuffer"];
          v16 = DEVICEOBJECT(v15);
          v17 = [v10 objectForKeyedSubscript:@"length"];
          [blitCommandEncoder copyFromBuffer:v12 sourceOffset:v14 toBuffer:v16 destinationOffset:0 size:NumberToInt(v17)];
        }

        v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v7);
    }

    [blitCommandEncoder endEncoding];
    selfCopy = v74;
    v18 = v74->_blitOperations;
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = __60__CaptureMTLAccelerationStructureCommandEncoder_endEncoding__block_invoke_2;
    v80[3] = &unk_2F2578;
    v81 = v18;
    v19 = v18;
    v5 = v73;
    [v73 addCompletedHandler:v80];
    blitOperations = v74->_blitOperations;
    v74->_blitOperations = 0;

    bufferCache = v74->_bufferCache;
    v74->_bufferCache = 0;

    objc_autoreleasePoolPop(context);
    v3 = v72;
  }

  if (v3)
  {
    v22 = objc_autoreleasePoolPush();
    computeCommandEncoder = [v5 computeCommandEncoder];
    [computeCommandEncoder setLabel:@"com.apple.gputools.GTAccelerationStructureDescriptorDownloader.copyCommandEncoder"];
    newpool[0] = 0;
    apr_pool_create_ex(newpool, 0, 0, 0);
    v24 = apr_hash_make(newpool[0]);
    GTTraceMemPool_buildMemoryMap(selfCopy->_traceStream->var3, v24);
    v25 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    device = [v25 device];
    retainedDescriptorObjectsByStreamRef = selfCopy->_retainedDescriptorObjectsByStreamRef;
    v28 = atomic_load(&selfCopy->_traceContext->var3);
    v29 = GTAccelerationStructureDescriptorDownloader_make(device, retainedDescriptorObjectsByStreamRef, v24, v28, newpool[0]);

    var0 = selfCopy->_traceStream->var4.var0;
    if (var0)
    {
      v31 = 0;
      while (1)
      {
        v32 = atomic_load(var0 + 1);
        v33 = v31 + (v32 >> 6) - 1;
        if (v33 > 0)
        {
          break;
        }

        var0 = *(var0 + 5);
        v31 = v33;
        if (!var0)
        {
          v31 = v33;
          goto LABEL_20;
        }
      }

      v33 = 0;
LABEL_20:
      v34 = v31 | (v33 << 32);
    }

    else
    {
      v34 = 0;
    }

    while (var0)
    {
      v35 = var0 + 64 * (HIDWORD(v34) - v34) + 64;
      if ((*(v35 + 15) & 8) == 0)
      {
        break;
      }

      GTAccelerationStructureDescriptorDownloader_preProcessFunc(v29, v35);
      v36 = atomic_load(var0 + 1);
      v37 = v34 + (v36 >> 6);
      v38 = (HIDWORD(v34) + 1);
      v34 = (v38 << 32) | v34;
      if (v38 == v37 - 1)
      {
        v34 = (v38 << 32) | v38;
        var0 = *(var0 + 5);
      }
    }

    v39 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    device2 = [v39 device];
    v41 = DEVICEOBJECT(device2);
    GTAccelerationStructureDescriptorDownloader_allocateStateBuffers(v29, v41);

    v42 = selfCopy->_traceStream->var4.var0;
    if (v42)
    {
      v43 = 0;
      while (1)
      {
        v44 = atomic_load(v42 + 1);
        v45 = v43 + (v44 >> 6) - 1;
        if (v45 > 0)
        {
          break;
        }

        v42 = *(v42 + 5);
        v43 = v45;
        if (!v42)
        {
          v43 = v45;
          goto LABEL_32;
        }
      }

      v45 = 0;
LABEL_32:
      v46 = v43 | (v45 << 32);
    }

    else
    {
      v46 = 0;
    }

    while (v42)
    {
      v47 = v42 + 64 * (HIDWORD(v46) - v46) + 64;
      if ((*(v47 + 15) & 8) == 0)
      {
        break;
      }

      GTAccelerationStructureDescriptorDownloader_processFunc(v29, v47, computeCommandEncoder);
      v48 = atomic_load(v42 + 1);
      v49 = v46 + (v48 >> 6);
      v50 = (HIDWORD(v46) + 1);
      v46 = (v50 << 32) | v46;
      if (v50 == v49 - 1)
      {
        v46 = (v50 << 32) | v50;
        v42 = *(v42 + 5);
      }
    }

    v51 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    accelerationStructureDescriptorProcessEvent = [v51 accelerationStructureDescriptorProcessEvent];
    v53 = endEncoding_descriptorDownloaderEventListener;
    copyEventValue = selfCopy->_copyEventValue;
    v55 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    GTAccelerationStructureDescriptorDownloader_postProcess(v29, accelerationStructureDescriptorProcessEvent, v53, copyEventValue, [v55 isCapturing], selfCopy, selfCopy->_traceContext);

    v56 = v29[3];
    v29[3] = 0;

    v57 = v29[4];
    v29[4] = 0;

    apr_pool_destroy(newpool[0]);
    [computeCommandEncoder endEncoding];
    v58 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    accelerationStructureDescriptorProcessEvent2 = [v58 accelerationStructureDescriptorProcessEvent];
    [v5 encodeSignalEvent:accelerationStructureDescriptorProcessEvent2 value:selfCopy->_copyEventValue];

    v60 = objc_loadWeakRetained(&selfCopy->_captureCommandBuffer);
    accelerationStructureDescriptorProcessEvent3 = [v60 accelerationStructureDescriptorProcessEvent];
    [v5 encodeWaitForEvent:accelerationStructureDescriptorProcessEvent3 value:selfCopy->_copyEventValue + 1 timeout:GT_ENV];

    [v5 addCompletedHandler:&__block_literal_global_54];
    objc_autoreleasePoolPop(v22);
  }

  v78 = 0u;
  v79 = 0u;
  *newpool = 0u;
  GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, newpool);
  v62 = v78;
  *(v78 + 8) = -15642;
  v63 = BYTE9(v79);
  if (BYTE9(v79) > 0x38uLL)
  {
    v65 = *(newpool[1] + 3);
    v66 = BYTE10(v79);
    ++BYTE10(v79);
    v64 = GTTraceMemPool_allocateBytes(v65, *(&v78 + 1), v66 | 0x800000000) + 16;
    v63 = v66;
  }

  else
  {
    v64 = (v62 + BYTE9(v79));
    BYTE9(v79) += 8;
  }

  *(v62 + 13) = v63;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)selfCopy traceStream];
  if (traceStream)
  {
    v68 = traceStream->var0;
  }

  else
  {
    v68 = 0;
  }

  *v64 = v68;
  s();
  *v69 = v70;
  *(v69 + 8) = BYTE8(v79);
  *(v78 + 15) |= 8u;
}

void __60__CaptureMTLAccelerationStructureCommandEncoder_endEncoding__block_invoke(id a1)
{
  v3 = dispatch_queue_create("com.apple.gputools.ADSDescriptorDownloader", 0);
  v1 = [[MTLSharedEventListener alloc] initWithDispatchQueue:v3];
  v2 = endEncoding_descriptorDownloaderEventListener;
  endEncoding_descriptorDownloaderEventListener = v1;
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset withDescriptor:(id)descriptor
{
  structureCopy = structure;
  structuresCopy = structures;
  bufferCopy = buffer;
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

  RetainNSArray(self->_retainedObjects, structuresCopy);
  [bufferCopy touch];
  if (bufferCopy)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v17 = structuresCopy;
  v18 = [v17 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v51;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v17);
        }

        RetainObjectForDescriptorDownloader(*(*(&v50 + 1) + 8 * i), self->_retainedDescriptorObjectsByStreamRef);
      }

      v19 = [v17 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v19);
  }

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v47);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v24 = unwrapNSArray(v17);
  baseObject2 = [bufferCopy baseObject];
  v26 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject primitiveAccelerationStructures:v24 fromBuffer:baseObject2 serializedBufferOffset:offset withDescriptor:v26];

  v27 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  [structureCopy setCaptureDescriptor:v27];

  v28 = v48;
  *(v48 + 8) = -15466;
  v29 = BYTE9(v49);
  if (BYTE9(v49) > 0x18uLL)
  {
    v31 = *(*(&v47 + 1) + 24);
    v32 = BYTE10(v49);
    ++BYTE10(v49);
    v30 = GTTraceMemPool_allocateBytes(v31, *(&v48 + 1), v32 | 0x2800000000) + 16;
    v29 = v32;
  }

  else
  {
    v30 = (v28 + BYTE9(v49));
    BYTE9(v49) += 40;
  }

  *(v28 + 13) = v29;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v36 = *traceStream2;
  }

  else
  {
    v36 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v38 = *traceStream3;
  }

  else
  {
    v38 = 0;
  }

  v39 = StreamMTLNameArray(&v47, v17);
  v40 = SaveMTLAccelerationStructureDescriptor(&v47, descriptorCopy);
  *v30 = var0;
  *(v30 + 1) = v36;
  *(v30 + 2) = v38;
  *(v30 + 3) = offset;
  v30[32] = v39;
  v30[33] = v40;
  *(v30 + 34) = 0;
  *(v30 + 19) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];
  v43 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  SetCaptureDescriptor(structureCopy, self, isCapturing, v43);

  s();
  *v44 = v45;
  *(v44 + 8) = BYTE8(v49);
  *(v48 + 15) |= 8u;
}

- (void)serializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures toBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  structuresCopy = structures;
  bufferCopy = buffer;
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
  [bufferCopy touch];
  if (bufferCopy)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:bufferCopy];
    }
  }

  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v17 = unwrapNSArray(structuresCopy);
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject serializeInstanceAccelerationStructure:baseObject primitiveAccelerationStructures:v17 toBuffer:baseObject2 serializedBufferOffset:offset];

  v19 = v34;
  *(v34 + 8) = -15522;
  v20 = BYTE9(v35);
  if (BYTE9(v35) > 0x18uLL)
  {
    v22 = *(*(&v33 + 1) + 24);
    v23 = BYTE10(v35);
    ++BYTE10(v35);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x2800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v35));
    BYTE9(v35) += 40;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v29 = *traceStream3;
  }

  else
  {
    v29 = 0;
  }

  v30 = StreamMTLNameArray(&v33, structuresCopy);
  *v21 = var0;
  *(v21 + 1) = v27;
  *(v21 + 2) = v29;
  *(v21 + 3) = offset;
  v21[32] = v30;
  *(v21 + 33) = 0;
  *(v21 + 9) = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)deserializeInstanceAccelerationStructure:(id)structure primitiveAccelerationStructures:(id)structures fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  structuresCopy = structures;
  bufferCopy = buffer;
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
  [bufferCopy touch];
  if (bufferCopy)
  {
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v15 = structuresCopy;
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v45;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v45 != v18)
        {
          objc_enumerationMutation(v15);
        }

        RetainObjectForDescriptorDownloader(*(*(&v44 + 1) + 8 * i), self->_retainedDescriptorObjectsByStreamRef);
      }

      v17 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v17);
  }

  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v41);
  baseObject = [structureCopy baseObject];
  baseObject = self->_baseObject;
  v22 = unwrapNSArray(v15);
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializeInstanceAccelerationStructure:baseObject primitiveAccelerationStructures:v22 fromBuffer:baseObject2 serializedBufferOffset:offset];

  v24 = v42;
  *(v42 + 8) = -15524;
  v25 = BYTE9(v43);
  if (BYTE9(v43) > 0x18uLL)
  {
    v27 = *(*(&v41 + 1) + 24);
    v28 = BYTE10(v43);
    ++BYTE10(v43);
    v26 = GTTraceMemPool_allocateBytes(v27, *(&v42 + 1), v28 | 0x2800000000) + 16;
    v25 = v28;
  }

  else
  {
    v26 = (v24 + BYTE9(v43));
    BYTE9(v43) += 40;
  }

  *(v24 + 13) = v25;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v32 = *traceStream2;
  }

  else
  {
    v32 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v34 = *traceStream3;
  }

  else
  {
    v34 = 0;
  }

  v35 = StreamMTLNameArray(&v41, v15);
  *v26 = var0;
  *(v26 + 1) = v32;
  *(v26 + 2) = v34;
  *(v26 + 3) = offset;
  v26[32] = v35;
  *(v26 + 33) = 0;
  *(v26 + 9) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];
  v38 = objc_alloc_init(MTLInstanceAccelerationStructureDescriptor);
  SetCaptureDescriptor(structureCopy, self, isCapturing, v38);

  s();
  *v39 = v40;
  *(v39 + 8) = BYTE8(v43);
  *(v42 + 15) |= 8u;
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(id)buffer serializedBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  bufferCopy = buffer;
  [structureCopy touch];
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v11 = self->_retainedObjects;
    if (v11)
    {
      [(NSMutableSet *)v11 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = [structureCopy baseObject];
  baseObject = self->_baseObject;
  baseObject2 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject deserializePrimitiveAccelerationStructure:baseObject fromBuffer:baseObject2 serializedBufferOffset:offset];

  v15 = v32;
  *(v32 + 8) = -15523;
  v16 = BYTE9(v33);
  if (BYTE9(v33) > 0x20uLL)
  {
    v18 = *(*(&v31 + 1) + 24);
    v19 = BYTE10(v33);
    ++BYTE10(v33);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v32 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v33));
    BYTE9(v33) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v25 = *traceStream3;
  }

  else
  {
    v25 = 0;
  }

  *v17 = var0;
  *(v17 + 1) = v23;
  *(v17 + 2) = v25;
  *(v17 + 3) = offset;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];
  v28 = objc_alloc_init(MTLPrimitiveAccelerationStructureDescriptor);
  SetCaptureDescriptor(structureCopy, self, isCapturing, v28);

  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  descriptorCopy = descriptor;
  bufferCopy = buffer;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [structureCopy baseObject];
      v37 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
      baseObject2 = [bufferCopy baseObject];
      [(MTLAccelerationStructureCommandEncoderSPI *)baseObject buildAccelerationStructure:baseObject descriptor:v37 scratchBuffer:baseObject2 scratchBufferOffset:offset];

      v27 = descriptorCopy;
      goto LABEL_23;
    }

    [structureCopy touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
    }
  }

  else
  {
    [0 touch];
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, descriptorCopy);
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
  v17 = self->_baseObject;
  baseObject3 = [structureCopy baseObject];
  v19 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  v48 = bufferCopy;
  baseObject4 = [bufferCopy baseObject];
  offsetCopy = offset;
  [(MTLAccelerationStructureCommandEncoderSPI *)v17 buildAccelerationStructure:baseObject3 descriptor:v19 scratchBuffer:baseObject4 scratchBufferOffset:offset];

  v49 = descriptorCopy;
  v21 = structureCopy;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject3) = [WeakRetained isCapturing];
  LODWORD(v19) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  extraRetainedObjects = [v21 extraRetainedObjects];
  v26 = copyCaptureDescriptor(&v49, baseObject3, v19, captureDevice, blitOperations, extraRetainedObjects, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
  v27 = v49;

  v28 = v51;
  *(v51 + 8) = -15647;
  v29 = BYTE9(v52);
  if (BYTE9(v52) > 0x18uLL)
  {
    v31 = *(*(&v50 + 1) + 24);
    v32 = BYTE10(v52);
    ++BYTE10(v52);
    v30 = GTTraceMemPool_allocateBytes(v31, *(&v51 + 1), v32 | 0x2800000000) + 16;
    v29 = v32;
  }

  else
  {
    v30 = (v28 + BYTE9(v52));
    BYTE9(v52) += 40;
  }

  *(v28 + 13) = v29;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
  bufferCopy = v48;
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v21 traceStream];
  if (traceStream2)
  {
    v40 = *traceStream2;
  }

  else
  {
    v40 = 0;
  }

  traceStream3 = [v48 traceStream];
  if (traceStream3)
  {
    v42 = *traceStream3;
  }

  else
  {
    v42 = 0;
  }

  v43 = SaveMTLAccelerationStructureDescriptor(&v50, v27);
  *v30 = var0;
  *(v30 + 1) = v40;
  *(v30 + 2) = v42;
  *(v30 + 3) = offsetCopy;
  v30[32] = v43;
  *(v30 + 33) = 0;
  *(v30 + 9) = 0;
  v44 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  SetCaptureDescriptor(v21, self, [v44 isCapturing], v26);

  s();
  *v45 = v46;
  *(v45 + 8) = BYTE8(v52);
  *(v51 + 15) |= 8u;

LABEL_23:
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset options:(unint64_t)options
{
  structureCopy = structure;
  descriptorCopy = descriptor;
  destinationCopy = destination;
  bufferCopy = buffer;
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

  [bufferCopy touch];
  if (bufferCopy)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, descriptorCopy);
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v54);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v21 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  baseObject2 = [destinationCopy baseObject];
  v52 = bufferCopy;
  baseObject3 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:v21 destination:baseObject2 scratchBuffer:baseObject3 scratchBufferOffset:v49 options:v51];

  v53 = descriptorCopy;
  v24 = destinationCopy;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject3) = [WeakRetained isCapturing];
  LODWORD(baseObject) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  extraRetainedObjects = [v24 extraRetainedObjects];
  v29 = copyCaptureDescriptor(&v53, baseObject3, baseObject, captureDevice, blitOperations, extraRetainedObjects, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
  v30 = v53;

  v31 = v55;
  *(v55 + 8) = -15366;
  v32 = BYTE9(v56);
  if (BYTE9(v56) > 8uLL)
  {
    v34 = *(*(&v54 + 1) + 24);
    v35 = BYTE10(v56);
    ++BYTE10(v56);
    v33 = GTTraceMemPool_allocateBytes(v34, *(&v55 + 1), v35 | 0x3800000000) + 16;
    v32 = v35;
  }

  else
  {
    v33 = (v31 + BYTE9(v56));
    BYTE9(v56) += 56;
  }

  *(v31 + 13) = v32;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v39 = *traceStream2;
  }

  else
  {
    v39 = 0;
  }

  traceStream3 = [v24 traceStream];
  if (traceStream3)
  {
    v41 = *traceStream3;
  }

  else
  {
    v41 = 0;
  }

  traceStream4 = [v52 traceStream];
  if (traceStream4)
  {
    v43 = *traceStream4;
  }

  else
  {
    v43 = 0;
  }

  v44 = SaveMTLAccelerationStructureDescriptor(&v54, v30);
  *v33 = var0;
  *(v33 + 1) = v39;
  *(v33 + 2) = v41;
  *(v33 + 3) = v43;
  *(v33 + 4) = v49;
  *(v33 + 5) = v51;
  v33[48] = v44;
  *(v33 + 49) = 0;
  *(v33 + 13) = 0;
  v45 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  SetCaptureDescriptor(v24, self, [v45 isCapturing], v29);

  s();
  *v46 = v47;
  *(v46 + 8) = BYTE8(v56);
  *(v55 + 15) |= 8u;
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(id)buffer scratchBufferOffset:(unint64_t)offset
{
  structureCopy = structure;
  descriptorCopy = descriptor;
  destinationCopy = destination;
  bufferCopy = buffer;
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
    v16 = self->_retainedObjects;
    if (v16)
    {
      [(NSMutableSet *)v16 addObject:destinationCopy];
    }
  }

  [bufferCopy touch];
  if (bufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:bufferCopy];
    }
  }

  RetainObjectForDescriptorDownloader(structureCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainObjectForDescriptorDownloader(destinationCopy, self->_retainedDescriptorObjectsByStreamRef);
  RetainAccelerationStructureDescriptorObjects(self->_retainedObjects, self->_retainedDescriptorObjectsByStreamRef, descriptorCopy);
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  v20 = unwrapMTLAccelerationStructureDescriptor(descriptorCopy);
  baseObject2 = [destinationCopy baseObject];
  v48 = bufferCopy;
  baseObject3 = [bufferCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject refitAccelerationStructure:baseObject descriptor:v20 destination:baseObject2 scratchBuffer:baseObject3 scratchBufferOffset:offset];

  v49 = descriptorCopy;
  v23 = destinationCopy;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  LODWORD(baseObject) = [WeakRetained isCapturing];
  LODWORD(baseObject) = (dword_31F7C8 >> 4) & 1;
  captureDevice = self->_captureDevice;
  blitOperations = self->_blitOperations;
  extraRetainedObjects = [v23 extraRetainedObjects];
  v28 = copyCaptureDescriptor(&v49, baseObject, baseObject, captureDevice, blitOperations, extraRetainedObjects, self->_retainedDescriptorObjectsByStreamRef, self->_bufferCache);
  v29 = v49;

  v30 = v51;
  *(v51 + 8) = -15638;
  v31 = BYTE9(v52);
  if (BYTE9(v52) > 0x10uLL)
  {
    v33 = *(*(&v50 + 1) + 24);
    v34 = BYTE10(v52);
    ++BYTE10(v52);
    v32 = GTTraceMemPool_allocateBytes(v33, *(&v51 + 1), v34 | 0x3000000000) + 16;
    v31 = v34;
  }

  else
  {
    v32 = (v30 + BYTE9(v52));
    BYTE9(v52) += 48;
  }

  *(v30 + 13) = v31;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
    v38 = *traceStream2;
  }

  else
  {
    v38 = 0;
  }

  traceStream3 = [v23 traceStream];
  if (traceStream3)
  {
    v40 = *traceStream3;
  }

  else
  {
    v40 = 0;
  }

  traceStream4 = [v48 traceStream];
  if (traceStream4)
  {
    v42 = *traceStream4;
  }

  else
  {
    v42 = 0;
  }

  v43 = SaveMTLAccelerationStructureDescriptor(&v50, v29);
  *v32 = var0;
  *(v32 + 1) = v38;
  *(v32 + 2) = v40;
  *(v32 + 3) = v42;
  *(v32 + 4) = offset;
  v32[40] = v43;
  *(v32 + 41) = 0;
  *(v32 + 11) = 0;
  v44 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  SetCaptureDescriptor(v23, self, [v44 isCapturing], v28);

  s();
  *v45 = v46;
  *(v45 + 8) = BYTE8(v52);
  *(v51 + 15) |= 8u;
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
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject copyAndCompactAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

  v13 = v38;
  *(v38 + 8) = -15645;
  v14 = BYTE9(v39);
  if (BYTE9(v39) > 0x28uLL)
  {
    v16 = *(*(&v37 + 1) + 24);
    v17 = BYTE10(v39);
    ++BYTE10(v39);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v38 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v39));
    BYTE9(v39) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v24 = structureCopy;
  v25 = accelerationStructureCopy;
  if ((dword_31F7C8 & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if ((isCapturing & 1) == 0)
    {
      extraRetainedObjects = [v25 extraRetainedObjects];
      [extraRetainedObjects removeAllObjects];
    }

    extraRetainedObjects2 = [v25 extraRetainedObjects];
    retainedDescriptorObjectsByStreamRef = self->_retainedDescriptorObjectsByStreamRef;
    captureDescriptor = [v24 captureDescriptor];
    RetainAccelerationStructureDescriptorObjects(extraRetainedObjects2, retainedDescriptorObjectsByStreamRef, captureDescriptor);
  }

  v32 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing2 = [v32 isCapturing];
  captureDescriptor2 = [v24 captureDescriptor];
  SetCaptureDescriptor(v25, self, isCapturing2, captureDescriptor2);

  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
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
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  baseObject = [structureCopy baseObject];
  baseObject2 = [accelerationStructureCopy baseObject];
  [(MTLAccelerationStructureCommandEncoderSPI *)baseObject copyAccelerationStructure:baseObject toAccelerationStructure:baseObject2];

  v13 = v38;
  *(v38 + 8) = -15646;
  v14 = BYTE9(v39);
  if (BYTE9(v39) > 0x28uLL)
  {
    v16 = *(*(&v37 + 1) + 24);
    v17 = BYTE10(v39);
    ++BYTE10(v39);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v38 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v39));
    BYTE9(v39) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLAccelerationStructureCommandEncoder *)self traceStream];
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
  v24 = structureCopy;
  v25 = accelerationStructureCopy;
  if ((dword_31F7C8 & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if ((isCapturing & 1) == 0)
    {
      extraRetainedObjects = [v25 extraRetainedObjects];
      [extraRetainedObjects removeAllObjects];
    }

    extraRetainedObjects2 = [v25 extraRetainedObjects];
    retainedDescriptorObjectsByStreamRef = self->_retainedDescriptorObjectsByStreamRef;
    captureDescriptor = [v24 captureDescriptor];
    RetainAccelerationStructureDescriptorObjects(extraRetainedObjects2, retainedDescriptorObjectsByStreamRef, captureDescriptor);
  }

  v32 = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing2 = [v32 isCapturing];
  captureDescriptor2 = [v24 captureDescriptor];
  SetCaptureDescriptor(v25, self, isCapturing2, captureDescriptor2);

  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
}

- (CaptureMTLAccelerationStructureCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer copyEventValue:(unint64_t)value
{
  objectCopy = object;
  bufferCopy = buffer;
  v28.receiver = self;
  v28.super_class = CaptureMTLAccelerationStructureCommandEncoder;
  v11 = [(CaptureMTLAccelerationStructureCommandEncoder *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v12->_captureDevice;
    v12->_captureDevice = device;

    objc_storeWeak(&v12->_captureCommandBuffer, bufferCopy);
    traceContext = [bufferCopy traceContext];
    v12->_traceContext = traceContext;
    v16 = DEVICEOBJECT(objectCopy);
    v12->_traceStream = GTTraceContext_openEncoderStream(traceContext, v16, *([bufferCopy traceStream] + 3));

    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v12->_retainedObjects;
    v12->_retainedObjects = retainedObjects;

    v12->_copyEventValue = value;
    v19 = v12->_retainedObjects;
    v20 = DEVICEOBJECT(v12->_baseObject);
    [(NSMutableSet *)v19 addObject:v20];

    v21 = objc_alloc_init(NSMutableDictionary);
    retainedDescriptorObjectsByStreamRef = v12->_retainedDescriptorObjectsByStreamRef;
    v12->_retainedDescriptorObjectsByStreamRef = v21;

    if ((dword_31F7C8 & 0x10) != 0)
    {
      v23 = objc_opt_new();
      blitOperations = v12->_blitOperations;
      v12->_blitOperations = v23;

      v25 = objc_opt_new();
      bufferCache = v12->_bufferCache;
      v12->_bufferCache = v25;
    }
  }

  return v12;
}

@end