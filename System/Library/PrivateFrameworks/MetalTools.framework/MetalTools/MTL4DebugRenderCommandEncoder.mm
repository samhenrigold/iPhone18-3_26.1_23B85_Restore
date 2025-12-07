@interface MTL4DebugRenderCommandEncoder
- (MTL4DebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (id).cxx_construct;
- (id)commandBuffer;
- (void)_resetEncoderWithDescriptor:(id)descriptor;
- (void)_validateDispatchThreadsPerTileCommon:(_MTLMessageContext *)common threadsPerTile:(id *)tile;
- (void)_validateDrawCommon:(_MTLMessageContext *)common primitiveType:(unint64_t)type instanceCount:(unint64_t)count;
- (void)_validateFramebufferCompatibility:(_MTLMessageContext *)compatibility pipelineState:(id)state;
- (void)_validateFunctionArguments:(_MTLMessageContext *)arguments stages:(unint64_t)stages;
- (void)_validateIndexedDrawCommon:(_MTLMessageContext *)common indexBuffer:(unint64_t)buffer indexType:(unint64_t)type indexBufferLength:(unint64_t)length;
- (void)_validateLBRT:(_MTLMessageContext *)t;
- (void)_validateMeshDrawCommon:(_MTLMessageContext *)common;
- (void)_validateThreadgroupSize:(id *)size stage:(unint64_t)stage context:(_MTLMessageContext *)context;
- (void)_validateThreadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup context:(_MTLMessageContext *)context;
- (void)dealloc;
- (void)dispatchThreadsPerTile:(id *)tile;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region;
- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0;
- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount;
- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance;
- (void)endEncoding;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)setArgumentTable:(id)table atStages:(unint64_t)stages;
- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha;
- (void)setColorAttachmentMap:(id)map;
- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index;
- (void)setCommandDataCorruptModeSPI:(unint64_t)i;
- (void)setCullMode:(unint64_t)mode;
- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp;
- (void)setDepthClipMode:(unint64_t)mode;
- (void)setDepthClipModeSPI:(unint64_t)i;
- (void)setDepthStencilState:(id)state;
- (void)setDepthStoreAction:(unint64_t)action;
- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound;
- (void)setFrontFacingWinding:(unint64_t)winding;
- (void)setLineWidth:(float)width;
- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)setRenderPipelineState:(id)state;
- (void)setScissorRect:(id *)rect;
- (void)setScissorRects:(id *)rects count:(unint64_t)count;
- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue;
- (void)setStencilReferenceValue:(unsigned int)value;
- (void)setStencilStoreAction:(unint64_t)action;
- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setTriangleFillMode:(unint64_t)mode;
- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings;
- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value;
- (void)setViewport:(id *)viewport;
- (void)setViewports:(id *)viewports count:(unint64_t)count;
- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset;
- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4DebugRenderCommandEncoder

- (MTL4DebugRenderCommandEncoder)initWithRenderCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  v8 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v8)
  {
    v8->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v8->super.super.super._device commandBuffer:buffer encoderStageMask:31];
    [(MTL4DebugRenderCommandEncoder *)v8 _resetEncoderWithDescriptor:descriptor];
    v8->_colorAttachmentMap = objc_opt_new();
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 dealloc];
}

- (id)commandBuffer
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugRenderCommandEncoder;
  return [(objc_super *)v4 commandBuffer];
}

- (void)endEncoding
{
  selfCopy = self;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder endEncodingPreamble];
  v3.receiver = selfCopy;
  v3.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
  selfCopy->_currentViewports.__end_ = selfCopy->_currentViewports.__begin_;
  selfCopy->_currentScissorRects.__end_ = selfCopy->_currentScissorRects.__begin_;
  selfCopy = (selfCopy + 5736);
  std::__tree<unsigned int>::destroy(selfCopy, &selfCopy->super.super.super._parent->super.isa);
  selfCopy->super.super.super.super.isa = &selfCopy->super.super.super._parent;
  selfCopy->super.super.super._baseObject = 0;
  selfCopy->super.super.super._parent = 0;
}

- (void)setColorAttachmentMap:(id)map
{
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding:0])
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

  self->_colorAttachmentMap = v5;
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)state
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (state)
    {
LABEL_3:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_4;
      }
    }
  }

  else if (state)
  {
    goto LABEL_3;
  }

  _MTLMessageContextPush_();
LABEL_4:
  encoderState = self->_encoderState;
  if ((*&encoderState & 1) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x2000) != 0 && self->_currentRenderPipelineState == state)
  {
    _MTLMessageContextPush_();
  }

  if (!*&v7[0])
  {
    [(MTL4DebugRenderCommandEncoder *)self _validateFramebufferCompatibility:v7 pipelineState:state];
  }

  _MTLMessageContextEnd();
  self->_currentRenderPipelineState = state;
  self->_encoderState = (*&self->_encoderState & 0xFFFFDFFE | 0x2000);
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setRenderPipelineState:state];
}

- (void)setViewport:(id *)viewport
{
  v20 = 0;
  memset(&v19[3], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 2) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x4000) != 0)
  {
    begin = self->_currentViewports.__begin_;
    end = self->_currentViewports.__end_;
    if (end - begin == 48)
    {
      v8 = begin == end ? 0 : self->_currentViewports.__begin_;
      if (!memcmp(v8, viewport, 0x30uLL))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  if (fabs(viewport->var2) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(viewport->var3) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(viewport->var0) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  if (fabs(viewport->var1) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  var4 = viewport->var4;
  if (fabs(var4) == INFINITY)
  {
    _MTLMessageContextPush_();
    var4 = viewport->var4;
  }

  if (fabs(var4) == INFINITY)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10 = self->_currentViewports.__begin_;
  self->_currentViewports.__end_ = v10;
  cap = self->_currentViewports.__cap_;
  if (v10 >= cap)
  {
    v14 = 0xAAAAAAAAAAAAAAABLL * ((cap - v10) >> 4);
    v15 = 2 * v14;
    if (2 * v14 <= 1)
    {
      v15 = 1;
    }

    if (v14 >= 0x2AAAAAAAAAAAAAALL)
    {
      v16 = 0x555555555555555;
    }

    else
    {
      v16 = v15;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(&self->_currentViewports, v16);
  }

  v12 = *&viewport->var0;
  v13 = *&viewport->var4;
  *(v10 + 1) = *&viewport->var2;
  *(v10 + 2) = v13;
  *v10 = v12;
  self->_currentViewports.__end_ = (v10 + 48);
  self->_encoderState = (*&self->_encoderState & 0xFFFFBFFD | 0x4000);
  v17 = *&viewport->var2;
  v19[0] = *&viewport->var0;
  v19[1] = v17;
  v19[2] = *&viewport->var4;
  v18.receiver = self;
  v18.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v18 setViewport:v19];
}

- (void)setViewports:(id *)viewports count:(unint64_t)count
{
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 2) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x4000) != 0 && (begin = self->_currentViewports.__begin_, end = self->_currentViewports.__end_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 4) == count) && (begin != end ? (v10 = self->_currentViewports.__begin_) : (v10 = 0), !memcmp(v10, viewports, end - begin)))
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_28;
    }
  }

  else if (!count)
  {
    goto LABEL_28;
  }

  v11 = 0;
  p_var4 = &viewports->var4;
  do
  {
    if (fabs(*(p_var4 - 2)) == INFINITY)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    if (fabs(*(p_var4 - 1)) == INFINITY)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    if (fabs(*(p_var4 - 4)) == INFINITY)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    if (fabs(*(p_var4 - 3)) == INFINITY)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    v13 = *p_var4;
    if (fabs(*p_var4) == INFINITY)
    {
      v31 = v11;
      _MTLMessageContextPush_();
      v13 = *p_var4;
    }

    if (fabs(v13) == INFINITY)
    {
      v31 = v11;
      _MTLMessageContextPush_();
    }

    ++v11;
    p_var4 += 6;
  }

  while (count != v11);
