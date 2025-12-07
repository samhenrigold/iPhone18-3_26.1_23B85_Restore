@interface MTL4DebugComputeCommandEncoder
- (BOOL)encodeEndDoWhile:(unint64_t)while comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (BOOL)encodeEndIf;
- (BOOL)encodeEndWhile;
- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into;
- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into;
- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer;
- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer numSubstreams:(unint64_t)substreams;
- (id).cxx_construct;
- (id)commandBuffer;
- (unint64_t)nextVirtualSubstream;
- (void)_resetEncoder;
- (void)_updateEncoderStateAfterDispatch;
- (void)_validateComputeFunctionArguments:(_MTLMessageContext *)arguments;
- (void)_validateComputeFunctionBuiltinArguments:(_MTLMessageContext *)arguments threadsPerThreadgroup:(id *)threadgroup threadgroupsPerGrid:(id *)grid;
- (void)_validateCopyFromBufferToTextureCommon:(_MTLMessageContext *)common sourceBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size destinationTexture:(id)texture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2 options:(unint64_t)self3;
- (void)_validateCopyFromTextureToBufferCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationBuffer:(id)buffer destinationOffset:(unint64_t)self0 destinationBytesPerRow:(unint64_t)self1 destinationBytesPerImage:(unint64_t)self2 options:(unint64_t)self3;
- (void)_validateCopyFromTextureToTextureCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationTexture:(id)destinationTexture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2;
- (void)_validateFillTextureCommon:(_MTLMessageContext *)common texture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region;
- (void)_validateThreadsPerThreadgroupCommon:(_MTLMessageContext *)common threadsPerThreadgroup:(id *)threadgroup;
- (void)beginVirtualSubstream;
- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer;
- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index;
- (void)dealloc;
- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer;
- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer;
- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup;
- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer;
- (void)enableNullBufferBinds:(BOOL)binds;
- (void)encodeStartDoWhile;
- (void)encodeStartElse;
- (void)encodeStartIf:(unint64_t)if comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)encodeStartWhile:(unint64_t)while comparison:(unint64_t)comparison referenceValue:(unsigned int)value;
- (void)endEncoding;
- (void)endVirtualSubstream;
- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer;
- (void)executeCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4;
- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
- (void)generateMipmapsForTexture:(id)texture;
- (void)insertCompressedTextureReinterpretationFlush;
- (void)invalidateCompressedTexture:(id)texture;
- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer;
- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range;
- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer;
- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)setArgumentTable:(id)table;
- (void)setComputePipelineState:(id)state;
- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height;
- (void)setSubstream:(unsigned int)substream;
- (void)setThreadgroupDistributionMode:(int64_t)mode;
- (void)setThreadgroupDistributionModeWithClusterGroupIndex:(unsigned int)index;
- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index;
- (void)signalProgress:(unsigned int)progress;
- (void)validateRefit:(id)refit descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options;
- (void)waitForProgress:(unsigned int)progress;
- (void)waitForVirtualSubstream:(unint64_t)substream;
- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer;
- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer;
- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer;
- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer;
- (void)writeTimestampWithGranularity:(int64_t)granularity intoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4DebugComputeCommandEncoder

- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer
{
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  v6 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v6)
  {
    v6->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v6->super.super.super._device commandBuffer:buffer encoderStageMask:939524096];
    v6->_allowsNullBufferBindings = 0;
    [(MTL4DebugComputeCommandEncoder *)v6 _resetEncoder];
  }

  return v6;
}

- (MTL4DebugComputeCommandEncoder)initWithComputeCommandEncoder:(id)encoder commandBuffer:(id)buffer numSubstreams:(unint64_t)substreams
{
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  v8 = [MTL4ToolsCommandEncoder initWithCommandEncoder:sel_initWithCommandEncoder_commandBuffer_ commandBuffer:?];
  if (v8)
  {
    v8->_debugCommandEncoder = [[MTL4DebugCommandEncoder alloc] initWithBaseObject:encoder device:v8->super.super.super._device commandBuffer:buffer encoderStageMask:939524096];
    [(MTL4DebugComputeCommandEncoder *)v8 _resetEncoder];
    v8->_numSubstreams = substreams;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
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
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v4 commandBuffer];
}

- (void)endEncoding
{
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder endEncodingPreamble];
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsCommandEncoder *)&v3 endEncoding];
}

- (void)setComputePipelineState:(id)state
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!state)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 1) == 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (self->_currentComputePipelineState != state)
    {
      goto LABEL_9;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if ((*&self->_encoderState & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  _MTLMessageContextEnd();
  self->_currentComputePipelineState = state;
  *&self->_encoderState = *&self->_encoderState & 0xFC | 2;
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v5 setComputePipelineState:state];
}

- (void)setThreadgroupMemoryLength:(unint64_t)length atIndex:(unint64_t)index
{
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
      v7 = &self->_currentThreadgroupMemoryLengths[index];
      if (v7->isValid && !v7->hasBeenUsed)
      {
        indexCopy2 = index;
        MTLReportFailure();
      }
    }
  }

  _MTLMessageContextEnd();
  v8 = &self->_currentThreadgroupMemoryLengths[index];
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
  v15.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 setThreadgroupMemoryLength:length atIndex:index, indexCopy2, maxComputeThreadgroupMemoryAlignmentBytes];
}

- (void)setImageblockWidth:(unint64_t)width height:(unint64_t)height
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

  if ((width ^ (width - 1)) <= width - 1)
  {
    _MTLMessageContextPush_();
  }

  if ((height ^ (height - 1)) <= height - 1)
  {
    _MTLMessageContextPush_();
  }

  if (height * width >= 0x401)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentImageBlockSize.width = width;
  self->_currentImageBlockSize.height = height;
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 setImageblockWidth:width height:height];
}

- (void)dispatchThreads:(id *)threads threadsPerThreadgroup:(id *)threadgroup
{
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_currentComputePipelineState)
  {
    _MTLMessageContextPush_();
  }

  if (HIDWORD(threads->var0))
  {
    var0 = threads->var0;
    _MTLMessageContextPush_();
  }

  if (HIDWORD(threads->var1))
  {
    var0 = threads->var1;
    _MTLMessageContextPush_();
  }

  var2 = threads->var2;
  if (HIDWORD(var2))
  {
    var0 = threads->var2;
    _MTLMessageContextPush_();
    var2 = threads->var2;
  }

  if (!(threads->var1 * threads->var0 * var2))
  {
    v13 = var2;
    v14 = 0;
    var0 = threads->var0;
    var1 = threads->var1;
    _MTLMessageContextPush_();
  }

  v18 = *&threadgroup->var0;
  v19 = threadgroup->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v20 threadsPerThreadgroup:&v18, var0, var1, v13, v14];
  if (self->_currentComputePipelineState)
  {
    v8 = (threads->var0 + threadgroup->var0 - 1) / threadgroup->var0;
    v9 = (threads->var1 + threadgroup->var1 - 1) / threadgroup->var1;
    v19 = threadgroup->var2;
    v10 = threads->var2 + v19 - 1;
    v18 = *&threadgroup->var0;
    *&v16 = v8;
    *(&v16 + 1) = v9;
    v17 = v10 / v19;
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionBuiltinArguments:v20 threadsPerThreadgroup:&v18 threadgroupsPerGrid:&v16];
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v20];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v18 = *&threads->var0;
  v19 = threads->var2;
  v16 = *&threadgroup->var0;
  v17 = threadgroup->var2;
  v15.receiver = self;
  v15.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
}

- (void)dispatchThreadgroups:(id *)threadgroups threadsPerThreadgroup:(id *)threadgroup
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_currentComputePipelineState)
  {
    _MTLMessageContextPush_();
  }

  if (HIDWORD(threadgroups->var0))
  {
    var0 = threadgroups->var0;
    _MTLMessageContextPush_();
  }

  if (HIDWORD(threadgroups->var1))
  {
    var0 = threadgroups->var1;
    _MTLMessageContextPush_();
  }

  var2 = threadgroups->var2;
  if (HIDWORD(var2))
  {
    var0 = threadgroups->var2;
    _MTLMessageContextPush_();
    var2 = threadgroups->var2;
  }

  if (!(threadgroups->var1 * threadgroups->var0 * var2))
  {
    v10 = var2;
    v11 = 0;
    var0 = threadgroups->var0;
    var1 = threadgroups->var1;
    _MTLMessageContextPush_();
  }

  v15 = *&threadgroup->var0;
  v16 = threadgroup->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v17 threadsPerThreadgroup:&v15, var0, var1, v10, v11];
  if (self->_currentComputePipelineState)
  {
    v15 = *&threadgroup->var0;
    v16 = threadgroup->var2;
    v13 = *&threadgroups->var0;
    v14 = threadgroups->var2;
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionBuiltinArguments:v17 threadsPerThreadgroup:&v15 threadgroupsPerGrid:&v13];
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v17];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v15 = *&threadgroups->var0;
  v16 = threadgroups->var2;
  v13 = *&threadgroup->var0;
  v14 = threadgroup->var2;
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 dispatchThreadgroups:&v15 threadsPerThreadgroup:&v13];
}

- (void)dispatchThreadgroupsWithIndirectBuffer:(unint64_t)buffer threadsPerThreadgroup:(id *)threadgroup
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentComputePipelineState)
  {
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  v8 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateThreadsPerThreadgroupCommon:v10 threadsPerThreadgroup:&v8];
  if (self->_currentComputePipelineState)
  {
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v10];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v8 = *&threadgroup->var0;
  var2 = threadgroup->var2;
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 dispatchThreadgroupsWithIndirectBuffer:buffer threadsPerThreadgroup:&v8];
}

