@interface CaptureMTLIndirectCommandBuffer
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (BOOL)isAliasable;
- (BOOL)isPurgeable;
- (CaptureMTLIndirectCommandBuffer)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)indirectComputeCommandAtIndex:(unint64_t)index;
- (id)indirectRenderCommandAtIndex:(unint64_t)index;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)resetWithRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setResponsibleProcess:(int)process;
- (void)touch;
@end

@implementation CaptureMTLIndirectCommandBuffer

- (unint64_t)setPurgeableState:(unint64_t)state
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  v5 = [(MTLIndirectCommandBufferSPI *)self->_baseObject setPurgeableState:state];
  v6 = v17;
  *(v17 + 8) = -15920;
  v7 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v9 = *(*(&v16 + 1) + 24);
    v10 = BYTE10(v18);
    ++BYTE10(v18);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v17 + 1), v10 | 0x1800000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = v5;
  *(v8 + 2) = state;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
  return v5;
}

- (void)resetWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  [(MTLIndirectCommandBufferSPI *)self->_baseObject resetWithRange:location, length];
  v6 = v16;
  *(v16 + 8) = -15896;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x28uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1800000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 24;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 1) = location;
  *(v8 + 2) = length;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)makeAliasable
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIndirectCommandBufferSPI *)self->_baseObject makeAliasable];
  v3 = v13;
  *(v13 + 8) = -15919;
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
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
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

- (BOOL)isPurgeable
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  isPurgeable = [(MTLIndirectCommandBufferSPI *)self->_baseObject isPurgeable];
  v4 = v15;
  *(v15 + 8) = -15917;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x1000000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  *(v6 + 2) = isPurgeable;
  *(v6 + 3) = 0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  return isPurgeable;
}

- (BOOL)isAliasable
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  isAliasable = [(MTLIndirectCommandBufferSPI *)self->_baseObject isAliasable];
  v4 = v15;
  *(v15 + 8) = -15918;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x1000000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  *(v6 + 2) = isAliasable;
  *(v6 + 3) = 0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  return isAliasable;
}

- (id)indirectRenderCommandAtIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLIndirectCommandBufferSPI *)self->_baseObject indirectRenderCommandAtIndex:?];
  if (v10)
  {
    v11 = [[CaptureMTLIndirectRenderCommand alloc] initWithBaseObject:v10 captureContext:self->_traceContext];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLIndirectRenderCommand *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -15922;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIndirectRenderCommand *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = index;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (id)indirectComputeCommandAtIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  v23 = traceContext;
  *&v24 = 0;
  *(&v24 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v25 = v8;
  BYTE8(v25) = *(v6 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  v10 = [(MTLIndirectCommandBufferSPI *)self->_baseObject indirectComputeCommandAtIndex:?];
  if (v10)
  {
    v11 = [[CaptureMTLIndirectComputeCommand alloc] initWithBaseObject:v10 captureContext:self->_traceContext];
  }

  else
  {
    v11 = 0;
  }

  GTTraceEncoder_setStream(&v23, [(CaptureMTLIndirectComputeCommand *)v11 traceStream]);
  v12 = v24;
  *(v24 + 8) = -15921;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x28uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLIndirectComputeCommand *)v11 traceStream];
  if (traceStream2)
  {
    v20 = traceStream2->var0;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = index;
  v21 = v24;
  *v7 = v25;
  *(v7 + 8) = BYTE8(v25);
  *(v21 + 15) |= 8u;

  return v11;
}

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = self->_baseObject;
  baseObject = [resource baseObject];
  LOBYTE(baseObject) = [(MTLIndirectCommandBufferSPI *)baseObject doesAliasResource:baseObject];

  return baseObject;
}

- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (count)
  {
    v9 = v8;
    countCopy = count;
    do
    {
      v11 = *resources++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  return [(MTLIndirectCommandBufferSPI *)baseObject doesAliasAnyResources:v8 count:count];
}

- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count
{
  baseObject = self->_baseObject;
  __chkstk_darwin(self);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  if (count)
  {
    v9 = v8;
    countCopy = count;
    do
    {
      v11 = *resources++;
      *v9 = [v11 baseObject];
      v9 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  return [(MTLIndirectCommandBufferSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)setResponsibleProcess:(int)process
{
  v3 = *&process;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLIndirectCommandBufferSPI *)self->_baseObject setResponsibleProcess:v3];
  v5 = v15;
  *(v15 + 8) = -15924;
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
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
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

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIndirectCommandBufferSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15925;
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
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
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
  v5 = [(MTLIndirectCommandBufferSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIndirectCommandBuffer;
  v3 = [(CaptureMTLIndirectCommandBuffer *)&v7 description];
  v4 = [(MTLIndirectCommandBufferSPI *)self->_baseObject description];
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

- (void)dealloc
{
  [(CaptureMTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15923;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x800000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLIndirectCommandBuffer *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v13.receiver = self;
  v13.super_class = CaptureMTLIndirectCommandBuffer;
  [(CaptureMTLIndirectCommandBuffer *)&v13 dealloc];
}

- (CaptureMTLIndirectCommandBuffer)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLIndirectCommandBuffer;
  v9 = [(CaptureMTLIndirectCommandBuffer *)&v14 init];
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