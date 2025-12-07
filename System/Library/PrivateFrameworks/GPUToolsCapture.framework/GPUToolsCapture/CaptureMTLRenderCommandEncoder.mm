@interface CaptureMTLRenderCommandEncoder
- (BOOL)conformsToProtocol:(id)protocol;
- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer;
- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureParallelRenderCommandEncoder:(id)encoder;
- (NSString)description;
- (unint64_t)streamReference;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index withCondition:(int64_t)condition;
- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset;
- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset;
- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)insertDebugSignpost:(id)signpost;
- (void)insertSplit;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)setAlphaTestReferenceValue:(float)value;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert atIndex:(unint64_t)index;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthCleared;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level;
- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthStoreActionOptions:(unint64_t)options;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLabel:(id)label;
- (void)setLineWidth:(float)width;
- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index;
- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index;
- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setPointSize:(float)size;
- (void)setPrimitiveRestartEnabled:(BOOL)enabled;
- (void)setPrimitiveRestartEnabled:(BOOL)enabled index:(unint64_t)index;
- (void)setProvokingVertexMode:(unint64_t)mode;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilCleared;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level;
- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setStencilStoreActionOptions:(unint64_t)options;
- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride;
- (void)setTessellationFactorScale:(float)scale;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode;
- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewportTransformEnabled:(BOOL)enabled;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)touch;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResourceGroup:(id)group usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation CaptureMTLRenderCommandEncoder

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject waitForFence:baseObject beforeStages:stages];

  v10 = v22;
  *(v22 + 8) = -16125;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = stages;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  retainedObjects = self->_retainedObjects;
  resourcesCopy = resources;
  RetainArray(retainedObjects, resources, count);
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  v13 = 8 * count;
  __chkstk_darwin(v11);
  bzero(&v28 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    v14 = resourcesCopy;
    v15 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResources:&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage stages:stages];
  v18 = v31;
  *(v31 + 8) = -15818;
  v19 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v21 = *(*(&v30 + 1) + 24);
    v22 = BYTE10(v32);
    ++BYTE10(v32);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v31 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v25 = StreamArray(&v30, (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), resourcesCopy, count);
  *v20 = var0;
  *(v20 + 1) = count;
  *(v20 + 2) = usage;
  *(v20 + 3) = stages;
  v20[32] = v25;
  *(v20 + 33) = 0;
  *(v20 + 9) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  RetainArray(self->_retainedObjects, resources, count);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v9);
  bzero(&v26 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    resourcesCopy = resources;
    v13 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v15 = *resourcesCopy++;
      *v13++ = [v15 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResources:&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count usage:usage];
  v16 = v27;
  *(v27 + 8) = -16042;
  v17 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v19 = *(*(&v26 + 1) + 24);
    v20 = BYTE10(v28);
    ++BYTE10(v28);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v23 = StreamArray(&v26, (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), resources, count);
  *v18 = var0;
  *(v18 + 1) = count;
  *(v18 + 2) = usage;
  v18[24] = v23;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)useResourceGroup:(id)group usage:(unint64_t)usage stages:(unint64_t)stages
{
  groupCopy = group;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResourceGroup_usage_stages", "Resource groups", 0, 0);
  [groupCopy touch];
  v8 = groupCopy;
  if (groupCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:groupCopy];
      v8 = groupCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v8 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResourceGroup:baseObject usage:usage stages:stages];
}

- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages
{
  resourceCopy = resource;
  [resourceCopy touch];
  if (resourceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:resourceCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [resourceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResource:baseObject usage:usage stages:stages];

  v12 = v24;
  *(v24 + 8) = -15819;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [resourceCopy traceStream];
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
  *(v14 + 2) = usage;
  *(v14 + 3) = stages;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  resourceCopy = resource;
  [resourceCopy touch];
  if (resourceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:resourceCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [resourceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResource:baseObject usage:usage];

  v10 = v22;
  *(v22 + 8) = -16043;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [resourceCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = usage;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResidencySets_count", "Deprecated Residency Set API", 0, 0);
  RetainArray(self->_retainedObjects, sets, count);
  baseObject = self->_baseObject;
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9);
  if (count)
  {
    v11 = v10;
    countCopy = count;
    do
    {
      v13 = *sets++;
      *v11 = [v13 baseObject];
      v11 += 8;
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useResidencySets:v10 count:count];
}

- (void)useResidencySet:(id)set
{
  setCopy = set;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_useResidencySet", "Deprecated Residency Set API", 0, 0);
  [setCopy touch];
  v4 = setCopy;
  if (setCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:setCopy];
      v4 = setCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v4 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useResidencySet:baseObject];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  RetainArray(self->_retainedObjects, heaps, count);
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v9 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v11 = 8 * count;
  __chkstk_darwin(v9);
  bzero(&v26 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    heapsCopy = heaps;
    v13 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v15 = *heapsCopy++;
      *v13++ = [v15 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useHeaps:&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) count:count stages:stages];
  v16 = v27;
  *(v27 + 8) = -15820;
  v17 = BYTE9(v28);
  if (BYTE9(v28) > 0x20uLL)
  {
    v19 = *(*(&v26 + 1) + 24);
    v20 = BYTE10(v28);
    ++BYTE10(v28);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v27 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v28));
    BYTE9(v28) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v23 = StreamArray(&v26, (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)), heaps, count);
  *v18 = var0;
  *(v18 + 1) = count;
  *(v18 + 2) = stages;
  v18[24] = v23;
  *(v18 + 25) = 0;
  *(v18 + 7) = 0;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  RetainArray(self->_retainedObjects, heaps, count);
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v7 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v24);
  baseObject = self->_baseObject;
  v9 = 8 * count;
  __chkstk_darwin(v7);
  bzero(&v24 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  if (count)
  {
    heapsCopy = heaps;
    v11 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    countCopy = count;
    do
    {
      v13 = *heapsCopy++;
      *v11++ = [v13 baseObject];
      --countCopy;
    }

    while (countCopy);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject useHeaps:&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) count:count];
  v14 = v25;
  *(v25 + 8) = -16040;
  v15 = BYTE9(v26);
  if (BYTE9(v26) > 0x28uLL)
  {
    v17 = *(*(&v24 + 1) + 24);
    v18 = BYTE10(v26);
    ++BYTE10(v26);
    v16 = GTTraceMemPool_allocateBytes(v17, *(&v25 + 1), v18 | 0x1800000000) + 16;
    v15 = v18;
  }

  else
  {
    v16 = (v14 + BYTE9(v26));
    BYTE9(v26) += 24;
  }

  *(v14 + 13) = v15;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * count);
  v21 = StreamArray(&v24, (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), heaps, count);
  *v16 = var0;
  *(v16 + 1) = count;
  v16[16] = v21;
  *(v16 + 17) = 0;
  *(v16 + 5) = 0;
  s();
  *v22 = v23;
  *(v22 + 8) = BYTE8(v26);
  *(v25 + 15) |= 8u;
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  heapCopy = heap;
  [heapCopy touch];
  if (heapCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:heapCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [heapCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useHeap:baseObject stages:stages];

  v10 = v22;
  *(v22 + 8) = -15821;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [heapCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = stages;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)useHeap:(id)heap
{
  heapCopy = heap;
  [heapCopy touch];
  if (heapCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:heapCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [heapCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject useHeap:baseObject];

  v8 = v20;
  *(v20 + 8) = -16041;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [heapCopy traceStream];
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

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
{
  fenceCopy = fence;
  [fenceCopy touch];
  if (fenceCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:fenceCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [fenceCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject updateFence:baseObject afterStages:stages];

  v10 = v22;
  *(v22 + 8) = -16126;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [fenceCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = stages;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVisibilityResultMode:mode offset:offset];
  v7 = v17;
  *(v17 + 8) = -16252;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = mode;
  *(v9 + 2) = offset;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setViewports:viewports count:count];
  v7 = v18;
  *(v18 + 8) = -16077;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setViewportTransformEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setViewportTransformEnabled:enabledCopy];
  v5 = v15;
  *(v15 + 8) = -15720;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = enabledCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
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
  [(MTLRenderCommandEncoderSPI *)baseObject setViewport:v18];
  v7 = v20;
  *(v20 + 8) = -16270;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setVertexVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexVisibleFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15445;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setVertexVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexVisibleFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15446;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    texturesCopy = textures;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *texturesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexTextures:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16275;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexTexture:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16276;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    statesCopy = states;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerStates:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16273;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = statesCopy;
    v15 = (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  v18 = clampsCopy;
  maxClampsCopy = maxClamps;
  v20 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerStates:&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v21 = v36;
  *(v36 + 8) = -16271;
  v22 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v24 = *(*(&v35 + 1) + 24);
    v25 = BYTE10(v37);
    ++BYTE10(v37);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v36 + 1), v25 | 0x2000000000) + 16;
    v22 = v25;
    v18 = clampsCopy;
  }

  else
  {
    v23 = (v21 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v35, (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v29 = GTTraceEncoder_storeBytes(&v35, v18, 4 * length);
  v30 = GTTraceEncoder_storeBytes(&v35, maxClampsCopy, 4 * length);
  *v23 = var0;
  *(v23 + 1) = v20;
  *(v23 + 2) = length;
  v23[24] = v28;
  v23[25] = v29;
  v23[26] = v30;
  *(v23 + 27) = 0;
  v23[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  v12 = stateCopy;
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
      v12 = stateCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v12 baseObject];
  *&v16 = clamp;
  *&v17 = maxClamp;
  *&v18 = bias;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:baseObject lodMinClamp:index lodMaxClamp:v16 lodBias:v17 atIndex:v18];
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:baseObject lodMinClamp:index lodMaxClamp:v14 atIndex:v15];

  v16 = v28;
  *(v28 + 8) = -16272;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = index;
  *(v18 + 6) = clamp;
  *(v18 + 7) = maxClamp;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexSamplerState:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16274;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setVertexIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setVertexIntersectionFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15447;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setVertexIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexIntersectionFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15448;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBytes:bytes length:length attributeStride:stride atIndex:index];
  v11 = v22;
  *(v22 + 8) = -15272;
  v12 = BYTE9(v23);
  if (BYTE9(v23) > 0x18uLL)
  {
    v14 = *(*(&v21 + 1) + 24);
    v15 = BYTE10(v23);
    ++BYTE10(v23);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v22 + 1), v15 | 0x2800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v23));
    BYTE9(v23) += 40;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v18 = GTTraceEncoder_storeBlob(&v21, bytes, length);
  }

  else
  {
    v18 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = length;
  *(v13 + 2) = stride;
  *(v13 + 3) = index;
  v13[32] = v18;
  *(v13 + 33) = 0;
  *(v13 + 9) = 0;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBytes:bytes length:length atIndex:index];
  v9 = v20;
  *(v20 + 8) = -16225;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v16 = GTTraceEncoder_storeBlob(&v19, bytes, length);
  }

  else
  {
    v16 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = index;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  v12 = 8 * length;
  __chkstk_darwin(v10);
  bzero(&v29 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = buffersCopy;
    v14 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  offsetsCopy = offsets;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffers:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:location, length];
  v18 = v32;
  *(v32 + 8) = -16277;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x20uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 32;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v31, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v26 = GTTraceEncoder_storeBytes(&v31, offsetsCopy, 8 * length);
  *v20 = var0;
  *(v20 + 1) = location;
  *(v20 + 2) = length;
  v20[24] = v25;
  v20[25] = v26;
  *(v20 + 26) = 0;
  *(v20 + 15) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  offsetsCopy = offsets;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&offsetsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = buffersCopy;
    v15 = (&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  stridesCopy = strides;
  v19 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffers:&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy attributeStrides:strides withRange:location, length, offsetsCopy];
  v20 = v36;
  *(v36 + 8) = -15273;
  v21 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v23 = *(*(&v35 + 1) + 24);
    v24 = BYTE10(v37);
    ++BYTE10(v37);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v36 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v35, (&offsetsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v28 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v29 = GTTraceEncoder_storeBlob(&v35, offsetsCopy, length);
    v28 = boundaryTrackerInstance;
  }

  else
  {
    v29 = 0;
  }

  if ((*(v28 + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = GTTraceEncoder_storeBlob(&v35, stridesCopy, length);
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v29;
  v22[26] = v30;
  *(v22 + 27) = 0;
  v22[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBufferOffset:offset attributeStride:stride atIndex:index];
  v9 = v19;
  *(v19 + 8) = -15274;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = offset;
  *(v11 + 2) = stride;
  *(v11 + 3) = index;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setVertexBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexBufferOffset:offset atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16224;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = offset;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffer:baseObject offset:offset attributeStride:stride atIndex:index];

  v14 = v26;
  *(v26 + 8) = -15275;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setVertexBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -16278;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationMode:mode value:value];
  v7 = v17;
  *(v17 + 8) = -15812;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = mode;
  *(v9 + 2) = value;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTriangleFrontFillMode:mode backFillMode:fillMode];
  v7 = v17;
  *(v17 + 8) = -15721;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = mode;
  *(v9 + 2) = fillMode;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTriangleFillMode:mode];
  v5 = v15;
  *(v15 + 8) = -16264;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setTileVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileVisibleFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15450;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileVisibleFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15451;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    texturesCopy = textures;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *texturesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileTextures:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16086;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileTexture:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16140;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    statesCopy = states;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerStates:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16085;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = statesCopy;
    v15 = (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  v18 = clampsCopy;
  maxClampsCopy = maxClamps;
  v20 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerStates:&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v21 = v36;
  *(v36 + 8) = -16084;
  v22 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v24 = *(*(&v35 + 1) + 24);
    v25 = BYTE10(v37);
    ++BYTE10(v37);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v36 + 1), v25 | 0x2000000000) + 16;
    v22 = v25;
    v18 = clampsCopy;
  }

  else
  {
    v23 = (v21 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v35, (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v29 = GTTraceEncoder_storeBytes(&v35, v18, 4 * length);
  v30 = GTTraceEncoder_storeBytes(&v35, maxClampsCopy, 4 * length);
  *v23 = var0;
  *(v23 + 1) = v20;
  *(v23 + 2) = length;
  v23[24] = v28;
  v23[25] = v29;
  v23[26] = v30;
  *(v23 + 27) = 0;
  v23[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerState:baseObject lodMinClamp:index lodMaxClamp:v14 atIndex:v15];

  v16 = v28;
  *(v28 + 8) = -16138;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = index;
  *(v18 + 6) = clamp;
  *(v18 + 7) = maxClamp;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileSamplerState:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16139;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setTileIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setTileIntersectionFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15452;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileIntersectionFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15453;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTileBytes:bytes length:length atIndex:index];
  v9 = v20;
  *(v20 + 8) = -16143;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v16 = GTTraceEncoder_storeBlob(&v19, bytes, length);
  }

  else
  {
    v16 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = index;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v12 = 8 * length;
  __chkstk_darwin(v10);
  bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = buffersCopy;
    v14 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  offsetsCopy = offsets;
  offsetsCopy2 = offsets;
  v19 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setTileBuffers:&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy2 withRange:location, length];
  v20 = v34;
  *(v34 + 8) = -16087;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x20uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v33, (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v28 = GTTraceEncoder_storeBlob(&v33, offsetsCopy, length);
  }

  else
  {
    v28 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v28;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTileBufferOffset:offset atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16141;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = offset;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTileBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -16142;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setThreadgroupMemoryLength:length offset:offset atIndex:index];
  v9 = v19;
  *(v19 + 8) = -16074;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = offset;
  *(v11 + 3) = index;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)setTessellationFactorScale:(float)scale
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = scale;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setTessellationFactorScale:v5];
  v6 = v16;
  *(v16 + 8) = -16132;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = scale;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setTessellationFactorBuffer:baseObject offset:offset instanceStride:stride];

  v12 = v24;
  *(v24 + 8) = -16148;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  *(v14 + 3) = stride;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)setStencilStoreActionOptions:(unint64_t)options
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilStoreActionOptions:options];
  v5 = v15;
  *(v15 + 8) = -16020;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = options;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setStencilStoreAction:(unint64_t)action
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilStoreAction:action];
  v5 = v15;
  *(v15 + 8) = -16157;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = action;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert
{
  invertCopy = invert;
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setStencilResolveTexture:baseObject slice:slice depthPlane:plane level:level yInvert:invertCopy];

  v16 = v28;
  *(v28 + 8) = -15722;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x10uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x3000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 48;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = slice;
  *(v18 + 3) = plane;
  *(v18 + 4) = level;
  *(v18 + 10) = invertCopy;
  *(v18 + 11) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setStencilResolveTexture:baseObject slice:slice depthPlane:plane level:level];

  v14 = v26;
  *(v26 + 8) = -15723;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = slice;
  *(v16 + 3) = plane;
  *(v16 + 4) = level;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  v3 = *&value;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilReferenceValue:v3];
  v5 = v15;
  *(v15 + 8) = -16253;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilFrontReferenceValue:v5 backReferenceValue:v4];
  v7 = v17;
  *(v17 + 8) = -16219;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setStencilCleared
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setStencilCleared];
  v3 = v13;
  *(v13 + 8) = -15724;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setScissorRects:rects count:count];
  v7 = v18;
  *(v18 + 8) = -16076;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  [(MTLRenderCommandEncoderSPI *)baseObject setScissorRect:v17];
  v7 = v19;
  *(v19 + 8) = -16265;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setRenderPipelineState:baseObject];

  v8 = v20;
  *(v20 + 8) = -16279;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setProvokingVertexMode:(unint64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setProvokingVertexMode:mode];
  v5 = v15;
  *(v15 + 8) = -15725;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setPrimitiveRestartEnabled:(BOOL)enabled index:(unint64_t)index
{
  enabledCopy = enabled;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setPrimitiveRestartEnabled:enabledCopy index:index];
  v7 = v17;
  *(v17 + 8) = -15984;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = index;
  *(v9 + 4) = enabledCopy;
  *(v9 + 5) = 0;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setPrimitiveRestartEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setPrimitiveRestartEnabled:enabledCopy];
  v5 = v15;
  *(v15 + 8) = -15970;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 2) = enabledCopy;
  *(v7 + 3) = 0;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setPointSize:(float)size
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = size;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setPointSize:v5];
  v6 = v16;
  *(v16 + 8) = -15988;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = size;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setObjectVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTables_withBufferRange", "Mesh shaders with Function Pointers", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectVisibleFunctionTable_atBufferIndex", "Mesh shaders with Function Pointers", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectVisibleFunctionTable:baseObject atBufferIndex:index];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectThreadgroupMemoryLength:length atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15381;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    texturesCopy = textures;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *texturesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectTextures:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15382;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectTexture:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -15383;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    statesCopy = states;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerStates:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15384;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = statesCopy;
    v15 = (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  maxClampsCopy = maxClamps;
  v19 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerStates:&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v20 = v36;
  *(v36 + 8) = -15385;
  v21 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v23 = *(*(&v35 + 1) + 24);
    v24 = BYTE10(v37);
    ++BYTE10(v37);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v36 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v35, (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v28 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v29 = GTTraceEncoder_storeBlob(&v35, clampsCopy, length);
    v28 = boundaryTrackerInstance;
  }

  else
  {
    v29 = 0;
  }

  if ((*(v28 + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = GTTraceEncoder_storeBlob(&v35, maxClampsCopy, length);
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v29;
  v22[26] = v30;
  *(v22 + 27) = 0;
  v22[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerState:baseObject lodMinClamp:index lodMaxClamp:v14 atIndex:v15];

  v16 = v28;
  *(v28 + 8) = -15386;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = index;
  *(v18 + 6) = clamp;
  *(v18 + 7) = maxClamp;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectSamplerState:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -15387;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setObjectIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTables_withBufferRange", "Mesh shaders with Raytracing", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setObjectIntersectionFunctionTables:v11 withBufferRange:location, length];
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectIntersectionFunctionTable_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectIntersectionFunctionTable:baseObject atBufferIndex:index];
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectBytes:bytes length:length atIndex:index];
  v9 = v20;
  *(v20 + 8) = -15388;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v16 = GTTraceEncoder_storeBlob(&v19, bytes, length);
  }

  else
  {
    v16 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = index;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v12 = 8 * length;
  __chkstk_darwin(v10);
  bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = buffersCopy;
    v14 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  offsetsCopy = offsets;
  offsetsCopy2 = offsets;
  v19 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectBuffers:&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy2 withRange:location, length];
  v20 = v34;
  *(v34 + 8) = -15389;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x20uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v33, (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v28 = GTTraceEncoder_storeBlob(&v33, offsetsCopy, length);
  }

  else
  {
    v28 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v28;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setObjectBufferOffset:offset atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15390;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = offset;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15391;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setObjectAccelerationStructure_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [structureCopy touch];
  v6 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v6 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setObjectAccelerationStructure:baseObject atBufferIndex:index];
}

