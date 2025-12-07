@interface CaptureMTLAccelerationStructure
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)object captureDevice:(id)device captureBuffer:(id)buffer;
- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)object captureHeap:(id)heap;
- (MTLBuffer)buffer;
- (NSString)description;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)label;
- (void)touch;
- (void)waitUntilComplete;
@end

@implementation CaptureMTLAccelerationStructure

- (void)waitUntilComplete
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLAccelerationStructureSPI *)self->_baseObject waitUntilComplete];
  v3 = v13;
  *(v13 + 8) = -15649;
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
  traceStream = [(CaptureMTLAccelerationStructure *)self traceStream];
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

- (unint64_t)setPurgeableState:(unint64_t)state
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  v5 = [(MTLAccelerationStructureSPI *)self->_baseObject setPurgeableState:state];
  v6 = v17;
  *(v17 + 8) = -15650;
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
  traceStream = [(CaptureMTLAccelerationStructure *)self traceStream];
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
  if (!qword_31F7B8)
  {
    v17 = v2;
    v18 = v3;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
    [(MTLAccelerationStructureSPI *)self->_baseObject makeAliasable];
    [(CaptureMTLHeap *)self->_captureHeap usedSize];
    [(CaptureMTLHeap *)self->_captureHeap currentAllocatedSize];
    v5 = v15;
    *(v15 + 8) = -15651;
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
    traceStream = [(CaptureMTLAccelerationStructure *)self traceStream];
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
}

- (BOOL)doesAliasResource:(id)resource
{
  baseObject = self->_baseObject;
  baseObject = [resource baseObject];
  LOBYTE(baseObject) = [(MTLAccelerationStructureSPI *)baseObject doesAliasResource:baseObject];

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

  return [(MTLAccelerationStructureSPI *)baseObject doesAliasAnyResources:v8 count:count];
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

  return [(MTLAccelerationStructureSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLAccelerationStructureSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15661;
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
  traceStream = [(CaptureMTLAccelerationStructure *)self traceStream];
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
  v5 = [(MTLAccelerationStructureSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLAccelerationStructure;
  v3 = [(CaptureMTLAccelerationStructure *)&v7 description];
  v4 = [(MTLAccelerationStructureSPI *)self->_baseObject description];
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
  os_unfair_lock_lock(&s_accelerationStructuresLock);
  v3 = s_accelerationStructuresByStreamRef;
  traceStream = self->_traceStream;
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v6 = [NSNumber numberWithUnsignedLongLong:var0];
  [v3 removeObjectForKey:v6];

  v7 = s_accelerationStructureGPUResourceIDToStreamRef;
  v8 = [NSNumber numberWithUnsignedLongLong:[(MTLAccelerationStructureSPI *)self->_baseObject gpuResourceID]];
  [v7 removeObjectForKey:v8];

  os_unfair_lock_unlock(&s_accelerationStructuresLock);
  [(CaptureMTLDevice *)self->_captureDevice deallocateResource:self];
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  [(CaptureMTLHeap *)self->_captureHeap usedSize];
  [(CaptureMTLHeap *)self->_captureHeap currentAllocatedSize];
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  v10 = v21;
  *(v21 + 8) = -15659;
  v11 = BYTE9(v22);
  if (BYTE9(v22) > 0x38uLL)
  {
    v13 = *(*(&v20 + 1) + 24);
    v14 = BYTE10(v22);
    ++BYTE10(v22);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v21 + 1), v14 | 0x800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v22));
    BYTE9(v22) += 8;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLAccelerationStructure *)self traceStream];
  if (traceStream)
  {
    v16 = traceStream->var0;
  }

  else
  {
    v16 = 0;
  }

  *v12 = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  v19.receiver = self;
  v19.super_class = CaptureMTLAccelerationStructure;
  [(CaptureMTLAccelerationStructure *)&v19 dealloc];
}

- (MTLBuffer)buffer
{
  if ((dword_31F7C8 & 4) == 0 && os_variant_has_internal_content())
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "[MTLAccelerationStructure buffer] SPI", 0, "To be able to capture, don't use [MTLAccelerationStructure buffer] SPI.");
  }

  buffer = self->_buffer;

  return buffer;
}

- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)object captureHeap:(id)heap
{
  objectCopy = object;
  heapCopy = heap;
  v21.receiver = self;
  v21.super_class = CaptureMTLAccelerationStructure;
  v9 = [(CaptureMTLAccelerationStructure *)&v21 init];
  if (v9)
  {
    device = [heapCopy device];
    objc_storeStrong(&v9->_baseObject, object);
    objc_storeStrong(&v9->_captureHeap, heap);
    objc_storeStrong(&v9->_captureDevice, device);
    traceContext = [heapCopy traceContext];
    v9->_traceContext = traceContext;
    v12 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(traceContext, v12, v9);

    traceStream = v9->_traceStream;
    if (traceStream)
    {
      v14 = *traceStream;
    }

    else
    {
      v14 = 0;
    }

    RegisterAccelerationStructure(v9, v14, [objectCopy gpuResourceID]);
    buffer = [(MTLAccelerationStructureSPI *)v9->_baseObject buffer];
    if (buffer)
    {
      v16 = [[CaptureMTLBuffer alloc] initWithBaseObject:buffer captureHeap:heapCopy];
      buffer = v9->_buffer;
      v9->_buffer = v16;
    }

    if ((dword_31F7C8 & 0x10) != 0)
    {
      v18 = objc_opt_new();
      extraRetainedObjects = v9->_extraRetainedObjects;
      v9->_extraRetainedObjects = v18;
    }
  }

  return v9;
}

- (CaptureMTLAccelerationStructure)initWithBaseObject:(id)object captureDevice:(id)device captureBuffer:(id)buffer
{
  objectCopy = object;
  deviceCopy = device;
  bufferCopy = buffer;
  v46.receiver = self;
  v46.super_class = CaptureMTLAccelerationStructure;
  v12 = [(CaptureMTLAccelerationStructure *)&v46 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    captureHeap = v13->_captureHeap;
    v13->_captureHeap = 0;

    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v16 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v16, v13);

    traceStream = v13->_traceStream;
    if (traceStream)
    {
      v18 = *traceStream;
    }

    else
    {
      v18 = 0;
    }

    RegisterAccelerationStructure(v13, v18, [objectCopy gpuResourceID]);
    if (bufferCopy)
    {
      v19 = bufferCopy;
      buffer = v13->_buffer;
      v13->_buffer = v19;
    }

    else
    {
      buffer = [(MTLAccelerationStructureSPI *)v13->_baseObject buffer];
      if (buffer)
      {
        v24 = [[CaptureMTLBuffer alloc] initWithBaseObject:buffer captureDevice:deviceCopy];
        v25 = v13->_buffer;
        v13->_buffer = v24;

        if ((dword_31F7C8 & 4) != 0)
        {
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          traceContext = v13->_traceContext;
          v43 = traceContext;
          *&v44 = 0;
          *(&v44 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
          s();
          v28 = v27;
          v29 = *v27;
          *v27 = v30;
          *&v45 = v29;
          BYTE8(v45) = *(v27 + 8);
          *(&v45 + 9) = 16400;
          *(&v45 + 11) = 0;
          HIBYTE(v45) = 0;
          GTTraceEncoder_setStream(&v43, [(CaptureMTLBuffer *)v13->_buffer traceStream]);
          v31 = v44;
          *(v44 + 8) = -16314;
          v32 = BYTE9(v45);
          if (BYTE9(v45) > 0x18uLL)
          {
            v34 = *(*(&v43 + 1) + 24);
            v35 = BYTE10(v45);
            ++BYTE10(v45);
            v33 = GTTraceMemPool_allocateBytes(v34, *(&v44 + 1), v35 | 0x2800000000) + 16;
            v32 = v35;
          }

          else
          {
            v33 = (v31 + BYTE9(v45));
            BYTE9(v45) += 40;
          }

          *(v31 + 13) = v32;
          SaveMTLBufferInfo(&v43, v13->_buffer);
          traceStream = [(CaptureMTLDevice *)v13->_captureDevice traceStream];
          if (traceStream)
          {
            var0 = traceStream->var0;
          }

          else
          {
            var0 = 0;
          }

          traceStream2 = [(CaptureMTLBuffer *)v13->_buffer traceStream];
          if (traceStream2)
          {
            v38 = traceStream2->var0;
          }

          else
          {
            v38 = 0;
          }

          v39 = [(CaptureMTLBuffer *)v13->_buffer length];
          resourceOptions = [(CaptureMTLBuffer *)v13->_buffer resourceOptions];
          *v33 = var0;
          *(v33 + 1) = v38;
          *(v33 + 2) = v39;
          *(v33 + 3) = resourceOptions;
          *(v33 + 4) = 0;
          v41 = v44;
          *v28 = v45;
          *(v28 + 8) = BYTE8(v45);
          *(v41 + 15) |= 8u;
        }
      }
    }

    if ((dword_31F7C8 & 0x10) != 0)
    {
      v21 = objc_opt_new();
      extraRetainedObjects = v13->_extraRetainedObjects;
      v13->_extraRetainedObjects = v21;
    }
  }

  return v13;
}

@end