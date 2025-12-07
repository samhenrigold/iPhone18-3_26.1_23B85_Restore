@interface IOGPUMetalIOHandleRaw
- (IOGPUMetalIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalIOHandleRaw

- (IOGPUMetalIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = IOGPUMetalIOHandleRaw;
  v9 = [(_MTLIOHandleRaw *)&v15 initWithDevice:device path:path error:error uncached:uncached];
  if (v9)
  {
    deviceCopy = device;
    v9->_dev = deviceCopy;
    deviceRef = [(MTLDevice *)deviceCopy deviceRef];
    if (IOGPUDeviceCreateVNIODesc(deviceRef, *(&v9->super.super.super.isa + *MEMORY[0x1E69743A0]), &v9->_vnioID, &v9->_globalTraceObjectID))
    {
      if (error)
      {
        v12 = objc_alloc(MEMORY[0x1E696ABC0]);
        v13 = *MEMORY[0x1E6973F90];
        v16 = *MEMORY[0x1E696A578];
        v17[0] = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Internal Error"];
        *error = [v12 initWithDomain:v13 code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v17, &v16, 1)}];
      }

      return 0;
    }

    else if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceObjectLabel([(MTLDevice *)v9->_dev deviceRef], 8, 26, v9->_globalTraceObjectID, 0, path);
    }
  }

  return v9;
}

- (void)dealloc
{
  if (self->_vnioID)
  {
    IOGPUDeviceDestroyVNIODesc([(MTLDevice *)self->_dev deviceRef], self->_vnioID);
  }

  self->_dev = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalIOHandleRaw;
  [(_MTLIOHandleRaw *)&v3 dealloc];
}

- (void)setLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalIOHandleRaw;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E6974398]) deviceRef];
    v6 = *MEMORY[0x1E69743A8];
    *(&self->super.super.super.isa + v6) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, self->_globalTraceObjectID, *(&self->super.super.super.isa + v6), [label cStringUsingEncoding:1]);
  }
}

@end