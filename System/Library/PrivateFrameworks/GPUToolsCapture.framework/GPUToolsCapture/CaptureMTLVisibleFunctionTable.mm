@interface CaptureMTLVisibleFunctionTable
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureComputePipelineState:(id)state descriptor:(id)descriptor;
- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureRenderPipelineState:(id)state descriptor:(id)descriptor;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFunction:(id)function atIndex:(unint64_t)index;
- (void)setFunctions:(const void *)functions withRange:(_NSRange)range;
- (void)setGlobalBuffer:(id)buffer;
- (void)setGlobalBufferOffset:(unint64_t)offset;
- (void)setLabel:(id)label;
- (void)setValue:(unint64_t)value atIndex:(unint64_t)index;
- (void)setValue:(unint64_t)value withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)touch;
@end

@implementation CaptureMTLVisibleFunctionTable

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = self->_baseObject;
  baseObject = [resource baseObject];
  LOBYTE(baseObject) = [(MTLVisibleFunctionTableSPI *)baseObject doesAliasResource:baseObject];

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

  return [(MTLVisibleFunctionTableSPI *)baseObject doesAliasAnyResources:v8 count:count];
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

  return [(MTLVisibleFunctionTableSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLVisibleFunctionTableSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15607;
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
  traceStream = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
  v5 = [(MTLVisibleFunctionTableSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLVisibleFunctionTable;
  v3 = [(CaptureMTLVisibleFunctionTable *)&v7 description];
  v4 = [(MTLVisibleFunctionTableSPI *)self->_baseObject description];
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

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setVisibleFunctionTable_atBufferIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];

  [(MTLVisibleFunctionTableSPI *)baseObject setVisibleFunctionTable:baseObject atBufferIndex:index];
}

- (void)setValue:(unint64_t)value withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setValue_withRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setValue:value withRange:location, length];
}

- (void)setValue:(unint64_t)value atIndex:(unint64_t)index
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setValue_atIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setValue:value atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setBuffers_offsets_withRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v13, v12);
  if (length)
  {
    v14 = v13;
    v15 = length;
    do
    {
      v16 = *buffers++;
      *v14 = [v16 baseObject];
      v14 += 8;
      --v15;
    }

    while (v15);
  }

  [(MTLVisibleFunctionTableSPI *)baseObject setBuffers:v13 offsets:offsets withRange:location, length];
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setBuffer_offset_atIndex", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];

  [(MTLVisibleFunctionTableSPI *)baseObject setBuffer:baseObject offset:offset atIndex:index];
}

- (void)setGlobalBufferOffset:(unint64_t)offset
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setGlobalBufferOffset", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;

  [(MTLVisibleFunctionTableSPI *)baseObject setGlobalBufferOffset:offset];
}

- (void)setGlobalBuffer:(id)buffer
{
  bufferCopy = buffer;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setGlobalBuffer", "Function Pointers", 0, 0);
  [(MTLVisibleFunctionTableSPI *)self->_baseObject setGlobalBuffer:bufferCopy];
}

