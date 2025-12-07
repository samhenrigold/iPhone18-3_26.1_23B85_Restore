@interface CaptureMTLTensor
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)doesAliasAllResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasAnyResources:(const void *)resources count:(unint64_t)count;
- (BOOL)doesAliasResource:(id)resource;
- (CaptureMTLTensor)initWithBaseObject:(id)object captureBuffer:(id)buffer;
- (CaptureMTLTensor)initWithBaseObject:(id)object captureDevice:(id)device;
- (CaptureMTLTensor)initWithBaseObject:(id)object captureTensor:(id)tensor;
- (NSString)description;
- (id)newTensorViewWithReshapedDescriptor:(id)descriptor error:(id *)error;
- (id)newTensorViewWithSlice:(MTLTensorSlice)slice error:(id *)error;
- (int)setOwnerWithIdentity:(unsigned int)identity;
- (unint64_t)setPurgeableState:(unint64_t)state;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)makeAliasable;
- (void)setLabel:(id)label;
- (void)setResponsibleProcess:(int)process;
- (void)touch;
@end

@implementation CaptureMTLTensor

- (unint64_t)setPurgeableState:(unint64_t)state
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  v5 = [(MTLResourceSPI *)self->_baseObject setPurgeableState:state];
  v6 = v17;
  *(v17 + 8) = -14933;
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
  traceStream = [(CaptureMTLTensor *)self traceStream];
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

- (int)setOwnerWithIdentity:(unsigned int)identity
{
  v3 = *&identity;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLTensor_setOwnerWithIdentity", "Tensor", 0, 0);
  baseObject = self->_baseObject;

  return [(MTLResourceSPI *)baseObject setOwnerWithIdentity:v3];
}

- (id)newTensorViewWithSlice:(MTLTensorSlice)slice error:(id *)error
{
  var1 = slice.var1;
  var0 = slice.var0;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLTensor_newTensorViewWithSlice_error", "Tensor", 0, 0);
  baseObject = self->_baseObject;
  v9 = var0;
  v10 = var1;
  if (baseObject)
  {
    error = [(MTLResourceSPI *)baseObject newTensorViewWithSlice:var0 error:var1, error];
    if (error)
    {
      v12 = [[CaptureMTLTensor alloc] initWithBaseObject:error captureTensor:self];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
    error = 0;
  }

  return v12;
}

- (id)newTensorViewWithReshapedDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLTensor_newTensorViewWithReshapedDescriptor_error", "Tensor", 0, 0);
  v7 = [(MTLResourceSPI *)self->_baseObject newTensorViewWithReshapedDescriptor:descriptorCopy error:error];

  if (v7)
  {
    v8 = [[CaptureMTLTensor alloc] initWithBaseObject:v7 captureTensor:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)makeAliasable
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLResourceSPI *)self->_baseObject makeAliasable];
  v3 = v13;
  *(v13 + 8) = -14938;
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
  traceStream = [(CaptureMTLTensor *)self traceStream];
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
  LOBYTE(baseObject) = [(MTLResourceSPI *)baseObject doesAliasResource:baseObject];

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

  return [(MTLResourceSPI *)baseObject doesAliasAnyResources:v8 count:count];
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

  return [(MTLResourceSPI *)baseObject doesAliasAllResources:v8 count:count];
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -14948;
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
  traceStream = [(CaptureMTLTensor *)self traceStream];
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
  v12.super_class = CaptureMTLTensor;
  [(CaptureMTLTensor *)&v12 dealloc];
}

- (void)setResponsibleProcess:(int)process
{
  v3 = *&process;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLResourceSPI *)self->_baseObject setResponsibleProcess:v3];
  v5 = v15;
  *(v15 + 8) = -14949;
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
  traceStream = [(CaptureMTLTensor *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = v3;
  *(v7 + 3) = 0;
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
  [(MTLResourceSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -14950;
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
  traceStream = [(CaptureMTLTensor *)self traceStream];
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
  v5 = [(MTLResourceSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLTensor;
  v3 = [(CaptureMTLTensor *)&v7 description];
  v4 = [(MTLResourceSPI *)self->_baseObject description];
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

- (CaptureMTLTensor)initWithBaseObject:(id)object captureTensor:(id)tensor
{
  objectCopy = object;
  tensorCopy = tensor;
  v16.receiver = self;
  v16.super_class = CaptureMTLTensor;
  v9 = [(CaptureMTLTensor *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [tensorCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [tensorCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, v10);
  }

  return v10;
}

- (CaptureMTLTensor)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLTensor;
  v9 = [(CaptureMTLTensor *)&v14 init];
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

- (CaptureMTLTensor)initWithBaseObject:(id)object captureBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v16.receiver = self;
  v16.super_class = CaptureMTLTensor;
  v9 = [(CaptureMTLTensor *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    captureDevice = [bufferCopy captureDevice];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = captureDevice;

    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, v10);
  }

  return v10;
}

@end