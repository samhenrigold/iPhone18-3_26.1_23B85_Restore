@interface IOGPUMetalIOCommandBuffer
- (BOOL)hasFollowOnWork;
- (BOOL)validateNotificationCount;
- (IOGPUMetalIOCommandBuffer)initWithQueue:(id)queue resourceList:(id)list retained:(BOOL)retained;
- (id).cxx_construct;
- (void)addBarrier;
- (void)commit;
- (void)completeCommandCallbackBlocks;
- (void)dealloc;
- (void)didCompleteWithStatus:(int64_t)status;
- (void)enqueue;
- (void)getCommandBufferBytes:(unsigned int)bytes;
- (void)growKernelCommandBuffer:(unsigned int)buffer;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset;
- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1;
- (void)setLabel:(id)label;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)tryCancel;
- (void)validateNotificationCount;
- (void)waitForEvent:(id)event value:(unint64_t)value;
@end

@implementation IOGPUMetalIOCommandBuffer

- (IOGPUMetalIOCommandBuffer)initWithQueue:(id)queue resourceList:(id)list retained:(BOOL)retained
{
  retainedCopy = retained;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [IOGPUMetalIOCommandBuffer initWithQueue:resourceList:retained:];
  }

  v17.receiver = self;
  v17.super_class = IOGPUMetalIOCommandBuffer;
  v9 = [(_MTLIOCommandBuffer *)&v17 initWithQueue:queue resourceList:list retained:retainedCopy];
  if (v9)
  {
    v9->_device = [queue device];
    queueCopy = queue;
    v9->_queue = queueCopy;
    IOGPUIOCommandQueueCreateIOCommandBuffer(queueCopy->_ioCommandQueueRef, &v9->_commandBufferID, &v9->_globalTraceObjectID);
    if (v9->_commandBufferID && (Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(*(v9->_device + 96)), (v9->_ioKernelCommandShmem = Shmem) != 0) && (v9->_ioKernelCommandShmemStart = Shmem->_virtualAddress, v9->_ioKernelCommandShmemEnd = v9->_ioKernelCommandShmem->_virtualAddress + v9->_ioKernelCommandShmem->_shmemSize, v9->_ioKernelCommandShmemCurrent = v9->_ioKernelCommandShmem->_virtualAddress, v9->_commandListHeader = v9->_ioKernelCommandShmemStart, v12 = (v9->_ioKernelCommandShmemCurrent + 8), v9->_ioKernelCommandShmemCurrent = v12, LODWORD(v12) = v12 - LODWORD(v9->_ioKernelCommandShmemStart), commandListHeader = v9->_commandListHeader, commandListHeader->var0 = v12, commandListHeader->var1 = v12, v14 = dispatch_group_create(), (v9->_ioCompletionGroup = v14) != 0) && (v15 = objc_alloc_init(MEMORY[0x1E695DF70]), (v9->_stagingBuffers = v15) != 0))
    {
      if (*__globalGPUCommPage)
      {
        IOGPUDeviceTraceEvent(0, 8, 18, v9->_globalTraceObjectID, 0, 0, 0);
      }
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  ioCompletionGroup = self->_ioCompletionGroup;
  if (ioCompletionGroup)
  {
    dispatch_release(ioCompletionGroup);
    self->_ioCompletionGroup = 0;
  }

  self->_stagingBuffers = 0;
  gpuBlitEncoder = self->_gpuBlitEncoder;
  if (gpuBlitEncoder)
  {
    [(MTLBlitCommandEncoder *)gpuBlitEncoder endEncoding];

    self->_gpuBlitEncoder = 0;
  }

  gpuCommandBuffer = self->_gpuCommandBuffer;
  if (gpuCommandBuffer)
  {

    self->_gpuCommandBuffer = 0;
  }

  ioKernelCommandShmem = self->_ioKernelCommandShmem;
  if (ioKernelCommandShmem)
  {
    IOGPUMetalDeviceShmemRelease(ioKernelCommandShmem);
    self->_ioKernelCommandShmem = 0;
  }

  IOGPUIOCommandQueueDestroyIOCommandBuffer(self->_queue->_ioCommandQueueRef, self->_commandBufferID);
  self->_commandBufferID = 0;

  self->_queue = 0;
  self->_device = 0;
  v7.receiver = self;
  v7.super_class = IOGPUMetalIOCommandBuffer;
  [(_MTLIOCommandBuffer *)&v7 dealloc];
}

- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset
{
  v11 = [handle stagingBufferSize:size offset:offset];
  v12 = *MEMORY[0x1E6974318];
  v13 = *MEMORY[0x1E6974328];
  if (*(&self->super.super.super.isa + v13) >= v11)
  {
    v14 = *(&self->super.super.super.isa + v12);
  }

  else
  {
    v14 = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v11];
    if (!v14)
    {
      v21 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v11];
      v14 = v21;
      if (!v21 || [objc_msgSend(v21 "buffer")] < v11)
      {

        *(&self->super.super.super.isa + *MEMORY[0x1E6974350]) = 1;
        return;
      }

      MTLResourceListAddResource();
    }

    v15 = [objc_msgSend(v14 "buffer")];
    *(&self->super.super.super.isa + v13) = v15;
    if (v15 < v11)
    {
      [IOGPUMetalIOCommandBuffer loadBytes:size:sourceHandle:sourceHandleOffset:];
    }

    *(&self->super.super.super.isa + *MEMORY[0x1E6974320]) = 0;
    *(&self->super.super.super.isa + v12) = v14;
  }

  v16 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:56];
  *v16 = 0x3800000000;
  bzero(v16 + 1, 0x30uLL);
  *(v16 + 2) = [handle vnioID];
  if (v11)
  {
    v16[2] = [handle getHandleOffset:size offset:offset];
    v16[3] = v11;
    v17 = [objc_msgSend(v14 "buffer")];
    v18 = *MEMORY[0x1E6974320];
    v19 = *(&self->super.super.super.isa + v18) + v17;
    globalTraceObjectID = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
    v16[4] = v19;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke;
    v22[3] = &unk_1E8362E88;
    v22[4] = self;
    v22[5] = handle;
    v22[6] = globalTraceObjectID;
    v22[7] = bytes;
    v22[8] = size;
    v22[9] = offset;
    v22[10] = v19;
    v22[11] = v11;
    v16[6] = _Block_copy(v22);
    std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v16 + 6);
    *(&self->super.super.super.isa + v18) = (*(&self->super.super.super.isa + v18) + v11);
    *(&self->super.super.super.isa + v13) = (*(&self->super.super.super.isa + v13) - v11);
    atomic_fetch_add(&self->_notificationCount, 1u);
  }

  else
  {
    v16[2] = offset;
    v16[3] = size;
    v16[4] = bytes;
  }

  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    MTLResourceListAddResource();
  }
}