- (void)setMeshVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTables_withBufferRange", "Mesh shaders with Function Pointers", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshVisibleFunctionTables:v11 withBufferRange:location, length];
}

- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshVisibleFunctionTable_atBufferIndex", "Mesh shaders with Function Pointers", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshVisibleFunctionTable:baseObject atBufferIndex:index];
}

- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    texturesCopy = textures;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *texturesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshTextures:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15392;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshTexture:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -15393;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    statesCopy = states;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerStates:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15394;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = statesCopy;
    v15 = (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  maxClampsCopy = maxClamps;
  v19 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerStates:&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v20 = v36;
  *(v36 + 8) = -15395;
  v21 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v23 = *(*(&v35 + 1) + 24);
    v24 = BYTE10(v37);
    ++BYTE10(v37);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v36 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v35, (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v28 = boundaryTrackerInstance;
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v29 = GTTraceEncoder_storeBlob(&v35, clampsCopy, length);
    v28 = boundaryTrackerInstance;
  }

  else
  {
    v29 = 0;
  }

  if ((*(v28 + 20) & 0xFFFFFFFE) == 2)
  {
    v30 = GTTraceEncoder_storeBlob(&v35, maxClampsCopy, length);
  }

  else
  {
    v30 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v29;
  v22[26] = v30;
  *(v22 + 27) = 0;
  v22[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerState:baseObject lodMinClamp:index lodMaxClamp:v14 atIndex:v15];

  v16 = v28;
  *(v28 + 8) = -15396;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = index;
  *(v18 + 6) = clamp;
  *(v18 + 7) = maxClamp;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshSamplerState:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -15397;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setMeshIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTables_withBufferRange", "Mesh shaders with Raytracing", 0, 0);
  RetainArray(self->_retainedObjects, tables, length);
  baseObject = self->_baseObject;
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v10);
  if (length)
  {
    v12 = v11;
    v13 = length;
    do
    {
      v14 = *tables++;
      *v12 = [v14 baseObject];
      v12 += 8;
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setMeshIntersectionFunctionTables:v11 withBufferRange:location, length];
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshIntersectionFunctionTable_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [tableCopy touch];
  v6 = tableCopy;
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
      v6 = tableCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshIntersectionFunctionTable:baseObject atBufferIndex:index];
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setMeshBytes:bytes length:length atIndex:index];
  v9 = v20;
  *(v20 + 8) = -15398;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v16 = GTTraceEncoder_storeBlob(&v19, bytes, length);
  }

  else
  {
    v16 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = index;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v33);
  baseObject = self->_baseObject;
  v12 = 8 * length;
  __chkstk_darwin(v10);
  bzero(&v31 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = buffersCopy;
    v14 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  offsetsCopy = offsets;
  offsetsCopy2 = offsets;
  v19 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshBuffers:&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsetsCopy2 withRange:location, length];
  v20 = v34;
  *(v34 + 8) = -15399;
  v21 = BYTE9(v35);
  if (BYTE9(v35) > 0x20uLL)
  {
    v23 = *(*(&v33 + 1) + 24);
    v24 = BYTE10(v35);
    ++BYTE10(v35);
    v22 = GTTraceMemPool_allocateBytes(v23, *(&v34 + 1), v24 | 0x2000000000) + 16;
    v21 = v24;
  }

  else
  {
    v22 = (v20 + BYTE9(v35));
    BYTE9(v35) += 32;
  }

  *(v20 + 13) = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v27 = StreamArray(&v33, (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v28 = GTTraceEncoder_storeBlob(&v33, offsetsCopy, length);
  }

  else
  {
    v28 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = v19;
  *(v22 + 2) = length;
  v22[24] = v27;
  v22[25] = v28;
  *(v22 + 26) = 0;
  *(v22 + 15) = 0;
  s();
  *v29 = v30;
  *(v29 + 8) = BYTE8(v35);
  *(v34 + 15) |= 8u;
}

- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setMeshBufferOffset:offset atIndex:index];
  v7 = v17;
  *(v17 + 8) = -15400;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = offset;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -15401;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setMeshAccelerationStructure_atBufferIndex", "Mesh shaders with Raytracing", 0, 0);
  [structureCopy touch];
  v6 = structureCopy;
  if (structureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:structureCopy];
      v6 = structureCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v6 baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setMeshAccelerationStructure:baseObject atBufferIndex:index];
}