LABEL_28:
  viewportsCopy = viewports;
  _MTLMessageContextEnd();
  selfCopy = self;
  p_currentViewports = &self->_currentViewports;
  self->_currentViewports.__end_ = self->_currentViewports.__begin_;
  std::vector<MTLViewport>::reserve(&self->_currentViewports.__begin_, count);
  if (count)
  {
    v15 = self->_currentViewports.__end_;
    viewportsCopy2 = viewports;
    countCopy = count;
    do
    {
      cap = p_currentViewports->__cap_;
      if (v15 >= cap)
      {
        v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - p_currentViewports->__begin_) >> 4);
        v22 = v21 + 1;
        if (v21 + 1 > 0x555555555555555)
        {
          std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
        }

        v23 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_currentViewports->__begin_) >> 4);
        if (2 * v23 > v22)
        {
          v22 = 2 * v23;
        }

        if (v23 >= 0x2AAAAAAAAAAAAAALL)
        {
          v24 = 0x555555555555555;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(p_currentViewports, v24);
        }

        v25 = 48 * v21;
        v26 = *&viewportsCopy2->var0;
        v27 = *&viewportsCopy2->var4;
        *(v25 + 16) = *&viewportsCopy2->var2;
        *(v25 + 32) = v27;
        *v25 = v26;
        v15 = (48 * v21 + 48);
        v28 = p_currentViewports->__end_ - p_currentViewports->__begin_;
        v29 = (v25 - v28);
        memcpy((v25 - v28), p_currentViewports->__begin_, v28);
        v30 = p_currentViewports->__begin_;
        p_currentViewports->__begin_ = v29;
        p_currentViewports->__end_ = v15;
        p_currentViewports->__cap_ = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        v19 = *&viewportsCopy2->var0;
        v20 = *&viewportsCopy2->var4;
        *(v15 + 1) = *&viewportsCopy2->var2;
        *(v15 + 2) = v20;
        *v15 = v19;
        v15 = (v15 + 48);
      }

      p_currentViewports->__end_ = v15;
      ++viewportsCopy2;
      --countCopy;
    }

    while (countCopy);
  }

  selfCopy->_encoderState = (*&selfCopy->_encoderState & 0xFFFFBFFD | 0x4000);
  v34.receiver = selfCopy;
  v34.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v34 setViewports:viewportsCopy count:count, v31];
}

- (void)setVertexAmplificationCount:(unint64_t)count viewMappings:(id *)mappings
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self->super.super.super._device supportsVertexAmplification])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (![(MTLToolsDevice *)self->super.super.super._device supportsVertexAmplificationCount:count])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 4) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x8000) != 0 && self->_currentVertexAmplificationCount == count)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentVertexAmplificationCount = count;
  self->_encoderState = (*&self->_encoderState & 0xFFFF7FFB | 0x8000);
  v8.receiver = self;
  v8.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setVertexAmplificationCount:count viewMappings:mappings];
}

- (void)setCullMode:(unint64_t)mode
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x10000) != 0 && self->_currentCullMode == mode)
  {
    [MTL4DebugRenderCommandEncoder setCullMode:mode];
  }

  _MTLMessageContextEnd();
  self->_currentCullMode = mode;
  self->_encoderState = (*&self->_encoderState & 0xFFFEFFF7 | 0x10000);
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setCullMode:mode];
}

- (void)setDepthClipMode:(unint64_t)mode
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 2)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x10) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x20000) != 0 && self->_currentDepthClipMode == mode)
  {
    [MTL4DebugRenderCommandEncoder setDepthClipMode:mode];
  }

  _MTLMessageContextEnd();
  self->_currentDepthClipMode = mode;
  self->_encoderState = (*&self->_encoderState & 0xFFFDFFEF | 0x20000);
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setDepthClipMode:mode];
}

- (void)setDepthBias:(float)bias slopeScale:(float)scale clamp:(float)clamp
{
  v14 = 0;
  memset(&v13[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x20) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x40000) != 0 && self->_currentDepthBias == bias && self->_currentDepthSlopeScale == scale && self->_currentDepthClamp == clamp)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthBias = bias;
  self->_currentDepthSlopeScale = scale;
  self->_currentDepthClamp = clamp;
  self->_encoderState = (*&self->_encoderState & 0xFFFBFFDF | 0x40000);
  v13[0].receiver = self;
  v13[0].super_class = MTL4DebugRenderCommandEncoder;
  *&v10 = bias;
  *&v11 = scale;
  *&v12 = clamp;
  [(objc_super *)v13 setDepthBias:v10 slopeScale:v11 clamp:v12];
}

- (void)setDepthTestMinBound:(float)bound maxBound:(float)maxBound
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _MTLMessageContextBegin_();
  if (![(MTLToolsDevice *)self->super.super.super._device supportsDepthBoundsTesting])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
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

  if (self->_currentDepthTestMinBound == bound && self->_currentDepthTestMaxBound == maxBound)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthTestMinBound = bound;
  self->_currentDepthTestMaxBound = maxBound;
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  *&v7 = bound;
  *&v8 = maxBound;
  [(MTL4ToolsRenderCommandEncoder *)&v9 setDepthTestMinBound:v7 maxBound:v8];
}

- (void)setScissorRect:(id *)rect
{
  v31 = 0;
  memset(&v30[2], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  var2 = rect->var2;
  if (var2 + rect->var0 > self->_width)
  {
    v27 = var2 + rect->var0;
    width = self->_width;
    var0 = rect->var0;
    v26 = rect->var2;
    _MTLMessageContextPush_();
  }

  var1 = rect->var1;
  var3 = rect->var3;
  if (var3 + var1 > self->_height)
  {
    v27 = var3 + var1;
    width = self->_height;
    var0 = rect->var1;
    v26 = rect->var3;
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x40) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x80000) != 0)
  {
    begin = self->_currentScissorRects.__begin_;
    end = self->_currentScissorRects.__end_;
    if (end - begin == 32)
    {
      if (begin == end)
      {
        begin = 0;
      }

      v11 = *begin;
      v12 = *(begin + 1);
      v14 = *(begin + 2);
      v13 = *(begin + 3);
      if (v11 == rect->var0 && v12 == rect->var1 && v14 == rect->var2 && v13 == rect->var3)
      {
        _MTLMessageContextPush_();
      }
    }
  }

  _MTLMessageContextEnd();
  v18 = self->_currentScissorRects.__begin_;
  self->_currentScissorRects.__end_ = v18;
  cap = self->_currentScissorRects.__cap_;
  if (v18 >= cap)
  {
    v21 = cap - v18;
    v22 = v21 >> 4;
    if ((v21 >> 4) <= 1)
    {
      v22 = 1;
    }

    if (v21 >= 0x7FFFFFFFFFFFFFE0)
    {
      v23 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v22;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(&self->_currentScissorRects, v23);
  }

  v20 = *&rect->var2;
  *v18 = *&rect->var0;
  *(v18 + 1) = v20;
  self->_currentScissorRects.__end_ = (v18 + 32);
  self->_encoderState = (*&self->_encoderState & 0xFFF7FFBF | 0x80000);
  v24 = *&rect->var2;
  v30[0] = *&rect->var0;
  v30[1] = v24;
  v29.receiver = self;
  v29.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v29 setScissorRect:v30, var0, v26, v27, width];
}

- (void)setScissorRects:(id *)rects count:(unint64_t)count
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_11;
    }
  }

  else if (!count)
  {
    goto LABEL_11;
  }

  v7 = 0;
  p_var2 = &rects->var2;
  do
  {
    v9 = *(p_var2 - 2);
    if (*p_var2 + v9 > self->_width)
    {
      v35 = v7;
      width = self->_width;
      v33 = *p_var2;
      v34 = *p_var2 + v9;
      v32 = *(p_var2 - 2);
      _MTLMessageContextPush_();
    }

    v10 = *(p_var2 - 1);
    v11 = p_var2[1];
    if (v11 + v10 > self->_height)
    {
      v35 = v7;
      width = self->_height;
      v33 = p_var2[1];
      v34 = v11 + v10;
      v32 = *(p_var2 - 1);
      _MTLMessageContextPush_();
    }

    ++v7;
    p_var2 += 4;
  }

  while (count != v7);