void __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v17 = v2;
    v18 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke_2;
      v10[3] = &unk_1E8362E60;
      v11 = *(a1 + 32);
      v8 = *(a1 + 56);
      v12 = *(a1 + 48);
      v13 = v8;
      v14 = *(a1 + 64);
      v9 = *(a1 + 88);
      v15 = *(a1 + 80);
      v16 = v9;
      dispatch_group_async(v6, v7, v10);
    }
  }
}

void *__76__IOGPUMetalIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset___block_invoke_2(uint64_t a1)
{
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEventStart(0, 8, 22, *(a1 + 48), *(*(a1 + 32) + 400), 0, 0);
  }

  result = [*(a1 + 40) decompress:*(a1 + 56) size:*(a1 + 64) offset:*(a1 + 72) stagingBuffer:*(a1 + 80) stagingBufferSize:*(a1 + 88)];
  if (result == -1 || result < *(a1 + 64))
  {
    *(*(a1 + 32) + *MEMORY[0x1E6974350]) = 2;
  }

  if (*__globalGPUCommPage)
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 32) + 400);

    return IOGPUDeviceTraceEventEnd(0, 8, 22, v3, v4, 0, 0);
  }

  return result;
}

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset
{
  bufferCopy = buffer;
  storageMode = [buffer storageMode];
  if (storageMode == 2)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 0;
  }

  v13 = [handle stagingBufferSize:size offset:handleOffset];
  v14 = v13;
  v15 = sizeCopy + v13;
  v16 = *MEMORY[0x1E6974318];
  v40 = *MEMORY[0x1E6974328];
  if (*(&self->super.super.super.isa + v40) >= (sizeCopy + v13))
  {
    v38 = sizeCopy + v13;
    v17 = *(&self->super.super.super.isa + v16);
  }

  else
  {
    v17 = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v15];
    if (!v17)
    {
      v31 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v15];
      v17 = v31;
      if (!v31 || [objc_msgSend(v31 "buffer")] < v15)
      {

        *(&self->super.super.super.isa + *MEMORY[0x1E6974350]) = 1;
        return;
      }

      MTLResourceListAddResource();
    }

    v18 = [objc_msgSend(v17 "buffer")];
    *(&self->super.super.super.isa + v40) = v18;
    v38 = v15;
    if (v18 < v15)
    {
      [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
    }

    *(&self->super.super.super.isa + *MEMORY[0x1E6974320]) = 0;
    *(&self->super.super.super.isa + v16) = v17;
  }

  v19 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:56];
  *v19 = 0x3800000000;
  bzero(v19 + 1, 0x30uLL);
  *(v19 + 2) = [handle vnioID];
  handleCopy = handle;
  offsetCopy3 = offset;
  if (v14)
  {
    v37 = bufferCopy;
    v19[2] = [handle getHandleOffset:size offset:handleOffset];
    v19[3] = v14;
    v21 = [objc_msgSend(v17 "buffer")];
    v22 = *MEMORY[0x1E6974320];
    v23 = *(&self->super.super.super.isa + v22) + sizeCopy + v21;
    if (storageMode == 2)
    {
      contents = [objc_msgSend(v17 "buffer")];
      offsetCopy2 = *(&self->super.super.super.isa + v22);
    }

    else
    {
      contents = [v37 contents];
      offsetCopy2 = offset;
    }

    v28 = contents + offsetCopy2;
    globalTraceObjectID = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
    globalTraceObjectID2 = [handleCopy globalTraceObjectID];
    v19[4] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke;
    aBlock[3] = &unk_1E8362ED8;
    aBlock[6] = globalTraceObjectID;
    aBlock[7] = globalTraceObjectID2;
    aBlock[4] = self;
    aBlock[5] = handleCopy;
    aBlock[8] = v28;
    aBlock[9] = size;
    aBlock[10] = handleOffset;
    aBlock[11] = v23;
    aBlock[12] = v14;
    v19[6] = _Block_copy(aBlock);
    std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v19 + 6);
    atomic_fetch_add(&self->_notificationCount, 1u);
    bufferCopy = v37;
    offsetCopy3 = offset;
  }

  else
  {
    v19[2] = handleOffset;
    v19[3] = size;
    if (storageMode == 2)
    {
      v26 = [objc_msgSend(v17 "buffer")];
      v27 = *(&self->super.super.super.isa + *MEMORY[0x1E6974320]) + v26;
    }

    else
    {
      v27 = ([bufferCopy contents] + offset);
    }

    v19[4] = v27;
  }

  if (storageMode == 2)
  {
    if (!self->_hasFollowOnGPUWork)
    {
      commandBuffer = [(MTLCommandQueue *)[(_MTLIOCommandQueue *)self->_queue gpuQueue] commandBuffer];
      self->_gpuCommandBuffer = commandBuffer;
      if (!commandBuffer)
      {
        [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
      }

      blitCommandEncoder = [(MTLCommandBuffer *)commandBuffer blitCommandEncoder];
      self->_gpuBlitEncoder = blitCommandEncoder;
      if (!blitCommandEncoder)
      {
        [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
      }

      self->_hasFollowOnGPUWork = 1;
    }

    gpuBlitEncoder = self->_gpuBlitEncoder;
    if (!gpuBlitEncoder)
    {
      gpuBlitEncoder = [(MTLCommandBuffer *)self->_gpuCommandBuffer blitCommandEncoder];
      self->_gpuBlitEncoder = gpuBlitEncoder;
      if (!gpuBlitEncoder)
      {
        [IOGPUMetalIOCommandBuffer loadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
      }
    }

    buffer = [v17 buffer];
    v32 = *MEMORY[0x1E6974320];
    [(MTLBlitCommandEncoder *)gpuBlitEncoder copyFromBuffer:buffer sourceOffset:*(&self->super.super.super.isa + v32) toBuffer:bufferCopy destinationOffset:offsetCopy3 size:size];
  }

  else
  {
    v32 = *MEMORY[0x1E6974320];
  }

  *(&self->super.super.super.isa + v32) = (*(&self->super.super.super.isa + v32) + v38);
  *(&self->super.super.super.isa + v40) = (*(&self->super.super.super.isa + v40) - v38);
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    MTLResourceListAddResource();
    MTLResourceListAddResource();
  }
}

void __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v17 = v2;
    v18 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke_2;
      block[3] = &unk_1E8362EB0;
      v8 = *(a1 + 32);
      v12 = *(a1 + 48);
      v11 = v8;
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v9 = *(a1 + 96);
      v15 = *(a1 + 88);
      v16 = v9;
      dispatch_group_async(v6, v7, block);
    }
  }
}