- (void)setLineWidth:(float)width
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = width;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setLineWidth:v5];
  v6 = v16;
  *(v16 + 8) = -16247;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = width;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFrontFacingWinding:winding];
  v5 = v15;
  *(v15 + 8) = -16269;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setFragmentVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentVisibleFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15455;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentVisibleFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15456;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, textures, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    texturesCopy = textures;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *texturesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTextures:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16260;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), textures, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  textureCopy = texture;
  stateCopy = state;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  [stateCopy touch];
  if (stateCopy)
  {
    v13 = self->_retainedObjects;
    if (v13)
    {
      [(NSMutableSet *)v13 addObject:stateCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  baseObject2 = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTexture:baseObject atTextureIndex:index samplerState:baseObject2 atSamplerIndex:samplerIndex];

  v17 = v31;
  *(v31 + 8) = -16214;
  v18 = BYTE9(v32);
  if (BYTE9(v32) > 0x18uLL)
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v19 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x2800000000) + 16;
    v18 = v21;
  }

  else
  {
    v19 = (v17 + BYTE9(v32));
    BYTE9(v32) += 40;
  }

  *(v17 + 13) = v18;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v25 = *traceStream2;
  }

  else
  {
    v25 = 0;
  }

  traceStream3 = [stateCopy traceStream];
  if (traceStream3)
  {
    v27 = *traceStream3;
  }

  else
  {
    v27 = 0;
  }

  *v19 = var0;
  *(v19 + 1) = v25;
  *(v19 + 2) = index;
  *(v19 + 3) = v27;
  *(v19 + 4) = samplerIndex;
  s();
  *v28 = v29;
  *(v28 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentTexture:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16261;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, states, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    statesCopy = states;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *statesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerStates:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withRange:location, length];
  v15 = v26;
  *(v26 + 8) = -16258;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), states, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  clampsCopy = clamps;
  retainedObjects = self->_retainedObjects;
  statesCopy = states;
  RetainArray(retainedObjects, states, range.length);
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v11 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v35);
  baseObject = self->_baseObject;
  v13 = 8 * length;
  __chkstk_darwin(v11);
  bzero(&clampsCopy - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v14 = statesCopy;
    v15 = (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = length;
    do
    {
      v17 = *v14++;
      *v15++ = [v17 baseObject];
      --v16;
    }

    while (v16);
  }

  v18 = clampsCopy;
  maxClampsCopy = maxClamps;
  v20 = location;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerStates:&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0) lodMinClamps:clampsCopy lodMaxClamps:maxClamps withRange:location, length, clampsCopy];
  v21 = v36;
  *(v36 + 8) = -16256;
  v22 = BYTE9(v37);
  if (BYTE9(v37) > 0x20uLL)
  {
    v24 = *(*(&v35 + 1) + 24);
    v25 = BYTE10(v37);
    ++BYTE10(v37);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v36 + 1), v25 | 0x2000000000) + 16;
    v22 = v25;
    v18 = clampsCopy;
  }

  else
  {
    v23 = (v21 + BYTE9(v37));
    BYTE9(v37) += 32;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v28 = StreamArray(&v35, (&clampsCopy - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0)), statesCopy, length);
  v29 = GTTraceEncoder_storeBytes(&v35, v18, 4 * length);
  v30 = GTTraceEncoder_storeBytes(&v35, maxClampsCopy, 4 * length);
  *v23 = var0;
  *(v23 + 1) = v20;
  *(v23 + 2) = length;
  v23[24] = v28;
  v23[25] = v29;
  v23[26] = v30;
  *(v23 + 27) = 0;
  v23[31] = 0;
  s();
  *v31 = v32;
  *(v31 + 8) = BYTE8(v37);
  *(v36 + 15) |= 8u;
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  v12 = stateCopy;
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
      v12 = stateCopy;
    }
  }

  baseObject = self->_baseObject;
  baseObject = [v12 baseObject];
  *&v16 = clamp;
  *&v17 = maxClamp;
  *&v18 = bias;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:baseObject lodMinClamp:index lodMaxClamp:v16 lodBias:v17 atIndex:v18];
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:baseObject lodMinClamp:index lodMaxClamp:v14 atIndex:v15];

  v16 = v28;
  *(v28 + 8) = -16257;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x20uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x2000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 32;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = index;
  *(v18 + 6) = clamp;
  *(v18 + 7) = maxClamp;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentSamplerState:baseObject atIndex:index];

  v10 = v22;
  *(v22 + 8) = -16259;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setFragmentIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  RetainArray(self->_retainedObjects, tables, range.length);
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v8 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  v10 = 8 * length;
  __chkstk_darwin(v8);
  bzero(&v25 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    tablesCopy = tables;
    v12 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = length;
    do
    {
      v14 = *tablesCopy++;
      *v12++ = [v14 baseObject];
      --v13;
    }

    while (v13);
  }

  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentIntersectionFunctionTables:&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) withBufferRange:location, length];
  v15 = v26;
  *(v26 + 8) = -15457;
  v16 = BYTE9(v27);
  if (BYTE9(v27) > 0x20uLL)
  {
    v18 = *(*(&v25 + 1) + 24);
    v19 = BYTE10(v27);
    ++BYTE10(v27);
    v17 = GTTraceMemPool_allocateBytes(v18, *(&v26 + 1), v19 | 0x2000000000) + 16;
    v16 = v19;
  }

  else
  {
    v17 = (v15 + BYTE9(v27));
    BYTE9(v27) += 32;
  }

  *(v15 + 13) = v16;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v22 = StreamArray(&v25, (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)), tables, length);
  *v17 = var0;
  *(v17 + 1) = location;
  *(v17 + 2) = length;
  v17[24] = v22;
  *(v17 + 25) = 0;
  *(v17 + 7) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  tableCopy = table;
  [tableCopy touch];
  if (tableCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:tableCopy];
    }
  }

  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  baseObject = self->_baseObject;
  baseObject = [tableCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentIntersectionFunctionTable:baseObject atBufferIndex:index];

  v10 = v22;
  *(v22 + 8) = -15458;
  v11 = BYTE9(v23);
  if (BYTE9(v23) > 0x28uLL)
  {
    v13 = *(*(&v21 + 1) + 24);
    v14 = BYTE10(v23);
    ++BYTE10(v23);
    v12 = GTTraceMemPool_allocateBytes(v13, *(&v22 + 1), v14 | 0x1800000000) + 16;
    v11 = v14;
  }

  else
  {
    v12 = (v10 + BYTE9(v23));
    BYTE9(v23) += 24;
  }

  *(v10 + 13) = v11;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  traceStream2 = [tableCopy traceStream];
  if (traceStream2)
  {
    v18 = *traceStream2;
  }

  else
  {
    v18 = 0;
  }

  *v12 = var0;
  *(v12 + 1) = v18;
  *(v12 + 2) = index;
  s();
  *v19 = v20;
  *(v19 + 8) = BYTE8(v23);
  *(v22 + 15) |= 8u;
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFragmentBytes:bytes length:length atIndex:index];
  v9 = v20;
  *(v20 + 8) = -16223;
  v10 = BYTE9(v21);
  if (BYTE9(v21) > 0x20uLL)
  {
    v12 = *(*(&v19 + 1) + 24);
    v13 = BYTE10(v21);
    ++BYTE10(v21);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v20 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v21));
    BYTE9(v21) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  if ((*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2)
  {
    v16 = GTTraceEncoder_storeBlob(&v19, bytes, length);
  }

  else
  {
    v16 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = length;
  *(v11 + 2) = index;
  v11[24] = v16;
  *(v11 + 25) = 0;
  *(v11 + 7) = 0;
  s();
  *v17 = v18;
  *(v17 + 8) = BYTE8(v21);
  *(v20 + 15) |= 8u;
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  retainedObjects = self->_retainedObjects;
  buffersCopy = buffers;
  RetainArray(retainedObjects, buffers, range.length);
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v31);
  baseObject = self->_baseObject;
  v12 = 8 * length;
  __chkstk_darwin(v10);
  bzero(&v29 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  if (length)
  {
    v13 = buffersCopy;
    v14 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = length;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  offsetsCopy = offsets;
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentBuffers:&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) offsets:offsets withRange:location, length];
  v18 = v32;
  *(v32 + 8) = -16262;
  v19 = BYTE9(v33);
  if (BYTE9(v33) > 0x20uLL)
  {
    v21 = *(*(&v31 + 1) + 24);
    v22 = BYTE10(v33);
    ++BYTE10(v33);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v32 + 1), v22 | 0x2000000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v33));
    BYTE9(v33) += 32;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * length);
  v25 = StreamArray(&v31, (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), buffersCopy, length);
  v26 = GTTraceEncoder_storeBytes(&v31, offsetsCopy, 8 * length);
  *v20 = var0;
  *(v20 + 1) = location;
  *(v20 + 2) = length;
  v20[24] = v25;
  v20[25] = v26;
  *(v20 + 26) = 0;
  *(v20 + 15) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v33);
  *(v32 + 15) |= 8u;
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setFragmentBufferOffset:offset atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16222;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = offset;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setFragmentBuffer:baseObject offset:offset atIndex:index];

  v12 = v24;
  *(v24 + 8) = -16263;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthTestMinBound:v7 maxBound:v8];
  v9 = v19;
  *(v19 + 8) = -14914;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setDepthStoreActionOptions:(unint64_t)options
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthStoreActionOptions:options];
  v5 = v15;
  *(v15 + 8) = -16021;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = options;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setDepthStoreAction:(unint64_t)action
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthStoreAction:action];
  v5 = v15;
  *(v15 + 8) = -16158;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v7 = var0;
  *(v7 + 1) = action;
  s();
  *v12 = v13;
  *(v12 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
}

- (void)setDepthStencilState:(id)state
{
  stateCopy = state;
  [stateCopy touch];
  if (stateCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:stateCopy];
    }
  }

  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v19);
  baseObject = self->_baseObject;
  baseObject = [stateCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthStencilState:baseObject];

  v8 = v20;
  *(v20 + 8) = -16254;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert
{
  invertCopy = invert;
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthResolveTexture:baseObject slice:slice depthPlane:plane level:level yInvert:invertCopy];

  v16 = v28;
  *(v28 + 8) = -15726;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x10uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x3000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 48;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = slice;
  *(v18 + 3) = plane;
  *(v18 + 4) = level;
  *(v18 + 10) = invertCopy;
  *(v18 + 11) = 0;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v25);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setDepthResolveTexture:baseObject slice:slice depthPlane:plane level:level];

  v14 = v26;
  *(v26 + 8) = -16155;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v22 = *traceStream2;
  }

  else
  {
    v22 = 0;
  }

  *v16 = var0;
  *(v16 + 1) = v22;
  *(v16 + 2) = slice;
  *(v16 + 3) = plane;
  *(v16 + 4) = level;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v27);
  *(v26 + 15) |= 8u;
}

- (void)setDepthClipMode:(unint64_t)mode
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthClipMode:mode];
  v5 = v15;
  *(v15 + 8) = -16267;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setDepthCleared
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthCleared];
  v3 = v13;
  *(v13 + 8) = -15727;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v21);
  *&v9 = bias;
  *&v10 = scale;
  *&v11 = clamp;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setDepthBias:v9 slopeScale:v10 clamp:v11];
  v12 = v22;
  *(v22 + 8) = -16266;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setCullMode:mode];
  v5 = v15;
  *(v15 + 8) = -16268;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorStoreActionOptions:options atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16022;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = options;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorStoreAction:action atIndex:index];
  v7 = v17;
  *(v17 + 8) = -16159;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = action;
  *(v9 + 2) = index;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert atIndex:(unint64_t)index
{
  invertCopy = invert;
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setColorResolveTexture:baseObject slice:slice depthPlane:plane level:level yInvert:invertCopy atIndex:index];

  v18 = v30;
  *(v30 + 8) = -15728;
  v19 = BYTE9(v31);
  if (BYTE9(v31) > 8uLL)
  {
    v21 = *(*(&v29 + 1) + 24);
    v22 = BYTE10(v31);
    ++BYTE10(v31);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x3800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v31));
    BYTE9(v31) += 56;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = v26;
  *(v20 + 2) = slice;
  *(v20 + 3) = plane;
  *(v20 + 4) = level;
  *(v20 + 5) = index;
  *(v20 + 12) = invertCopy;
  *(v20 + 13) = 0;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index
{
  textureCopy = texture;
  [textureCopy touch];
  if (textureCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:textureCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [textureCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject setColorResolveTexture:baseObject slice:slice depthPlane:plane level:level atIndex:index];

  v16 = v28;
  *(v28 + 8) = -16156;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x10uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x3000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 48;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = v24;
  *(v18 + 2) = slice;
  *(v18 + 3) = plane;
  *(v18 + 4) = level;
  *(v18 + 5) = index;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)setColorAttachmentMap:(id)map
{
  mapCopy = map;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v22);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setColorAttachmentMap:mapCopy];
  v5 = v23;
  *(v23 + 8) = -14849;
  v6 = BYTE9(v24);
  if (BYTE9(v24) > 0x30uLL)
  {
    v8 = *(*(&v22 + 1) + 24);
    v9 = BYTE10(v24);
    ++BYTE10(v24);
    v7 = GTTraceMemPool_allocateBytes(v8, *(&v23 + 1), v9 | 0x1000000000) + 16;
    v6 = v9;
  }

  else
  {
    v7 = (v5 + BYTE9(v24));
    BYTE9(v24) += 16;
  }

  *(v5 + 13) = v6;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (mapCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = -1;
    v16 = -1;
    v14 = -1;
    v12 = -1;
    v13 = -1;
    v15 = -1;
    v17 = -1;
    v19 = -1;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!mapCopy)
  {
    goto LABEL_8;
  }

LABEL_6:
  v12 = [mapCopy getPhysicalIndexForLogicalIndex:0];
  v13 = [mapCopy getPhysicalIndexForLogicalIndex:1];
  v14 = [mapCopy getPhysicalIndexForLogicalIndex:2];
  v15 = [mapCopy getPhysicalIndexForLogicalIndex:3];
  v16 = [mapCopy getPhysicalIndexForLogicalIndex:4];
  v17 = [mapCopy getPhysicalIndexForLogicalIndex:5];
  v18 = [mapCopy getPhysicalIndexForLogicalIndex:6];
  v19 = [mapCopy getPhysicalIndexForLogicalIndex:7];