- (void)dispatchThreadsWithIndirectBuffer:(unint64_t)buffer
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentComputePipelineState)
  {
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (buffer)
    {
      goto LABEL_5;
    }
  }

  _MTLMessageContextPush_();
LABEL_5:
  if (self->_currentComputePipelineState)
  {
    [(MTL4DebugComputeCommandEncoder *)self _validateComputeFunctionArguments:v6];
  }

  _MTLMessageContextEnd();
  [(MTL4DebugComputeCommandEncoder *)self _updateEncoderStateAfterDispatch];
  v5.receiver = self;
  v5.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 dispatchThreadsWithIndirectBuffer:buffer];
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
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

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

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(buffer descriptor] && (-[MTLComputePipelineState supportIndirectCommandBuffers](self->_currentComputePipelineState, "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if ([objc_msgSend(buffer "descriptor")])
  {
    *&self->_encoderState |= 1u;
  }

  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 executeCommandsInBuffer:buffer withRange:location, length];
}

- (void)executeCommandsInBuffer:(id)buffer indirectBuffer:(unint64_t)indirectBuffer
{
  v8 = 0;
  memset(&v7[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
    if (indirectBuffer)
    {
      goto LABEL_5;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if (!indirectBuffer)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ([objc_msgSend(buffer "descriptor")] && (-[MTLComputePipelineState supportIndirectCommandBuffers](self->_currentComputePipelineState, "supportIndirectCommandBuffers") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if ([objc_msgSend(buffer "descriptor")])
  {
    *&self->_encoderState |= 1u;
  }

  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v7[0].receiver = self;
  v7[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v7 executeCommandsInBuffer:buffer indirectBuffer:indirectBuffer];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  width = [texture width];
  height = [texture height];
  depth = [texture depth];
  v44 = depth;
  v45 = height;
  width2 = [toTexture width];
  height2 = [toTexture height];
  depth2 = [toTexture depth];
  v42 = depth2;
  v43 = height2;
  v13 = &v43;
  v14 = &v42;
  v15 = 1;
  if (width <= width2 && height <= height2 && depth <= depth2)
  {
    v15 = 0;
    v13 = &v45;
    v14 = &v44;
    depth = depth2;
    height = height2;
    v16 = width;
    width = width2;
  }

  else
  {
    v16 = width2;
  }

  v17 = 0;
  v18 = *v13;
  v19 = *v14;
  while (width > v16 || height > v18 || depth > v19)
  {
    width >>= 1;
    height >>= 1;
    ++v17;
    depth >>= 1;
  }

  toTextureCopy = toTexture;
  if (v15)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0;
  }

  if (v15)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  v22 = v21;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  [toTextureCopy pixelFormat];
  [toTextureCopy width];
  [toTextureCopy height];
  [toTextureCopy depth];
  [toTextureCopy sampleCount];
  MTLGetTextureLevelInfoForDevice();
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v46 sourceTexture:texture sourceSlice:0 sourceLevel:v20 sourceOrigin:v27 sourceSize:v26 destinationTexture:toTextureCopy destinationSlice:0 destinationLevel:v22 destinationOrigin:v25];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    _MTLMessageContextPush_();
    goto LABEL_21;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v24.receiver = self;
  v24.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v24 copyFromTexture:texture toTexture:toTextureCopy];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!count)
  {
    _MTLMessageContextPush_();
  }

  if (!levelCount)
  {
    _MTLMessageContextPush_();
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  [toTexture pixelFormat];
  [toTexture width];
  [toTexture height];
  [toTexture depth];
  [toTexture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  numFaces = [texture numFaces];
  numFaces2 = [toTexture numFaces];
  if (levelCount + level > [texture mipmapLevelCount])
  {
    levelCountCopy = levelCount;
    mipmapLevelCount = [texture mipmapLevelCount];
    levelCopy = level;
    _MTLMessageContextPush_();
  }

  if (levelCount + destinationLevel > [toTexture mipmapLevelCount])
  {
    levelCountCopy2 = levelCount;
    mipmapLevelCount2 = [toTexture mipmapLevelCount];
    destinationLevelCopy = destinationLevel;
    _MTLMessageContextPush_();
  }

  if (count + slice > [texture arrayLength] * numFaces)
  {
    arrayLength = [texture arrayLength];
    v29 = numFaces;
    sliceCopy = slice;
    countCopy = count;
    _MTLMessageContextPush_();
  }

  if (count + destinationSlice > [toTexture arrayLength] * numFaces2)
  {
    [toTexture arrayLength];
    _MTLMessageContextPush_();
  }

  memset(v37, 0, sizeof(v37));
  v35 = 0u;
  v36 = 0;
  memset(v34, 0, sizeof(v34));
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v52 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:v37 sourceSize:&v35 destinationTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:v34];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    _MTLMessageContextPush_();
    goto LABEL_17;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v33.receiver = self;
  v33.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v33 copyFromTexture:texture sourceSlice:slice sourceLevel:level toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:count levelCount:levelCount];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v22 = *&origin->var0;
  var2 = origin->var2;
  v20 = *&size->var0;
  v21 = size->var2;
  v19 = *destinationOrigin;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToTextureCommon:v24 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v20 destinationTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v19];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v22 = *&origin->var0;
  var2 = origin->var2;
  v20 = *&size->var0;
  v21 = size->var2;
  v19 = *destinationOrigin;
  v18.receiver = self;
  v18.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v18 copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v22 sourceSize:&v20 toTexture:toTexture destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v19];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((~*(texture + 20) & 0x60) == 0)
  {
    [MTL4DebugComputeCommandEncoder copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:];
  }

  v21 = *&origin->var0;
  var2 = origin->var2;
  v19 = *&size->var0;
  v20 = size->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToBufferCommon:v23 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v21 sourceSize:&v19 destinationBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:0];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    _MTLMessageContextPush_();
    goto LABEL_7;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v21 = *&origin->var0;
  var2 = origin->var2;
  v19 = *&size->var0;
  v20 = size->var2;
  v18.receiver = self;
  v18.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v18 copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v21 sourceSize:&v19 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v16 = *(texture + 20);
  if ((options & 1) != 0 && (v16 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    _MTLMessageContextPush_();
    v16 = *(texture + 20);
    if ((options & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_8;
  }

  if ((v16 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    _MTLMessageContextPush_();
    v16 = *(texture + 20);
  }

LABEL_8:
  if ((v16 & 0x20) != 0 && !options && (v16 & 0x40) != 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(0) UTF8String];
    _MTLMessageContextPush_();
  }

  v23 = *&origin->var0;
  var2 = origin->var2;
  v21 = *&size->var0;
  v22 = size->var2;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromTextureToBufferCommon:v25 sourceTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v21 destinationBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    _MTLMessageContextPush_();
    goto LABEL_14;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v23 = *&origin->var0;
  var2 = origin->var2;
  v21 = *&size->var0;
  v22 = size->var2;
  v20.receiver = self;
  v20.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v20 copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v23 sourceSize:&v21 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:options];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (buffer)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device == [buffer device])
    {
      if (toBuffer)
      {
        goto LABEL_8;
      }

LABEL_24:
      _MTLMessageContextPush_();
      goto LABEL_11;
    }
  }

  _MTLMessageContextPush_();
  if (!toBuffer)
  {
    goto LABEL_24;
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v14 = self->super.super.super._device;
  if (v14 != [toBuffer device])
  {
    goto LABEL_24;
  }

LABEL_11:
  if (size + offset > [objc_msgSend(buffer "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
  }

  if (size + destinationOffset > [objc_msgSend(toBuffer "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
    if (size)
    {
      goto LABEL_15;
    }
  }

  else if (size)
  {
    goto LABEL_15;
  }

  _MTLMessageContextPush_();
LABEL_15:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_22:
    _MTLMessageContextPush_();
    goto LABEL_17;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_17:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v15.receiver = self;
  v15.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v15 copyFromBuffer:buffer sourceOffset:offset toBuffer:toBuffer destinationOffset:destinationOffset size:size];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((~*(texture + 20) & 0x60) == 0)
  {
    [MTL4DebugComputeCommandEncoder copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  v20 = *&size->var0;
  var2 = size->var2;
  v19 = *origin;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromBufferToTextureCommon:v22 sourceBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v20 destinationTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v19 options:0];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    _MTLMessageContextPush_();
    goto LABEL_7;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v20 = *&size->var0;
  var2 = size->var2;
  v19 = *origin;
  v18.receiver = self;
  v18.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v18 copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v20 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v19];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v16 = *(texture + 20);
  if ((options & 1) != 0 && (v16 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    _MTLMessageContextPush_();
    v16 = *(texture + 20);
  }

  if ((options & 2) != 0 && (v16 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(options) UTF8String];
    _MTLMessageContextPush_();
    v16 = *(texture + 20);
  }

  if ((v16 & 0x20) != 0 && !options && (v16 & 0x40) != 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(0) UTF8String];
    _MTLMessageContextPush_();
  }

  v22 = *&size->var0;
  var2 = size->var2;
  v21 = *origin;
  [(MTL4DebugComputeCommandEncoder *)self _validateCopyFromBufferToTextureCommon:v24 sourceBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 destinationTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v21 options:options];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_17:
    _MTLMessageContextPush_();
    goto LABEL_15;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v22 = *&size->var0;
  var2 = size->var2;
  v21 = *origin;
  v20.receiver = self;
  v20.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v20 copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v22 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v21 options:options];
}

- (void)generateMipmapsForTexture:(id)texture
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_21;
    }
  }

  else if (!texture)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  if ([texture mipmapLevelCount] <= 1)
  {
    [MTL4DebugComputeCommandEncoder generateMipmapsForTexture:texture];
  }

  v6 = *(texture + 20);
  if ((v6 & 0x10) != 0)
  {
    if ((v6 & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if ((*(texture + 20) & 4) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_21:
  _MTLMessageContextPush_();
LABEL_13:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    _MTLMessageContextPush_();
    goto LABEL_15;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 generateMipmapsForTexture:texture];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range value:(unsigned __int8)value
{
  valueCopy = value;
  length = range.length;
  location = range.location;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!buffer)
    {
      goto LABEL_17;
    }
  }

  else if (!buffer)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    _MTLMessageContextPush_();
  }

  if (location + length > [objc_msgSend(buffer "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder fillBuffer:range:value:];
    if (length)
    {
      goto LABEL_9;
    }
  }

  else if (length)
  {
    goto LABEL_9;
  }

LABEL_17:
  _MTLMessageContextPush_();
LABEL_9:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v11.receiver = self;
  v11.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v11 fillBuffer:buffer range:location value:length, valueCopy];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (access)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!access)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 optimizeContentsForGPUAccess:access];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (access)
    {
      goto LABEL_3;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!access)
  {
    goto LABEL_15;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    _MTLMessageContextPush_();
  }

  if ([access mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [access mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [access numFaces];
  if ([access arrayLength] * numFaces <= slice)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    _MTLMessageContextPush_();
    goto LABEL_13;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 optimizeContentsForGPUAccess:access slice:slice level:level];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (access)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!access)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    _MTLMessageContextPush_();
    goto LABEL_8;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 optimizeContentsForCPUAccess:access];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (access)
    {
      goto LABEL_3;
    }