void *__84__IOGPUMetalIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset___block_invoke_2(uint64_t a1)
{
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEventStart(0, 8, 22, *(a1 + 48), *(*(a1 + 32) + 400), *(a1 + 56), 0);
  }

  result = [*(a1 + 40) decompress:*(a1 + 64) size:*(a1 + 72) offset:*(a1 + 80) stagingBuffer:*(a1 + 88) stagingBufferSize:*(a1 + 96)];
  if (result == -1 || result < *(a1 + 72))
  {
    *(*(a1 + 32) + *MEMORY[0x1E6974350]) = 2;
  }

  if (*__globalGPUCommPage)
  {
    v3 = *(*(a1 + 32) + 400);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return IOGPUDeviceTraceEventEnd(0, 8, 22, v4, v3, v5, 0);
  }

  return result;
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1
{
  v71 = 0;
  v72[0] = 0;
  v69 = *&origin->var0;
  v70 = 0;
  v67 = *&size->var0;
  v68 = 1;
  MTLCalculateSourceBufferSizeAndAlignment();
  v69 = 0uLL;
  v70 = 0;
  globalTraceObjectID = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
  globalTraceObjectID2 = [handle globalTraceObjectID];
  if (size->var2)
  {
    for (i = 0; i < size->var2; ++i)
    {
      v14 = [handle stagingBufferSize:v72[0] offset:offset];
      v15 = v71;
      v16 = (v72[0] + v71 + v14);
      v17 = *MEMORY[0x1E6974318];
      v18 = *MEMORY[0x1E6974328];
      v58 = v16;
      v56 = v18;
      if (*(&self->super.super.super.isa + v18) >= v16)
      {
        v19 = *(&self->super.super.super.isa + v17);
        v22 = *MEMORY[0x1E6974320];
      }

      else
      {
        v19 = [(_MTLIOCommandBuffer *)self getReusableScratchBuffer:v16];
        if (!v19)
        {
          v20 = [(MTLIOScratchBufferAllocator *)[(_MTLIOCommandQueue *)self->_queue scratchBufferAllocator] newScratchBufferWithMinimumSize:v16];
          v19 = v20;
          if (!v20 || [objc_msgSend(v20 "buffer")] < v16)
          {

            *(&self->super.super.super.isa + *MEMORY[0x1E6974350]) = 1;
            goto LABEL_41;
          }

          MTLResourceListAddResource();
        }

        v21 = [objc_msgSend(v19 "buffer")];
        *(&self->super.super.super.isa + v18) = v21;
        if (v21 < v16)
        {
          __assert_rtn("[IOGPUMetalIOCommandBuffer loadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:]", "IOGPUMetalIOCommandBuffer.mm", 534, "_currentStagingBufferRemainingBytes >= paddedStagingBufferSize");
        }

        v22 = *MEMORY[0x1E6974320];
        *(&self->super.super.super.isa + v22) = 0;
        *(&self->super.super.super.isa + v17) = v19;
        v15 = v71;
      }

      v23 = *(&self->super.super.super.isa + v22);
      v24 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:56];
      *v24 = 0x3800000000;
      bzero(v24 + 1, 0x30uLL);
      v25 = (v23 + v15 - 1) / v15 * v15;
      *(v24 + 2) = [handle vnioID];
      if (v14)
      {
        v24[2] = [handle getHandleOffset:v72[0] offset:offset];
        v24[3] = v14;
        v26 = [objc_msgSend(v19 "buffer")];
        v27 = v72[0];
        v28 = [objc_msgSend(v19 "buffer")];
        v29 = v26 + v25 + v27;
        v30 = v28 + v25;
        v24[4] = v29;
        if (size->var2 < 2)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke;
          aBlock[3] = &unk_1E8362ED8;
          aBlock[6] = globalTraceObjectID;
          aBlock[7] = globalTraceObjectID2;
          aBlock[4] = self;
          aBlock[5] = handle;
          aBlock[8] = v28 + v25;
          aBlock[9] = v72[0];
          aBlock[10] = offset;
          aBlock[11] = v29;
          aBlock[12] = v14;
          v24[6] = _Block_copy(aBlock);
          std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v24 + 6);
          atomic_fetch_add(&self->_notificationCount, 1u);
        }

        else
        {
          v31 = v72[0];
          v32 = *(&v69 + 1);
          if (*(&v69 + 1) >= v70)
          {
            v49 = v72[0];
            v34 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v69 + 1) - v69) >> 3);
            v35 = v34 + 1;
            if (v34 + 1 > 0x666666666666666)
            {
              std::vector<NSObject *>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * ((v70 - v69) >> 3) > v35)
            {
              v35 = 0x999999999999999ALL * ((v70 - v69) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v70 - v69) >> 3) >= 0x333333333333333)
            {
              v36 = 0x666666666666666;
            }

            else
            {
              v36 = v35;
            }

            if (v36)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<IOGPUIODecompressionArgs>>(&v69, v36);
            }

            v37 = (8 * ((*(&v69 + 1) - v69) >> 3));
            *v37 = v30;
            v37[1] = v49;
            v37[2] = offset;
            v37[3] = v29;
            v37[4] = v14;
            v33 = 40 * v34 + 40;
            v38 = v37 - (*(&v69 + 1) - v69);
            memcpy(v38, v69, *(&v69 + 1) - v69);
            v39 = v69;
            *&v69 = v38;
            *(&v69 + 1) = v33;
            v70 = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            **(&v69 + 1) = v30;
            v32[1] = v31;
            v32[2] = offset;
            v32[3] = v29;
            v33 = (v32 + 5);
            v32[4] = v14;
          }

          *(&v69 + 1) = v33;
        }
      }

      else
      {
        v24[2] = offset;
        v24[3] = v58;
        v24[4] = *(&self->super.super.super.isa + v22) + [objc_msgSend(v19 "buffer")];
      }

      if (!self->_hasFollowOnGPUWork)
      {
        commandBuffer = [(MTLCommandQueue *)[(_MTLIOCommandQueue *)self->_queue gpuQueue] commandBuffer];
        self->_gpuCommandBuffer = commandBuffer;
        if (!commandBuffer)
        {
          v47 = 627;
          v48 = "_gpuCommandBuffer";
          goto LABEL_49;
        }

        blitCommandEncoder = [(MTLCommandBuffer *)commandBuffer blitCommandEncoder];
        self->_gpuBlitEncoder = blitCommandEncoder;
        if (!blitCommandEncoder)
        {
          v47 = 629;
LABEL_48:
          v48 = "_gpuBlitEncoder";
LABEL_49:
          __assert_rtn("[IOGPUMetalIOCommandBuffer loadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:]", "IOGPUMetalIOCommandBuffer.mm", v47, v48);
        }

        self->_hasFollowOnGPUWork = 1;
      }

      gpuBlitEncoder = self->_gpuBlitEncoder;
      if (!gpuBlitEncoder)
      {
        gpuBlitEncoder = [(MTLCommandBuffer *)self->_gpuCommandBuffer blitCommandEncoder];
        self->_gpuBlitEncoder = gpuBlitEncoder;
        if (!gpuBlitEncoder)
        {
          v47 = 637;
          goto LABEL_48;
        }
      }

      buffer = [v19 buffer];
      v67 = *&size->var0;
      v68 = 1;
      v44 = i + origin->var2;
      v64 = *&origin->var0;
      v65 = v44;
      [(MTLBlitCommandEncoder *)gpuBlitEncoder copyFromBuffer:buffer sourceOffset:v25 sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v67 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v64];
      *(&self->super.super.super.isa + v22) = (*(&self->super.super.super.isa + v22) + v58);
      *(&self->super.super.super.isa + v56) = (*(&self->super.super.super.isa + v56) - v58);
      offset += image;
    }
  }

  if (*(&v69 + 1) != v69)
  {
    v45 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
    *v45 = 0x1800000001;
    v46 = v45 + 1;
    bzero(v45 + 1, 0x10uLL);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3321888768;
    v60[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_3;
    v60[3] = &unk_1F49BFE10;
    v60[4] = self;
    v60[6] = globalTraceObjectID;
    v60[7] = globalTraceObjectID2;
    __p = 0;
    v62 = 0;
    v63 = 0;
    std::vector<IOGPUIODecompressionArgs>::__init_with_size[abi:ne200100]<IOGPUIODecompressionArgs*,IOGPUIODecompressionArgs*>(&__p, v69, *(&v69 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v69 + 1) - v69) >> 3));
    v60[5] = handle;
    *v46 = _Block_copy(v60);
    std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v46);
    atomic_fetch_add(&self->_notificationCount, 1u);
    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }
  }

  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {
    MTLResourceListAddResource();
    MTLResourceListAddResource();
  }

