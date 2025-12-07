@interface VFXFixedSizePage
- (VFXFixedSizePage)initWithBuffer:(id)buffer elementSize:(unint64_t)size;
- (id)newSubBufferForAllocator:(id)allocator;
- (unint64_t)_allocateElement;
- (void)dealloc;
@end

@implementation VFXFixedSizePage

- (VFXFixedSizePage)initWithBuffer:(id)buffer elementSize:(unint64_t)size
{
  v14.receiver = self;
  v14.super_class = VFXFixedSizePage;
  v6 = [(VFXFixedSizePage *)&v14 init];
  v9 = objc_msgSend_length(buffer, v7, v8) / size;
  v6->_buffer = buffer;
  v10 = objc_alloc(MEMORY[0x1E696AD50]);
  v12 = objc_msgSend_initWithIndexesInRange_(v10, v11, 0, v9);
  v6->_elementSize = size;
  v6->_freeIndices = v12;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXFixedSizePage;
  [(VFXFixedSizePage *)&v3 dealloc];
}

- (unint64_t)_allocateElement
{
  if (!objc_msgSend_count(self->_freeIndices, a2, v2))
  {
    v6 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE55EC(v6, v4, v5, v7, v8, v9, v10, v11);
    }
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (objc_msgSend_count(self->_freeIndices, v4, v5))
  {
    Index = objc_msgSend_firstIndex(self->_freeIndices, v12, v13);
    if (Index == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = sub_1AF0D5194(0x7FFFFFFFFFFFFFFFLL, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE5664(v17, v15, v18, v19, v20, v21, v22, v23);
      }
    }

    objc_msgSend_removeIndex_(self->_freeIndices, v15, Index);
    return self->_elementSize * Index;
  }

  return v14;
}

- (id)newSubBufferForAllocator:(id)allocator
{
  v5 = [VFXMTLBufferAllocatorSubBuffer alloc];
  v7 = objc_msgSend_initWithPage_allocator_(v5, v6, self, allocator);
  objc_msgSend_setBuffer_(v7, v8, self->_buffer);
  Element = objc_msgSend__allocateElement(self, v9, v10);
  objc_msgSend_setOffset_(v7, v12, Element);
  if (objc_msgSend_offset(v7, v13, v14) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = sub_1AF0D5194(0x7FFFFFFFFFFFFFFFLL, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE56DC(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return v7;
}

@end