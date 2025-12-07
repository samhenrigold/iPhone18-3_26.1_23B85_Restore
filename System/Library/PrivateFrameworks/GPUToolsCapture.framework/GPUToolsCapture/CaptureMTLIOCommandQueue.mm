@interface CaptureMTLIOCommandQueue
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLIOCommandQueue)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (unint64_t)streamReference;
- (void)barrier;
- (void)dealloc;
- (void)enqueueBarrier;
- (void)setLabel:(id)label;
- (void)touch;
@end

@implementation CaptureMTLIOCommandQueue

- (void)enqueueBarrier
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIOCommandQueueSPI *)self->_baseObject enqueueBarrier];
  v3 = v13;
  *(v13 + 8) = -15291;
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
  traceStream = [(CaptureMTLIOCommandQueue *)self traceStream];
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
  *(v14 + 8) = -15332;
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
  traceStream = [(CaptureMTLIOCommandQueue *)self traceStream];
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
  v12.super_class = CaptureMTLIOCommandQueue;
  [(CaptureMTLIOCommandQueue *)&v12 dealloc];
}

- (id)commandBufferWithUnretainedReferences
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v26 = v6;
  BYTE8(v26) = *(v4 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  commandBufferWithUnretainedReferences = [(MTLIOCommandQueueSPI *)self->_baseObject commandBufferWithUnretainedReferences];
  if (commandBufferWithUnretainedReferences)
  {
    v9 = [[CaptureMTLIOCommandBuffer alloc] initWithBaseObject:commandBufferWithUnretainedReferences captureIOCommandQueue:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLIOCommandBuffer *)v9 traceStream]);
  v10 = v25;
  *(v25 + 8) = -15306;
  v11 = BYTE9(v26);
  if (BYTE9(v26) > 0x30uLL)
  {
    v13 = *(*(&v24 + 1) + 24);
    v14 = BYTE10(v26);
    ++BYTE10(v26);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v25 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v26));
    BYTE9(v26) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLIOCommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOCommandBuffer *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  __src = [(CaptureMTLIOCommandBuffer *)v9 isCapturing];
  v19 = GTTraceEncoder_storeBytes(&v24, &__src, 1uLL);
  v20 = v25;
  v21 = v26;
  *(v25 + 14) = v19;
  *v5 = v21;
  *(v5 + 8) = BYTE8(v26);
  *(v20 + 15) |= 8u;

  return v9;
}

- (id)commandBuffer
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  traceContext = self->_traceContext;
  v24 = traceContext;
  *&v25 = 0;
  *(&v25 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v5 = v4;
  v6 = *v4;
  *v4 = v7;
  *&v26 = v6;
  BYTE8(v26) = *(v4 + 8);
  *(&v26 + 9) = 16400;
  *(&v26 + 11) = 0;
  HIBYTE(v26) = 0;
  commandBuffer = [(MTLIOCommandQueueSPI *)self->_baseObject commandBuffer];
  if (commandBuffer)
  {
    v9 = [[CaptureMTLIOCommandBuffer alloc] initWithBaseObject:commandBuffer captureIOCommandQueue:self];
  }

  else
  {
    v9 = 0;
  }

  GTTraceEncoder_setStream(&v24, [(CaptureMTLIOCommandBuffer *)v9 traceStream]);
  v10 = v25;
  *(v25 + 8) = -15333;
  v11 = BYTE9(v26);
  if (BYTE9(v26) > 0x30uLL)
  {
    v13 = *(*(&v24 + 1) + 24);
    v14 = BYTE10(v26);
    ++BYTE10(v26);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v25 + 1), v14 | 0x1000000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v26));
    BYTE9(v26) += 16;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLIOCommandQueue *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIOCommandBuffer *)v9 traceStream];
  if (traceStream2)
  {
    v18 = traceStream2->var0;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  __src = [(CaptureMTLIOCommandBuffer *)v9 isCapturing];
  v19 = GTTraceEncoder_storeBytes(&v24, &__src, 1uLL);
  v20 = v25;
  v21 = v26;
  *(v25 + 14) = v19;
  *v5 = v21;
  *(v5 + 8) = BYTE8(v26);
  *(v20 + 15) |= 8u;

  return v9;
}

- (void)barrier
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIOCommandQueueSPI *)self->_baseObject barrier];
  v3 = v13;
  *(v13 + 8) = -15334;
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
  traceStream = [(CaptureMTLIOCommandQueue *)self traceStream];
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
  v5 = [(MTLIOCommandQueueSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIOCommandQueue;
  v3 = [(CaptureMTLIOCommandQueue *)&v7 description];
  v4 = [(MTLIOCommandQueueSPI *)self->_baseObject description];
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

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIOCommandQueueSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15307;
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
  traceStream = [(CaptureMTLIOCommandQueue *)self traceStream];
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

- (CaptureMTLIOCommandQueue)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLIOCommandQueue;
  v9 = [(CaptureMTLIOCommandQueue *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v10->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v10->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v12, v10);
  }

  return v10;
}

@end