LABEL_41:
  if (v69)
  {
    *(&v69 + 1) = v69;
    operator delete(v69);
  }
}

void __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v17 = v2;
    v18 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_2;
      block[3] = &unk_1E8362EB0;
      v8 = *(a1 + 32);
      v12 = *(a1 + 48);
      v11 = v8;
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v9 = *(a1 + 96);
      v15 = *(a1 + 88);
      v16 = v9;
      dispatch_group_async(v6, v7, block);
    }
  }
}

void *__146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_2(uint64_t a1)
{
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEventStart(0, 8, 22, *(a1 + 48), *(*(a1 + 32) + 400), *(a1 + 56), 0);
  }

  result = [*(a1 + 40) decompress:*(a1 + 64) size:*(a1 + 72) offset:*(a1 + 80) stagingBuffer:*(a1 + 88) stagingBufferSize:*(a1 + 96)];
  if (result == -1 || result < *(a1 + 72))
  {
    *(*(a1 + 32) + *MEMORY[0x1E6974350]) = 2;
  }

  if (*__globalGPUCommPage)
  {
    v3 = *(*(a1 + 32) + 400);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return IOGPUDeviceTraceEventEnd(0, 8, 22, v4, v3, v5, 0);
  }

  return result;
}

void __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_3(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v13 = v2;
    v14 = v3;
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      *(v5 + *MEMORY[0x1E6974350]) = 1;
    }

    else
    {
      v6 = *(v5 + 376);
      v7 = [*(v5 + 304) getDecompressionQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = __146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_4;
      block[3] = &unk_1F49BFDD8;
      block[4] = *(a1 + 32);
      v9 = *(a1 + 48);
      v11 = 0;
      v12 = 0;
      __p = 0;
      std::vector<IOGPUIODecompressionArgs>::__init_with_size[abi:ne200100]<IOGPUIODecompressionArgs*,IOGPUIODecompressionArgs*>(&__p, *(a1 + 64), *(a1 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 72) - *(a1 + 64)) >> 3));
      block[5] = *(a1 + 40);
      dispatch_group_async(v6, v7, block);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }
    }
  }
}

