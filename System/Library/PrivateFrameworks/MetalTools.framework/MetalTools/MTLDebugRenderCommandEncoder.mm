@interface MTLDebugRenderCommandEncoder
- ($3CC19D079FD0B010EE84973AA846B91B)scissorRect;
- ($54B668FA3CFF7C50914A1C899F2834C0)viewport;
- (MTLDebugFunctionArgument)tessellationFactorBufferArgument;
- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parallelRenderCommandEncoder:(id)commandEncoder descriptor:(id)descriptor;
- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)endEncodingAndRetrieveProgramAddressTable;
- (id)formattedDescription:(unint64_t)description;
- (void)_dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int *)index;
- (void)_dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int *)index withCondition:(int64_t)condition;
- (void)_init;
- (void)_setDefaults;
- (void)_validateAllFunctionArguments:(_MTLMessageContext *)arguments;
- (void)_validateDispatchThreadsPerTile:(id *)tile context:(_MTLMessageContext *)context;
- (void)_validateLBRT:(_MTLMessageContext *)t;
- (void)_validateTessellationWithMetal4;
- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)dealloc;
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
- (void)enableNullBufferBinds:(BOOL)binds;
- (void)endEncoding;
- (void)endEncoding_private;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index;
- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages;
- (void)resetTileCondition;
- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index;
- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert atIndex:(unint64_t)index;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
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
- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index;
- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index;
- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex;
- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage;
- (void)setLineWidth:(float)width;
- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index;
- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index;
- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
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
- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTileTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setTransformFeedbackState:(unint64_t)state;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range;
- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index;
- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index;
- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range;
- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index;
- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage;
- (void)updateFence:(id)fence afterStages:(unint64_t)stages;
- (void)useHeap:(id)heap;
- (void)useHeap:(id)heap stages:(unint64_t)stages;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count;
- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)useResource:(id)resource usage:(unint64_t)usage;
- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage;
- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages;
- (void)validateCommonDrawErrors:(unint64_t)errors;
- (void)validateCommonDrawErrors:(unint64_t)errors instanceCount:(unint64_t)count baseInstance:(unint64_t)instance maxVertexID:(unint64_t)d;
- (void)validateDrawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount function:(const char *)function;
- (void)validateDrawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount function:(const char *)function;
- (void)validateFramebufferWithRenderPipelineState:(id)state context:(_MTLMessageContext *)context;
- (void)validateFunctionTableUseResource:(id)resource stages:(unint64_t)stages context:(_MTLMessageContext *)context selectorName:(id)name;
- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages;
@end

@implementation MTLDebugRenderCommandEncoder

- ($54B668FA3CFF7C50914A1C899F2834C0)viewport
{
  var3 = self[1732].var3;
  if (*&self[1732].var4 == *&var3)
  {
    std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = *(*&var3 + 16);
  *&retstr->var0 = **&var3;
  *&retstr->var2 = v4;
  *&retstr->var4 = *(*&var3 + 32);
  return self;
}

- ($3CC19D079FD0B010EE84973AA846B91B)scissorRect
{
  var2 = self[2599].var2;
  if (self[2599].var3 == var2)
  {
    std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
  }

  v4 = var2[1];
  *&retstr->var0 = *var2;
  *&retstr->var2 = v4;
  return self;
}

- (void)_setDefaults
{
  self->_peakPerSampleStorage = 0;
  self->_defaultDepthStencilDescriptor = 0;
  self->_commandBuffer = 0;
  begin = self->_viewports.__begin_;
  if (begin)
  {
    std::__tree<unsigned int>::destroy(self->_viewports.__begin_, *(begin + 1));
    MEMORY[0x2318E4940](begin, 0x1020C4062D53EE8);
    self->_viewports.__begin_ = 0;
  }

  bzero(&self->_vertexBuffers[0].type, 0xC60uLL);
  bzero(&self->_vertexTextures[0].type, 0x2C00uLL);
  bzero(&self->_vertexSamplers[0].type, 0x580uLL);
  bzero(&self->_fragmentBuffers[0].type, 0xAA8uLL);
  bzero(&self->_fragmentTextures[0].type, 0x2C00uLL);
  bzero(&self->_fragmentSamplers[0].type, 0x580uLL);
  bzero(&self->_tileBuffers[0].type, 0xAA8uLL);
  bzero(&self->_tileTextures[0].type, 0x2C00uLL);
  bzero(&self->_tileSamplers[0].type, 0x580uLL);
  bzero(&self->_threadgroupMemoryArguments[0].type, 0xAA8uLL);
  LODWORD(self->_visibilityOffsets) = -2147418116;
  [self->_frontFacingWinding validate:self->super.super.super._device width:&self->_height height:&self->_tessellationFactorBufferInstanceStride];
  rasterizationRateMap = [self->_frontFacingWinding rasterizationRateMap];
  if (rasterizationRateMap)
  {
    v5 = rasterizationRateMap;
    renderTargetWidth = [self->_frontFacingWinding renderTargetWidth];
    renderTargetHeight = [self->_frontFacingWinding renderTargetHeight];
    tessellationFactorBufferInstanceStride = renderTargetHeight;
    if (renderTargetWidth)
    {
      if (renderTargetHeight)
      {
LABEL_6:
        self->_height = renderTargetWidth;
        self->_tessellationFactorBufferInstanceStride = tessellationFactorBufferInstanceStride;
        goto LABEL_8;
      }
    }

    else
    {
      objc_msgSend_screenSize(v5);
      renderTargetWidth = v20;
      if (tessellationFactorBufferInstanceStride)
      {
        goto LABEL_6;
      }
    }

    objc_msgSend_screenSize(v5);
    tessellationFactorBufferInstanceStride = *(&v20 + 1);
    goto LABEL_6;
  }

  tessellationFactorBufferInstanceStride = self->_tessellationFactorBufferInstanceStride;
LABEL_8:
  height = self->_height;
  v20 = 0uLL;
  v21 = height;
  v22 = tessellationFactorBufferInstanceStride;
  v23 = xmmword_22E27C190;
  std::vector<MTLViewport>::assign(&self->_viewports.__end_, 1uLL, &v20);
  self->_cullMode = 0;
  self->_depthClipMode = 0;
  self->_triangleFillMode = 0;
  self->_depthBiasSlopeScale = 1.0;
  self->_depthBiasClamp = 0.0;
  self->_frontStencilRef = 0;
  self->_backStencilRef = 0;
  v17 = 0uLL;
  v10 = self->_tessellationFactorBufferInstanceStride;
  v18 = self->_height;
  v19 = v10;
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__end_, 1uLL, &v17);
  self->_renderPipelineState = 0;
  self->_lineWidth = 0.0;
  self->_depthBias = 1.0;
  self->_amplificationValue = 0;
  self->_vertexAmplificationCount = 1;
  self->_updatedFences.__map_.__first_ = 1;

  self->_visibilityResultMode = objc_opt_new();
  self->_blendColorRed = 0.0;
  self->_blendColorGreen = 0.0;
  self->_visibilityResultOffset = 0;
  self->_width = 0;
  self->_blendColorBlue = 0.0;
  self->_blendColorAlpha = 0.0;
  self->_tessellationFactorScale = 0.0;
  *(&self->_tessellationFactorScale + 1) = 0;
  LOBYTE(self->_tessellationFactorBufferArgument.type) = 0;
  *&self->_tessellationFactorBufferArgument.isValid = 0;
  LODWORD(self->_descriptor) = 1065353216;
  LOBYTE(self->_colorAttachmentMap) = 0;
  p_var0 = &self->_updatedFences.__map_.var0;
  v12 = p_var0[1];
  v13 = p_var0[2];
  p_var0[5] = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = p_var0[2];
      v12 = (p_var0[1] + 1);
      p_var0[1] = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 256;
  }

  else
  {
    if (v14 != 2)
    {
      return;
    }

    v16 = 512;
  }

  p_var0[4] = v16;
}

- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parent:(id)parent descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLDebugRenderCommandEncoder;
  v7 = [MTLToolsRenderCommandEncoder initWithRenderCommandEncoder:sel_initWithRenderCommandEncoder_parent_descriptor_ parent:encoder descriptor:?];
  v8 = v7;
  if (v7)
  {
    v7->_maxVertexBuffers = parent;
    v7->_frontFacingWinding = [descriptor copy];
    [(MTLDebugRenderCommandEncoder *)v8 _init];
  }

  return v8;
}

- (MTLDebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder parallelRenderCommandEncoder:(id)commandEncoder descriptor:(id)descriptor
{
  v9.receiver = self;
  v9.super_class = MTLDebugRenderCommandEncoder;
  v7 = [(MTLToolsRenderCommandEncoder *)&v9 initWithRenderCommandEncoder:encoder parent:?];
  if (v7)
  {
    v7->_maxVertexBuffers = [commandEncoder commandBuffer];
    v7->_frontFacingWinding = descriptor;
    *&v7->_minBound = objc_opt_new();
    [(MTLDebugRenderCommandEncoder *)v7 _init];
  }

  return v7;
}

- (void)_init
{
  v26[64] = *MEMORY[0x277D85DE8];
  if (hasMemorylessAttachments(self->_frontFacingWinding))
  {
    [(MTLToolsRenderCommandEncoder *)self addSplitHandler:&__block_literal_global_3];
  }

  *&self->_openGLModeEnabled = 0x7FFF;
  frontFacingWinding = self->_frontFacingWinding;
  if (frontFacingWinding)
  {
    colorAttachments = [frontFacingWinding colorAttachments];
    v25 = 0uLL;
    sampleCount = 0;
    v5 = 0;
    v6 = 0;
    selfCopy = self;
    do
    {
      v8 = [colorAttachments _descriptorAtIndex:v6];
      selfCopy->_attachmentInfo[0].sampleCount = 0;
      selfCopy->_attachmentInfo[1].pixelFormat = 0;
      if (v8)
      {
        v9 = v8;
        texture = [v8 texture];
        if (texture)
        {
          v11 = texture;
          if ([v9 storeAction] == 4)
          {
            HIDWORD(self->_visibilityOffsets) |= 1 << v6;
          }

          selfCopy->_attachmentInfo[1].pixelFormat = [v11 sampleCount];
          selfCopy->_attachmentInfo[0].sampleCount = [v11 pixelFormat];
          if (v6 > 7)
          {
            if (v6 == 8)
            {
              v16 = v25;
            }

            else
            {
              v16 = v11;
            }

            v17 = *(&v25 + 1);
            if (v6 == 8)
            {
              v17 = v11;
            }

            *&v25 = v16;
            *(&v25 + 1) = v17;
          }

          else
          {
            sampleCount = [v11 sampleCount];
            v26[v5] = [v11 pixelFormat];
            v12 = &v26[7 * v5++ + 8];
            v14 = *(v11 + 88);
            v13 = *(v11 + 104);
            v15 = *(v11 + 72);
            v12[6] = *(v11 + 120);
            *(v12 + 1) = v14;
            *(v12 + 2) = v13;
            *v12 = v15;
          }

          [self->_maxVertexBuffers addObject:v11 retained:1 purgeable:1];
          [self->_maxVertexBuffers addObject:objc_msgSend(v9 retained:"resolveTexture") purgeable:{1, 1}];
        }
      }

      ++v6;
      selfCopy = (selfCopy + 16);
    }

    while (v6 != 10);
    [self->_maxVertexBuffers addObject:objc_msgSend(self->_frontFacingWinding retained:"visibilityResultBuffer") purgeable:{1, 1}];
    [self->_maxVertexBuffers addObject:objc_msgSend(self->_frontFacingWinding retained:"rasterizationRateMap") purgeable:{1, 0}];
    for (i = 0; i != 4; ++i)
    {
      [self->_maxVertexBuffers addObject:objc_msgSend(objc_msgSend(objc_msgSend(self->_frontFacingWinding retained:"sampleBufferAttachments") purgeable:{"objectAtIndexedSubscript:", i), "sampleBuffer"), 1, 0}];
    }

    v19 = *(&v25 + 1);
    defaultColorSampleCount = sampleCount;
    if (v25 == 0)
    {
      sampleCount2 = 0;
    }

    else
    {
      if (!*(&v25 + 1))
      {
        v19 = v25;
      }

      sampleCount2 = [v19 sampleCount];
    }

    if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
    {
      if (!sampleCount)
      {
        defaultColorSampleCount = [self->_frontFacingWinding defaultColorSampleCount];
        if (!defaultColorSampleCount)
        {
          defaultColorSampleCount = [self->_frontFacingWinding defaultRasterSampleCount];
        }
      }

      if (!sampleCount2)
      {
        sampleCount2 = [self->_frontFacingWinding defaultRasterSampleCount];
      }

      if (!sampleCount2 || !defaultColorSampleCount)
      {
        if (!defaultColorSampleCount)
        {
          defaultColorSampleCount = sampleCount2;
        }

        sampleCount2 = defaultColorSampleCount;
      }
    }
  }

  else
  {
    defaultColorSampleCount = 0;
    sampleCount2 = 0;
  }

  [(MTLDebugRenderCommandEncoder *)self _setDefaults];
  self->_commandBuffer = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:10];
  *&self->_vertexBuffers[0].isValid = sampleCount2;
  self->_depthStencilState = defaultColorSampleCount;
  imageblockSampleLength = MTLPixelFormatComputeTotalSizeUsed();
  if (imageblockSampleLength <= [self->_frontFacingWinding imageblockSampleLength])
  {
    imageblockSampleLength = [self->_frontFacingWinding imageblockSampleLength];
  }

  self->_resolvedSampleCount = imageblockSampleLength;
  self->_attachmentWriteMask = [(MTLToolsDevice *)self->super.super.super._device maxVertexBuffers];
  if ([self->_frontFacingWinding openGLModeEnabled])
  {
    attachmentWriteMask = self->_attachmentWriteMask;
    if (attachmentWriteMask <= 0x24)
    {
      attachmentWriteMask = 36;
    }

    self->_attachmentWriteMask = attachmentWriteMask;
    LOBYTE(self->_vertexBuiltinArguments) = 1;
  }
}

void __37__MTLDebugRenderCommandEncoder__init__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MTLReportFailure();
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      MTLReportFailure();
      if ((a3 & 8) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  MTLReportFailure();
  if ((a3 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((a3 & 8) == 0)
  {
    return;
  }

LABEL_9:

  MTLReportFailure();
}

- (void)dealloc
{
  var1 = self->_updatedFences.__map_.var1;
  var2 = self->_updatedFences.__map_.var2;
  self->_storingRenderTargets = 0;
  v5 = (var2 - var1) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*var1);
      v6 = self->_updatedFences.__map_.var2;
      var1 = self->_updatedFences.__map_.var1 + 1;
      self->_updatedFences.__map_.var1 = var1;
      v5 = (v6 - var1) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_8;
    }

    v7 = 512;
  }

  self->_updatedFences.__size_ = v7;
LABEL_8:
  begin = self->_viewports.__begin_;
  if (begin)
  {
    std::__tree<unsigned int>::destroy(self->_viewports.__begin_, *(begin + 1));
    MEMORY[0x2318E4940](begin, 0x1020C4062D53EE8);
    self->_viewports.__begin_ = 0;
  }

  if (self->_visibilityOffsets)
  {
    v9.receiver = self;
    v9.super_class = MTLDebugRenderCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
  }

  else
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    v9.receiver = self;
    v9.super_class = MTLDebugRenderCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
    MTLReportFailure();
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v79[8] = *MEMORY[0x277D85DE8];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = [@"\n" stringByPaddingToLength:description + 8 withString:@" " startingAtIndex:0];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:128];
  v79[0] = v5;
  v79[1] = @"descriptor =";
  frontFacingWinding = self->_frontFacingWinding;
  if (frontFacingWinding)
  {
    v9 = [frontFacingWinding formattedDescription:description + 4];
  }

  else
  {
    v9 = @"<null>";
  }

  v79[2] = v9;
  v79[3] = v5;
  v79[4] = @"viewportCount =";
  selfCopy = self;
  p_end = &self->_viewports.__end_;
  v79[5] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__cap_ - self->_viewports.__end_) >> 4)];
  v79[6] = v5;
  v55 = v5;
  v79[7] = @"viewports:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v79, 8)}];
  if (self->_viewports.__cap_ != self->_viewports.__end_)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v78[0] = v6;
      v78[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Viewport %lu:", v13];
      if (0xAAAAAAAAAAAAAAABLL * ((p_end[1] - *p_end) >> 4) <= v13)
      {
        std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *p_end;
      v78[2] = [MEMORY[0x277CCACA8] stringWithFormat:@"%g %g %g %g %g %g", *(v14 + v12), *(v14 + v12 + 8), *(v14 + v12 + 16), *(v14 + v12 + 24), *(v14 + v12 + 32), *(v14 + v12 + 40)];
      [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v78, 3)}];
      ++v13;
      v12 += 48;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((p_end[1] - *p_end) >> 4));
  }

  cullMode = selfCopy->_cullMode;
  v16 = @"Unknown";
  v77[0] = v55;
  v77[1] = @"frontFacingWinding =";
  if (cullMode == 1)
  {
    v17 = @"MTLWindingCounterClockwise";
  }

  else
  {
    v17 = @"Unknown";
  }

  if (!cullMode)
  {
    v17 = @"MTLWindingClockwise";
  }

  v77[2] = v17;
  v77[3] = v55;
  v77[4] = @"cullMode =";
  depthClipMode = selfCopy->_depthClipMode;
  v19 = @"Unknown";
  if (depthClipMode <= 2)
  {
    v19 = off_2787B4FB0[depthClipMode];
  }

  v77[5] = v19;
  v77[6] = v55;
  triangleFillMode = selfCopy->_triangleFillMode;
  if (triangleFillMode == 1)
  {
    v16 = @"MTLDepthClipModeClamp";
  }

  if (!triangleFillMode)
  {
    v16 = @"MTLDepthClipModeClip";
  }

  v77[7] = @"depthClipMode =";
  v77[8] = v16;
  v77[9] = v55;
  v77[10] = @"lineWidth =";
  *&v11 = selfCopy->_depthBiasSlopeScale;
  v77[11] = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v77[12] = v55;
  v77[13] = @"depthBias =";
  *&v21 = selfCopy->_depthBiasClamp;
  v77[14] = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v77[15] = v55;
  v77[16] = @"depthBiasSlopeScale =";
  LODWORD(v22) = selfCopy->_frontStencilRef;
  v77[17] = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  v77[18] = v55;
  v77[19] = @"depthBiasClamp =";
  LODWORD(v23) = selfCopy->_backStencilRef;
  v77[20] = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v77[21] = v55;
  v77[22] = @"scissorRectCount =";
  v77[23] = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(selfCopy->_scissorRects.__cap_ - selfCopy->_scissorRects.__end_) >> 5];
  v77[24] = v55;
  v77[25] = @"scissorRects:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v77, 26)}];
  if (selfCopy->_scissorRects.__cap_ != selfCopy->_scissorRects.__end_)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v76[0] = v6;
      v76[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Scissor %lu:", v26];
      if (v26 >= (selfCopy->_scissorRects.__cap_ - selfCopy->_scissorRects.__end_) >> 5)
      {
        std::vector<MTLViewport>::__throw_out_of_range[abi:ne200100]();
      }

      v76[2] = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu %lu %lu %lu", *(selfCopy->_scissorRects.__end_ + v25), *(selfCopy->_scissorRects.__end_ + v25 + 8), *(selfCopy->_scissorRects.__end_ + v25 + 16), *(selfCopy->_scissorRects.__end_ + v25 + 24)];
      [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v76, 3)}];
      ++v26;
      v25 += 32;
    }

    while (v26 < (selfCopy->_scissorRects.__cap_ - selfCopy->_scissorRects.__end_) >> 5);
  }

  v75[0] = v55;
  v75[1] = @"minBound =";
  *&v24 = selfCopy->_lineWidth;
  v75[2] = [MEMORY[0x277CCABB0] numberWithFloat:v24];
  v75[3] = v55;
  v75[4] = @"maxBound =";
  *&v27 = selfCopy->_depthBias;
  v75[5] = [MEMORY[0x277CCABB0] numberWithFloat:v27];
  v75[6] = v55;
  v75[7] = @"amplificationMode =";
  v75[8] = MTLVertexAmplificationModeString();
  v75[9] = v55;
  v75[10] = @"amplificationValue =";
  v75[11] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_vertexAmplificationCount];
  v75[12] = v55;
  v75[13] = @"vertexAmplificationCount =";
  v75[14] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_updatedFences.__map_.__first_];
  v75[15] = v55;
  v75[16] = @"triangleFillMode =";
  renderPipelineState = selfCopy->_renderPipelineState;
  if (renderPipelineState > 2)
  {
    v29 = @"Unknown";
  }

  else
  {
    v29 = off_2787B4FC8[renderPipelineState];
  }

  v75[17] = v29;
  v75[18] = v55;
  v75[19] = @"renderPipelineState =";
  peakPerSampleStorage = selfCopy->_peakPerSampleStorage;
  if (!peakPerSampleStorage)
  {
    peakPerSampleStorage = [MEMORY[0x277CBEB68] null];
  }

  v75[20] = peakPerSampleStorage;
  v75[21] = v55;
  v75[22] = @"depthStencilState =";
  defaultDepthStencilDescriptor = selfCopy->_defaultDepthStencilDescriptor;
  if (!defaultDepthStencilDescriptor)
  {
    defaultDepthStencilDescriptor = selfCopy->_visibilityResultMode;
    if (!defaultDepthStencilDescriptor)
    {
      defaultDepthStencilDescriptor = [MEMORY[0x277CBEB68] null];
    }
  }

  v75[23] = defaultDepthStencilDescriptor;
  v75[24] = v55;
  v75[25] = @"frontStencilRef =";
  v75[26] = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", LODWORD(selfCopy->_blendColorRed)];
  v75[27] = v55;
  v75[28] = @"backStencilRef =";
  v75[29] = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x", LODWORD(selfCopy->_blendColorGreen)];
  v75[30] = v55;
  v75[31] = @"visibilityResultMode =";
  visibilityResultOffset = selfCopy->_visibilityResultOffset;
  if (visibilityResultOffset > 2)
  {
    v33 = @"Unknown";
  }

  else
  {
    v33 = off_2787B4FE0[visibilityResultOffset];
  }

  v75[32] = v33;
  v75[33] = v55;
  v75[34] = @"visibilityResultOffset =";
  v75[35] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:selfCopy->_width];
  v75[36] = v55;
  v75[37] = @"Blend Color =";
  v75[38] = [MEMORY[0x277CCACA8] stringWithFormat:@"%g %g %g %g", selfCopy->_blendColorBlue, selfCopy->_blendColorAlpha, selfCopy->_tessellationFactorScale, *(&selfCopy->_tessellationFactorScale + 1)];
  v75[39] = v55;
  v75[40] = @"Set Vertex Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v75, 41)}];
  v34 = 0;
  v35 = selfCopy;
  do
  {
    v74[0] = v6;
    v74[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v34];
    v74[2] = argumentFormattedDescription(description + 8, &v35->_vertexBuffers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v74, 3)}];
    ++v34;
    v35 = (v35 + 88);
  }

  while (v34 != 36);
  v73[0] = v55;
  v73[1] = @"Set Vertex Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v73, 2)}];
  v36 = 0;
  v37 = selfCopy;
  do
  {
    v72[0] = v6;
    v72[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v36];
    v72[2] = argumentFormattedDescription(description + 8, &v37->_vertexTextures[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v72, 3)}];
    ++v36;
    v37 = (v37 + 88);
  }

  while (v36 != 128);
  v71[0] = v55;
  v71[1] = @"Set Vertex Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v71, 2)}];
  v38 = 0;
  v39 = selfCopy;
  do
  {
    v70[0] = v6;
    v70[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v38];
    v70[2] = argumentFormattedDescription(description + 8, &v39->_vertexSamplers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v70, 3)}];
    ++v38;
    v39 = (v39 + 88);
  }

  while (v38 != 16);
  v69[0] = v55;
  v69[1] = @"Set Fragment Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v69, 2)}];
  v40 = 0;
  v41 = selfCopy;
  do
  {
    v68[0] = v6;
    v68[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v40];
    v68[2] = argumentFormattedDescription(description + 8, &v41->_fragmentBuffers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v68, 3)}];
    ++v40;
    v41 = (v41 + 88);
  }

  while (v40 != 31);
  v67[0] = v55;
  v67[1] = @"Set Fragment Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v67, 2)}];
  v42 = 0;
  v43 = selfCopy;
  do
  {
    v66[0] = v6;
    v66[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v42];
    v66[2] = argumentFormattedDescription(description + 8, &v43->_fragmentTextures[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v66, 3)}];
    ++v42;
    v43 = (v43 + 88);
  }

  while (v42 != 128);
  v65[0] = v55;
  v65[1] = @"Set Fragment Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v65, 2)}];
  v44 = 0;
  v45 = selfCopy;
  do
  {
    v64[0] = v6;
    v64[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v44];
    v64[2] = argumentFormattedDescription(description + 8, &v45->_fragmentSamplers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v64, 3)}];
    ++v44;
    v45 = (v45 + 88);
  }

  while (v44 != 16);
  v63[0] = v55;
  v63[1] = @"Set Tile Buffers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v63, 2)}];
  v46 = 0;
  v47 = selfCopy;
  do
  {
    v62[0] = v6;
    v62[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Buffer %lu:", v46];
    v62[2] = argumentFormattedDescription(description + 8, &v47->_tileBuffers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v62, 3)}];
    ++v46;
    v47 = (v47 + 88);
  }

  while (v46 != 31);
  v61[0] = v55;
  v61[1] = @"Set Tile Textures:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v61, 2)}];
  v48 = 0;
  v49 = selfCopy;
  do
  {
    v60[0] = v6;
    v60[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Texture %lu:", v48];
    v60[2] = argumentFormattedDescription(description + 8, &v49->_tileTextures[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v60, 3)}];
    ++v48;
    v49 = (v49 + 88);
  }

  while (v48 != 128);
  v59[0] = v55;
  v59[1] = @"Set Tile Samplers:";
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v59, 2)}];
  v50 = 0;
  v51 = selfCopy;
  do
  {
    v58[0] = v6;
    v58[1] = [MEMORY[0x277CCACA8] stringWithFormat:@"Sampler %lu:", v50];
    v58[2] = argumentFormattedDescription(description + 8, &v51->_tileSamplers[0].type);
    [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v58, 3)}];
    ++v50;
    v51 = (v51 + 88);
  }

  while (v50 != 16);
  v57[0] = v55;
  v57[1] = @"Set Tessellation Factor Buffer =";
  v57[2] = argumentFormattedDescription(description + 8, &selfCopy->_tessellationFactorBufferArgument.type);
  v57[3] = v55;
  v57[4] = @"tessellationFactorBufferInstanceStride =";
  v57[5] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*&selfCopy->_tessellationFactorBufferArgument.isValid];
  v57[6] = v55;
  v57[7] = @"tessellationFactorScale =";
  LODWORD(v52) = selfCopy->_descriptor;
  v57[8] = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  [v7 addObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v57, 9)}];
  v56.receiver = selfCopy;
  v56.super_class = MTLDebugRenderCommandEncoder;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", -[MTLToolsObject description](&v56, sel_description), objc_msgSend(v7, "componentsJoinedByString:", @" "];
}

