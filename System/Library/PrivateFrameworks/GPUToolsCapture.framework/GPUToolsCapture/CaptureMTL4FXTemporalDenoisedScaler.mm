@interface CaptureMTL4FXTemporalDenoisedScaler
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTL4FXTemporalDenoisedScaler)initWithBaseObject:(id)object captureDevice:(id)device captureCompiler:(id)compiler;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)encodeToCommandBuffer:(id)buffer;
- (void)setColorTexture:(id)texture;
- (void)setColorTextureBarrierStages:(unint64_t)stages;
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

@implementation CaptureMTL4FXTemporalDenoisedScaler

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -20371;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  v12.super_class = CaptureMTL4FXTemporalDenoisedScaler;
  [(CaptureMTL4FXTemporalDenoisedScaler *)&v12 dealloc];
}

- (void)setWorldToViewMatrix:(__n128)matrix
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(*(self + 152), &v19);
  [*(self + 8) setWorldToViewMatrix:{a2.n128_f64[0], matrix.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
  v6 = *(&v19 + 1);
  v7 = v20;
  *(v20 + 8) = -20372;
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
  GTTraceContext_pushEncoderWithStream(*(self + 152), &v19);
  [*(self + 8) setViewToClipMatrix:{a2.n128_f64[0], matrix.n128_f64[0], a4.n128_f64[0], a5.n128_f64[0]}];
  v6 = *(&v19 + 1);
  v7 = v20;
  *(v20 + 8) = -20373;
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setShouldResetHistory:historyCopy];
  v5 = v15;
  *(v15 + 8) = -20318;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setPreExposure:v5];
  v6 = v16;
  *(v16 + 8) = -20380;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setMotionVectorScaleY:v5];
  v6 = v16;
  *(v16 + 8) = -20384;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setMotionVectorScaleX:v5];
  v6 = v16;
  *(v16 + 8) = -20385;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setJitterOffsetY:v5];
  v6 = v16;
  *(v16 + 8) = -20387;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setJitterOffsetX:v5];
  v6 = v16;
  *(v16 + 8) = -20388;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setInputContentWidth:width];
  v5 = v15;
  *(v15 + 8) = -20389;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setInputContentHeight:height];
  v5 = v15;
  *(v15 + 8) = -20390;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setDepthReversed:reversedCopy];
  v5 = v15;
  *(v15 + 8) = -20395;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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

- (void)setColorTextureBarrierStages:(unint64_t)stages
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setColorTextureBarrierStages:stages];
  v5 = v15;
  *(v15 + 8) = -20325;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = stages;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTL4FXTemporalDenoisedScalerSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTL4FXTemporalDenoisedScaler;
  v3 = [(CaptureMTL4FXTemporalDenoisedScaler *)&v7 description];
  v4 = [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject description];
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

- (void)encodeToCommandBuffer:(id)buffer
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTL4FXTemporalDenoisedScalerSPI *)baseObject encodeToCommandBuffer:baseObject];

  v8 = v20;
  *(v20 + 8) = -20370;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [bufferCopy traceStream];

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

- (void)setSpecularHitDistanceTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setSpecularHitDistanceTexture:baseObject];

  captureSpecularHitDistanceTexture = self->_captureSpecularHitDistanceTexture;
  self->_captureSpecularHitDistanceTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20374;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setSpecularAlbedoTexture:baseObject];

  captureSpecularAlbedoTexture = self->_captureSpecularAlbedoTexture;
  self->_captureSpecularAlbedoTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20375;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setRoughnessTexture:baseObject];

  captureRoughnessTexture = self->_captureRoughnessTexture;
  self->_captureRoughnessTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20376;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setReactiveMaskTexture:baseObject];

  captureReactiveMaskTexture = self->_captureReactiveMaskTexture;
  self->_captureReactiveMaskTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20378;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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

- (void)setTransparencyOverlayTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setTransparencyOverlayTexture:baseObject];

  captureTransparencyOverlayTexture = self->_captureTransparencyOverlayTexture;
  self->_captureTransparencyOverlayTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20317;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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

- (void)setOutputTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setOutputTexture:baseObject];

  captureOutputTexture = self->_captureOutputTexture;
  self->_captureOutputTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20382;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setNormalTexture:baseObject];

  captureNormalTexture = self->_captureNormalTexture;
  self->_captureNormalTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20383;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setMotionTexture:baseObject];

  captureMotionTexture = self->_captureMotionTexture;
  self->_captureMotionTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20386;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setExposureTexture:baseObject];

  captureExposureTexture = self->_captureExposureTexture;
  self->_captureExposureTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20392;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setDiffuseAlbedoTexture:baseObject];

  captureDiffuseAlbedoTexture = self->_captureDiffuseAlbedoTexture;
  self->_captureDiffuseAlbedoTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20393;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setDepthTexture:baseObject];

  captureDepthTexture = self->_captureDepthTexture;
  self->_captureDepthTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20394;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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

- (void)setDenoiseStrengthMaskTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = [(CaptureMTLTexture *)textureCopy baseObject];
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setDenoiseStrengthMaskTexture:baseObject];

  captureDenoiseStrengthMaskTexture = self->_captureDenoiseStrengthMaskTexture;
  self->_captureDenoiseStrengthMaskTexture = textureCopy;
  v7 = textureCopy;

  v8 = v20;
  *(v20 + 8) = -20396;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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

- (void)setDebugTexture:(id)texture
{
  textureCopy = texture;
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setDebugTexture:textureCopy];
  captureDebugTexture = self->_captureDebugTexture;
  self->_captureDebugTexture = textureCopy;
}

- (void)setColorTexture:(id)texture
{
  textureCopy = texture;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  captureColorTexture = self->_captureColorTexture;
  self->_captureColorTexture = textureCopy;
  v6 = textureCopy;

  baseObject = [(CaptureMTLTexture *)v6 baseObject];
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setColorTexture:baseObject];

  v8 = v20;
  *(v20 + 8) = -20397;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLTexture *)v6 traceStream];
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
  [(MTL4FXTemporalDenoisedScalerSPI *)self->_baseObject setFence:baseObject];

  captureFence = self->_captureFence;
  self->_captureFence = fenceCopy;
  v7 = fenceCopy;

  v8 = v20;
  *(v20 + 8) = -20391;
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
  traceStream = [(CaptureMTL4FXTemporalDenoisedScaler *)self traceStream];
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

- (CaptureMTL4FXTemporalDenoisedScaler)initWithBaseObject:(id)object captureDevice:(id)device captureCompiler:(id)compiler
{
  objectCopy = object;
  deviceCopy = device;
  compilerCopy = compiler;
  v17.receiver = self;
  v17.super_class = CaptureMTL4FXTemporalDenoisedScaler;
  v12 = [(CaptureMTL4FXTemporalDenoisedScaler *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_baseObject, object);
    objc_storeStrong(&v13->_captureDevice, device);
    objc_storeStrong(&v13->_captureCompiler, compiler);
    traceContext = [deviceCopy traceContext];
    v13->_traceContext = traceContext;
    v15 = DEVICEOBJECT(objectCopy);
    v13->_traceStream = GTTraceContext_openStream(traceContext, v15, v13);
  }

  return v13;
}

@end