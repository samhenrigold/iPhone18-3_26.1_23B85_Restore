@interface BAFileHandle
- (BAFileHandle)initWithFileDescriptor:(int)descriptor originalPath:(id)path closeOnDealloc:(BOOL)dealloc;
@end

@implementation BAFileHandle

- (BAFileHandle)initWithFileDescriptor:(int)descriptor originalPath:(id)path closeOnDealloc:(BOOL)dealloc
{
  deallocCopy = dealloc;
  v7 = *&descriptor;
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = BAFileHandle;
  v10 = [(BAFileHandle *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_filePath, path);
    v12 = [[NSFileHandle alloc] initWithFileDescriptor:v7 closeOnDealloc:deallocCopy];
    handle = v11->_handle;
    v11->_handle = v12;
  }

  return v11;
}

@end