- (void)setColorAttachmentMap:(id)map
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();

  if (map)
  {
    v5 = [map copy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  *&self->_minBound = v5;
  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)validateFramebufferWithRenderPipelineState:(id)state context:(_MTLMessageContext *)context
{
  v6 = *(state + 8);
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    v7 = [objc_msgSend(state "descriptor")];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v6;
    }

    v9 = [objc_msgSend(state "descriptor")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = [objc_msgSend(state "meshDescriptor")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    v13 = [objc_msgSend(state "meshDescriptor")];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v10;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  if (![state rasterizationEnabled])
  {
    goto LABEL_50;
  }

  v15 = 0;
  v16 = &self->_attachmentInfo[1];
  do
  {
    v17 = *(state + v15 + 9);
    sampleCount = v16[-1].sampleCount;
    if (sampleCount)
    {
      pixelFormat = v16->pixelFormat;
      if (v14)
      {
        if (v14 != pixelFormat)
        {
          Name = v16->pixelFormat;
          v31 = v14;
          v29 = v15;
LABEL_32:
          _MTLMessageContextPush_();
        }
      }

      else if (v6 != pixelFormat)
      {
        Name = v16->pixelFormat;
        v31 = v6;
        v29 = v15;
        goto LABEL_32;
      }

      if (([(MTLRenderPassDescriptor *)[(MTLDebugRenderCommandEncoder *)self descriptor:v29] supportColorAttachmentMapping]& 1) == 0 && v17 != sampleCount)
      {
        Name = MTLPixelFormatGetName();
        v31 = MTLPixelFormatGetName();
        v29 = v15;
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (([(MTLRenderPassDescriptor *)[(MTLDebugRenderCommandEncoder *)self descriptor] supportColorAttachmentMapping]& 1) == 0 && v17)
    {
      v29 = v15;
LABEL_30:
      _MTLMessageContextPush_();
    }

LABEL_27:
    ++v16;
    ++v15;
  }

  while (v15 != 8);
  if ([state tileDescriptor])
  {
    goto LABEL_50;
  }

  v20 = self->_attachmentInfo[8].sampleCount;
  v21 = *(state + 17);
  if (!v20)
  {
    if (!v21)
    {
      goto LABEL_42;
    }

    goto LABEL_65;
  }

  v22 = self->_attachmentInfo[9].pixelFormat;
  if (v12)
  {
    if (v12 != v22)
    {
      v29 = self->_attachmentInfo[9].pixelFormat;
      Name = v12;
      goto LABEL_69;
    }
  }

  else if (v6 != v22)
  {
    v29 = self->_attachmentInfo[9].pixelFormat;
    Name = v6;
LABEL_69:
    _MTLMessageContextPush_();
  }

  if (v21 != v20)
  {
    v29 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_65:
    _MTLMessageContextPush_();
  }

LABEL_42:
  v23 = self->_attachmentInfo[9].sampleCount;
  v24 = *(state + 18);
  if (!v23)
  {
    if (!v24)
    {
      goto LABEL_50;
    }

    goto LABEL_67;
  }

  previousRenderPipelineStateWithWritesToImageBlock = self->_previousRenderPipelineStateWithWritesToImageBlock;
  if (v12)
  {
    if (v12 != previousRenderPipelineStateWithWritesToImageBlock)
    {
      v29 = self->_previousRenderPipelineStateWithWritesToImageBlock;
      Name = v12;
      goto LABEL_71;
    }
  }

  else if (v6 != previousRenderPipelineStateWithWritesToImageBlock)
  {
    v29 = self->_previousRenderPipelineStateWithWritesToImageBlock;
    Name = v6;
LABEL_71:
    _MTLMessageContextPush_();
  }

  if (v24 != v23)
  {
    v29 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_67:
    _MTLMessageContextPush_();
  }

LABEL_50:
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget:v29])
  {
    supportsSeparateVisibilityAndShadingRate = [(MTLToolsDevice *)self->super.super.super._device supportsSeparateVisibilityAndShadingRate];
    depthStencilState = self->_depthStencilState;
    if (supportsSeparateVisibilityAndShadingRate)
    {
      if (depthStencilState != v14)
      {
        _MTLMessageContextPush_();
      }

      if (*&self->_vertexBuffers[0].isValid != v12)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (depthStencilState != *&self->_vertexBuffers[0].isValid || v14 != v12)
      {
        _MTLMessageContextPush_();
        depthStencilState = self->_depthStencilState;
      }

      if (depthStencilState != v14)
      {
LABEL_63:
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)setRenderPipelineState:(id)state
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (state)
    {
      goto LABEL_3;
    }

LABEL_35:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!state)
  {
    goto LABEL_35;
  }

LABEL_3:
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x20000) != 0 && self->_peakPerSampleStorage == state)
  {
    _MTLMessageContextPush_();
    if ((self->_visibilityOffsets & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else if ((visibilityOffsets & 4) != 0)
  {
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
LABEL_6:
  _MTLMessageContextEnd();
  if (self->_peakPerSampleStorage != state)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    _MTLMessageContextBegin_();
    if (state)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        device = self->super.super.super._device;
        if (device != [state device])
        {
          _MTLMessageContextPush_();
        }

        if (((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled()) && ![state mtl4Descriptor] && !objc_msgSend(state, "mtl4MeshDescriptor") && !objc_msgSend(state, "mtl4TileDescriptor"))
        {
          [(MTLDebugRenderCommandEncoder *)self validateFramebufferWithRenderPipelineState:state context:&v23];
        }
      }

      else
      {
        _MTLMessageContextPush_();
      }
    }

    v7 = self->_visibilityOffsets;
    LODWORD(self->_visibilityOffsets) = v7 | 0x20000;
    peakPerSampleStorage = self->_peakPerSampleStorage;
    if (peakPerSampleStorage && (v7 & 4) != 0 && [peakPerSampleStorage outputImageBlockData])
    {
      self->_resolvedRasterSampleCount = self->_peakPerSampleStorage;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      imageblockSampleLength = [state imageblockSampleLength];
      if (imageblockSampleLength > self->_resolvedSampleCount)
      {
        v19 = imageblockSampleLength;
        resolvedSampleCount = self->_resolvedSampleCount;
        _MTLMessageContextPush_();
      }
    }

    tileWidth = [self->_frontFacingWinding tileWidth];
    v11 = [self->_frontFacingWinding tileHeight] * tileWidth * self->_depthStencilState;
    v12 = self->_resolvedSampleCount;
    v13 = [self->_frontFacingWinding threadgroupMemoryLength] + v11 * v12;
    if (v13 > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength])
    {
      [MTLDebugRenderCommandEncoder setRenderPipelineState:?];
    }

    _MTLMessageContextEnd();
    LODWORD(self->_visibilityOffsets) &= ~4u;
    [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
    [-[MTLToolsObject baseObject](self "baseObject")];
    self->_peakPerSampleStorage = state;
    *&self->_openGLModeEnabled |= 0x7FFFu;
    p_height = &self->_objectThreadsPerTG.height;
    self->_objectThreadsPerTG.depth = 0;
    self->_meshThreadsPerTG.width = 0;
    self->_objectThreadsPerTG.height = 0;
    v15 = &self->_meshThreadsPerTG.height;
    self->_meshThreadsPerTG.depth = 0;
    *&self->_allowsNullBufferBinds = 0;
    self->_meshThreadsPerTG.height = 0;
    v16 = self->_peakPerSampleStorage;
    if (![v16 mtl4Descriptor] && !objc_msgSend(v16, "mtl4MeshDescriptor") && !objc_msgSend(v16, "mtl4TileDescriptor") && objc_msgSend(self->_peakPerSampleStorage, "isMeshShaderPipeline"))
    {
      descriptor = [self->_peakPerSampleStorage descriptor];
      if (descriptor)
      {
        v18 = descriptor;
        objc_msgSend_objectThreadsPerThreadgroup(descriptor);
        *p_height = v21;
        p_height[2] = v22;
        objc_msgSend_meshThreadsPerThreadgroup(v18);
        *v15 = v21;
        v15[2] = v22;
      }
    }
  }
}

- (void)setVertexBytes:(const void *)bytes length:(unint64_t)length attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  memset(&v16, 0, sizeof(v16));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (self->_attachmentWriteMask <= index)
  {
    indexCopy = index;
    attachmentWriteMask = self->_attachmentWriteMask;
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexInlineDataSize:indexCopy]< length)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (index <= 0x23)
  {
    validateArg(0, index, &self->_vertexBuffers[index].type, &v16);
  }

  _MTLMessageContextEnd();
  supportsDynamicAttributeStride = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)self baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setVertexBytes:bytes length:length attributeStride:stride atIndex:index];
  }

  else
  {
    [baseObject setVertexBytes:bytes length:length atIndex:index];
  }

  MTLReportFailureTypeEnabled();
  p_type = &self->_vertexBuffers[index].type;
  *p_type = length != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = length;
  p_type[5] = 0;
  p_type[6] = stride;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 2u;
}

- (void)setVertexBuffer:(id)buffer offset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  memset(&v19, 0, sizeof(v19));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (self->_attachmentWriteMask > index)
  {
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!offset)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  v12 = *(buffer + 8);
  if (v12 <= offset)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (index <= 0x23)
  {
    validateArg(0, index, &self->_vertexBuffers[index].type, &v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  supportsDynamicAttributeStride = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setVertexBuffer:baseObject2 offset:offset attributeStride:stride atIndex:index];
  }

  else
  {
    [baseObject setVertexBuffer:baseObject2 offset:offset atIndex:index];
  }

  p_type = &self->_vertexBuffers[index].type;
  if (MTLReportFailureTypeEnabled() && buffer && (p_type[9] & 1) == 0 && p_type[6] == stride && p_type[5] == offset && p_type[4] == v12 && p_type[2] == buffer && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:buffer offset:v17 attributeStride:v18 atIndex:?];
  }

  *p_type = v12 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = buffer;
  p_type[3] = 0;
  p_type[4] = v12;
  p_type[5] = offset;
  p_type[6] = stride;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 2u;
}

- (void)setVertexBufferOffset:(unint64_t)offset attributeStride:(unint64_t)stride atIndex:(unint64_t)index
{
  memset(&v20, 0, sizeof(v20));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (self->_attachmentWriteMask <= index)
  {
    indexCopy2 = index;
    attachmentWriteMask = self->_attachmentWriteMask;
    _MTLMessageContextPush_();
  }

  if (index <= 0x23)
  {
    p_type = &self->_vertexBuffers[index].type;
    validateArg(0, index, p_type, &v20);
    object = p_type->object;
    if (object)
    {
      if ([(baseLevel *)object length]> offset)
      {
        goto LABEL_11;
      }

      indexCopy2 = offset;
      attachmentWriteMask = [(baseLevel *)p_type->object length];
    }

    else
    {
      indexCopy2 = index;
    }

    _MTLMessageContextPush_();
  }

LABEL_11:
  _MTLMessageContextEnd();
  supportsDynamicAttributeStride = [(MTLToolsDevice *)self->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)self baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setVertexBufferOffset:offset attributeStride:stride atIndex:index];
  }

  else
  {
    [baseObject setVertexBufferOffset:offset atIndex:index];
  }

  v13 = &self->_vertexBuffers[index].type;
  v14 = v13[2];
  v15 = [v14 length];
  if (MTLReportFailureTypeEnabled() && v14 && (v13[9] & 1) == 0 && v13[6] == stride && v13[5] == offset && v13[4] == v15 && v13[2] == v14 && !(v13[3] | v13[1]) && *(v13 + 7) == 0 && !*(v13 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:v14 offset:v16 attributeStride:v17 atIndex:?];
  }

  *v13 = v15 != 0;
  *(v13 + 1) = 0;
  v13[1] = 0;
  v13[2] = v14;
  v13[3] = 0;
  v13[4] = v15;
  v13[5] = offset;
  v13[6] = stride;
  v13[7] = 0;
  v13[8] = 0;
  *(v13 + 72) = 0;
  *(v13 + 19) = 0;
  *(v13 + 20) = 0;
  *&self->_openGLModeEnabled |= 2u;
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  std::vector<unsigned long>::vector[abi:ne200100](__b, range.length);
  v10 = __b[0];
  if (length)
  {
    memset(__b[0], 255, 8 * length);
  }

  [(MTLDebugRenderCommandEncoder *)self setVertexBuffers:buffers offsets:offsets attributeStrides:v10 withRange:location, length];
  if (__b[0])
  {
    __b[1] = __b[0];
    operator delete(__b[0]);
  }
}

- (void)setVertexBuffers:(const void *)buffers offsets:(const unint64_t *)offsets attributeStrides:(const unint64_t *)strides withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v48 = *MEMORY[0x277D85DE8];
  memset(&v46, 0, sizeof(v46));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > self->_attachmentWriteMask)
  {
    v36 = location + length;
    attachmentWriteMask = self->_attachmentWriteMask;
    _MTLMessageContextPush_();
  }

  offsetsCopy = offsets;
  selfCopy = self;
  v40 = location;
  v41 = length;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v11 = 0;
  v12 = self + 88 * location;
  do
  {
    if (!buffers[v11])
    {
      if (!offsets[v11])
      {
        goto LABEL_17;
      }

      v36 = v11;
      attachmentWriteMask = offsets[v11];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v36 = v11;
      goto LABEL_16;
    }

    device = self->super.super.super._device;
    if (device != [buffers[v11] device])
    {
      v36 = v11;
      _MTLMessageContextPush_();
    }

    offsets = offsetsCopy;
    if (offsetsCopy[v11] >= *(buffers[v11] + 8))
    {
      v38 = v11;
      v39 = *(buffers[v11] + 8);
      v36 = v11;
      attachmentWriteMask = offsetsCopy[v11];
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v11 <= 0x23)
    {
      validateArg(0, location + v11, (v12 + 248), &v46);
    }

    ++v11;
    v12 += 88;
  }

  while (length != v11);
  _MTLMessageContextEnd();
  v14 = &self->_attachmentInfo[1] + 88 * location;
  v15 = v47;
  v16 = length;
  offsetsCopy2 = offsets;
  stridesCopy = strides;
  do
  {
    if (*buffers)
    {
      v19 = *(*buffers + 8);
    }

    else
    {
      v19 = 0;
    }

    [selfCopy->_maxVertexBuffers addObject:v36 retained:attachmentWriteMask purgeable:{v38, v39}];
    *v15 = [*buffers baseObject];
    v20 = v14 + 248;
    buffersCopy = buffers;
    v21 = *buffers;
    v22 = *offsetsCopy2;
    v23 = *stridesCopy;
    v24 = MTLReportFailureTypeEnabled();
    v27 = v23;
    if (v24 && v21 && (v14[240] & 1) == 0)
    {
      v28 = *(v14 + 27) == v23 && *(v14 + 26) == v22;
      v29 = v28 && *(v14 + 25) == v19;
      v30 = v29 && *(v14 + 23) == v21;
      v31 = v30 && (*(v14 + 24) | *(v14 + 22)) == 0;
      v32 = v31 && *(v14 + 14) == 0;
      if (v32 && *(v14 + 244) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:v21 offset:v25 attributeStride:v26 atIndex:?];
        v27 = v23;
      }
    }

    v14[168] = v19 != 0;
    v14[169] = 0;
    *(v14 + 22) = 0;
    *(v14 + 23) = v21;
    *(v14 + 24) = 0;
    *(v14 + 25) = v19;
    *(v14 + 26) = v22;
    *(v14 + 27) = v27;
    *(v14 + 28) = 0;
    *(v14 + 29) = 0;
    ++stridesCopy;
    v14[240] = 0;
    ++offsetsCopy2;
    ++v15;
    buffers = buffersCopy + 1;
    v14 += 88;
    *(v20 - 1) = 0;
    *v20 = 0;
    --v16;
  }

  while (v16);
LABEL_50:
  supportsDynamicAttributeStride = [(MTLToolsDevice *)selfCopy->super.super.super._device supportsDynamicAttributeStride];
  baseObject = [(MTLToolsObject *)selfCopy baseObject];
  if (supportsDynamicAttributeStride)
  {
    [baseObject setVertexBuffers:v47 offsets:offsetsCopy attributeStrides:strides withRange:{v40, v41}];
  }

  else
  {
    [baseObject setVertexBuffers:v47 offsets:offsetsCopy withRange:{v40, v41}];
  }

  *&selfCopy->_openGLModeEnabled |= 2u;
}

- (void)setVertexTexture:(id)texture atIndex:(unint64_t)index
{
  memset(&v13, 0, sizeof(v13));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexTextures]<= index)
  {
    indexCopy = index;
    maxVertexTextures = [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_10;
    }
  }

  else if (!texture)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (index <= 0x7F)
  {
    validateArg(2, index, &self->_vertexTextures[index].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_vertexTextures[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == texture && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:texture offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = texture != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = texture;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 4u;
}

- (void)setVertexTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures])
  {
    v23 = location + length;
    maxVertexTextures = [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v26 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (textures[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [textures[v8] device])
        {
          v23 = v8;
          _MTLMessageContextPush_();
        }

        length = v25;
        if ([textures[v8] storageMode] == 3)
        {
LABEL_12:
          v23 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 3416), &v27);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v28;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*textures retained:1 purgeable:{1, v23}];
      *v12 = [*textures baseObject];
      v14 = v11 + 3416;
      v15 = *textures;
      if (MTLReportFailureTypeEnabled() && (v11[3408] & 1) == 0 && *(v11 + 423) == -1 && *(v11 + 418) == 1 && *(v11 + 419) == v15 && (*(v11 + 421) | *(v11 + 420) | *(v11 + 422)) == 0 && *(v11 + 212) == 0 && *(v11 + 3412) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:v15 offset:v16 attributeStride:v17 atIndex:?];
      }

      *(v11 + 1668) = v15 != 0;
      *(v11 + 418) = 1;
      *(v11 + 419) = v15;
      *(v11 + 420) = 0;
      *(v11 + 421) = 0;
      *(v11 + 422) = 0;
      *(v11 + 423) = -1;
      *(v11 + 424) = 0;
      *(v11 + 425) = 0;
      v11[3408] = 0;
      v11 += 88;
      ++v12;
      ++textures;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 4u;
}

- (void)setVertexSamplerState:(id)state atIndex:(unint64_t)index
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_vertexSamplers[index].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_vertexSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers])
  {
    v24 = location + length;
    maxVertexSamplers = [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
  }

  v26 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (states[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v19 = device == [states[v9] device], length = v26, !v19))
        {
          v24 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 14680), &v27);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v28;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v24, maxVertexSamplers}];
      *v13 = [*states baseObject];
      v15 = v12 + 14680;
      v16 = *states;
      if (MTLReportFailureTypeEnabled() && (v12[14672] & 1) == 0)
      {
        v19 = *(v12 + 1831) == -1 && *(v12 + 1826) == 2;
        if (v19 && *(v12 + 1827) == v16 && (*(v12 + 1829) | *(v12 + 1828) | *(v12 + 1830)) == 0 && *(v12 + 916) == 0 && *(v12 + 14676) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v16 offset:v17 attributeStride:v18 atIndex:?];
        }
      }

      v12[14600] = v16 != 0;
      v12[14601] = 0;
      *(v12 + 1826) = 2;
      *(v12 + 1827) = v16;
      *(v12 + 1828) = 0;
      *(v12 + 1829) = 0;
      *(v12 + 1830) = 0;
      *(v12 + 1831) = -1;
      *(v12 + 1832) = 0;
      *(v12 + 1833) = 0;
      v12[14672] = 0;
      v12 += 88;
      ++v13;
      ++states;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  memset(&v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_vertexSamplers[index].type, &v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [baseObject setVertexSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_vertexSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v17 attributeStride:v18 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  memset(&v22, 0, sizeof(v22));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_vertexSamplers[index].type, &v22);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v16 = clamp;
  *&v17 = maxClamp;
  *&v18 = bias;
  [baseObject setVertexSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v16 lodBias:v17 atIndex:v18];
  p_type = &self->_vertexSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v20 attributeStride:v21 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setVertexSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers])
  {
    v31 = location + length;
    maxVertexSamplers = [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
    _MTLMessageContextPush_();
  }

  v36 = location;
  v33 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (states[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [states[v10] device]))
        {
          v31 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v36 + v10 <= 0xF)
      {
        validateArg(3, v36 + v10, (v11 + 14680), &v37);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v36;
    v15 = v38;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v31, maxVertexSamplers}];
      *v15 = [*states baseObject];
      v18 = v14 + 14680;
      v19 = *states;
      v20 = *clampsCopy;
      v21 = *maxClampsCopy;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 3669) == v20 && v14[14672] != 0 && *(v14 + 1831) == -1 && *(v14 + 1826) == 2 && *(v14 + 1827) == v19 && (*(v14 + 1829) | *(v14 + 1828) | *(v14 + 1830)) == 0 && *(v14 + 916) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v19 offset:v22 attributeStride:v23 atIndex:?];
        }
      }

      v14[14600] = v19 != 0;
      v14[14601] = 0;
      *(v14 + 1826) = 2;
      *(v14 + 1827) = v19;
      *(v14 + 1828) = 0;
      *(v14 + 1829) = 0;
      *(v14 + 1830) = 0;
      *(v14 + 1831) = -1;
      *(v14 + 1832) = 0;
      *(v14 + 1833) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++maxClampsCopy;
      ++clampsCopy;
      ++v15;
      ++states;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 8u;
}

- (void)setFragmentBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers]<= index)
  {
    indexCopy = index;
    maxFragmentBuffers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentInlineDataSize:indexCopy]< length)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_fragmentBuffers[index].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_fragmentBuffers[index].type;
  *p_type = length != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = length;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers]> index)
  {
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!offset)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  v10 = *(buffer + 8);
  if (v10 <= offset)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_fragmentBuffers[index].type, &v14);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentBuffers[index].type;
  if (MTLReportFailureTypeEnabled() && buffer && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == offset && p_type[4] == v10 && p_type[2] == buffer && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:buffer offset:v12 attributeStride:v13 atIndex:?];
  }

  *p_type = v10 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = buffer;
  p_type[3] = 0;
  p_type[4] = v10;
  p_type[5] = offset;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    p_type = &self->_fragmentBuffers[index].type;
    validateArg(0, index, p_type, &v14);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= offset)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_fragmentBuffers[index].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == offset && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:v10 offset:v12 attributeStride:v13 atIndex:?];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = offset;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers])
  {
    v30 = location + length;
    maxFragmentBuffers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
    _MTLMessageContextPush_();
  }

  v34 = location;
  v35 = length;
  if (!length)
  {
    selfCopy2 = self;
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v9 = 0;
  v10 = self + 88 * location;
  offsetsCopy2 = offsets;
  do
  {
    if (!buffers[v9])
    {
      if (!offsetsCopy2[v9])
      {
        goto LABEL_17;
      }

      v30 = v9;
      maxFragmentBuffers = offsetsCopy2[v9];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = v9;
      goto LABEL_16;
    }

    device = self->super.super.super._device;
    if (device != [buffers[v9] device])
    {
      v30 = v9;
      _MTLMessageContextPush_();
    }

    offsetsCopy2 = offsets;
    if (offsets[v9] >= *(buffers[v9] + 8))
    {
      v32 = v9;
      v33 = *(buffers[v9] + 8);
      v30 = v9;
      maxFragmentBuffers = offsets[v9];
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v9 <= 0x1E)
    {
      validateArg(0, location + v9, (v10 + 16088), &v37);
    }

    ++v9;
    v10 += 88;
  }

  while (length != v9);
  _MTLMessageContextEnd();
  selfCopy2 = self;
  v14 = &self->_attachmentInfo[1] + 88 * location;
  v15 = v38;
  v16 = offsetsCopy2;
  v17 = length;
  do
  {
    if (*buffers)
    {
      v18 = *(*buffers + 8);
    }

    else
    {
      v18 = 0;
    }

    [selfCopy2->_maxVertexBuffers addObject:v30 retained:maxFragmentBuffers purgeable:{v32, v33}];
    *v15 = [*buffers baseObject];
    v19 = v14 + 16088;
    v20 = *buffers;
    v21 = *v16;
    if (MTLReportFailureTypeEnabled() && v20 && (v14[16080] & 1) == 0 && *(v14 + 2007) == -1 && *(v14 + 2006) == v21 && *(v14 + 2005) == v18 && *(v14 + 2003) == v20 && (*(v14 + 2004) | *(v14 + 2002)) == 0 && *(v14 + 1004) == 0 && *(v14 + 16084) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:v20 offset:v22 attributeStride:v23 atIndex:?];
    }

    v14[16008] = v18 != 0;
    v14[16009] = 0;
    *(v14 + 2002) = 0;
    *(v14 + 2003) = v20;
    *(v14 + 2004) = 0;
    *(v14 + 2005) = v18;
    *(v14 + 2006) = v21;
    *(v14 + 2007) = -1;
    *(v14 + 2008) = 0;
    *(v14 + 2009) = 0;
    v14[16080] = 0;
    v14 += 88;
    ++v16;
    ++v15;
    ++buffers;
    *(v19 - 1) = 0;
    *v19 = 0;
    --v17;
  }

  while (v17);
