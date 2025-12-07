@interface CaptureMTLFXTemporalDenoisedScaler
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLFXTemporalDenoisedScaler)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)encodeToCommandQueue:(id)queue;
- (void)setColorTexture:(id)texture;
- (void)setDebugTexture:(id)texture;
- (void)setDenoiseStrengthMaskTexture:(id)texture;
- (void)setDepthReversed:(BOOL)reversed;
- (void)setDepthTexture:(id)texture;
- (void)setDiffuseAlbedoTexture:(id)texture;
- (void)setExposureTexture:(id)texture;
- (void)setFence:(id)fence;
- (void)setInputContentHeight:(unint64_t)height;
- (void)setInputContentWidth:(unint64_t)width;
- (void)setJitterOffsetX:(float)x;
- (void)setJitterOffsetY:(float)y;
- (void)setMotionTexture:(id)texture;
- (void)setMotionVectorScaleX:(float)x;
- (void)setMotionVectorScaleY:(float)y;
- (void)setNormalTexture:(id)texture;
- (void)setOutputTexture:(id)texture;
- (void)setPreExposure:(float)exposure;
- (void)setReactiveMaskTexture:(id)texture;
- (void)setRoughnessTexture:(id)texture;
- (void)setShouldResetHistory:(BOOL)history;
- (void)setSpecularAlbedoTexture:(id)texture;
- (void)setSpecularHitDistanceTexture:(id)texture;
- (void)setTransparencyOverlayTexture:(id)texture;
- (void)setViewToClipMatrix:(__n128)matrix;
- (void)setWorldToViewMatrix:(__n128)matrix;
- (void)touch;
@end

@implementation CaptureMTLFXTemporalDenoisedScaler

- (void)encodeToCommandQueue:(id)queue
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  queueCopy = queue;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [queueCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)baseObject encodeToCommandQueue:baseObject];

  v8 = v20;
  *(v20 + 8) = -20346;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [queueCopy traceStream];

  if (traceStream2)
  {
    v16 = *traceStream2;
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

- (void)setWorldToViewMatrix:(__n128)matrix
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(*(self + 24), &v19);
  [*(self + 8) setWorldToViewMatrix:{a2.n128_f64[0], matrix.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
  v6 = *(&v19 + 1);
  v7 = v20;
  *(v20 + 8) = -20422;
  v8 = *(v6 + 24);
  v9 = BYTE10(v21);
  ++BYTE10(v21);
  Bytes = GTTraceMemPool_allocateBytes(v8, *(&v20 + 1), v9 | 0x4800000000);
  *(v7 + 13) = v9;
  traceStream = [self traceStream];
  if (traceStream)
  {
    v12 = *traceStream;
  }

  else
  {
    v12 = 0;
  }

  *(Bytes + 2) = v12;
  *(Bytes + 24) = a2;
  *(Bytes + 40) = matrix;
  *(Bytes + 56) = a4;
  *(Bytes + 72) = a5;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setViewToClipMatrix:(__n128)matrix
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(*(self + 24), &v19);
  [*(self + 8) setViewToClipMatrix:{a2.n128_f64[0], matrix.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
  v6 = *(&v19 + 1);
  v7 = v20;
  *(v20 + 8) = -20423;
  v8 = *(v6 + 24);
  v9 = BYTE10(v21);
  ++BYTE10(v21);
  Bytes = GTTraceMemPool_allocateBytes(v8, *(&v20 + 1), v9 | 0x4800000000);
  *(v7 + 13) = v9;
  traceStream = [self traceStream];
  if (traceStream)
  {
    v12 = *traceStream;
  }

  else
  {
    v12 = 0;
  }

  *(Bytes + 2) = v12;
  *(Bytes + 24) = a2;
  *(Bytes + 40) = matrix;
  *(Bytes + 56) = a4;
  *(Bytes + 72) = a5;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setShouldResetHistory:(BOOL)history
{
  historyCopy = history;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setShouldResetHistory:historyCopy];
  v5 = v15;
  *(v15 + 8) = -20315;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = historyCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setPreExposure:(float)exposure
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = exposure;
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setPreExposure:v5];
  v6 = v16;
  *(v16 + 8) = -20429;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setMotionVectorScaleY:v5];
  v6 = v16;
  *(v16 + 8) = -20432;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setMotionVectorScaleX:v5];
  v6 = v16;
  *(v16 + 8) = -20433;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setJitterOffsetY:v5];
  v6 = v16;
  *(v16 + 8) = -20435;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setJitterOffsetX:v5];
  v6 = v16;
  *(v16 + 8) = -20436;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setInputContentWidth:width];
  v5 = v15;
  *(v15 + 8) = -20437;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setInputContentHeight:height];
  v5 = v15;
  *(v15 + 8) = -20438;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDepthReversed:reversedCopy];
  v5 = v15;
  *(v15 + 8) = -20443;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setDenoiseStrengthMaskTexture:(id)texture
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  traceContext = self->_traceContext;
  textureCopy = texture;
  GTTraceContext_pushEncoderWithStream(traceContext, &v18);
  baseObject = [textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDenoiseStrengthMaskTexture:baseObject];

  v7 = v19;
  *(v19 + 8) = -20348;
  v8 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v10 = *(*(&v18 + 1) + 24);
    v11 = BYTE10(v20);
    ++BYTE10(v20);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v19 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [textureCopy traceStream];

  if (traceStream2)
  {
    v15 = *traceStream2;
  }

  else
  {
    v15 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLFXTemporalDenoisedScalerSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLFXTemporalDenoisedScaler;
  v3 = [(CaptureMTLFXTemporalDenoisedScaler *)&v7 description];
  v4 = [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject description];
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
  *(v15 + 8) = -20421;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  v13.super_class = CaptureMTLFXTemporalDenoisedScaler;
  [(CaptureMTLFXTemporalDenoisedScaler *)&v13 dealloc];
}

