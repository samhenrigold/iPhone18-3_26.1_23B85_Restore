@interface CaptureMTLFunctionPrivateArgument
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLFunctionPrivateArgument)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (id)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLFunctionPrivateArgument

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15494;
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
  traceStream = [(CaptureMTLFunctionPrivateArgument *)self traceStream];
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
  v12.super_class = CaptureMTLFunctionPrivateArgument;
  [(CaptureMTLFunctionPrivateArgument *)&v12 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFunctionPrivateArgumentSPI *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
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

- (id)description
{
  v5.receiver = self;
  v5.super_class = CaptureMTLFunctionPrivateArgument;
  v2 = [(CaptureMTLFunctionPrivateArgument *)&v5 description];
  v3 = [NSString stringWithFormat:@"%@", v2];

  return v3;
}

- (CaptureMTLFunctionPrivateArgument)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CaptureMTLFunctionPrivateArgument;
  v8 = [(CaptureMTLFunctionPrivateArgument *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(v9->_baseObject);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);
  }

  return v9;
}

@end