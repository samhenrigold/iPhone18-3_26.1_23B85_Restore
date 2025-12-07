@interface SCNFixedSizePage
- (SCNFixedSizePage)initWithBuffer:(id)buffer elementSize:(unint64_t)size;
- (id)newSubBufferForAllocator:(id)allocator;
- (unint64_t)_allocateElement;
- (void)_allocateElement;
- (void)dealloc;
- (void)deallocateElementAtOffset:(unint64_t)offset;
@end

@implementation SCNFixedSizePage

- (SCNFixedSizePage)initWithBuffer:(id)buffer elementSize:(unint64_t)size
{
  v10.receiver = self;
  v10.super_class = SCNFixedSizePage;
  v6 = [(SCNFixedSizePage *)&v10 init];
  v7 = [buffer length] / size;
  v6->_buffer = buffer;
  v8 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{0, v7}];
  v6->_elementSize = size;
  v6->_freeIndices = v8;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNFixedSizePage;
  [(SCNFixedSizePage *)&v3 dealloc];
}

- (unint64_t)_allocateElement
{
  if (![(NSMutableIndexSet *)self->_freeIndices count])
  {
    v4 = scn_default_log(0, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v4 _allocateElement:v5];
    }
  }

  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if ([(NSMutableIndexSet *)self->_freeIndices count])
  {
    firstIndex = [(NSMutableIndexSet *)self->_freeIndices firstIndex];
    if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = scn_default_log(0x7FFFFFFFFFFFFFFFLL, v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [(SCNFixedSizePage *)v15 _allocateElement:v16];
      }
    }

    [(NSMutableIndexSet *)self->_freeIndices removeIndex:firstIndex];
    return self->_elementSize * firstIndex;
  }

  return v12;
}

- (void)deallocateElementAtOffset:(unint64_t)offset
{
  elementSize = self->_elementSize;
  v5 = offset / elementSize;
  if (offset % elementSize)
  {
    v6 = scn_default_log(self, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v6 deallocateElementAtOffset:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  [(NSMutableIndexSet *)self->_freeIndices addIndex:v5];
}

- (id)newSubBufferForAllocator:(id)allocator
{
  v4 = [[SCNMTLBufferAllocatorSubBuffer alloc] initWithPage:self allocator:allocator];
  [(SCNMTLBuffer *)v4 setBuffer:self->_buffer];
  [(SCNMTLBuffer *)v4 setOffset:[(SCNFixedSizePage *)self _allocateElement]];
  if ([(SCNMTLBuffer *)v4 offset]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = scn_default_log(0x7FFFFFFFFFFFFFFFLL, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(SCNFixedSizePage *)v6 newSubBufferForAllocator:v7, v8, v9, v10, v11, v12, v13];
    }
  }

  return v4;
}

- (void)_allocateElement
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "firstFreeIndex != NSNotFound";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. Internal consistency error – no free index", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)deallocateElementAtOffset:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "(offset % _elementSize) == 0";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. offset should be exactly equal to size", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)newSubBufferForAllocator:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "mtlBuffer.offset != NSNotFound";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. should have some index free", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end