- (void)setTransparencyOverlayTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setTransparencyOverlayTexture:baseObject];

  captureTransparencyOverlayTexture = self->_captureTransparencyOverlayTexture;
  self->_captureTransparencyOverlayTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20314;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setReactiveMaskTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setReactiveMaskTexture:baseObject];

  captureReactiveMaskTexture = self->_captureReactiveMaskTexture;
  self->_captureReactiveMaskTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20428;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
      v7 = v32;
      *(v32 + 8) = -18422;
      v8 = BYTE9(v33);
      if (BYTE9(v33) > 0x30uLL)
      {
        v11 = *(*(&v31 + 1) + 24);
        v12 = BYTE10(v33);
        ++BYTE10(v33);
        v9 = GTTraceMemPool_allocateBytes(v11, *(&v32 + 1), v12 | 0x1000000000) + 16;
        v8 = v12;
      }

      else
      {
        v9 = (v7 + BYTE9(v33));
        BYTE9(v33) += 16;
      }

      *(v7 + 13) = v8;
      traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
      if (traceStream)
      {
        var0 = traceStream->var0;
      }

      else
      {
        var0 = 0;
      }

      *v9 = var0;
      *(v9 + 1) = 0;
      s();
      *v15 = v16;
      *(v15 + 8) = BYTE8(v33);
      *(v32 + 15) |= 8u;
    }

    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    traceContext = self->_traceContext;
    [bufferCopy traceStream];
    GTTraceContext_pushEncoderWithStream(traceContext, &v31);
    v18 = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    [(MTLFXTemporalDenoisedScalerSPI *)v18 encodeToCommandBuffer:baseObject];

    v20 = v32;
    *(v32 + 8) = -20420;
    v21 = BYTE9(v33);
    if (BYTE9(v33) > 0x30uLL)
    {
      v23 = *(*(&v31 + 1) + 24);
      v24 = BYTE10(v33);
      ++BYTE10(v33);
      v22 = GTTraceMemPool_allocateBytes(v23, *(&v32 + 1), v24 | 0x1000000000) + 16;
      v21 = v24;
    }

    else
    {
      v22 = (v20 + BYTE9(v33));
      BYTE9(v33) += 16;
    }

    *(v20 + 13) = v21;
    traceStream2 = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
    if (traceStream2)
    {
      v26 = traceStream2->var0;
    }

    else
    {
      v26 = 0;
    }

    traceStream3 = [bufferCopy traceStream];
    if (traceStream3)
    {
      v28 = *traceStream3;
    }

    else
    {
      v28 = 0;
    }

    *v22 = v26;
    *(v22 + 1) = v28;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    baseObject2 = [bufferCopy baseObject];
    [(MTLFXTemporalDenoisedScalerSPI *)baseObject encodeToCommandBuffer:baseObject2];
  }
}

- (void)setDebugTexture:(id)texture
{
  objc_storeStrong(&self->_captureDebugTexture, texture);
  textureCopy = texture;
  baseObject = [textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDebugTexture:baseObject];
}

- (void)setOutputTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setOutputTexture:baseObject];

  captureOutputTexture = self->_captureOutputTexture;
  self->_captureOutputTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20430;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setSpecularHitDistanceTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setSpecularHitDistanceTexture:baseObject];

  captureSpecularHitDistanceTexture = self->_captureSpecularHitDistanceTexture;
  self->_captureSpecularHitDistanceTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20424;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setRoughnessTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setRoughnessTexture:baseObject];

  captureRoughnessTexture = self->_captureRoughnessTexture;
  self->_captureRoughnessTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20426;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setNormalTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setNormalTexture:baseObject];

  captureNormalTexture = self->_captureNormalTexture;
  self->_captureNormalTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20431;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setSpecularAlbedoTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setSpecularAlbedoTexture:baseObject];

  captureSpecularAlbedoTexture = self->_captureSpecularAlbedoTexture;
  self->_captureSpecularAlbedoTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20425;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (void)setDiffuseAlbedoTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDiffuseAlbedoTexture:baseObject];

  captureDiffuseAlbedoTexture = self->_captureDiffuseAlbedoTexture;
  self->_captureDiffuseAlbedoTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20441;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setMotionTexture:baseObject];

  captureMotionTexture = self->_captureMotionTexture;
  self->_captureMotionTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20434;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setExposureTexture:baseObject];

  captureExposureTexture = self->_captureExposureTexture;
  self->_captureExposureTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20440;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setDepthTexture:baseObject];

  captureDepthTexture = self->_captureDepthTexture;
  self->_captureDepthTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20442;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setColorTexture:baseObject];

  captureColorTexture = self->_captureColorTexture;
  self->_captureColorTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20444;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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
  [(MTLFXTemporalDenoisedScalerSPI *)self->_baseObject setFence:baseObject];

  captureFence = self->_captureFence;
  self->_captureFence = fenceCopy;
  v7 = fenceCopy;

  v8 = v20;
  *(v20 + 8) = -20439;
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
  traceStream = [(CaptureMTLFXTemporalDenoisedScaler *)self traceStream];
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

- (CaptureMTLFXTemporalDenoisedScaler)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLFXTemporalDenoisedScaler;
  v9 = [(CaptureMTLFXTemporalDenoisedScaler *)&v14 init];
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