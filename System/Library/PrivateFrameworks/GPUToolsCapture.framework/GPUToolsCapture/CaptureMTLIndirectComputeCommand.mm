@interface CaptureMTLIndirectComputeCommand
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLIndirectComputeCommand)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (NSString)description;
- (unint64_t)streamReference;
- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dealloc;
- (void)reset;
- (void)setComputePipelineState:(id)state;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setStageInRegion:(id *)region;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)touch;
@end

@implementation CaptureMTLIndirectComputeCommand

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLIndirectComputeCommand *)self->_baseObject setThreadgroupMemoryLength:length atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15927;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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
  [(MTLIndirectComputeCommand *)baseObject setStageInRegion:v18];
  v7 = v20;
  *(v20 + 8) = -15926;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v25);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectComputeCommand *)baseObject setKernelBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

  v14 = v26;
  *(v26 + 8) = -15277;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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

- (void)setKernelBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectComputeCommand *)baseObject setKernelBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15933;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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

- (void)setComputePipelineState:(id)state
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  stateCopy = state;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLIndirectComputeCommand *)baseObject setComputePipelineState:baseObject];

  v8 = v20;
  *(v20 + 8) = -15934;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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

- (void)reset
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIndirectComputeCommand *)self->_baseObject reset];
  v3 = v13;
  *(v13 + 8) = -15905;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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
  *(v14 + 8) = -15935;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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
  v12.super_class = CaptureMTLIndirectComputeCommand;
  [(CaptureMTLIndirectComputeCommand *)&v12 dealloc];
}

- (void)concurrentDispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  baseObject = self->_baseObject;
  v6 = *threads;
  v5 = *threadgroup;
  [(MTLIndirectComputeCommand *)baseObject concurrentDispatchThreads:&v6 threadsPerThreadgroup:&v5];
}

- (void)concurrentDispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  baseObject = self->_baseObject;
  v21 = *threadgroups;
  v20 = *threadgroup;
  [(MTLIndirectComputeCommand *)baseObject concurrentDispatchThreadgroups:&v21 threadsPerThreadgroup:&v20];
  v8 = v23;
  *(v23 + 8) = -15931;
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
  traceStream = [(CaptureMTLIndirectComputeCommand *)self traceStream];
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

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLIndirectComputeCommand *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIndirectComputeCommand;
  v3 = [(CaptureMTLIndirectComputeCommand *)&v7 description];
  v4 = [(MTLIndirectComputeCommand *)self->_baseObject description];
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

- (CaptureMTLIndirectComputeCommand)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CaptureMTLIndirectComputeCommand;
  v8 = [(CaptureMTLIndirectComputeCommand *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);
  }

  return v9;
}

@end