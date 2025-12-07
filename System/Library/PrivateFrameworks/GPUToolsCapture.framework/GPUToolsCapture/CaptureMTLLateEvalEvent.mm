@interface CaptureMTLLateEvalEvent
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s;
- (CaptureMTLLateEvalEvent)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)newSharedEventHandle;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)notifyListener:(id)listener atValue:(unint64_t)value block:(id)block;
- (void)setLabel:(id)label;
- (void)setSignaledValue:(unint64_t)value;
- (void)touch;
@end

@implementation CaptureMTLLateEvalEvent

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15489;
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
  traceStream = [(CaptureMTLLateEvalEvent *)self traceStream];
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
  v12.super_class = CaptureMTLLateEvalEvent;
  [(CaptureMTLLateEvalEvent *)&v12 dealloc];
}

- (void)setSignaledValue:(unint64_t)value
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLSharedEventSPI *)self->_baseObject setSignaledValue:value];
  v5 = v15;
  *(v15 + 8) = -15490;
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
  traceStream = [(CaptureMTLLateEvalEvent *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = value;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLSharedEventSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -15491;
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
  traceStream = [(CaptureMTLLateEvalEvent *)self traceStream];
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
  v5 = [(MTLSharedEventSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLLateEvalEvent;
  v3 = [(CaptureMTLLateEvalEvent *)&v7 description];
  v4 = [(MTLSharedEventSPI *)self->_baseObject description];
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

- (BOOL)waitUntilSignaledValue:(unint64_t)value timeoutMS:(unint64_t)s
{
  sCopy = s;
  if (s && ((dword_31F7C8 & 0x4000000) != 0 || *(boundaryTrackerInstance + 20)))
  {
    sCopy = s + 1000 * qword_31F7A8;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__CaptureMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = sCopy;
  if (waitUntilSignaledValue_timeoutMS__onceToken_13366 != -1)
  {
    dispatch_once(&waitUntilSignaledValue_timeoutMS__onceToken_13366, block);
  }

  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  v7 = [(MTLSharedEventSPI *)self->_baseObject waitUntilSignaledValue:value timeoutMS:sCopy];
  v8 = v19;
  *(v19 + 8) = -15424;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x2000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLLateEvalEvent *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = value;
  *(v10 + 2) = sCopy;
  *(v10 + 6) = v7;
  *(v10 + 7) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
  return v7;
}

void __60__CaptureMTLLateEvalEvent_waitUntilSignaledValue_timeoutMS___block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = 134217984;
    v4 = v2;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_INFO, "[ waitUntilSignaledValue:timeoutMS:] timeout changed to %llu ms due to capture being loaded.", &v3, 0xCu);
  }
}

- (void)notifyListener:(id)listener atValue:(unint64_t)value block:(id)block
{
  blockCopy = block;
  selfCopy = self;
  baseObject = selfCopy->_baseObject;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __56__CaptureMTLLateEvalEvent_notifyListener_atValue_block___block_invoke;
  v13[3] = &unk_2F26A8;
  v14 = selfCopy;
  v15 = blockCopy;
  valueCopy = value;
  v11 = selfCopy;
  v12 = blockCopy;
  [(MTLSharedEventSPI *)baseObject notifyListener:listener atValue:value block:v13];
}

- (id)newSharedEventHandle
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  newSharedEventHandle = [(MTLSharedEventSPI *)self->_baseObject newSharedEventHandle];
  v4 = v15;
  *(v15 + 8) = -15488;
  v5 = BYTE9(v16);
  if (BYTE9(v16) > 0x30uLL)
  {
    v7 = *(*(&v14 + 1) + 24);
    v8 = BYTE10(v16);
    ++BYTE10(v16);
    v6 = GTTraceMemPool_allocateBytes(v7, *(&v15 + 1), v8 | 0x1000000000) + 16;
    v5 = v8;
  }

  else
  {
    v6 = (v4 + BYTE9(v16));
    BYTE9(v16) += 16;
  }

  *(v4 + 13) = v5;
  traceStream = [(CaptureMTLLateEvalEvent *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v6 = var0;
  *(v6 + 1) = newSharedEventHandle;
  s();
  *v11 = v12;
  *(v11 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  return newSharedEventHandle;
}

- (CaptureMTLLateEvalEvent)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLLateEvalEvent;
  v9 = [(CaptureMTLLateEvalEvent *)&v14 init];
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