void *__146__IOGPUMetalIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset___block_invoke_4(void *result)
{
  v1 = result;
  if (*__globalGPUCommPage)
  {
    result = IOGPUDeviceTraceEventStart(0, 8, 22, result[6], *(result[4] + 400), result[7], 0);
  }

  v2 = -858993459 * ((v1[9] - v1[8]) >> 3);
  if (v2)
  {
    v3 = 0;
    v4 = 40 * v2;
    while (1)
    {
      v5 = (v1[8] + v3);
      v6 = v5[1];
      result = [v1[5] decompress:*v5 size:v6 offset:v5[2] stagingBuffer:v5[3] stagingBufferSize:v5[4]];
      if (result == -1 || result < v6)
      {
        break;
      }

      v3 += 40;
      if (v4 == v3)
      {
        goto LABEL_11;
      }
    }

    *(v1[4] + *MEMORY[0x1E6974350]) = 2;
  }

LABEL_11:
  if (*__globalGPUCommPage)
  {
    v8 = *(v1[4] + 400);
    v9 = v1[6];
    v10 = v1[7];

    return IOGPUDeviceTraceEventEnd(0, 8, 22, v9, v8, v10, 0);
  }

  return result;
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1
{
  v12 = *size;
  v11 = *origin;
  [(IOGPUMetalIOCommandBuffer *)self loadTexture:texture slice:slice level:level size:&v12 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v11 sourceHandle:handle sourceHandleOffset:offset];
}

- (void)addBarrier
{
  v3 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
  *v3 = 0x1800000001;
  bzero(v3 + 8, 0x10uLL);
  if (self->_hasFollowOnGPUWork)
  {
    globalTraceObjectID = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
    globalTraceObjectID2 = [(MTLCommandBuffer *)self->_gpuCommandBuffer globalTraceObjectID];
    gpuBlitEncoder = self->_gpuBlitEncoder;
    if (gpuBlitEncoder)
    {
      [(MTLBlitCommandEncoder *)gpuBlitEncoder endEncoding];

      self->_gpuBlitEncoder = 0;
    }

    gpuCommandBuffer = self->_gpuCommandBuffer;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke;
    v15[3] = &unk_1E8362F00;
    v15[4] = self;
    [(MTLCommandBuffer *)gpuCommandBuffer addCompletedHandler:v15];
    v8 = self->_gpuCommandBuffer;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2;
    aBlock[3] = &unk_1E8362F50;
    aBlock[4] = self;
    aBlock[5] = v8;
    aBlock[6] = globalTraceObjectID;
    aBlock[7] = globalTraceObjectID2;
    *(v3 + 1) = _Block_copy(aBlock);
    v3[16] = 1;
    atomic_fetch_add(&self->_notificationCount, 1u);

    self->_gpuCommandBuffer = 0;
    self->_hasFollowOnGPUWork = 0;
  }

  else
  {
    lastBarrierNotificationCount = self->_lastBarrierNotificationCount;
    p_notificationCount = &self->_notificationCount;
    v11 = atomic_load(&self->_notificationCount);
    if (lastBarrierNotificationCount != v11)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_4;
      v13[3] = &unk_1E8362F78;
      v13[4] = self;
      *(v3 + 1) = _Block_copy(v13);
      v3[16] = 1;
      atomic_fetch_add(p_notificationCount, 1u);
      v12 = atomic_load(p_notificationCount);
      self->_lastBarrierNotificationCount = v12;
    }
  }

  std::vector<IOGPUIOCommandQueueCommandBufferCallbackBlock>::push_back[abi:ne200100](&self->_commandCallbackBlocks, v3 + 1);
  [(_MTLIOCommandBuffer *)self reuseActiveScratchBuffers];
}

