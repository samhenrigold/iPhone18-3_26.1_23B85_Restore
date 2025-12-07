@interface MTL4DebugCommandBuffer
- (BOOL)isAllocatorGenerationValid;
- (MTL4DebugCommandBuffer)initWithCommandBuffer:(id)buffer device:(id)device;
- (MTL4DebugRenderPassInfo)suspendResumeRenderPassInfo;
- (id).cxx_construct;
- (id)commandAllocator;
- (id)computeCommandEncoder;
- (id)computeCommandEncoderWithSubstreamCount:(unsigned int)count;
- (id)machineLearningCommandEncoder;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor;
- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options;
- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity;
- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (void)_clearSuspendResumeRenderPassInfo;
- (void)_resetRenderPassAttachmentTracking;
- (void)beginCommandBufferWithAllocator:(id)allocator;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)dealloc;
- (void)endCommandBuffer;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(MTL4BufferRange)buffer waitFence:(id)fence updateFence:(id)updateFence;
- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(id)buffer atOffset:(unint64_t)offset waitFence:(id)fence updateFence:(id)updateFence;
- (void)useResidencySet:(id)set;
- (void)useResidencySets:(const void *)sets count:(unint64_t)count;
- (void)writeTimestampIntoHeap:(id)heap atIndex:(unint64_t)index;
@end

@implementation MTL4DebugCommandBuffer

- (MTL4DebugCommandBuffer)initWithCommandBuffer:(id)buffer device:(id)device
{
  v5.receiver = self;
  v5.super_class = MTL4DebugCommandBuffer;
  result = [(MTL4ToolsCommandBuffer *)&v5 initWithBaseObject:buffer parent:device];
  if (result)
  {
    result->_currentState = 0;
    result->_aggregatedEncoderMask = 0;
    result->_currentEncoder = 0;
    result->_suspendResumeRenderPassInfo.resumingRenderPassDescriptor = 0;
    result->_suspendResumeRenderPassInfo.suspendingRenderPassDescriptor = 0;
  }

  return result;
}

- (void)dealloc
{
  [(MTL4DebugCommandBuffer *)self _clearSuspendResumeRenderPassInfo];
  v3.receiver = self;
  v3.super_class = MTL4DebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v3 dealloc];
}

- (id)commandAllocator
{
  v5 = 0;
  memset(&v4[1], 0, 48);
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v4[0].receiver = self;
  v4[0].super_class = MTL4DebugCommandBuffer;
  return [(objc_super *)v4 commandAllocator];
}

- (void)beginCommandBufferWithAllocator:(id)allocator
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  _MTLMessageContextBegin_();
  validateBeginCommandBufferWithAllocatorCommon(v6, self, allocator);
  _MTLMessageContextEnd();
  self->_currentState = 1;
  self->_aggregatedEncoderMask = 0;
  objc_storeWeak(&self->_debugCommandAllocator, allocator);
  self->_allocatorGeneration = [allocator currentGeneration];
  [(MTL4DebugCommandBuffer *)self _resetRenderPassAttachmentTracking];
  [(MTL4DebugCommandBuffer *)self _clearSuspendResumeRenderPassInfo];
  v5.receiver = self;
  v5.super_class = MTL4DebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v5 beginCommandBufferWithAllocator:allocator];
}

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  _MTLMessageContextBegin_();
  validateBeginCommandBufferWithAllocatorCommon(v8, self, allocator);
  _MTLMessageContextEnd();
  self->_currentState = 1;
  self->_aggregatedEncoderMask = 0;
  self->_allocatorGeneration = [allocator currentGeneration];
  objc_storeWeak(&self->_debugCommandAllocator, allocator);
  [(MTL4DebugCommandBuffer *)self _resetRenderPassAttachmentTracking];
  [(MTL4DebugCommandBuffer *)self _clearSuspendResumeRenderPassInfo];
  v7.receiver = self;
  v7.super_class = MTL4DebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v7 beginCommandBufferWithAllocator:allocator options:options];
}

