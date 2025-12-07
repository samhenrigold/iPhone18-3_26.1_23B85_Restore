@interface CaptureMTLIOCommandBuffer
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLIOCommandBuffer)initWithBaseObject:(id)object captureIOCommandQueue:(id)queue;
- (NSString)description;
- (unint64_t)streamReference;
- (void)_preCommitWithIndex:(unint64_t)index;
- (void)addBarrier;
- (void)addCompletedHandler:(id)handler;
- (void)commit;
- (void)copyStatusToBuffer:(id)buffer offset:(unint64_t)offset;
- (void)dealloc;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)enqueue;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset;
- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)touch;
- (void)tryCancel;
- (void)waitForEvent:(id)event value:(unint64_t)value;
- (void)waitUntilCompleted;
@end

@implementation CaptureMTLIOCommandBuffer

- (void)waitUntilCompleted
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIOCommandBufferSPI *)self->_baseObject waitUntilCompleted];
  v3 = v13;
  *(v13 + 8) = -15335;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)tryCancel
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIOCommandBufferSPI *)self->_baseObject tryCancel];
  v3 = v13;
  *(v13 + 8) = -15336;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIOCommandBufferSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -15292;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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
  [(MTLIOCommandBufferSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -15293;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1
{
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  traceContext = self->_traceContext;
  handleCopy = handle;
  textureCopy = texture;
  GTTraceContext_pushEncoderWithStream(traceContext, &v48);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  v41 = handleCopy;
  baseObject2 = [handleCopy baseObject];
  v47 = *size;
  v46 = *origin;
  sliceCopy = slice;
  rowCopy = row;
  [(MTLIOCommandBufferSPI *)baseObject loadTexture:baseObject slice:slice level:level size:&v47 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v46 sourceHandle:baseObject2 sourceHandleOffset:offset];

  v22 = *(&v48 + 1);
  v23 = v49;
  *(v49 + 8) = -15310;
  v24 = *(v22 + 24);
  v25 = BYTE10(v50);
  ++BYTE10(v50);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v49 + 1), v25 | 0x7000000000);
  *(v23 + 13) = v25;
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

  v30 = size->var0;
  var1 = size->var1;
  var2 = size->var2;
  v33 = origin->var0;
  v34 = origin->var1;
  v35 = origin->var2;
  traceStream3 = [v41 traceStream];

  if (traceStream3)
  {
    v37 = *traceStream3;
  }

  else
  {
    v37 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = v29;
  *(Bytes + 4) = sliceCopy;
  *(Bytes + 5) = level;
  *(Bytes + 6) = v30;
  *(Bytes + 7) = var1;
  *(Bytes + 8) = var2;
  *(Bytes + 9) = rowCopy;
  *(Bytes + 10) = image;
  *(Bytes + 11) = v33;
  *(Bytes + 12) = v34;
  *(Bytes + 13) = v35;
  *(Bytes + 14) = v37;
  *(Bytes + 15) = offset;
  s();
  *v38 = v39;
  *(v38 + 8) = BYTE8(v50);
  *(v49 + 15) |= 8u;
}

- (void)enqueue
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIOCommandBufferSPI *)self->_baseObject enqueue];
  v3 = v13;
  *(v13 + 8) = -15312;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)copyStatusToBuffer:(id)buffer offset:(unint64_t)offset
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject copyStatusToBuffer:baseObject offset:offset];

  v10 = v22;
  *(v22 + 8) = -15342;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)addBarrier
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIOCommandBufferSPI *)self->_baseObject addBarrier];
  v3 = v13;
  *(v13 + 8) = -15295;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLIOCommandBufferSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIOCommandBuffer;
  v3 = [(CaptureMTLIOCommandBuffer *)&v7 description];
  v4 = [(MTLIOCommandBufferSPI *)self->_baseObject description];
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

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset
{
  handleCopy = handle;
  bufferCopy = buffer;
  traceStream = [bufferCopy traceStream];
  if (traceStream)
  {
    v15 = atomic_load(traceStream + 7);
    v16 = v15;
    do
    {
      atomic_compare_exchange_strong(traceStream + 7, &v16, v15 | 2);
      v17 = v16 == v15;
      v15 = v16;
    }

    while (!v17);
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v19 = atomic_load(traceStream2 + 7);
    v20 = v19;
    do
    {
      atomic_compare_exchange_strong(traceStream2 + 7, &v20, v19 | 8);
      v17 = v20 == v19;
      v19 = v20;
    }

    while (!v17);
  }

  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [handleCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject loadBuffer:baseObject offset:offset size:size sourceHandle:baseObject2 sourceHandleOffset:handleOffset];

  v24 = v37;
  *(v37 + 8) = -15311;
  v25 = BYTE9(v38);
  if (BYTE9(v38) > 0x10uLL)
  {
    v27 = *(*(&v36 + 1) + 24);
    v28 = BYTE10(v38);
    ++BYTE10(v38);
    v26 = GTTraceMemPool_allocateBytes(v27, *(&v37 + 1), v28 | 0x3000000000) + 16;
    v25 = v28;
  }

  else
  {
    v26 = (v24 + BYTE9(v38));
    BYTE9(v38) += 48;
  }

  *(v24 + 13) = v25;
  traceStream3 = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream3)
  {
    var0 = traceStream3->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream4 = [bufferCopy traceStream];

  if (traceStream4)
  {
    traceStream4 = *traceStream4;
  }

  traceStream5 = [handleCopy traceStream];

  if (traceStream5)
  {
    v33 = *traceStream5;
  }

  else
  {
    v33 = 0;
  }

  *v26 = var0;
  *(v26 + 1) = traceStream4;
  *(v26 + 2) = offset;
  *(v26 + 3) = size;
  *(v26 + 4) = v33;
  *(v26 + 5) = handleOffset;
  s();
  *v34 = v35;
  *(v34 + 8) = BYTE8(v38);
  *(v37 + 15) |= 8u;
}

- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  traceContext = self->_traceContext;
  handleCopy = handle;
  GTTraceContext_pushEncoderWithStream(traceContext, &v26);
  baseObject = self->_baseObject;
  baseObject = [handleCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject loadBytes:bytes size:size sourceHandle:baseObject sourceHandleOffset:offset];

  v14 = v27;
  *(v27 + 8) = -15294;
  v15 = BYTE9(v28);
  if (BYTE9(v28) > 0x18uLL)
  {
    v17 = *(*(&v26 + 1) + 24);
    v18 = BYTE10(v28);
    ++BYTE10(v28);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v27 + 1), v18 | 0x2800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v28));
    BYTE9(v28) += 40;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [handleCopy traceStream];

  if (traceStream2)
  {
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v23 = GTTraceEncoder_storeBlob(&v26, bytes, size);
  }

  else
  {
    v23 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = size;
  *(v16 + 2) = v22;
  *(v16 + 3) = offset;
  v16[32] = v23;
  *(v16 + 33) = 0;
  *(v16 + 9) = 0;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  eventCopy = event;
  [eventCopy touch];
  if (eventCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:eventCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [eventCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject encodeWaitForEvent:baseObject value:value];

  v10 = v22;
  *(v22 + 8) = -15339;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [eventCopy traceStream];
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
  *(v12 + 2) = value;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  eventCopy = event;
  [eventCopy touch];
  if (eventCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:eventCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [eventCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject encodeSignalEvent:baseObject value:value];

  v10 = v22;
  *(v22 + 8) = -15340;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [eventCopy traceStream];
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
  *(v12 + 2) = value;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  eventCopy = event;
  [eventCopy touch];
  if (eventCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:eventCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [eventCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject signalEvent:baseObject value:value];

  v10 = v22;
  *(v22 + 8) = -15309;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [eventCopy traceStream];
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
  *(v12 + 2) = value;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  eventCopy = event;
  [eventCopy touch];
  if (eventCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:eventCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [eventCopy baseObject];
  [(MTLIOCommandBufferSPI *)baseObject waitForEvent:baseObject value:value];

  v10 = v22;
  *(v22 + 8) = -15308;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [eventCopy traceStream];
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
  *(v12 + 2) = value;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIOCommandBufferSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15313;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)commit
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(CaptureMTLIOCommandBuffer *)self _preCommitWithIndex:*v13];
  [(MTLIOCommandBufferSPI *)self->_baseObject commit];
  v3 = v13;
  *(v13 + 8) = -15343;
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
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
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

- (void)_preCommitWithIndex:(unint64_t)index
{
  completedDispatchArray = self->_completedDispatchArray;
  if (completedDispatchArray)
  {
    v6 = completedDispatchArray;
    v7 = self->_completedDispatchArray;
    self->_completedDispatchArray = 0;

    selfCopy = self;
    baseObject = selfCopy->_baseObject;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __49__CaptureMTLIOCommandBuffer__preCommitWithIndex___block_invoke;
    v12[3] = &unk_2F1F60;
    v14 = selfCopy;
    indexCopy = index;
    v13 = v6;
    v10 = selfCopy;
    v11 = v6;
    [(MTLIOCommandBufferSPI *)baseObject addCompletedHandler:v12];
  }
}

void __49__CaptureMTLIOCommandBuffer__preCommitWithIndex___block_invoke(uint64_t a1)
{
  s();
  v3 = v2;
  v4 = *v2;
  *v2 = v5;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  *v3 = v4;
}

- (void)addCompletedHandler:(id)handler
{
  handlerCopy = handler;
  completedDispatchArray = self->_completedDispatchArray;
  if (!completedDispatchArray)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_completedDispatchArray;
    self->_completedDispatchArray = v6;

    completedDispatchArray = self->_completedDispatchArray;
  }

  v8 = objc_retainBlock(handlerCopy);
  [(NSMutableArray *)completedDispatchArray addObject:v8];

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  v9 = v19;
  *(v19 + 8) = -15345;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = handlerCopy;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)dealloc
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  s();
  v4 = v3;
  v5 = *v3;
  *v3 = v6;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = self->_completedDispatchArray;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v21 + 1) + 8 * i) + 16))();
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v9);
  }

  *v4 = v5;
  v12 = v26;
  *(v26 + 8) = -15341;
  v13 = BYTE9(v27);
  if (BYTE9(v27) > 0x38uLL)
  {
    v15 = *(*(&v25 + 1) + 24);
    v16 = BYTE10(v27);
    ++BYTE10(v27);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v26 + 1), v16 | 0x800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v27));
    BYTE9(v27) += 8;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIOCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  v19 = v26;
  *v4 = v27;
  *(v4 + 8) = BYTE8(v27);
  *(v19 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v20.receiver = self;
  v20.super_class = CaptureMTLIOCommandBuffer;
  [(CaptureMTLIOCommandBuffer *)&v20 dealloc];
}

- (CaptureMTLIOCommandBuffer)initWithBaseObject:(id)object captureIOCommandQueue:(id)queue
{
  objectCopy = object;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CaptureMTLIOCommandBuffer;
  v9 = [(CaptureMTLIOCommandBuffer *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_captureCommandQueue, queue);
    objc_storeStrong(&v10->_baseObject, object);
    v11 = objc_alloc_init(NSMutableSet);
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = v11;

    traceContext = [(CaptureMTLIOCommandQueue *)v10->_captureCommandQueue traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, v10);

    v10->_isCapturing = (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2;
  }

  return v10;
}

@end