@interface CaptureMTLRasterizationRateMap
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign;
- ($94F468A8D4C62B317260615823C2B210)mapPhysicalToScreenCoordinates:(id)coordinates forLayer:(unint64_t)layer;
- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)coordinates forLayer:(unint64_t)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize;
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLRasterizationRateMap)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)copyParameterDataToBuffer:(id)buffer offset:(unint64_t)offset;
- (void)dealloc;
- (void)resetUsingDescriptor:(id)descriptor;
- (void)touch;
@end

@implementation CaptureMTLRasterizationRateMap

- (void)resetUsingDescriptor:(id)descriptor
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  traceContext = self->_traceContext;
  descriptorCopy = descriptor;
  GTTraceContext_pushEncoderWithStream(traceContext, &v16);
  [(MTLRasterizationRateMapSPI *)self->_baseObject resetUsingDescriptor:descriptorCopy, v16];
  v6 = v17;
  *(v17 + 8) = -15411;
  v7 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v9 = *(*(&v16 + 1) + 24);
    v10 = BYTE10(v18);
    ++BYTE10(v18);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v17 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v13 = SaveMTLRasterizationRateMapDescriptor(&v16, descriptorCopy);

  *v8 = var0;
  v8[8] = v13;
  *(v8 + 9) = 0;
  *(v8 + 3) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLRasterizationRateMapSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLRasterizationRateMap;
  v3 = [(CaptureMTLRasterizationRateMap *)&v7 description];
  v4 = [(MTLRasterizationRateMapSPI *)self->_baseObject description];
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

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalSizeForLayer:(SEL)layer
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  baseObject = self->_baseObject;
  if (baseObject)
  {
    [(MTLRasterizationRateMapSPI *)baseObject physicalSizeForLayer:a4];
  }

  v8 = v19;
  *(v19 + 8) = -15797;
  v9 = BYTE9(v20);
  if (BYTE9(v20) > 0x18uLL)
  {
    v11 = *(*(&v18 + 1) + 24);
    v12 = BYTE10(v20);
    ++BYTE10(v20);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v19 + 1), v12 | 0x2800000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v20));
    BYTE9(v20) += 40;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = retstr->var2;
  *v10 = var0;
  *(v10 + 8) = *&retstr->var0;
  *(v10 + 3) = var2;
  *(v10 + 4) = a4;
  s();
  result->var0 = v17;
  LOBYTE(result->var1) = BYTE8(v20);
  *(v19 + 15) |= 8u;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)mapScreenToPhysicalCoordinates:(id)coordinates forLayer:(unint64_t)layer
{
  var1 = coordinates.var1;
  var0 = coordinates.var0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  *&v8 = var0;
  *&v9 = var1;
  [(MTLRasterizationRateMapSPI *)self->_baseObject mapScreenToPhysicalCoordinates:layer forLayer:v8, v9];
  v11 = v10;
  v13 = v12;
  v14 = v26;
  *(v26 + 8) = -15770;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x2000000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream)
  {
    v20 = traceStream->var0;
  }

  else
  {
    v20 = 0;
  }

  *v16 = v20;
  *(v16 + 1) = layer;
  *(v16 + 4) = v11;
  *(v16 + 5) = v13;
  *(v16 + 6) = var0;
  *(v16 + 7) = var1;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
  v23 = v11;
  v24 = v13;
  result.var1 = v24;
  result.var0 = v23;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)mapPhysicalToScreenCoordinates:(id)coordinates forLayer:(unint64_t)layer
{
  [(MTLRasterizationRateMapSPI *)self->_baseObject mapPhysicalToScreenCoordinates:layer forLayer:*&coordinates, *&coordinates.var1];
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15801;
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
  traceStream = [(CaptureMTLRasterizationRateMap *)self traceStream];
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
  v12.super_class = CaptureMTLRasterizationRateMap;
  [(CaptureMTLRasterizationRateMap *)&v12 dealloc];
}

- (void)copyParameterDataToBuffer:(id)buffer offset:(unint64_t)offset
{
  bufferCopy = buffer;
  traceStream = [bufferCopy traceStream];
  if (traceStream)
  {
    v8 = atomic_load(traceStream + 7);
    v9 = v8;
    do
    {
      atomic_compare_exchange_strong(traceStream + 7, &v9, v8 | 2);
      v10 = v9 == v8;
      v8 = v9;
    }

    while (!v10);
  }

  traceStream2 = [bufferCopy traceStream];
  if (traceStream2)
  {
    v12 = atomic_load(traceStream2 + 7);
    v13 = v12;
    do
    {
      atomic_compare_exchange_strong(traceStream2 + 7, &v13, v12 | 8);
      v10 = v13 == v12;
      v12 = v13;
    }

    while (!v10);
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRasterizationRateMapSPI *)baseObject copyParameterDataToBuffer:baseObject offset:offset];

  v16 = v28;
  *(v28 + 8) = -15776;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x28uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x1800000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 24;
  }

  *(v16 + 13) = v17;
  traceStream3 = [(CaptureMTLRasterizationRateMap *)self traceStream];
  if (traceStream3)
  {
    var0 = traceStream3->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream4 = [bufferCopy traceStream];

  if (traceStream4)
  {
    v24 = *traceStream4;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = offset;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)screenSize
{
  result = self->_baseObject;
  if (result)
  {
    return objc_msgSend_screenSize(result, a3);
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)physicalGranularity
{
  result = self->_baseObject;
  if (result)
  {
    return [($F99D9A4FB75BC57F3386B8DC8EE08D7A *)result physicalGranularity];
  }

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)parameterBufferSizeAndAlign
{
  parameterBufferSizeAndAlign = [(MTLRasterizationRateMapSPI *)self->_baseObject parameterBufferSizeAndAlign];
  result.var1 = v3;
  result.var0 = parameterBufferSizeAndAlign;
  return result;
}

- (CaptureMTLRasterizationRateMap)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLRasterizationRateMap;
  v9 = [(CaptureMTLRasterizationRateMap *)&v14 init];
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