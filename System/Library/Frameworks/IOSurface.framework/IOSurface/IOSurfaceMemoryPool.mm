@interface IOSurfaceMemoryPool
- (IOSurfaceMemoryPool)initWithProperties:(id)properties;
- (id)copyDebugInfo;
- (int)ensureMemory:(id)memory;
- (int)flush:(id)flush;
- (void)dealloc;
@end

@implementation IOSurfaceMemoryPool

- (IOSurfaceMemoryPool)initWithProperties:(id)properties
{
  v17 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = IOSurfaceMemoryPool;
  v4 = [(IOSurfaceMemoryPool *)&v14 init];
  if (v4)
  {
    v5 = IOCFSerialize(properties, 1uLL);
    if (v5)
    {
      v6 = v5;
      output = 0;
      v16 = 0;
      outputCnt = 2;
      v7 = _ioSurfaceConnect();
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v6);
      v10 = IOConnectCallMethod(v7, 0x2Eu, 0, 0, BytePtr, Length, &output, &outputCnt, 0, 0);
      CFRelease(v6);
      if (!v10)
      {
        v11 = v16;
        v4->_poolPort = output;
        v4->_poolId = v11;
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

- (int)ensureMemory:(id)memory
{
  input[1] = *MEMORY[0x1E69E9840];
  v4 = IOCFSerialize(memory, 1uLL);
  if (!v4)
  {
    return -536870206;
  }

  v5 = v4;
  input[0] = self->_poolPort;
  v6 = _ioSurfaceConnect();
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v5);
  v9 = IOConnectCallMethod(v6, 0x2Fu, input, 1u, BytePtr, Length, 0, 0, 0, 0);
  CFRelease(v5);
  return v9;
}

- (id)copyDebugInfo
{
  outputStruct[1] = *MEMORY[0x1E69E9840];
  outputStruct[0] = 0;
  input = self->_poolPort;
  bufferSize = -3;
  v2 = _ioSurfaceConnect();
  v3 = 0;
  if (!IOConnectCallMethod(v2, 0x31u, &input, 1u, 0, 0, 0, 0, outputStruct, &bufferSize))
  {
    errorString = 0;
    v3 = IOCFUnserializeBinary(outputStruct[0], bufferSize, 0, 0, &errorString);
    if (!v3)
    {
      if (errorString)
      {
        NSLog(&cfstr_FailedToUnseri.isa, errorString);
        CFRelease(errorString);
      }

      else
      {
        NSLog(&cfstr_FailedToUnseri_0.isa);
      }
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], outputStruct[0], bufferSize);
  }

  return v3;
}

- (int)flush:(id)flush
{
  input[1] = *MEMORY[0x1E69E9840];
  v4 = IOCFSerialize(flush, 1uLL);
  if (!v4)
  {
    return -536870206;
  }

  v5 = v4;
  input[0] = self->_poolPort;
  v6 = _ioSurfaceConnect();
  BytePtr = CFDataGetBytePtr(v5);
  Length = CFDataGetLength(v5);
  v9 = IOConnectCallMethod(v6, 0x30u, input, 1u, BytePtr, Length, 0, 0, 0, 0);
  CFRelease(v5);
  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  mach_port_mod_refs(*MEMORY[0x1E69E9A60], self->_poolPort, 0, -1);
  v3.receiver = self;
  v3.super_class = IOSurfaceMemoryPool;
  [(IOSurfaceMemoryPool *)&v3 dealloc];
}

@end