LABEL_11:
  encoderState = self->_encoderState;
  if ((*&encoderState & 0x40) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x80000) != 0)
  {
    begin = self->_currentScissorRects.__begin_;
    end = self->_currentScissorRects.__end_;
    if (count == (end - begin) >> 5)
    {
      v15 = begin == end ? 0 : self->_currentScissorRects.__begin_;
      if (!memcmp(v15, rects, end - begin))
      {
        _MTLMessageContextPush_();
      }
    }
  }

  rectsCopy = rects;
  _MTLMessageContextEnd();
  p_currentScissorRects = &self->_currentScissorRects;
  self->_currentScissorRects.__end_ = self->_currentScissorRects.__begin_;
  std::vector<MTLScissorRect>::reserve(&self->_currentScissorRects.__begin_, count, v17);
  if (count)
  {
    v18 = self->_currentScissorRects.__end_;
    rectsCopy2 = rects;
    countCopy = count;
    do
    {
      cap = self->_currentScissorRects.__cap_;
      if (v18 >= cap)
      {
        v23 = (v18 - p_currentScissorRects->__begin_) >> 5;
        if ((v23 + 1) >> 59)
        {
          std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
        }

        v24 = cap - p_currentScissorRects->__begin_;
        v25 = v24 >> 4;
        if (v24 >> 4 <= (v23 + 1))
        {
          v25 = v23 + 1;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFE0)
        {
          v26 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(&self->_currentScissorRects, v26);
        }

        v27 = (32 * v23);
        v28 = *&rectsCopy2->var2;
        *v27 = *&rectsCopy2->var0;
        *(v27 + 1) = v28;
        v18 = (32 * v23 + 32);
        v29 = (self->_currentScissorRects.__end_ - p_currentScissorRects->__begin_);
        v30 = (v27 - v29);
        memcpy((v27 - v29), p_currentScissorRects->__begin_, v29);
        v31 = p_currentScissorRects->__begin_;
        p_currentScissorRects->__begin_ = v30;
        self->_currentScissorRects.__end_ = v18;
        self->_currentScissorRects.__cap_ = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        v22 = *&rectsCopy2->var2;
        *v18 = *&rectsCopy2->var0;
        *(v18 + 1) = v22;
        v18 = (v18 + 32);
      }

      self->_currentScissorRects.__end_ = v18;
      ++rectsCopy2;
      --countCopy;
    }

    while (countCopy);
  }

  self->_encoderState = (*&self->_encoderState & 0xFFF7FFBF | 0x80000);
  v38.receiver = self;
  v38.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v38 setScissorRects:rectsCopy count:count, v32, v33, v34, v35, width];
}

- (void)setTriangleFillMode:(unint64_t)mode
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x80) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x100000) != 0 && self->_currentTriangleFillMode == mode)
  {
    [MTL4DebugRenderCommandEncoder setTriangleFillMode:mode];
  }

  _MTLMessageContextEnd();
  self->_currentTriangleFillMode = mode;
  self->_encoderState = (*&self->_encoderState & 0xFFEFFF7F | 0x100000);
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setTriangleFillMode:mode];
}

- (void)setBlendColorRed:(float)red green:(float)green blue:(float)blue alpha:(float)alpha
{
  v17 = 0;
  memset(&v16[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x100) != 0)
  {
    if ((*&encoderState & 0x200000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 0x200000) == 0)
    {
      goto LABEL_10;
    }
  }

  if (self->_currentBlendColorRed == red && self->_currentBlendColorGreen == green && self->_currentBlendColorBlue == blue && self->_currentBlendColorAlpha == alpha)
  {
    _MTLMessageContextPush_();
  }

LABEL_10:
  _MTLMessageContextEnd();
  v16[0].receiver = self;
  v16[0].super_class = MTL4DebugRenderCommandEncoder;
  *&v12 = red;
  *&v13 = green;
  *&v14 = blue;
  *&v15 = alpha;
  [(objc_super *)v16 setBlendColorRed:v12 green:v13 blue:v14 alpha:v15];
}

- (void)setDepthStencilState:(id)state
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x200) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x400000) != 0 && self->_currentDepthStencilState == state)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentDepthStencilState = state;
  self->_encoderState = (*&self->_encoderState & 0xFFBFFDFF | 0x400000);
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v6 setDepthStencilState:state];
}

- (void)setStencilReferenceValue:(unsigned int)value
{
  v3 = *&value;
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x400) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x800000) != 0 && self->_currentStencilFrontReferenceValue == v3 && self->_currentStencilBackReferenceValue == v3)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentStencilFrontReferenceValue = v3;
  self->_currentStencilBackReferenceValue = v3;
  self->_encoderState = (*&self->_encoderState & 0xFF7FFBFF | 0x800000);
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v6 setStencilReferenceValue:v3];
}

- (void)setStencilFrontReferenceValue:(unsigned int)value backReferenceValue:(unsigned int)referenceValue
{
  v4 = *&referenceValue;
  v5 = *&value;
  v9 = 0;
  memset(&v8[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x400) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x800000) != 0 && self->_currentStencilFrontReferenceValue == v5 && self->_currentStencilBackReferenceValue == v4)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentStencilFrontReferenceValue = v5;
  self->_currentStencilBackReferenceValue = v4;
  self->_encoderState = (*&self->_encoderState & 0xFF7FFBFF | 0x800000);
  v8[0].receiver = self;
  v8[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v8 setStencilFrontReferenceValue:v5 backReferenceValue:v4];
}

- (void)setVisibilityResultMode:(unint64_t)mode offset:(unint64_t)offset
{
  offsetCopy = offset;
  offsetCopy2 = offset;
  if (mode == 2)
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 3)
  {
    modeCopy = mode;
    _MTLMessageContextPush_();
  }

  else if (!mode)
  {
    v12 = 1;
    goto LABEL_22;
  }

  left = self->_allVisibilityOffsets.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_allVisibilityOffsets.__tree_.__end_node_;
    do
    {
      v9 = left[4].__left_;
      v10 = v9 >= offsetCopy;
      v11 = v9 < offsetCopy;
      if (v10)
      {
        p_end_node = left;
      }

      left = left[v11].__left_;
    }

    while (left);
    if (p_end_node != &self->_allVisibilityOffsets.__tree_.__end_node_ && p_end_node[4].__left_ <= offsetCopy)
    {
      modeCopy = offsetCopy;
      _MTLMessageContextPush_();
    }
  }

  if (![(MTL4RenderPassDescriptor *)self->_descriptor visibilityResultBuffer])
  {
    _MTLMessageContextPush_();
  }

  if (offsetCopy + 8 > [-[MTL4RenderPassDescriptor visibilityResultBuffer](self->_descriptor "visibilityResultBuffer")])
  {
    [MTL4DebugRenderCommandEncoder setVisibilityResultMode:v16 offset:?];
  }

  v12 = 0;
LABEL_22:
  encoderState = self->_encoderState;
  if ((*&encoderState & 0x800) == 0)
  {
    _MTLMessageContextPush_();
    encoderState = self->_encoderState;
  }

  if ((*&encoderState & 0x1000000) != 0 && self->_currentVisibilityResultMode == mode && self->_currentVisibilityResultModeOffset == offsetCopy)
  {
    [MTL4DebugRenderCommandEncoder setVisibilityResultMode:mode offset:v16];
  }

  _MTLMessageContextEnd();
  self->_currentVisibilityResultMode = mode;
  self->_currentVisibilityResultModeOffset = offsetCopy;
  if ((v12 & 1) == 0)
  {
    std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long &>(&self->_allVisibilityOffsets, &offsetCopy2, &offsetCopy2);
    offsetCopy = offsetCopy2;
  }

  self->_encoderState = (*&self->_encoderState & 0xFEFFF7FF | 0x1000000);
  v15.receiver = self;
  v15.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v15 setVisibilityResultMode:mode offset:offsetCopy];
}

- (void)setColorStoreAction:(unint64_t)action atIndex:(unint64_t)index
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (index >= 8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  [v7 setStoreAction:{action, _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v7, index, self->_unknownStoreActions)}];
  v8.receiver = self;
  v8.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setColorStoreAction:action atIndex:index];
}

- (void)setDepthStoreAction:(unint64_t)action
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  [v5 setStoreAction:{action, _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v5, 8uLL, self->_unknownStoreActions)}];
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v6 setDepthStoreAction:action];
}

