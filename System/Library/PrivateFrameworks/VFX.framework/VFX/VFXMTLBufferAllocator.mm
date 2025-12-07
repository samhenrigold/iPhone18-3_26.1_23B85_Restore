@interface VFXMTLBufferAllocator
- (VFXMTLBufferAllocator)initWithDevice:(__CFXGPUDevice *)device fixedSizeElement:(unint64_t)element buffersize:(unint64_t)buffersize name:(id)name;
- (id)_newSubBuffer;
- (id)newSubBufferWithBytes:(const void *)bytes length:(unint64_t)length renderContext:(id)context;
- (void)dealloc;
- (void)deallocateElementAtOffset:(unint64_t)offset inPage:(id)page;
@end

@implementation VFXMTLBufferAllocator

- (VFXMTLBufferAllocator)initWithDevice:(__CFXGPUDevice *)device fixedSizeElement:(unint64_t)element buffersize:(unint64_t)buffersize name:(id)name
{
  v18.receiver = self;
  v18.super_class = VFXMTLBufferAllocator;
  v10 = [(VFXMTLBufferAllocator *)&v18 init];
  v10->_gpuDevice = device;
  v10->_name = objc_msgSend_copy(name, v11, v12);
  CFXGPUDeviceGetMTLDevice(device);
  v13 = (element + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = buffersize / element;
  if (element > buffersize)
  {
    v14 = 100;
  }

  v10->_bufferSize = v14 * v13;
  v10->_elementSize = v13;
  v15 = objc_alloc(MEMORY[0x1E695DF70]);
  v10->_pages = objc_msgSend_initWithCapacity_(v15, v16, 10);
  v10->_allocatorLock._os_unfair_lock_opaque = 0;
  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLBufferAllocator;
  [(VFXMTLBufferAllocator *)&v3 dealloc];
}

- (id)_newSubBuffer
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_allocatorLock);
  currentAllocatorPage = self->_currentAllocatorPage;
  if (!currentAllocatorPage || !objc_msgSend_count(currentAllocatorPage->_freeIndices, v3, v4))
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    pages = self->_pages;
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(pages, v3, &v21, v25, 16);
    if (v8)
    {
      v11 = v8;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(pages);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (v14 && objc_msgSend_count(v14->_freeIndices, v9, v10))
          {
            self->_currentAllocatorPage = v14;
            v6 = objc_msgSend_newSubBufferForAllocator_(v14, v9, self);
            goto LABEL_15;
          }
        }

        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(pages, v9, &v21, v25, 16);
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(self->_gpuDevice, self->_bufferSize, 32);
    v16 = [VFXFixedSizePage alloc];
    self->_currentAllocatorPage = objc_msgSend_initWithBuffer_elementSize_(v16, v17, BufferWithLength, self->_elementSize);

    objc_msgSend_addObject_(self->_pages, v18, self->_currentAllocatorPage);
  }

  v6 = objc_msgSend_newSubBufferForAllocator_(self->_currentAllocatorPage, v3, self);
LABEL_15:
  v19 = v6;
  os_unfair_lock_unlock(&self->_allocatorLock);
  return v19;
}

- (id)newSubBufferWithBytes:(const void *)bytes length:(unint64_t)length renderContext:(id)context
{
  p_elementSize = &self->_elementSize;
  if (self->_elementSize < length)
  {
    v10 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE5754(length, p_elementSize, v10);
    }
  }

  v11 = objc_msgSend__newSubBuffer(self, a2, bytes);
  v14 = objc_msgSend_frameConstantBufferPool(context, v12, v13);
  v15 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CFXBufferAllocatorPerFrameAllocateWithBytes(v15, bytes, length);
  v17 = v16;
  v19 = objc_msgSend_resourceBlitEncoder(context, v16, v18);
  CFXBufferSliceGetMTLBuffer();
  v21 = v20;
  v24 = objc_msgSend_buffer(v11, v22, v23);
  v27 = objc_msgSend_offset(v11, v25, v26);
  objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(*v19, v28, v21, v17, v24, v27, length);
  if (v15)
  {
    CFRelease(v15);
  }

  return v11;
}

- (void)deallocateElementAtOffset:(unint64_t)offset inPage:(id)page
{
  os_unfair_lock_lock(&self->_allocatorLock);
  sub_1AFDE54C4(page, offset);

  os_unfair_lock_unlock(&self->_allocatorLock);
}

@end