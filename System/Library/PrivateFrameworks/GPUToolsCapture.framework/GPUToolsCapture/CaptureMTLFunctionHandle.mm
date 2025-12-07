@interface CaptureMTLFunctionHandle
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureComputePipelineState:(id)state captureFunction:(id)function;
- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureDevice:(id)device captureFunction:(id)function;
- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureRenderPipelineState:(id)state captureFunction:(id)function;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)touch;
@end

@implementation CaptureMTLFunctionHandle

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15610;
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
  traceStream = [(CaptureMTLFunctionHandle *)self traceStream];
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
  v12.super_class = CaptureMTLFunctionHandle;
  [(CaptureMTLFunctionHandle *)&v12 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFunctionHandleSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLFunctionHandle;
  v3 = [(CaptureMTLFunctionHandle *)&v7 description];
  v4 = [(MTLFunctionHandleSPI *)self->_baseObject description];
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

- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureDevice:(id)device captureFunction:(id)function
{
  objectCopy = object;
  deviceCopy = device;
  functionCopy = function;
  v17.receiver = self;
  v17.super_class = CaptureMTLFunctionHandle;
  v12 = [(CaptureMTLFunctionHandle *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    objc_storeStrong(&v13->_captureFunction, function);
    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v15 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v15, v13);
  }

  return v13;
}

- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureRenderPipelineState:(id)state captureFunction:(id)function
{
  objectCopy = object;
  stateCopy = state;
  functionCopy = function;
  v19.receiver = self;
  v19.super_class = CaptureMTLFunctionHandle;
  v12 = [(CaptureMTLFunctionHandle *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_renderPipelineState, state);
    device = [(CaptureMTLRenderPipelineState *)v13->_renderPipelineState device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_captureFunction, function);
    traceContext = [(CaptureMTLRenderPipelineState *)v13->_renderPipelineState traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);
  }

  return v13;
}

- (CaptureMTLFunctionHandle)initWithBaseObject:(id)object captureComputePipelineState:(id)state captureFunction:(id)function
{
  objectCopy = object;
  stateCopy = state;
  functionCopy = function;
  v19.receiver = self;
  v19.super_class = CaptureMTLFunctionHandle;
  v12 = [(CaptureMTLFunctionHandle *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_computePipelineState, state);
    device = [(CaptureMTLComputePipelineState *)v13->_computePipelineState device];
    captureDevice = v13->_captureDevice;
    v13->_captureDevice = device;

    objc_storeStrong(&v13->_captureFunction, function);
    traceContext = [(CaptureMTLComputePipelineState *)v13->_computePipelineState traceContext];
    v13->_traceContext = traceContext;
    v17 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v17, v13);
  }

  return v13;
}

@end