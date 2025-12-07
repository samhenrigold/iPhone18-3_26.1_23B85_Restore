@interface CaptureMTLIntersectionFunctionTable
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)object captureComputePipelineState:(id)state descriptor:(id)descriptor;
- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)object captureDevice:(id)device descriptor:(id)descriptor;
- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)object captureRenderPipelineState:(id)state descriptor:(id)descriptor;
- (NSString)description;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setGlobalBuffer:(id)buffer;
- (void)setGlobalBufferOffset:(unint64_t)offset;
- (void)setLabel:(id)label;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index;
- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)touch;
@end

@implementation CaptureMTLIntersectionFunctionTable

- (unint64_t)setPurgeableState:(unint64_t)state
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  v5 = [(MTLIntersectionFunctionTableSPI *)self->_baseObject setPurgeableState:state];
  v6 = v17;
  *(v17 + 8) = -15557;
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
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (void)makeAliasable
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject makeAliasable];
  v3 = v13;
  *(v13 + 8) = -15560;
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
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = self->_baseObject;
  baseObject = [resource baseObject];
  LOBYTE(baseObject) = [(MTLIntersectionFunctionTableSPI *)baseObject doesAliasResource:baseObject];

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

  return [(MTLIntersectionFunctionTableSPI *)baseObject doesAliasAnyResources:v8 count:count];
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

  return [(MTLIntersectionFunctionTableSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15570;
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
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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

- (void)setGlobalBufferOffset:(unint64_t)offset
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLIntersectionFunctionTable_setGlobalBufferOffset", "Ray tracing", 0, 0);
  baseObject = self->_baseObject;

  [(MTLIntersectionFunctionTableSPI *)baseObject setGlobalBufferOffset:offset];
}

- (void)setGlobalBuffer:(id)buffer
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLIntersectionFunctionTable_setGlobalBuffer", "Ray tracing", 0, 0);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setGlobalBuffer:bufferCopy];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLIntersectionFunctionTableSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIntersectionFunctionTable;
  v3 = [(CaptureMTLIntersectionFunctionTable *)&v7 description];
  v4 = [(MTLIntersectionFunctionTableSPI *)self->_baseObject description];
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

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v8 = range.location;
    tablesCopy = tables;
    v10 = range.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_buffers count])
      {
        if (*tablesCopy)
        {
          [(NSMutableArray *)self->_buffers setObject:*tablesCopy atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)self->_buffers setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++tablesCopy;
      ++v8;
      --v10;
    }

    while (v10);
  }

  tablesCopy2 = tables;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  s();
  v13 = v12;
  *(v12 + 8) |= 1u;
  baseObject = self->_baseObject;
  v15 = 8 * length;
  __chkstk_darwin(v12);
  bzero(&v30 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v16 = tablesCopy2;
    v17 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = length;
    do
    {
      v19 = *v16++;
      *v17++ = [v19 baseObject];
      --v18;
    }

    while (v18);
  }

  [(MTLIntersectionFunctionTableSPI *)baseObject setVisibleFunctionTables:&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v20 = v33;
  *(v33 + 8) = -15525;
  v21 = BYTE9(v34);
  if (BYTE9(v34) > 0x20uLL)
  {
    v23 = *(*(&v32 + 1) + 24);
    v24 = BYTE10(v34);
    ++BYTE10(v34);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v33 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v34));
    BYTE9(v34) += 32;
  }

  v25 = tablesCopy2;
  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v32, (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0)), v25, length);
  *v22 = var0;
  *(v22 + 1) = location;
  *(v22 + 2) = length;
  v22[24] = v28;
  *(v22 + 25) = 0;
  *(v22 + 7) = 0;
  v29 = v33;
  *v13 = v34;
  *(v13 + 8) = BYTE8(v34);
  *(v29 + 15) |= 8u;
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  if ([(NSMutableArray *)self->_buffers count]> index)
  {
    if (tableCopy)
    {
      [(NSMutableArray *)self->_buffers setObject:tableCopy atIndexedSubscript:index];
    }

    else
    {
      v7 = +[NSNull null];
      [(NSMutableArray *)self->_buffers setObject:v7 atIndexedSubscript:index];
    }
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  s();
  v9 = v8;
  *(v8 + 8) |= 1u;
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLIntersectionFunctionTableSPI *)baseObject setVisibleFunctionTable:baseObject atBufferIndex:index];

  v12 = v23;
  *(v23 + 8) = -15526;
  v13 = BYTE9(v24);
  if (BYTE9(v24) > 0x28uLL)
  {
    v15 = *(*(&v22 + 1) + 24);
    v16 = BYTE10(v24);
    ++BYTE10(v24);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v23 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v24));
    BYTE9(v24) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = index;
  v21 = v23;
  *v9 = v24;
  *(v9 + 8) = BYTE8(v24);
  *(v21 + 15) |= 8u;
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v8 = range.location;
    v9 = range.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_functions count])
      {
        v10 = +[NSNull null];
        [(NSMutableArray *)self->_functions setObject:v10 atIndexedSubscript:v8];
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueCurveIntersectionFunctionWithSignature:signature withRange:location, length];
  v11 = v21;
  *(v21 + 8) = -15257;
  v12 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v14 = *(*(&v20 + 1) + 24);
    v15 = BYTE10(v22);
    ++BYTE10(v22);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v21 + 1), v15 | 0x2000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = signature;
  *(v13 + 2) = location;
  *(v13 + 3) = length;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setOpaqueCurveIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_functions count]> index)
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functions setObject:v7 atIndexedSubscript:index];
  }

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueCurveIntersectionFunctionWithSignature:signature atIndex:index];
  v8 = v18;
  *(v18 + 8) = -15258;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = signature;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v8 = range.location;
    v9 = range.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_functions count])
      {
        v10 = +[NSNull null];
        [(NSMutableArray *)self->_functions setObject:v10 atIndexedSubscript:v8];
      }

      ++v8;
      --v9;
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueTriangleIntersectionFunctionWithSignature:signature withRange:location, length];
  v11 = v21;
  *(v21 + 8) = -15529;
  v12 = BYTE9(v22);
  if (BYTE9(v22) > 0x20uLL)
  {
    v14 = *(*(&v20 + 1) + 24);
    v15 = BYTE10(v22);
    ++BYTE10(v22);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v21 + 1), v15 | 0x2000000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v22));
    BYTE9(v22) += 32;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = signature;
  *(v13 + 2) = location;
  *(v13 + 3) = length;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)setOpaqueTriangleIntersectionFunctionWithSignature:(unint64_t)signature atIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_functions count]> index)
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functions setObject:v7 atIndexedSubscript:index];
  }

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIntersectionFunctionTableSPI *)self->_baseObject setOpaqueTriangleIntersectionFunctionWithSignature:signature atIndex:index];
  v8 = v18;
  *(v18 + 8) = -15530;
  v9 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v11 = *(*(&v17 + 1) + 24);
    v12 = BYTE10(v19);
    ++BYTE10(v19);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v18 + 1), v12 | 0x1800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = signature;
  *(v10 + 2) = index;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (range.length)
  {
    v8 = range.location;
    functionsCopy = functions;
    v10 = range.length;
    do
    {
      if (v8 < [(NSMutableArray *)self->_functions count])
      {
        if (*functionsCopy)
        {
          [(NSMutableArray *)self->_functions setObject:*functionsCopy atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)self->_functions setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++functionsCopy;
      ++v8;
      --v10;
    }

    while (v10);
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v12 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  v14 = 8 * length;
  __chkstk_darwin(v12);
  bzero(&v29 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    functionsCopy2 = functions;
    v16 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = length;
    do
    {
      v18 = *functionsCopy2++;
      *v16++ = [v18 baseObject];
      --v17;
    }

    while (v17);
  }

  [(MTLIntersectionFunctionTableSPI *)baseObject setFunctions:&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v19 = v30;
  *(v30 + 8) = -15558;
  v20 = BYTE9(v31);
  if (BYTE9(v31) > 0x20uLL)
  {
    v22 = *(*(&v29 + 1) + 24);
    v23 = BYTE10(v31);
    ++BYTE10(v31);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v30 + 1), v23 | 0x2000000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v31));
    BYTE9(v31) += 32;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v26 = StreamArray(&v29, (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0)), functions, length);
  *v21 = var0;
  *(v21 + 1) = location;
  *(v21 + 2) = length;
  v21[24] = v26;
  *(v21 + 25) = 0;
  *(v21 + 7) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  functionCopy = function;
  if ([(NSMutableArray *)self->_functions count]> index)
  {
    if (functionCopy)
    {
      [(NSMutableArray *)self->_functions setObject:functionCopy atIndexedSubscript:index];
    }

    else
    {
      v7 = +[NSNull null];
      [(NSMutableArray *)self->_functions setObject:v7 atIndexedSubscript:index];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [functionCopy baseObject];
  [(MTLIntersectionFunctionTableSPI *)baseObject setFunction:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -15559;
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
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [functionCopy traceStream];
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

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  offsetsCopy = offsets;
  if (range.length)
  {
    v9 = range.location;
    buffersCopy = buffers;
    v11 = range.length;
    do
    {
      if (v9 < [(NSMutableArray *)self->_buffers count])
      {
        if (*buffersCopy)
        {
          [(NSMutableArray *)self->_buffers setObject:*buffersCopy atIndexedSubscript:v9];
        }

        else
        {
          v12 = +[NSNull null];
          [(NSMutableArray *)self->_buffers setObject:v12 atIndexedSubscript:v9];
        }
      }

      ++buffersCopy;
      ++v9;
      --v11;
    }

    while (v11);
  }

  buffersCopy2 = buffers;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v36);
  s();
  v14 = v13;
  *(v13 + 8) |= 1u;
  baseObject = self->_baseObject;
  v16 = 8 * length;
  __chkstk_darwin(v13);
  bzero(&offsetsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v17 = buffersCopy2;
    v18 = (&offsetsCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = length;
    do
    {
      v20 = *v17++;
      *v18++ = [v20 baseObject];
      --v19;
    }

    while (v19);
  }

  v21 = offsetsCopy;
  v22 = location;
  [(MTLIntersectionFunctionTableSPI *)baseObject setBuffers:&offsetsCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy withRange:location, length, offsetsCopy];
  v23 = v37;
  *(v37 + 8) = -15544;
  v24 = BYTE9(v38);
  if (BYTE9(v38) > 0x20uLL)
  {
    v26 = *(*(&v36 + 1) + 24);
    v27 = BYTE10(v38);
    ++BYTE10(v38);
    v25 = GTTraceMemPool_allocateBytes(v26, *(&v37 + 1), v27 | 0x2000000000) + 16;
    v24 = v27;
  }

  else
  {
    v25 = (v23 + BYTE9(v38));
    BYTE9(v38) += 32;
  }

  v28 = buffersCopy2;
  *(v23 + 13) = v24;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&offsetsCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v31 = StreamArray(&v36, (&offsetsCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)), v28, length);
  v32 = GTTraceEncoder_storeBytes(&v36, v21, 8 * length);
  *v25 = var0;
  *(v25 + 1) = v22;
  *(v25 + 2) = length;
  v25[24] = v31;
  v25[25] = v32;
  *(v25 + 26) = 0;
  *(v25 + 15) = 0;
  v33 = v37;
  *v14 = v38;
  *(v14 + 8) = BYTE8(v38);
  *(v33 + 15) |= 8u;
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  if ([(NSMutableArray *)self->_buffers count]> index)
  {
    if (bufferCopy)
    {
      [(NSMutableArray *)self->_buffers setObject:bufferCopy atIndexedSubscript:index];
    }

    else
    {
      v9 = +[NSNull null];
      [(NSMutableArray *)self->_buffers setObject:v9 atIndexedSubscript:index];
    }
  }

  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  s();
  v11 = v10;
  *(v10 + 8) |= 1u;
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIntersectionFunctionTableSPI *)baseObject setBuffer:baseObject offset:offset atIndex:index];

  v14 = v25;
  *(v25 + 8) = -15545;
  v15 = BYTE9(v26);
  if (BYTE9(v26) > 0x20uLL)
  {
    v17 = *(*(&v24 + 1) + 24);
    v18 = BYTE10(v26);
    ++BYTE10(v26);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v25 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v26));
    BYTE9(v26) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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
  *(v16 + 3) = index;
  v23 = v25;
  *v11 = v26;
  *(v11 + 8) = BYTE8(v26);
  *(v23 + 15) |= 8u;
}