LABEL_50:
  [-[MTLToolsObject baseObject](selfCopy2 baseObject];
  *&selfCopy2->_openGLModeEnabled |= 0x10u;
}

- (void)setFragmentTexture:(id)texture atIndex:(unint64_t)index
{
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures]<= index)
  {
    indexCopy = index;
    maxFragmentTextures = [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_10;
    }
  }

  else if (!texture)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (index <= 0x7F)
  {
    validateArg(2, index, &self->_fragmentTextures[index].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentTextures[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == texture && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:texture offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = texture != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = texture;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x20u;
}

- (void)setFragmentTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures])
  {
    v23 = location + length;
    maxFragmentTextures = [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v26 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (textures[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [textures[v8] device])
        {
          v23 = v8;
          _MTLMessageContextPush_();
        }

        length = v25;
        if ([textures[v8] storageMode] == 3)
        {
LABEL_12:
          v23 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 18816), &v27);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v28;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*textures retained:1 purgeable:{1, v23}];
      *v12 = [*textures baseObject];
      v14 = v11 + 18816;
      v15 = *textures;
      if (MTLReportFailureTypeEnabled() && (v11[18808] & 1) == 0 && *(v11 + 2348) == -1 && *(v11 + 2343) == 1 && *(v11 + 2344) == v15 && (*(v11 + 2346) | *(v11 + 2345) | *(v11 + 2347)) == 0 && *(v11 + 18792) == 0 && *(v11 + 18812) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:v15 offset:v16 attributeStride:v17 atIndex:?];
      }

      *(v11 + 9368) = v15 != 0;
      *(v11 + 2343) = 1;
      *(v11 + 2344) = v15;
      *(v11 + 2345) = 0;
      *(v11 + 2346) = 0;
      *(v11 + 2347) = 0;
      *(v11 + 2348) = -1;
      *(v11 + 2349) = 0;
      *(v11 + 2350) = 0;
      v11[18808] = 0;
      v11 += 88;
      ++v12;
      ++textures;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x20u;
}

- (void)setFragmentSamplerState:(id)state atIndex:(unint64_t)index
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_fragmentSamplers[index].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers])
  {
    v24 = location + length;
    maxFragmentSamplers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
  }

  v26 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (states[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v19 = device == [states[v9] device], length = v26, !v19))
        {
          v24 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 30080), &v27);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v28;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v24, maxFragmentSamplers}];
      *v13 = [*states baseObject];
      v15 = v12 + 30080;
      v16 = *states;
      if (MTLReportFailureTypeEnabled() && (v12[30072] & 1) == 0)
      {
        v19 = *(v12 + 3756) == -1 && *(v12 + 3751) == 2;
        if (v19 && *(v12 + 3752) == v16 && (*(v12 + 3754) | *(v12 + 3753) | *(v12 + 3755)) == 0 && *(v12 + 30056) == 0 && *(v12 + 30076) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v16 offset:v17 attributeStride:v18 atIndex:?];
        }
      }

      v12[30000] = v16 != 0;
      v12[30001] = 0;
      *(v12 + 3751) = 2;
      *(v12 + 3752) = v16;
      *(v12 + 3753) = 0;
      *(v12 + 3754) = 0;
      *(v12 + 3755) = 0;
      *(v12 + 3756) = -1;
      *(v12 + 3757) = 0;
      *(v12 + 3758) = 0;
      v12[30072] = 0;
      v12 += 88;
      ++v13;
      ++states;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  memset(&v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_fragmentSamplers[index].type, &v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [baseObject setFragmentSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_fragmentSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v17 attributeStride:v18 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp lodBias:(float)bias atIndex:(unint64_t)index
{
  memset(&v22, 0, sizeof(v22));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_fragmentSamplers[index].type, &v22);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v16 = clamp;
  *&v17 = maxClamp;
  *&v18 = bias;
  [baseObject setFragmentSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v16 lodBias:v17 atIndex:v18];
  p_type = &self->_fragmentSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v20 attributeStride:v21 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers])
  {
    v31 = location + length;
    maxFragmentSamplers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
  }

  v36 = location;
  v33 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (states[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [states[v10] device]))
        {
          v31 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v36 + v10 <= 0xF)
      {
        validateArg(3, v36 + v10, (v11 + 30080), &v37);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v36;
    v15 = v38;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v31, maxFragmentSamplers}];
      *v15 = [*states baseObject];
      v18 = v14 + 30080;
      v19 = *states;
      v20 = *clampsCopy;
      v21 = *maxClampsCopy;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 7519) == v20 && v14[30072] != 0 && *(v14 + 3756) == -1 && *(v14 + 3751) == 2 && *(v14 + 3752) == v19 && (*(v14 + 3754) | *(v14 + 3753) | *(v14 + 3755)) == 0 && *(v14 + 30056) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v19 offset:v22 attributeStride:v23 atIndex:?];
        }
      }

      v14[30000] = v19 != 0;
      v14[30001] = 0;
      *(v14 + 3751) = 2;
      *(v14 + 3752) = v19;
      *(v14 + 3753) = 0;
      *(v14 + 3754) = 0;
      *(v14 + 3755) = 0;
      *(v14 + 3756) = -1;
      *(v14 + 3757) = 0;
      *(v14 + 3758) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++maxClampsCopy;
      ++clampsCopy;
      ++v15;
      ++states;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x40u;
}

- (void)setFragmentTexture:(id)texture atTextureIndex:(unint64_t)index samplerState:(id)state atSamplerIndex:(unint64_t)samplerIndex
{
  memset(&v21, 0, sizeof(v21));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures]<= index)
  {
    indexCopy = index;
    maxFragmentTextures = [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_10;
    }
  }

  else if (!texture)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if ([(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers:indexCopy]<= samplerIndex)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_15;
    }
  }

  else if (!state)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v12 = self->super.super.super._device, v12 != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_15:
  if (index <= 0x7F)
  {
    validateArg(2, index, &self->_fragmentTextures[index].type, &v21);
  }

  if (samplerIndex <= 0xF)
  {
    validateArg(3, samplerIndex, &self->_fragmentSamplers[samplerIndex].type, &v21);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_fragmentTextures[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == texture && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:texture offset:v14 attributeStride:v15 atIndex:?];
  }

  *p_type = texture != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = texture;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  v16 = &self->_fragmentSamplers[samplerIndex].type;
  if (MTLReportFailureTypeEnabled() && (v16[9] & 1) == 0 && v16[6] == -1 && v16[1] == 2 && v16[2] == state && !(v16[4] | v16[3] | v16[5]) && *(v16 + 7) == 0 && !*(v16 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v17 attributeStride:v18 atIndex:?];
  }

  *v16 = state != 0;
  *(v16 + 1) = 0;
  v16[1] = 2;
  v16[2] = state;
  v16[3] = 0;
  v16[4] = 0;
  v16[5] = 0;
  v16[6] = -1;
  v16[7] = 0;
  v16[8] = 0;
  *(v16 + 72) = 0;
  *(v16 + 19) = 0;
  *(v16 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x20u;
}

- (void)setTileBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileBuffers]<= index)
  {
    indexCopy = index;
    maxTileBuffers = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileInlineDataSize:indexCopy]< length)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_tileBuffers[index].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_tileBuffers[index].type;
  *p_type = length != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = length;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  memset(&v16, 0, sizeof(v16));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileBuffers]<= index)
  {
    indexCopy = index;
    maxTileBuffers = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (offset)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (!buffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
    goto LABEL_13;
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  if ([buffer length] <= offset)
  {
    [buffer length];
    goto LABEL_10;
  }

LABEL_13:
  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_tileBuffers[index].type, &v16);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_tileBuffers[index].type;
  v11 = [buffer length];
  if (MTLReportFailureTypeEnabled() && buffer && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == offset && p_type[4] == v11 && p_type[2] == buffer && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:buffer offset:v12 attributeStride:v13 atIndex:?];
  }

  *p_type = v11 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = buffer;
  p_type[3] = 0;
  p_type[4] = v11;
  p_type[5] = offset;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileBuffers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    p_type = &self->_tileBuffers[index].type;
    validateArg(0, index, p_type, &v14);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= offset)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_tileBuffers[index].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == offset && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:v10 offset:v12 attributeStride:v13 atIndex:?];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = offset;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
}

- (void)setTileBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v42 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers])
  {
    v32 = location + length;
    maxTileBuffers = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];
    _MTLMessageContextPush_();
  }

  v37 = location;
  v38 = length;
  offsetsCopy = offsets;
  p_isa = &self->super.super.super.super.isa;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_47;
  }

  v10 = 0;
  v11 = self + 88 * location;
  do
  {
    if (!buffers[v10])
    {
      if (!offsets[v10])
      {
        goto LABEL_17;
      }

      v32 = v10;
      maxTileBuffers = offsets[v10];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v32 = v10;
      goto LABEL_16;
    }

    device = self->super.super.super._device;
    if (device != [buffers[v10] device])
    {
      v32 = v10;
      _MTLMessageContextPush_();
    }

    v13 = offsets[v10];
    if (v13 >= [buffers[v10] length])
    {
      v14 = offsets[v10];
      v34 = v10;
      v35 = [buffers[v10] length];
      v32 = v10;
      maxTileBuffers = v14;
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v10 <= 0x1E)
    {
      validateArg(0, location + v10, (v11 + 31488), &v40);
    }

    ++v10;
    v11 += 88;
  }

  while (length != v10);
  _MTLMessageContextEnd();
  v15 = &self->_attachmentInfo[1] + 88 * location;
  v16 = v41;
  offsetsCopy2 = offsets;
  v18 = length;
  do
  {
    [p_isa[10411] addObject:*buffers retained:1 purgeable:{1, v32}];
    *v16 = [*buffers baseObject];
    v19 = v15 + 31488;
    v20 = *buffers;
    v21 = [*buffers length];
    v23 = *offsetsCopy2++;
    v22 = v23;
    if (MTLReportFailureTypeEnabled() && v20 && (v15[31480] & 1) == 0 && *(v15 + 3932) == -1 && *(v15 + 3931) == v22 && *(v15 + 3930) == v21 && *(v15 + 3928) == v20 && (*(v15 + 3929) | *(v15 + 3927)) == 0 && *(v15 + 31464) == 0 && *(v15 + 31484) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:v20 offset:v24 attributeStride:v25 atIndex:?];
    }

    v15[31408] = v21 != 0;
    v15[31409] = 0;
    *(v15 + 3927) = 0;
    *(v15 + 3928) = v20;
    *(v15 + 3929) = 0;
    *(v15 + 3930) = v21;
    *(v15 + 3931) = v22;
    *(v15 + 3932) = -1;
    *(v15 + 3933) = 0;
    *(v15 + 3934) = 0;
    v15[31480] = 0;
    v15 += 88;
    ++v16;
    ++buffers;
    *(v19 - 1) = 0;
    *v19 = 0;
    --v18;
  }

  while (v18);
LABEL_47:
  [objc_msgSend(p_isa baseObject];
}

- (void)setTileTexture:(id)texture atIndex:(unint64_t)index
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileTextures]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileTextures];
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_8;
    }
  }

  else if (!texture)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [texture device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0x7F)
  {
    validateArg(2, index, &self->_tileTextures[index].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_tileTextures[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == texture && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:texture offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = texture != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = texture;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileTextures])
  {
    v24 = location + length;
    maxTileTextures = [(MTLToolsDevice *)self->super.super.super._device maxTileTextures];
    _MTLMessageContextPush_();
  }

  v26 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (textures[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v19 = device == [textures[v9] device], length = v26, !v19))
        {
          v24 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0x7F)
      {
        validateArg(2, location + v9, (v10 + 34216), &v27);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v28;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*textures retained:1 purgeable:{1, v24, maxTileTextures}];
      *v13 = [*textures baseObject];
      v15 = v12 + 34216;
      v16 = *textures;
      if (MTLReportFailureTypeEnabled() && (v12[34208] & 1) == 0)
      {
        v19 = *(v12 + 4273) == -1 && *(v12 + 4268) == 1;
        if (v19 && *(v12 + 4269) == v16 && (*(v12 + 4271) | *(v12 + 4270) | *(v12 + 4272)) == 0 && *(v12 + 2137) == 0 && *(v12 + 34212) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v16 offset:v17 attributeStride:v18 atIndex:?];
        }
      }

      v12[34136] = v16 != 0;
      v12[34137] = 0;
      *(v12 + 4268) = 1;
      *(v12 + 4269) = v16;
      *(v12 + 4270) = 0;
      *(v12 + 4271) = 0;
      *(v12 + 4272) = 0;
      *(v12 + 4273) = -1;
      *(v12 + 4274) = 0;
      *(v12 + 4275) = 0;
      v12[34208] = 0;
      v12 += 88;
      ++v13;
      ++textures;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setTileSamplerState:(id)state atIndex:(unint64_t)index
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_tileSamplers[index].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_tileSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
}

- (void)setTileSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers])
  {
    v24 = location + length;
    maxTileSamplers = [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
  }

  v26 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (states[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v19 = device == [states[v9] device], length = v26, !v19))
        {
          v24 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 45480), &v27);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v28;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v24, maxTileSamplers}];
      *v13 = [*states baseObject];
      v15 = v12 + 45480;
      v16 = *states;
      if (MTLReportFailureTypeEnabled() && (v12[45472] & 1) == 0)
      {
        v19 = *(v12 + 5681) == -1 && *(v12 + 5676) == 2;
        if (v19 && *(v12 + 5677) == v16 && (*(v12 + 5679) | *(v12 + 5678) | *(v12 + 5680)) == 0 && *(v12 + 2841) == 0 && *(v12 + 45476) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v16 offset:v17 attributeStride:v18 atIndex:?];
        }
      }

      v12[45400] = v16 != 0;
      v12[45401] = 0;
      *(v12 + 5676) = 2;
      *(v12 + 5677) = v16;
      *(v12 + 5678) = 0;
      *(v12 + 5679) = 0;
      *(v12 + 5680) = 0;
      *(v12 + 5681) = -1;
      *(v12 + 5682) = 0;
      *(v12 + 5683) = 0;
      v12[45472] = 0;
      v12 += 88;
      ++v13;
      ++states;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)setTileSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  memset(&v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxTileSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_tileSamplers[index].type, &v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [baseObject setTileSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_tileSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v17 attributeStride:v18 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
}

- (void)setTileSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers])
  {
    v31 = location + length;
    maxTileSamplers = [(MTLToolsDevice *)self->super.super.super._device maxTileSamplers];
    _MTLMessageContextPush_();
  }

  v36 = location;
  v33 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (states[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [states[v10] device]))
        {
          v31 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v36 + v10 <= 0xF)
      {
        validateArg(3, v36 + v10, (v11 + 45480), &v37);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v36;
    v15 = v38;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v31, maxTileSamplers}];
      *v15 = [*states baseObject];
      v18 = v14 + 45480;
      v19 = *states;
      v20 = *clampsCopy;
      v21 = *maxClampsCopy;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 11369) == v20 && v14[45472] != 0 && *(v14 + 5681) == -1 && *(v14 + 5676) == 2 && *(v14 + 5677) == v19 && (*(v14 + 5679) | *(v14 + 5678) | *(v14 + 5680)) == 0 && *(v14 + 2841) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v19 offset:v22 attributeStride:v23 atIndex:?];
        }
      }

      v14[45400] = v19 != 0;
      v14[45401] = 0;
      *(v14 + 5676) = 2;
      *(v14 + 5677) = v19;
      *(v14 + 5678) = 0;
      *(v14 + 5679) = 0;
      *(v14 + 5680) = 0;
      *(v14 + 5681) = -1;
      *(v14 + 5682) = 0;
      *(v14 + 5683) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++maxClampsCopy;
      ++clampsCopy;
      ++v15;
      ++states;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index
{
  indexCopy = index;
  v5 = *tile;
  [(MTLDebugRenderCommandEncoder *)self _dispatchThreadsPerTile:&v5 inRegion:region withRenderTargetArrayIndex:&indexCopy];
}

- (void)resetTileCondition
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if ([(MTLToolsDevice *)self->super.super.super._device supportsConditionalTileDispatch])
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
  }

  else
  {
    _MTLMessageContextPush_();
    _MTLMessageContextEnd();
  }
}

- (void)_dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int *)index withCondition:(int64_t)condition
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (condition && ![(MTLToolsDevice *)self->super.super.super._device supportsConditionalTileDispatch])
  {
    _MTLMessageContextPush_();
    _MTLMessageContextEnd();
  }

  else
  {
    v14 = *&tile->var0;
    *&v15 = tile->var2;
    [(MTLDebugRenderCommandEncoder *)self _validateDispatchThreadsPerTile:&v14 context:v19];
    _MTLMessageContextEnd();
    baseObject = [(MTLToolsObject *)self baseObject];
    if (region && index)
    {
      v12 = *&tile->var0;
      var2 = tile->var2;
      v13 = *&region->var0.var2;
      v14 = *&region->var0.var0;
      v15 = v13;
      v16 = *&region->var1.var1;
      v17 = v12;
      [baseObject dispatchThreadsPerTile:&v17 inRegion:&v14 withRenderTargetArrayIndex:*index withCondition:condition];
    }

    else
    {
      v14 = *&tile->var0;
      *&v15 = tile->var2;
      [baseObject dispatchThreadsPerTile:&v14 withCondition:condition];
    }

    LODWORD(self->_visibilityOffsets) |= 0x80000006;
  }
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index withCondition:(int64_t)condition
{
  indexCopy = index;
  v6 = *tile;
  [(MTLDebugRenderCommandEncoder *)self _dispatchThreadsPerTile:&v6 inRegion:region withRenderTargetArrayIndex:&indexCopy withCondition:condition];
}

- (void)_validateDispatchThreadsPerTile:(id *)tile context:(_MTLMessageContext *)context
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    if (BYTE2(self->_visibilityOffsets))
    {
      _MTLMessageContextPush_();
    }

    if ([self->_peakPerSampleStorage tileDescriptor] || objc_msgSend(self->_peakPerSampleStorage, "mtl4TileDescriptor"))
    {
      if ([(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState] threadgroupSizeMatchesTileSize])
      {
        var0 = tile->var0;
        if (var0 != [(MTLToolsRenderCommandEncoder *)self tileWidth]|| (var1 = tile->var1, var1 != [(MTLToolsRenderCommandEncoder *)self tileHeight]))
        {
          [MTLDebugRenderCommandEncoder _validateDispatchThreadsPerTile:context:];
        }
      }

      if (![(MTLToolsDevice *)self->super.super.super._device supportsNonSquareTileShaders]&& ([(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState] threadgroupSizeMatchesTileSize]& 1) == 0)
      {
        v9 = tile->var0;
        if (v9 != [(MTLToolsRenderCommandEncoder *)self tileWidth]|| (v10 = tile->var1, v10 != [(MTLToolsRenderCommandEncoder *)self tileHeight]))
        {
          if (tile->var0 != tile->var1)
          {
            v26 = tile->var0;
            v28 = tile->var1;
            v19 = tile->var0;
            v23 = v28;
            _MTLMessageContextPush_();
          }
        }
      }

      v11 = vaddq_s64(vandq_s8(*&tile->var0, vdupq_n_s64(1uLL)), *&tile->var0);
      v12 = tile->var2 * v11.i64[0] * v11.i64[1];
      if (v12 > [(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState:v19] maxTotalThreadsPerThreadgroup])
      {
        v32 = *&tile->var0;
        var2 = tile->var2;
        maxTotalThreadsPerThreadgroup = [(MTLRenderPipelineState *)[(MTLDebugRenderCommandEncoder *)self renderPipelineState] maxTotalThreadsPerThreadgroup];
        v20 = v32;
        _MTLMessageContextPush_();
      }

      peakPerSampleStorage = self->_peakPerSampleStorage;
      if (peakPerSampleStorage)
      {
        objc_msgSend_requiredThreadsPerTileThreadgroup(peakPerSampleStorage);
      }

      validateDispatchThreadsPerThreadgroupWithRTPTG();
      v14 = self->_peakPerSampleStorage;
      if (v14 && self->_resolvedRasterSampleCount && ([v14 isImageBlockLayoutInputCompatibleWithOutputOf:?] & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      v15 = tile->var0;
      if (!(tile->var1 * tile->var0 * tile->var2))
      {
        v20 = *&tile->var0;
        var2 = tile->var2;
        _MTLMessageContextPush_();
        v15 = tile->var0;
      }

      if (v15 > [(MTLToolsRenderCommandEncoder *)self tileWidth:v20])
      {
        v21 = tile->var0;
        tileWidth = [(MTLToolsRenderCommandEncoder *)self tileWidth];
        _MTLMessageContextPush_();
      }

      v16 = tile->var1;
      if (v16 > [(MTLToolsRenderCommandEncoder *)self tileHeight:v21])
      {
        v22 = tile->var1;
        tileHeight = [(MTLToolsRenderCommandEncoder *)self tileHeight];
        _MTLMessageContextPush_();
      }

      if (tile->var2 != 1)
      {
        v22 = tile->var2;
        _MTLMessageContextPush_();
      }

      protectionOptions = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer:v22] protectionOptions];
      if ([self->_peakPerSampleStorage tileDescriptor])
      {
        device = self->super.super.super._device;
        v30 = [objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "tileDescriptor")];
        v18 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
        validateFunctionArguments(device, @"Tile", v30, v18, &self->_tileBuffers[0].type, &self->_tileTextures[0].type, &self->_tileSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, &self->_threadgroupMemoryArguments[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 1, 0, context, self->_colorAttachmentMap);
      }
    }

    else
    {
      _MTLMessageContextPush_();

      _MTLMessageContextEnd();
    }
  }
}

- (void)_dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int *)index
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v13 = *&tile->var0;
  *&v14 = tile->var2;
  [(MTLDebugRenderCommandEncoder *)self _validateDispatchThreadsPerTile:&v13 context:v18];
  _MTLMessageContextEnd();
  if (region)
  {
    baseObject = [(MTLToolsObject *)self baseObject];
    v10 = *&tile->var0;
    var2 = tile->var2;
    v11 = *&region->var0.var2;
    v13 = *&region->var0.var0;
    v14 = v11;
    v15 = *&region->var1.var1;
    v16 = v10;
    if (index)
    {
      [baseObject dispatchThreadsPerTile:&v16 inRegion:&v13 withRenderTargetArrayIndex:*index];
    }

    else
    {
      [baseObject dispatchThreadsPerTile:&v16 inRegion:&v13];
    }
  }

  else
  {
    baseObject2 = [(MTLToolsObject *)self baseObject];
    v13 = *&tile->var0;
    *&v14 = tile->var2;
    [baseObject2 dispatchThreadsPerTile:&v13];
  }

  LODWORD(self->_visibilityOffsets) |= 0x80000006;
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  memset(&v20, 0, sizeof(v20));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    p_type = &self->_threadgroupMemoryArguments[index].type;
    if (p_type->isValid && p_type->hasBeenUsed && (self->_visibilityOffsets & 0x80000000) == 0)
    {
      _MTLMessageContextPush_();
      p_type = &self->_threadgroupMemoryArguments[index].type;
    }

    validateArg(1, index, p_type, &v20);
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    indexCopy = index;
    maxComputeLocalMemorySizes = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if (offset + length > [self->_frontFacingWinding threadgroupMemoryLength])
  {
    v15 = offset + length;
    threadgroupMemoryLength = [self->_frontFacingWinding threadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:v15])
  {
    lengthCopy = length;
    maxComputeThreadgroupMemoryAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (offset % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:lengthCopy])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v10 = &self->_threadgroupMemoryArguments[index].type;
  v11 = MTLReportFailureTypeEnabled();
  if (v11 && (v10[9] & 1) == 0 && v10[8] == offset && v10[7] == length && v10[6] == -1 && v10[1] == 3 && !v10[2] && !(v10[4] | v10[3] | v10[5]) && !*(v10 + 76))
  {
    [(MTLDebugComputeCommandEncoder *)v11 setThreadgroupMemoryLength:v12 atIndex:v13];
  }

  *v10 = length != 0;
  *(v10 + 1) = 0;
  v10[1] = 3;
  *(v10 + 1) = 0u;
  *(v10 + 2) = 0u;
  v10[6] = -1;
  v10[7] = length;
  v10[8] = offset;
  *(v10 + 72) = 0;
  *(v10 + 19) = 0;
  *(v10 + 20) = 0;
}

