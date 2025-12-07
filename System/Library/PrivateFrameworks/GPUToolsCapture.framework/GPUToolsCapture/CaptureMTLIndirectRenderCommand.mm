@interface CaptureMTLIndirectRenderCommand
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLIndirectRenderCommand)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context;
- (NSString)description;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)reset;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthStencilState:(id)state;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)touch;
@end

@implementation CaptureMTLIndirectRenderCommand

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setViewports:viewports count:count];
  v7 = v18;
  *(v18 + 8) = -14915;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v14 = GTTraceEncoder_storeBlob(&v17, viewports, 48 * count);
  *v9 = var0;
  *(v9 + 1) = count;
  v9[16] = v14;
  *(v9 + 17) = 0;
  *(v9 + 5) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setViewport:(id *)viewport
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  v6 = *&viewport->var2;
  v18[0] = *&viewport->var0;
  v18[1] = v6;
  v18[2] = *&viewport->var4;
  [(MTLIndirectRenderCommandSPI *)baseObject setViewport:v18];
  v7 = v20;
  *(v20 + 8) = -14916;
  v8 = BYTE9(v21);
  if (BYTE9(v21) > 8uLL)
  {
    v10 = *(*(&v19 + 1) + 24);
    v11 = BYTE10(v21);
    ++BYTE10(v21);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v20 + 1), v11 | 0x3800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v21));
    BYTE9(v21) += 56;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  v14 = *&viewport->var2;
  v15 = *&viewport->var4;
  *(v9 + 8) = *&viewport->var0;
  *(v9 + 24) = v14;
  *(v9 + 40) = v15;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v25);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setVertexBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

  v14 = v26;
  *(v26 + 8) = -15276;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x18uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x2800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 40;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = offset;
  *(v16 + 3) = stride;
  *(v16 + 4) = index;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setVertexBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15955;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = offset;
  *(v14 + 3) = index;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setTriangleFillMode:mode];
  v5 = v15;
  *(v15 + 8) = -14917;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = mode;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  v3 = *&value;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setStencilReferenceValue:v3];
  v5 = v15;
  *(v15 + 8) = -14918;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  v4 = *&referenceValue;
  v5 = *&value;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setStencilFrontReferenceValue:v5 backReferenceValue:v4];
  v7 = v17;
  *(v17 + 8) = -14919;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x30uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1000000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 16;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 2) = v5;
  *(v9 + 3) = v4;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setScissorRects:rects count:count];
  v7 = v18;
  *(v18 + 8) = -14920;
  v8 = BYTE9(v19);
  if (BYTE9(v19) > 0x28uLL)
  {
    v10 = *(*(&v17 + 1) + 24);
    v11 = BYTE10(v19);
    ++BYTE10(v19);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v18 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v19));
    BYTE9(v19) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v14 = GTTraceEncoder_storeBlob(&v17, rects, 32 * count);
  *v9 = var0;
  *(v9 + 1) = count;
  v9[16] = v14;
  *(v9 + 17) = 0;
  *(v9 + 5) = 0;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)setScissorRect:(id *)rect
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  baseObject = self->_baseObject;
  v6 = *&rect->var2;
  v17[0] = *&rect->var0;
  v17[1] = v6;
  [(MTLIndirectRenderCommandSPI *)baseObject setScissorRect:v17];
  v7 = v19;
  *(v19 + 8) = -14921;
  v8 = BYTE9(v20);
  if (BYTE9(v20) > 0x18uLL)
  {
    v10 = *(*(&v18 + 1) + 24);
    v11 = BYTE10(v20);
    ++BYTE10(v20);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v19 + 1), v11 | 0x2800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v20));
    BYTE9(v20) += 40;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  v14 = *&rect->var2;
  *(v9 + 8) = *&rect->var0;
  *(v9 + 24) = v14;
  s();
  *v15 = v16;
  *(v15 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setRenderPipelineState:(id)state
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  stateCopy = state;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setRenderPipelineState:baseObject];

  v8 = v20;
  *(v20 + 8) = -15956;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];

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

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15262;
  v8 = BYTE9(v18);
  if (BYTE9(v18) > 0x28uLL)
  {
    v10 = *(*(&v16 + 1) + 24);
    v11 = BYTE10(v18);
    ++BYTE10(v18);
    v9 = GTTraceMemPool_allocateBytes(v10, *(&v17 + 1), v11 | 0x1800000000) + 16;
    v8 = v11;
  }

  else
  {
    v9 = (v7 + BYTE9(v18));
    BYTE9(v18) += 24;
  }

  *(v7 + 13) = v8;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = length;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setObjectBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15263;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = offset;
  *(v14 + 3) = index;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setMeshBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15264;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = offset;
  *(v14 + 3) = index;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setFrontFacingWinding:winding];
  v5 = v15;
  *(v15 + 8) = -14922;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = winding;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setFragmentBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15954;
  v13 = BYTE9(v25);
  if (BYTE9(v25) > 0x20uLL)
  {
    v15 = *(*(&v23 + 1) + 24);
    v16 = BYTE10(v25);
    ++BYTE10(v25);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x2000000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v25));
    BYTE9(v25) += 32;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    v20 = *traceStream2;
  }

  else
  {
    v20 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v20;
  *(v14 + 2) = offset;
  *(v14 + 3) = index;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  *&v7 = bound;
  *&v8 = maxBound;
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthTestMinBound:v7 maxBound:v8];
  v9 = v19;
  *(v19 + 8) = -14923;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x30uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x1000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 16;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 2) = bound;
  *(v11 + 3) = maxBound;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setDepthStencilState:(id)state
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  traceContext = self->_traceContext;
  stateCopy = state;
  GTTraceContext_pushEncoderWithStream(traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject setDepthStencilState:baseObject];

  v8 = v20;
  *(v20 + 8) = -14924;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [stateCopy traceStream];

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

