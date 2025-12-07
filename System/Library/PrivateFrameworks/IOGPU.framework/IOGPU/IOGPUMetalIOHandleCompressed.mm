@interface IOGPUMetalIOHandleCompressed
- (IOGPUMetalIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalIOHandleCompressed

- (IOGPUMetalIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = IOGPUMetalIOHandleCompressed;
  v10 = [(_MTLIOHandleCompressed *)&v16 initWithDevice:device path:path compressionType:type error:error uncached:uncached];
  if (v10)
  {
    deviceCopy = device;
    v10->_dev = deviceCopy;
    deviceRef = [(MTLDevice *)deviceCopy deviceRef];
    if (IOGPUDeviceCreateVNIODesc(deviceRef, *(&v10->super.super.super.isa + *MEMORY[0x1E6974388]), &v10->_vnioID, &v10->_globalTraceObjectID))
    {
      if (error)
      {
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = *MEMORY[0x1E6973F90];
        v17 = *MEMORY[0x1E696A578];
        v18[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        *error = [v13 initWithDomain:v14 code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, &v17, 1)}];
      }

      return 0;
    }

    else if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceObjectLabel([(MTLDevice *)v10->_dev deviceRef], 8, 26, v10->_globalTraceObjectID, 0, path);
    }
  }

  return v10;
}

- (void)dealloc
{
  if (self->_vnioID)
  {
    IOGPUDeviceDestroyVNIODesc([(MTLDevice *)self->_dev deviceRef], self->_vnioID);
  }

  self->_dev = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalIOHandleCompressed;
  [(_MTLIOHandleCompressed *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalIOHandleCompressed;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E6974380]) deviceRef];
    v6 = *MEMORY[0x1E6974390];
    *(&self->super.super.super.isa + v6) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, self->_globalTraceObjectID, *(&self->super.super.super.isa + v6), [label cStringUsingEncoding:1]);
  }
}

@end