- (void)setStencilStoreAction:(unint64_t)action
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5 = [-[MTL4RenderPassDescriptor colorAttachments](self->_descriptor "colorAttachments")];
  [v5 setStoreAction:{action, _MTLDebugValidateDeferredStoreActionOnDevice(self->super.super.super._device, action, v5, 9uLL, self->_unknownStoreActions)}];
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v6 setStencilStoreAction:action];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v10 primitiveType:primitives instanceCount:1];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawPrimitives:primitives vertexStart:start vertexCount:count];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v12 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v11.receiver = self;
  v11.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount];
}

- (void)drawPrimitives:(unint64_t)primitives vertexStart:(unint64_t)start vertexCount:(unint64_t)count instanceCount:(unint64_t)instanceCount baseInstance:(unint64_t)instance
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v14 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v13.receiver = self;
  v13.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawPrimitives:primitives vertexStart:start vertexCount:count instanceCount:instanceCount baseInstance:instance];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v14 indexBuffer:buffer indexType:type indexBufferLength:length];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v14 primitiveType:primitives instanceCount:1];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v13.receiver = self;
  v13.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v13 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v16 indexBuffer:buffer indexType:type indexBufferLength:length];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v16 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v15.receiver = self;
  v15.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v15 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexCount:(unint64_t)count indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length instanceCount:(unint64_t)instanceCount baseVertex:(int64_t)vertex baseInstance:(unint64_t)self0
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateIndexedDrawCommon:v18 indexBuffer:buffer indexType:type indexBufferLength:length];
  [(MTL4DebugRenderCommandEncoder *)self _validateDrawCommon:v18 primitiveType:primitives instanceCount:instanceCount];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v17.receiver = self;
  v17.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v17 drawIndexedPrimitives:primitives indexCount:count indexType:type indexBuffer:buffer indexBufferLength:length instanceCount:instanceCount baseVertex:vertex baseInstance:instance];
}

- (void)drawPrimitives:(unint64_t)primitives indirectBuffer:(unint64_t)buffer
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v8 = 0;
  memset(&v7[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (buffer)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!buffer)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 drawPrimitives:primitives indirectBuffer:buffer];
}

- (void)drawIndexedPrimitives:(unint64_t)primitives indexType:(unint64_t)type indexBuffer:(unint64_t)buffer indexBufferLength:(unint64_t)length indirectBuffer:(unint64_t)indirectBuffer
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v14 = 0;
  memset(&v13[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (indirectBuffer)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!indirectBuffer)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v13[0].receiver = self;
  v13[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v13 drawIndexedPrimitives:primitives indexType:type indexBuffer:buffer indexBufferLength:length indirectBuffer:indirectBuffer];
}

- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v15.length = [buffer size];
  v14.location = location;
  v14.length = length;
  v15.location = 0;
  v8 = NSIntersectionRange(v14, v15);
  if (v8.location != location || v8.length != length)
  {
    [buffer size];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 executeCommandsInBuffer:buffer withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (indirectBuffer)
    {
      goto LABEL_3;
    }

LABEL_5:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!indirectBuffer)
  {
    goto LABEL_5;
  }

LABEL_3:
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugRenderCommandEncoder;
  [(objc_super *)v7 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer];
}

- (void)setObjectThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
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
    indexCopy2 = length;
    maxComputeThreadgroupMemoryAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v16)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v7 = &self->_currentObjectThreadgroupMemoryLengths[index];
      if (v7->isValid && !v7->hasBeenUsed)
      {
        indexCopy2 = index;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v8 = &self->_currentObjectThreadgroupMemoryLengths[index];
  if (MTLReportFailureTypeEnabled() && !v8->hasLodClamp && !v8->threadgroupMemoryOffset && v8->threadgroupMemoryLength == length && v8->bufferAttributeStride == -1 && v8->type == 3 && !v8->object && !(v8->bufferLength | v8->var0 | v8->bufferOffset) && !*&v8->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v8->isValid = length != 0;
  v8->hasBeenUsed = 0;
  v8->type = 3;
  *&v8->object = 0u;
  *&v8->bufferLength = 0u;
  v8->bufferAttributeStride = -1;
  v8->threadgroupMemoryLength = length;
  v8->threadgroupMemoryOffset = 0;
  v8->hasLodClamp = 0;
  v8->lodMinClamp = 0.0;
  v8->lodMaxClamp = 0.0;
  v15.receiver = self;
  v15.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v15 setObjectThreadgroupMemoryLength:length atIndex:index, indexCopy2, maxComputeThreadgroupMemoryAlignmentBytes];
}

- (void)_validateThreadgroupSize:(id *)size stage:(unint64_t)stage context:(_MTLMessageContext *)context
{
  meshDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshDescriptor];
  v9 = meshDescriptor;
  if (stage == 16)
  {
    if (![meshDescriptor meshFunction])
    {
      return;
    }

    maxTotalThreadsPerMeshThreadgroup = [(MTLRenderPipelineState *)self->_currentRenderPipelineState maxTotalThreadsPerMeshThreadgroup];
    meshThreadgroupSizeIsMultipleOfThreadExecutionWidth = [v9 meshThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    meshThreadExecutionWidth = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshThreadExecutionWidth];
  }

  else
  {
    if (stage != 8 || ![meshDescriptor objectFunction])
    {
      return;
    }

    maxTotalThreadsPerMeshThreadgroup = [(MTLRenderPipelineState *)self->_currentRenderPipelineState maxTotalThreadsPerObjectThreadgroup];
    meshThreadgroupSizeIsMultipleOfThreadExecutionWidth = [v9 objectThreadgroupSizeIsMultipleOfThreadExecutionWidth];
    meshThreadExecutionWidth = [(MTLRenderPipelineState *)self->_currentRenderPipelineState objectThreadExecutionWidth];
  }

  v13 = size->var1 * size->var0 * size->var2;
  if (v13 > maxTotalThreadsPerMeshThreadgroup)
  {
    _MTLMessageContextPush_();
  }

  if (meshThreadExecutionWidth)
  {
    v14 = meshThreadgroupSizeIsMultipleOfThreadExecutionWidth;
  }

  else
  {
    v14 = 0;
  }

  if (v14 == 1)
  {
    if (v13 % meshThreadExecutionWidth)
    {
      _MTLMessageContextPush_();
    }
  }
}

- (void)_validateThreadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup context:(_MTLMessageContext *)context
{
  v11 = *threadgroup;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadgroupSize:&v11 stage:8 context:?];
  v11 = *meshThreadgroup;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadgroupSize:&v11 stage:16 context:context];
  v11 = *threadgroup;
  currentRenderPipelineState = self->_currentRenderPipelineState;
  if (currentRenderPipelineState)
  {
    objc_msgSend_requiredThreadsPerObjectThreadgroup(currentRenderPipelineState);
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  v11 = *meshThreadgroup;
  v10 = self->_currentRenderPipelineState;
  if (v10)
  {
    objc_msgSend_requiredThreadsPerMeshThreadgroup(v10);
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v16];
  v14 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v12 = *&meshThreadgroup->var0;
  v13 = meshThreadgroup->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v14 threadsPerMeshThreadgroup:&v12 context:v16];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14 = *&threadgroups->var0;
  var2 = threadgroups->var2;
  v12 = *&threadgroup->var0;
  v13 = threadgroup->var2;
  v10 = *&meshThreadgroup->var0;
  v11 = meshThreadgroup->var2;
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreadgroups:&v14 threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _MTLMessageContextBegin_();
  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v16];
  v14 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v12 = *&meshThreadgroup->var0;
  v13 = meshThreadgroup->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v14 threadsPerMeshThreadgroup:&v12 context:v16];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v14 = *&threads->var0;
  var2 = threads->var2;
  v12 = *&threadgroup->var0;
  v13 = threadgroup->var2;
  v10 = *&meshThreadgroup->var0;
  v11 = meshThreadgroup->var2;
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreads:&v14 threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  _MTLMessageContextBegin_();
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  [(MTL4DebugRenderCommandEncoder *)self _validateMeshDrawCommon:v14];
  v12 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v10 = *&meshThreadgroup->var0;
  v11 = meshThreadgroup->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateThreadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10 context:v14];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDraw];
  v12 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v10 = *&meshThreadgroup->var0;
  v11 = meshThreadgroup->var2;
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 drawMeshThreadgroupsWithIndirectBuffer:buffer threadsPerObjectThreadgroup:&v12 threadsPerMeshThreadgroup:&v10];
}