LABEL_15:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!access)
  {
    goto LABEL_15;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [access device])
  {
    _MTLMessageContextPush_();
  }

  if ([access mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [access mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [access numFaces];
  if ([access arrayLength] * numFaces <= slice)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    _MTLMessageContextPush_();
    goto LABEL_13;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v13 optimizeContentsForCPUAccess:access slice:slice level:level];
}

- (void)resetCommandsInBuffer:(id)buffer withRange:(_NSRange)range
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

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    _MTLMessageContextPush_();
    goto LABEL_7;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 resetCommandsInBuffer:buffer withRange:location, length];
}

- (void)copyIndirectCommandBuffer:(id)buffer sourceRange:(_NSRange)range destination:(id)destination destinationIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (!v31)
  {
    v37.length = [buffer size];
    v35.location = location;
    v35.length = length;
    v37.location = 0;
    v12 = NSIntersectionRange(v35, v37);
    if (v12.location != location || v12.length != length)
    {
      v26 = length;
      v28 = [buffer size];
      v24 = location;
      _MTLMessageContextPush_();
    }

    v38.length = [destination size];
    v36.location = index;
    v36.length = length;
    v38.location = 0;
    v13 = NSIntersectionRange(v36, v38);
    if (v13.location != index || v13.length != length)
    {
      v27 = length;
      v29 = [destination size];
      indexCopy = index;
      _MTLMessageContextPush_();
    }

    v14 = *(buffer + 8);
    v15 = *(destination + 8);
    commandTypes = [v14 commandTypes];
    if (commandTypes != [v15 commandTypes])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    inheritPipelineState = [v14 inheritPipelineState];
    if (inheritPipelineState != [v15 inheritPipelineState])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    inheritBuffers = [v14 inheritBuffers];
    if (inheritBuffers != [v15 inheritBuffers])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxVertexBufferBindCount = [v14 maxVertexBufferBindCount];
    if (maxVertexBufferBindCount != [v15 maxVertexBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxFragmentBufferBindCount = [v14 maxFragmentBufferBindCount];
    if (maxFragmentBufferBindCount != [v15 maxFragmentBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxKernelBufferBindCount = [v14 maxKernelBufferBindCount];
    if (maxKernelBufferBindCount != [v15 maxKernelBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxObjectBufferBindCount = [v14 maxObjectBufferBindCount];
    if (maxObjectBufferBindCount != [v15 maxObjectBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }

    maxMeshBufferBindCount = [v14 maxMeshBufferBindCount];
    if (maxMeshBufferBindCount != [v15 maxMeshBufferBindCount])
    {
      [MTL4DebugComputeCommandEncoder copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:];
    }
  }

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_30;
    }

LABEL_32:
    _MTLMessageContextPush_();
    goto LABEL_30;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_30:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v30.receiver = self;
  v30.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v30 copyIndirectCommandBuffer:buffer sourceRange:location destination:length destinationIndex:destination, index];
}

- (void)optimizeIndirectCommandBuffer:(id)buffer withRange:(_NSRange)range
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

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
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

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 optimizeIndirectCommandBuffer:buffer withRange:location, length];
}

- (void)setArgumentTable:(id)table
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (!table)
    {
      goto LABEL_5;
    }
  }

  else if (!table)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_5:
  _MTLMessageContextEnd();
  self->_currentArgumentTable = table;
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v5 setArgumentTable:table];
}

- (void)fillBuffer:(id)buffer range:(_NSRange)range pattern4:(unsigned int)pattern4
{
  pattern4Copy = pattern4;
  length = range.length;
  location = range.location;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (buffer)
    {
      goto LABEL_3;
    }

LABEL_21:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_21;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [buffer device])
  {
    goto LABEL_21;
  }

LABEL_6:
  if (location + length > [objc_msgSend(buffer "baseObject")])
  {
    [MTL4DebugComputeCommandEncoder fillBuffer:range:value:];
    if (length)
    {
      goto LABEL_8;
    }
  }

  else if (length)
  {
    goto LABEL_8;
  }

  _MTLMessageContextPush_();
LABEL_8:
  if ((location & 3) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((length & 3) != 0)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_20:
    _MTLMessageContextPush_();
    goto LABEL_14;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v11.receiver = self;
  v11.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v11 fillBuffer:buffer range:location value:length, pattern4Copy];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (bytes)
    {
      goto LABEL_3;
    }

LABEL_24:
    _MTLMessageContextPush_();
    goto LABEL_3;
  }

  if (!bytes)
  {
    goto LABEL_24;
  }

LABEL_3:
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [texture pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  var0 = v28;
  _MTLMessageContextPush_();
  if ((WORD4(v28) & 0x2000) != 0)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    [texture pixelFormat];
    [texture width];
    [texture height];
    [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    if (region->var0.var0)
    {
      var0 = v28;
      _MTLMessageContextPush_();
    }

    if (region->var0.var1)
    {
      var0 = v28;
      _MTLMessageContextPush_();
    }

    if (region->var0.var2)
    {
      var0 = v28;
      _MTLMessageContextPush_();
    }

    if (region->var1.var0 != v21)
    {
      v18 = v21;
      lengthCopy = v28;
      var0 = region->var1.var0;
      _MTLMessageContextPush_();
    }

    if (region->var1.var1 != *(&v21 + 1))
    {
      v18 = *(&v21 + 1);
      lengthCopy = v28;
      var0 = region->var1.var1;
      _MTLMessageContextPush_();
    }

    if (region->var1.var2 != v22)
    {
      v18 = v22;
      lengthCopy = v28;
      var0 = region->var1.var2;
      _MTLMessageContextPush_();
    }
  }

  if (*(&v29 + 1) > length)
  {
    v18 = *(&v29 + 1);
    lengthCopy = length;
    var0 = v28;
    _MTLMessageContextPush_();
  }

  v15 = *&region->var0.var2;
  v21 = *&region->var0.var0;
  v22 = v15;
  v23 = *&region->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v32 texture:texture level:level slice:slice region:&v21, var0, v18, lengthCopy];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_20;
    }

LABEL_26:
    _MTLMessageContextPush_();
    goto LABEL_20;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_20:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v16 = *&region->var0.var2;
  v21 = *&region->var0.var0;
  v22 = v16;
  v23 = *&region->var1.var1;
  v20.receiver = self;
  v20.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v20 fillTexture:texture level:level slice:slice region:&v21 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [texture pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  v16 = *&region->var0.var2;
  v19 = *&region->var0.var0;
  v20 = v16;
  v21 = *&region->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v26 texture:texture level:level slice:slice region:&v19, 0];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v17 = *&region->var0.var2;
  v19 = *&region->var0.var0;
  v20 = v17;
  v21 = *&region->var1.var1;
  v18.receiver = self;
  v18.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v18 fillTexture:texture level:level slice:slice region:&v19 color:var0, var1, var2, var3];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  [texture pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  v18 = *&region->var0.var2;
  v22 = *&region->var0.var0;
  v23 = v18;
  v24 = *&region->var1.var1;
  [(MTL4DebugComputeCommandEncoder *)self _validateFillTextureCommon:v33 texture:texture level:level slice:slice region:&v22, 0, v20];
  if ((*&self->_encoderState & 4) != 0)
  {
    _MTLMessageContextPush_();
    if ((*&self->_encoderState & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    _MTLMessageContextPush_();
    goto LABEL_5;
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  _MTLMessageContextEnd();
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
  v19 = *&region->var0.var2;
  v22 = *&region->var0.var0;
  v23 = v19;
  v24 = *&region->var1.var1;
  v21.receiver = self;
  v21.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v21 fillTexture:texture level:level slice:slice region:&v22 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)enableNullBufferBinds:(BOOL)binds
{
  self->_allowsNullBufferBindings = binds;
  v3.receiver = self;
  v3.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v3 enableNullBufferBinds:?];
}

- (void)setSubstream:(unsigned int)substream
{
  v3 = *&substream;
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  numSubstreams = self->_numSubstreams;
  if (!numSubstreams)
  {
    _MTLMessageContextPush_();
    numSubstreams = self->_numSubstreams;
  }

  if (numSubstreams <= v3)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0 && self->_currentVirtualSubstreamHasEncodedDispatch)
  {
    [MTL4DebugComputeCommandEncoder setSubstream:];
  }

  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v6 setSubstream:v3];
}

