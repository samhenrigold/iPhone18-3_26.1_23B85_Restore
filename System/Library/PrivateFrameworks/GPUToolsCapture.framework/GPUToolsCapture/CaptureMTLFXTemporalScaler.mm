@interface CaptureMTLFXTemporalScaler
- (BOOL)conformsToProtocol:(id)protocol;
- (CGPoint)previousJitterOffset;
- (CaptureMTLFXTemporalScaler)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
- (void)setColorTexture:(id)texture;
- (void)setDebugTexture:(id)texture;
- (void)setDepthReversed:(BOOL)reversed;
- (void)setDepthTexture:(id)texture;
- (void)setExposureTexture:(id)texture;
- (void)setFence:(id)fence;
- (void)setInputContentHeight:(unint64_t)height;
- (void)setInputContentWidth:(unint64_t)width;
- (void)setJitterOffsetX:(float)x;
- (void)setJitterOffsetY:(float)y;
- (void)setMotionTexture:(id)texture;
- (void)setMotionVectorScaleX:(float)x;
- (void)setMotionVectorScaleY:(float)y;
- (void)setOutputTexture:(id)texture;
- (void)setPreExposure:(float)exposure;
- (void)setReactiveMaskTexture:(id)texture;
- (void)setReset:(BOOL)reset;
- (void)touch;
@end

@implementation CaptureMTLFXTemporalScaler

- (void)encodeToCommandQueue:(id)queue
{
  queueCopy = queue;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLFXTemporalScaler_encodeToCommandQueue", "MetalFX SPI", 0, 0);
  baseObject = self->_baseObject;
  baseObject = [queueCopy baseObject];

  [(MTLFXTemporalScalerSPI *)baseObject encodeToCommandQueue:baseObject];
}

- (void)setReset:(BOOL)reset
{
  resetCopy = reset;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLFXTemporalScalerSPI *)self->_baseObject setReset:resetCopy];
  v5 = v15;
  *(v15 + 8) = -20459;
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
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = resetCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (CGPoint)previousJitterOffset
{
  [(MTLFXTemporalScalerSPI *)self->_baseObject previousJitterOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPreExposure:(float)exposure
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = exposure;
  [(MTLFXTemporalScalerSPI *)self->_baseObject setPreExposure:v5];
  v6 = v16;
  *(v16 + 8) = -20460;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = exposure;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setMotionVectorScaleY:(float)y
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = y;
  [(MTLFXTemporalScalerSPI *)self->_baseObject setMotionVectorScaleY:v5];
  v6 = v16;
  *(v16 + 8) = -20462;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = y;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setMotionVectorScaleX:(float)x
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = x;
  [(MTLFXTemporalScalerSPI *)self->_baseObject setMotionVectorScaleX:v5];
  v6 = v16;
  *(v16 + 8) = -20463;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = x;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setJitterOffsetY:(float)y
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = y;
  [(MTLFXTemporalScalerSPI *)self->_baseObject setJitterOffsetY:v5];
  v6 = v16;
  *(v16 + 8) = -20465;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = y;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setJitterOffsetX:(float)x
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = x;
  [(MTLFXTemporalScalerSPI *)self->_baseObject setJitterOffsetX:v5];
  v6 = v16;
  *(v16 + 8) = -20466;
  v7 = BYTE9(v17);
  if (BYTE9(v17) > 0x30uLL)
  {
    v9 = *(*(&v15 + 1) + 24);
    v10 = BYTE10(v17);
    ++BYTE10(v17);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v16 + 1), v10 | 0x1000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v17));
    BYTE9(v17) += 16;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = x;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setInputContentWidth:(unint64_t)width
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLFXTemporalScalerSPI *)self->_baseObject setInputContentWidth:width];
  v5 = v15;
  *(v15 + 8) = -20467;
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
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = width;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setInputContentHeight:(unint64_t)height
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLFXTemporalScalerSPI *)self->_baseObject setInputContentHeight:height];
  v5 = v15;
  *(v15 + 8) = -20468;
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
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = height;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setDepthReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLFXTemporalScalerSPI *)self->_baseObject setDepthReversed:reversedCopy];
  v5 = v15;
  *(v15 + 8) = -20472;
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
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = reversedCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFXTemporalScalerSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLFXTemporalScaler;
  v3 = [(CaptureMTLFXTemporalScaler *)&v7 description];
  v4 = [(MTLFXTemporalScalerSPI *)self->_baseObject description];
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
  baseObject = self->_baseObject;
  self->_baseObject = 0;

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v4 = v15;
  *(v15 + 8) = -20458;
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
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
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
  v13.super_class = CaptureMTLFXTemporalScaler;
  [(CaptureMTLFXTemporalScaler *)&v13 dealloc];
}