- (void)useResource:(id)resource usage:(unint64_t)usage
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!resource)
  {
    _MTLMessageContextPush_();
  }

  if ([resource storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if (usage >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:resource retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)validateFunctionTableUseResource:(id)resource stages:(unint64_t)stages context:(_MTLMessageContext *)context selectorName:(id)name
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !MTLDebugStageIsRenderStage([resource stage], stages))
  {
    [MTLDebugRenderCommandEncoder validateFunctionTableUseResource:resource stages:name context:stages selectorName:?];
  }
}

- (void)useResource:(id)resource usage:(unint64_t)usage stages:(unint64_t)stages
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!resource)
  {
    _MTLMessageContextPush_();
  }

  if ([resource storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if (usage >= 8)
  {
    stagesCopy = usage;
    _MTLMessageContextPush_();
  }

  if (stages >= 0x20)
  {
    stagesCopy = stages;
LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if (!stages)
  {
    goto LABEL_12;
  }

LABEL_9:
  [(MTLDebugRenderCommandEncoder *)self validateFunctionTableUseResource:resource stages:stages context:v10 selectorName:@"useResource:usage:stages:", stagesCopy];
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:resource retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (usage < 8)
  {
    if (count)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
    goto LABEL_14;
  }

  usageCopy = usage;
  _MTLMessageContextPush_();
  if (!count)
  {
    goto LABEL_13;
  }

LABEL_3:
  v9 = 0;
  do
  {
    v10 = resources[v9];
    if (!v10)
    {
      usageCopy = v9;
      _MTLMessageContextPush_();
      v10 = resources[v9];
    }

    if ([v10 storageMode] == 3)
    {
      usageCopy = v9;
      _MTLMessageContextPush_();
    }

    ++v9;
  }

  while (count != v9);
  _MTLMessageContextEnd();
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  v11 = 0;
  do
  {
    baseObject = [resources[v11] baseObject];
    *(__p[0] + v11) = baseObject;
    [self->_maxVertexBuffers addObject:resources[v11++] retained:1 purgeable:1];
  }

  while (count != v11);
LABEL_14:
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResources:__p[0] count:count usage:usage];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useResources:(const void *)resources count:(unint64_t)count usage:(unint64_t)usage stages:(unint64_t)stages
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (usage >= 8)
  {
    stagesCopy = usage;
    _MTLMessageContextPush_();
  }

  if (stages >= 0x20)
  {
    stagesCopy = stages;
  }

  else if (stages)
  {
    if (count)
    {
      goto LABEL_6;
    }

LABEL_18:
    std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
    goto LABEL_19;
  }

  _MTLMessageContextPush_();
  if (!count)
  {
    goto LABEL_18;
  }

LABEL_6:
  v11 = 0;
  do
  {
    v12 = resources[v11];
    if (!v12)
    {
      stagesCopy = v11;
      _MTLMessageContextPush_();
      v12 = resources[v11];
    }

    if ([v12 storageMode] == 3)
    {
      stagesCopy = v11;
      _MTLMessageContextPush_();
    }

    ++v11;
  }

  while (count != v11);
  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  v13 = 0;
  do
  {
    -[MTLDebugRenderCommandEncoder validateFunctionTableUseResource:stages:context:selectorName:](self, "validateFunctionTableUseResource:stages:context:selectorName:", resources[v13], stages, v18, [MEMORY[0x277CCACA8] stringWithFormat:@"useResources:count:usage:stages: (index = %lu)", v13]);
    baseObject = [resources[v13] baseObject];
    *(__p[0] + v13) = baseObject;
    [self->_maxVertexBuffers addObject:resources[v13++] retained:1 purgeable:1];
  }

  while (count != v13);
LABEL_19:
  _MTLMessageContextEnd();
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useResources:__p[0] count:count usage:usage stages:stages];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeap:(id)heap
{
  if (!heap)
  {
    [MTLDebugRenderCommandEncoder useHeap:];
  }

  [self->_maxVertexBuffers addObject:heap retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [heap baseObject];

  [baseObject useHeap:baseObject2];
}

- (void)useHeap:(id)heap stages:(unint64_t)stages
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!heap)
  {
    _MTLMessageContextPush_();
  }

  if (stages >= 0x20 || !stages)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:heap retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (count)
  {
    v7 = 0;
    do
    {
      if (!heaps[v7])
      {
        v11 = v7;
        _MTLMessageContextPush_();
      }

      ++v7;
    }

    while (count != v7);
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
    v8 = 0;
    do
    {
      baseObject = [heaps[v8] baseObject];
      *(__p[0] + v8) = baseObject;
      [self->_maxVertexBuffers addObject:heaps[v8++] retained:1 purgeable:1];
    }

    while (count != v8);
  }

  else
  {
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, 0);
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useHeaps:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)useHeaps:(const void *)heaps count:(unint64_t)count stages:(unint64_t)stages
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (stages >= 0x20)
  {
    stagesCopy = stages;
  }

  else if (stages)
  {
    if (count)
    {
      goto LABEL_4;
    }

LABEL_14:
    _MTLMessageContextEnd();
    std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
    goto LABEL_15;
  }

  _MTLMessageContextPush_();
  if (!count)
  {
    goto LABEL_14;
  }

LABEL_4:
  v9 = 0;
  do
  {
    if (!heaps[v9])
    {
      stagesCopy = v9;
      _MTLMessageContextPush_();
    }

    ++v9;
  }

  while (count != v9);
  _MTLMessageContextEnd();
  std::vector<objc_object  {objcproto7MTLHeap}*>::vector[abi:ne200100](__p, count);
  v10 = 0;
  do
  {
    baseObject = [heaps[v10] baseObject];
    *(__p[0] + v10) = baseObject;
    [self->_maxVertexBuffers addObject:heaps[v10++] retained:1 purgeable:1];
  }

  while (count != v10);
LABEL_15:
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 useHeaps:__p[0] count:count];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setViewport:(id *)viewport
{
  v16 = 0;
  memset(&v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  v6 = *&viewport->var2;
  v12 = *&viewport->var0;
  v13 = v6;
  v14 = *&viewport->var4;
  validateMTLViewport(&v12, &v15, v5);
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000) != 0)
  {
    end = self->_viewports.__end_;
    if ((self->_viewports.__cap_ - end) == 48 && !memcmp(end, viewport, 0x30uLL))
    {
      _MTLMessageContextPush_();
      visibilityOffsets = self->_visibilityOffsets;
    }
  }

  v9 = visibilityOffsets | 0x40000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000;
  if ((visibilityOffsets & 8) == 0)
  {
    _MTLMessageContextPush_();
    v9 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v9 & 0xFFFFFFF7;
  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  v11 = *&viewport->var2;
  v12 = *&viewport->var0;
  v13 = v11;
  v14 = *&viewport->var4;
  [baseObject setViewport:&v12];
  std::vector<MTLViewport>::assign(&self->_viewports.__end_, 1uLL, viewport);
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v21 = 0;
  memset(&v20, 0, sizeof(v20));
  _MTLMessageContextBegin_();
  if ((BYTE2(self->_visibilityOffsets) & 1) == 0)
  {
    if (viewports)
    {
      goto LABEL_3;
    }

LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  _MTLMessageContextPush_();
  if (!viewports)
  {
    goto LABEL_8;
  }

LABEL_3:
  v8 = count != 0;
  if (!count)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v9 = 0;
  viewportsCopy = viewports;
  do
  {
    v11 = viewportsCopy[1];
    v17 = *viewportsCopy;
    v18 = v11;
    v19 = viewportsCopy[2];
    validateMTLViewport(&v17, &v20, v7);
    ++v9;
    viewportsCopy += 3;
  }

  while (v9 < count);
LABEL_10:
  v12 = [self->_frontFacingWinding rasterizationRateMap] != 0;
  if (count - 1 >= [(MTLToolsDevice *)self->super.super.super._device maxViewportCount]>> v12)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000) != 0)
  {
    if (viewports)
    {
      end = self->_viewports.__end_;
      v15 = self->_viewports.__cap_ - end;
      if (0xAAAAAAAAAAAAAAABLL * (v15 >> 4) == count && !memcmp(end, viewports, v15))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }
  }

  v16 = visibilityOffsets | 0x40000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000;
  if ((visibilityOffsets & 8) == 0)
  {
    _MTLMessageContextPush_();
    v16 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v16 & 0xFFFFFFF7;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    std::vector<MTLViewport>::__assign_with_size[abi:ne200100]<MTLViewport const*,MTLViewport const*>(&self->_viewports.__end_, viewports, &viewports[count], count);
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    *&v19 = 0;
    *(&v19 + 1) = 0x3FF0000000000000;
    std::vector<MTLViewport>::assign(&self->_viewports.__end_, 1uLL, &v17);
  }
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (winding >= 2)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x80000) != 0 && self->_cullMode == winding)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v6 = visibilityOffsets | 0x80000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x80000;
  if ((visibilityOffsets & 0x10) == 0)
  {
    _MTLMessageContextPush_();
    v6 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v6 & 0xFFFFFFEF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_cullMode = winding;
}

- (void)setCullMode:(unint64_t)mode
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x100000) != 0 && self->_depthClipMode == mode)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v6 = visibilityOffsets | 0x100000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x100000;
  if ((visibilityOffsets & 0x20) == 0)
  {
    _MTLMessageContextPush_();
    v6 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v6 & 0xFFFFFFDF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_depthClipMode = mode;
}

- (void)setDepthClipMode:(unint64_t)mode
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 2)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x200000) != 0 && self->_triangleFillMode == mode)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v6 = visibilityOffsets | 0x200000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x200000;
  if ((visibilityOffsets & 0x40) == 0)
  {
    _MTLMessageContextPush_();
    v6 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v6 & 0xFFFFFFBF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_triangleFillMode = mode;
}

- (void)setLineWidth:(float)width
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (width < 1.0 || width > 16.0)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x400000) != 0 && LODWORD(self->_depthBiasSlopeScale) == LODWORD(width))
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v7 = visibilityOffsets | 0x400000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x400000;
  if ((visibilityOffsets & 0x80) == 0)
  {
    _MTLMessageContextPush_();
    v7 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v7 & 0xFFFFFF7F;
  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v9 = width;
  [baseObject setLineWidth:v9];
  self->_depthBiasSlopeScale = width;
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    visibilityOffsets = self->_visibilityOffsets;
    if ((visibilityOffsets & 0x800000) != 0)
    {
      v10 = LODWORD(self->_depthBiasClamp) == LODWORD(bias) && self->_frontStencilRef == LODWORD(scale);
      if (v10 && self->_backStencilRef == LODWORD(clamp))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }

    v12 = visibilityOffsets | 0x800000;
    LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x800000;
    if ((visibilityOffsets & 0x100) == 0)
    {
      _MTLMessageContextPush_();
      v12 = self->_visibilityOffsets;
    }

    LODWORD(self->_visibilityOffsets) = v12 & 0xFFFFFEFF;
  }

  _MTLMessageContextEnd();
  v13 = [(MTLToolsObject *)self baseObject:0];
  *&v14 = bias;
  *&v15 = scale;
  *&v16 = clamp;
  [v13 setDepthBias:v14 slopeScale:v15 clamp:v16];
  self->_depthBiasClamp = bias;
  *&self->_frontStencilRef = scale;
  *&self->_backStencilRef = clamp;
}

- (void)setScissorRect:(id *)rect
{
  memset(&v18, 0, sizeof(v18));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  validateMTLScissorRect(self, rect, &v18);
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x1000000) != 0)
  {
    end = self->_scissorRects.__end_;
    if ((self->_scissorRects.__cap_ - end) == 32)
    {
      v7 = *end;
      v8 = *(end + 1);
      v10 = *(end + 2);
      v9 = *(end + 3);
      v11 = v7 == rect->var0 && v8 == rect->var1;
      v12 = v11 && v10 == rect->var2;
      if (v12 && v9 == rect->var3)
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }
  }

  v14 = visibilityOffsets | 0x1000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x1000000;
  if ((visibilityOffsets & 0x200) == 0)
  {
    _MTLMessageContextPush_();
    v14 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v14 & 0xFFFFFDFF;
  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  v16 = *&rect->var2;
  v17[0] = *&rect->var0;
  v17[1] = v16;
  [baseObject setScissorRect:v17];
  std::vector<MTLScissorRect>::assign(&self->_scissorRects.__end_, 1uLL, rect);
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self->super.super.super._device supportsDepthBoundsTesting])
  {
    _MTLMessageContextPush_();
  }

  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (bound < 0.0 || bound > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (maxBound < 0.0 || maxBound > 1.0)
  {
    _MTLMessageContextPush_();
  }

  if (bound > maxBound)
  {
    _MTLMessageContextPush_();
  }

  if (self->_lineWidth == bound && self->_depthBias == maxBound)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v8 = bound;
  *&v9 = maxBound;
  [baseObject setDepthTestMinBound:v8 maxBound:v9];
  self->_lineWidth = bound;
  self->_depthBias = maxBound;
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  memset(&v18, 0, sizeof(v18));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (rects)
    {
      goto LABEL_3;
    }

LABEL_26:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!rects)
  {
    goto LABEL_26;
  }

LABEL_3:
  v7 = [self->_frontFacingWinding rasterizationRateMap] != 0;
  v8 = [(MTLToolsDevice *)self->super.super.super._device maxViewportCount]>> v7;
  if (!count || v8 < count)
  {
    _MTLMessageContextPush_();
  }

  if (rects)
  {
    v9 = count == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (!v9 && v8 >= count)
  {
    rectsCopy = rects;
    countCopy = count;
    do
    {
      validateMTLScissorRect(self, rectsCopy++, &v18);
      --countCopy;
    }

    while (countCopy);
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x1000000) != 0)
  {
    if (rects)
    {
      end = self->_scissorRects.__end_;
      v15 = self->_scissorRects.__cap_ - end;
      if (v15 >> 5 == count && !memcmp(end, rects, v15))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }
  }

  v16 = visibilityOffsets | 0x1000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x1000000;
  if ((visibilityOffsets & 0x200) == 0)
  {
    _MTLMessageContextPush_();
    v16 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v16 & 0xFFFFFDFF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    std::vector<MTLScissorRect>::__assign_with_size[abi:ne200100]<MTLScissorRect const*,MTLScissorRect const*>(&self->_scissorRects.__end_, rects, &rects[count], count);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    std::vector<MTLScissorRect>::assign(&self->_scissorRects.__end_, 1uLL, v17);
  }
}

- (void)setTransformFeedbackState:(unint64_t)state
{
  _MTLMessageContextBegin_();
  if (state >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  amplificationValue = self->_amplificationValue;
  valueCopy2 = value;
  if (!amplificationValue)
  {
LABEL_6:
    if (!valueCopy2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (amplificationValue == 1)
  {
    v9 = vcnt_s8(value);
    v9.i16[0] = vaddlv_u8(v9);
    valueCopy2 = v9.u32[0];
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  valueCopy2 = value;
  if (!value)
  {
LABEL_10:
    [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor];
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

LABEL_9:
  if (valueCopy2 > [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor])
  {
    goto LABEL_10;
  }

LABEL_11:
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000000) != 0 && self->_vertexAmplificationCount == value)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v11 = visibilityOffsets | 0x40000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000000;
  if ((visibilityOffsets & 0x8000) == 0)
  {
    _MTLMessageContextPush_();
    v11 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v11 & 0xFFFF7FFF;
  _MTLMessageContextEnd();
  self->_amplificationValue = mode;
  self->_vertexAmplificationCount = value;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  _MTLMessageContextBegin_();
  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsVertexAmplification]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (([(MTLDevice *)[(MTLToolsObject *)self device] supportsVertexAmplificationCount:count]& 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x40000000) != 0 && self->_updatedFences.__map_.__first_ == count)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v8 = visibilityOffsets | 0x40000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x40000000;
  if ((visibilityOffsets & 0x8000) == 0)
  {
    _MTLMessageContextPush_();
    v8 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v8 & 0xFFFF7FFF;
  _MTLMessageContextEnd();
  self->_updatedFences.__map_.__first_ = count;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTriangleFrontFillMode:(unint64_t)mode backFillMode:(unint64_t)fillMode
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  if (fillMode >= 3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_renderPipelineState = mode;
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x2000000) != 0 && self->_renderPipelineState == mode)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v6 = visibilityOffsets | 0x2000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x2000000;
  if ((visibilityOffsets & 0x400) == 0)
  {
    _MTLMessageContextPush_();
    v6 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v6 & 0xFFFFFBFF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  self->_renderPipelineState = mode;
}

- (void)setDepthStencilState:(id)state
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (state)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  if (!state)
  {
    goto LABEL_5;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  device = self->super.super.super._device;
  if (device != [state device])
  {
    goto LABEL_5;
  }

LABEL_6:
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x4000000) != 0 && self->_defaultDepthStencilDescriptor == state)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v7 = visibilityOffsets | 0x4000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x4000000;
  if ((visibilityOffsets & 0x800) == 0)
  {
    _MTLMessageContextPush_();
    v7 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v7 & 0xFFFFF7FF;
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  self->_defaultDepthStencilDescriptor = state;
  *&self->_openGLModeEnabled |= 0x80u;
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  v3 = *&value;
  _MTLMessageContextBegin_();
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x10000) != 0)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  if ((visibilityOffsets & 0x8000000) != 0 && LODWORD(self->_blendColorRed) == v3 && LODWORD(self->_blendColorGreen) == v3)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v6 = visibilityOffsets | 0x8000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x8000000;
  if ((visibilityOffsets & 0x1000) == 0)
  {
    _MTLMessageContextPush_();
    v6 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v6 & 0xFFFFEFFF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  LODWORD(self->_blendColorRed) = v3;
  LODWORD(self->_blendColorGreen) = v3;
}

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  v4 = *&referenceValue;
  v5 = *&value;
  _MTLMessageContextBegin_();
  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x10000) != 0)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  if ((visibilityOffsets & 0x8000000) != 0 && LODWORD(self->_blendColorRed) == v5 && LODWORD(self->_blendColorGreen) == v4)
  {
    _MTLMessageContextPush_();
    visibilityOffsets = self->_visibilityOffsets;
  }

  v8 = visibilityOffsets | 0x8000000;
  LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x8000000;
  if ((visibilityOffsets & 0x1000) == 0)
  {
    _MTLMessageContextPush_();
    v8 = self->_visibilityOffsets;
  }

  LODWORD(self->_visibilityOffsets) = v8 & 0xFFFFEFFF;
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
  LODWORD(self->_blendColorRed) = v5;
  LODWORD(self->_blendColorGreen) = v4;
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  _MTLMessageContextBegin_();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (index >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  [v7 setStoreAction:{action, _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v7, index, HIDWORD(self->_visibilityOffsets))}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthStoreAction:(unint64_t)action
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setDepthStoreAction:];
  }

  v5 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  [v5 setStoreAction:{action, _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v5, 8uLL, HIDWORD(self->_visibilityOffsets))}];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setStencilStoreAction:];
  }

  v5 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  [v5 setStoreAction:{action, _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v5, 9uLL, HIDWORD(self->_visibilityOffsets))}];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreAction:action];
}

- (void)setColorStoreActionOptions:(unint64_t)options atIndex:(unint64_t)index
{
  _MTLMessageContextBegin_();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (index >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  [v7 setStoreActionOptions:{options, _MTLDebugValidateDeferredStoreActionOptionsOnDevice(self->super.super.super._device, options, v7, index, HIDWORD(self->_visibilityOffsets))}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthStoreActionOptions:(unint64_t)options
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setDepthStoreActionOptions:];
  }

  v5 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  [v5 setStoreActionOptions:{options, _MTLDebugValidateDeferredStoreActionOptionsOnDevice(self->super.super.super._device, options, v5, 8, HIDWORD(self->_visibilityOffsets))}];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setDepthStoreActionOptions:options];
}