- (void)dispatchThreadsPerTile:(id *)tile
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  _MTLMessageContextBegin_();
  v6 = *tile;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v7 threadsPerTile:&v6];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v6 = *tile;
  v5.receiver = self;
  v5.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v5 dispatchThreadsPerTile:&v6];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length offset:(unint64_t)offset atIndex:(unint64_t)index
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes]<= index)
  {
    indexCopy = index;
    maxComputeLocalMemorySizes = [(MTLToolsDevice *)self->super.super.super._device maxComputeLocalMemorySizes];
    _MTLMessageContextPush_();
  }

  if (offset + length > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength:indexCopy])
  {
    lengthCopy = length;
    maxThreadgroupMemoryLength = [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength];
    offsetCopy = offset;
    _MTLMessageContextPush_();
  }

  if (length % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:offsetCopy])
  {
    lengthCopy2 = length;
    maxComputeThreadgroupMemoryAlignmentBytes = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (offset % [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes:lengthCopy2])
  {
    indexCopy2 = offset;
    maxComputeThreadgroupMemoryAlignmentBytes2 = [(MTLToolsDevice *)self->super.super.super._device maxComputeThreadgroupMemoryAlignmentBytes];
    _MTLMessageContextPush_();
  }

  if (!v21)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v9 = &self->_currentThreadgroupMemoryArguments[index];
      if (v9->isValid && !v9->hasBeenUsed)
      {
        indexCopy2 = index;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v10 = &self->_currentThreadgroupMemoryArguments[index];
  if (MTLReportFailureTypeEnabled() && !v10->hasLodClamp && v10->threadgroupMemoryOffset == offset && v10->threadgroupMemoryLength == length && v10->bufferAttributeStride == -1 && v10->type == 3 && !v10->object && !(v10->bufferLength | v10->var0 | v10->bufferOffset) && !*&v10->lodMinClamp)
  {
    [MTL4DebugComputeCommandEncoder setThreadgroupMemoryLength:atIndex:];
  }

  v10->isValid = length != 0;
  v10->hasBeenUsed = 0;
  v10->type = 3;
  *&v10->object = 0u;
  *&v10->bufferLength = 0u;
  v10->bufferAttributeStride = -1;
  v10->threadgroupMemoryLength = length;
  v10->threadgroupMemoryOffset = offset;
  v10->hasLodClamp = 0;
  v10->lodMinClamp = 0.0;
  v10->lodMaxClamp = 0.0;
  v20.receiver = self;
  v20.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v20 setThreadgroupMemoryLength:length offset:offset atIndex:index, indexCopy2, maxComputeThreadgroupMemoryAlignmentBytes2];
}

- (void)setArgumentTable:(id)table atStages:(unint64_t)stages
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!table)
    {
      goto LABEL_7;
    }
  }

  else if (!table)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (stages >= 0x20)
  {
    stagesCopy = stages;
    _MTLMessageContextPush_();
  }