uint64_t __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if ([a2 status] == 4)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return [v2 barrierComplete:v3];
}

void __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    v13 = v2;
    v14 = v3;
    v6 = (a1 + 32);
    v5 = *(a1 + 32);
    if (*(v5 + 410))
    {
      __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2_cold_1(v5, v6);
    }

    else
    {
      v7 = *(v5 + 376);
      v8 = [*(v5 + 304) getDecompressionQueue];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_3;
      v10[3] = &unk_1E8362F28;
      v9 = *(a1 + 48);
      v11 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      v12 = v9;
      dispatch_group_async(v7, v8, v10);
    }
  }
}

void *__39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) commit];
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEvent(0, 8, 23, *(a1 + 48), *(*(a1 + 40) + 400), *(a1 + 56), 0);
  }

  result = [*(a1 + 32) waitUntilCompleted];
  if (*__globalGPUCommPage)
  {
    v3 = *(*(a1 + 40) + 400);

    return IOGPUDeviceTraceEvent(0, 8, 24, v3, 0, 0, 0);
  }

  return result;
}

void __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_4(uint64_t a1, int a2)
{
  if (a2 != 4)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = *(a1 + 32);
    v6 = *(v5 + 376);
    v7 = [*(v5 + 304) getDecompressionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_5;
    block[3] = &unk_1E8362AB0;
    block[4] = *(a1 + 32);
    dispatch_group_async(v6, v7, block);
  }
}

void *__39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_5(uint64_t a1)
{
  result = [*(a1 + 32) barrierComplete:3];
  if (*__globalGPUCommPage)
  {
    v3 = *(*(a1 + 32) + 400);

    return IOGPUDeviceTraceEvent(0, 8, 24, v3, 0, 0, 0);
  }

  return result;
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  v7 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
  bzero(v7 + 1, 0x10uLL);
  *(v7 + 2) = [event eventPort];
  v7[2] = value;
  *v7 = 0x1800000003;
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {

    MTLResourceListAddResource();
  }
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  [(IOGPUMetalIOCommandBuffer *)self addBarrier];
  v7 = [(IOGPUMetalIOCommandBuffer *)self getCommandBufferBytes:24];
  bzero(v7 + 1, 0x10uLL);
  *(v7 + 2) = [event eventPort];
  v7[2] = value;
  *v7 = 0x1800000002;
  if (*(&self->super.super.super.isa + *MEMORY[0x1E6974348]) == 1)
  {

    MTLResourceListAddResource();
  }
}

- (void)enqueue
{
  v2 = *MEMORY[0x1E6974330];
  if ((*(&self->super.super.super.isa + v2) & 1) == 0)
  {
    *(&self->super.super.super.isa + v2) = 1;
    [(IOGPUMetalIOCommandQueue *)self->_queue enqueueCommandBuffer:self];
  }
}

- (void)commit
{
  if (self->_committed)
  {
    [IOGPUMetalIOCommandBuffer commit];
  }

  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEvent(0, 8, 19, self->_globalTraceObjectID, 0, 0, 0);
  }

  [(_MTLIOCommandBuffer *)self clearScratchBufferLists];
  [(IOGPUMetalIOCommandBuffer *)self enqueue];
  self->_committed = 1;
  queue = self->_queue;

  [(IOGPUMetalIOCommandQueue *)queue commitCommandBuffer:self];
}

