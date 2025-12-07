@interface CaptureMTLDrawable
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLDrawable)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)texture;
- (unint64_t)deviceRef;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)present;
- (void)presentAfterMinimumDuration:(double)duration;
- (void)presentAtTime:(double)time;
- (void)touch;
@end

@implementation CaptureMTLDrawable

- (void)presentAfterMinimumDuration:(double)duration
{
  PresentTelemetry(self);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLDrawable *)self->_baseObject presentAfterMinimumDuration:duration];
  v5 = v15;
  *(v15 + 8) = -7156;
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
  traceStream = [(CaptureMTLDrawable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = duration;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  PresentTrigger(self, &v14);
}

- (void)presentAtTime:(double)time
{
  PresentTelemetry(self);
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLDrawable *)self->_baseObject presentAtTime:time];
  v5 = v15;
  *(v15 + 8) = -7157;
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
  traceStream = [(CaptureMTLDrawable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = time;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  PresentTrigger(self, &v14);
}

- (void)present
{
  PresentTelemetry(self);
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLDrawable *)self->_baseObject present];
  v3 = v13;
  *(v13 + 8) = -7158;
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
  traceStream = [(CaptureMTLDrawable *)self traceStream];
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
  PresentTrigger(self, &v12);
}

- (id)texture
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  texture = [(MTLDrawable *)self->_baseObject texture];
  v4 = RetrieveGPUCaptureTexture(texture);
  v5 = v18;
  *(v18 + 8) = -7167;
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
  traceStream = [(CaptureMTLDrawable *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v4 traceStream];
  if (traceStream2)
  {
    v13 = *traceStream2;
  }

  else
  {
    v13 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = v13;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;

  return texture;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CaptureMTLDrawable;
  [(CaptureMTLDrawable *)&v2 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLDrawable *)baseObject conformsToProtocol:protocolCopy];

  if (&OBJC_PROTOCOL___CaptureMTLObject == protocolCopy)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  if (s_logUsingOsLog == 1)
  {
    v5 = gt_tagged_log(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      ClassName = object_getClassName(self->_baseObject);
      *buf = 136315394;
      v13 = ClassName;
      v14 = 2080;
      Name = sel_getName(selector);
      _os_log_error_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "warning: Uncaught selector, [%s %s]", buf, 0x16u);
    }
  }

  else
  {
    v6 = __stderrp;
    v7 = object_getClassName(self->_baseObject);
    v8 = [NSString stringWithFormat:@"warning: Uncaught selector, [%s %s]", v7, sel_getName(selector)];
    fprintf(v6, "%s\n", [v8 UTF8String]);
  }

  baseObject = self->_baseObject;

  return baseObject;
}

- (unint64_t)deviceRef
{
  layer = [(CaptureMTLDrawable *)self layer];
  device = [layer device];
  traceStream = [device traceStream];
  if (traceStream)
  {
    v5 = *traceStream;
  }

  else
  {
    v5 = 0;
  }

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

- (CaptureMTLDrawable)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = CaptureMTLDrawable;
  v8 = [(CaptureMTLDrawable *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);

    texture = [objectCopy texture];
    v12 = RetrieveGPUCaptureTexture(texture);

    [v12 updateDrawableStream:v9->_traceStream];
  }

  return v9;
}

@end