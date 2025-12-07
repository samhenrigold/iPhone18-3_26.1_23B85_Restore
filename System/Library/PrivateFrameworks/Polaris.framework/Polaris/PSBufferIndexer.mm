@interface PSBufferIndexer
- (PSBufferIndexer)initWithResourceStream:(id)stream;
- (void)allocateResources;
@end

@implementation PSBufferIndexer

- (void)allocateResources
{
  *self = 0;
  v4 = [*a2 key];
  asprintf(self, "Unsupported resource stream type sent to allocator for key:%s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [*a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Unsupported resource stream type sent to allocator for key:%s", v10, v11, v12, v13, v23, v24);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  [(PSDeviceManager *)v22 setNotificationPort];
}

- (PSBufferIndexer)initWithResourceStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = PSBufferIndexer;
  v6 = [(PSBufferIndexer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resourceStream, stream);
    v7->_currentIndex = 0;
  }

  return v7;
}

@end