- (void)dealloc
{
  [(MTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -15568;
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
  traceStream = [(CaptureMTLIntersectionFunctionTable *)self traceStream];
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
  v13.super_class = CaptureMTLIntersectionFunctionTable;
  [(CaptureMTLIntersectionFunctionTable *)&v13 dealloc];
}

- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)object captureRenderPipelineState:(id)state descriptor:(id)descriptor
{
  objectCopy = object;
  stateCopy = state;
  descriptorCopy = descriptor;
  v29.receiver = self;
  v29.super_class = CaptureMTLIntersectionFunctionTable;
  v12 = [(CaptureMTLIntersectionFunctionTable *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    device = [stateCopy device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_captureRenderPipelineState, state);
    traceContext = [stateCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    v18 = 31;
    v19 = [[NSMutableArray alloc] initWithCapacity:31];
    buffers = v13->_buffers;
    v13->_buffers = v19;

    do
    {
      v21 = v13->_buffers;
      v22 = +[NSNull null];
      [(NSMutableArray *)v21 addObject:v22];

      --v18;
    }

    while (v18);
    v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(descriptorCopy, "functionCount")}];
    functions = v13->_functions;
    v13->_functions = v23;

    if ([descriptorCopy functionCount])
    {
      v25 = 0;
      do
      {
        v26 = v13->_functions;
        v27 = +[NSNull null];
        [(NSMutableArray *)v26 addObject:v27];

        ++v25;
      }

      while ([descriptorCopy functionCount] > v25);
    }
  }

  return v13;
}

- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)object captureComputePipelineState:(id)state descriptor:(id)descriptor
{
  objectCopy = object;
  stateCopy = state;
  descriptorCopy = descriptor;
  v29.receiver = self;
  v29.super_class = CaptureMTLIntersectionFunctionTable;
  v12 = [(CaptureMTLIntersectionFunctionTable *)&v29 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    device = [stateCopy device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_captureComputePipelineState, state);
    traceContext = [stateCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    v18 = 31;
    v19 = [[NSMutableArray alloc] initWithCapacity:31];
    buffers = v13->_buffers;
    v13->_buffers = v19;

    do
    {
      v21 = v13->_buffers;
      v22 = +[NSNull null];
      [(NSMutableArray *)v21 addObject:v22];

      --v18;
    }

    while (v18);
    v23 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(descriptorCopy, "functionCount")}];
    functions = v13->_functions;
    v13->_functions = v23;

    if ([descriptorCopy functionCount])
    {
      v25 = 0;
      do
      {
        v26 = v13->_functions;
        v27 = +[NSNull null];
        [(NSMutableArray *)v26 addObject:v27];

        ++v25;
      }

      while ([descriptorCopy functionCount] > v25);
    }
  }

  return v13;
}

- (CaptureMTLIntersectionFunctionTable)initWithBaseObject:(id)object captureDevice:(id)device descriptor:(id)descriptor
{
  objectCopy = object;
  deviceCopy = device;
  descriptorCopy = descriptor;
  v27.receiver = self;
  v27.super_class = CaptureMTLIntersectionFunctionTable;
  v12 = [(CaptureMTLIntersectionFunctionTable *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v15 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v15, v13);

    v16 = 31;
    v17 = [[NSMutableArray alloc] initWithCapacity:31];
    buffers = v13->_buffers;
    v13->_buffers = v17;

    do
    {
      v19 = v13->_buffers;
      v20 = +[NSNull null];
      [(NSMutableArray *)v19 addObject:v20];

      --v16;
    }

    while (v16);
    v21 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(descriptorCopy, "functionCount")}];
    functions = v13->_functions;
    v13->_functions = v21;

    if ([descriptorCopy functionCount])
    {
      v23 = 0;
      do
      {
        v24 = v13->_functions;
        v25 = +[NSNull null];
        [(NSMutableArray *)v24 addObject:v25];

        ++v23;
      }

      while ([descriptorCopy functionCount] > v23);
    }
  }

  return v13;
}

@end