LABEL_9:
  *v7 = var0;
  v7[8] = v12;
  v7[9] = v13;
  v7[10] = v14;
  v7[11] = v15;
  v7[12] = v16;
  v7[13] = v17;
  v7[14] = v18;
  v7[15] = v19;
  s();
  *v20 = v21;
  *(v20 + 8) = BYTE8(v24);
  *(v23 + 15) |= 8u;
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
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setBlendColorRed:v11 green:v12 blue:v13 alpha:v14];
  v15 = v25;
  *(v25 + 8) = -16255;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)setAlphaTestReferenceValue:(float)value
{
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v15);
  *&v5 = value;
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setAlphaTestReferenceValue:v5];
  v6 = v16;
  *(v16 + 8) = -15729;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v8 = var0;
  *(v8 + 2) = value;
  *(v8 + 3) = 0;
  s();
  *v13 = v14;
  *(v13 + 8) = BYTE8(v17);
  *(v16 + 15) |= 8u;
}

- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier
{
  barrierCopy = barrier;
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject sampleCountersInBuffer:baseObject atSampleIndex:index withBarrier:barrierCopy];

  v12 = v24;
  *(v24 + 8) = -15750;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  *(v14 + 2) = index;
  *(v14 + 6) = barrierCopy;
  *(v14 + 7) = 0;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)pushDebugGroup:(id)group
{
  groupCopy = group;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject pushDebugGroup:groupCopy];
  v5 = v18;
  *(v18 + 8) = -16244;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [groupCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [groupCopy UTF8String];
    v14 = strlen([groupCopy UTF8String]);
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

- (void)popDebugGroup
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject popDebugGroup];
  v3 = v13;
  *(v13 + 8) = -16243;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject memoryBarrierWithScope:scope afterStages:stages beforeStages:beforeStages];
  v9 = v19;
  *(v19 + 8) = -16004;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = scope;
  *(v11 + 2) = stages;
  *(v11 + 3) = beforeStages;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
  if (stages == 1 && beforeStages == 1)
  {
    CaptureClearFuncSnapshot(scope, self->_snapshotMap);
  }
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  stagesCopy = stages;
  countCopy = count;
  resourcesCopy = resources;
  RetainArray(self->_retainedObjects, resources, count);
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v10 = GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = self->_baseObject;
  v12 = 8 * countCopy;
  __chkstk_darwin(v10);
  bzero(&v30 - ((8 * countCopy + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  if (countCopy)
  {
    v13 = resourcesCopy;
    v14 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = countCopy;
    do
    {
      v16 = *v13++;
      *v14++ = [v16 baseObject];
      --v15;
    }

    while (v15);
  }

  v17 = stagesCopy;
  [(MTLRenderCommandEncoderSPI *)baseObject memoryBarrierWithResources:&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) count:countCopy afterStages:stagesCopy beforeStages:beforeStages];
  v18 = v33;
  *(v33 + 8) = -16003;
  v19 = BYTE9(v34);
  if (BYTE9(v34) > 0x18uLL)
  {
    v21 = *(*(&v32 + 1) + 24);
    v22 = BYTE10(v34);
    ++BYTE10(v34);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v33 + 1), v22 | 0x2800000000) + 16;
    v19 = v22;
    v17 = stagesCopy;
  }

  else
  {
    v20 = (v18 + BYTE9(v34));
    BYTE9(v34) += 40;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  __chkstk_darwin(traceStream);
  bzero(&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * countCopy);
  v25 = StreamArray(&v32, (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0)), resourcesCopy, countCopy);
  *v20 = var0;
  *(v20 + 1) = countCopy;
  *(v20 + 2) = v17;
  *(v20 + 3) = beforeStages;
  v20[32] = v25;
  *(v20 + 33) = 0;
  *(v20 + 9) = 0;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
  if (countCopy)
  {
    v29 = v17 == 1 && beforeStages == 1;
    do
    {
      if (v29)
      {
        CaptureRemoveFuncSnapshot(*resourcesCopy, self->_snapshotMap);
      }

      ++resourcesCopy;
      --countCopy;
    }

    while (countCopy);
  }
}

- (void)insertSplit
{
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_insertSplit", "Command Encoder Insert Split", 0, 0);
  baseObject = self->_baseObject;

  [(MTLRenderCommandEncoderSPI *)baseObject insertSplit];
}