LABEL_7:
  _MTLMessageContextEnd();
  if (stages)
  {
    self->_currentVertexArgumentTable = table;
    if ((stages & 2) == 0)
    {
LABEL_9:
      if ((stages & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  else if ((stages & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_currentFragmentArgumentTable = table;
  if ((stages & 4) == 0)
  {
LABEL_10:
    if ((stages & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    self->_currentObjectArgumentTable = table;
    if ((stages & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_16:
  self->_currentTileArgumentTable = table;
  if ((stages & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((stages & 0x10) != 0)
  {
LABEL_12:
    self->_currentMeshArgumentTable = table;
  }

LABEL_13:
  v8.receiver = self;
  v8.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v8 setArgumentTable:table atStages:stages, stagesCopy];
}

- (void)setFrontFacingWinding:(unint64_t)winding
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (winding >= 2)
  {
    _MTLMessageContextPush_();
  }

  encoderState = self->_encoderState;
  if ((*&encoderState & 0x1000) != 0)
  {
    if ((*&encoderState & 0x2000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 0x2000000) == 0)
    {
      goto LABEL_9;
    }
  }

  if (self->_currentFrontFacingWinding == winding)
  {
    [MTL4DebugRenderCommandEncoder setFrontFacingWinding:winding];
  }

LABEL_9:
  _MTLMessageContextEnd();
  v6.receiver = self;
  v6.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v6 setFrontFacingWinding:winding];
}

- (void)setLineWidth:(float)width
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (width < 1.0 || width > 16.0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugRenderCommandEncoder;
  *&v6 = width;
  [(MTL4ToolsRenderCommandEncoder *)&v7 setLineWidth:v6];
}

- (void)setDepthClipModeSPI:(unint64_t)i
{
  if (MTLReportFailureTypeEnabled())
  {
    [(MTLToolsObject *)self->super.super.super._device originalObject];
    MTLValidateFeatureSupport();
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (i >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5.receiver = self;
  v5.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v5 setDepthClipModeSPI:i];
}

- (void)setCommandDataCorruptModeSPI:(unint64_t)i
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (i - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5.receiver = self;
  v5.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v5 setCommandDataCorruptModeSPI:i];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v10 = *&tile->var0;
  *&v11 = tile->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v15 threadsPerTile:&v10];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v7 = *&tile->var0;
  var2 = tile->var2;
  v8 = *&region->var0.var2;
  v10 = *&region->var0.var0;
  v11 = v8;
  v12 = *&region->var1.var1;
  v13 = v7;
  v9.receiver = self;
  v9.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v9 dispatchThreadsPerTile:&v13 inRegion:&v10];
}

- (void)dispatchThreadsPerTile:(id *)tile inRegion:(id *)region withRenderTargetArrayIndex:(unsigned int)index
{
  v5 = *&index;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v12 = *&tile->var0;
  *&v13 = tile->var2;
  [(MTL4DebugRenderCommandEncoder *)self _validateDispatchThreadsPerTileCommon:v17 threadsPerTile:&v12];
  _MTLMessageContextEnd();
  [(MTL4DebugRenderCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v9 = *&tile->var0;
  var2 = tile->var2;
  v10 = *&region->var0.var2;
  v12 = *&region->var0.var0;
  v13 = v10;
  v14 = *&region->var1.var1;
  v15 = v9;
  v11.receiver = self;
  v11.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 dispatchThreadsPerTile:&v15 inRegion:&v12 withRenderTargetArrayIndex:v5];
}

- (void)setVertexAmplificationMode:(unint64_t)mode value:(unint64_t)value
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (mode >= 2)
  {
    modeCopy = mode;
    _MTLMessageContextPush_();
  }

  v7 = vcnt_s8(value);
  v7.i16[0] = vaddlv_u8(v7);
  if (mode == 1)
  {
    valueCopy = v7.u32[0];
  }

  else
  {
    valueCopy = value;
  }

  if (!valueCopy || valueCopy > [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxVertexAmplificationFactor];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v10 setVertexAmplificationMode:mode value:value];
}

- (void)_validateLBRT:(_MTLMessageContext *)t
{
  for (i = 0; i != 8; ++i)
  {
    descriptor = [objc_msgSend(objc_msgSend(-[MTLRenderPipelineState descriptor](self->_currentRenderPipelineState descriptor];
    if (descriptor)
    {
      v6 = descriptor;
      colorAttachments = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
      colorAttachmentMap = self->_colorAttachmentMap;
      v9 = i;
      if (colorAttachmentMap)
      {
        v9 = [(MTLLogicalToPhysicalColorAttachmentMap *)colorAttachmentMap getPhysicalIndexForLogicalIndex:i];
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

- (void)_validateIndexedDrawCommon:(_MTLMessageContext *)common indexBuffer:(unint64_t)buffer indexType:(unint64_t)type indexBufferLength:(unint64_t)length
{
  if (!buffer)
  {
    _MTLMessageContextPush_();
  }

  v9 = _MTLDebugIndexTypeSize(type, common);
  if (v9)
  {
    if (length % v9)
    {
      _MTLMessageContextPush_();
    }
  }
}

- (void)_validateDrawCommon:(_MTLMessageContext *)common primitiveType:(unint64_t)type instanceCount:(unint64_t)count
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*(&self->_encoderState + 1) & 0x20) != 0 && (currentRenderPipelineState = self->_currentRenderPipelineState) != 0 || (_MTLMessageContextPush_(), (currentRenderPipelineState = self->_currentRenderPipelineState) != 0))
  {
    if (![(MTLRenderPipelineState *)currentRenderPipelineState descriptor]&& ![(MTLRenderPipelineState *)currentRenderPipelineState mtl4Descriptor])
    {
      _MTLMessageContextPush_();
    }

    if ([-[MTLRenderPipelineState descriptor](self->_currentRenderPipelineState "descriptor")] == 1)
    {
      [(MTL4DebugRenderCommandEncoder *)self _validateLBRT:common];
    }
  }

  if (!count)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateMTLPrimitiveTypeWithContext(type, 0, common);
  rasterizationRateMap = [(MTL4RenderPassDescriptor *)self->_descriptor rasterizationRateMap];
  if (type - 5 <= 0xFFFFFFFFFFFFFFFDLL && rasterizationRateMap)
  {
    _MTLMessageContextPush_();
  }

  v11 = self->_currentScissorRects.__end_ - self->_currentScissorRects.__begin_;
  if (v11 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_currentViewports.__end_ - self->_currentViewports.__begin_) >> 4) != v11 >> 5)
  {
    _MTLMessageContextPush_();
  }

  if (!common->var0)
  {

    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:common stages:3];
  }
}

- (void)_validateMeshDrawCommon:(_MTLMessageContext *)common
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*(&self->_encoderState + 1) & 0x20) != 0 && (currentRenderPipelineState = self->_currentRenderPipelineState) != 0 || (_MTLMessageContextPush_(), (currentRenderPipelineState = self->_currentRenderPipelineState) != 0))
  {
    if (![(MTLRenderPipelineState *)currentRenderPipelineState meshDescriptor]&& ![(MTLRenderPipelineState *)currentRenderPipelineState mtl4MeshDescriptor])
    {
      _MTLMessageContextPush_();
    }
  }

  v6 = self->_currentScissorRects.__end_ - self->_currentScissorRects.__begin_;
  if (v6 != 32 && 0xAAAAAAAAAAAAAAABLL * ((self->_currentViewports.__end_ - self->_currentViewports.__begin_) >> 4) != v6 >> 5)
  {
    _MTLMessageContextPush_();
  }

  if (!common->var0)
  {

    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:common stages:26];
  }
}

- (void)_validateDispatchThreadsPerTileCommon:(_MTLMessageContext *)common threadsPerTile:(id *)tile
{
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*(&self->_encoderState + 1) & 0x20) != 0 && (p_currentRenderPipelineState = &self->_currentRenderPipelineState, (currentRenderPipelineState = self->_currentRenderPipelineState) != 0) || (_MTLMessageContextPush_(), p_currentRenderPipelineState = &self->_currentRenderPipelineState, (currentRenderPipelineState = self->_currentRenderPipelineState) != 0))
  {
    if (![(MTLRenderPipelineState *)currentRenderPipelineState tileDescriptor]&& ![(MTLRenderPipelineState *)currentRenderPipelineState mtl4TileDescriptor])
    {
      _MTLMessageContextPush_();
    }
  }

  if (!common->var0)
  {
    if ([(MTLRenderPipelineState *)*p_currentRenderPipelineState threadgroupSizeMatchesTileSize])
    {
      var0 = tile->var0;
      if (var0 != [(MTL4RenderPassDescriptor *)self->_descriptor tileWidth]|| (var1 = tile->var1, var1 != [(MTL4RenderPassDescriptor *)self->_descriptor tileHeight]))
      {
        [(MTL4DebugRenderCommandEncoder *)tile _validateDispatchThreadsPerTileCommon:common threadsPerTile:?];
      }
    }

    if (![(MTLToolsDevice *)self->super.super.super._device supportsNonSquareTileShaders]&& ([(MTLRenderPipelineState *)*p_currentRenderPipelineState threadgroupSizeMatchesTileSize]& 1) == 0)
    {
      v11 = tile->var0;
      if (v11 != [(MTL4RenderPassDescriptor *)self->_descriptor tileWidth]|| (v12 = tile->var1, v12 != [(MTL4RenderPassDescriptor *)self->_descriptor tileHeight]))
      {
        if (tile->var0 != tile->var1)
        {
          v17 = tile->var0;
          v18 = tile->var1;
          v15 = tile->var0;
          v16 = v18;
          _MTLMessageContextPush_();
        }
      }
    }

    v13 = vaddq_s64(vandq_s8(*&tile->var0, vdupq_n_s64(1uLL)), *&tile->var0);
    v14 = tile->var2 * v13.i64[0] * v13.i64[1];
    if (v14 > [(MTLRenderPipelineState *)*p_currentRenderPipelineState maxTotalThreadsPerThreadgroup:v15])
    {
      [(MTL4DebugRenderCommandEncoder *)tile _validateDispatchThreadsPerTileCommon:p_currentRenderPipelineState threadsPerTile:common];
    }

    if (*p_currentRenderPipelineState)
    {
      objc_msgSend_requiredThreadsPerTileThreadgroup(*p_currentRenderPipelineState);
    }

    validateDispatchThreadsPerThreadgroupWithRTPTG();
    [(MTL4DebugRenderCommandEncoder *)self _validateFunctionArguments:common stages:4];
  }
}

- (void)_resetEncoderWithDescriptor:(id)descriptor
{
  self->_currentVertexArgumentTable = 0;
  self->_currentFragmentArgumentTable = 0;
  self->_currentTileArgumentTable = 0;
  self->_currentObjectArgumentTable = 0;
  self->_currentMeshArgumentTable = 0;
  bzero(self->_currentThreadgroupMemoryArguments, 0xAA8uLL);
  bzero(self->_currentObjectThreadgroupMemoryLengths, 0xAA8uLL);
  self->_currentRenderPipelineState = 0;
  self->_currentDepthStencilState = 0;
  self->_encoderState = (*&self->_encoderState & 0xFC820010 | 0x1FEF);
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder resetEncoderState];

  self->_descriptor = [descriptor copy];
  [descriptor validate:self->super.super.super._device width:&self->_width height:&self->_height];
  rasterizationRateMap = [(MTL4RenderPassDescriptor *)self->_descriptor rasterizationRateMap];
  if (rasterizationRateMap)
  {
    v6 = rasterizationRateMap;
    renderTargetWidth = [(MTL4RenderPassDescriptor *)self->_descriptor renderTargetWidth];
    renderTargetHeight = [(MTL4RenderPassDescriptor *)self->_descriptor renderTargetHeight];
    v9 = renderTargetHeight;
    if (renderTargetWidth)
    {
      if (renderTargetHeight)
      {
LABEL_4:
        self->_width = renderTargetWidth;
        self->_height = v9;
        goto LABEL_5;
      }
    }

    else
    {
      objc_msgSend_screenSize(v6);
      renderTargetWidth = v40;
      if (v9)
      {
        goto LABEL_4;
      }
    }

    objc_msgSend_screenSize(v6);
    v9 = v41;
    goto LABEL_4;
  }

LABEL_5:
  self->_unknownStoreActions = 0;
  colorAttachments = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  for (i = 0; i != 10; ++i)
  {
    v12 = [colorAttachments _descriptorAtIndex:i];
    if ([v12 texture] && objc_msgSend(v12, "storeAction") == 4)
    {
      self->_unknownStoreActions |= 1 << i;
    }
  }

  colorAttachments2 = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  v14 = 0;
  while (1)
  {
    v15 = [objc_msgSend(colorAttachments2 _descriptorAtIndex:{v14), "texture"}];
    if (v15)
    {
      break;
    }

    if (++v14 == 8)
    {
      sampleCount = 0;
      goto LABEL_15;
    }
  }

  sampleCount = [v15 sampleCount];
LABEL_15:
  depthAttachment = [(MTL4RenderPassDescriptor *)self->_descriptor depthAttachment];
  stencilAttachment = [(MTL4RenderPassDescriptor *)self->_descriptor stencilAttachment];
  texture = [depthAttachment texture];
  texture2 = [stencilAttachment texture];
  if (texture)
  {
    texture2 = texture;
  }

  sampleCount2 = [texture2 sampleCount];
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    if (sampleCount)
    {
      if (sampleCount2)
      {
LABEL_20:
        if (sampleCount2)
        {
          v22 = sampleCount2;
        }

        else
        {
          v22 = sampleCount;
        }

        if (sampleCount)
        {
          sampleCount2 = v22;
        }

        else
        {
          sampleCount = sampleCount2;
        }

        goto LABEL_26;
      }
    }

    else
    {
      defaultColorSampleCount = [(MTL4RenderPassDescriptor *)self->_descriptor defaultColorSampleCount];
      descriptor = self->_descriptor;
      if (defaultColorSampleCount)
      {
        defaultColorSampleCount2 = [(MTL4RenderPassDescriptor *)descriptor defaultColorSampleCount];
      }

      else
      {
        defaultColorSampleCount2 = [(MTL4RenderPassDescriptor *)descriptor defaultRasterSampleCount];
      }

      sampleCount = defaultColorSampleCount2;
      if (sampleCount2)
      {
        goto LABEL_20;
      }
    }

    sampleCount2 = [(MTL4RenderPassDescriptor *)self->_descriptor defaultRasterSampleCount];
    goto LABEL_20;
  }

LABEL_26:
  self->_resolvedColorSampleCount = sampleCount;
  self->_resolvedRasterSampleCount = sampleCount2;
  width = self->_width;
  height = self->_height;
  begin = self->_currentViewports.__begin_;
  self->_currentViewports.__end_ = begin;
  cap = self->_currentViewports.__cap_;
  if (begin >= cap)
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((cap - begin) >> 4);
    v28 = 2 * v27;
    if (2 * v27 <= 1)
    {
      v28 = 1;
    }

    if (v27 >= 0x2AAAAAAAAAAAAAALL)
    {
      v29 = 0x555555555555555;
    }

    else
    {
      v29 = v28;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLViewport>>(&self->_currentViewports, v29);
  }

  *begin = 0;
  *(begin + 1) = 0;
  *(begin + 2) = width;
  *(begin + 3) = height;
  *(begin + 2) = xmmword_22E27C190;
  self->_currentViewports.__end_ = (begin + 48);
  self->_currentVertexAmplificationCount = 1;
  self->_currentCullMode = 0;
  self->_currentDepthClipMode = 0;
  self->_currentDepthBias = 0.0;
  self->_currentDepthTestMinBound = 0.0;
  self->_currentDepthTestMaxBound = 1.0;
  self->_currentDepthSlopeScale = 0.0;
  self->_currentDepthClamp = 0.0;
  v30 = self->_width;
  v31 = self->_height;
  v32 = self->_currentScissorRects.__begin_;
  self->_currentScissorRects.__end_ = v32;
  v33 = self->_currentScissorRects.__cap_;
  if (v32 >= v33)
  {
    v34 = v33 - v32;
    v35 = v34 >> 4;
    if ((v34 >> 4) <= 1)
    {
      v35 = 1;
    }

    if (v34 >= 0x7FFFFFFFFFFFFFE0)
    {
      v36 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v36 = v35;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLScissorRect>>(&self->_currentScissorRects, v36);
  }

  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = v30;
  *(v32 + 3) = v31;
  self->_currentScissorRects.__end_ = (v32 + 32);
  self->_currentTriangleFillMode = 0;
  self->_currentBlendColorRed = 0.0;
  self->_currentBlendColorGreen = 0.0;
  self->_currentBlendColorBlue = 0.0;
  self->_currentBlendColorAlpha = 0.0;
  self->_currentStencilFrontReferenceValue = 0;
  self->_currentStencilBackReferenceValue = 0;
  self->_currentVisibilityResultMode = 0;
  self->_currentVisibilityResultModeOffset = 0;
  std::__tree<unsigned int>::destroy(&self->_allVisibilityOffsets, self->_allVisibilityOffsets.__tree_.__end_node_.__left_);
  self->_allVisibilityOffsets.__tree_.__begin_node_ = &self->_allVisibilityOffsets.__tree_.__end_node_;
  self->_allVisibilityOffsets.__tree_.__size_ = 0;
  self->_allVisibilityOffsets.__tree_.__end_node_.__left_ = 0;
  self->_currentFrontFacingWinding = 0;
}

- (void)_validateFunctionArguments:(_MTLMessageContext *)arguments stages:(unint64_t)stages
{
  if (stages == 26)
  {
    meshDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState meshDescriptor];
    mtl4MeshDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4MeshDescriptor];
    if (meshDescriptor)
    {
      v16 = [objc_msgSend(meshDescriptor "objectFunction")];
      v17 = [objc_msgSend(meshDescriptor "meshFunction")];
      v18 = [objc_msgSend(meshDescriptor "fragmentFunction")];
    }

    else
    {
      v30 = mtl4MeshDescriptor;
      objectFunctionDescriptor = [mtl4MeshDescriptor objectFunctionDescriptor];
      v16 = _MTL4DebugFunctionDescriptorName(objectFunctionDescriptor, v32);
      meshFunctionDescriptor = [v30 meshFunctionDescriptor];
      v17 = _MTL4DebugFunctionDescriptorName(meshFunctionDescriptor, v34);
      fragmentFunctionDescriptor = [v30 fragmentFunctionDescriptor];
      v18 = _MTL4DebugFunctionDescriptorName(fragmentFunctionDescriptor, v36);
    }

    v37 = v18;
    validationReflection = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
    LOBYTE(v50) = 0;
    -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", arguments, @"Object", v16, self->_currentObjectArgumentTable, self->_currentObjectThreadgroupMemoryLengths, [validationReflection objectBindings], v50);
    LOBYTE(v51) = 0;
    -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", arguments, @"Mesh", v17, self->_currentMeshArgumentTable, 0, [validationReflection meshBindings], v51);
    debugCommandEncoder = self->_debugCommandEncoder;
    currentFragmentArgumentTable = self->_currentFragmentArgumentTable;
    fragmentBindings = [validationReflection fragmentBindings];
    LOBYTE(v50) = 0;
    v25 = @"Fragment";
    currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
    v27 = debugCommandEncoder;
    argumentsCopy3 = arguments;
    v29 = v37;
    v41 = currentFragmentArgumentTable;
  }

  else
  {
    if (stages == 4)
    {
      tileDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState tileDescriptor];
      mtl4TileDescriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4TileDescriptor];
      validationReflection2 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
      if (tileDescriptor)
      {
        v13 = [objc_msgSend(tileDescriptor "tileFunction")];
      }

      else
      {
        tileFunctionDescriptor = [mtl4TileDescriptor tileFunctionDescriptor];
        v13 = _MTL4DebugFunctionDescriptorName(tileFunctionDescriptor, v20);
      }

      v21 = v13;
      v22 = self->_debugCommandEncoder;
      currentTileArgumentTable = self->_currentTileArgumentTable;
      fragmentBindings = [validationReflection2 tileBindings];
      LOBYTE(v50) = 0;
      v25 = @"Tile";
      currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
      v27 = v22;
      argumentsCopy3 = arguments;
      v29 = v21;
    }

    else
    {
      if (stages != 3)
      {
        return;
      }

      descriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState descriptor];
      mtl4Descriptor = [(MTLRenderPipelineState *)self->_currentRenderPipelineState mtl4Descriptor];
      if (descriptor)
      {
        v8 = [objc_msgSend(descriptor "vertexFunction")];
        v9 = [objc_msgSend(descriptor "fragmentFunction")];
      }

      else
      {
        v42 = mtl4Descriptor;
        vertexFunctionDescriptor = [mtl4Descriptor vertexFunctionDescriptor];
        v8 = _MTL4DebugFunctionDescriptorName(vertexFunctionDescriptor, v44);
        fragmentFunctionDescriptor2 = [v42 fragmentFunctionDescriptor];
        v9 = _MTL4DebugFunctionDescriptorName(fragmentFunctionDescriptor2, v46);
      }

      v47 = v9;
      validationReflection3 = [(MTLRenderPipelineState *)self->_currentRenderPipelineState validationReflection];
      LOBYTE(v50) = 0;
      -[MTL4DebugCommandEncoder validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:](self->_debugCommandEncoder, "validateFunctionArguments:stage:functionName:argumentTable:boundThreadgroupMemoryArguments:bindings:allowNullBufferBindings:", arguments, @"Vertex", v8, self->_currentVertexArgumentTable, self->_currentThreadgroupMemoryArguments, [validationReflection3 vertexBindings], v50);
      v49 = self->_debugCommandEncoder;
      currentTileArgumentTable = self->_currentFragmentArgumentTable;
      fragmentBindings = [validationReflection3 fragmentBindings];
      LOBYTE(v50) = 0;
      v25 = @"Fragment";
      currentThreadgroupMemoryArguments = self->_currentThreadgroupMemoryArguments;
      v27 = v49;
      argumentsCopy3 = arguments;
      v29 = v47;
    }

    v41 = currentTileArgumentTable;
  }

  [(MTL4DebugCommandEncoder *)v27 validateFunctionArguments:argumentsCopy3 stage:v25 functionName:v29 argumentTable:v41 boundThreadgroupMemoryArguments:currentThreadgroupMemoryArguments bindings:fragmentBindings allowNullBufferBindings:v50];
}

