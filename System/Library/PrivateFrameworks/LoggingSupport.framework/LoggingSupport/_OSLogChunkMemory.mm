@interface _OSLogChunkMemory
- (_OSLogChunkMemory)initWithBytes:(const void *)bytes size:(unint64_t)size deallocator:(id)deallocator;
- (void)dealloc;
@end

@implementation _OSLogChunkMemory

- (void)dealloc
{
  (*(self->_deallocator + 2))();
  v3.receiver = self;
  v3.super_class = _OSLogChunkMemory;
  [(_OSLogChunkMemory *)&v3 dealloc];
}

- (_OSLogChunkMemory)initWithBytes:(const void *)bytes size:(unint64_t)size deallocator:(id)deallocator
{
  deallocatorCopy = deallocator;
  v13.receiver = self;
  v13.super_class = _OSLogChunkMemory;
  v9 = [(_OSLogChunkStore *)&v13 initWithBytes:bytes size:size];
  if (v9)
  {
    v10 = [deallocatorCopy copy];
    deallocator = v9->_deallocator;
    v9->_deallocator = v10;
  }

  return v9;
}

@end