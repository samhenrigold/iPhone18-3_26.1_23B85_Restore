@interface CaptureMTL4ArgumentTable
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4ArgumentTable)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index;
- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index;
- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index;
- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index;
- (void)touch;
@end

@implementation CaptureMTL4ArgumentTable

- (void)setTexture:(MTLResourceID)texture atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTL4ArgumentTableSPI *)self->_baseObject setTexture:texture._impl atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15178;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = (GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16);
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v9->_impl = var0;
  v9[1]._impl = texture._impl;
  v9[2]._impl = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setSamplerState:(MTLResourceID)state atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTL4ArgumentTableSPI *)self->_baseObject setSamplerState:state._impl atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15179;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = (GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16);
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v9->_impl = var0;
  v9[1]._impl = state._impl;
  v9[2]._impl = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setResource:(MTLResourceID)resource atBufferIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTL4ArgumentTableSPI *)self->_baseObject setResource:resource._impl atBufferIndex:index];
  v7 = v17;
  *(v17 + 8) = -15180;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = (GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16);
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v9->_impl = var0;
  v9[1]._impl = resource._impl;
  v9[2]._impl = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setAddress:(unint64_t)address attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTL4ArgumentTableSPI *)self->_baseObject setAddress:address attributeStride:stride atIndex:index];
  v9 = v19;
  *(v19 + 8) = -14848;
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
  traceStream = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = address;
  *(v11 + 2) = stride;
  *(v11 + 3) = index;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setAddress:(unint64_t)address atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTL4ArgumentTableSPI *)self->_baseObject setAddress:address atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15181;
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
  traceStream = [(CaptureMTL4ArgumentTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = address;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15182;
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
  traceStream = [(CaptureMTL4ArgumentTable *)self traceStream];
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
  v12.super_class = CaptureMTL4ArgumentTable;
  [(CaptureMTL4ArgumentTable *)&v12 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4ArgumentTableSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4ArgumentTable;
  v3 = [(CaptureMTL4ArgumentTable *)&v7 description];
  v4 = [(MTL4ArgumentTableSPI *)self->_baseObject description];
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

- (CaptureMTL4ArgumentTable)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTL4ArgumentTable;
  v9 = [(CaptureMTL4ArgumentTable *)&v14 init];
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