- (void)_validateFramebufferCompatibility:(_MTLMessageContext *)compatibility pipelineState:(id)state
{
  v6 = *(state + 8);
  v7 = v6;
  v8 = v6;
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget])
  {
    v9 = [objc_msgSend(state "descriptor")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v6;
    }

    v11 = [objc_msgSend(state "descriptor")];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [objc_msgSend(state "meshDescriptor")];
    if (v13)
    {
      v10 = v13;
    }

    v14 = [objc_msgSend(state "meshDescriptor")];
    if (v14)
    {
      v12 = v14;
    }

    v15 = [objc_msgSend(state "mtl4Descriptor")];
    if (v15)
    {
      v10 = v15;
    }

    v16 = [objc_msgSend(state "mtl4Descriptor")];
    if (v16)
    {
      v12 = v16;
    }

    v17 = [objc_msgSend(state "mtl4MeshDescriptor")];
    if (v17)
    {
      v7 = v17;
    }

    else
    {
      v7 = v10;
    }

    v18 = [objc_msgSend(state "mtl4MeshDescriptor")];
    if (v18)
    {
      v8 = v18;
    }

    else
    {
      v8 = v12;
    }
  }

  if (![state rasterizationEnabled])
  {
    goto LABEL_58;
  }

  v41 = v6;
  v40 = v7;
  colorAttachments = [(MTL4RenderPassDescriptor *)self->_descriptor colorAttachments];
  for (i = 0; i != 8; ++i)
  {
    v21 = *(state + i + 9);
    v22 = [colorAttachments _descriptorAtIndex:{i, v37}];
    v23 = [objc_msgSend(v22 "texture")];
    v24 = [objc_msgSend(v22 "texture")];
    if (v23)
    {
      if (v8)
      {
        if (v8 != v24)
        {
          Name = v24;
          v39 = v8;
          v37 = i;
LABEL_39:
          _MTLMessageContextPush_();
        }
      }

      else if (v41 != v24)
      {
        Name = v24;
        v39 = v41;
        v37 = i;
        goto LABEL_39;
      }

      if (([(MTL4RenderPassDescriptor *)self->_descriptor supportColorAttachmentMapping:v37]& 1) == 0 && v21 != v23)
      {
        Name = MTLPixelFormatGetName();
        v39 = MTLPixelFormatGetName();
        v37 = i;
        goto LABEL_37;
      }

      continue;
    }

    if (([(MTL4RenderPassDescriptor *)self->_descriptor supportColorAttachmentMapping]& 1) == 0 && v21)
    {
      v37 = i;
LABEL_37:
      _MTLMessageContextPush_();
      continue;
    }
  }

  tileDescriptor = [state tileDescriptor];
  v7 = v40;
  if (tileDescriptor || [state mtl4TileDescriptor])
  {
    goto LABEL_58;
  }

  depthAttachment = [(MTL4RenderPassDescriptor *)self->_descriptor depthAttachment];
  v27 = [objc_msgSend(depthAttachment "texture")];
  v28 = [objc_msgSend(depthAttachment "texture")];
  v29 = *(state + 17);
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_50;
    }

    goto LABEL_73;
  }

  if (v40)
  {
    if (v40 != v28)
    {
      v37 = v28;
      Name = v40;
      goto LABEL_77;
    }
  }

  else if (v41 != v28)
  {
    v37 = v28;
    Name = v41;
LABEL_77:
    _MTLMessageContextPush_();
  }

  if (v29 != v27)
  {
    v37 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_73:
    _MTLMessageContextPush_();
  }