- (void)insertDebugSignpost:(id)signpost
{
  signpostCopy = signpost;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject insertDebugSignpost:signpostCopy];
  v5 = v18;
  *(v18 + 8) = -16245;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  uTF8String = [signpostCopy UTF8String];
  if (uTF8String)
  {
    uTF8String2 = [signpostCopy UTF8String];
    v14 = strlen([signpostCopy UTF8String]);
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

- (void)endEncoding
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v12);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject endEncoding];
  v3 = v13;
  *(v13 + 8) = -16246;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
  v13 = v23;
  *(v23 + 8) = -16218;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v20);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
  v11 = v21;
  *(v21 + 8) = -16251;
  v12 = BYTE9(v22);
  if (BYTE9(v22) > 0x18uLL)
  {
    v14 = *(*(&v20 + 1) + 24);
    v15 = BYTE10(v22);
    ++BYTE10(v22);
    v13 = GTTraceMemPool_allocateBytes(v14, *(&v21 + 1), v15 | 0x2800000000) + 16;
    v12 = v15;
  }

  else
  {
    v13 = (v11 + BYTE9(v22));
    BYTE9(v22) += 40;
  }

  *(v11 + 13) = v12;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v13 = var0;
  *(v13 + 1) = primitives;
  *(v13 + 2) = start;
  *(v13 + 3) = count;
  *(v13 + 4) = instanceCount;
  s();
  *v18 = v19;
  *(v18 + 8) = BYTE8(v22);
  *(v21 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v18);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
  v9 = v19;
  *(v19 + 8) = -16250;
  v10 = BYTE9(v20);
  if (BYTE9(v20) > 0x20uLL)
  {
    v12 = *(*(&v18 + 1) + 24);
    v13 = BYTE10(v20);
    ++BYTE10(v20);
    v11 = GTTraceMemPool_allocateBytes(v12, *(&v19 + 1), v13 | 0x2000000000) + 16;
    v10 = v13;
  }

  else
  {
    v11 = (v9 + BYTE9(v20));
    BYTE9(v20) += 32;
  }

  *(v9 + 13) = v10;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v11 = var0;
  *(v11 + 1) = primitives;
  *(v11 + 2) = start;
  *(v11 + 3) = count;
  s();
  *v16 = v17;
  *(v16 + 8) = BYTE8(v20);
  *(v19 + 15) |= 8u;
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v23);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawPrimitives:primitives indirectBuffer:baseObject indirectBufferOffset:offset];

  v12 = v24;
  *(v24 + 8) = -16216;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  *(v14 + 1) = primitives;
  *(v14 + 2) = v20;
  *(v14 + 3) = offset;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v25);
  *(v24 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v30);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  instanceCountCopy = instanceCount;
  [(MTLRenderCommandEncoderSPI *)baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:instance];

  v19 = v31;
  *(v31 + 8) = -16147;
  if (BYTE9(v32))
  {
    v20 = *(*(&v30 + 1) + 24);
    v21 = BYTE10(v32);
    ++BYTE10(v32);
    v22 = GTTraceMemPool_allocateBytes(v20, *(&v31 + 1), v21 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v21) = 0;
    BYTE9(v32) = 64;
    v22 = v19;
  }

  v19[13] = v21;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  *v22 = var0;
  *(v22 + 1) = patches;
  *(v22 + 2) = start;
  *(v22 + 3) = count;
  *(v22 + 4) = v26;
  *(v22 + 5) = offset;
  *(v22 + 6) = instanceCountCopy;
  *(v22 + 7) = instance;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v32);
  *(v31 + 15) |= 8u;
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indirectBufferCopy touch];
  if (indirectBufferCopy)
  {
    v15 = self->_retainedObjects;
    if (v15)
    {
      [(NSMutableSet *)v15 addObject:indirectBufferCopy];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indirectBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawPatches:patches patchIndexBuffer:baseObject patchIndexBufferOffset:offset indirectBuffer:baseObject2 indirectBufferOffset:bufferOffset];

  v19 = v33;
  *(v33 + 8) = -16146;
  v20 = BYTE9(v34);
  if (BYTE9(v34) > 0x10uLL)
  {
    v22 = *(*(&v32 + 1) + 24);
    v23 = BYTE10(v34);
    ++BYTE10(v34);
    v21 = GTTraceMemPool_allocateBytes(v22, *(&v33 + 1), v23 | 0x3000000000) + 16;
    v20 = v23;
  }

  else
  {
    v21 = (v19 + BYTE9(v34));
    BYTE9(v34) += 48;
  }

  *(v19 + 13) = v20;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

  traceStream3 = [indirectBufferCopy traceStream];
  if (traceStream3)
  {
    v29 = *traceStream3;
  }

  else
  {
    v29 = 0;
  }

  *v21 = var0;
  *(v21 + 1) = patches;
  *(v21 + 2) = v27;
  *(v21 + 3) = offset;
  *(v21 + 4) = v29;
  *(v21 + 5) = bufferOffset;
  s();
  *v30 = v31;
  *(v30 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
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
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreads:&v26 threadsPerObjectThreadgroup:&v25 threadsPerMeshThreadgroup:&v24];
  v10 = *(&v27 + 1);
  v11 = v28;
  *(v28 + 8) = -15414;
  v12 = *(v10 + 24);
  v13 = BYTE10(v29);
  ++BYTE10(v29);
  Bytes = GTTraceMemPool_allocateBytes(v12, *(&v28 + 1), v13 | 0x5000000000);
  *(v11 + 13) = v13;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v32);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  v30 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v28 = *&meshThreadgroup->var0;
  v29 = meshThreadgroup->var2;
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreadgroupsWithIndirectBuffer:baseObject indirectBufferOffset:offset threadsPerObjectThreadgroup:&v30 threadsPerMeshThreadgroup:&v28];

  v14 = *(&v32 + 1);
  v15 = v33;
  *(v33 + 8) = -15415;
  v16 = *(v14 + 24);
  v17 = BYTE10(v34);
  ++BYTE10(v34);
  Bytes = GTTraceMemPool_allocateBytes(v16, *(&v33 + 1), v17 | 0x4800000000);
  *(v15 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

  v23 = threadgroup->var2;
  v24 = meshThreadgroup->var2;
  *(Bytes + 2) = var0;
  *(Bytes + 3) = v22;
  *(Bytes + 4) = offset;
  v25 = *&meshThreadgroup->var0;
  *(Bytes + 40) = *&threadgroup->var0;
  *(Bytes + 7) = v23;
  *(Bytes + 4) = v25;
  *(Bytes + 10) = v24;
  s();
  *v26 = v27;
  *(v26 + 8) = BYTE8(v34);
  *(v33 + 15) |= 8u;
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
  [(MTLRenderCommandEncoderSPI *)baseObject drawMeshThreadgroups:&v26 threadsPerObjectThreadgroup:&v25 threadsPerMeshThreadgroup:&v24];
  v10 = *(&v27 + 1);
  v11 = v28;
  *(v28 + 8) = -15416;
  v12 = *(v10 + 24);
  v13 = BYTE10(v29);
  ++BYTE10(v29);
  Bytes = GTTraceMemPool_allocateBytes(v12, *(&v28 + 1), v13 | 0x5000000000);
  *(v11 + 13) = v13;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indirectBufferCopy touch];
  if (indirectBufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:indirectBufferCopy];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indirectBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexType:type indexBuffer:baseObject indexBufferOffset:offset indirectBuffer:baseObject2 indirectBufferOffset:bufferOffset];

  v21 = v35;
  *(v35 + 8) = -16215;
  v22 = BYTE9(v36);
  if (BYTE9(v36) > 8uLL)
  {
    v24 = *(*(&v34 + 1) + 24);
    v25 = BYTE10(v36);
    ++BYTE10(v36);
    v23 = GTTraceMemPool_allocateBytes(v24, *(&v35 + 1), v25 | 0x3800000000) + 16;
    v22 = v25;
  }

  else
  {
    v23 = (v21 + BYTE9(v36));
    BYTE9(v36) += 56;
  }

  *(v21 + 13) = v22;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v29 = *traceStream2;
  }

  else
  {
    v29 = 0;
  }

  traceStream3 = [indirectBufferCopy traceStream];
  if (traceStream3)
  {
    v31 = *traceStream3;
  }

  else
  {
    v31 = 0;
  }

  *v23 = var0;
  *(v23 + 1) = primitives;
  *(v23 + 2) = type;
  *(v23 + 3) = v29;
  *(v23 + 4) = offset;
  *(v23 + 5) = v31;
  *(v23 + 6) = bufferOffset;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v34);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  offsetCopy = offset;
  offsetCopy2 = offset;
  instanceCountCopy = instanceCount;
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offsetCopy2 instanceCount:instanceCount baseVertex:vertex baseInstance:instance];

  v23 = *(&v34 + 1);
  v24 = v35;
  *(v35 + 8) = -16217;
  v25 = *(v23 + 24);
  v26 = BYTE10(v36);
  ++BYTE10(v36);
  Bytes = GTTraceMemPool_allocateBytes(v25, *(&v35 + 1), v26 | 0x4800000000);
  *(v24 + 13) = v26;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v31 = *traceStream2;
  }

  else
  {
    v31 = 0;
  }

  *(Bytes + 2) = var0;
  *(Bytes + 3) = primitives;
  *(Bytes + 4) = count;
  *(Bytes + 5) = type;
  *(Bytes + 6) = v31;
  *(Bytes + 7) = offsetCopy;
  *(Bytes + 8) = instanceCountCopy;
  *(Bytes + 9) = vertex;
  *(Bytes + 10) = instance;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v36);
  *(v35 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v29);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offset instanceCount:instanceCount];

  v18 = v30;
  *(v30 + 8) = -16249;
  v19 = BYTE9(v31);
  if (BYTE9(v31) > 8uLL)
  {
    v21 = *(*(&v29 + 1) + 24);
    v22 = BYTE10(v31);
    ++BYTE10(v31);
    v20 = GTTraceMemPool_allocateBytes(v21, *(&v30 + 1), v22 | 0x3800000000) + 16;
    v19 = v22;
  }

  else
  {
    v20 = (v18 + BYTE9(v31));
    BYTE9(v31) += 56;
  }

  *(v18 + 13) = v19;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v26 = *traceStream2;
  }

  else
  {
    v26 = 0;
  }

  *v20 = var0;
  *(v20 + 1) = primitives;
  *(v20 + 2) = count;
  *(v20 + 3) = type;
  *(v20 + 4) = v26;
  *(v20 + 5) = offset;
  *(v20 + 6) = instanceCount;
  s();
  *v27 = v28;
  *(v27 + 8) = BYTE8(v31);
  *(v30 + 15) |= 8u;
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v27);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject indexBufferOffset:offset];

  v16 = v28;
  *(v28 + 8) = -16248;
  v17 = BYTE9(v29);
  if (BYTE9(v29) > 0x10uLL)
  {
    v19 = *(*(&v27 + 1) + 24);
    v20 = BYTE10(v29);
    ++BYTE10(v29);
    v18 = GTTraceMemPool_allocateBytes(v19, *(&v28 + 1), v20 | 0x3000000000) + 16;
    v17 = v20;
  }

  else
  {
    v18 = (v16 + BYTE9(v29));
    BYTE9(v29) += 48;
  }

  *(v16 + 13) = v17;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v24 = *traceStream2;
  }

  else
  {
    v24 = 0;
  }

  *v18 = var0;
  *(v18 + 1) = primitives;
  *(v18 + 2) = count;
  *(v18 + 3) = type;
  *(v18 + 4) = v24;
  *(v18 + 5) = offset;
  s();
  *v25 = v26;
  *(v25 + 8) = BYTE8(v29);
  *(v28 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  bufferCopy = buffer;
  indexBufferCopy = indexBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indexBufferCopy touch];
  if (indexBufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:indexBufferCopy];
    }
  }

  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v37);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indexBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject2 controlPointIndexBufferOffset:bufferOffset instanceCount:instanceCount baseInstance:instance];

  v21 = *(&v37 + 1);
  v22 = v38;
  *(v38 + 8) = -16145;
  v23 = *(v21 + 24);
  v24 = BYTE10(v39);
  ++BYTE10(v39);
  Bytes = GTTraceMemPool_allocateBytes(v23, *(&v38 + 1), v24 | 0x5000000000);
  *(v22 + 13) = v24;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v29 = *traceStream2;
  }

  else
  {
    v29 = 0;
  }

  traceStream3 = [indexBufferCopy traceStream];
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
  *(Bytes + 6) = v29;
  *(Bytes + 7) = offset;
  *(Bytes + 8) = v31;
  *(Bytes + 9) = bufferOffset;
  *(Bytes + 10) = instanceCount;
  *(Bytes + 11) = instance;
  s();
  *v32 = v33;
  *(v32 + 8) = BYTE8(v39);
  *(v38 + 15) |= 8u;
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  bufferCopy = buffer;
  indexBufferCopy = indexBuffer;
  indirectBufferCopy = indirectBuffer;
  [bufferCopy touch];
  if (bufferCopy)
  {
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:bufferCopy];
    }
  }

  [indexBufferCopy touch];
  if (indexBufferCopy)
  {
    v17 = self->_retainedObjects;
    if (v17)
    {
      [(NSMutableSet *)v17 addObject:indexBufferCopy];
    }
  }

  [indirectBufferCopy touch];
  if (indirectBufferCopy)
  {
    v18 = self->_retainedObjects;
    if (v18)
    {
      [(NSMutableSet *)v18 addObject:indirectBufferCopy];
    }
  }

  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v39);
  baseObject = self->_baseObject;
  baseObject = [bufferCopy baseObject];
  baseObject2 = [indexBufferCopy baseObject];
  baseObject3 = [indirectBufferCopy baseObject];
  [(MTLRenderCommandEncoderSPI *)baseObject drawIndexedPatches:patches patchIndexBuffer:baseObject patchIndexBufferOffset:offset controlPointIndexBuffer:baseObject2 controlPointIndexBufferOffset:bufferOffset indirectBuffer:baseObject3 indirectBufferOffset:indirectBufferOffset];

  v23 = v40;
  *(v40 + 8) = -16144;
  if (BYTE9(v41))
  {
    v24 = *(*(&v39 + 1) + 24);
    v25 = BYTE10(v41);
    ++BYTE10(v41);
    v26 = GTTraceMemPool_allocateBytes(v24, *(&v40 + 1), v25 | 0x4000000000) + 16;
  }

  else
  {
    LOBYTE(v25) = 0;
    BYTE9(v41) = 64;
    v26 = v23;
  }

  v23[13] = v25;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v30 = *traceStream2;
  }

  else
  {
    v30 = 0;
  }

  traceStream3 = [indexBufferCopy traceStream];
  if (traceStream3)
  {
    v32 = *traceStream3;
  }

  else
  {
    v32 = 0;
  }

  traceStream4 = [indirectBufferCopy traceStream];
  if (traceStream4)
  {
    v34 = *traceStream4;
  }

  else
  {
    v34 = 0;
  }

  *v26 = var0;
  *(v26 + 1) = patches;
  *(v26 + 2) = v30;
  *(v26 + 3) = offset;
  *(v26 + 4) = v32;
  *(v26 + 5) = bufferOffset;
  *(v26 + 6) = v34;
  *(v26 + 7) = indirectBufferOffset;
  s();
  *v35 = v36;
  *(v35 + 8) = BYTE8(v41);
  *(v40 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index withCondition:(int64_t)condition
{
  v7 = *&index;
  GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex_withCondition", "Conditional Tile Dispatch", 0, 0);
  baseObject = self->_baseObject;
  v12 = *&tile->var0;
  var2 = tile->var2;
  v13 = *&region->var0.var2;
  v14[0] = *&region->var0.var0;
  v14[1] = v13;
  v14[2] = *&region->var1.var1;
  v15 = v12;
  [(MTLRenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v15 inRegion:v14 withRenderTargetArrayIndex:v7 withCondition:condition];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index
{
  v5 = *&index;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v28);
  baseObject = self->_baseObject;
  v10 = *&tile->var0;
  var2 = tile->var2;
  v11 = *&region->var0.var2;
  v25[0] = *&region->var0.var0;
  v25[1] = v11;
  v25[2] = *&region->var1.var1;
  v26 = v10;
  [(MTLRenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v26 inRegion:v25 withRenderTargetArrayIndex:v5];
  v12 = *(&v28 + 1);
  v13 = v29;
  *(v29 + 8) = -15297;
  v14 = *(v12 + 24);
  v15 = BYTE10(v30);
  ++BYTE10(v30);
  Bytes = GTTraceMemPool_allocateBytes(v14, *(&v29 + 1), v15 | 0x5800000000);
  *(v13 + 13) = v15;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v19 = tile->var2;
  *(Bytes + 2) = var0;
  v20 = *&region->var0.var0;
  v21 = *&region->var0.var2;
  v22 = *&region->var1.var1;
  *(Bytes + 24) = *&tile->var0;
  *(Bytes + 5) = v19;
  *(Bytes + 3) = v20;
  *(Bytes + 4) = v21;
  *(Bytes + 5) = v22;
  *(Bytes + 24) = v5;
  *(Bytes + 25) = 0;
  s();
  *v23 = v24;
  *(v23 + 8) = BYTE8(v30);
  *(v29 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  baseObject = self->_baseObject;
  v8 = *&tile->var0;
  var2 = tile->var2;
  v9 = *&region->var0.var2;
  v23[0] = *&region->var0.var0;
  v23[1] = v9;
  v23[2] = *&region->var1.var1;
  v24 = v8;
  [(MTLRenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v24 inRegion:v23];
  v10 = *(&v26 + 1);
  v11 = v27;
  *(v27 + 8) = -15486;
  v12 = *(v10 + 24);
  v13 = BYTE10(v28);
  ++BYTE10(v28);
  Bytes = GTTraceMemPool_allocateBytes(v12, *(&v27 + 1), v13 | 0x5000000000);
  *(v11 + 13) = v13;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  v17 = tile->var2;
  *(Bytes + 2) = var0;
  v18 = *&region->var0.var0;
  v19 = *&region->var0.var2;
  v20 = *&region->var1.var1;
  *(Bytes + 24) = *&tile->var0;
  *(Bytes + 5) = v17;
  *(Bytes + 3) = v18;
  *(Bytes + 4) = v19;
  *(Bytes + 5) = v20;
  s();
  *v21 = v22;
  *(v21 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  baseObject = self->_baseObject;
  v16 = *tile;
  [(MTLRenderCommandEncoderSPI *)baseObject dispatchThreadsPerTile:&v16];
  v6 = v18;
  *(v18 + 8) = -16137;
  v7 = BYTE9(v19);
  if (BYTE9(v19) > 0x20uLL)
  {
    v9 = *(*(&v17 + 1) + 24);
    v10 = BYTE10(v19);
    ++BYTE10(v19);
    v8 = GTTraceMemPool_allocateBytes(v9, *(&v18 + 1), v10 | 0x2000000000) + 16;
    v7 = v10;
  }

  else
  {
    v8 = (v6 + BYTE9(v19));
    BYTE9(v19) += 32;
  }

  *(v6 + 13) = v7;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  var2 = tile->var2;
  *v8 = var0;
  *(v8 + 8) = *&tile->var0;
  *(v8 + 3) = var2;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v19);
  *(v18 + 15) |= 8u;
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v16);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
  v7 = v17;
  *(v17 + 8) = -14954;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (traceStream)
  {
    var0 = traceStream->var0;
  }

  else
  {
    var0 = 0;
  }

  *v9 = var0;
  *(v9 + 1) = stages;
  *(v9 + 2) = beforeStages;
  s();
  *v14 = v15;
  *(v14 + 8) = BYTE8(v18);
  *(v17 + 15) |= 8u;
}

- (void)setLabel:(id)label
{
  labelCopy = label;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setLabel:labelCopy];
  v5 = v18;
  *(v18 + 8) = -16281;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  v5 = [(MTLRenderCommandEncoderSPI *)baseObject conformsToProtocol:protocolCopy];

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
  v7.super_class = CaptureMTLRenderCommandEncoder;
  v3 = [(CaptureMTLRenderCommandEncoder *)&v7 description];
  v4 = [(MTLRenderCommandEncoderSPI *)self->_baseObject description];
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

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setTileAccelerationStructure:baseObject atBufferIndex:index];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v11 = self->_baseObject;
  baseObject2 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v11 setTileAccelerationStructure:baseObject2 atBufferIndex:index];

  v13 = v27;
  *(v27 + 8) = -15454;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v23;
  *(v15 + 2) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
LABEL_17:
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setFragmentAccelerationStructure:baseObject atBufferIndex:index];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v11 = self->_baseObject;
  baseObject2 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v11 setFragmentAccelerationStructure:baseObject2 atBufferIndex:index];

  v13 = v27;
  *(v27 + 8) = -15459;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v23;
  *(v15 + 2) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