- (void)setStencilStoreActionOptions:(unint64_t)options
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder setStencilStoreActionOptions:];
  }

  v5 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
  [v5 setStoreActionOptions:{options, _MTLDebugValidateDeferredStoreActionOptionsOnDevice(self->super.super.super._device, options, v5, 9, HIDWORD(self->_visibilityOffsets))}];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setStencilStoreActionOptions:options];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  if (mode == 2)
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  if ((offset & 7) != 0)
  {
    offsetCopy = offset;
    v23 = 8;
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxVisibilityQueryOffset:offsetCopy]< offset)
  {
    offsetCopy3 = offset;
    maxVisibilityQueryOffset = [(MTLToolsDevice *)self->super.super.super._device maxVisibilityQueryOffset];
    _MTLMessageContextPush_();
  }

  if (mode)
  {
    begin = self->_viewports.__begin_;
    if (!begin)
    {
      operator new();
    }

    v10 = *(begin + 1);
    v8 = begin + 8;
    v9 = v10;
    if (v10)
    {
      v11 = v8;
      do
      {
        v12 = *(v9 + 7);
        v13 = v12 >= offset;
        v14 = v12 < offset;
        if (v13)
        {
          v11 = v9;
        }

        v9 = *&v9[8 * v14];
      }

      while (v9);
      if (v11 != v8 && *(v11 + 7) <= offset)
      {
        offsetCopy3 = offset;
        _MTLMessageContextPush_();
      }
    }

    _descriptorPrivate = [self->_frontFacingWinding _descriptorPrivate];
    v16 = *(_descriptorPrivate + 8);
    if (!v16)
    {
      _MTLMessageContextPush_();
      v16 = *(_descriptorPrivate + 8);
    }

    if (offset + 8 > [v16 length])
    {
      [*(_descriptorPrivate + 8) length];
      _MTLMessageContextPush_();
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    visibilityOffsets = self->_visibilityOffsets;
    if ((visibilityOffsets & 0x10000000) != 0 && self->_visibilityResultOffset == mode && self->_width == offset)
    {
      _MTLMessageContextPush_();
      visibilityOffsets = self->_visibilityOffsets;
    }

    v19 = visibilityOffsets | 0x10000000;
    LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x10000000;
    if ((visibilityOffsets & 0x2000) == 0)
    {
      _MTLMessageContextPush_();
      v19 = self->_visibilityOffsets;
    }

    LODWORD(self->_visibilityOffsets) = v19 & 0xFFFFDFFF;
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  if (mode)
  {
    v20 = self->_viewports.__begin_;
    offsetCopy4 = offset;
    std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int>(v20, v20 + 1, &offsetCopy4, &offsetCopy4);
  }

  self->_visibilityResultOffset = mode;
  self->_width = offset;
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (MTLReportFailureTypeEnabled())
  {
    visibilityOffsets = self->_visibilityOffsets;
    if ((visibilityOffsets & 0x20000000) != 0)
    {
      v12 = LODWORD(self->_blendColorBlue) == LODWORD(red) && LODWORD(self->_blendColorAlpha) == LODWORD(green);
      v13 = v12 && LODWORD(self->_tessellationFactorScale) == LODWORD(blue);
      if (v13 && *(&self->_tessellationFactorScale + 1) == LODWORD(alpha))
      {
        _MTLMessageContextPush_();
        visibilityOffsets = self->_visibilityOffsets;
      }
    }

    v15 = visibilityOffsets | 0x20000000;
    LODWORD(self->_visibilityOffsets) = visibilityOffsets | 0x20000000;
    if ((visibilityOffsets & 0x4000) == 0)
    {
      _MTLMessageContextPush_();
      v15 = self->_visibilityOffsets;
    }

    LODWORD(self->_visibilityOffsets) = v15 & 0xFFFFBFFF;
  }

  _MTLMessageContextEnd();
  v16 = [(MTLToolsObject *)self baseObject:0];
  *&v17 = red;
  *&v18 = green;
  *&v19 = blue;
  *&v20 = alpha;
  [v16 setBlendColorRed:v17 green:v18 blue:v19 alpha:v20];
  self->_blendColorBlue = red;
  self->_blendColorAlpha = green;
  self->_tessellationFactorScale = blue;
  *(&self->_tessellationFactorScale + 1) = alpha;
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level atIndex:(unint64_t)index
{
  if (index >= 8)
  {
    [MTLDebugRenderCommandEncoder setColorResolveTexture:slice:depthPlane:level:atIndex:];
  }

  v13 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  _descriptorPrivate = [v13 _descriptorPrivate];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], texture, index, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], slice, plane, level, *_descriptorPrivate, self->_vertexBuiltinArguments, v15);
  _MTLMessageContextEnd();
  [v13 setResolveTexture:texture];
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setColorResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert atIndex:(unint64_t)index
{
  invertCopy = invert;
  if (index >= 8)
  {
    [MTLDebugRenderCommandEncoder setColorResolveTexture:slice:depthPlane:level:yInvert:atIndex:];
  }

  v14 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  _descriptorPrivate = [v14 _descriptorPrivate];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], texture, index, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], slice, plane, level, *_descriptorPrivate, self->_vertexBuiltinArguments, v17);
  _MTLMessageContextEnd();
  [v14 setResolveTexture:texture];
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  v11 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  _descriptorPrivate = [v11 _descriptorPrivate];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], texture, 8uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], slice, plane, level, *_descriptorPrivate, self->_vertexBuiltinArguments, v13);
  _MTLMessageContextEnd();
  [v11 setResolveTexture:texture];
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert
{
  invertCopy = invert;
  v12 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  _descriptorPrivate = [v12 _descriptorPrivate];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], texture, 8uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], slice, plane, level, *_descriptorPrivate, self->_vertexBuiltinArguments, v15);
  _MTLMessageContextEnd();
  [v12 setResolveTexture:texture];
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level
{
  v11 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  _descriptorPrivate = [v11 _descriptorPrivate];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], texture, 9uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], slice, plane, level, *_descriptorPrivate, self->_vertexBuiltinArguments, v13);
  _MTLMessageContextEnd();
  [v11 setResolveTexture:texture];
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setStencilResolveTexture:(id)texture slice:(unint64_t)slice depthPlane:(unint64_t)plane level:(unint64_t)level yInvert:(BOOL)invert
{
  invertCopy = invert;
  v12 = [*objc_msgSend(self->_frontFacingWinding "_descriptorPrivate")];
  _descriptorPrivate = [v12 _descriptorPrivate];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  _MTLValidateResolveTextureWithContext([(MTLToolsObject *)self device], texture, 9uLL, [(MTLDebugRenderCommandEncoder *)self width], [(MTLDebugRenderCommandEncoder *)self height], slice, plane, level, *_descriptorPrivate, self->_vertexBuiltinArguments, v15);
  _MTLMessageContextEnd();
  [v12 setResolveTexture:texture];
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)_validateLBRT:(_MTLMessageContext *)t
{
  for (i = 0; i != 8; ++i)
  {
    descriptor = [objc_msgSend(objc_msgSend(objc_msgSend(self->_peakPerSampleStorage descriptor];
    if (descriptor)
    {
      v6 = descriptor;
      colorAttachments = [self->_frontFacingWinding colorAttachments];
      v8 = *&self->_minBound;
      v9 = i;
      if (v8)
      {
        v9 = [v8 getPhysicalIndexForLogicalIndex:i];
      }

      if (v6 != [objc_msgSend(objc_msgSend(colorAttachments objectAtIndexedSubscript:{v9), "texture"), "pixelFormat"}])
      {
        Name = MTLPixelFormatGetName();
        v11 = MTLPixelFormatGetName();
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)validateCommonDrawErrors:(unint64_t)errors instanceCount:(unint64_t)count baseInstance:(unint64_t)instance maxVertexID:(unint64_t)d
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v11 = errors - 5;
  if (errors >= 5 && (v11 > 4 || (self->_vertexBuiltinArguments & 1) == 0))
  {
    _MTLMessageContextPush_();
  }

  rasterizationRateMap = [self->_frontFacingWinding rasterizationRateMap];
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && rasterizationRateMap)
  {
    _MTLMessageContextPush_();
  }

  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
    if (count)
    {
      goto LABEL_10;
    }
  }

  else if (count)
  {
    goto LABEL_10;
  }

  dCopy = 0;
  _MTLMessageContextPush_();
LABEL_10:
  peakPerSampleStorage = self->_peakPerSampleStorage;
  if (peakPerSampleStorage)
  {
    if (![self->_peakPerSampleStorage mtl4Descriptor] && !objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") && !objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor"))
    {
      if (![self->_peakPerSampleStorage descriptor])
      {
        _MTLMessageContextPush_();
      }

      if ([objc_msgSend(self->_peakPerSampleStorage descriptor] == 1)
      {
        [(MTLDebugRenderCommandEncoder *)self _validateLBRT:&v31];
      }
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v14 = self->_peakPerSampleStorage;
  if ([v14 mtl4Descriptor] || objc_msgSend(v14, "mtl4MeshDescriptor") || objc_msgSend(v14, "mtl4TileDescriptor"))
  {
    goto LABEL_62;
  }

  descriptor = [self->_peakPerSampleStorage descriptor];
  attachmentWriteMask = [self->_peakPerSampleStorage attachmentWriteMask];
  self->_objectThreadsPerTG.width |= (([(MTLDepthStencilDescriptor *)self->_defaultDepthStencilDescriptor attachmentWriteMask]<< 32) | 0xFFFFFFFFLL) & attachmentWriteMask;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  inputPrimitiveTopology = [descriptor inputPrimitiveTopology];
  if (inputPrimitiveTopology <= 1)
  {
    if (!inputPrimitiveTopology)
    {
      goto LABEL_32;
    }

    if (inputPrimitiveTopology == 1)
    {
      if (errors)
      {
        goto LABEL_65;
      }

      goto LABEL_32;
    }

LABEL_66:
    abort();
  }

  if (inputPrimitiveTopology != 2)
  {
    if (inputPrimitiveTopology == 3)
    {
      if (v11 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    goto LABEL_66;
  }

  if (errors - 3 < 0xFFFFFFFFFFFFFFFELL)
  {
LABEL_65:
    _MTLMessageContextPush_();
  }

LABEL_32:
  v18 = self->_peakPerSampleStorage;
  v19 = instance + count;
  if (*(v18 + 40) < d)
  {
    dCopy = d;
    _MTLMessageContextPush_();
  }

  if (*(v18 + 48) < v19)
  {
    dCopy = v19;
    _MTLMessageContextPush_();
  }

  if ((self->_openGLModeEnabled & 3) != 0)
  {
    v20 = self->_peakPerSampleStorage;
    device = [(MTLToolsObject *)self device];
    if (*(v20 + 152))
    {
      v21 = 0;
      v22 = v20;
      do
      {
        v23 = *(v22 + 160);
        p_type = &self->_vertexBuffers[v23].type;
        if (*p_type != 1 || p_type[1])
        {
          dCopy = MTLArgumentTypeToString(0);
          v29 = v23;
          _MTLMessageContextPush_();
          v25 = *p_type;
          *(p_type + 1) = 1;
          if ((v25 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          *(p_type + 1) = 1;
        }

        if (!p_type[1])
        {
          v26 = *(v22 + 168);
          if (v26 == -1)
          {
            goto LABEL_50;
          }

          if (v26)
          {
            if (p_type[6] != -1)
            {
              dCopy = p_type[6];
              v29 = *(v22 + 160);
              _MTLMessageContextPush_();
              v26 = *(v22 + 168);
              if (v26 == -1)
              {
LABEL_50:
                v26 = p_type[6];
                if (v26 == -1)
                {
                  dCopy = *(v22 + 160);
                  _MTLMessageContextPush_();
                  v26 = *(v22 + 168);
                  if (v26 == -1)
                  {
                    v26 = p_type[6];
                  }
                }
              }
            }

            if (([(MTLDevice *)device supportsUnalignedVertexFetch:dCopy]& 1) == 0 && v26 + 1 >= 2 && (v26 & 3) != 0)
            {
              dCopy = v26;
              v29 = *(v22 + 160);
              _MTLMessageContextPush_();
            }
          }
        }

LABEL_44:
        ++v21;
        v22 += 16;
      }

      while (*(v20 + 152) > v21);
    }
  }

  [self->_peakPerSampleStorage validationReflection];
  [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
  [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
  [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
  if ([self->_peakPerSampleStorage isMeshShaderPipeline])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
LABEL_62:
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3, dCopy];
}

- (void)validateCommonDrawErrors:(unint64_t)errors
{
  errorsCopy = errors;
  v92[2] = *MEMORY[0x277D85DE8];
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  descriptor = [self->_peakPerSampleStorage descriptor];
  mtl4Descriptor = [self->_peakPerSampleStorage mtl4Descriptor];
  mtl4MeshDescriptor = [self->_peakPerSampleStorage mtl4MeshDescriptor];
  v7 = self->_scissorRects.__cap_ - self->_scissorRects.__end_;
  if (v7 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__cap_ - self->_viewports.__end_) >> 4) != v7 >> 5)
  {
    v65 = v7 >> 5;
    v67 = 0xAAAAAAAAAAAAAAABLL * ((self->_viewports.__cap_ - self->_viewports.__end_) >> 4);
    _MTLMessageContextPush_();
  }

  peakPerSampleStorage = self->_peakPerSampleStorage;
  if (![peakPerSampleStorage mtl4Descriptor] && !objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") && !objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor") && self->_openGLModeEnabled)
  {
    [(MTLDebugRenderCommandEncoder *)self updatePipelineData];
    v10 = self->_peakPerSampleStorage;
    if (v10 && self->_resolvedRasterSampleCount && ([v10 isImageBlockLayoutInputCompatibleWithOutputOf:?] & 1) == 0)
    {
      _MTLMessageContextPush_();
      if (!descriptor)
      {
        goto LABEL_17;
      }
    }

    else if (!descriptor)
    {
      goto LABEL_17;
    }

    if ([objc_msgSend(descriptor "vertexFunction")] && !objc_msgSend(self->_frontFacingWinding, "renderTargetArrayLength"))
    {
      _MTLMessageContextPush_();
    }
  }

LABEL_17:
  descriptor2 = [(MTLDepthStencilDescriptor *)self->_defaultDepthStencilDescriptor descriptor];
  protectionOptions = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions];
  v11 = self->_peakPerSampleStorage;
  if ([v11 mtl4Descriptor] || objc_msgSend(v11, "mtl4MeshDescriptor") || objc_msgSend(v11, "mtl4TileDescriptor"))
  {
    if ((errorsCopy & 1) != 0 && (self->_openGLModeEnabled & 0xE) != 0)
    {
      v91 = 0uLL;
      memset(v92, 0, 15);
      v12 = self->_peakPerSampleStorage;
      if ([(MTLToolsDevice *)self->super.super.super._device supportsUnalignedVertexFetch])
      {
        v13 = *(v12 + 152);
        if (v13)
        {
          v14 = (v12 + 160);
          do
          {
            v15 = *v14;
            v14 += 2;
            *(&v92[-2] + v15) = 1;
            --v13;
          }

          while (v13);
        }
      }

      vertexFunctionDescriptor = [mtl4Descriptor vertexFunctionDescriptor];
      v18 = _MTL4DebugFunctionDescriptorName(vertexFunctionDescriptor, v17);
      device = self->super.super.super._device;
      v75 = v18;
      v19 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
      validateFunctionArguments(device, @"Vertex", v75, v19, &self->_vertexBuffers[0].type, &self->_vertexTextures[0].type, &self->_vertexSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, &self->_threadgroupMemoryArguments[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 1, &v91, v89, self->_colorAttachmentMap);
    }

    if ((errorsCopy & 2) != 0 && (self->_openGLModeEnabled & 0x70) != 0)
    {
      if (mtl4Descriptor)
      {
        v20 = mtl4Descriptor;
      }

      else
      {
        v20 = mtl4MeshDescriptor;
      }

      fragmentFunctionDescriptor = [v20 fragmentFunctionDescriptor];
      v76 = _MTL4DebugFunctionDescriptorName(fragmentFunctionDescriptor, v22);
      v72 = self->super.super.super._device;
      v69 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
      validateFunctionArguments(v72, @"Fragment", v76, v69, &self->_fragmentBuffers[0].type, &self->_fragmentTextures[0].type, &self->_fragmentSamplers[0].type, [self->_frontFacingWinding colorAttachments], objc_msgSend(objc_msgSend(self->_peakPerSampleStorage, "descriptor"), "colorAttachments"), objc_msgSend(self->_frontFacingWinding, "renderTargetArrayLength"), descriptor2, self->_commandBuffer, protectionOptions, &self->_threadgroupMemoryArguments[0].type, -[MTLToolsDevice maxComputeLocalMemorySizes](self->super.super.super._device, "maxComputeLocalMemorySizes"), 1, 0, v89, self->_colorAttachmentMap);
    }

    if ((errorsCopy & 8) != 0 && (*(&self->_openGLModeEnabled + 1) & 7) != 0)
    {
      objectFunctionDescriptor = [mtl4MeshDescriptor objectFunctionDescriptor];
      v77 = _MTL4DebugFunctionDescriptorName(objectFunctionDescriptor, v24);
      v73 = self->super.super.super._device;
      v70 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
      [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
      validateFunctionArguments(v73, @"Object", v77, v70, &self->_objectBuffers[0].type, &self->_objectTextures[0].type, &self->_objectSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, &self->_objectThreadgroupMemoryLengths[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 0, 0, v89, self->_colorAttachmentMap);
    }

    if ((errorsCopy & 0x10) != 0)
    {
      if ((*(&self->_openGLModeEnabled + 1) & 0x70) != 0)
      {
        meshFunctionDescriptor = [mtl4MeshDescriptor meshFunctionDescriptor];
        v27 = _MTL4DebugFunctionDescriptorName(meshFunctionDescriptor, v26);
        v28 = self->super.super.super._device;
        v29 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
        validateFunctionArguments(v28, @"Mesh", v27, v29, &self->_meshBuffers[0].type, &self->_meshTextures[0].type, &self->_meshSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, 0, 0, 0, 0, v89, self->_colorAttachmentMap);
      }

LABEL_39:
      if (([self->_peakPerSampleStorage isMeshShaderPipeline] & 1) == 0)
      {
        _MTLMessageContextPush_();
      }
    }
  }

  else
  {
    v81 = errorsCopy;
    if ((errorsCopy & 1) != 0 && (self->_openGLModeEnabled & 0xE) != 0)
    {
      v91 = 0uLL;
      memset(v92, 0, 15);
      v51 = self->_peakPerSampleStorage;
      if ([(MTLToolsDevice *)self->super.super.super._device supportsUnalignedVertexFetch])
      {
        v52 = *(v51 + 152);
        if (v52)
        {
          v53 = (v51 + 160);
          do
          {
            v54 = *v53;
            v53 += 2;
            *(&v92[-2] + v54) = 1;
            --v52;
          }

          while (v52);
        }
      }

      v83 = self->super.super.super._device;
      v78 = [objc_msgSend(descriptor "vertexFunction")];
      v55 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxVertexSamplers];
      validateFunctionArguments(v83, @"Vertex", v78, v55, &self->_vertexBuffers[0].type, &self->_vertexTextures[0].type, &self->_vertexSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, &self->_threadgroupMemoryArguments[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 1, &v91, v89, self->_colorAttachmentMap);
      errorsCopy = v81;
    }

    if ((errorsCopy & 2) != 0 && (self->_openGLModeEnabled & 0x70) != 0)
    {
      v84 = self->super.super.super._device;
      fragmentFunction = [descriptor fragmentFunction];
      if (!fragmentFunction)
      {
        fragmentFunction = [objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
      }

      name = [fragmentFunction name];
      v74 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentTextures];
      [(MTLToolsDevice *)self->super.super.super._device maxFragmentSamplers];
      validateFunctionArguments(v84, @"Fragment", name, v74, &self->_fragmentBuffers[0].type, &self->_fragmentTextures[0].type, &self->_fragmentSamplers[0].type, [self->_frontFacingWinding colorAttachments], objc_msgSend(objc_msgSend(self->_peakPerSampleStorage, "descriptor"), "colorAttachments"), objc_msgSend(self->_frontFacingWinding, "renderTargetArrayLength"), descriptor2, self->_commandBuffer, protectionOptions, &self->_threadgroupMemoryArguments[0].type, -[MTLToolsDevice maxComputeLocalMemorySizes](self->super.super.super._device, "maxComputeLocalMemorySizes"), 1, 0, v89, self->_colorAttachmentMap);
      errorsCopy = v81;
    }

    v57 = &OBJC_IVAR___MTLGPUDebugComputePipelineState__threadgroupArgumentOffset;
    if ((errorsCopy & 8) != 0)
    {
      if ((*(&self->_openGLModeEnabled + 1) & 7) != 0)
      {
        v85 = self->super.super.super._device;
        v80 = [objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
        v58 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
        v57 = &OBJC_IVAR___MTLGPUDebugComputePipelineState__threadgroupArgumentOffset;
        validateFunctionArguments(v85, @"Object", v80, v58, &self->_objectBuffers[0].type, &self->_objectTextures[0].type, &self->_objectSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, &self->_objectThreadgroupMemoryLengths[0].type, [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes], 0, 0, v89, self->_colorAttachmentMap);
      }

      v59 = self + v57[297];
      [self->_peakPerSampleStorage _validateThreadgroupSize:v59 stage:8 context:v89];
      v91 = *v59;
      v92[0] = *(v59 + 2);
      v60 = self->_peakPerSampleStorage;
      if (v60)
      {
        objc_msgSend_requiredThreadsPerObjectThreadgroup(v60);
      }

      errorsCopy = v81;
      validateDispatchThreadsPerThreadgroupWithRTPTG();
    }

    if ((errorsCopy & 0x10) != 0)
    {
      if ((*(&self->_openGLModeEnabled + 1) & 0x70) != 0)
      {
        v86 = self->super.super.super._device;
        v61 = [objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
        v62 = [objc_msgSend(self->_peakPerSampleStorage "validationReflection")];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
        [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
        validateFunctionArguments(v86, @"Mesh", v61, v62, &self->_meshBuffers[0].type, &self->_meshTextures[0].type, &self->_meshSamplers[0].type, 0, 0, 0, 0, self->_commandBuffer, protectionOptions, 0, 0, 0, 0, v89, self->_colorAttachmentMap);
      }

      [self->_peakPerSampleStorage _validateThreadgroupSize:&self->_meshThreadsPerTG.height stage:16 context:v89];
      v63 = self + v57[297];
      v91 = *v63;
      v92[0] = *(v63 + 2);
      v64 = self->_peakPerSampleStorage;
      if (v64)
      {
        objc_msgSend_requiredThreadsPerObjectThreadgroup(v64);
      }

      validateDispatchThreadsPerThreadgroupWithRTPTG();
      goto LABEL_39;
    }
  }

  v30 = self->_peakPerSampleStorage;
  if (![v30 mtl4Descriptor] && !objc_msgSend(v30, "mtl4MeshDescriptor") && !objc_msgSend(v30, "mtl4TileDescriptor"))
  {
    maxVertexAmplificationCount = [objc_msgSend(self->_peakPerSampleStorage "descriptor")];
    meshDescriptor = [self->_peakPerSampleStorage meshDescriptor];
    if (meshDescriptor)
    {
      maxVertexAmplificationCount = [meshDescriptor maxVertexAmplificationCount];
    }

    first = self->_updatedFences.__map_.__first_;
    if (!first || maxVertexAmplificationCount && maxVertexAmplificationCount < first)
    {
      v66 = self->_updatedFences.__map_.__first_;
      v68 = maxVertexAmplificationCount;
      _MTLMessageContextPush_();
    }
  }

  frontFacingWinding = self->_frontFacingWinding;
  v35 = [(MTLDepthStencilDescriptor *)self->_defaultDepthStencilDescriptor descriptor:v66];
  if (v35)
  {
    v36 = v35;
    if ([v35 depthCompareFunction] != 7 && objc_msgSend(v36, "depthCompareFunction") && !objc_msgSend(objc_msgSend(frontFacingWinding, "depthAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }

    if ([v36 isDepthWriteEnabled] && !objc_msgSend(objc_msgSend(frontFacingWinding, "depthAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }

    if (usesStencilTexture([v36 frontFaceStencil]) && !objc_msgSend(objc_msgSend(frontFacingWinding, "stencilAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }

    if (usesStencilTexture([v36 backFaceStencil]) && !objc_msgSend(objc_msgSend(frontFacingWinding, "stencilAttachment"), "texture"))
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  LODWORD(self->_visibilityOffsets) = self->_visibilityOffsets & 0x7FFF0001 | 0xFFFE;
  if (self->_openGLModeEnabled < 0)
  {
    renderTargetArrayLength = [self->_frontFacingWinding renderTargetArrayLength];
    v38 = [objc_msgSend(self->_peakPerSampleStorage "descriptor")];
    if (!v38)
    {
      v38 = [objc_msgSend(self->_peakPerSampleStorage "meshDescriptor")];
    }

    for (i = 0; i != 8; ++i)
    {
      v40 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
      if (v40)
      {
        v41 = v40;
        if ([v40 texture])
        {
          if ([v41 storeAction] == 1 && objc_msgSend(objc_msgSend(v38, "objectAtIndexedSubscript:", i), "writeMask"))
          {
            v42 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v41 _descriptorPrivate], renderTargetArrayLength);
            [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v42];
          }
        }
      }
    }

    v43 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
    v44 = v43;
    if (v43 && [v43 texture])
    {
      v45 = [v44 storeAction] != 1 || descriptor2 == 0;
      if (!v45 && [descriptor2 isDepthWriteEnabled])
      {
        v46 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v44 _descriptorPrivate], renderTargetArrayLength);
        [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v46];
      }
    }

    v47 = [objc_msgSend(self->_frontFacingWinding "colorAttachments")];
    if (v47)
    {
      v48 = v47;
      if ([v47 texture])
      {
        if ([v48 storeAction] == 1)
        {
          texture = [v48 texture];
          if (texture != [v44 texture] && descriptor2 && ((writesStencilTexture(objc_msgSend(descriptor2, "backFaceStencil")) & 1) != 0 || writesStencilTexture(objc_msgSend(descriptor2, "frontFaceStencil"))))
          {
            v50 = -[MTLDebugRenderTargetAttachmentInfo initWithDesc:renderTargetArrayLength:]([MTLDebugRenderTargetAttachmentInfo alloc], "initWithDesc:renderTargetArrayLength:", [v48 _descriptorPrivate], renderTargetArrayLength);
            [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v50];
          }
        }
      }
    }

    [self->_maxVertexBuffers addActiveRenderTargets:self->_commandBuffer];
  }

  *&self->_openGLModeEnabled = 0;
}

- (void)_validateAllFunctionArguments:(_MTLMessageContext *)arguments
{
  v5 = 0;
  p_type = &self->_vertexBuffers[0].type;
  do
  {
    validateArg(0, v5++, p_type, arguments);
    p_type += 11;
  }

  while (v5 != 36);
  v7 = 0;
  v8 = &self->_vertexTextures[0].type;
  do
  {
    validateArg(2, v7++, v8, arguments);
    v8 += 11;
  }

  while (v7 != 128);
  v9 = 0;
  v10 = &self->_vertexSamplers[0].type;
  do
  {
    validateArg(3, v9++, v10, arguments);
    v10 += 11;
  }

  while (v9 != 16);
  v11 = 0;
  v12 = &self->_fragmentBuffers[0].type;
  do
  {
    validateArg(0, v11++, v12, arguments);
    v12 += 11;
  }

  while (v11 != 31);
  v13 = 0;
  v14 = &self->_fragmentTextures[0].type;
  do
  {
    validateArg(2, v13++, v14, arguments);
    v14 += 11;
  }

  while (v13 != 128);
  v15 = 0;
  v16 = &self->_fragmentSamplers[0].type;
  do
  {
    validateArg(3, v15++, v16, arguments);
    v16 += 11;
  }

  while (v15 != 16);
  v17 = 0;
  v18 = &self->_threadgroupMemoryArguments[0].type;
  do
  {
    validateArg(1, v17++, v18, arguments);
    v18 += 11;
  }

  while (v17 != 31);
  v19 = 0;
  v20 = &self->_objectBuffers[0].type;
  do
  {
    validateArg(0, v19++, v20, arguments);
    v20 += 11;
  }

  while (v19 != 31);
  v21 = 0;
  v22 = &self->_objectTextures[0].type;
  do
  {
    validateArg(2, v21++, v22, arguments);
    v22 += 11;
  }

  while (v21 != 128);
  v23 = 0;
  v24 = &self->_objectSamplers[0].type;
  do
  {
    validateArg(3, v23++, v24, arguments);
    v24 += 11;
  }

  while (v23 != 16);
  v25 = 0;
  v26 = &self->_objectThreadgroupMemoryLengths[0].type;
  do
  {
    validateArg(1, v25++, v26, arguments);
    v26 += 11;
  }

  while (v25 != 31);
  v27 = 0;
  v28 = &self->_meshBuffers[0].type;
  do
  {
    validateArg(0, v27++, v28, arguments);
    v28 += 11;
  }

  while (v27 != 31);
  v29 = 0;
  v30 = &self->_meshTextures[0].type;
  do
  {
    validateArg(2, v29++, v30, arguments);
    v30 += 11;
  }

  while (v29 != 128);
  v31 = 0;
  v32 = &self->_meshSamplers[0].type;
  do
  {
    validateArg(3, v31++, v32, arguments);
    v32 += 11;
  }

  while (v31 != 16);
}

- (void)validateDrawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount function:(const char *)function
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:primitives instanceCount:instanceCount baseInstance:0 maxVertexID:start + countCopy - 1];
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  [(MTLDebugRenderCommandEncoder *)self validateDrawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount function:"[MTLDebugRenderCommandEncoder drawPrimitives:vertexStart:vertexCount:instanceCount:]"];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  [(MTLDebugRenderCommandEncoder *)self validateDrawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:1 function:"[MTLDebugRenderCommandEncoder drawPrimitives:vertexStart:vertexCount:]"];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)validateDrawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount function:(const char *)function
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, type, buffer, "indexBuffer", offset, 1, count, &v18);
    if (type)
    {
      if (type == 1)
      {
        v16 = 32;
      }

      else
      {
        _MTLMessageContextPush_();
        v16 = 0;
      }
    }

    else
    {
      v16 = 16;
    }

    v17 = -1 << v16;
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:primitives instanceCount:instanceCount baseInstance:0 maxVertexID:~v17];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount
{
  [MTLDebugRenderCommandEncoder validateDrawIndexedPrimitives:"validateDrawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:function:" indexCount:"[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:]" indexType:? indexBuffer:? indexBufferOffset:? instanceCount:? function:?];
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset
{
  [(MTLDebugRenderCommandEncoder *)self validateDrawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferOffset:offset instanceCount:1 function:"[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:]"];
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:baseObject2 indexBufferOffset:offset];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    if (count <= 1)
    {
      countCopy = 1;
    }

    else
    {
      countCopy = count;
    }

    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:primitives instanceCount:instanceCount baseInstance:instance maxVertexID:start + countCopy - 1];
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v14 = "[MTLDebugRenderCommandEncoder drawPrimitives:vertexStart:vertexCount:instanceCount:baseInstance:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, type, buffer, "indexBuffer", offset, 1, count, &v20);
    if (type)
    {
      if (type == 1)
      {
        v17 = 32;
      }

      else
      {
        _MTLMessageContextPush_();
        v17 = 0;
      }
    }

    else
    {
      v17 = 16;
    }

    v18 = -1 << v17;
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:primitives instanceCount:instanceCount baseInstance:instance maxVertexID:~v18];
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v19 = "[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:baseVertex:baseInstance:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:{1, v19}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateIndirectBuffer(self->super.super.super._device, buffer, offset, 16, "sizeof(MTLDrawPrimitivesIndirectArguments)", &v10);
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:primitives instanceCount:1 baseInstance:0 maxVertexID:1];
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v9 = "[MTLDebugRenderCommandEncoder drawPrimitives:indirectBuffer:indirectBufferOffset:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:{1, v9}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(id)buffer indexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateIndirectBuffer(self->super.super.super._device, indirectBuffer, bufferOffset, 20, "sizeof(MTLDrawIndexedPrimitivesIndirectArguments)", &v18);
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, type, buffer, "indexBuffer", offset, 0, 0, &v18);
    if (type)
    {
      if (type == 1)
      {
        v15 = 32;
      }

      else
      {
        _MTLMessageContextPush_();
        v15 = 0;
      }
    }

    else
    {
      v15 = 16;
    }

    v16 = -1 << v15;
    _MTLMessageContextEnd();
    [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:primitives instanceCount:1 baseInstance:0 maxVertexID:~v16];
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if ([objc_msgSend(objc_msgSend(self->_peakPerSampleStorage "descriptor")])
    {
      v17 = "[MTLDebugRenderCommandEncoder drawIndexedPrimitives:indexType:indexBuffer:indexBufferOffset:indirectBuffer:indirectBufferOffset:]";
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:{1, v17}];
  [self->_maxVertexBuffers addObject:indirectBuffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setObjectBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    indexCopy = index;
    maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize:indexCopy]< length)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_objectBuffers[index].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_objectBuffers[index].type;
  *p_type = length != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = length;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]> index)
  {
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!offset)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  v10 = *(buffer + 8);
  if (v10 <= offset)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_objectBuffers[index].type, &v14);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectBuffers[index].type;
  if (MTLReportFailureTypeEnabled() && buffer && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == offset && p_type[4] == v10 && p_type[2] == buffer && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:buffer offset:v12 attributeStride:v13 atIndex:?];
  }

  *p_type = v10 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = buffer;
  p_type[3] = 0;
  p_type[4] = v10;
  p_type[5] = offset;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    p_type = &self->_objectBuffers[index].type;
    validateArg(0, index, p_type, &v14);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= offset)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_objectBuffers[index].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == offset && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:v10 offset:v12 attributeStride:v13 atIndex:?];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = offset;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v35, 0, sizeof(v35));
  [(MTLToolsObject *)selfCopy device];
  _MTLMessageContextBegin_();
  if (BYTE2(selfCopy->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)selfCopy->super.super.super._device maxComputeBuffers])
  {
    v28 = location + length;
    maxComputeBuffers = [(MTLToolsDevice *)selfCopy->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  v33 = location;
  v34 = length;
  offsetsCopy = offsets;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v10 = 0;
  v11 = selfCopy + 88 * location;
  do
  {
    if (!buffers[v10])
    {
      if (!offsets[v10])
      {
        goto LABEL_17;
      }

      v28 = v10;
      maxComputeBuffers = offsets[v10];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = v10;
      goto LABEL_16;
    }

    device = selfCopy->super.super.super._device;
    if (device != [buffers[v10] device])
    {
      v28 = v10;
      _MTLMessageContextPush_();
    }

    if (offsets[v10] >= *(buffers[v10] + 8))
    {
      v30 = v10;
      v31 = *(buffers[v10] + 8);
      v28 = v10;
      maxComputeBuffers = offsets[v10];
LABEL_16:
      _MTLMessageContextPush_();
    }

LABEL_17:
    if (location + v10 <= 0x1E)
    {
      validateArg(0, location + v10, (v11 + 49616), &v35);
    }

    ++v10;
    v11 += 88;
  }

  while (length != v10);
  _MTLMessageContextEnd();
  v13 = &selfCopy->_attachmentInfo[1] + 88 * location;
  v14 = v36;
  do
  {
    if (*buffers)
    {
      v15 = *(*buffers + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = selfCopy;
    [selfCopy->_maxVertexBuffers addObject:v28 retained:maxComputeBuffers purgeable:{v30, v31}];
    *v14 = [*buffers baseObject];
    v17 = (v13 + 49616);
    v18 = *buffers;
    v19 = *offsets;
    if (MTLReportFailureTypeEnabled() && v18 && (*(v13 + 49608) & 1) == 0 && *(v13 + 49584) == -1 && *(v13 + 49576) == v19 && *(v13 + 49568) == v15 && *(v13 + 49552) == v18 && (*(v13 + 49560) | *(v13 + 49544)) == 0 && *(v13 + 49592) == 0 && *(v13 + 49612) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:v18 offset:v20 attributeStride:v21 atIndex:?];
    }

    *(v13 + 49536) = v15 != 0;
    *(v13 + 49537) = 0;
    *(v13 + 49544) = 0;
    *(v13 + 49552) = v18;
    *(v13 + 49560) = 0;
    *(v13 + 49568) = v15;
    *(v13 + 49576) = v19;
    *(v13 + 49584) = -1;
    *(v13 + 49592) = 0;
    *(v13 + 49600) = 0;
    *(v13 + 49608) = 0;
    v13 += 88;
    ++offsets;
    ++v14;
    ++buffers;
    *(v17 - 1) = 0;
    *v17 = 0;
    --length;
    selfCopy = v16;
  }

  while (length);
LABEL_50:
  [-[MTLToolsObject baseObject](selfCopy baseObject];
  *&selfCopy->_openGLModeEnabled |= 0x100u;
}

- (void)setObjectTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeTextures]<= index)
  {
    indexCopy = index;
    maxComputeTextures = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_10;
    }
  }

  else if (!texture)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (index <= 0x7F)
  {
    validateArg(2, index, &self->_objectTextures[index].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectTextures[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == texture && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:texture offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = texture != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = texture;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x200u;
}

- (void)setObjectTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures])
  {
    v23 = location + length;
    maxComputeTextures = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v26 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (textures[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [textures[v8] device])
        {
          v23 = v8;
          _MTLMessageContextPush_();
        }

        length = v25;
        if ([textures[v8] storageMode] == 3)
        {
LABEL_12:
          v23 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 52344), &v27);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v28;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*textures retained:1 purgeable:{1, v23}];
      *v12 = [*textures baseObject];
      v14 = v11 + 52344;
      v15 = *textures;
      if (MTLReportFailureTypeEnabled() && (v11[52336] & 1) == 0 && *(v11 + 6539) == -1 && *(v11 + 6534) == 1 && *(v11 + 6535) == v15 && (*(v11 + 6537) | *(v11 + 6536) | *(v11 + 6538)) == 0 && *(v11 + 3270) == 0 && *(v11 + 52340) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:v15 offset:v16 attributeStride:v17 atIndex:?];
      }

      *(v11 + 26132) = v15 != 0;
      *(v11 + 6534) = 1;
      *(v11 + 6535) = v15;
      *(v11 + 6536) = 0;
      *(v11 + 6537) = 0;
      *(v11 + 6538) = 0;
      *(v11 + 6539) = -1;
      *(v11 + 6540) = 0;
      *(v11 + 6541) = 0;
      v11[52336] = 0;
      v11 += 88;
      ++v12;
      ++textures;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x200u;
}

- (void)setObjectSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_objectSamplers[index].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x400u;
}

- (void)setObjectSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v24 = location + length;
    maxComputeSamplers = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v26 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (states[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v19 = device == [states[v9] device], length = v26, !v19))
        {
          v24 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 63608), &v27);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v28;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v24, maxComputeSamplers}];
      *v13 = [*states baseObject];
      v15 = v12 + 63608;
      v16 = *states;
      if (MTLReportFailureTypeEnabled() && (v12[63600] & 1) == 0)
      {
        v19 = *(v12 + 7947) == -1 && *(v12 + 7942) == 2;
        if (v19 && *(v12 + 7943) == v16 && (*(v12 + 7945) | *(v12 + 7944) | *(v12 + 7946)) == 0 && *(v12 + 3974) == 0 && *(v12 + 63604) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v16 offset:v17 attributeStride:v18 atIndex:?];
        }
      }

      v12[63528] = v16 != 0;
      v12[63529] = 0;
      *(v12 + 7942) = 2;
      *(v12 + 7943) = v16;
      *(v12 + 7944) = 0;
      *(v12 + 7945) = 0;
      *(v12 + 7946) = 0;
      *(v12 + 7947) = -1;
      *(v12 + 7948) = 0;
      *(v12 + 7949) = 0;
      v12[63600] = 0;
      v12 += 88;
      ++v13;
      ++states;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x400u;
}