- (void)didCompleteWithStatus:(int64_t)status
{
  globalTraceObjectID = [(IOGPUMetalIOCommandQueue *)self->_queue globalTraceObjectID];
  globalTraceObjectID2 = [(MTLCommandBuffer *)self->_gpuCommandBuffer globalTraceObjectID];
  dispatch_group_wait(self->_ioCompletionGroup, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *MEMORY[0x1E6974350];
  if (!*(&self->super.super.super.isa + v7))
  {
    *(&self->super.super.super.isa + v7) = status;
  }

  if (self->_hasFollowOnGPUWork)
  {
    if (self->_tryCancel)
    {
      *(&self->super.super.super.isa + v7) = 1;
    }

    if (![(IOGPUMetalIOCommandBuffer *)self hasFollowOnWork])
    {
      [IOGPUMetalIOCommandBuffer didCompleteWithStatus:];
    }

    if (*(&self->super.super.super.isa + v7) == 3)
    {
      gpuBlitEncoder = self->_gpuBlitEncoder;
      if (gpuBlitEncoder)
      {
        [(MTLBlitCommandEncoder *)gpuBlitEncoder endEncoding];

        self->_gpuBlitEncoder = 0;
      }

      gpuCommandBuffer = self->_gpuCommandBuffer;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __51__IOGPUMetalIOCommandBuffer_didCompleteWithStatus___block_invoke;
      v20[3] = &unk_1E8362FA0;
      v20[4] = self;
      v20[5] = globalTraceObjectID;
      v20[6] = globalTraceObjectID2;
      [(MTLCommandBuffer *)gpuCommandBuffer addCompletedHandler:v20];
      [(MTLCommandBuffer *)self->_gpuCommandBuffer commit];
      if (*__globalGPUCommPage)
      {
        globalTraceObjectID = self->_globalTraceObjectID;
        v11 = 23;
        v12 = globalTraceObjectID;
        v13 = globalTraceObjectID2;
LABEL_17:
        v16 = 0;
LABEL_20:
        IOGPUDeviceTraceEvent(0, 8, v11, v12, globalTraceObjectID, v13, v16);
      }
    }

    else
    {
      [(IOGPUMetalIOCommandQueue *)self->_queue commandBufferComplete];
      v17 = *(&self->super.super.super.isa + v7);
      v19.receiver = self;
      v19.super_class = IOGPUMetalIOCommandBuffer;
      [(_MTLIOCommandBuffer *)&v19 didCompleteWithStatus:v17];
      if (*__globalGPUCommPage)
      {
        globalTraceObjectID = self->_globalTraceObjectID;
        v13 = *(&self->super.super.super.isa + v7);
        v11 = 21;
        v12 = globalTraceObjectID;
        v16 = globalTraceObjectID2;
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (atomic_load(&self->_notificationCount))
    {
      if (![(IOGPUMetalIOCommandBuffer *)self hasFollowOnWork])
      {
        [IOGPUMetalIOCommandBuffer didCompleteWithStatus:];
      }

      [(IOGPUMetalIOCommandQueue *)self->_queue commandBufferComplete];
    }

    v15 = *(&self->super.super.super.isa + v7);
    v18.receiver = self;
    v18.super_class = IOGPUMetalIOCommandBuffer;
    [(_MTLIOCommandBuffer *)&v18 didCompleteWithStatus:v15];
    if (*__globalGPUCommPage)
    {
      globalTraceObjectID = self->_globalTraceObjectID;
      v13 = *(&self->super.super.super.isa + v7);
      v11 = 21;
      v12 = globalTraceObjectID;
      goto LABEL_17;
    }
  }

  self->_stagingBuffers = 0;
}

id __51__IOGPUMetalIOCommandBuffer_didCompleteWithStatus___block_invoke(uint64_t a1, void *a2)
{
  [*(*(a1 + 32) + 304) commandBufferComplete];
  if ([a2 status] == 4)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v6.receiver = *(a1 + 32);
  v6.super_class = IOGPUMetalIOCommandBuffer;
  result = objc_msgSendSuper2(&v6, sel_didCompleteWithStatus_, v4);
  if (*__globalGPUCommPage)
  {
    return IOGPUDeviceTraceEvent(0, 8, 21, *(a1 + 40), *(*(a1 + 32) + 400), v4, *(a1 + 48));
  }

  return result;
}

- (void)tryCancel
{
  if (!self->_tryCancel)
  {
    self->_tryCancel = 1;
    IOGPUIOCommandQueueTryCancelIOCommandBuffer(self->_queue->_ioCommandQueueRef, self->_commandBufferID);
  }
}

- (void)growKernelCommandBuffer:(unsigned int)buffer
{
  ioKernelCommandShmem = self->_ioKernelCommandShmem;
  if (!ioKernelCommandShmem)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  ioKernelCommandShmemStart = self->_ioKernelCommandShmemStart;
  if (!ioKernelCommandShmemStart || (ioKernelCommandShmemCurrent = self->_ioKernelCommandShmemCurrent) == 0 || (ioKernelCommandShmemEnd = self->_ioKernelCommandShmemEnd) == 0)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  if (ioKernelCommandShmemEnd < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  v8 = ioKernelCommandShmemCurrent - ioKernelCommandShmemStart;
  if (ioKernelCommandShmemCurrent < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  v9 = buffer + ioKernelCommandShmemEnd - ioKernelCommandShmemStart + 8;
  pool = ioKernelCommandShmem->_priv.pool;
  v11 = *(pool + 48);
  while (v11 < v9)
  {
    if (v11 >= 0x200000)
    {
      v11 += 0x100000;
    }

    else
    {
      v11 *= 2;
    }
  }

  [(IOGPUMetalDeviceShmemPool *)ioKernelCommandShmem->_priv.pool setShmemSize:?];
  Shmem = IOGPUMetalDeviceShmemPoolCreateShmem(pool);
  self->_ioKernelCommandShmem = Shmem;
  if (!Shmem)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:?];
    }

    abort();
  }

  shmemSize = Shmem->_shmemSize;
  virtualAddress = Shmem->_virtualAddress;
  self->_ioKernelCommandShmemStart = virtualAddress;
  if (shmemSize < v9)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  self->_ioKernelCommandShmemEnd = &virtualAddress[shmemSize];
  v15 = ioKernelCommandShmem->_virtualAddress;
  if (!v15)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  if (shmemSize <= v8)
  {
    [IOGPUMetalIOCommandBuffer growKernelCommandBuffer:];
  }

  memcpy(self->_ioKernelCommandShmemStart, v15, v8);
  IOGPUMetalDeviceShmemRelease(ioKernelCommandShmem);
  self->_ioKernelCommandShmemCurrent = &self->_ioKernelCommandShmemStart[v8];
  self->_commandListHeader = self->_ioKernelCommandShmemStart;
}

- (void)getCommandBufferBytes:(unsigned int)bytes
{
  if (bytes <= 7)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  if (!self->_ioKernelCommandShmem)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  ioKernelCommandShmemStart = self->_ioKernelCommandShmemStart;
  if (!ioKernelCommandShmemStart || (result = self->_ioKernelCommandShmemCurrent) == 0 || (ioKernelCommandShmemEnd = self->_ioKernelCommandShmemEnd) == 0)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  if (ioKernelCommandShmemEnd < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  if (result < ioKernelCommandShmemStart)
  {
    [IOGPUMetalIOCommandBuffer getCommandBufferBytes:];
  }

  bytesCopy = bytes;
  if (ioKernelCommandShmemEnd - result < bytes)
  {
    [(IOGPUMetalIOCommandBuffer *)self growKernelCommandBuffer:?];
    result = self->_ioKernelCommandShmemCurrent;
  }

  self->_ioKernelCommandShmemCurrent = result + bytesCopy;
  self->_commandListHeader->var1 = result + bytesCopy - LODWORD(self->_ioKernelCommandShmemStart);
  return result;
}

- (void)setLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalIOCommandBuffer;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [(MTLDevice *)self->_device deviceRef];
    v6 = *MEMORY[0x1E6974338];
    *(&self->super.super.super.isa + v6) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, self->_globalTraceObjectID, *(&self->super.super.super.isa + v6), [label cStringUsingEncoding:1]);
  }
}

