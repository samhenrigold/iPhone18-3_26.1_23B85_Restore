@interface CaptureMTLArgumentEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLArgumentEncoder)initWithBaseObject:(id)object captureDevice:(id)device;
- (NSString)description;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (unint64_t)streamReference;
- (void)dealloc;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset;
- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index;
- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setLabel:(id)label;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)touch;
@end

@implementation CaptureMTLArgumentEncoder

- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      tablesCopy = tables;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *tablesCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setVisibleFunctionTables:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -15536;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *tables++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setVisibleFunctionTables:v20 withRange:location, length];
  }
}

- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index
{
  tableCopy = table;
  v7 = tableCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setVisibleFunctionTable:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -15537;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [tableCopy baseObject];
    [(MTLArgumentEncoder *)v13 setVisibleFunctionTable:baseObject2 atIndex:index];
  }
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      texturesCopy = textures;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *texturesCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setTextures:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -16057;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *textures++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setTextures:v20 withRange:location, length];
  }
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  v7 = textureCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setTexture:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -16058;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [textureCopy baseObject];
    [(MTLArgumentEncoder *)v13 setTexture:baseObject2 atIndex:index];
  }
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      statesCopy = states;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *statesCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setSamplerStates:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -16055;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *states++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setSamplerStates:v20 withRange:location, length];
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v7 = stateCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setSamplerState:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -16056;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [stateCopy baseObject];
    [(MTLArgumentEncoder *)v13 setSamplerState:baseObject2 atIndex:index];
  }
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      statesCopy = states;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *statesCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setRenderPipelineStates:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -16001;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *states++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setRenderPipelineStates:v20 withRange:location, length];
  }
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v7 = stateCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setRenderPipelineState:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -16002;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [stateCopy baseObject];
    [(MTLArgumentEncoder *)v13 setRenderPipelineState:baseObject2 atIndex:index];
  }
}

- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      tablesCopy = tables;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *tablesCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setIntersectionFunctionTables:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -15538;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *tables++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setIntersectionFunctionTables:v20 withRange:location, length];
  }
}

- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index
{
  tableCopy = table;
  v7 = tableCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setIntersectionFunctionTable:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -15539;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [tableCopy baseObject];
    [(MTLArgumentEncoder *)v13 setIntersectionFunctionTable:baseObject2 atIndex:index];
  }
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      buffersCopy = buffers;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *buffersCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setIndirectCommandBuffers:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -15915;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), buffers, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *buffers++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setIndirectCommandBuffers:v20 withRange:location, length];
  }
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v7 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setIndirectCommandBuffer:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -15916;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v13 setIndirectCommandBuffer:baseObject2 atIndex:index];
  }
}

- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
    baseObject = self->_baseObject;
    v10 = 8 * length;
    __chkstk_darwin(v8);
    bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      statesCopy = states;
      v12 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = length;
      do
      {
        v14 = *statesCopy++;
        *v12++ = [v14 baseObject];
        --v13;
      }

      while (v13);
    }

    [(MTLArgumentEncoder *)baseObject setDepthStencilStates:&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
    v15 = v32;
    *(v32 + 8) = -15204;
    v16 = BYTE9(v33);
    if (BYTE9(v33) > 0x20uLL)
    {
      v24 = *(*(&v31 + 1) + 24);
      v25 = BYTE10(v33);
      ++BYTE10(v33);
      v17 = GTTraceMemPool_allocateBytes(v24, *(&v32 + 1), v25 | 0x2000000000) + 16;
      v16 = v25;
    }

    else
    {
      v17 = (v15 + BYTE9(v33));
      BYTE9(v33) += 32;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v28 = StreamArray(&v31, (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
    *v17 = var0;
    *(v17 + 1) = location;
    *(v17 + 2) = length;
    v17[24] = v28;
    *(v17 + 25) = 0;
    *(v17 + 7) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v33);
    *(v32 + 15) |= 8u;
  }

  else
  {
    v18 = self->_baseObject;
    __chkstk_darwin(self);
    v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v20, v19);
    if (length)
    {
      v21 = v20;
      v22 = length;
      do
      {
        v23 = *states++;
        *v21 = [v23 baseObject];
        v21 += 8;
        --v22;
      }

      while (v22);
    }

    [(MTLArgumentEncoder *)v18 setDepthStencilStates:v20 withRange:location, length];
  }
}

- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  v7 = stateCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setDepthStencilState:baseObject atIndex:index];

    v10 = v24;
    *(v24 + 8) = -15205;
    v11 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v15 = *(*(&v23 + 1) + 24);
      v16 = BYTE10(v25);
      ++BYTE10(v25);
      v12 = GTTraceMemPool_allocateBytes(v15, *(&v24 + 1), v16 | 0x1800000000) + 16;
      v11 = v16;
    }

    else
    {
      v12 = (v10 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v10 + 13) = v11;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v7 traceStream];
    if (traceStream2)
    {
      v20 = *traceStream2;
    }

    else
    {
      v20 = 0;
    }

    *v12 = var0;
    *(v12 + 1) = v20;
    *(v12 + 2) = index;
    s();
    *v21 = v22;
    *(v21 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  else
  {
    v13 = self->_baseObject;
    baseObject2 = [stateCopy baseObject];
    [(MTLArgumentEncoder *)v13 setDepthStencilState:baseObject2 atIndex:index];
  }
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = self->_baseObject;
  __chkstk_darwin(self);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v9, v8);
  if (length)
  {
    v10 = v9;
    v11 = length;
    do
    {
      v12 = *states++;
      *v10 = [v12 baseObject];
      v10 += 8;
      --v11;
    }

    while (v11);
  }

  [(MTLArgumentEncoder *)baseObject setComputePipelineStates:v9 withRange:location, length];
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
{
  baseObject = self->_baseObject;
  baseObject = [state baseObject];
  [(MTLArgumentEncoder *)baseObject setComputePipelineState:baseObject atIndex:index];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v36 = range.location;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
    baseObject = self->_baseObject;
    v12 = 8 * length;
    __chkstk_darwin(v10);
    bzero(&v35 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    if (length)
    {
      buffersCopy = buffers;
      v14 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v15 = length;
      do
      {
        v16 = *buffersCopy++;
        *v14++ = [v16 baseObject];
        --v15;
      }

      while (v15);
    }

    v17 = v36;
    [(MTLArgumentEncoder *)baseObject setBuffers:&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:v36, length];
    v18 = v38;
    *(v38 + 8) = -16059;
    v19 = BYTE9(v39);
    if (BYTE9(v39) > 0x20uLL)
    {
      v27 = *(*(&v37 + 1) + 24);
      v28 = BYTE10(v39);
      ++BYTE10(v39);
      v20 = GTTraceMemPool_allocateBytes(v27, *(&v38 + 1), v28 | 0x2000000000) + 16;
      v19 = v28;
    }

    else
    {
      v20 = (v18 + BYTE9(v39));
      BYTE9(v39) += 32;
    }

    *(v18 + 13) = v19;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    __chkstk_darwin(traceStream);
    bzero(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
    v31 = StreamArray(&v37, (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffers, length);
    v32 = GTTraceEncoder_storeBytes(&v37, offsets, 8 * length);
    *v20 = var0;
    *(v20 + 1) = v17;
    *(v20 + 2) = length;
    v20[24] = v31;
    v20[25] = v32;
    *(v20 + 26) = 0;
    *(v20 + 15) = 0;
    s();
    *v33 = v34;
    *(v33 + 8) = BYTE8(v39);
    *(v38 + 15) |= 8u;
  }

  else
  {
    v21 = self->_baseObject;
    __chkstk_darwin(self);
    v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v23, v22);
    if (length)
    {
      v24 = v23;
      v25 = length;
      do
      {
        v26 = *buffers++;
        *v24 = [v26 baseObject];
        v24 += 8;
        --v25;
      }

      while (v25);
    }

    [(MTLArgumentEncoder *)v21 setBuffers:v23 offsets:offsets withRange:location, length];
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
    baseObject = self->_baseObject;
    baseObject = [v9 baseObject];
    [(MTLArgumentEncoder *)baseObject setBuffer:baseObject offset:offset atIndex:index];

    v12 = v26;
    *(v26 + 8) = -16060;
    v13 = BYTE9(v27);
    if (BYTE9(v27) > 0x20uLL)
    {
      v17 = *(*(&v25 + 1) + 24);
      v18 = BYTE10(v27);
      ++BYTE10(v27);
      v14 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x2000000000) + 16;
      v13 = v18;
    }

    else
    {
      v14 = (v12 + BYTE9(v27));
      BYTE9(v27) += 32;
    }

    *(v12 + 13) = v13;
    traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream)
    {
      var0 = traceStream->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream2 = [v9 traceStream];
    if (traceStream2)
    {
      v22 = *traceStream2;
    }

    else
    {
      v22 = 0;
    }

    *v14 = var0;
    *(v14 + 1) = v22;
    *(v14 + 2) = offset;
    *(v14 + 3) = index;
    s();
    *v23 = v24;
    *(v23 + 8) = BYTE8(v27);
    *(v26 + 15) |= 8u;
  }

  else
  {
    v15 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v15 setBuffer:baseObject2 offset:offset atIndex:index];
  }
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
{
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  traceContext = self->_traceContext;
  v25 = traceContext;
  *&v26 = 0;
  *(&v26 + 1) = atomic_fetch_add(&traceContext->var3, 1uLL);
  s();
  v7 = v6;
  v8 = *v6;
  *v6 = v9;
  *&v27 = v8;
  BYTE8(v27) = *(v6 + 8);
  *(&v27 + 9) = 16400;
  *(&v27 + 11) = 0;
  HIBYTE(v27) = 0;
  v10 = [(MTLArgumentEncoder *)self->_baseObject newArgumentEncoderForBufferAtIndex:?];
  if (v10)
  {
    v11 = [CaptureMTLArgumentEncoder alloc];
    device = [(CaptureMTLArgumentEncoder *)self device];
    v13 = [(CaptureMTLArgumentEncoder *)v11 initWithBaseObject:v10 captureDevice:device];
  }

  else
  {
    v13 = 0;
  }

  GTTraceEncoder_setStream(&v25, [(CaptureMTLArgumentEncoder *)v13 traceStream]);
  v14 = v26;
  *(v26 + 8) = -16053;
  v15 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [(CaptureMTLArgumentEncoder *)v13 traceStream];
  if (traceStream2)
  {
    v22 = traceStream2->var0;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = index;
  v23 = v26;
  *v7 = v27;
  *(v7 + 8) = BYTE8(v27);
  *(v23 + 15) |= 8u;

  return v13;
}

- (void)dealloc
{
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v13);
  v3 = v14;
  *(v14 + 8) = -16062;
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
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
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
  v12.super_class = CaptureMTLArgumentEncoder;
  [(CaptureMTLArgumentEncoder *)&v12 dealloc];
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLArgumentEncoder *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -16063;
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
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
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
  v5 = [(MTLArgumentEncoder *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLArgumentEncoder;
  v3 = [(CaptureMTLArgumentEncoder *)&v7 description];
  v4 = [(MTLArgumentEncoder *)self->_baseObject description];
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

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLArgumentEncoder_setAccelerationStructure_atIndex", "Raytracing", 0, 0);
      goto LABEL_7;
    }
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) != 2)
  {
LABEL_7:
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setAccelerationStructure:baseObject atIndex:index];

    goto LABEL_16;
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  v10 = self->_baseObject;
  baseObject2 = [v7 baseObject];
  [(MTLArgumentEncoder *)v10 setAccelerationStructure:baseObject2 atIndex:index];

  v12 = v26;
  *(v26 + 8) = -15627;
  v13 = BYTE9(v27);
  if (BYTE9(v27) > 0x28uLL)
  {
    v17 = *(*(&v25 + 1) + 24);
    v18 = BYTE10(v27);
    ++BYTE10(v27);
    v14 = GTTraceMemPool_allocateBytes(v17, *(&v26 + 1), v18 | 0x1800000000) + 16;
    v13 = v18;
  }

  else
  {
    v14 = (v12 + BYTE9(v27));
    BYTE9(v27) += 24;
  }

  *(v12 + 13) = v13;
  traceStream = [(CaptureMTLArgumentEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [v7 traceStream];
  if (traceStream2)
  {
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  *v14 = var0;
  *(v14 + 1) = v22;
  *(v14 + 2) = index;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
LABEL_16:
}

- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset arrayElement:(unint64_t)element
{
  bufferCopy = buffer;
  v9 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream = [bufferCopy traceStream];
    if (traceStream)
    {
      v11 = atomic_load(traceStream + 7);
      v12 = v11;
      do
      {
        atomic_compare_exchange_strong(traceStream + 7, &v12, v11 | 2);
        v13 = v12 == v11;
        v11 = v12;
      }

      while (!v13);
    }

    if (v9)
    {
      CaptureMTLBuffer_registerBaseBufferForTracing(*(v9 + 1), *(v9 + 6), 0);
    }

    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
    baseObject = self->_baseObject;
    baseObject = [v9 baseObject];
    [(MTLArgumentEncoder *)baseObject setArgumentBuffer:baseObject startOffset:offset arrayElement:element];

    v16 = v30;
    *(v30 + 8) = -16033;
    v17 = BYTE9(v31);
    if (BYTE9(v31) > 0x20uLL)
    {
      v21 = *(*(&v29 + 1) + 24);
      v22 = BYTE10(v31);
      ++BYTE10(v31);
      v18 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x2000000000) + 16;
      v17 = v22;
    }

    else
    {
      v18 = (v16 + BYTE9(v31));
      BYTE9(v31) += 32;
    }

    *(v16 + 13) = v17;
    traceStream2 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream2)
    {
      var0 = traceStream2->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream3 = [v9 traceStream];
    if (traceStream3)
    {
      v26 = *traceStream3;
    }

    else
    {
      v26 = 0;
    }

    *v18 = var0;
    *(v18 + 1) = v26;
    *(v18 + 2) = offset;
    *(v18 + 3) = element;
    s();
    *v27 = v28;
    *(v27 + 8) = BYTE8(v31);
    *(v30 + 15) |= 8u;
  }

  else
  {
    v19 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v19 setArgumentBuffer:baseObject2 startOffset:offset arrayElement:element];
  }
}