- (void)setDepthClipMode:(unint64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthClipMode:mode];
  v5 = v15;
  *(v15 + 8) = -14925;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = mode;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  *&v9 = bias;
  *&v10 = scale;
  *&v11 = clamp;
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setDepthBias:v9 slopeScale:v10 clamp:v11];
  v12 = v22;
  *(v22 + 8) = -14926;
  v13 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v15 = *(*(&v21 + 1) + 24);
    v16 = BYTE10(v23);
    ++BYTE10(v23);
    v14 = GTTraceMemPool_allocateBytes(v15, *(&v22 + 1), v16 | 0x1800000000) + 16;
    v13 = v16;
  }

  else
  {
    v14 = (v12 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v14 = var0;
  *(v14 + 2) = bias;
  *(v14 + 3) = scale;
  *(v14 + 4) = clamp;
  *(v14 + 5) = 0;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setCullMode:(unint64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setCullMode:mode];
  v5 = v15;
  *(v15 + 8) = -14927;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = mode;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  *&v11 = red;
  *&v12 = green;
  *&v13 = blue;
  *&v14 = alpha;
  [(MTLIndirectRenderCommandSPI *)self->_baseObject setBlendColorRed:v11 green:v12 blue:v13 alpha:v14];
  v15 = v25;
  *(v25 + 8) = -14928;
  v16 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v18 = *(*(&v24 + 1) + 24);
    v19 = BYTE10(v26);
    ++BYTE10(v26);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v25 + 1), v19 | 0x1800000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v17 = var0;
  *(v17 + 2) = red;
  *(v17 + 3) = green;
  *(v17 + 4) = blue;
  *(v17 + 5) = alpha;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)reset
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject reset];
  v3 = v13;
  *(v13 + 8) = -15906;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  [(MTLIndirectRenderCommandSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
  v13 = v23;
  *(v23 + 8) = -15949;
  v14 = BYTE9(v24);
  if (BYTE9(v24) > 0x10uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v24);
    ++BYTE10(v24);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v23 + 1), v17 | 0x3000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v24));
    BYTE9(v24) += 48;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = primitives;
  *(v15 + 2) = start;
  *(v15 + 3) = count;
  *(v15 + 4) = instanceCount;
  *(v15 + 5) = instance;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance tessellationFactorBuffer:(id)self0 tessellationFactorBufferOffset:(unint64_t)self1 tessellationFactorBufferInstanceStride:(unint64_t)self2
{
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  traceContext = self->_traceContext;
  factorBufferCopy = factorBuffer;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v38);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v37 = factorBufferCopy;
  baseObject2 = [factorBufferCopy baseObject];
  [(MTLIndirectRenderCommandSPI *)baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance tessellationFactorBuffer:baseObject2 tessellationFactorBufferOffset:bufferOffset tessellationFactorBufferInstanceStride:stride];

  v22 = *(&v38 + 1);
  v23 = v39;
  *(v39 + 8) = -15952;
  v24 = *(v22 + 24);
  v25 = BYTE10(v40);
  ++BYTE10(v40);
  Bytes = GTTraceMemPool_allocateBytes(v24, *(&v39 + 1), v25 | 0x5800000000);
  *(v23 + 13) = v25;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    traceStream2 = *traceStream2;
  }

  traceStream3 = [v37 traceStream];

  if (traceStream3)
  {
    v31 = *traceStream3;
  }

  else
  {
    v31 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = patches;
  *(Bytes + 4) = start;
  *(Bytes + 5) = count;
  *(Bytes + 6) = traceStream2;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = instanceCount;
  *(Bytes + 9) = instance;
  *(Bytes + 10) = v31;
  *(Bytes + 11) = bufferOffset;
  *(Bytes + 12) = stride;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v40);
  *(v39 + 15) |= 8u;
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v26 = *threads;
  v25 = *threadgroup;
  v24 = *meshThreadgroup;
  [(MTLIndirectRenderCommandSPI *)baseObject drawMeshThreads:&v26 threadsPerObjectThreadgroup:&v25 threadsPerMeshThreadgroup:&v24];
  v10 = *(&v27 + 1);
  v11 = v28;
  *(v28 + 8) = -15265;
  v12 = *(v10 + 24);
  v13 = BYTE10(v29);
  ++BYTE10(v29);
  Bytes = GTTraceMemPool_allocateBytes(v12, *(&v28 + 1), v13 | 0x5000000000);
  *(v11 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threads->var2;
  v18 = threadgroup->var2;
  v19 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  v20 = *&threadgroup->var0;
  v21 = *&meshThreadgroup->var0;
  *(Bytes + 24) = *&threads->var0;
  *(Bytes + 5) = var2;
  *(Bytes + 3) = v20;
  *(Bytes + 8) = v18;
  *(Bytes + 72) = v21;
  *(Bytes + 11) = v19;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  v26 = *threadgroups;
  v25 = *threadgroup;
  v24 = *meshThreadgroup;
  [(MTLIndirectRenderCommandSPI *)baseObject drawMeshThreadgroups:&v26 threadsPerObjectThreadgroup:&v25 threadsPerMeshThreadgroup:&v24];
  v10 = *(&v27 + 1);
  v11 = v28;
  *(v28 + 8) = -15266;
  v12 = *(v10 + 24);
  v13 = BYTE10(v29);
  ++BYTE10(v29);
  Bytes = GTTraceMemPool_allocateBytes(v12, *(&v28 + 1), v13 | 0x5000000000);
  *(v11 + 13) = v13;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = threadgroups->var2;
  v18 = threadgroup->var2;
  v19 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  v20 = *&threadgroup->var0;
  v21 = *&meshThreadgroup->var0;
  *(Bytes + 24) = *&threadgroups->var0;
  *(Bytes + 5) = var2;
  *(Bytes + 3) = v20;
  *(Bytes + 8) = v18;
  *(Bytes + 72) = v21;
  *(Bytes + 11) = v19;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  traceContext = self->_traceContext;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v32);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  instanceCountCopy = instanceCount;
  [(MTLIndirectRenderCommandSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offset instanceCount:instanceCount baseVertex:vertex baseInstance:instance];

  v19 = *(&v32 + 1);
  v20 = v33;
  *(v33 + 8) = -15948;
  v21 = *(v19 + 24);
  v22 = BYTE10(v34);
  ++BYTE10(v34);
  Bytes = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x4800000000);
  *(v20 + 13) = v22;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
    v27 = *traceStream2;
  }

  else
  {
    v27 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = primitives;
  *(Bytes + 4) = count;
  *(Bytes + 5) = type;
  *(Bytes + 6) = v27;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = instanceCountCopy;
  *(Bytes + 9) = vertex;
  *(Bytes + 10) = instance;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1 tessellationFactorBuffer:(id)self2 tessellationFactorBufferOffset:(unint64_t)self3 tessellationFactorBufferInstanceStride:(unint64_t)self4
{
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  traceContext = self->_traceContext;
  factorBufferCopy = factorBuffer;
  indexBufferCopy = indexBuffer;
  bufferCopy = buffer;
  GTTraceContext_pushEncoderWithStream(traceContext, &v45);
  baseObject = self->_baseObject;
  v43 = bufferCopy;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indexBufferCopy baseObject];
  v44 = factorBufferCopy;
  baseObject3 = [factorBufferCopy baseObject];
  [MTLIndirectRenderCommandSPI drawIndexedPatches:"drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:tessellationFactorBuffer:tessellationFactorBufferOffset:tessellationFactorBufferInstanceStride:" patchStart:patches patchCount:start patchIndexBuffer:count patchIndexBufferOffset:baseObject controlPointIndexBuffer:bufferOffset controlPointIndexBufferOffset:instanceCount instanceCount:instance baseInstance:baseObject3 tessellationFactorBuffer:factorBufferOffset tessellationFactorBufferOffset:stride tessellationFactorBufferInstanceStride:?];

  v26 = *(&v45 + 1);
  v27 = v46;
  *(v46 + 8) = -15950;
  v28 = *(v26 + 24);
  v29 = BYTE10(v47);
  ++BYTE10(v47);
  Bytes = GTTraceMemPool_allocateBytes(v28, *(&v46 + 1), v29 | 0x6800000000);
  *(v27 + 13) = v29;
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v43 traceStream];

  if (traceStream2)
  {
    v34 = *traceStream2;
  }

  else
  {
    v34 = 0;
  }

  traceStream3 = [indexBufferCopy traceStream];

  if (traceStream3)
  {
    traceStream3 = *traceStream3;
  }

  traceStream4 = [v44 traceStream];

  if (traceStream4)
  {
    v37 = *traceStream4;
  }

  else
  {
    v37 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = patches;
  *(Bytes + 4) = start;
  *(Bytes + 5) = count;
  *(Bytes + 6) = v34;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = traceStream3;
  *(Bytes + 9) = bufferOffset;
  *(Bytes + 10) = instanceCount;
  *(Bytes + 11) = instance;
  *(Bytes + 12) = v37;
  *(Bytes + 13) = factorBufferOffset;
  *(Bytes + 14) = stride;
  s();
  *v38 = v39;
  *(v38 + 8) = BYTE8(v47);
  *(v46 + 15) |= 8u;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -15957;
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
  traceStream = [(CaptureMTLIndirectRenderCommand *)self traceStream];
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
  v12.super_class = CaptureMTLIndirectRenderCommand;
  [(CaptureMTLIndirectRenderCommand *)&v12 dealloc];
}

- (BOOL)conformsToProtocol:(id)protocol
{
  baseObject = self->_baseObject;
  protocolCopy = protocol;
  v5 = [(MTLIndirectRenderCommandSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLIndirectRenderCommand;
  v3 = [(CaptureMTLIndirectRenderCommand *)&v7 description];
  v4 = [(MTLIndirectRenderCommandSPI *)self->_baseObject description];
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

- (CaptureMTLIndirectRenderCommand)initWithBaseObject:(id)object captureContext:(GTTraceContext *)context
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CaptureMTLIndirectRenderCommand;
  v8 = [(CaptureMTLIndirectRenderCommand *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_baseObject, object);
    v9->_traceContext = context;
    v10 = DEVICEOBJECT(objectCopy);
    v9->_traceStream = GTTraceContext_openStream(context, v10, v9);
  }

  return v9;
}

@end