- (void)waitForProgress:(unsigned int)progress
{
  v3 = *&progress;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_numSubstreams)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  left = self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_15;
  }

  p_end_node = &self->_currentSubstreamProgressLabels.__tree_.__end_node_;
  do
  {
    left_high = HIDWORD(left[3].__left_);
    v8 = left_high >= v3;
    v9 = left_high < v3;
    if (v8)
    {
      p_end_node = left;
    }

    left = left[v9].__left_;
  }

  while (left);
  if (p_end_node == &self->_currentSubstreamProgressLabels.__tree_.__end_node_ || HIDWORD(p_end_node[3].__left_) > v3)
  {
LABEL_15:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10.receiver = self;
  v10.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v10 waitForProgress:v3];
}

- (void)signalProgress:(unsigned int)progress
{
  progressCopy = progress;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if (!self->_numSubstreams)
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentSubstreamProgressLabels.__tree_.__size_)
  {
    p_end_node = &self->_currentSubstreamProgressLabels.__tree_.__end_node_;
    left = self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_;
    if (left)
    {
      do
      {
        v7 = left;
        left = left[1];
      }

      while (left);
    }

    else
    {
      do
      {
        v7 = p_end_node[2].__left_;
        v8 = *v7 == p_end_node;
        p_end_node = v7;
      }

      while (v8);
    }

    if (*(v7 + 7) >= progress)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int &>(&self->_currentSubstreamProgressLabels, &progressCopy, &progressCopy);
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 signalProgress:progressCopy];
}

- (void)beginVirtualSubstream
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 8u;
  self->_currentVirtualSubstreamIndex = 0;
  self->_currentVirtualSubstreamHasEncodedDispatch = 0;
  v3[0].receiver = self;
  v3[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v3 beginVirtualSubstream];
}

- (unint64_t)nextVirtualSubstream
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  ++self->_currentVirtualSubstreamIndex;
  self->_currentVirtualSubstreamHasEncodedDispatch = 0;
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v4 nextVirtualSubstream];
}

- (void)endVirtualSubstream
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ((*&self->_encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v3[0].receiver = self;
  v3[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v3 endVirtualSubstream];
}

- (void)waitForVirtualSubstream:(unint64_t)substream
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

  if ((*&self->_encoderState & 8) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentVirtualSubstreamHasEncodedDispatch)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentVirtualSubstreamIndex <= substream)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5.receiver = self;
  v5.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v5 waitForVirtualSubstream:substream];
}

- (void)insertCompressedTextureReinterpretationFlush
{
  v2.receiver = self;
  v2.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v2 insertCompressedTextureReinterpretationFlush];
}

- (void)encodeStartDoWhile
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v3[0].receiver = self;
  v3[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v3 encodeStartDoWhile];
}

- (BOOL)encodeEndDoWhile:(unint64_t)while comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v5 = *&value;
  v11 = 0;
  memset(&v10[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v10[0].receiver = self;
  v10[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v10 encodeEndDoWhile:while comparison:comparison referenceValue:v5];
}

- (void)encodeStartWhile:(unint64_t)while comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v5 = *&value;
  v10 = 0;
  memset(&v9[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v9[0].receiver = self;
  v9[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v9 encodeStartWhile:while comparison:comparison referenceValue:v5];
}

- (BOOL)encodeEndWhile
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v4 encodeEndWhile];
}

- (void)encodeStartIf:(unint64_t)if comparison:(unint64_t)comparison referenceValue:(unsigned int)value
{
  v5 = *&value;
  v10 = 0;
  memset(&v9[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v9[0].receiver = self;
  v9[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v9 encodeStartIf:if comparison:comparison referenceValue:v5];
}

- (void)encodeStartElse
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&self->_encoderState |= 4u;
  v3[0].receiver = self;
  v3[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v3 encodeStartElse];
}

- (BOOL)encodeEndIf
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
  v4[0].super_class = MTL4DebugComputeCommandEncoder;
  return [(objc_super *)v4 encodeEndIf];
}

- (void)setThreadgroupDistributionMode:(int64_t)mode
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v5 setThreadgroupDistributionMode:mode];
}

- (void)setThreadgroupDistributionModeWithClusterGroupIndex:(unsigned int)index
{
  v3 = *&index;
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugComputeCommandEncoder;
  [(objc_super *)v5 setThreadgroupDistributionModeWithClusterGroupIndex:v3];
}

- (void)invalidateCompressedTexture:(id)texture
{
  v7 = 0;
  memset(&v6[1], 0, 48);
  _MTLMessageContextBegin_();
  if (![(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    if (texture)
    {
      goto LABEL_3;
    }

LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_6;
  }

  _MTLMessageContextPush_();
  if (!texture)
  {
    goto LABEL_8;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    goto LABEL_8;
  }

LABEL_6:
  _MTLMessageContextEnd();
  v6[0].receiver = self;
  v6[0].super_class = MTL4DebugComputeCommandEncoder;
  -[objc_super invalidateCompressedTexture:](v6, sel_invalidateCompressedTexture_, [texture baseObject]);
}

- (void)invalidateCompressedTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
    if (texture)
    {
      goto LABEL_3;
    }

LABEL_13:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  if (!texture)
  {
    goto LABEL_13;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= slice)
  {
    [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

LABEL_11:
  _MTLMessageContextEnd();
  v13.receiver = self;
  v13.super_class = MTL4DebugComputeCommandEncoder;
  -[MTL4ToolsComputeCommandEncoder invalidateCompressedTexture:slice:level:](&v13, sel_invalidateCompressedTexture_slice_level_, [texture baseObject], slice, level);
}

- (void)buildAccelerationStructure:(id)structure descriptor:(id)descriptor scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v16[0])
  {
    checkMTL4AccelerationStructureDescriptorWithRefitOptions(v16, self->super.super.super._device, descriptor, 1, 3);
    checkAccelerationStructure(v16, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v16, v10, var0, var1, 0);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    device = [(MTLToolsObject *)self device];
    if (device)
    {
      objc_msgSend_accelerationStructureSizesWithDescriptor_(device);
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
    }

    if ([structure size] < v13)
    {
      [structure size];
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 buildAccelerationStructure:structure descriptor:descriptor scratchBuffer:var0, var1];
}

- (void)validateRefit:(id)refit descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var0 = buffer.var0;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v27[0])
  {
    if (!options)
    {
      _MTLMessageContextPush_();
    }

    checkMTL4AccelerationStructureDescriptorWithRefitOptions(v27, self->super.super.super._device, descriptor, 1, options);
    checkAccelerationStructure(v27, self->super.super.super._device, refit, 0, @"Source acceleration structure");
    checkAccelerationStructure(v27, self->super.super.super._device, destination, 1, @"Destination acceleration structure");
    v13 = objc_opt_class();
    if (![v13 isSubclassOfClass:objc_opt_class()] || !objc_msgSend(objc_msgSend(descriptor, "geometryDescriptors"), "count"))
    {
LABEL_32:
      if (var0)
      {
        device = [(MTLToolsObject *)self device];
        if (device)
        {
          objc_msgSend_accelerationStructureSizesWithDescriptor_(device);
        }
      }

      goto LABEL_6;
    }

    v14 = 0;
    while (1)
    {
      v15 = [objc_msgSend(descriptor "geometryDescriptors")];
      v16 = objc_opt_class();
      if ([v16 isSubclassOfClass:objc_opt_class()])
      {
        vertexFormat = [v15 vertexFormat];
        vertexStride = [v15 vertexStride];
        if (MTLAttributeFormatComponentCount(vertexFormat) <= 1)
        {
          _MTLMessageContextPush_();
        }

        v19 = MTLAttributeFormatSize(vertexFormat);
        if (vertexStride && v19 > vertexStride)
        {
          v25 = vertexStride;
          v26 = v19;
          _MTLMessageContextPush_();
        }

        v20 = MTLAttributeFormatAlignment(vertexFormat);
        if (vertexStride % v20)
        {
          v25 = vertexStride;
          v26 = v20;
          _MTLMessageContextPush_();
        }

        transformationMatrixBuffer = [v15 transformationMatrixBuffer];
        v23 = v21;
        if (transformationMatrixBuffer)
        {
          if (v21)
          {
            goto LABEL_22;
          }

          v25 = @"Transformation buffer";
          v26 = 0;
LABEL_31:
          _MTLMessageContextPush_();
          goto LABEL_23;
        }

        if (v21)
        {
          v25 = 0;
          v26 = v21;
          _MTLMessageContextPush_();
LABEL_22:
          if (&v23[-1].length + 7 <= 0x2E)
          {
            v25 = v23;
            goto LABEL_31;
          }

LABEL_23:
          if ((transformationMatrixBuffer & 3) != 0)
          {
            v25 = transformationMatrixBuffer;
            _MTLMessageContextPush_();
          }
        }
      }

      if (++v14 >= [objc_msgSend(descriptor geometryDescriptors])
      {
        goto LABEL_32;
      }
    }
  }

LABEL_6:
  _MTLMessageContextEnd();
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  [(MTL4DebugComputeCommandEncoder *)self validateRefit:structure descriptor:descriptor destination:destination scratchBuffer:buffer.var0 options:buffer.var1, 3];
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 refitAccelerationStructure:structure descriptor:descriptor destination:destination scratchBuffer:var0, var1];
}