LABEL_17:
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  structureCopy = structure;
  v7 = structureCopy;
  if (structureCopy)
  {
    device = [structureCopy device];
    captureRaytracingEnabled = [device captureRaytracingEnabled];

    if ((captureRaytracingEnabled & 1) == 0)
    {
      GTMTLCaptureManager_notifyUnsupportedFenumWithMsg("kDYFEMTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex", "Raytracing", 0, 0);
      baseObject = self->_baseObject;
      baseObject = [v7 baseObject];
      [(MTLRenderCommandEncoderSPI *)baseObject setVertexAccelerationStructure:baseObject atBufferIndex:index];

      goto LABEL_17;
    }

    [v7 touch];
    retainedObjects = self->_retainedObjects;
    if (retainedObjects)
    {
      [(NSMutableSet *)retainedObjects addObject:v7];
    }
  }

  else
  {
    [0 touch];
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v26);
  v11 = self->_baseObject;
  baseObject2 = [v7 baseObject];
  [(MTLRenderCommandEncoderSPI *)v11 setVertexAccelerationStructure:baseObject2 atBufferIndex:index];

  v13 = v27;
  *(v27 + 8) = -15449;
  v14 = BYTE9(v28);
  if (BYTE9(v28) > 0x28uLL)
  {
    v16 = *(*(&v26 + 1) + 24);
    v17 = BYTE10(v28);
    ++BYTE10(v28);
    v15 = GTTraceMemPool_allocateBytes(v16, *(&v27 + 1), v17 | 0x1800000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v28));
    BYTE9(v28) += 24;
  }

  *(v13 + 13) = v14;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
    v23 = *traceStream2;
  }

  else
  {
    v23 = 0;
  }

  *v15 = var0;
  *(v15 + 1) = v23;
  *(v15 + 2) = index;
  s();
  *v24 = v25;
  *(v24 + 8) = BYTE8(v28);
  *(v27 + 15) |= 8u;
LABEL_17:
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v17);
  [(MTLRenderCommandEncoderSPI *)self->_baseObject setVertexAmplificationCount:count viewMappings:mappings];
  v7 = v18;
  *(v18 + 8) = -15822;
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
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
  if (!traceStream)
  {
    var0 = 0;
    if (mappings)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  var0 = traceStream->var0;
  if (!mappings)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = GTTraceEncoder_storeBlob(&v17, mappings, 8 * count);
LABEL_9:
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

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  bufferCopy = buffer;
  indirectBufferCopy = indirectBuffer;
  if ([bufferCopy size])
  {
    [bufferCopy touch];
    if (bufferCopy)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      }
    }

    [indirectBufferCopy touch];
    if (indirectBufferCopy)
    {
      v11 = self->_retainedObjects;
      if (v11)
      {
        [(NSMutableSet *)v11 addObject:indirectBufferCopy];
      }
    }

    v77 = 0u;
    v78 = 0u;
    v76 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v76);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    baseObject2 = [indirectBufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject indirectBuffer:baseObject2 indirectBufferOffset:offset];

    v15 = v77;
    *(v77 + 8) = -15961;
    v16 = BYTE9(v78);
    if (BYTE9(v78) > 0x10uLL)
    {
      v21 = *(*(&v76 + 1) + 24);
      v22 = BYTE10(v78);
      ++BYTE10(v78);
      v17 = GTTraceMemPool_allocateBytes(v21, *(&v77 + 1), v22 | 0x3000000000) + 16;
      v16 = v22;
    }

    else
    {
      v17 = (v15 + BYTE9(v78));
      BYTE9(v78) += 48;
    }

    *(v15 + 13) = v16;
    traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
      v26 = *traceStream2;
    }

    else
    {
      v26 = 0;
    }

    traceStream3 = [indirectBufferCopy traceStream];
    if (traceStream3)
    {
      v28 = *traceStream3;
    }

    else
    {
      v28 = 0;
    }

    *v17 = var0;
    *(v17 + 1) = v26;
    *(v17 + 2) = v28;
    *(v17 + 3) = offset;
    *(v17 + 4) = 0;
    *(v17 + 5) = 0;
    s();
    *v29 = v30;
    *(v29 + 8) = BYTE8(v78);
    *(v77 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v33 = bufferCopy;
      v34 = MTLIndirectCommandBuffer_descriptor([v33 traceStream]);
      v35 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v34);
      FuncSnapshot = CaptureFindFuncSnapshot(v33, self->_snapshotMap);
      offsetCopy = offset;
      v62 = v33;
      v60 = v35;
      if (FuncSnapshot)
      {
        v37 = FuncSnapshot;
        v63 = 0;
        v64 = 0;
        v61 = *(FuncSnapshot + 8);
      }

      else
      {
        v75 = 0;
        v64 = CreateIndirectRenderCommandBufferSnapshot(self, v33, v35, &v75);
        v63 = v75;
        SnapshotMemory = AllocateSnapshotMemory(&v76, v34, [v33 size]);
        pool = self->_pool;
        snapshotMap = self->_snapshotMap;
        streamReference = [v33 streamReference];
        v37 = apr_palloc(pool, 0x18uLL);
        *v37 = streamReference;
        apr_hash_set(snapshotMap, v37, 8, v37);
        v42 = *v77;
        v61 = SnapshotMemory;
        v37[1] = SnapshotMemory;
        v37[2] = v42;
      }

      selfCopy = self;
      v67 = indirectBufferCopy;
      v44 = indirectBufferCopy;
      device = [(CaptureMTLRenderCommandEncoder *)selfCopy device];
      v46 = DEVICEOBJECT(v44);

      device2 = [v46 device];
      v59 = [device2 newBufferWithLength:8 options:0];
      v48 = DEVICEOBJECT(selfCopy);

      [v48 setVertexBuffer:v59 offset:0 atIndex:0];
      [v48 setVertexBuffer:v46 offset:offsetCopy atIndex:1];
      renderPipelineCopyBuffer = [device renderPipelineCopyBuffer];
      [v48 setRenderPipelineState:renderPipelineCopyBuffer];

      indirectBufferCopy = v67;
      [v48 drawPrimitives:0 vertexStart:0 vertexCount:8];

      v50 = *(*(&v76 + 1) + 24);
      v51 = BYTE10(v78);
      ++BYTE10(v78);
      Bytes = GTTraceMemPool_allocateBytes(v50, *(&v77 + 1), v51 | 0x1000000100);
      RestoreRenderCommandEncoder(selfCopy);
      v17[40] = v61[8];
      v17[41] = Bytes[8];
      *(v17 + 4) = v37[2];
      v53 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v54 = DEVICEOBJECT(v53);

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = __94__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke;
      v68[3] = &unk_2F1FD0;
      v69 = v63;
      v70 = v64;
      v71 = v60;
      v72 = v59;
      v73 = v61;
      v74 = Bytes;
      v55 = v59;
      v56 = v60;
      v57 = v64;
      v58 = v63;
      [v54 addCompletedHandler:v68];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v18 = self->_baseObject;
    baseObject3 = [bufferCopy baseObject];
    baseObject4 = [indirectBufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)v18 executeCommandsInBuffer:baseObject3 indirectBuffer:baseObject4 indirectBufferOffset:offset];
  }
}