- (void)setArgumentBuffer:(id)buffer offset:(unint64_t)offset
{
  bufferCopy = buffer;
  v7 = bufferCopy;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    traceStream = [bufferCopy traceStream];
    if (traceStream)
    {
      v9 = atomic_load(traceStream + 7);
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong(traceStream + 7, &v10, v9 | 2);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }

    if (v7)
    {
      CaptureMTLBuffer_registerBaseBufferForTracing(*(v7 + 1), *(v7 + 6), 0);
    }

    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
    baseObject = self->_baseObject;
    baseObject = [v7 baseObject];
    [(MTLArgumentEncoder *)baseObject setArgumentBuffer:baseObject offset:offset];

    v14 = v28;
    *(v28 + 8) = -16061;
    v15 = BYTE9(v29);
    if (BYTE9(v29) > 0x28uLL)
    {
      v19 = *(*(&v27 + 1) + 24);
      v20 = BYTE10(v29);
      ++BYTE10(v29);
      v16 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x1800000000) + 16;
      v15 = v20;
    }

    else
    {
      v16 = (v14 + BYTE9(v29));
      BYTE9(v29) += 24;
    }

    *(v14 + 13) = v15;
    traceStream2 = [(CaptureMTLArgumentEncoder *)self traceStream];
    if (traceStream2)
    {
      var0 = traceStream2->var0;
    }

    else
    {
      var0 = 0;
    }

    traceStream3 = [v7 traceStream];
    if (traceStream3)
    {
      v24 = *traceStream3;
    }

    else
    {
      v24 = 0;
    }

    *v16 = var0;
    *(v16 + 1) = v24;
    *(v16 + 2) = offset;
    s();
    *v25 = v26;
    *(v25 + 8) = BYTE8(v29);
    *(v28 + 15) |= 8u;
  }

  else
  {
    v17 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLArgumentEncoder *)v17 setArgumentBuffer:baseObject2 offset:offset];
  }
}

- (CaptureMTLArgumentEncoder)initWithBaseObject:(id)object captureDevice:(id)device
{
  objectCopy = object;
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = CaptureMTLArgumentEncoder;
  v9 = [(CaptureMTLArgumentEncoder *)&v14 init];
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