- (void)refitAccelerationStructure:(id)structure descriptor:(id)descriptor destination:(id)destination scratchBuffer:(MTL4BufferRange)buffer options:(unint64_t)options
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  [(MTL4DebugComputeCommandEncoder *)self validateRefit:structure descriptor:descriptor destination:destination scratchBuffer:buffer.var0 options:buffer.var1, 3];
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v14 refitAccelerationStructure:structure descriptor:descriptor destination:destination scratchBuffer:var0 options:var1, options];
}

- (void)copyAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v8[0])
  {
    checkAccelerationStructure(v8, self->super.super.super._device, structure, 0, @"Source acceleration structure");
    checkAccelerationStructure(v8, self->super.super.super._device, accelerationStructure, 0, @"Destination acceleration structure");
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 copyAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
}

- (void)writeCompactedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, size, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
    if (var1 <= 3)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 writeCompactedAccelerationStructureSize:size toBuffer:var0, var1];
}

- (void)copyAndCompactAccelerationStructure:(id)structure toAccelerationStructure:(id)accelerationStructure
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v8[0])
  {
    checkAccelerationStructure(v8, self->super.super.super._device, structure, 0, @"Source acceleration structure");
    checkAccelerationStructure(v8, self->super.super.super._device, accelerationStructure, 0, @"Destination acceleration structure");
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v7 copyAndCompactAccelerationStructure:structure toAccelerationStructure:accelerationStructure];
}

- (void)writeSerializedAccelerationStructureSize:(id)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, size, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
    if (var1 <= 7)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 writeSerializedAccelerationStructureSize:size toBuffer:var0, var1];
}

- (void)writeDeserializedAccelerationStructureSize:(MTL4BufferRange)size toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v6 = size.var1;
  v7 = size.var0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v12[0])
  {
    checkBufferRange(v12, v9, v7, v6, 0);
    checkBufferRange(v12, v10, var0, var1, 0);
    if (var1 <= 7)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v11.receiver = self;
  v11.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v11 writeDeserializedAccelerationStructureSize:v7 toBuffer:v6, var0, var1];
}

- (void)serializePrimitiveAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 serializePrimitiveAccelerationStructure:structure toBuffer:var0, var1];
}

- (void)serializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v13[0])
  {
    checkAccelerationStructure(v13, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v13, v10, var0, var1, 0);
    if ([structures count])
    {
      v11 = 0;
      do
      {
        checkAccelerationStructure(v13, self->super.super.super._device, [structures objectAtIndexedSubscript:v11++], 0, @"Primitive acceleration structure");
      }

      while (v11 < [structures count]);
    }
  }

  _MTLMessageContextEnd();
  v12.receiver = self;
  v12.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v12 serializeInstanceAccelerationStructure:structure referencedAccelerationStructures:structures toBuffer:var0, var1];
}

- (void)deserializePrimitiveAccelerationStructure:(id)structure fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 deserializePrimitiveAccelerationStructure:structure fromBuffer:var0, var1];
}

- (void)deserializeInstanceAccelerationStructure:(id)structure referencedAccelerationStructures:(id)structures fromBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v15[0])
  {
    checkAccelerationStructure(v15, self->super.super.super._device, structure, 0, @"Acceleration structure");
    if ([structures count])
    {
      v11 = 0;
      v12 = 1;
      do
      {
        checkAccelerationStructure(v15, self->super.super.super._device, [structures objectAtIndexedSubscript:v11], 0, @"Primitive acceleration structure");
        v11 = v12;
      }

      while ([structures count] > v12++);
    }

    checkBufferRange(v15, v10, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v14.receiver = self;
  v14.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v14 deserializeInstanceAccelerationStructure:structure referencedAccelerationStructures:structures fromBuffer:var0, var1];
}

- (BOOL)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure into:(id)into
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    checkAccelerationStructure(v9, self->super.super.super._device, structure, 0, @"Acceleration structure");
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v8 writeGenericBVHStructureSizesOfAccelerationStructure:structure into:into];
}

- (BOOL)writeGenericBVHStructureOfAccelerationStructure:(id)structure into:(id)into
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v9[0])
  {
    checkAccelerationStructure(v9, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBuffer(v9, self->super.super.super._device, [into headerBuffer], objc_msgSend(into, "headerBufferOffset"), 0, @"Header buffer");
    checkBuffer(v9, self->super.super.super._device, [into innerNodeBuffer], objc_msgSend(into, "innerNodeBufferOffset"), 1, @"Inner node buffer");
    checkBuffer(v9, self->super.super.super._device, [into leafNodeBuffer], objc_msgSend(into, "leafNodeBufferOffset"), 1, @"Leaf node buffer");
    checkBuffer(v9, self->super.super.super._device, [into primitiveBuffer], objc_msgSend(into, "primitiveBufferOffset"), 1, @"Primitive buffer");
    checkBuffer(v9, self->super.super.super._device, [into geometryBuffer], objc_msgSend(into, "geometryBufferOffset"), 1, @"Geometry buffer");
    checkBuffer(v9, self->super.super.super._device, [into instanceTransformBuffer], objc_msgSend(into, "instanceTransformBufferOffset"), 1, @"Instance transform buffer");
    checkBuffer(v9, self->super.super.super._device, [into controlPointBuffer], objc_msgSend(into, "controlPointBufferOffset"), 1, @"Control Point buffer");
  }

  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugComputeCommandEncoder;
  return [(MTL4ToolsComputeCommandEncoder *)&v8 writeGenericBVHStructureOfAccelerationStructure:structure into:into];
}

- (void)writeGenericBVHStructureSizesOfAccelerationStructure:(id)structure toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, structure, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 writeGenericBVHStructureSizesOfAccelerationStructure:structure toBuffer:var0, var1];
}

- (void)writeAccelerationStructureSerializationData:(id)data toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, data, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
    if (var1 <= 0x17)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 writeAccelerationStructureSerializationData:data toBuffer:var0, var1];
}

- (void)writeAccelerationStructureTraversalDepth:(id)depth toBuffer:(MTL4BufferRange)buffer
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  _MTLMessageContextBegin_();
  if ([(MTL4DebugCommandEncoder *)self->_debugCommandEncoder hasEndEncoding])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsDevice *)self->super.super.super._device requiresRaytracingEmulation])
  {
    _MTLMessageContextPush_();
  }

  if (!*&v10[0])
  {
    checkAccelerationStructure(v10, self->super.super.super._device, depth, 0, @"Acceleration structure");
    checkBufferRange(v10, v8, var0, var1, 0);
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 writeAccelerationStructureTraversalDepth:depth toBuffer:var0, var1];
}

- (void)copyFromTensor:(id)tensor sourceSlice:(MTLTensorSlice)slice toTensor:(id)toTensor destinationSlice:(MTLTensorSlice)destinationSlice
{
  var1 = destinationSlice.var1;
  var0 = destinationSlice.var0;
  v9 = slice.var1;
  v10 = slice.var0;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  _MTLMessageContextBegin_();
  verifyCopyFromTensorToTensor(&v13, tensor, v10, v9, toTensor, var0, var1);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
}

- (void)_validateThreadsPerThreadgroupCommon:(_MTLMessageContext *)common threadsPerThreadgroup:(id *)threadgroup
{
  v20 = *threadgroup;
  currentComputePipelineState = self->_currentComputePipelineState;
  if (currentComputePipelineState)
  {
    objc_msgSend_requiredThreadsPerThreadgroup(currentComputePipelineState, a2, common);
  }

  validateDispatchThreadsPerThreadgroupWithRTPTG();
  p_var2 = &threadgroup->var2;
  v8 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  if (!v8)
  {
    var2 = threadgroup->var2;
    v19 = 0;
    var0 = threadgroup->var0;
    var1 = threadgroup->var1;
    _MTLMessageContextPush_();
    v8 = threadgroup->var1 * threadgroup->var0 * threadgroup->var2;
  }

  if (v8 > [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup:var0])
  {
    [(MTLToolsDevice *)self->super.super.super._device maxTotalComputeThreadsPerThreadgroup];
    _MTLMessageContextPush_();
  }

  v9 = threadgroup->var0;
  device = self->super.super.super._device;
  if (!device)
  {
    if (!v9)
    {
      v12 = threadgroup->var1;
      goto LABEL_15;
    }

LABEL_27:
    memset(&v20, 0, sizeof(v20));
    goto LABEL_28;
  }

  objc_msgSend_maxThreadsPerThreadgroup(device);
  v11 = self->super.super.super._device;
  if (v9 <= v20.var0)
  {
    goto LABEL_9;
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  objc_msgSend_maxThreadsPerThreadgroup(v11);
LABEL_28:
  _MTLMessageContextPush_();
  v11 = self->super.super.super._device;
LABEL_9:
  v12 = threadgroup->var1;
  if (v11)
  {
    objc_msgSend_maxThreadsPerThreadgroup(v11);
    v13 = self->super.super.super._device;
    if (v12 <= v20.var1)
    {
      goto LABEL_11;
    }

    if (v13)
    {
      objc_msgSend_maxThreadsPerThreadgroup(v13);
      goto LABEL_26;
    }

LABEL_23:
    v20.var2 = 0;
LABEL_26:
    _MTLMessageContextPush_();
    v13 = self->super.super.super._device;
LABEL_11:
    v14 = *p_var2;
    if (v13)
    {
      objc_msgSend_maxThreadsPerThreadgroup(v13);
      v15 = v20.var2;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_17;
  }

LABEL_15:
  if (v12)
  {
    goto LABEL_23;
  }

  v15 = 0;
  v14 = *p_var2;
LABEL_17:
  if (v14 > v15)
  {
    [MTL4DebugComputeCommandEncoder _validateThreadsPerThreadgroupCommon:&self->super.super.super._device threadsPerThreadgroup:?];
  }
}

- (void)_validateCopyFromTextureToTextureCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationTexture:(id)destinationTexture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2
{
  if (!(size->var1 * size->var0 * size->var2))
  {
    v43 = *size;
    v48 = 0;
    _MTLMessageContextPush_();
  }

  if (texture)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] != 3)
    {
      if (destinationTexture)
      {
        goto LABEL_10;
      }

LABEL_160:
      _MTLMessageContextPush_();
      goto LABEL_15;
    }
  }

  _MTLMessageContextPush_();
  if (!destinationTexture)
  {
    goto LABEL_160;
  }

