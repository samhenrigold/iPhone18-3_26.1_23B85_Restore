@interface CaptureMTLCounterSampleBuffer
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLCounterSampleBuffer)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)resolveCounterRange:(_NSRange)range;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLCounterSampleBuffer

- (id)resolveCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
    v6 = [(MTLCounterSampleBuffer *)self->_baseObject resolveCounterRange:location, length];
    v7 = v19;
    *(v19 + 8) = -15753;
    v8 = BYTE9(v20);
    if (BYTE9(v20) > 0x20uLL)
    {
      v10 = *(*(&v18 + 1) + 24);
      v11 = BYTE10(v20);
      ++BYTE10(v20);
      v9 = GTTraceMemPool_allocateBytes(v10, *(&v19 + 1), v11 | 0x2000000000) + 16;
      v8 = v11;
    }

    else
    {
      v9 = (v7 + BYTE9(v20));
      BYTE9(v20) += 32;
    }

    *(v7 + 13) = v8;
    traceStream = [(CaptureMTLCounterSampleBuffer *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    v14 = SaveNSData(&v18, v6);
    *v9 = var0;
    *(v9 + 1) = location;
    *(v9 + 2) = length;
    v9[24] = v14;
    *(v9 + 25) = 0;
    *(v9 + 7) = 0;
    s();
    *v15 = v16;
    *(v15 + 8) = BYTE8(v20);
    *(v19 + 15) |= 8u;
  }

  else
  {
    v6 = [(MTLCounterSampleBuffer *)self->_baseObject resolveCounterRange:range.location, range.length];
  }

  return v6;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLCounterSampleBuffer *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLCounterSampleBuffer;
  v3 = [(CaptureMTLCounterSampleBuffer *)&v7 description];
  v4 = [(MTLCounterSampleBuffer *)self->_baseObject description];
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
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15867;
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
  traceStream = [(CaptureMTLCounterSampleBuffer *)self traceStream];
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
  v12.super_class = CaptureMTLCounterSampleBuffer;
  [(CaptureMTLCounterSampleBuffer *)&v12 dealloc];
}

- (CaptureMTLCounterSampleBuffer)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLCounterSampleBuffer;
  v9 = [(CaptureMTLCounterSampleBuffer *)&v14 init];
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