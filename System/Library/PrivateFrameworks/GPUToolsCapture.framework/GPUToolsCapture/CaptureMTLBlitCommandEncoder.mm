@interface CaptureMTLBlitCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLBlitCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceOrigin:(id)origin sourceDimensions:(id)dimensions toTensor:(id)toTensor destinationOrigin:(id)destinationOrigin destinationDimensions:(id)destinationDimensions;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)endEncoding;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)invalidateCompressedTexture:(id)texture;
- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice;
- (void)resolveCounters:(id)counters inRange:(_NSRange)range destinationBuffer:(id)buffer destinationOffset:(unint64_t)offset;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)setLabel:(id)label;
- (void)touch;
- (void)updateFence:(id)fence;
- (void)waitForFence:(id)fence;
@end

@implementation CaptureMTLBlitCommandEncoder

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
  [(MTLBlitCommandEncoderSPI *)baseObject waitForFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -16131;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject updateFence:baseObject];

  v8 = v20;
  *(v20 + 8) = -16124;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject sampleCountersInBuffer:baseObject atSampleIndex:index withBarrier:barrierCopy];

  v12 = v24;
  *(v24 + 8) = -15755;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)resetTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice
{
  countersCopy = counters;
  [countersCopy touch];
  if (countersCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:countersCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [countersCopy baseObject];
  v14 = *&region->var0.var2;
  v28[0] = *&region->var0.var0;
  v28[1] = v14;
  v28[2] = *&region->var1.var1;
  [(MTLBlitCommandEncoderSPI *)baseObject resetTextureAccessCounters:baseObject region:v28 mipLevel:level slice:slice];

  v15 = *(&v29 + 1);
  v16 = v30;
  *(v30 + 8) = -15976;
  v17 = *(v15 + 24);
  v18 = BYTE10(v31);
  ++BYTE10(v31);
  Bytes = GTTraceMemPool_allocateBytes(v17, *(&v30 + 1), v18 | 0x5000000000);
  *(v16 + 13) = v18;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [countersCopy traceStream];
  if (traceStream2)
  {
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v23;
  v24 = *&region->var0.var2;
  v25 = *&region->var1.var1;
  *(Bytes + 2) = *&region->var0.var0;
  *(Bytes + 3) = v24;
  *(Bytes + 4) = v25;
  *(Bytes + 10) = level;
  *(Bytes + 11) = slice;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
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

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLBlitCommandEncoderSPI *)baseObject resetCommandsInBuffer:baseObject withRange:location, length];

  v11 = v23;
  *(v23 + 8) = -15960;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = location;
  *(v13 + 3) = length;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLBlitCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -16374;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -16373;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLBlitCommandEncoderSPI *)baseObject optimizeIndirectCommandBuffer:baseObject withRange:location, length];

  v11 = v23;
  *(v23 + 8) = -15958;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
    v19 = *traceStream2;
  }

  else
  {
    v19 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = v19;
  *(v13 + 2) = location;
  *(v13 + 3) = length;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
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
  [(MTLBlitCommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:baseObject slice:slice level:level];

  v12 = v24;
  *(v24 + 8) = -15994;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject optimizeContentsForGPUAccess:baseObject];

  v8 = v20;
  *(v20 + 8) = -15995;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:baseObject slice:slice level:level];

  v12 = v24;
  *(v24 + 8) = -15992;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject optimizeContentsForCPUAccess:baseObject];

  v8 = v20;
  *(v20 + 8) = -15993;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
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

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLBlitCommandEncoderSPI *)baseObject invalidateCompressedTexture:baseObject slice:slice level:level];

  v12 = v24;
  *(v24 + 8) = -15469;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)invalidateCompressedTexture:(id)texture
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
  [(MTLBlitCommandEncoderSPI *)baseObject invalidateCompressedTexture:baseObject];

  v8 = v20;
  *(v20 + 8) = -15470;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLBlitCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLBlitCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLBlitCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v5 = v18;
  *(v18 + 8) = -16375;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)getTextureAccessCounters:(id)counters region:(id *)region mipLevel:(unint64_t)level slice:(unint64_t)slice resetCounters:(BOOL)resetCounters countersBuffer:(id)buffer countersBufferOffset:(unint64_t)offset
{
  resetCountersCopy = resetCounters;
  countersCopy = counters;
  bufferCopy = buffer;
  [countersCopy touch];
  if (countersCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:countersCopy];
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

  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v46);
  baseObject = self->_baseObject;
  baseObject = [countersCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  v22 = *&region->var0.var2;
  v45[0] = *&region->var0.var0;
  v45[1] = v22;
  v45[2] = *&region->var1.var1;
  levelCopy = level;
  levelCopy2 = level;
  sliceCopy = slice;
  sliceCopy2 = slice;
  v26 = resetCountersCopy;
  [(MTLBlitCommandEncoderSPI *)baseObject getTextureAccessCounters:baseObject region:v45 mipLevel:levelCopy2 slice:sliceCopy2 resetCounters:resetCountersCopy countersBuffer:baseObject2 countersBufferOffset:offset];

  v27 = *(&v46 + 1);
  v28 = v47;
  *(v47 + 8) = -15977;
  v29 = *(v27 + 24);
  v30 = BYTE10(v48);
  ++BYTE10(v48);
  Bytes = GTTraceMemPool_allocateBytes(v29, *(&v47 + 1), v30 | 0x6800000000);
  *(v28 + 13) = v30;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [countersCopy traceStream];
  if (traceStream2)
  {
    v35 = *traceStream2;
  }

  else
  {
    v35 = 0;
  }

  var1 = region->var1.var1;
  var2 = region->var1.var2;
  v42 = *&region->var0.var0;
  v43 = *&region->var0.var2;
  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v39 = *traceStream3;
  }

  else
  {
    v39 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v35;
  *(Bytes + 2) = v42;
  *(Bytes + 3) = v43;
  *(Bytes + 8) = var1;
  *(Bytes + 9) = var2;
  *(Bytes + 10) = levelCopy;
  *(Bytes + 11) = sliceCopy;
  *(Bytes + 12) = v39;
  *(Bytes + 13) = offset;
  *(Bytes + 28) = v26;
  *(Bytes + 29) = 0;
  s();
  *v40 = v41;
  *(v40 + 8) = BYTE8(v48);
  *(v47 + 15) |= 8u;
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
  [(MTLBlitCommandEncoderSPI *)baseObject generateMipmapsForTexture:baseObject];

  v8 = v20;
  *(v20 + 8) = -16379;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
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

  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v38);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v18 = *&region->var0.var2;
  v37[0] = *&region->var0.var0;
  v37[1] = v18;
  v37[2] = *&region->var1.var1;
  [(MTLBlitCommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v37 bytes:bytes length:length];

  v19 = *(&v38 + 1);
  v20 = v39;
  *(v39 + 8) = -15473;
  v21 = *(v19 + 24);
  v22 = BYTE10(v40);
  ++BYTE10(v40);
  Bytes = GTTraceMemPool_allocateBytes(v21, *(&v39 + 1), v22 | 0x6000000000);
  *(v20 + 13) = v22;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  v29 = *&region->var0.var0;
  v28 = *&region->var0.var2;
  v30 = *&region->var1.var1;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v35 = *&region->var1.var1;
    v36 = *&region->var0.var2;
    v34 = *&region->var0.var0;
    v31 = GTTraceEncoder_storeBlob(&v38, bytes, length);
    v29 = v34;
    v30 = v35;
    v28 = v36;
  }

  else
  {
    v31 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v27;
  *(Bytes + 4) = level;
  *(Bytes + 5) = slice;
  *(Bytes + 3) = v29;
  *(Bytes + 4) = v28;
  *(Bytes + 5) = v30;
  *(Bytes + 12) = length;
  Bytes[104] = v31;
  *(Bytes + 105) = 0;
  *(Bytes + 27) = 0;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
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
  [(MTLBlitCommandEncoderSPI *)baseObject fillBuffer:baseObject range:location value:length, valueCopy];

  v13 = v25;
  *(v25 + 8) = -16378;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject fillBuffer:baseObject range:location pattern4:length, v5];

  v13 = v25;
  *(v25 + 8) = -15474;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  *(v15 + 8) = v5;
  *(v15 + 9) = 0;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)endEncoding
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLBlitCommandEncoderSPI *)self->_baseObject endEncoding];
  v3 = v13;
  *(v13 + 8) = -16376;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -16383;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  v12.super_class = CaptureMTLBlitCommandEncoder;
  [(CaptureMTLBlitCommandEncoder *)&v12 dealloc];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  destinationCopy = destination;
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
    v14 = self->_retainedObjects;
    if (v14)
    {
      [(NSMutableSet *)v14 addObject:destinationCopy];
    }
  }

  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [destinationCopy baseObject];
  [(MTLBlitCommandEncoderSPI *)baseObject copyIndirectCommandBuffer:baseObject sourceRange:location destination:length destinationIndex:baseObject2, index];

  v18 = v32;
  *(v32 + 8) = -15959;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x10uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x3000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 48;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

  traceStream3 = [destinationCopy traceStream];
  if (traceStream3)
  {
    v28 = *traceStream3;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = location;
  *(v20 + 3) = length;
  *(v20 + 4) = v28;
  *(v20 + 5) = index;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTexture:baseObject toTexture:baseObject2];

  v13 = v27;
  *(v27 + 8) = -15877;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:count levelCount:levelCount];

  v21 = *(&v36 + 1);
  v22 = v37;
  *(v37 + 8) = -15878;
  v23 = *(v21 + 24);
  v24 = BYTE10(v38);
  ++BYTE10(v38);
  Bytes = GTTraceMemPool_allocateBytes(v23, *(&v37 + 1), v24 | 0x4800000000);
  *(v22 + 13) = v24;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
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
    v20 = self->_retainedObjects;
    if (v20)
    {
      [(NSMutableSet *)v20 addObject:toTextureCopy];
    }
  }

  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v53);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [toTextureCopy baseObject];
  v51 = *&origin->var0;
  var2 = origin->var2;
  v49 = *&size->var0;
  v50 = size->var2;
  v48 = *destinationOrigin;
  levelCopy = level;
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v51 sourceSize:&v49 toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v48 options:options];

  v24 = *(&v53 + 1);
  v25 = v54;
  *(v54 + 8) = -16211;
  v26 = *(v24 + 24);
  v27 = BYTE10(v55);
  ++BYTE10(v55);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v54 + 1), v27 | 0x8800000000);
  *(v25 + 13) = v27;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  traceStream3 = [toTextureCopy traceStream];
  if (traceStream3)
  {
    v40 = *traceStream3;
  }

  else
  {
    v40 = 0;
  }

  v41 = destinationOrigin->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v32;
  *(Bytes + 4) = slice;
  *(Bytes + 5) = levelCopy;
  *(Bytes + 12) = v40;
  *(Bytes + 13) = destinationSlice;
  *(Bytes + 14) = destinationLevel;
  v42 = *&destinationOrigin->var0;
  *(Bytes + 6) = v34;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = v35;
  *(Bytes + 9) = v37;
  *(Bytes + 10) = v36;
  *(Bytes + 11) = v38;
  *(Bytes + 120) = v42;
  *(Bytes + 17) = v41;
  *(Bytes + 18) = options;
  s();
  *v43 = v44;
  *(v43 + 8) = BYTE8(v55);
  *(v54 + 15) |= 8u;
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v50 sourceSize:&v48 toTexture:baseObject2 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v47];

  v23 = *(&v52 + 1);
  v24 = v53;
  *(v53 + 8) = -16382;
  v25 = *(v23 + 24);
  v26 = BYTE10(v54);
  ++BYTE10(v54);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v53 + 1), v26 | 0x8000000000);
  *(v24 + 13) = v26;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v49 sourceSize:&v47 toBuffer:baseObject2 destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];

  v25 = *(&v51 + 1);
  v26 = v52;
  *(v52 + 8) = -16209;
  v27 = *(v25 + 24);
  v28 = BYTE10(v53);
  ++BYTE10(v53);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v52 + 1), v28 | 0x7800000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTexture:baseObject sourceSlice:slice sourceLevel:level sourceOrigin:&v48 sourceSize:&v46 toBuffer:baseObject2 destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image];

  v24 = *(&v50 + 1);
  v25 = v51;
  *(v51 + 8) = -16380;
  v26 = *(v24 + 24);
  v27 = BYTE10(v52);
  ++BYTE10(v52);
  Bytes = GTTraceMemPool_allocateBytes(v26, *(&v51 + 1), v27 | 0x7000000000);
  *(v25 + 13) = v27;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromTensor:baseObject sourceOrigin:originCopy sourceDimensions:dimensionsCopy toTensor:baseObject2 destinationOrigin:destinationOriginCopy destinationDimensions:destinationDimensionsCopy];

  v25 = *(&v112 + 1);
  v26 = v113;
  *(v113 + 8) = -14804;
  v27 = *(v25 + 24);
  v28 = BYTE10(v114);
  ++BYTE10(v114);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v113 + 1), v28 | 0x23800000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset toBuffer:baseObject2 destinationOffset:destinationOffset size:size];

  v19 = v33;
  *(v33 + 8) = -16377;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset sourceBytesPerRow:rowCopy2 sourceBytesPerImage:image sourceSize:&v47 toTexture:baseObject2 destinationSlice:slice destinationLevel:level destinationOrigin:&v46 options:options];

  v26 = *(&v49 + 1);
  v27 = v50;
  *(v50 + 8) = -16210;
  v28 = *(v26 + 24);
  v29 = BYTE10(v51);
  ++BYTE10(v51);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v50 + 1), v29 | 0x7800000000);
  *(v27 + 13) = v29;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)baseObject copyFromBuffer:baseObject sourceOffset:offset sourceBytesPerRow:rowCopy2 sourceBytesPerImage:image sourceSize:&v46 toTexture:baseObject2 destinationSlice:slice destinationLevel:level destinationOrigin:&v45];

  v25 = *(&v48 + 1);
  v26 = v49;
  *(v49 + 8) = -16381;
  v27 = *(v25 + 24);
  v28 = BYTE10(v50);
  ++BYTE10(v50);
  Bytes = GTTraceMemPool_allocateBytes(v27, *(&v49 + 1), v28 | 0x7000000000);
  *(v26 + 13) = v28;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLBlitCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v7 = v17;
  *(v17 + 8) = -14966;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  [(MTLBlitCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -16384;
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
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
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
  v5 = [(MTLBlitCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLBlitCommandEncoder;
  v3 = [(CaptureMTLBlitCommandEncoder *)&v7 description];
  v4 = [(MTLBlitCommandEncoderSPI *)self->_baseObject description];
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

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
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

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v21 = *&region->var0.var2;
  v35[0] = *&region->var0.var0;
  v35[1] = v21;
  v35[2] = *&region->var1.var1;
  [(MTLBlitCommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v35 color:format pixelFormat:var0, var1, var2, var3];

  v22 = *(&v36 + 1);
  v23 = v37;
  *(v37 + 8) = -15471;
  v24 = *(v22 + 24);
  v25 = BYTE10(v38);
  ++BYTE10(v38);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v37 + 1), v25 | 0x7800000000);
  *(v23 + 13) = v25;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v28 = traceStream->var0;
  }

  else
  {
    v28 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v30 = *traceStream2;
  }

  else
  {
    v30 = 0;
  }

  *(Bytes + 2) = v28;
  *(Bytes + 3) = v30;
  *(Bytes + 4) = level;
  *(Bytes + 5) = slice;
  v31 = *&region->var0.var2;
  v32 = *&region->var1.var1;
  *(Bytes + 3) = *&region->var0.var0;
  *(Bytes + 4) = v31;
  *(Bytes + 5) = v32;
  *(Bytes + 12) = var0;
  *(Bytes + 13) = var1;
  *(Bytes + 14) = var2;
  *(Bytes + 15) = var3;
  *(Bytes + 16) = format;
  s();
  *v33 = v34;
  *(v33 + 8) = BYTE8(v38);
  *(v37 + 15) |= 8u;
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
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

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v19 = *&region->var0.var2;
  v33[0] = *&region->var0.var0;
  v33[1] = v19;
  v33[2] = *&region->var1.var1;
  [(MTLBlitCommandEncoderSPI *)baseObject fillTexture:baseObject level:level slice:slice region:v33 color:var0, var1, var2, var3];

  v20 = *(&v34 + 1);
  v21 = v35;
  *(v35 + 8) = -15472;
  v22 = *(v20 + 24);
  v23 = BYTE10(v36);
  ++BYTE10(v36);
  Bytes = GTTraceMemPool_allocateBytes(v22, *(&v35 + 1), v23 | 0x7000000000);
  *(v21 + 13) = v23;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
  if (traceStream)
  {
    v26 = traceStream->var0;
  }

  else
  {
    v26 = 0;
  }

  traceStream2 = [textureCopy traceStream];
  if (traceStream2)
  {
    v28 = *traceStream2;
  }

  else
  {
    v28 = 0;
  }

  *(Bytes + 2) = v26;
  *(Bytes + 3) = v28;
  *(Bytes + 4) = level;
  *(Bytes + 5) = slice;
  v29 = *&region->var0.var2;
  v30 = *&region->var1.var1;
  *(Bytes + 3) = *&region->var0.var0;
  *(Bytes + 4) = v29;
  *(Bytes + 5) = v30;
  *(Bytes + 12) = var0;
  *(Bytes + 13) = var1;
  *(Bytes + 14) = var2;
  *(Bytes + 15) = var3;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)resolveCounters:(id)counters inRange:(_NSRange)range destinationBuffer:(id)buffer destinationOffset:(unint64_t)offset
{
  length = range.length;
  location = range.location;
  countersCopy = counters;
  bufferCopy = buffer;
  [countersCopy touch];
  if (countersCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:countersCopy];
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

  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v47);
  baseObject = self->_baseObject;
  baseObject = [countersCopy baseObject];
  baseObject2 = [bufferCopy baseObject];
  [(MTLBlitCommandEncoderSPI *)baseObject resolveCounters:baseObject inRange:location destinationBuffer:length destinationOffset:baseObject2, offset];

  v18 = v48;
  *(v48 + 8) = -15756;
  v19 = BYTE9(v49);
  if (BYTE9(v49) > 8uLL)
  {
    v21 = *(*(&v47 + 1) + 24);
    v22 = BYTE10(v49);
    ++BYTE10(v49);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v48 + 1), v22 | 0x3800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v49));
    BYTE9(v49) += 56;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLBlitCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [countersCopy traceStream];
  if (traceStream2)
  {
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  traceStream3 = [bufferCopy traceStream];
  if (traceStream3)
  {
    v28 = *traceStream3;
  }

  else
  {
    v28 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = location;
  *(v20 + 3) = length;
  *(v20 + 4) = v28;
  *(v20 + 5) = offset;
  *(v20 + 6) = 0;
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  isCapturing = [WeakRetained isCapturing];

  if (isCapturing)
  {
    v31 = DEVICEOBJECT(bufferCopy);
    v32 = [v31 length];
    v33 = *(*(&v47 + 1) + 24);
    v34 = BYTE10(v49);
    ++BYTE10(v49);
    Bytes = GTTraceMemPool_allocateBytes(v33, *(&v48 + 1), v34 | (v32 << 32) | 0x100);
    v20[48] = Bytes[8];
    v36 = DEVICEOBJECT(self->_baseObject);
    device = [v36 device];
    v38 = [device newBufferWithLength:v32 options:0];
    [v36 copyFromBuffer:v31 sourceOffset:0 toBuffer:v38 destinationOffset:0 size:v32];
    v39 = objc_loadWeakRetained(&self->_captureCommandBuffer);
    v40 = DEVICEOBJECT(v39);

    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = __92__CaptureMTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset___block_invoke;
    v44[3] = &unk_2F24E0;
    v45 = v38;
    v46 = Bytes;
    v41 = v38;
    [v40 addCompletedHandler:v44];
  }

  s();
  *v42 = v43;
  *(v42 + 8) = BYTE8(v49);
  *(v48 + 15) |= 8u;
}

void *__92__CaptureMTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset___block_invoke(uint64_t a1)
{
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  if (v3)
  {
    v5 = (v3 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 contents];
  v7 = [*(a1 + 32) length];

  return memcpy(v5, v6, v7);
}

- (CaptureMTLBlitCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v20.receiver = self;
  v20.super_class = CaptureMTLBlitCommandEncoder;
  v9 = [(CaptureMTLBlitCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    objc_storeWeak(&v10->_captureCommandBuffer, bufferCopy);
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
  }

  return v10;
}

@end