@interface VFXMTLBufferAllocatorSubBuffer
- (VFXMTLBufferAllocatorSubBuffer)initWithPage:(id)page allocator:(id)allocator;
- (void)dealloc;
@end

@implementation VFXMTLBufferAllocatorSubBuffer

- (VFXMTLBufferAllocatorSubBuffer)initWithPage:(id)page allocator:(id)allocator
{
  v8.receiver = self;
  v8.super_class = VFXMTLBufferAllocatorSubBuffer;
  v6 = [(VFXMTLBufferAllocatorSubBuffer *)&v8 init];
  if (v6)
  {
    v6->_parentPage = page;
    v6->_allocator = allocator;
  }

  return v6;
}

- (void)dealloc
{
  allocator = self->_allocator;
  v5 = objc_msgSend_offset(self, a2, v2);
  objc_msgSend_deallocateElementAtOffset_inPage_(allocator, v6, v5, self->_parentPage);

  v7.receiver = self;
  v7.super_class = VFXMTLBufferAllocatorSubBuffer;
  [(VFXMTLBuffer *)&v7 dealloc];
}

@end