- (void)setObjectSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_objectSamplers[index].type, &v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [baseObject setObjectSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_objectSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v17 attributeStride:v18 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
  *&self->_openGLModeEnabled |= 0x400u;
}

- (void)setObjectSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v37, 0, sizeof(v37));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v31 = location + length;
    maxComputeSamplers = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v36 = location;
  v33 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (states[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [states[v10] device]))
        {
          v31 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v36 + v10 <= 0xF)
      {
        validateArg(3, v36 + v10, (v11 + 63608), &v37);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v36;
    v15 = v38;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v31, maxComputeSamplers}];
      *v15 = [*states baseObject];
      v18 = v14 + 63608;
      v19 = *states;
      v20 = *clampsCopy;
      v21 = *maxClampsCopy;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 15901) == v20 && v14[63600] != 0 && *(v14 + 7947) == -1 && *(v14 + 7942) == 2 && *(v14 + 7943) == v19 && (*(v14 + 7945) | *(v14 + 7944) | *(v14 + 7946)) == 0 && *(v14 + 3974) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v19 offset:v22 attributeStride:v23 atIndex:?];
        }
      }

      v14[63528] = v19 != 0;
      v14[63529] = 0;
      *(v14 + 7942) = 2;
      *(v14 + 7943) = v19;
      *(v14 + 7944) = 0;
      *(v14 + 7945) = 0;
      *(v14 + 7946) = 0;
      *(v14 + 7947) = -1;
      *(v14 + 7948) = 0;
      *(v14 + 7949) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++maxClampsCopy;
      ++clampsCopy;
      ++v15;
      ++states;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x400u;
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v15, 0, sizeof(v15));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    indexCopy = index;
    maxComputeLocalMemorySizes = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:indexCopy]< length)
  {
    lengthCopy = length;
    maxThreadgroupMemoryLength = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    _MTLMessageContextPush_();
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:lengthCopy])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    validateArg(1, index, &self->_objectThreadgroupMemoryLengths[index].type, &v15);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_objectThreadgroupMemoryLengths[index].type;
  v8 = MTLReportFailureTypeEnabled();
  if (v8 && (p_type[9] & 1) == 0 && !p_type[8] && p_type[7] == length && p_type[6] == -1 && p_type[1] == 3 && !p_type[2] && !(p_type[4] | p_type[3] | p_type[5]) && !*(p_type + 76))
  {
    [(MTLDebugComputeCommandEncoder *)v8 setThreadgroupMemoryLength:v9 atIndex:v10];
  }

  *p_type = length != 0;
  *(p_type + 1) = 0;
  p_type[1] = 3;
  *(p_type + 1) = 0u;
  *(p_type + 2) = 0u;
  p_type[6] = -1;
  p_type[7] = length;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x800u;
}

- (void)setMeshBytes:(const void *)bytes length:(unint64_t)length atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    indexCopy = index;
    maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize:indexCopy]< length)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeInlineDataSize];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_meshBuffers[index].type, &v12);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  MTLReportFailureTypeEnabled();
  p_type = &self->_meshBuffers[index].type;
  *p_type = length != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = 0;
  p_type[3] = 0;
  p_type[4] = length;
  *(p_type + 5) = xmmword_22E27C260;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]> index)
  {
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (!offset)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    _MTLMessageContextPush_();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  v10 = *(buffer + 8);
  if (v10 <= offset)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  if (index <= 0x1E)
  {
    validateArg(0, index, &self->_meshBuffers[index].type, &v14);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_meshBuffers[index].type;
  if (MTLReportFailureTypeEnabled() && buffer && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[5] == offset && p_type[4] == v10 && p_type[2] == buffer && !(p_type[3] | p_type[1]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:buffer offset:v12 attributeStride:v13 atIndex:?];
  }

  *p_type = v10 != 0;
  *(p_type + 1) = 0;
  p_type[1] = 0;
  p_type[2] = buffer;
  p_type[3] = 0;
  p_type[4] = v10;
  p_type[5] = offset;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshBufferOffset:(unint64_t)offset atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  if (index <= 0x1E)
  {
    p_type = &self->_meshBuffers[index].type;
    validateArg(0, index, p_type, &v14);
    object = p_type->object;
    if (!object)
    {
LABEL_9:
      _MTLMessageContextPush_();
      goto LABEL_10;
    }

    if ([(baseLevel *)object length]<= offset)
    {
      [(baseLevel *)p_type->object length];
      goto LABEL_9;
    }
  }

LABEL_10:
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v9 = &self->_meshBuffers[index].type;
  v10 = v9[2];
  v11 = [v10 length];
  if (MTLReportFailureTypeEnabled() && v10 && (v9[9] & 1) == 0 && v9[6] == -1 && v9[5] == offset && v9[4] == v11 && v9[2] == v10 && !(v9[3] | v9[1]) && *(v9 + 7) == 0 && !*(v9 + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:v10 offset:v12 attributeStride:v13 atIndex:?];
  }

  *v9 = v11 != 0;
  *(v9 + 1) = 0;
  v9[1] = 0;
  v9[2] = v10;
  v9[3] = 0;
  v9[4] = v11;
  v9[5] = offset;
  v9[6] = -1;
  v9[7] = 0;
  v9[8] = 0;
  *(v9 + 72) = 0;
  *(v9 + 19) = 0;
  *(v9 + 20) = 0;
  *&self->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v37 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v35, 0, sizeof(v35));
  [(MTLToolsObject *)selfCopy device];
  _MTLMessageContextBegin_();
  if (BYTE2(selfCopy->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)selfCopy->super.super.super._device maxComputeBuffers])
  {
    v28 = location + length;
    maxComputeBuffers = [(MTLToolsDevice *)selfCopy->super.super.super._device maxComputeBuffers];
    _MTLMessageContextPush_();
  }

  v33 = location;
  v34 = length;
  offsetsCopy = offsets;
  if (!length)
  {
    _MTLMessageContextEnd();
    goto LABEL_50;
  }

  v10 = 0;
  v11 = selfCopy + 88 * location;
  do
  {
    if (!buffers[v10])
    {
      if (!offsets[v10])
      {
        goto LABEL_15;
      }

      v28 = v10;
      maxComputeBuffers = offsets[v10];
      goto LABEL_20;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = v10;
      _MTLMessageContextPush_();
    }

    device = selfCopy->super.super.super._device;
    if (device != [buffers[v10] device])
    {
      v28 = v10;
      _MTLMessageContextPush_();
    }

    if (offsets[v10] >= *(buffers[v10] + 8))
    {
      v30 = v10;
      v31 = *(buffers[v10] + 8);
      v28 = v10;
      maxComputeBuffers = offsets[v10];
LABEL_20:
      _MTLMessageContextPush_();
    }

LABEL_15:
    if (location + v10 <= 0x1E)
    {
      validateArg(0, location + v10, (v11 + 67744), &v35);
    }

    ++v10;
    v11 += 88;
  }

  while (length != v10);
  _MTLMessageContextEnd();
  v13 = &selfCopy->_attachmentInfo[1] + 88 * location;
  v14 = v36;
  do
  {
    if (*buffers)
    {
      v15 = *(*buffers + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = selfCopy;
    [selfCopy->_maxVertexBuffers addObject:v28 retained:? purgeable:?];
    *v14 = [*buffers baseObject];
    v17 = (v13 + 67744);
    v18 = *buffers;
    v19 = *offsets;
    if (MTLReportFailureTypeEnabled() && v18 && (*(v13 + 67736) & 1) == 0 && *(v13 + 67712) == -1 && *(v13 + 67704) == v19 && *(v13 + 67696) == v15 && *(v13 + 67680) == v18 && (*(v13 + 67688) | *(v13 + 67672)) == 0 && *(v13 + 67720) == 0 && *(v13 + 67740) == 0)
    {
      [MTLDebugComputeCommandEncoder setBuffer:v18 offset:v20 attributeStride:v21 atIndex:?];
    }

    *(v13 + 67664) = v15 != 0;
    *(v13 + 67665) = 0;
    *(v13 + 67672) = 0;
    *(v13 + 67680) = v18;
    *(v13 + 67688) = 0;
    *(v13 + 67696) = v15;
    *(v13 + 67704) = v19;
    *(v13 + 67712) = -1;
    *(v13 + 67720) = 0;
    *(v13 + 67728) = 0;
    *(v13 + 67736) = 0;
    v13 += 88;
    ++offsets;
    ++v14;
    ++buffers;
    *(v17 - 1) = 0;
    *v17 = 0;
    --length;
    selfCopy = v16;
  }

  while (length);
LABEL_50:
  [-[MTLToolsObject baseObject](selfCopy baseObject];
  *&selfCopy->_openGLModeEnabled |= 0x1000u;
}

- (void)setMeshTexture:(id)texture atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeTextures]<= index)
  {
    indexCopy = index;
    maxComputeTextures = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_10;
    }
  }

  else if (!texture)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
LABEL_9:
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (index <= 0x7F)
  {
    validateArg(2, index, &self->_meshTextures[index].type, &v13);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:texture retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_meshTextures[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 1 && p_type[2] == texture && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:texture offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = texture != 0;
  *(p_type + 1) = 0;
  p_type[1] = 1;
  p_type[2] = texture;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x2000u;
}

- (void)setMeshTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures])
  {
    v23 = location + length;
    maxComputeTextures = [(MTLToolsDevice *)self->super.super.super._device maxComputeTextures];
    _MTLMessageContextPush_();
  }

  v25 = length;
  v26 = location;
  if (length)
  {
    v8 = 0;
    v9 = self + 88 * location;
    do
    {
      if (textures[v8])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_12;
        }

        device = self->super.super.super._device;
        if (device != [textures[v8] device])
        {
          v23 = v8;
          _MTLMessageContextPush_();
        }

        length = v25;
        if ([textures[v8] storageMode] == 3)
        {
LABEL_12:
          v23 = v8;
          _MTLMessageContextPush_();
        }
      }

      if (location + v8 <= 0x7F)
      {
        validateArg(2, location + v8, (v9 + 70472), &v27);
      }

      ++v8;
      v9 += 88;
    }

    while (length != v8);
    _MTLMessageContextEnd();
    v11 = &self->_attachmentInfo[1] + 88 * location;
    v12 = v28;
    v13 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*textures retained:1 purgeable:{1, v23}];
      *v12 = [*textures baseObject];
      v14 = v11 + 70472;
      v15 = *textures;
      if (MTLReportFailureTypeEnabled() && (v11[70464] & 1) == 0 && *(v11 + 8805) == -1 && *(v11 + 8800) == 1 && *(v11 + 8801) == v15 && (*(v11 + 8803) | *(v11 + 8802) | *(v11 + 8804)) == 0 && *(v11 + 4403) == 0 && *(v11 + 70468) == 0)
      {
        [MTLDebugComputeCommandEncoder setBuffer:v15 offset:v16 attributeStride:v17 atIndex:?];
      }

      *(v11 + 35196) = v15 != 0;
      *(v11 + 8800) = 1;
      *(v11 + 8801) = v15;
      *(v11 + 8802) = 0;
      *(v11 + 8803) = 0;
      *(v11 + 8804) = 0;
      *(v11 + 8805) = -1;
      *(v11 + 8806) = 0;
      *(v11 + 8807) = 0;
      v11[70464] = 0;
      v11 += 88;
      ++v12;
      ++textures;
      *(v14 - 1) = 0;
      *v14 = 0;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x2000u;
}

- (void)setMeshSamplerState:(id)state atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_meshSamplers[index].type, &v11);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
  p_type = &self->_meshSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && (p_type[9] & 1) == 0 && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0 && !*(p_type + 76))
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v9 attributeStride:v10 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 0;
  *(p_type + 19) = 0;
  *(p_type + 20) = 0;
  *&self->_openGLModeEnabled |= 0x4000u;
}

- (void)setMeshSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v29 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v27, 0, sizeof(v27));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v24 = location + length;
    maxComputeSamplers = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v26 = length;
  v8 = location;
  if (length)
  {
    v9 = 0;
    v10 = self + 88 * location;
    do
    {
      if (states[v9])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, v19 = device == [states[v9] device], length = v26, !v19))
        {
          v24 = v9;
          _MTLMessageContextPush_();
        }
      }

      if (location + v9 <= 0xF)
      {
        validateArg(3, location + v9, (v10 + 81736), &v27);
      }

      ++v9;
      v10 += 88;
    }

    while (length != v9);
    _MTLMessageContextEnd();
    v12 = &self->_attachmentInfo[1] + 88 * location;
    v13 = v28;
    v14 = length;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v24, maxComputeSamplers}];
      *v13 = [*states baseObject];
      v15 = v12 + 81736;
      v16 = *states;
      if (MTLReportFailureTypeEnabled() && (v12[81728] & 1) == 0)
      {
        v19 = *(v12 + 10213) == -1 && *(v12 + 10208) == 2;
        if (v19 && *(v12 + 10209) == v16 && (*(v12 + 10211) | *(v12 + 10210) | *(v12 + 10212)) == 0 && *(v12 + 5107) == 0 && *(v12 + 81732) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v16 offset:v17 attributeStride:v18 atIndex:?];
        }
      }

      v12[81656] = v16 != 0;
      v12[81657] = 0;
      *(v12 + 10208) = 2;
      *(v12 + 10209) = v16;
      *(v12 + 10210) = 0;
      *(v12 + 10211) = 0;
      *(v12 + 10212) = 0;
      *(v12 + 10213) = -1;
      *(v12 + 10214) = 0;
      *(v12 + 10215) = 0;
      v12[81728] = 0;
      v12 += 88;
      ++v13;
      ++states;
      *(v15 - 1) = 0;
      *v15 = 0;
      --v14;
    }

    while (v14);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x4000u;
}

- (void)setMeshSamplerState:(id)state lodMinClamp:(float)clamp lodMaxClamp:(float)maxClamp atIndex:(unint64_t)index
{
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v19, 0, sizeof(v19));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers]<= index)
  {
    [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
    if (!state)
    {
      goto LABEL_8;
    }
  }

  else if (!state)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [state device]))
  {
    _MTLMessageContextPush_();
  }