- (BOOL)hasFollowOnWork
{
  if (self->_hasFollowOnGPUWork)
  {
    return 1;
  }

  v3 = atomic_load(&self->_notificationCount);
  return v3 != 0;
}

- (BOOL)validateNotificationCount
{
  p_notificationCount = &self->_notificationCount;
  v3 = atomic_load(&self->_notificationCount);
  if (v3 >= 0x2000)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(IOGPUMetalIOCommandBuffer *)p_notificationCount validateNotificationCount];
    }

    completionQueueDispatch = self->_queue->_completionQueueDispatch;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__IOGPUMetalIOCommandBuffer_validateNotificationCount__block_invoke;
    block[3] = &unk_1E8362AB0;
    block[4] = self;
    dispatch_async(completionQueueDispatch, block);
  }

  return v3 < 0x2000;
}

id __54__IOGPUMetalIOCommandBuffer_validateNotificationCount__block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeCommandCallbackBlocks];
  v3.receiver = *(a1 + 32);
  v3.super_class = IOGPUMetalIOCommandBuffer;
  return objc_msgSendSuper2(&v3, sel_didCompleteWithStatus_, 2);
}

- (void)completeCommandCallbackBlocks
{
  p_commandCallbackBlocks = &self->_commandCallbackBlocks;
  v3 = self[1].super.super.super.isa - self->_commandCallbackBlocks.__begin_;
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v4 = 0;
    v5 = (v3 >> 3);
    do
    {
      v6 = *(p_commandCallbackBlocks->__begin_ + v4);
      v6[2](v6, 4);
      _Block_release(v6);
      ++v4;
    }

    while (v5 != v4);
  }
}

- (id).cxx_construct
{
  *(self + 53) = 0;
  *(self + 54) = 0;
  *(self + 52) = 0;
  return self;
}

void *__39__IOGPUMetalIOCommandBuffer_addBarrier__block_invoke_2_cold_1(uint64_t a1, id *a2)
{
  v3 = *MEMORY[0x1E6974350];
  *(a1 + v3) = 1;
  result = [*a2 barrierComplete:*(*a2 + v3)];
  if (*__globalGPUCommPage)
  {
    v5 = *(*a2 + 50);

    return IOGPUDeviceTraceEvent(0, 8, 24, v5, 0, 0, 0);
  }

  return result;
}

- (void)growKernelCommandBuffer:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 392);
  v2 = 136315394;
  v3 = "[IOGPUMetalIOCommandBuffer growKernelCommandBuffer:]";
  v4 = 1024;
  v5 = v1;
  _os_log_fault_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: Failed to Allocate Shmem to grow IOCommandBuffer [commandBufferID: %u]", &v2, 0x12u);
}

- (void)validateNotificationCount
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = atomic_load(self);
  v2[0] = 67109376;
  v2[1] = v1;
  v3 = 1024;
  v4 = 0x2000;
  _os_log_error_impl(&dword_1CA097000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IOCommandBuffer NotificationCount(%u) >= IOQueue MaxNotificationDepth(%d)", v2, 0xEu);
}

@end