@interface BWDeferredContainerPixelBufferPoolWrapper
- (BWDeferredContainerPixelBufferPoolWrapper)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name;
- (void)dealloc;
- (void)signal;
@end

@implementation BWDeferredContainerPixelBufferPoolWrapper

- (BWDeferredContainerPixelBufferPoolWrapper)initWithVideoFormat:(id)format capacity:(unint64_t)capacity name:(id)name
{
  v11.receiver = self;
  v11.super_class = BWDeferredContainerPixelBufferPoolWrapper;
  v8 = [(BWDeferredContainerPixelBufferPoolWrapper *)&v11 init];
  if (v8)
  {
    v9 = [[BWPixelBufferPool alloc] initWithVideoFormat:format capacity:capacity name:name memoryPool:+[BWMemoryPool sharedMemoryPool]];
    v8->_pool = v9;
    v8->_semaphore = dispatch_semaphore_create([(BWPixelBufferPool *)v9 capacity]);
  }

  return v8;
}

- (void)signal
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  dispatch_semaphore_signal(self->_semaphore);
  if (*v3 == 1)
  {

    kdebug_trace();
  }
}

- (void)dealloc
{
  dispatch_release(self->_semaphore);
  v3.receiver = self;
  v3.super_class = BWDeferredContainerPixelBufferPoolWrapper;
  [(BWDeferredContainerPixelBufferPoolWrapper *)&v3 dealloc];
}

@end