float __94__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) length];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = GTMTLDecodeIndirectCommandBuffer(v2, *(a1 + 48));
    v4 = v3;
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = (v5 + 16);
    }

    else
    {
      v6 = 0;
    }

    memcpy(v6, [v3 bytes], objc_msgSend(v3, "length"));
  }

  v7 = [*(a1 + 56) contents];
  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = (v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  *&v10 = *v7;
  *(&v10 + 1) = HIDWORD(*v7);
  LODWORD(result) = *v7;
  *v9 = v10;
  return result;
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bufferCopy = buffer;
  if ([bufferCopy size])
  {
    [bufferCopy touch];
    if (bufferCopy)
    {
      retainedObjects = self->_retainedObjects;
      if (retainedObjects)
      {
        [(NSMutableSet *)retainedObjects addObject:bufferCopy];
      }
    }

    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    GTTraceContext_pushEncoderWithStream(self->_traceContext, &v50);
    baseObject = self->_baseObject;
    baseObject = [bufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)baseObject executeCommandsInBuffer:baseObject withRange:location, length];

    v11 = v51;
    *(v51 + 8) = -15962;
    v12 = BYTE9(v52);
    if (BYTE9(v52) > 0x10uLL)
    {
      v16 = *(*(&v50 + 1) + 24);
      v17 = BYTE10(v52);
      ++BYTE10(v52);
      v13 = GTTraceMemPool_allocateBytes(v16, *(&v51 + 1), v17 | 0x3000000000) + 16;
      v12 = v17;
    }

    else
    {
      v13 = (v11 + BYTE9(v52));
      BYTE9(v52) += 48;
    }

    *(v11 + 13) = v12;
    traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
      v21 = *traceStream2;
    }

    else
    {
      v21 = 0;
    }

    *v13 = var0;
    *(v13 + 1) = v21;
    *(v13 + 2) = location;
    *(v13 + 3) = length;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    s();
    *v22 = v23;
    *(v22 + 8) = BYTE8(v52);
    *(v51 + 15) |= 8u;
    WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
    isCapturing = [WeakRetained isCapturing];

    if (isCapturing)
    {
      context = objc_autoreleasePoolPush();
      v26 = bufferCopy;
      v27 = MTLIndirectCommandBuffer_descriptor([v26 traceStream]);
      v28 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v27);
      FuncSnapshot = CaptureFindFuncSnapshot(v26, self->_snapshotMap);
      if (FuncSnapshot)
      {
        v30 = FuncSnapshot;
        v31 = 0;
        v32 = 0;
        SnapshotMemory = *(FuncSnapshot + 8);
      }

      else
      {
        v49 = 0;
        v32 = CreateIndirectRenderCommandBufferSnapshot(self, v26, v28, &v49);
        v31 = v49;
        SnapshotMemory = AllocateSnapshotMemory(&v50, v27, [v26 size]);
        pool = self->_pool;
        ht = self->_snapshotMap;
        streamReference = [v26 streamReference];
        v30 = apr_palloc(pool, 0x18uLL);
        *v30 = streamReference;
        apr_hash_set(ht, v30, 8, v30);
        v36 = *v51;
        v30[1] = SnapshotMemory;
        v30[2] = v36;
      }

      RestoreRenderCommandEncoder(self);
      v13[40] = SnapshotMemory[8];
      *(v13 + 4) = v30[2];
      v37 = objc_loadWeakRetained(&self->_captureCommandBuffer);
      v38 = DEVICEOBJECT(v37);

      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = __68__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_withRange___block_invoke;
      v44[3] = &unk_2F1FF8;
      v45 = v31;
      v46 = v32;
      v47 = v28;
      v48 = SnapshotMemory;
      v39 = v28;
      v40 = v32;
      v41 = v31;
      [v38 addCompletedHandler:v44];

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "zero-length Indirect Command Buffer executions", 0, 0);
    v14 = self->_baseObject;
    baseObject2 = [bufferCopy baseObject];
    [(MTLRenderCommandEncoderSPI *)v14 executeCommandsInBuffer:baseObject2 withRange:location, length];
  }
}

void __68__CaptureMTLRenderCommandEncoder_executeCommandsInBuffer_withRange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) length];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = GTMTLDecodeIndirectCommandBuffer(v2, *(a1 + 48));
    v7 = v3;
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = (v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    v6 = v3;
    memcpy(v5, [v7 bytes], objc_msgSend(v7, "length"));
  }
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  GTTraceContext_pushEncoderWithStream(self->_traceContext, &v14);
  v3 = v15;
  *(v15 + 8) = -16280;
  v4 = BYTE9(v16);
  if (BYTE9(v16) > 0x38uLL)
  {
    v6 = *(*(&v14 + 1) + 24);
    v7 = BYTE10(v16);
    ++BYTE10(v16);
    v5 = GTTraceMemPool_allocateBytes(v6, *(&v15 + 1), v7 | 0x800000000) + 16;
    v4 = v7;
  }

  else
  {
    v5 = (v3 + BYTE9(v16));
    BYTE9(v16) += 8;
  }

  *(v3 + 13) = v4;
  traceStream = [(CaptureMTLRenderCommandEncoder *)self traceStream];
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
  *(v10 + 8) = BYTE8(v16);
  *(v15 + 15) |= 8u;
  GTTraceContext_closeStream(self->_traceContext, &self->_traceStream->var0);
  WeakRetained = objc_loadWeakRetained(&self->_captureCommandBuffer);
  [WeakRetained unionRetainSet:self->_retainedObjects];

  apr_pool_destroy(self->_pool);
  v13.receiver = self;
  v13.super_class = CaptureMTLRenderCommandEncoder;
  [(CaptureMTLRenderCommandEncoder *)&v13 dealloc];
}

- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureParallelRenderCommandEncoder:(id)encoder
{
  objectCopy = object;
  encoderCopy = encoder;
  v23.receiver = self;
  v23.super_class = CaptureMTLRenderCommandEncoder;
  v9 = [(CaptureMTLRenderCommandEncoder *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [encoderCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [encoderCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openStream(traceContext, v14, 0);

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
    commandBuffer = [encoderCopy commandBuffer];
    objc_storeWeak(&v10->_captureCommandBuffer, commandBuffer);

    WeakRetained = objc_loadWeakRetained(&v10->_captureCommandBuffer);
    retainedObjects = [WeakRetained retainedObjects];

    if (retainedObjects)
    {
      v18 = objc_alloc_init(NSMutableSet);
      retainedObjects = v10->_retainedObjects;
      v10->_retainedObjects = v18;

      v20 = v10->_retainedObjects;
      v21 = DEVICEOBJECT(v10->_baseObject);
      [(NSMutableSet *)v20 addObject:v21];
    }
  }

  return v10;
}

- (CaptureMTLRenderCommandEncoder)initWithBaseObject:(id)object captureCommandBuffer:(id)buffer
{
  objectCopy = object;
  bufferCopy = buffer;
  v20.receiver = self;
  v20.super_class = CaptureMTLRenderCommandEncoder;
  v9 = [(CaptureMTLRenderCommandEncoder *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_baseObject, object);
    device = [bufferCopy device];
    captureDevice = v10->_captureDevice;
    v10->_captureDevice = device;

    traceContext = [bufferCopy traceContext];
    v10->_traceContext = traceContext;
    v14 = DEVICEOBJECT(objectCopy);
    v10->_traceStream = GTTraceContext_openEncoderStream(traceContext, v14, *([bufferCopy traceStream] + 3));

    objc_storeWeak(&v10->_captureCommandBuffer, bufferCopy);
    retainedObjects = [bufferCopy retainedObjects];
    retainedObjects = v10->_retainedObjects;
    v10->_retainedObjects = retainedObjects;

    apr_pool_create_ex(&v10->_pool, 0, 0, 0);
    v10->_snapshotMap = apr_hash_make(v10->_pool);
    v17 = v10->_retainedObjects;
    v18 = DEVICEOBJECT(v10->_baseObject);
    [(NSMutableSet *)v17 addObject:v18];
  }

  return v10;
}

@end