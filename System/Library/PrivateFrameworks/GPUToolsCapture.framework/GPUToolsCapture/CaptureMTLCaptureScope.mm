@interface CaptureMTLCaptureScope
- (CaptureMTLCaptureScope)initWithDevice:(id)device commandQueue:(id)queue captureContext:(GTTraceContext *)context;
- (unint64_t)streamReference;
- (void)beginScope;
- (void)dealloc;
- (void)endScope;
- (void)setLabel:(id)label;
@end

@implementation CaptureMTLCaptureScope

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -16072;
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
  traceStream = [(CaptureMTLCaptureScope *)self traceStream];
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
  [GTMTLCaptureScopeInfo removeScope:self];
  v12.receiver = self;
  v12.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v12 dealloc];
}

- (void)setLabel:(id)label
{
  v3.receiver = self;
  v3.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v3 setLabel:label];
  +[GTMTLCaptureScopeInfo updateAll];
}

- (void)endScope
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  v3 = v26;
  *(v26 + 8) = -16070;
  v4 = BYTE9(v27);
  if (BYTE9(v27) > 0x38uLL)
  {
    v6 = *(*(&v25 + 1) + 24);
    v7 = BYTE10(v27);
    ++BYTE10(v27);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v26 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v27));
    BYTE9(v27) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLCaptureScope *)self traceStream];
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
  *(v10 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
  traceStream2 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream2)
  {
    v13 = traceStream2->var0;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(&v26 + 1);
  traceStream3 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream3)
  {
    v16 = traceStream3->var0;
  }

  else
  {
    v16 = 0;
  }

  *&v18 = 0x200000002;
  *(&v18 + 1) = v13;
  v19 = v14;
  v20 = 0;
  v21 = v16;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  GTCaptureBoundaryTracker_handleTrigger(&v18);
  v17.receiver = self;
  v17.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v17 endScope];
}

- (void)beginScope
{
  v52.receiver = self;
  v52.super_class = CaptureMTLCaptureScope;
  [(CaptureMTLCaptureScope *)&v52 beginScope];
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v49);
  v48.receiver = self;
  v48.super_class = CaptureMTLCaptureScope;
  label = [(CaptureMTLCaptureScope *)&v48 label];

  if (label)
  {
    v4 = v50;
    *(v50 + 15) |= 1u;
    *(v4 + 8) = -16073;
    v5 = BYTE9(v51);
    if (BYTE9(v51) > 0x30uLL)
    {
      v7 = *(*(&v49 + 1) + 24);
      v8 = BYTE10(v51);
      ++BYTE10(v51);
      v6 = GTTraceMemPool_allocateBytes(v7, *(&v50 + 1), v8 | 0x1000000000) + 16;
      v5 = v8;
    }

    else
    {
      v6 = (v4 + BYTE9(v51));
      BYTE9(v51) += 16;
    }

    *(v4 + 13) = v5;
    traceStream = [(CaptureMTLCaptureScope *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    v47.receiver = self;
    v47.super_class = CaptureMTLCaptureScope;
    label2 = [(CaptureMTLCaptureScope *)&v47 label];
    if ([label2 UTF8String])
    {
      v46.receiver = self;
      v46.super_class = CaptureMTLCaptureScope;
      label3 = [(CaptureMTLCaptureScope *)&v46 label];
      uTF8String = [label3 UTF8String];
      v45.receiver = self;
      v45.super_class = CaptureMTLCaptureScope;
      label4 = [(CaptureMTLCaptureScope *)&v45 label];
      v15 = strlen([label4 UTF8String]);
      v16 = GTTraceEncoder_storeBytes(&v49, uTF8String, v15 + 1);
      *v6 = var0;
      v6[8] = v16;
      *(v6 + 9) = 0;
      *(v6 + 3) = 0;
    }

    else
    {
      *v6 = var0;
      *(v6 + 1) = 0;
    }

    s();
    *v17 = v18;
    *(v17 + 8) = BYTE8(v51);
    *(v50 + 15) |= 8u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
    v49 = v37;
    v50 = v38;
    v51 = v39;
  }

  v19 = v50;
  *(v50 + 8) = -16071;
  v20 = BYTE9(v51);
  if (BYTE9(v51) > 0x38uLL)
  {
    v22 = *(*(&v49 + 1) + 24);
    v23 = BYTE10(v51);
    ++BYTE10(v51);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v50 + 1), v23 | 0x800000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v51));
    BYTE9(v51) += 8;
  }

  *(v19 + 13) = v20;
  traceStream2 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream2)
  {
    v25 = traceStream2->var0;
  }

  else
  {
    v25 = 0;
  }

  *v21 = v25;
  traceStream3 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream3)
  {
    v27 = traceStream3->var0;
  }

  else
  {
    v27 = 0;
  }

  v28 = *(&v50 + 1);
  traceStream4 = [(CaptureMTLCaptureScope *)self traceStream];
  if (traceStream4)
  {
    v30 = traceStream4->var0;
  }

  else
  {
    v30 = 0;
  }

  traceStream5 = [*&self->MTLCaptureScope_opaque[OBJC_IVAR___MTLCaptureScope__device] traceStream];
  if (traceStream5)
  {
    v32 = *traceStream5;
  }

  else
  {
    v32 = 0;
  }

  traceStream6 = [*&self->MTLCaptureScope_opaque[OBJC_IVAR___MTLCaptureScope__commandQueue] traceStream];
  if (traceStream6)
  {
    v34 = *traceStream6;
  }

  else
  {
    v34 = 0;
  }

  *&v37 = 0x100000002;
  *(&v37 + 1) = v27;
  v38 = v28;
  *&v39 = v30;
  *(&v39 + 1) = v32;
  v40 = 0;
  v41 = v34;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  GTCaptureBoundaryTracker_handleTrigger(&v37);
  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v51);
  *(v50 + 15) |= 8u;
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

- (CaptureMTLCaptureScope)initWithDevice:(id)device commandQueue:(id)queue captureContext:(GTTraceContext *)context
{
  v10.receiver = self;
  v10.super_class = CaptureMTLCaptureScope;
  v6 = [(CaptureMTLCaptureScope *)&v10 initWithDevice:device commandQueue:queue];
  v7 = v6;
  if (v6)
  {
    v6->_traceContext = context;
    v8 = DEVICEOBJECT(v6);
    v7->_traceStream = GTTraceContext_openStream(context, v8, v7);

    [GTMTLCaptureScopeInfo addScope:v7];
  }

  return v7;
}

@end