LABEL_10:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v19 = self->super.super.super._device;
  if (v19 != [destinationTexture device])
  {
    _MTLMessageContextPush_();
  }

  if ([destinationTexture storageMode] == 3)
  {
    goto LABEL_160;
  }

LABEL_15:
  if (common->var0 > 0)
  {
    return;
  }

  var0 = size->var0;
  var1 = size->var1;
  sizeCopy = size;
  var2 = size->var2;
  v20 = (texture + 72);
  v21 = (destinationTexture + 72);
  pixelFormat = [texture pixelFormat];
  if (pixelFormat != [destinationTexture pixelFormat])
  {
    v23 = *(texture + 20);
    if ((v23 & 0x20) != 0 && (*(destinationTexture + 80) & 0x20) != 0 || (v23 & 0x40) != 0 && (*(destinationTexture + 80) & 0x40) != 0)
    {
      if (*(texture + 11) == *(destinationTexture + 11))
      {
        goto LABEL_65;
      }

      v43.var0 = *(texture + 9);
      v43.var1 = *v21;
      goto LABEL_64;
    }

    v24 = (texture + 72);
    if ((v23 & 0x20) == 0)
    {
      if ((*(destinationTexture + 80) & 0x20) != 0)
      {
        v24 = (destinationTexture + 72);
      }

      else
      {
        v24 = 0;
      }
    }

    v25 = (texture + 72);
    if ((v23 & 0x40) == 0)
    {
      if ((*(destinationTexture + 80) & 0x40) != 0)
      {
        v25 = (destinationTexture + 72);
      }

      else
      {
        v25 = 0;
      }
    }

    if (v24)
    {
      if (!v25 || v24 == v25)
      {
        v26 = v20 == v24 ? destinationTexture + 72 : texture + 72;
        if ((v26[9] & 4) == 0)
        {
          v27 = v24[3];
          if (v27 != 2)
          {
            v27 = 4;
          }

          if (v27 == *(v26 + 3))
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_63;
    }

    if (v25)
    {
      if (v20 == v25)
      {
        v28 = destinationTexture + 72;
      }

      else
      {
        v28 = texture + 72;
      }

      if ((v28[9] & 4) == 0 && *(v28 + 3) == 1)
      {
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    v29 = *(texture + 11);
    v30 = *(destinationTexture + 11);
    v31 = *(destinationTexture + 20);
    if ((v23 & 0x400) != 0)
    {
      v32 = (texture + 72);
      if ((v31 & 0x400) != 0)
      {
LABEL_62:
        if (v29 == v30)
        {
          goto LABEL_65;
        }

LABEL_63:
        v43.var0 = *v20;
        v43.var1 = *v21;
LABEL_64:
        _MTLMessageContextPush_();
        goto LABEL_65;
      }
    }

    else if ((v31 & 0x400) != 0)
    {
      v32 = (destinationTexture + 72);
    }

    else
    {
      v32 = 0;
    }

    if (v29 != v30 && v32)
    {
      if (v20 == v32)
      {
        v33 = destinationTexture + 72;
      }

      else
      {
        v33 = texture + 72;
      }

      if (*(v33 + 3) == v32[3])
      {
        v35 = v32[4];
        v34 = v32[5];
        v36 = v32[6];
        if (v20 == v32)
        {
          var0 /= v35;
          var1 /= v34;
          v37 = var2 / v36;
        }

        else
        {
          var0 *= v35;
          var1 *= v34;
          v37 = v36 * var2;
        }

        var2 = v37;
        goto LABEL_65;
      }

      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_65:
  sampleCount = [texture sampleCount];
  if (sampleCount != [destinationTexture sampleCount])
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if ([texture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([destinationTexture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  originCopy = origin;
  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= slice)
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if ([destinationTexture mipmapLevelCount] <= destinationLevel)
  {
    destinationLevelCopy = destinationLevel;
    mipmapLevelCount2 = [destinationTexture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces2 = [destinationTexture numFaces];
  if ([destinationTexture arrayLength] * numFaces2 <= destinationSlice)
  {
    [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
  }

  if (common->var0 <= 0)
  {
    [texture pixelFormat];
    [texture width];
    [texture height];
    [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    [destinationTexture pixelFormat];
    [destinationTexture width];
    [destinationTexture height];
    [destinationTexture depth];
    [destinationTexture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    _MTLAdjustMTLSize();
    _MTLAdjustMTLSize();
    v41 = originCopy->var0;
    if ((*(texture + 81) & 4) != 0)
    {
      if (v41)
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var1)
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var2)
      {
        goto LABEL_161;
      }
    }

    else
    {
      if (sizeCopy->var0 + v41)
      {
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var1 + originCopy->var1)
      {
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var2 + originCopy->var2)
      {
LABEL_161:
        _MTLMessageContextPush_();
      }
    }

    v42 = destinationOrigin->var0;
    if ((*(destinationTexture + 81) & 4) != 0)
    {
      if (v42)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1)
      {
        _MTLMessageContextPush_();
      }

      if (!destinationOrigin->var2)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if (v42 + var0)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1 + var1)
      {
        _MTLMessageContextPush_();
      }

      if (!(destinationOrigin->var2 + var2))
      {
        goto LABEL_104;
      }
    }

    _MTLMessageContextPush_();
LABEL_104:
    if ((*(texture + 81) & 4) != 0)
    {
      if (originCopy->var0 % *(texture + 13))
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var1 % *(texture + 14))
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var2 % *(texture + 15))
      {
        _MTLMessageContextPush_();
      }

      if (0uLL % *(texture + 13))
      {
        _MTLMessageContextPush_();
      }

      if (0uLL % *(texture + 14))
      {
        _MTLMessageContextPush_();
      }

      if (0uLL % *(texture + 15))
      {
        _MTLMessageContextPush_();
      }
    }

    if ((*(destinationTexture + 81) & 4) != 0)
    {
      if (destinationOrigin->var0 % *(destinationTexture + 13))
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1 % *(destinationTexture + 14))
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var2 % *(destinationTexture + 15))
      {
        _MTLMessageContextPush_();
      }

      if (0uLL % *(destinationTexture + 13))
      {
        _MTLMessageContextPush_();
      }

      if (0uLL % *(destinationTexture + 14))
      {
        _MTLMessageContextPush_();
      }

      if (0uLL % *(destinationTexture + 15))
      {
        _MTLMessageContextPush_();
      }
    }

    if ((*(texture + 81) & 0x20) != 0 || (*(destinationTexture + 81) & 0x20) != 0)
    {
      if (originCopy->var0)
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var1)
      {
        _MTLMessageContextPush_();
      }

      if (originCopy->var2)
      {
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var0)
      {
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var1)
      {
        _MTLMessageContextPush_();
      }

      if (sizeCopy->var2)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var0)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var1)
      {
        _MTLMessageContextPush_();
      }

      if (destinationOrigin->var2)
      {
        _MTLMessageContextPush_();
      }

      if (var0)
      {
        _MTLMessageContextPush_();
      }

      if (var1)
      {
        _MTLMessageContextPush_();
      }

      if (var2)
      {
        _MTLMessageContextPush_();
      }
    }
  }
}

- (void)_validateCopyFromTextureToBufferCommon:(_MTLMessageContext *)common sourceTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size destinationBuffer:(id)buffer destinationOffset:(unint64_t)self0 destinationBytesPerRow:(unint64_t)self1 destinationBytesPerImage:(unint64_t)self2 options:(unint64_t)self3
{
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL, common);
  if (!(size->var1 * size->var0 * size->var2))
  {
    var2 = size->var2;
    v34 = 0;
    var0 = size->var0;
    var1 = size->var1;
    _MTLMessageContextPush_();
  }

  if (texture)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] != 3)
    {
      if (buffer)
      {
        goto LABEL_12;
      }

LABEL_65:
      _MTLMessageContextPush_();
      goto LABEL_15;
    }
  }

  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_65;
  }

LABEL_12:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v20 = self->super.super.super._device;
  if (v20 != [buffer device])
  {
    goto LABEL_65;
  }