- (void)setReactiveMaskTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setReactiveMaskTexture:baseObject];

  captureReactiveMaskTexture = self->_captureReactiveMaskTexture;
  self->_captureReactiveMaskTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20456;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)encodeToCommandBuffer:(id)buffer
{
  bufferCopy = buffer;
  isCapturing = [bufferCopy isCapturing];
  baseObject = self->_baseObject;
  if (isCapturing)
  {
    if (objc_opt_respondsToSelector())
    {
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
      executionMode = [(MTLFXTemporalScalerSPI *)self->_baseObject executionMode];
      v8 = v33;
      *(v33 + 8) = -18430;
      v9 = BYTE9(v34);
      if (BYTE9(v34) > 0x30uLL)
      {
        v12 = *(*(&v32 + 1) + 24);
        v13 = BYTE10(v34);
        ++BYTE10(v34);
        v10 = GTTraceMemPool_allocateBytes(v12, *(&v33 + 1), v13 | 0x1000000000) + 16;
        v9 = v13;
      }

      else
      {
        v10 = (v8 + BYTE9(v34));
        BYTE9(v34) += 16;
      }

      *(v8 + 13) = v9;
      traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
      if (traceStream)
      {
        var0 = traceStream->var0;
      }

      else
      {
        var0 = 0;
      }

      *v10 = var0;
      *(v10 + 1) = executionMode;
      s();
      *v16 = v17;
      *(v16 + 8) = BYTE8(v34);
      *(v33 + 15) |= 8u;
    }

    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    traceContext = self->_traceContext;
    [bufferCopy traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v32);
    v19 = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    [(MTLFXTemporalScalerSPI *)v19 encodeToCommandBuffer:baseObject];

    v21 = v33;
    *(v33 + 8) = -20457;
    v22 = BYTE9(v34);
    if (BYTE9(v34) > 0x30uLL)
    {
      v24 = *(*(&v32 + 1) + 24);
      v25 = BYTE10(v34);
      ++BYTE10(v34);
      v23 = GTTraceMemPool_allocateBytes(v24, *(&v33 + 1), v25 | 0x1000000000) + 16;
      v22 = v25;
    }

    else
    {
      v23 = (v21 + BYTE9(v34));
      BYTE9(v34) += 16;
    }

    *(v21 + 13) = v22;
    traceStream2 = [(CaptureMTLFXTemporalScaler *)self traceStream];
    if (traceStream2)
    {
      v27 = traceStream2->var0;
    }

    else
    {
      v27 = 0;
    }

    traceStream3 = [bufferCopy traceStream];
    if (traceStream3)
    {
      v29 = *traceStream3;
    }

    else
    {
      v29 = 0;
    }

    *v23 = v27;
    *(v23 + 1) = v29;
    s();
    *v30 = v31;
    *(v30 + 8) = BYTE8(v34);
    *(v33 + 15) |= 8u;
  }

  else
  {
    baseObject2 = [bufferCopy baseObject];
    [(MTLFXTemporalScalerSPI *)baseObject encodeToCommandBuffer:baseObject2];
  }
}

- (void)setDebugTexture:(id)texture
{
  objc_storeStrong(&self->_captureDebugTexture, texture);
  textureCopy = texture;
  baseObject = [textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setDebugTexture:baseObject];
}

- (void)setOutputTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setOutputTexture:baseObject];

  captureOutputTexture = self->_captureOutputTexture;
  self->_captureOutputTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20461;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setMotionTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setMotionTexture:baseObject];

  captureMotionTexture = self->_captureMotionTexture;
  self->_captureMotionTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20464;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setExposureTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setExposureTexture:baseObject];

  captureExposureTexture = self->_captureExposureTexture;
  self->_captureExposureTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20470;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setDepthTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setDepthTexture:baseObject];

  captureDepthTexture = self->_captureDepthTexture;
  self->_captureDepthTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20471;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setColorTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setColorTexture:baseObject];

  captureColorTexture = self->_captureColorTexture;
  self->_captureColorTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20473;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setFence:(id)fence
{
  fenceCopy = fence;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLFence *)fenceCopy baseObject];
  [(MTLFXTemporalScalerSPI *)self->_baseObject setFence:baseObject];

  captureFence = self->_captureFence;
  self->_captureFence = fenceCopy;
  v7 = fenceCopy;

  v8 = v20;
  *(v20 + 8) = -20469;
  v9 = BYTE9(v21);
  if (BYTE9(v21) > 0x30uLL)
  {
    v11 = *(*(&v19 + 1) + 24);
    v12 = BYTE10(v21);
    ++BYTE10(v21);
    v10 = GTTraceMemPool_allocateBytes(v11, *(&v20 + 1), v12 | 0x1000000000) + 16;
    v9 = v12;
  }

  else
  {
    v10 = (v8 + BYTE9(v21));
    BYTE9(v21) += 16;
  }

  *(v8 + 13) = v9;
  traceStream = [(CaptureMTLFXTemporalScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLFence *)v7 traceStream];
  if (traceStream2)
  {
    v16 = traceStream2->var0;
  }

  else
  {
    v16 = 0;
  }

  *v10 = var0;
  *(v10 + 1) = v16;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (CaptureMTLFXTemporalScaler)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLFXTemporalScaler;
  v9 = [(CaptureMTLFXTemporalScaler *)&v14 init];
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