- (void)setFunction:(id)function atIndex:(unint64_t)index
{
  functionCopy = function;
  if (functionCopy)
  {
    [(NSMutableArray *)self->_functionArray setObject:functionCopy atIndexedSubscript:index];
  }

  else
  {
    v7 = +[NSNull null];
    [(NSMutableArray *)self->_functionArray setObject:v7 atIndexedSubscript:index];
  }

  traceStream = self->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v10 = atomic_load(p_var1);
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v11, v10 | 2);
      v12 = v11 == v10;
      v10 = v11;
    }

    while (!v12);
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
    baseObject = self->_baseObject;
    baseObject = [functionCopy baseObject];
    [(MTLVisibleFunctionTableSPI *)baseObject setFunction:baseObject atIndex:index];

    v15 = v29;
    *(v29 + 8) = -15598;
    v16 = BYTE9(v30);
    if (BYTE9(v30) > 0x28uLL)
    {
      v20 = *(*(&v28 + 1) + 24);
      v21 = BYTE10(v30);
      ++BYTE10(v30);
      v17 = GTTraceMemPool_allocateBytes(v20, *(&v29 + 1), v21 | 0x1800000000) + 16;
      v16 = v21;
    }

    else
    {
      v17 = (v15 + BYTE9(v30));
      BYTE9(v30) += 24;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
      v25 = *traceStream2;
    }

    else
    {
      v25 = 0;
    }

    *v17 = var0;
    *(v17 + 1) = v25;
    *(v17 + 2) = index;
    s();
    *v26 = v27;
    *(v26 + 8) = BYTE8(v30);
    *(v29 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    baseObject2 = [functionCopy baseObject];
    [(MTLVisibleFunctionTableSPI *)v18 setFunction:baseObject2 atIndex:index];
  }
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLVisibleFunctionTable_setVisibleFunctionTables_withBufferRange", "Function Pointers", 0, 0);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLVisibleFunctionTableSPI *)baseObject setVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setFunctions:(const void *)functions withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  functionsCopy = functions;
  selfCopy = self;
  if (range.length)
  {
    v8 = range.location;
    functionsCopy2 = functions;
    v10 = range.length;
    do
    {
      self = [(NSMutableArray *)selfCopy->_functionArray count];
      if (v8 < self)
      {
        if (*functionsCopy2)
        {
          self = [(NSMutableArray *)selfCopy->_functionArray setObject:*functionsCopy2 atIndexedSubscript:v8];
        }

        else
        {
          v11 = +[NSNull null];
          [(NSMutableArray *)selfCopy->_functionArray setObject:v11 atIndexedSubscript:v8];
        }
      }

      ++functionsCopy2;
      ++v8;
      --v10;
    }

    while (v10);
  }

  traceStream = selfCopy->_traceStream;
  if (traceStream)
  {
    p_var1 = &traceStream[1].var1;
    v14 = atomic_load(p_var1);
    v15 = v14;
    do
    {
      atomic_compare_exchange_strong(p_var1, &v15, v14 | 2);
      v16 = v15 == v14;
      v14 = v15;
    }

    while (!v16);
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v17 = location;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    v18 = GTTraceContext_pushEncoderWithStream(selfCopy->_traceContext, &v41);
    baseObject = selfCopy->_baseObject;
    v20 = 8 * length;
    __chkstk_darwin(v18);
    bzero(&v41 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      v21 = functionsCopy;
      v22 = (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v23 = length;
      do
      {
        v24 = *v21++;
        *v22++ = [v24 baseObject];
        --v23;
      }

      while (v23);
    }

    [(MTLVisibleFunctionTableSPI *)baseObject setFunctions:&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:v17, length];
    v25 = v42;
    *(v42 + 8) = -15597;
    v26 = BYTE9(v43);
    if (BYTE9(v43) > 0x20uLL)
    {
      v34 = *(*(&v41 + 1) + 24);
      v35 = BYTE10(v43);
      ++BYTE10(v43);
      v27 = GTTraceMemPool_allocateBytes(v34, *(&v42 + 1), v35 | 0x2000000000) + 16;
      v26 = v35;
    }

    else
    {
      v27 = (v25 + BYTE9(v43));
      BYTE9(v43) += 32;
    }

    *(v25 + 13) = v26;
    traceStream = [(CaptureMTLVisibleFunctionTable *)selfCopy traceStream];
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
      __chkstk_darwin(traceStream);
      bzero(&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
      v38 = StreamArrayURL(&v41, (&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0)), functionsCopy, length);
    }

    else
    {
      v38 = 0;
    }

    *v27 = var0;
    *(v27 + 1) = v17;
    *(v27 + 2) = length;
    v27[24] = v38;
    *(v27 + 25) = 0;
    *(v27 + 7) = 0;
    s();
    *v39 = v40;
    *(v39 + 8) = BYTE8(v43);
    *(v42 + 15) |= 8u;
  }

  else
  {
    v28 = selfCopy->_baseObject;
    __chkstk_darwin(self);
    v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v30, v29);
    if (length)
    {
      v31 = v30;
      v32 = length;
      do
      {
        v33 = *functionsCopy++;
        *v31 = [v33 baseObject];
        v31 += 8;
        --v32;
      }

      while (v32);
    }

    [(MTLVisibleFunctionTableSPI *)v28 setFunctions:v30 withRange:location, length];
  }
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
  *(v15 + 8) = -15605;
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
  traceStream = [(CaptureMTLVisibleFunctionTable *)self traceStream];
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
  v13.super_class = CaptureMTLVisibleFunctionTable;
  [(CaptureMTLVisibleFunctionTable *)&v13 dealloc];
}

- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureRenderPipelineState:(id)state descriptor:(id)descriptor
{
  objectCopy = object;
  stateCopy = state;
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = CaptureMTLVisibleFunctionTable;
  v12 = [(CaptureMTLVisibleFunctionTable *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    device = [stateCopy device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_renderPipelineState, state);
    traceContext = [stateCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [descriptorCopy functionCount]);
    functionArray = v13->_functionArray;
    v13->_functionArray = v18;

    if ([descriptorCopy functionCount])
    {
      v20 = 0;
      do
      {
        v21 = v13->_functionArray;
        v22 = +[NSNull null];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while ([descriptorCopy functionCount] > v20);
    }
  }

  return v13;
}

- (CaptureMTLVisibleFunctionTable)initWithBaseObject:(id)object captureComputePipelineState:(id)state descriptor:(id)descriptor
{
  objectCopy = object;
  stateCopy = state;
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = CaptureMTLVisibleFunctionTable;
  v12 = [(CaptureMTLVisibleFunctionTable *)&v24 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    device = [stateCopy device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_computePipelineState, state);
    traceContext = [stateCopy traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);

    v18 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [descriptorCopy functionCount]);
    functionArray = v13->_functionArray;
    v13->_functionArray = v18;

    if ([descriptorCopy functionCount])
    {
      v20 = 0;
      do
      {
        v21 = v13->_functionArray;
        v22 = +[NSNull null];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while ([descriptorCopy functionCount] > v20);
    }
  }

  return v13;
}

@end