LABEL_50:
  v30 = [(MTL4RenderPassDescriptor *)self->_descriptor stencilAttachment:v37];
  v31 = [objc_msgSend(v30 "texture")];
  v32 = [objc_msgSend(v30 "texture")];
  v33 = *(state + 18);
  if (!v31)
  {
    if (!v33)
    {
      goto LABEL_58;
    }

    goto LABEL_75;
  }

  if (v40)
  {
    if (v40 != v32)
    {
      v37 = v32;
      Name = v40;
      goto LABEL_79;
    }
  }

  else if (v41 != v32)
  {
    v37 = v32;
    Name = v41;
LABEL_79:
    _MTLMessageContextPush_();
  }

  if (v33 != v31)
  {
    v37 = MTLPixelFormatGetName();
    Name = MTLPixelFormatGetName();
LABEL_75:
    _MTLMessageContextPush_();
  }

LABEL_58:
  if ([(MTLToolsDevice *)self->super.super.super._device supportsRenderPassWithoutRenderTarget:v37])
  {
    supportsSeparateVisibilityAndShadingRate = [(MTLToolsDevice *)self->super.super.super._device supportsSeparateVisibilityAndShadingRate];
    resolvedColorSampleCount = self->_resolvedColorSampleCount;
    if (supportsSeparateVisibilityAndShadingRate)
    {
      if (resolvedColorSampleCount != v8)
      {
        _MTLMessageContextPush_();
      }

      if (self->_resolvedRasterSampleCount != v7)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (resolvedColorSampleCount != self->_resolvedRasterSampleCount || v8 != v7)
      {
        _MTLMessageContextPush_();
        resolvedColorSampleCount = self->_resolvedColorSampleCount;
      }

      if (resolvedColorSampleCount != v8)
      {
LABEL_71:
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)writeTimestampWithGranularity:(int64_t)granularity afterStage:(unint64_t)stage intoHeap:(id)heap atIndex:(unint64_t)index
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  _MTLMessageContextBegin_();
  if (!heap)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ([heap type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([heap count] <= index)
  {
    [heap count];
LABEL_15:
    _MTLMessageContextPush_();
  }

  if (granularity >= 2)
  {
    _MTLMessageContextPush_();
  }

  if (stage > 0x10 || ((1 << stage) & 0x10116) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v11.receiver = self;
  v11.super_class = MTL4DebugRenderCommandEncoder;
  [(MTL4ToolsRenderCommandEncoder *)&v11 writeTimestampWithGranularity:granularity afterStage:stage intoHeap:heap atIndex:index];
}

- (id).cxx_construct
{
  v2 = 120;
  v3 = 2728;
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
  v5 = 2848;
  v6 = 2728;
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
  *(self + 699) = 0;
  *(self + 700) = 0;
  *(self + 698) = 0;
  *(self + 708) = 0;
  *(self + 709) = 0;
  *(self + 707) = 0;
  *(self + 719) = 0;
  *(self + 718) = 0;
  *(self + 717) = self + 5744;
  return self;
}

- (uint64_t)_validateDispatchThreadsPerTileCommon:(uint64_t)a3 threadsPerTile:.cold.1(uint64_t a1, id *a2, uint64_t a3)
{
  [*a2 tileWidth];
  [*a2 tileHeight];
  return _MTLMessageContextPush_();
}

@end