LABEL_15:
  if (common->var0 <= 0)
  {
    if ([texture isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    selfCopy = self;
    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      var1 = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
    }

    if (common->var0 <= 0)
    {
      [texture pixelFormat];
      [texture width];
      [texture height];
      [texture depth];
      [texture sampleCount];
      v22 = (texture + 72);
      MTLGetTextureLevelInfoForDeviceWithOptions();
      _MTLAdjustMTLSize();
      v23 = origin->var0;
      if ((*(texture + 81) & 4) != 0)
      {
        if (v23)
        {
          v28 = origin->var0;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        commonCopy3 = common;
        if (origin->var1)
        {
          v28 = origin->var1;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        if (origin->var2)
        {
          v28 = origin->var2;
          v31 = 0;
          goto LABEL_68;
        }
      }

      else
      {
        v24 = size->var0 + v23;
        if (v24)
        {
          v28 = v24;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        commonCopy3 = common;
        if (size->var1 + origin->var1)
        {
          v28 = size->var1 + origin->var1;
          v31 = 0;
          _MTLMessageContextPush_();
        }

        if (size->var2 + origin->var2)
        {
          v28 = size->var2 + origin->var2;
          v31 = 0;
LABEL_68:
          _MTLMessageContextPush_();
        }
      }

      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
      if ((*(texture + 81) & 4) != 0)
      {
        if (origin->var0 % *(texture + 13))
        {
          v31 = *v22;
          var2 = *(texture + 13);
          v28 = origin->var0;
          _MTLMessageContextPush_();
        }

        if (origin->var1 % *(texture + 14))
        {
          v31 = *v22;
          var2 = *(texture + 14);
          v28 = origin->var1;
          _MTLMessageContextPush_();
        }

        if (origin->var2 % *(texture + 15))
        {
          v31 = *v22;
          var2 = *(texture + 15);
          v28 = origin->var2;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 13))
        {
          v31 = *v22;
          var2 = *(texture + 13);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 14))
        {
          v31 = *v22;
          var2 = *(texture + 14);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 15))
        {
          v31 = *v22;
          var2 = *(texture + 15);
          v28 = 0;
          _MTLMessageContextPush_();
        }

        if ((*(texture + 81) & 0x20) != 0)
        {
          if ((options & 4) != 0)
          {
            goto LABEL_53;
          }
        }

        else if ((options & 4) == 0)
        {
          goto LABEL_53;
        }

        v28 = *v22;
        commonCopy3 = common;
        _MTLMessageContextPush_();
      }

LABEL_53:
      if (commonCopy3->var0 <= 0)
      {
        [texture pixelFormat];
        [texture sampleCount];
        MTLGetTextureLevelInfoForDeviceWithOptions();
        if (-image - row + offset > [buffer length])
        {
          imageCopy = -image - row + offset;
          v32 = [buffer length];
          _MTLMessageContextPush_();
        }

        if (row % 0)
        {
          _MTLMessageContextPush_();
          imageCopy = row;
          v32 = 0;
          _MTLMessageContextPush_();
        }

        if (image % 0)
        {
          imageCopy = image;
          v32 = 0;
          _MTLMessageContextPush_();
        }

        if ([texture textureType] != 9)
        {
          _MTLDebugFindMaxTextureWidth(selfCopy->super.super.super._device, texture);
          if (row)
          {
            _MTLMessageContextPush_();
          }
        }
      }
    }
  }
}

- (void)_validateCopyFromBufferToTextureCommon:(_MTLMessageContext *)common sourceBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size destinationTexture:(id)texture destinationSlice:(unint64_t)self0 destinationLevel:(unint64_t)self1 destinationOrigin:(id *)self2 options:(unint64_t)self3
{
  if ((~options & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(options & 0xFFFFFFFF9FFFFFFFLL, common);
  if (!(size->var1 * size->var0 * size->var2))
  {
    var2 = size->var2;
    v32 = 0;
    var0 = size->var0;
    var1 = size->var1;
    _MTLMessageContextPush_();
  }

  if (!buffer)
  {
    goto LABEL_65;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device == [buffer device])
  {
    if (!texture)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_65:
    _MTLMessageContextPush_();
    if (!texture)
    {
      goto LABEL_16;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  v20 = self->super.super.super._device;
  if (v20 != [texture device])
  {
    _MTLMessageContextPush_();
  }

  if ([texture storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

LABEL_16:
  if (common->var0 <= 0)
  {
    offsetCopy = offset;
    if ([texture isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    selfCopy = self;
    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      var1 = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:];
    }

    if (common->var0 <= 0)
    {
      [texture pixelFormat];
      [texture width];
      [texture height];
      [texture depth];
      [texture sampleCount];
      commonCopy2 = common;
      MTLGetTextureLevelInfoForDeviceWithOptions();
      if (size->var0 + origin->var0)
      {
        v26 = size->var0 + origin->var0;
        v29 = 0;
        _MTLMessageContextPush_();
      }

      if (size->var1 + origin->var1)
      {
        v26 = size->var1 + origin->var1;
        v29 = 0;
        _MTLMessageContextPush_();
      }

      if (size->var2 + origin->var2)
      {
        v26 = size->var2 + origin->var2;
        v29 = 0;
        _MTLMessageContextPush_();
      }

      if (common->var0 <= 0)
      {
        v23 = (texture + 72);
        _MTLAdjustMTLSize();
        if (origin->var0)
        {
          v26 = origin->var0;
          v29 = 0;
          _MTLMessageContextPush_();
        }

        if (origin->var1)
        {
          v26 = origin->var1;
          v29 = 0;
          _MTLMessageContextPush_();
        }

        if (origin->var2)
        {
          v26 = origin->var2;
          v29 = 0;
          _MTLMessageContextPush_();
        }

        [MTL4DebugComputeCommandEncoder _validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
        if ((*(texture + 81) & 4) == 0)
        {
          goto LABEL_54;
        }

        if (origin->var0 % *(texture + 13))
        {
          v29 = *v23;
          var2 = *(texture + 13);
          v26 = origin->var0;
          _MTLMessageContextPush_();
        }

        if (origin->var1 % *(texture + 14))
        {
          v29 = *v23;
          var2 = *(texture + 14);
          v26 = origin->var1;
          _MTLMessageContextPush_();
        }

        if (origin->var2 % *(texture + 15))
        {
          v29 = *v23;
          var2 = *(texture + 15);
          v26 = origin->var2;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 13))
        {
          v29 = *v23;
          var2 = *(texture + 13);
          v26 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 14))
        {
          v29 = *v23;
          var2 = *(texture + 14);
          v26 = 0;
          _MTLMessageContextPush_();
        }

        if (0uLL % *(texture + 15))
        {
          v29 = *v23;
          var2 = *(texture + 15);
          v26 = 0;
          _MTLMessageContextPush_();
        }

        if ((*(texture + 81) & 0x20) != 0)
        {
          if ((options & 4) != 0)
          {
            goto LABEL_54;
          }
        }

        else if ((options & 4) == 0)
        {
          goto LABEL_54;
        }

        v26 = *v23;
        commonCopy2 = common;
        _MTLMessageContextPush_();
LABEL_54:
        if (commonCopy2->var0 <= 0)
        {
          [texture pixelFormat];
          [texture sampleCount];
          MTLGetTextureLevelInfoForDeviceWithOptions();
          if (-image - row + offsetCopy > [buffer length])
          {
            imageCopy = -image - row + offsetCopy;
            v30 = [buffer length];
            _MTLMessageContextPush_();
          }

          if (row % 0)
          {
            imageCopy = row;
            v30 = 0;
            _MTLMessageContextPush_();
          }

          if (image % 0)
          {
            imageCopy = image;
            v30 = 0;
            _MTLMessageContextPush_();
          }

          if ([texture textureType] != 9)
          {
            _MTLDebugFindMaxTextureWidth(selfCopy->super.super.super._device, texture);
            if (row)
            {
              _MTLMessageContextPush_();
            }
          }
        }
      }
    }
  }
}

- (void)_validateFillTextureCommon:(_MTLMessageContext *)common texture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region
{
  if (!(region->var1.var1 * region->var1.var0 * region->var1.var2))
  {
    var1 = region->var1;
    _MTLMessageContextPush_();
  }

  if (texture)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    device = self->super.super.super._device;
    if (device != [texture device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture mipmapLevelCount] <= level)
    {
      levelCopy = level;
      mipmapLevelCount = [texture mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    numFaces = [texture numFaces];
    if ([texture arrayLength] * numFaces <= slice)
    {
      [MTL4DebugComputeCommandEncoder optimizeContentsForGPUAccess:slice:level:];
    }
  }

  else
  {
    _MTLMessageContextPush_();
  }

  if (common->var0 <= 0)
  {
    [(MTLToolsObject *)self->super.super.super._device baseObject];
    [texture pixelFormat];
    MTLPixelFormatGetInfoForDevice();
    [texture pixelFormat];
    [texture width];
    [texture height];
    [texture depth];
    [texture sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    _MTLAdjustMTLSize();
    if (region->var0.var0)
    {
      _MTLMessageContextPush_();
    }

    if (region->var0.var1)
    {
      _MTLMessageContextPush_();
    }

    if (region->var0.var2)
    {
      _MTLMessageContextPush_();
    }
  }
}

- (void)_resetEncoder
{
  bzero(self->_currentThreadgroupMemoryLengths, 0xAA8uLL);
  self->_currentImageBlockSize.width = 0;
  self->_currentImageBlockSize.height = 0;
  self->_currentImageBlockSize.depth = 1;
  self->_currentArgumentTable = 0;
  self->_currentComputePipelineState = 0;
  *&self->_encoderState = *&self->_encoderState & 0xF0 | 1;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder resetEncoderState];
  self->_numSubstreams = 0;
  std::__tree<unsigned int>::destroy(&self->_currentSubstreamProgressLabels, self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_);
  self->_currentSubstreamProgressLabels.__tree_.__begin_node_ = &self->_currentSubstreamProgressLabels.__tree_.__end_node_;
  self->_currentSubstreamProgressLabels.__tree_.__size_ = 0;
  self->_currentSubstreamProgressLabels.__tree_.__end_node_.__left_ = 0;
  self->_currentVirtualSubstreamIndex = 0;
  self->_currentVirtualSubstreamHasEncodedDispatch = 0;
}

- (void)_updateEncoderStateAfterDispatch
{
  *&self->_encoderState |= 1u;
  self->_currentVirtualSubstreamHasEncodedDispatch = 1;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder setCanEndEncoding:1];
}

- (void)_validateComputeFunctionBuiltinArguments:(_MTLMessageContext *)arguments threadsPerThreadgroup:(id *)threadgroup threadgroupsPerGrid:(id *)grid
{
  v35 = *MEMORY[0x277D85DE8];
  currentComputePipelineState = self->_currentComputePipelineState;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [-[MTLComputePipelineState validationReflection](currentComputePipelineState "validationReflection")];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v32 = xmmword_22E27C168;
        var2 = 1;
        builtInType = [v9 builtInType];
        if (builtInType > 10)
        {
          if ((builtInType - 15) < 6)
          {
            goto LABEL_13;
          }

          if (builtInType != 11)
          {
            if (builtInType == 12)
            {
              goto LABEL_13;
            }

LABEL_20:
            name = [v9 name];
            _MTLMessageContextPush_();
            goto LABEL_13;
          }

          v11 = currentComputePipelineState + 192;
          v32 = *&grid->var0;
          var2 = grid->var2;
          v12 = @"threadgroups_per_grid";
        }

        else if (builtInType > 7)
        {
          if (builtInType == 8)
          {
            v11 = currentComputePipelineState + 120;
            v32 = threadgroup->var1 * threadgroup->var0 * grid->var2;
            var2 = 0;
            v12 = @"thread_index_in_threadgroup";
          }

          else if (builtInType == 9)
          {
            v11 = currentComputePipelineState + 144;
            v32 = *&threadgroup->var0;
            var2 = threadgroup->var2;
            v12 = @"threads_per_threadgroup";
          }

          else
          {
            v11 = currentComputePipelineState + 168;
            v32 = *&grid->var0;
            var2 = grid->var2;
            v12 = @"threadgroup_position_in_grid";
          }
        }

        else
        {
          switch(builtInType)
          {
            case 5:
              v13 = grid->var1 * threadgroup->var1;
              v11 = currentComputePipelineState + 48;
              *&v32 = grid->var0 * threadgroup->var0;
              *(&v32 + 1) = v13;
              var2 = grid->var2 * threadgroup->var2;
              v12 = @"thread_position_in_grid";
              break;
            case 6:
              v14 = grid->var1 * threadgroup->var1;
              v11 = currentComputePipelineState + 72;
              *&v32 = grid->var0 * threadgroup->var0;
              *(&v32 + 1) = v14;
              var2 = grid->var2 * threadgroup->var2;
              v12 = @"threads_per_grid";
              break;
            case 7:
              v11 = currentComputePipelineState + 96;
              v32 = *&threadgroup->var0;
              var2 = threadgroup->var2;
              v12 = @"thread_position_in_threadgroup";
              break;
            default:
              goto LABEL_20;
          }
        }

        for (i = 0; i != 3; ++i)
        {
          v16 = *(&v32 + i);
          v17 = *&v11[8 * i];
          if (v16 > v17)
          {
            name2 = [v9 name];
            v23 = v12;
            v20 = v16;
            v21 = v17;
            name = i;
            _MTLMessageContextPush_();
          }
        }

LABEL_13:
        ++v8;
      }

      while (v8 != v6);
      v18 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      v6 = v18;
    }

    while (v18);
  }
}

- (void)_validateComputeFunctionArguments:(_MTLMessageContext *)arguments
{
  v29 = *MEMORY[0x277D85DE8];
  currentComputePipelineState = self->_currentComputePipelineState;
  v6 = [-[MTLComputePipelineState validationReflection](currentComputePipelineState "validationReflection")];
  if ([(MTLComputePipelineState *)currentComputePipelineState function])
  {
    v7 = [-[MTLComputePipelineState function](currentComputePipelineState "function")];
  }

  else
  {
    v8 = [-[MTLComputePipelineState mtl4Descriptor](currentComputePipelineState "mtl4Descriptor")];
    v7 = _MTL4DebugFunctionDescriptorName(v8, v9);
  }

  v21 = currentComputePipelineState;
  LOBYTE(v20) = self->_allowsNullBufferBindings;
  [(MTL4DebugCommandEncoder *)self->_debugCommandEncoder validateFunctionArguments:arguments stage:@"Compute" functionName:v7 argumentTable:self->_currentArgumentTable boundThreadgroupMemoryArguments:self->_currentThreadgroupMemoryLengths bindings:v6 allowNullBufferBindings:v20];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        if ([v15 isUsed])
        {
          type = [v15 type];
          index = [v15 index];
          if (type == 1)
          {
            v12 += self->_currentThreadgroupMemoryLengths[index].threadgroupMemoryLength;
          }
        }
      }

      v11 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  staticThreadgroupMemoryLength = [(MTLComputePipelineState *)v21 staticThreadgroupMemoryLength];
  v22 = *&self->_currentImageBlockSize.width;
  depth = self->_currentImageBlockSize.depth;
  v19 = staticThreadgroupMemoryLength + v12 + [(MTLComputePipelineState *)v21 imageblockMemoryLengthForDimensions:&v22];
  if (v19 > [(MTLToolsDevice *)self->super.super.super._device maxThreadgroupMemoryLength])
  {
    [MTL4DebugComputeCommandEncoder _validateComputeFunctionArguments:];
  }
}

- (void)writeTimestampWithGranularity:(int64_t)granularity intoHeap:(id)heap atIndex:(unint64_t)index
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  _MTLMessageContextBegin_();
  if (!heap)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ([heap type] != 1)
  {
    _MTLMessageContextPush_();
  }

  if ([heap count] <= index)
  {
    [heap count];
LABEL_12:
    _MTLMessageContextPush_();
  }

  if (granularity >= 2)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v9.receiver = self;
  v9.super_class = MTL4DebugComputeCommandEncoder;
  [(MTL4ToolsComputeCommandEncoder *)&v9 writeTimestampWithGranularity:granularity intoHeap:heap atIndex:index];
}