LABEL_8:
  if (index <= 0xF)
  {
    validateArg(3, index, &self->_meshSamplers[index].type, &v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:state retained:1 purgeable:0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [state baseObject];
  *&v14 = clamp;
  *&v15 = maxClamp;
  [baseObject setMeshSamplerState:baseObject2 lodMinClamp:index lodMaxClamp:v14 atIndex:v15];
  p_type = &self->_meshSamplers[index].type;
  if (MTLReportFailureTypeEnabled() && *(p_type + 20) == LODWORD(maxClamp) && *(p_type + 19) == LODWORD(clamp) && *(p_type + 72) && p_type[6] == -1 && p_type[1] == 2 && p_type[2] == state && !(p_type[4] | p_type[3] | p_type[5]) && *(p_type + 7) == 0)
  {
    [MTLDebugComputeCommandEncoder setBuffer:state offset:v17 attributeStride:v18 atIndex:?];
  }

  *p_type = state != 0;
  *(p_type + 1) = 0;
  p_type[1] = 2;
  p_type[2] = state;
  p_type[3] = 0;
  p_type[4] = 0;
  p_type[5] = 0;
  p_type[6] = -1;
  p_type[7] = 0;
  p_type[8] = 0;
  *(p_type + 72) = 1;
  *(p_type + 19) = clamp;
  *(p_type + 20) = maxClamp;
  *&self->_openGLModeEnabled |= 0x4000u;
}

- (void)setMeshSamplerStates:(const void *)states lodMinClamps:(const float *)clamps lodMaxClamps:(const float *)maxClamps withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v39 = *MEMORY[0x277D85DE8];
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  memset(&v37, 0, sizeof(v37));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers])
  {
    v31 = location + length;
    maxComputeSamplers = [(MTLToolsDevice *)self->super.super.super._device maxComputeSamplers];
    _MTLMessageContextPush_();
  }

  v36 = location;
  v33 = length;
  if (length)
  {
    v10 = 0;
    v11 = self + 88 * location;
    do
    {
      if (states[v10])
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (device = self->super.super.super._device, device != [states[v10] device]))
        {
          v31 = v10;
          _MTLMessageContextPush_();
        }
      }

      if (v36 + v10 <= 0xF)
      {
        validateArg(3, v36 + v10, (v11 + 81736), &v37);
      }

      ++v10;
      v11 += 88;
    }

    while (length != v10);
    _MTLMessageContextEnd();
    v13 = length;
    v14 = &self->_attachmentInfo[1] + 88 * v36;
    v15 = v38;
    clampsCopy = clamps;
    maxClampsCopy = maxClamps;
    do
    {
      [self->_maxVertexBuffers addObject:*states retained:1 purgeable:{0, v31, maxComputeSamplers}];
      *v15 = [*states baseObject];
      v18 = v14 + 81736;
      v19 = *states;
      v20 = *clampsCopy;
      v21 = *maxClampsCopy;
      if (MTLReportFailureTypeEnabled())
      {
        if (*v18 == v21 && *(v14 + 20433) == v20 && v14[81728] != 0 && *(v14 + 10213) == -1 && *(v14 + 10208) == 2 && *(v14 + 10209) == v19 && (*(v14 + 10211) | *(v14 + 10210) | *(v14 + 10212)) == 0 && *(v14 + 5107) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v19 offset:v22 attributeStride:v23 atIndex:?];
        }
      }

      v14[81656] = v19 != 0;
      v14[81657] = 0;
      *(v14 + 10208) = 2;
      *(v14 + 10209) = v19;
      *(v14 + 10210) = 0;
      *(v14 + 10211) = 0;
      *(v14 + 10212) = 0;
      *(v14 + 10213) = -1;
      *(v14 + 10214) = 0;
      *(v14 + 10215) = 0;
      v14 += 88;
      *(v18 - 8) = 1;
      ++maxClampsCopy;
      ++clampsCopy;
      ++v15;
      ++states;
      *(v18 - 1) = v20;
      *v18 = v21;
      --v13;
    }

    while (v13);
  }

  else
  {
    _MTLMessageContextEnd();
  }

  [-[MTLToolsObject baseObject](self baseObject];
  *&self->_openGLModeEnabled |= 0x4000u;
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  var2 = threadgroup->var2;
  *&self->_objectThreadsPerTG.height = *&threadgroup->var0;
  self->_meshThreadsPerTG.width = var2;
  v10 = meshThreadgroup->var2;
  *&self->_meshThreadsPerTG.height = *&meshThreadgroup->var0;
  *&self->_allowsNullBufferBinds = v10;
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:26];
  baseObject = [(MTLToolsObject *)self baseObject];
  v14 = *threadgroups;
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  [baseObject drawMeshThreadgroups:&v14 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  var2 = threadgroup->var2;
  *&self->_objectThreadsPerTG.height = *&threadgroup->var0;
  self->_meshThreadsPerTG.width = var2;
  v10 = meshThreadgroup->var2;
  *&self->_meshThreadsPerTG.height = *&meshThreadgroup->var0;
  *&self->_allowsNullBufferBinds = v10;
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:26];
  baseObject = [(MTLToolsObject *)self baseObject];
  v14 = *threads;
  v13 = *threadgroup;
  v12 = *meshThreadgroup;
  [baseObject drawMeshThreads:&v14 threadsPerObjectThreadgroup:&v13 threadsPerMeshThreadgroup:&v12];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  var2 = threadgroup->var2;
  *&self->_objectThreadsPerTG.height = *&threadgroup->var0;
  self->_meshThreadsPerTG.width = var2;
  v12 = meshThreadgroup->var2;
  *&self->_meshThreadsPerTG.height = *&meshThreadgroup->var0;
  *&self->_allowsNullBufferBinds = v12;
  [(MTLToolsObject *)self->super.super.super._device originalObject];
  MTLValidateFeatureSupport();
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:26];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  validateIndirectBuffer(self->super.super.super._device, buffer, offset, 12, "sizeof(MTLDispatchThreadgroupsIndirectArguments)", v17);
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v16 = *threadgroup;
  v15 = *meshThreadgroup;
  [baseObject drawMeshThreadgroupsWithIndirectBuffer:baseObject2 indirectBufferOffset:offset threadsPerObjectThreadgroup:&v16 threadsPerMeshThreadgroup:&v15];
}

- (void)updateFence:(id)fence afterStages:(unint64_t)stages
{
  if (!stages)
  {
    [MTLDebugRenderCommandEncoder updateFence:afterStages:];
  }

  fenceCopy = fence;
  std::deque<objc_object *>::push_back(&self->_updatedFences.__map_.var0, &fenceCopy);
  LODWORD(self->_visibilityOffsets) |= 2u;
  [self->_maxVertexBuffers addObject:fence retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)fence beforeStages:(unint64_t)stages
{
  if (!stages)
  {
    [MTLDebugRenderCommandEncoder waitForFence:beforeStages:];
  }

  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  storingRenderTargets = self->_storingRenderTargets;
  if (storingRenderTargets)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      if ((*(self->_updatedFences.__map_.var1 + (((self->_updatedFences.__size_ + v8) >> 6) & 0x3FFFFFFFFFFFFF8)))[(self->_updatedFences.__size_ + v8) & 0x1FF] == fence)
      {
        _MTLMessageContextPush_();
        storingRenderTargets = self->_storingRenderTargets;
      }

      v8 = v9;
    }

    while (storingRenderTargets > v9++);
  }

  _MTLMessageContextEnd();
  LODWORD(self->_visibilityOffsets) |= 2u;
  [self->_maxVertexBuffers addObject:fence retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)endEncoding_private
{
  v27 = *MEMORY[0x277D85DE8];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (self->_commandBuffer)
  {
    [self->_maxVertexBuffers addActiveRenderTargets:?];

    self->_commandBuffer = 0;
  }

  frontFacingWinding = self->_frontFacingWinding;
  if (!frontFacingWinding)
  {
    goto LABEL_46;
  }

  colorAttachments = [frontFacingWinding colorAttachments];
  for (i = 0; i != 10; ++i)
  {
    v6 = [colorAttachments _descriptorAtIndex:i];
    if (!v6)
    {
      continue;
    }

    v7 = v6;
    texture = [v6 texture];
    if (!texture)
    {
      continue;
    }

    v9 = texture;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (i > 7)
      {
        storeAction = [v7 storeAction];
        if (i == 8)
        {
          if (storeAction != 4)
          {
            goto LABEL_15;
          }
        }

        else if (storeAction != 4)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if ([v7 storeAction] != 4)
        {
          goto LABEL_15;
        }

        v20 = i;
      }

      _MTLMessageContextPush_();
LABEL_15:
      if ([v9 storageMode] == 3 && objc_msgSend(v7, "storeAction") && objc_msgSend(v7, "storeAction") != 2)
      {
        _MTLMessageContextPush_();
      }

      v11 = MTLReportFailureTypeEnabled();
      if (i <= 7 && v11 && ((HIDWORD(self->_visibilityOffsets) >> i) & 1) != 0)
      {
        -[MTLToolsRetainingContainer validateStoreLoadTransition:atIndex:renderTargetArrayLength:](-[MTLToolsCommandEncoder commandBuffer](self, "commandBuffer"), "validateStoreLoadTransition:atIndex:renderTargetArrayLength:", v7, i, [self->_frontFacingWinding renderTargetArrayLength]);
      }

      protectionOptions = [(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions];
      protectionOptions2 = [v9 protectionOptions];
      if (([v7 loadAction] == 1 || objc_msgSend(v7, "storeAction") != 4 && objc_msgSend(v7, "storeAction")) && (protectionOptions2 & ~protectionOptions) != 0)
      {
        protectionOptions3 = [v9 protectionOptions];
        v23 = protectionOptions;
        v21 = i;
        _MTLMessageContextPush_();
      }

      if ([v7 storeAction] != 4 && objc_msgSend(v7, "storeAction") && (protectionOptions & ~protectionOptions2) != 0)
      {
        protectionOptions3 = [v9 protectionOptions];
        v23 = protectionOptions;
        v20 = i;
        _MTLMessageContextPush_();
      }
    }

    if ([v7 loadAction] == 2 && objc_msgSend(v7, "storeAction"))
    {
      LODWORD(self->_visibilityOffsets) |= 2u;
    }
  }

  v14 = [colorAttachments _descriptorAtIndex:8];
  v15 = [colorAttachments _descriptorAtIndex:9];
  if (v14)
  {
    v16 = v15;
    if (v15)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      _MTLValidateDepthStencilStoreStateWithContext([v14 storeAction], objc_msgSend(v16, "storeAction"), *(objc_msgSend(v16, "_descriptorPrivate") + 104), isKindOfClass & 1, v24);
    }
  }

  visibilityOffsets = self->_visibilityOffsets;
  if ((visibilityOffsets & 0x10000) != 0)
  {
    _MTLMessageContextPush_();
    if ((self->_visibilityOffsets & 2) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if ((visibilityOffsets & 2) != 0)
    {
      goto LABEL_43;
    }

LABEL_55:
    _MTLMessageContextPush_();
  }

LABEL_43:
  if ((MTLReportFailureTypeEnabled() & 1) != 0 || MTLReportFailureTypeEnabled())
  {
    [(MTLDebugRenderCommandEncoder *)self _validateAllFunctionArguments:v24];
  }

LABEL_46:
  _MTLMessageContextEnd();
  [(MTLDebugRenderCommandEncoder *)self _setDefaults];
  LODWORD(self->_visibilityOffsets) |= 0x10001u;
  peakPerSampleStorage = self->_peakPerSampleStorage;
  if (![peakPerSampleStorage mtl4Descriptor] && !objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") && !objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor") && -[MTLToolsDevice storeValidationEnabled](self->super.super.super._device, "storeValidationEnabled"))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MTLToolsObject *)self->super.super.super._parent mergeAttachmentWriteMask:self->_objectThreadsPerTG.width];
    }

    else
    {
      v26[0] = xmmword_22E27C320;
      v26[1] = unk_22E27C330;
      [(MTLDevice *)[(MTLToolsObject *)self device] clearRenderEncoder:self writeMask:self->_objectThreadsPerTG.width withCheckerboard:v26];
    }
  }
}

- (void)endEncoding
{
  [(MTLDebugRenderCommandEncoder *)self endEncoding_private];
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

- (id)endEncodingAndRetrieveProgramAddressTable
{
  [(MTLDebugRenderCommandEncoder *)self endEncoding_private];
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject endEncodingAndRetrieveProgramAddressTable];
}

- (void)setTessellationFactorBuffer:(id)buffer offset:(unint64_t)offset instanceStride:(unint64_t)stride
{
  device = self->super.super.super._device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTLToolsObject *)device originalObject];
  }

  MTLValidateFeatureSupport();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (buffer)
  {
    _MTLDebugValidateBuffer(self->super.super.super._device, buffer, "buffer", v14);
    if ((offset & 3) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!offset)
  {
    goto LABEL_7;
  }

  strideCopy = offset;
  _MTLMessageContextPush_();
LABEL_7:
  if ((stride & 3) != 0)
  {
    strideCopy = stride;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10 = [buffer length];
  if (MTLReportFailureTypeEnabled() && buffer && (LOBYTE(self->_tessellationFactorBufferArgument.lodMaxClamp) & 1) == 0 && self->_tessellationFactorBufferArgument.threadgroupMemoryLength == -1 && self->_tessellationFactorBufferArgument.bufferAttributeStride == offset && self->_tessellationFactorBufferArgument.bufferOffset == v10 && self->_tessellationFactorBufferArgument.var0 == buffer && !(self->_tessellationFactorBufferArgument.bufferLength | self->_tessellationFactorBufferArgument.object) && *&self->_tessellationFactorBufferArgument.threadgroupMemoryOffset == 0 && !*(&self->_tessellationFactorBufferArgument.lodMaxClamp + 1))
  {
    [MTLDebugComputeCommandEncoder setBuffer:buffer offset:v11 attributeStride:v12 atIndex:?];
  }

  LOBYTE(self->_tessellationFactorBufferArgument.type) = v10 != 0;
  BYTE1(self->_tessellationFactorBufferArgument.type) = 0;
  self->_tessellationFactorBufferArgument.object = 0;
  self->_tessellationFactorBufferArgument.var0 = buffer;
  self->_tessellationFactorBufferArgument.bufferLength = 0;
  self->_tessellationFactorBufferArgument.bufferOffset = v10;
  self->_tessellationFactorBufferArgument.bufferAttributeStride = offset;
  self->_tessellationFactorBufferArgument.threadgroupMemoryLength = -1;
  self->_tessellationFactorBufferArgument.threadgroupMemoryOffset = 0;
  *&self->_tessellationFactorBufferArgument.hasLodClamp = 0;
  LOBYTE(self->_tessellationFactorBufferArgument.lodMaxClamp) = 0;
  *(&self->_tessellationFactorBufferArgument.lodMaxClamp + 1) = 0;
  LODWORD(self[1].super.super.super.super.isa) = 0;
  *&self->_tessellationFactorBufferArgument.isValid = stride;
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:{1, strideCopy}];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTessellationFactorScale:(float)scale
{
  device = self->super.super.super._device;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTLToolsObject *)device originalObject];
  }

  MTLValidateFeatureSupport();
  if (SLODWORD(scale) <= -1 || ((LODWORD(scale) & 0x7FFFFFFFu) - 0x800000) >> 24 >= 0x7F)
  {
    [MTLDebugRenderCommandEncoder setTessellationFactorScale:];
  }

  *&self->_descriptor = scale;
  baseObject = [(MTLToolsObject *)self baseObject];
  *&v8 = scale;

  [baseObject setTessellationFactorScale:v8];
}

- (void)drawPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:instanceCount baseInstance:instance maxVertexID:1];
  descriptor = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, descriptor, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, patches, 0, 0, "[MTLDebugRenderCommandEncoder drawPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:instanceCount:baseInstance:]", start, count, instance, instanceCount);
  }

  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:{1, _MTLDebugValidatePatchIndexBuffer(self->super.super.super._device, buffer, "patchIndexBuffer", offset, 1, start, count, v17, instanceCount)}];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];

  [baseObject drawPatches:patches patchStart:start patchCount:count patchIndexBuffer:baseObject2 patchIndexBufferOffset:offset instanceCount:instanceCount baseInstance:?];
}

- (void)drawPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)bufferOffset
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:1 baseInstance:0 maxVertexID:1];
  descriptor = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, descriptor, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, patches, 1, 0, "[MTLDebugRenderCommandEncoder drawPatches:patchIndexBuffer:patchIndexBufferOffset:indirectBuffer:indirectBufferOffset:]", 0, 0, 0, 0);
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super.super._device, buffer, "patchIndexBuffer", offset, 0, 0, 0, v14, 0, v15);
  validateIndirectBuffer(self->super.super.super._device, indirectBuffer, bufferOffset, 16, "sizeof(MTLDrawPatchIndirectArguments)", v15);
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:indirectBuffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPatches:(unint64_t)patches patchStart:(unint64_t)start patchCount:(unint64_t)count patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset instanceCount:(unint64_t)self0 baseInstance:(unint64_t)self1
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:instanceCount baseInstance:instance maxVertexID:1];
  descriptor = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, descriptor, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, patches, 0, 1, "[MTLDebugRenderCommandEncoder drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:]", start, count, instance, instanceCount);
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  _MTLMessageContextBegin_();
  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super.super._device, buffer, "patchIndexBuffer", offset, 1, start, count, v17, instanceCount, v21);
  if (patches)
  {
    v18 = _MTLTessellationControlPointIndexTypeToMTLIndexType([descriptor tessellationControlPointIndexType]);
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, v18, indexBuffer, "controlPointIndexBuffer", bufferOffset, buffer == 0, (count + start) * patches, v21);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:indexBuffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)drawIndexedPatches:(unint64_t)patches patchIndexBuffer:(id)buffer patchIndexBufferOffset:(unint64_t)offset controlPointIndexBuffer:(id)indexBuffer controlPointIndexBufferOffset:(unint64_t)bufferOffset indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)indirectBufferOffset
{
  [(MTLDebugRenderCommandEncoder *)self _validateTessellationWithMetal4];
  [(MTLDebugRenderCommandEncoder *)self validateCommonDrawErrors:3 instanceCount:1 baseInstance:0 maxVertexID:1];
  descriptor = [self->_peakPerSampleStorage descriptor];
  if ((self->_vertexBuiltinArguments & 1) == 0)
  {
    validateCommonTessellationErrors(self->super.super.super._device, descriptor, &self->_tessellationFactorBufferArgument.type, *&self->_tessellationFactorBufferArgument.isValid, patches, 1, 1, "[MTLDebugRenderCommandEncoder drawIndexedPatches:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:indirectBuffer:indirectBufferOffset:]", 0, 0, 0, 0);
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  _MTLMessageContextBegin_();
  _MTLDebugValidatePatchIndexBufferWithContext(self->super.super.super._device, buffer, "patchIndexBuffer", offset, 0, 0, 0, v16, 0, v19);
  validateIndirectBuffer(self->super.super.super._device, indirectBuffer, indirectBufferOffset, 16, "sizeof(MTLDrawPatchIndirectArguments)", v19);
  if (patches)
  {
    v17 = _MTLTessellationControlPointIndexTypeToMTLIndexType([descriptor tessellationControlPointIndexType]);
    _MTLDebugValidateIndexBufferWithContext(self->super.super.super._device, v17, indexBuffer, "controlPointIndexBuffer", bufferOffset, 0, 0, v19);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:indexBuffer retained:1 purgeable:1];
  [self->_maxVertexBuffers addObject:indirectBuffer retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)filterCounterRangeWithFirstBatch:(unsigned int)batch lastBatch:(unsigned int)lastBatch filterIndex:(unsigned int)index
{
  v5 = *&index;
  v6 = *&lastBatch;
  v7 = *&batch;
  if (batch > lastBatch)
  {
    v10 = *&batch;
    v11 = *&lastBatch;
    MTLReportFailure();
  }

  v9 = [(MTLToolsObject *)self baseObject:v10];

  [v9 filterCounterRangeWithFirstBatch:v7 lastBatch:v6 filterIndex:v5];
}

- (void)memoryBarrierWithScope:(unint64_t)scope afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  _MTLMessageContextBegin_();
  validateCommonBarrier(self->super.super.super._device, v9, scope, stages, beforeStages);
  if (![(MTLToolsDevice *)self->super.super.super._device supportsPartialRenderMemoryBarrier])
  {
    goto LABEL_5;
  }

  if ((scope & 4) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((stages & 6) != 0)
  {
LABEL_5:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)memoryBarrierWithResources:(const void *)resources count:(unint64_t)count afterStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  _MTLMessageContextBegin_();
  validateCommonBarrier(self->super.super.super._device, v29, 3uLL, stages, beforeStages);
  if (!resources || !count)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device supportsPartialRenderMemoryBarrier])
  {
    if ((stages & 6) != 0)
    {
      stagesCopy = stages;
      _MTLMessageContextPush_();
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  std::vector<objc_object  {objcproto11MTLResource}*>::vector[abi:ne200100](__p, count);
  stagesCopy2 = stages;
  beforeStagesCopy = beforeStages;
  if (count)
  {
    v10 = 0;
    do
    {
      v11 = resources[v10];
      if (!v11)
      {
        stagesCopy = v10;
        MTLReportFailure();
        v11 = resources[v10];
      }

      baseObject = [v11 baseObject];
      *(__p[0] + v10) = baseObject;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = resources[v10];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        allObjects = [(MTLDebugCommandBuffer *)self->_commandBuffer allObjects];
        v15 = [allObjects countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v15)
        {
          v16 = *v25;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(allObjects);
              }

              v18 = *(*(&v24 + 1) + 8 * i);
              if ([v18 attachmentTexture] == v13)
              {
                [(MTLDebugCommandBuffer *)self->_commandBuffer removeObject:v18];
              }
            }

            v15 = [allObjects countByEnumeratingWithState:&v24 objects:v31 count:16];
          }

          while (v15);
        }
      }

      ++v10;
    }

    while (v10 != count);
  }

  _MTLMessageContextEnd();
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 memoryBarrierWithResources:__p[0] count:count afterStages:stagesCopy2 beforeStages:beforeStagesCopy];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  _MTLMessageContextBegin_();
  v18.length = [buffer size];
  v17.location = location;
  v17.length = length;
  v18.location = 0;
  v8 = NSIntersectionRange(v17, v18);
  if (v8.location != location || v8.length != length)
  {
    v10 = length;
    v11 = [buffer size];
    v9 = location;
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(buffer descriptor] && (-[MTLRenderPipelineState supportIndirectCommandBuffers](-[MTLDebugRenderCommandEncoder renderPipelineState](self, "renderPipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v12.receiver = self;
  v12.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v12 executeCommandsInBuffer:buffer withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(id)indirectBuffer indirectBufferOffset:(unint64_t)offset
{
  if ([objc_msgSend(buffer "descriptor")] && (-[MTLRenderPipelineState supportIndirectCommandBuffers](-[MTLDebugRenderCommandEncoder renderPipelineState](self, "renderPipelineState"), "supportIndirectCommandBuffers") & 1) == 0)
  {
    [MTLDebugRenderCommandEncoder executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:];
  }

  v9.receiver = self;
  v9.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer indirectBufferOffset:offset];
}

- (void)sampleCountersInBuffer:(id)buffer atSampleIndex:(unint64_t)index withBarrier:(BOOL)barrier
{
  barrierCopy = barrier;
  _MTLMessageContextBegin_();
  if ([(MTLToolsDevice *)self->super.super.super._device supportsCounterSampling:1])
  {
    if (!buffer)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!buffer)
    {
      goto LABEL_9;
    }
  }

  if (([buffer conformsToProtocol:&unk_2842206E8] & 1) == 0)
  {
LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  if ([buffer sampleCount] <= index)
  {
    [buffer sampleCount];
    goto LABEL_8;
  }

LABEL_9:
  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:buffer retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage
{
  memset(&v23, 0, sizeof(v23));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (index >= buffers)
  {
    indexCopy = index;
    buffersCopy = buffers;
    _MTLMessageContextPush_();
  }

  if ([-[MTLDevice baseObject](-[MTLToolsObject device](self device])
  {
    if (!table)
    {
      goto LABEL_10;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!table)
    {
      goto LABEL_10;
    }
  }

  if (![table conformsToProtocol:&unk_284225958] || (device = self->super.super.super._device, device != objc_msgSend(table, "device")))
  {
    _MTLMessageContextPush_();
  }

LABEL_10:
  if (index < length)
  {
    validateArg(24, index, &a6[index], &v23);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:table retained:1 purgeable:1];
  if (stage <= 3)
  {
    if (stage == 2)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }

    else if (stage == 3)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 5uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 6uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
    }
  }

  v16 = &a6[index];
  functionCount = [table functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v20.i64[0] = 0;
    v20.i64[1] = functionCount;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v16->var0, v20), vceqq_s64(*&v16->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v16->type == 5 && *&v16->threadgroupMemoryLength == 0 && v16->object == table && table && !*&v16->lodMinClamp && !v16->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:table offset:v18 attributeStride:v19 atIndex:?];
    }
  }

  v16->isValid = functionCount != 0;
  v16->hasBeenUsed = 0;
  v16->type = 5;
  v16->object = table;
  v16->var0 = 0;
  v16->bufferLength = functionCount;
  *&v16->bufferOffset = xmmword_22E27C260;
  v16->threadgroupMemoryLength = 0;
  v16->threadgroupMemoryOffset = 0;
  v16->hasLodClamp = 0;
  v16->lodMinClamp = 0.0;
  v16->lodMaxClamp = 0.0;
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage
{
  v39.i64[0] = a6;
  length = range.length;
  location = range.location;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > buffers)
  {
    _MTLMessageContextPush_();
  }

  buffersCopy = buffers;
  if (([-[MTLDevice baseObject](-[MTLToolsObject device](self "device")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  stageCopy = stage;
  v38 = location;
  if (length)
  {
    v14 = 0;
    v15 = (v39.i64[0] + 88 * location);
    tablesCopy = tables;
    do
    {
      if (*tablesCopy)
      {
        if ([*tablesCopy conformsToProtocol:&unk_284225958])
        {
          device = self->super.super.super._device;
          if (device != [*tablesCopy device])
          {
            _MTLMessageContextPush_();
          }

          location = v38;
          if ([*tablesCopy stage] && objc_msgSend(*tablesCopy, "stage") != stageCopy)
          {
            [MTLDebugRenderCommandEncoder setVisibleFunctionTables:withBufferRange:maxBuffers:buffers:buffersLength:stage:];
          }
        }

        else
        {
          _MTLMessageContextPush_();
        }
      }

      if (location + v14 < length)
      {
        validateArg(24, location + v14, v15, &v40);
      }

      ++v14;
      ++tablesCopy;
      ++v15;
    }

    while (length != v14);
  }

  _MTLMessageContextEnd();
  v35 = &v35;
  MEMORY[0x28223BE20](v18);
  buffersCopy = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (length)
  {
    v20 = (v39.i64[0] + 88 * v38 + 80);
    v39 = xmmword_22E27C260;
    v21 = buffersCopy;
    lengthCopy = length;
    do
    {
      [self->_maxVertexBuffers addObject:*tables retained:1 purgeable:1];
      *v21 = [*tables baseObject];
      v23 = *tables;
      functionCount = [*tables functionCount];
      if (MTLReportFailureTypeEnabled())
      {
        v27.i64[0] = 0;
        v27.i64[1] = functionCount;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v20 - 14), v27), vceqq_s64(*(v20 - 10), v39))))) & 1) == 0 && *(v20 - 9) == 5 && *(v20 - 6) == 0 && *(v20 - 8) == v23 && v23 && !*(v20 - 1) && (*(v20 - 2) & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v23 offset:v25 attributeStride:v26 atIndex:?];
        }
      }

      *(v20 - 40) = functionCount != 0;
      *(v20 - 9) = 5;
      *(v20 - 8) = v23;
      *(v20 - 7) = 0;
      *(v20 - 6) = functionCount;
      *(v20 - 10) = v39;
      *(v20 - 3) = 0;
      *(v20 - 2) = 0;
      *(v20 - 8) = 0;
      v21 += 8;
      ++tables;
      *(v20 - 1) = 0;
      *v20 = 0;
      v20 += 22;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  if (stageCopy <= 3)
  {
    v30 = v38;
    if (stageCopy == 2)
    {
      baseObject = [(MTLToolsObject *)self baseObject];
      [baseObject setVertexVisibleFunctionTables:buffersCopy withBufferRange:{v30, length}];
    }

    else if (stageCopy == 3)
    {
      baseObject2 = [(MTLToolsObject *)self baseObject];
      [baseObject2 setFragmentVisibleFunctionTables:buffersCopy withBufferRange:{v30, length}];
    }
  }

  else
  {
    v28 = v38;
    switch(stageCopy)
    {
      case 4:
        baseObject3 = [(MTLToolsObject *)self baseObject];
        [baseObject3 setTileVisibleFunctionTables:buffersCopy withBufferRange:{v28, length}];
        break;
      case 5:
        baseObject4 = [(MTLToolsObject *)self baseObject];
        [baseObject4 setObjectVisibleFunctionTables:buffersCopy withBufferRange:{v28, length}];
        break;
      case 6:
        baseObject5 = [(MTLToolsObject *)self baseObject];
        [baseObject5 setMeshVisibleFunctionTables:buffersCopy withBufferRange:{v28, length}];
        break;
    }
  }
}