- (void)endCommandBuffer
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_currentState = 2;
  v3[0].receiver = self;
  v3[0].super_class = MTL4DebugCommandBuffer;
  [(objc_super *)v3 endCommandBuffer];
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor
{
  v10 = 0;
  memset(&v9[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  if (MTLReportFailureTypeEnabled())
  {
    _MTLDebugValidateRenderPassDescriptorAndTrackAttachments([descriptor _descriptorPrivate], self->super.super._device, &self->_attachmentSet, &self->_prevAttachments, &self->_currentAttachments);
  }

  self->_aggregatedEncoderMask |= 1uLL;
  v5 = objc_autoreleasePoolPush();
  v9[0].receiver = self;
  v9[0].super_class = MTL4DebugCommandBuffer;
  v6 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v6)
  {
    v7 = [[MTL4DebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v6 commandBuffer:self descriptor:descriptor];
    self->_currentEncoder = v7;
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)renderCommandEncoderWithDescriptor:(id)descriptor options:(unint64_t)options
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
    if ((options & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((options & 2) == 0)
  {
    goto LABEL_11;
  }

  if (self->_aggregatedEncoderMask)
  {
    _MTLMessageContextPush_();
  }

LABEL_11:
  _MTLMessageContextEnd();
  if (MTLReportFailureTypeEnabled())
  {
    _MTLDebugValidateRenderPassDescriptorAndTrackAttachments([descriptor _descriptorPrivate], self->super.super._device, &self->_attachmentSet, &self->_prevAttachments, &self->_currentAttachments);
    if ((options & 3) == 0)
    {
      if ((options & 2) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v14 = 0;
    memset(&v13[1], 0, 48);
    _MTLMessageContextBegin_();
    if ([descriptor visibilityResultBuffer] && objc_msgSend(descriptor, "visibilityResultType") != 1)
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
  }

  if ((options & 2) != 0)
  {
    self->_aggregatedEncoderMask |= 8uLL;
    v8 = [descriptor copy];
    self->_suspendResumeRenderPassInfo.resumingRenderPassDescriptor = v8;
    if ((options & 1) == 0)
    {
      goto LABEL_25;
    }

    self->_aggregatedEncoderMask |= 0x10uLL;
    v7 = v8;
    goto LABEL_22;
  }

  if (options)
  {
    self->_aggregatedEncoderMask |= 0x10uLL;
    v7 = [descriptor copy];
LABEL_22:
    self->_suspendResumeRenderPassInfo.suspendingRenderPassDescriptor = v7;
    goto LABEL_25;
  }

LABEL_24:
  self->_aggregatedEncoderMask |= 1uLL;
LABEL_25:
  v9 = objc_autoreleasePoolPush();
  v13[0].receiver = self;
  v13[0].super_class = MTL4DebugCommandBuffer;
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [[MTL4DebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v10 commandBuffer:self descriptor:descriptor];
    self->_currentEncoder = v11;
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)computeCommandEncoder
{
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandBuffer *)self _resetRenderPassAttachmentTracking:0];
  self->_aggregatedEncoderMask |= 2uLL;
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v4 = [[MTL4DebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v4 commandBuffer:self];
    self->_currentEncoder = v4;
  }

  objc_autoreleasePoolPop(v3);
  return v4;
}

- (void)useResidencySet:(id)set
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!set || self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugCommandBuffer;
  [(objc_super *)v5 useResidencySet:set];
}

- (void)useResidencySets:(const void *)sets count:(unint64_t)count
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  _MTLMessageContextBegin_();
  if (self->_currentState == 1)
  {
    if (!count)
    {
      goto LABEL_9;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!count)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  do
  {
    if (!sets[v7])
    {
      _MTLMessageContextPush_();
    }

    ++v7;
  }

  while (count != v7);
LABEL_9:
  _MTLMessageContextEnd();
  v8.receiver = self;
  v8.super_class = MTL4DebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v8 useResidencySets:sets count:count];
}

- (void)pushDebugGroup:(id)group
{
  v6 = 0;
  memset(&v5[1], 0, 48);
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v5[0].receiver = self;
  v5[0].super_class = MTL4DebugCommandBuffer;
  [(objc_super *)v5 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v3[0].receiver = self;
  v3[0].super_class = MTL4DebugCommandBuffer;
  [(objc_super *)v3 popDebugGroup];
}

- (id)machineLearningCommandEncoder
{
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandBuffer *)self _resetRenderPassAttachmentTracking:0];
  self->_aggregatedEncoderMask |= 4uLL;
  v3 = objc_autoreleasePoolPush();
  v4 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v4)
  {
    v5 = [[MTL4DebugMachineLearningCommandEncoder alloc] initWithMLCommandEncoder:v4 commandBuffer:self];
    self->_currentEncoder = v5;
    objc_autoreleasePoolPop(v3);
    return v5;
  }

  else
  {
    objc_autoreleasePoolPop(v3);
    return 0;
  }
}

- (id)computeCommandEncoderWithSubstreamCount:(unsigned int)count
{
  v3 = *&count;
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_aggregatedEncoderMask |= 2uLL;
  v5 = objc_autoreleasePoolPush();
  baseObject = [-[MTLToolsObject baseObject](self baseObject];
  if (baseObject)
  {
    baseObject = [[MTL4DebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:baseObject commandBuffer:self];
    self->_currentEncoder = baseObject;
  }

  objc_autoreleasePoolPop(v5);
  return baseObject;
}

- (void)_resetRenderPassAttachmentTracking
{
  std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::clear(&self->_attachmentSet.__table_.__bucket_list_.__ptr_);
  v3 = 0;
  memset(v5, 0, sizeof(v5));
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple((v5 + v3));
    v3 += 56;
  }

  while (v3 != 448);
  memcpy(&self->_currentAttachments, v5, sizeof(self->_currentAttachments));
  v4 = 0;
  memset(v5, 0, sizeof(v5));
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple((v5 + v4));
    v4 += 56;
  }

  while (v4 != 448);
  memcpy(&self->_prevAttachments, v5, sizeof(self->_prevAttachments));
}

- (void)_clearSuspendResumeRenderPassInfo
{
  p_suspendResumeRenderPassInfo = &self->_suspendResumeRenderPassInfo;

  p_suspendResumeRenderPassInfo->resumingRenderPassDescriptor = 0;
  p_suspendResumeRenderPassInfo->suspendingRenderPassDescriptor = 0;
}

- (MTL4DebugRenderPassInfo)suspendResumeRenderPassInfo
{
  p_suspendResumeRenderPassInfo = &self->_suspendResumeRenderPassInfo;
  resumingRenderPassDescriptor = self->_suspendResumeRenderPassInfo.resumingRenderPassDescriptor;
  suspendingRenderPassDescriptor = p_suspendResumeRenderPassInfo->suspendingRenderPassDescriptor;
  result.suspendingRenderPassDescriptor = suspendingRenderPassDescriptor;
  result.resumingRenderPassDescriptor = resumingRenderPassDescriptor;
  return result;
}

- (void)writeTimestampIntoHeap:(id)heap atIndex:(unint64_t)index
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
    if (!heap)
    {
      goto LABEL_12;
    }
  }

  else if (!heap)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  if ([heap count] <= index)
  {
    [heap count];
LABEL_12:
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTL4DebugCommandBuffer;
  [(MTL4ToolsCommandBuffer *)&v7 writeTimestampIntoHeap:heap atIndex:index];
}

- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(id)buffer atOffset:(unint64_t)offset waitFence:(id)fence updateFence:(id)updateFence
{
  length = range.length;
  location = range.location;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
    if (!heap)
    {
      goto LABEL_21;
    }
  }

  else if (!heap)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && location + length <= [heap count])
  {
    if (buffer)
    {
      goto LABEL_8;
    }

LABEL_22:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

LABEL_21:
  _MTLMessageContextPush_();
  if (!buffer)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (offset + 8 * length > [buffer length])
  {
    goto LABEL_22;
  }

LABEL_9:
  if (fence && ([fence conformsToProtocol:&unk_284220438] & 1) == 0)
  {
    _MTLMessageContextPush_();
    if (!updateFence)
    {
      goto LABEL_14;
    }
  }

  else if (!updateFence)
  {
    goto LABEL_14;
  }

  if (([updateFence conformsToProtocol:&unk_284220438] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  _MTLMessageContextEnd();
  if (!v16)
  {
    v15.receiver = self;
    v15.super_class = MTL4DebugCommandBuffer;
    [(MTL4ToolsCommandBuffer *)&v15 resolveCounterHeap:heap withRange:location intoBuffer:length atOffset:buffer waitFence:offset updateFence:fence, updateFence];
  }
}

- (void)resolveCounterHeap:(id)heap withRange:(_NSRange)range intoBuffer:(MTL4BufferRange)buffer waitFence:(id)fence updateFence:(id)updateFence
{
  var1 = buffer.var1;
  var0 = buffer.var0;
  length = range.length;
  location = range.location;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
    if (!heap)
    {
      goto LABEL_21;
    }
  }

  else if (!heap)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && location + length <= [heap count])
  {
    if (var0)
    {
      goto LABEL_8;
    }

LABEL_22:
    _MTLMessageContextPush_();
    goto LABEL_9;
  }

LABEL_21:
  _MTLMessageContextPush_();
  if (!var0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (var1 < 8 * length)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (fence && ([fence conformsToProtocol:&unk_284220438] & 1) == 0)
  {
    _MTLMessageContextPush_();
    if (!updateFence)
    {
      goto LABEL_14;
    }
  }

  else if (!updateFence)
  {
    goto LABEL_14;
  }

  if (([updateFence conformsToProtocol:&unk_284220438] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

LABEL_14:
  _MTLMessageContextEnd();
  if (!v15)
  {
    v14.receiver = self;
    v14.super_class = MTL4DebugCommandBuffer;
    [(MTL4ToolsCommandBuffer *)&v14 resolveCounterHeap:heap withRange:location intoBuffer:length waitFence:var0 updateFence:var1, fence, updateFence];
  }
}

- (id)sampledRenderCommandEncoderWithDescriptor:(id)descriptor programInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  v14 = 0;
  memset(&v13[1], 0, 48);
  _MTLMessageContextBegin_();
  if (!descriptor)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  self->_aggregatedEncoderMask |= 1uLL;
  v9 = objc_autoreleasePoolPush();
  v13[0].receiver = self;
  v13[0].super_class = MTL4DebugCommandBuffer;
  v10 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v10)
  {
    v11 = [[MTL4DebugRenderCommandEncoder alloc] initWithRenderCommandEncoder:v10 commandBuffer:self descriptor:descriptor];
    self->_currentEncoder = v11;
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v11;
}

- (id)sampledComputeCommandEncoder:(id *)encoder capacity:(unint64_t)capacity
{
  _MTLMessageContextBegin_();
  if (self->_currentState != 1)
  {
    _MTLMessageContextPush_();
  }

  if (self->_currentEncoder)
  {
    _MTLMessageContextPush_();
  }

  if ((self->_aggregatedEncoderMask & 0x10) != 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTL4DebugCommandBuffer *)self _resetRenderPassAttachmentTracking:0];
  self->_aggregatedEncoderMask |= 2uLL;
  v7 = objc_autoreleasePoolPush();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (v8)
  {
    v8 = [[MTL4DebugComputeCommandEncoder alloc] initWithComputeCommandEncoder:v8 commandBuffer:self];
    self->_currentEncoder = v8;
  }

  objc_autoreleasePoolPop(v7);
  return v8;
}

- (BOOL)isAllocatorGenerationValid
{
  v3 = objc_autoreleasePoolPush();
  LOBYTE(self) = [objc_loadWeak(&self->_debugCommandAllocator) currentGeneration] == self->_allocatorGeneration;
  objc_autoreleasePoolPop(v3);
  return self;
}

- (id).cxx_construct
{
  self->_attachmentSet.__table_.__bucket_list_ = 0u;
  *&self->_attachmentSet.__table_.__first_node_.__next_ = 0u;
  self->_attachmentSet.__table_.__max_load_factor_ = 1.0;
  p_prevAttachments = &self->_prevAttachments;
  v4 = 448;
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple(p_prevAttachments->__elems_);
    p_prevAttachments = (v5 + 56);
    v4 -= 56;
  }

  while (v4);
  p_currentAttachments = &self->_currentAttachments;
  v7 = 448;
  do
  {
    AttachmentDescriptorSimple::AttachmentDescriptorSimple(p_currentAttachments->__elems_);
    p_currentAttachments = (v8 + 56);
    v7 -= 56;
  }

  while (v7);
  return self;
}

@end