- (id).cxx_construct
{
  v2 = 88;
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
  *(self + 359) = 0;
  *(self + 358) = 0;
  *(self + 357) = self + 2864;
  return self;
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)fillBuffer:range:value:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)optimizeContentsForGPUAccess:slice:level:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  [v0 numFaces];
  [OUTLINED_FUNCTION_4() arrayLength];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 commandTypes];
  v3 = [OUTLINED_FUNCTION_6() commandTypes];
  return OUTLINED_FUNCTION_7(v3, v1, @"source commandTypes (%lu) are not equal to destination commandTypes (%lu).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [v1 inheritPipelineState];
  v2 = [v0 inheritPipelineState];
  return OUTLINED_FUNCTION_7(v2, v3, @"source inheritPipelineState (%s) is not equal to destination inheritPipelineState (%s).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  [v1 inheritBuffers];
  v2 = [v0 inheritBuffers];
  return OUTLINED_FUNCTION_7(v2, v3, @"source inheritBuffers (%s) is not equal to destination inheritBuffers (%s).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxVertexBufferBindCount];
  v3 = [OUTLINED_FUNCTION_6() maxVertexBufferBindCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"source maxVertexBufferBindCount (%lu) is not equal to destination maxVertexBufferBindCount (%lu).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxFragmentBufferBindCount];
  v3 = [OUTLINED_FUNCTION_6() maxFragmentBufferBindCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"source maxFragmentBufferBindCount (%lu) is not equal to destination maxFragmentBufferBindCount (%lu).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxKernelBufferBindCount];
  v3 = [OUTLINED_FUNCTION_6() maxKernelBufferBindCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"source maxKernelBufferBindCount (%lu) is not equal to destination maxKernelBufferBindCount (%lu).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxObjectBufferBindCount];
  v3 = [OUTLINED_FUNCTION_6() maxObjectBufferBindCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"source maxObjectBufferBindCount (%lu) is not equal to destination maxObjectBufferBindCount (%lu).");
}

- (uint64_t)copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxMeshBufferBindCount];
  v3 = [OUTLINED_FUNCTION_6() maxMeshBufferBindCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"source maxMeshBufferBindCount (%lu) is not equal to destination maxMeshBufferBindCount (%lu).");
}

- (uint64_t)_validateThreadsPerThreadgroupCommon:(uint64_t)a1 threadsPerThreadgroup:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v2 = objc_msgSend_maxThreadsPerThreadgroup(v2);
  }

  return OUTLINED_FUNCTION_7(v2, a2, @"threadsPerThreadgroup.depth (%lu) must be <= %lu.");
}

- (uint64_t)_validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 sampleCount];
  v3 = [OUTLINED_FUNCTION_6() sampleCount];
  return OUTLINED_FUNCTION_7(v3, v1, @"[sourceTexture sampleCount](%lu) and [destinationTexture sampleCount](%lu) must be equal.");
}

- (uint64_t)_validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  [v0 numFaces];
  [OUTLINED_FUNCTION_4() arrayLength];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateCopyFromTextureToTextureCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationTexture:destinationSlice:destinationLevel:destinationOrigin:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  [v0 numFaces];
  [OUTLINED_FUNCTION_4() arrayLength];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

- (uint64_t)_validateCopyFromTextureToBufferCommon:sourceTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:destinationBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v3 = [(__CFString *)_MTLDebugBlitOptionString(v0) UTF8String];
  return OUTLINED_FUNCTION_7(v3, v1, @"option (%s) is not a valid MTLBlitOption for sourceTexture with pixel format %s.");
}

- (uint64_t)_validateComputeFunctionArguments:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [*v0 maxThreadgroupMemoryLength];
  return MTLReportFailure();
}

@end