- (void)setFragmentVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxFragmentBuffers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:table atBufferIndex:index maxBuffers:maxFragmentBuffers buffers:&self->_fragmentBuffers[0].type buffersLength:31 stage:3];
}

- (void)setTileVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxTileBuffers = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:table atBufferIndex:index maxBuffers:maxTileBuffers buffers:&self->_tileBuffers[0].type buffersLength:31 stage:4];
}

- (void)setObjectVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:table atBufferIndex:index maxBuffers:maxComputeBuffers buffers:&self->_objectBuffers[0].type buffersLength:31 stage:5];
}

- (void)setMeshVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setVisibleFunctionTable:table atBufferIndex:index maxBuffers:maxComputeBuffers buffers:&self->_meshBuffers[0].type buffersLength:31 stage:6];
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage
{
  memset(&v23, 0, sizeof(v23));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (index >= buffers)
  {
    indexCopy = index;
    buffersCopy = buffers;
    _MTLMessageContextPush_();
    if (!table)
    {
      goto LABEL_12;
    }
  }

  else if (!table)
  {
    goto LABEL_12;
  }

  if ([table conformsToProtocol:{&unk_28423AC08, indexCopy, buffersCopy, v23.var0, v23.var1, *&v23.var2, v23.var3, v23.var4, v23.var5, v23.var6}])
  {
    device = self->super.super.super._device;
    if (device != [table device])
    {
      _MTLMessageContextPush_();
    }

    if ([table stage] && objc_msgSend(table, "stage") != stage)
    {
      [MTLDebugRenderCommandEncoder setIntersectionFunctionTable:atBufferIndex:maxBuffers:buffers:buffersLength:stage:];
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

LABEL_12:
  if (index < length)
  {
    validateArg(0, index, &a6[index], &v23);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:table retained:1 purgeable:1];
  if (stage <= 3)
  {
    if (stage == 2)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }

    else if (stage == 3)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 5uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 6uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
    }
  }

  v16 = &a6[index];
  functionCount = [table functionCount];
  if (MTLReportFailureTypeEnabled())
  {
    v20.i64[0] = 0;
    v20.i64[1] = functionCount;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v16->var0, v20), vceqq_s64(*&v16->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v16->type == 6 && *&v16->threadgroupMemoryLength == 0 && v16->object == table && table && !*&v16->lodMinClamp && !v16->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:table offset:v18 attributeStride:v19 atIndex:?];
    }
  }

  v16->isValid = functionCount != 0;
  v16->hasBeenUsed = 0;
  v16->type = 6;
  v16->object = table;
  v16->var0 = 0;
  v16->bufferLength = functionCount;
  *&v16->bufferOffset = xmmword_22E27C260;
  v16->threadgroupMemoryLength = 0;
  v16->threadgroupMemoryOffset = 0;
  v16->hasLodClamp = 0;
  v16->lodMinClamp = 0.0;
  v16->lodMaxClamp = 0.0;
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage
{
  v39.i64[0] = a6;
  length = range.length;
  location = range.location;
  v41 = *MEMORY[0x277D85DE8];
  memset(&v40, 0, sizeof(v40));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (location + length > buffers)
  {
    _MTLMessageContextPush_();
  }

  buffersCopy = buffers;
  stageCopy = stage;
  v38 = location;
  if (length)
  {
    v14 = 0;
    v15 = (v39.i64[0] + 88 * location);
    tablesCopy = tables;
    do
    {
      if (*tablesCopy)
      {
        if ([*tablesCopy conformsToProtocol:&unk_28423AC08])
        {
          device = self->super.super.super._device;
          if (device != [*tablesCopy device])
          {
            _MTLMessageContextPush_();
          }

          location = v38;
          if ([*tablesCopy stage] && objc_msgSend(*tablesCopy, "stage") != stageCopy)
          {
            [MTLDebugRenderCommandEncoder setVisibleFunctionTables:withBufferRange:maxBuffers:buffers:buffersLength:stage:];
          }
        }

        else
        {
          _MTLMessageContextPush_();
        }
      }

      if (location + v14 < length)
      {
        validateArg(0, location + v14, v15, &v40);
      }

      ++v14;
      ++tablesCopy;
      ++v15;
    }

    while (length != v14);
  }

  _MTLMessageContextEnd();
  v35 = &v35;
  MEMORY[0x28223BE20](v18);
  buffersCopy = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (length)
  {
    v20 = (v39.i64[0] + 88 * v38 + 80);
    v39 = xmmword_22E27C260;
    v21 = buffersCopy;
    lengthCopy = length;
    do
    {
      [self->_maxVertexBuffers addObject:*tables retained:1 purgeable:1];
      *v21 = [*tables baseObject];
      v23 = *tables;
      functionCount = [*tables functionCount];
      if (MTLReportFailureTypeEnabled())
      {
        v27.i64[0] = 0;
        v27.i64[1] = functionCount;
        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*(v20 - 14), v27), vceqq_s64(*(v20 - 10), v39))))) & 1) == 0 && *(v20 - 9) == 6 && *(v20 - 6) == 0 && *(v20 - 8) == v23 && v23 && !*(v20 - 1) && (*(v20 - 2) & 1) == 0)
        {
          [MTLDebugComputeCommandEncoder setBuffer:v23 offset:v25 attributeStride:v26 atIndex:?];
        }
      }

      *(v20 - 40) = functionCount != 0;
      *(v20 - 9) = 6;
      *(v20 - 8) = v23;
      *(v20 - 7) = 0;
      *(v20 - 6) = functionCount;
      *(v20 - 10) = v39;
      *(v20 - 3) = 0;
      *(v20 - 2) = 0;
      *(v20 - 8) = 0;
      v21 += 8;
      ++tables;
      *(v20 - 1) = 0;
      *v20 = 0;
      v20 += 22;
      --lengthCopy;
    }

    while (lengthCopy);
  }

  if (stageCopy <= 3)
  {
    v30 = v38;
    if (stageCopy == 2)
    {
      baseObject = [(MTLToolsObject *)self baseObject];
      [baseObject setVertexIntersectionFunctionTables:buffersCopy withBufferRange:{v30, length}];
    }

    else if (stageCopy == 3)
    {
      baseObject2 = [(MTLToolsObject *)self baseObject];
      [baseObject2 setFragmentIntersectionFunctionTables:buffersCopy withBufferRange:{v30, length}];
    }
  }

  else
  {
    v28 = v38;
    switch(stageCopy)
    {
      case 4:
        baseObject3 = [(MTLToolsObject *)self baseObject];
        [baseObject3 setTileIntersectionFunctionTables:buffersCopy withBufferRange:{v28, length}];
        break;
      case 5:
        baseObject4 = [(MTLToolsObject *)self baseObject];
        [baseObject4 setObjectIntersectionFunctionTables:buffersCopy withBufferRange:{v28, length}];
        break;
      case 6:
        baseObject5 = [(MTLToolsObject *)self baseObject];
        [baseObject5 setMeshIntersectionFunctionTables:buffersCopy withBufferRange:{v28, length}];
        break;
    }
  }
}

- (void)setFragmentIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxFragmentBuffers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:table atBufferIndex:index maxBuffers:maxFragmentBuffers buffers:&self->_fragmentBuffers[0].type buffersLength:31 stage:3];
}

- (void)setTileIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxTileBuffers = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:table atBufferIndex:index maxBuffers:maxTileBuffers buffers:&self->_tileBuffers[0].type buffersLength:31 stage:4];
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index maxBuffers:(unint64_t)buffers buffers:(MTLDebugFunctionArgument *)a6 buffersLength:(unint64_t)length stage:(unint64_t)stage
{
  memset(&v22, 0, sizeof(v22));
  _MTLMessageContextBegin_();
  if (BYTE2(self->_visibilityOffsets))
  {
    _MTLMessageContextPush_();
  }

  if (index >= buffers)
  {
    indexCopy = index;
    buffersCopy = buffers;
    _MTLMessageContextPush_();
  }

  checkAccelerationStructure(self->super.super.super._device, structure, 1, @"Acceleration structure");
  if (index < length)
  {
    validateArg(25, index, &a6[index], &v22);
  }

  _MTLMessageContextEnd();
  [self->_maxVertexBuffers addObject:structure retained:1 purgeable:1];
  if (stage <= 3)
  {
    if (stage == 2)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }

    else if (stage == 3)
    {
      [-[MTLToolsObject baseObject](self "baseObject")];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 5uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
      case 6uLL:
        [-[MTLToolsObject baseObject](self "baseObject")];
        break;
    }
  }

  v15 = &a6[index];
  v16 = [structure size];
  if (MTLReportFailureTypeEnabled())
  {
    v19.i64[0] = 0;
    v19.i64[1] = v16;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(*&v15->var0, v19), vceqq_s64(*&v15->bufferOffset, xmmword_22E27C260))))) & 1) == 0 && v15->type == 4 && *&v15->threadgroupMemoryLength == 0 && v15->object == structure && structure && !*&v15->lodMinClamp && !v15->hasLodClamp)
    {
      [MTLDebugComputeCommandEncoder setBuffer:structure offset:v17 attributeStride:v18 atIndex:?];
    }
  }

  v15->isValid = v16 != 0;
  v15->hasBeenUsed = 0;
  v15->type = 4;
  v15->object = structure;
  v15->var0 = 0;
  v15->bufferLength = v16;
  *&v15->bufferOffset = xmmword_22E27C260;
  v15->threadgroupMemoryLength = 0;
  v15->threadgroupMemoryOffset = 0;
  v15->hasLodClamp = 0;
  v15->lodMinClamp = 0.0;
  v15->lodMaxClamp = 0.0;
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  maxFragmentBuffers = [(MTLToolsDevice *)self->super.super.super._device maxFragmentBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:structure atBufferIndex:index maxBuffers:maxFragmentBuffers buffers:&self->_fragmentBuffers[0].type buffersLength:31 stage:3];
}

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  maxTileBuffers = [(MTLToolsDevice *)self->super.super.super._device maxTileBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:structure atBufferIndex:index maxBuffers:maxTileBuffers buffers:&self->_tileBuffers[0].type buffersLength:31 stage:4];
}

- (void)setObjectIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:table atBufferIndex:index maxBuffers:maxComputeBuffers buffers:&self->_objectBuffers[0].type buffersLength:31 stage:5];
}

- (void)setObjectAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:structure atBufferIndex:index maxBuffers:maxComputeBuffers buffers:&self->_objectBuffers[0].type buffersLength:31 stage:5];
}

- (void)setMeshIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
{
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setIntersectionFunctionTable:table atBufferIndex:index maxBuffers:maxComputeBuffers buffers:&self->_meshBuffers[0].type buffersLength:31 stage:6];
}

- (void)setMeshAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  maxComputeBuffers = [(MTLToolsDevice *)self->super.super.super._device maxComputeBuffers];

  [(MTLDebugRenderCommandEncoder *)self setAccelerationStructure:structure atBufferIndex:index maxBuffers:maxComputeBuffers buffers:&self->_meshBuffers[0].type buffersLength:31 stage:6];
}

- (void)enableNullBufferBinds:(BOOL)binds
{
  bindsCopy = binds;
  LOBYTE(self->_colorAttachmentMap) = binds;
  [(MTLToolsObject *)self baseObject];
  if (objc_opt_respondsToSelector())
  {
    baseObject = [(MTLToolsObject *)self baseObject];

    [baseObject enableNullBufferBinds:bindsCopy];
  }
}

- (void)useResidencySet:(id)set
{
  if (!set)
  {
    [MTLDebugRenderCommandEncoder useResidencySet:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      if (!sets[i])
      {
        [MTLDebugRenderCommandEncoder useResidencySets:count:];
      }
    }
  }

  v8.receiver = self;
  v8.super_class = MTLDebugRenderCommandEncoder;
  [(MTLToolsRenderCommandEncoder *)&v8 useResidencySets:sets count:count];
}

- (void)barrierAfterQueueStages:(unint64_t)stages beforeStages:(unint64_t)beforeStages
{
  if (BYTE2(self->_visibilityOffsets))
  {
    [MTLDebugRenderCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject barrierAfterQueueStages:stages beforeStages:beforeStages];
}

- (void)_validateTessellationWithMetal4
{
  _MTLMessageContextBegin_();
  peakPerSampleStorage = self->_peakPerSampleStorage;
  if ([peakPerSampleStorage mtl4Descriptor] || objc_msgSend(peakPerSampleStorage, "mtl4MeshDescriptor") || objc_msgSend(peakPerSampleStorage, "mtl4TileDescriptor"))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (MTLDebugFunctionArgument)tessellationFactorBufferArgument
{
  v3 = *&self[950].isValid;
  *&retstr->bufferLength = *&self[949].hasLodClamp;
  *&retstr->bufferAttributeStride = v3;
  *&retstr->threadgroupMemoryOffset = *&self[950].object;
  *&retstr->lodMaxClamp = self[950].bufferLength;
  v4 = *&self[949].threadgroupMemoryLength;
  *&retstr->isValid = *&self[949].bufferOffset;
  *&retstr->object = v4;
  return self;
}

- (id).cxx_construct
{
  v2 = 248;
  v3 = 3168;
  do
  {
    v4 = self + v2;
    *(v4 + 3) = 0;
    *(v4 + 4) = 0;
    *(v4 + 5) = 0;
    *(v4 + 6) = -1;
    *(v4 + 19) = 0;
    *(v4 + 20) = 0;
    *(v4 + 7) = 0;
    *(v4 + 8) = 0;
    v2 += 88;
    v4[72] = 0;
    v3 -= 88;
  }

  while (v3);
  v5 = 3416;
  v6 = 11264;
  do
  {
    v7 = self + v5;
    *(v7 + 3) = 0;
    *(v7 + 4) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = -1;
    *(v7 + 19) = 0;
    *(v7 + 20) = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    v5 += 88;
    v7[72] = 0;
    v6 -= 88;
  }

  while (v6);
  v8 = 14680;
  v9 = 1408;
  do
  {
    v10 = self + v8;
    *(v10 + 3) = 0;
    *(v10 + 4) = 0;
    *(v10 + 5) = 0;
    *(v10 + 6) = -1;
    *(v10 + 19) = 0;
    *(v10 + 20) = 0;
    *(v10 + 7) = 0;
    *(v10 + 8) = 0;
    v8 += 88;
    v10[72] = 0;
    v9 -= 88;
  }

  while (v9);
  v11 = 16088;
  v12 = 2728;
  do
  {
    v13 = self + v11;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 5) = 0;
    *(v13 + 6) = -1;
    *(v13 + 19) = 0;
    *(v13 + 20) = 0;
    *(v13 + 7) = 0;
    *(v13 + 8) = 0;
    v11 += 88;
    v13[72] = 0;
    v12 -= 88;
  }

  while (v12);
  v14 = 18816;
  v15 = 11264;
  do
  {
    v16 = self + v14;
    *(v16 + 3) = 0;
    *(v16 + 4) = 0;
    *(v16 + 5) = 0;
    *(v16 + 6) = -1;
    *(v16 + 19) = 0;
    *(v16 + 20) = 0;
    *(v16 + 7) = 0;
    *(v16 + 8) = 0;
    v14 += 88;
    v16[72] = 0;
    v15 -= 88;
  }

  while (v15);
  v17 = 30080;
  v18 = 1408;
  do
  {
    v19 = self + v17;
    *(v19 + 3) = 0;
    *(v19 + 4) = 0;
    *(v19 + 5) = 0;
    *(v19 + 6) = -1;
    *(v19 + 19) = 0;
    *(v19 + 20) = 0;
    *(v19 + 7) = 0;
    *(v19 + 8) = 0;
    v17 += 88;
    v19[72] = 0;
    v18 -= 88;
  }

  while (v18);
  v20 = 31488;
  v21 = 2728;
  do
  {
    v22 = self + v20;
    *(v22 + 3) = 0;
    *(v22 + 4) = 0;
    *(v22 + 5) = 0;
    *(v22 + 6) = -1;
    *(v22 + 19) = 0;
    *(v22 + 20) = 0;
    *(v22 + 7) = 0;
    *(v22 + 8) = 0;
    v20 += 88;
    v22[72] = 0;
    v21 -= 88;
  }

  while (v21);
  v23 = 34216;
  v24 = 11264;
  do
  {
    v25 = self + v23;
    *(v25 + 3) = 0;
    *(v25 + 4) = 0;
    *(v25 + 5) = 0;
    *(v25 + 6) = -1;
    *(v25 + 19) = 0;
    *(v25 + 20) = 0;
    *(v25 + 7) = 0;
    *(v25 + 8) = 0;
    v23 += 88;
    v25[72] = 0;
    v24 -= 88;
  }

  while (v24);
  v26 = 45480;
  v27 = 1408;
  do
  {
    v28 = self + v26;
    *(v28 + 3) = 0;
    *(v28 + 4) = 0;
    *(v28 + 5) = 0;
    *(v28 + 6) = -1;
    *(v28 + 19) = 0;
    *(v28 + 20) = 0;
    *(v28 + 7) = 0;
    *(v28 + 8) = 0;
    v26 += 88;
    v28[72] = 0;
    v27 -= 88;
  }

  while (v27);
  v29 = 46888;
  v30 = 2728;
  do
  {
    v31 = self + v29;
    *(v31 + 3) = 0;
    *(v31 + 4) = 0;
    *(v31 + 5) = 0;
    *(v31 + 6) = -1;
    *(v31 + 19) = 0;
    *(v31 + 20) = 0;
    *(v31 + 7) = 0;
    *(v31 + 8) = 0;
    v29 += 88;
    v31[72] = 0;
    v30 -= 88;
  }

  while (v30);
  v32 = 49616;
  v33 = 2728;
  do
  {
    v34 = self + v32;
    *(v34 + 3) = 0;
    *(v34 + 4) = 0;
    *(v34 + 5) = 0;
    *(v34 + 6) = -1;
    *(v34 + 19) = 0;
    *(v34 + 20) = 0;
    *(v34 + 7) = 0;
    *(v34 + 8) = 0;
    v32 += 88;
    v34[72] = 0;
    v33 -= 88;
  }

  while (v33);
  v35 = 52344;
  v36 = 11264;
  do
  {
    v37 = self + v35;
    *(v37 + 3) = 0;
    *(v37 + 4) = 0;
    *(v37 + 5) = 0;
    *(v37 + 6) = -1;
    *(v37 + 19) = 0;
    *(v37 + 20) = 0;
    *(v37 + 7) = 0;
    *(v37 + 8) = 0;
    v35 += 88;
    v37[72] = 0;
    v36 -= 88;
  }

  while (v36);
  v38 = 63608;
  v39 = 1408;
  do
  {
    v40 = self + v38;
    *(v40 + 3) = 0;
    *(v40 + 4) = 0;
    *(v40 + 5) = 0;
    *(v40 + 6) = -1;
    *(v40 + 19) = 0;
    *(v40 + 20) = 0;
    *(v40 + 7) = 0;
    *(v40 + 8) = 0;
    v38 += 88;
    v40[72] = 0;
    v39 -= 88;
  }

  while (v39);
  v41 = 65016;
  v42 = 2728;
  do
  {
    v43 = self + v41;
    *(v43 + 3) = 0;
    *(v43 + 4) = 0;
    *(v43 + 5) = 0;
    *(v43 + 6) = -1;
    *(v43 + 19) = 0;
    *(v43 + 20) = 0;
    *(v43 + 7) = 0;
    *(v43 + 8) = 0;
    v41 += 88;
    v43[72] = 0;
    v42 -= 88;
  }

  while (v42);
  v44 = 67744;
  v45 = 2728;
  do
  {
    v46 = self + v44;
    *(v46 + 3) = 0;
    *(v46 + 4) = 0;
    *(v46 + 5) = 0;
    *(v46 + 6) = -1;
    *(v46 + 19) = 0;
    *(v46 + 20) = 0;
    *(v46 + 7) = 0;
    *(v46 + 8) = 0;
    v44 += 88;
    v46[72] = 0;
    v45 -= 88;
  }

  while (v45);
  v47 = 70472;
  v48 = 11264;
  do
  {
    v49 = self + v47;
    *(v49 + 3) = 0;
    *(v49 + 4) = 0;
    *(v49 + 5) = 0;
    *(v49 + 6) = -1;
    *(v49 + 19) = 0;
    *(v49 + 20) = 0;
    *(v49 + 7) = 0;
    *(v49 + 8) = 0;
    v47 += 88;
    v49[72] = 0;
    v48 -= 88;
  }

  while (v48);
  v50 = 81736;
  v51 = 1408;
  do
  {
    v52 = self + v50;
    *(v52 + 3) = 0;
    *(v52 + 4) = 0;
    *(v52 + 5) = 0;
    *(v52 + 6) = -1;
    *(v52 + 19) = 0;
    *(v52 + 20) = 0;
    *(v52 + 7) = 0;
    *(v52 + 8) = 0;
    v50 += 88;
    v52[72] = 0;
    v51 -= 88;
  }

  while (v51);
  *(self + 10396) = 0;
  *(self + 10397) = 0;
  *(self + 10395) = 0;
  *(self + 10399) = 0;
  *(self + 10400) = 0;
  *(self + 10398) = 0;
  *(self + 5202) = 0u;
  *(self + 5203) = 0u;
  *(self + 5204) = 0u;
  *(self + 10447) = 0;
  *(self + 10448) = 0;
  *(self + 10449) = 0;
  *(self + 10450) = -1;
  *(self + 20907) = 0;
  *(self + 20908) = 0;
  *(self + 83624) = 0;
  *(self + 10451) = 0;
  *(self + 10452) = 0;
  return self;
}

- (uint64_t)setRenderPipelineState:(id *)a1 .cold.1(id *a1)
{
  [*a1 maxThreadgroupMemoryLength];
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateDispatchThreadsPerTile:context:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 tileWidth];
  [OUTLINED_FUNCTION_6() tileHeight];
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

- (uint64_t)validateFunctionTableUseResource:(uint64_t)a3 stages:context:selectorName:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  [MEMORY[0x277CCACA8] stringWithFormat:@"%@ called with stages (0x%lx), but %s resource was created for stage %@", a2, a3, "MTLVisibleFunctionTable", MTLDebugStageToString(objc_msgSend(a1, "stage"))];
  OUTLINED_FUNCTION_1_3();

  return _MTLMessageContextPush_();
}

- (uint64_t)setVisibleFunctionTables:withBufferRange:maxBuffers:buffers:buffersLength:stage:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  MTLDebugStageToString([*v0 stage]);
  v1 = OUTLINED_FUNCTION_6();
  MTLDebugStageToString(v1);
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

- (uint64_t)setIntersectionFunctionTable:atBufferIndex:maxBuffers:buffers:buffersLength:stage:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  MTLDebugStageToString([v0 stage]);
  v1 = OUTLINED_FUNCTION_6();
  MTLDebugStageToString(v1);
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

@end