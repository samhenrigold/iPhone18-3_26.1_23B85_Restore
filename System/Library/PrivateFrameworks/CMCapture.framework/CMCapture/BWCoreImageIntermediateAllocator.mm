@interface BWCoreImageIntermediateAllocator
- (BWCoreImageIntermediateAllocator)initWithBackend:(id)backend allocatorBackend:(id)allocatorBackend memoryPool:(unint64_t)pool;
- (id)newBufferForContextIntermediate:(unint64_t)intermediate usingHint:(BOOL)hint identifier:(unint64_t)identifier;
- (void)bufferForContextIntermediateCommitted:(id)committed;
- (void)dealloc;
@end

@implementation BWCoreImageIntermediateAllocator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCoreImageIntermediateAllocator;
  [(BWCoreImageIntermediateAllocator *)&v3 dealloc];
}

- (id)newBufferForContextIntermediate:(unint64_t)intermediate usingHint:(BOOL)hint identifier:(unint64_t)identifier
{
  v8 = objc_opt_new();
  [v8 setLength:intermediate];
  [v8 setOptions:{-[FigMetalAllocator resourceOptions](self->_metalAllocator, "resourceOptions")}];
  [v8 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%016llX", identifier)}];
  v9 = [(FigMetalAllocator *)self->_metalAllocator newBufferWithDescriptor:v8];
  if (!v9)
  {
    v12[0] = *MEMORY[0x1E696CE30];
    v13[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:intermediate];
    v12[1] = *MEMORY[0x1E696CE38];
    v13[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_poolID];
    v10 = IOSurfaceCreate([MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2]);
    v9 = [(MTLDeviceSPI *)self->_device newBufferWithIOSurface:v10];
    CFRelease(v10);
  }

  return v9;
}

- (void)bufferForContextIntermediateCommitted:(id)committed
{
  if ([committed iosurface])
  {
  }

  else
  {
    FigMetalDecRef();
  }
}

- (BWCoreImageIntermediateAllocator)initWithBackend:(id)backend allocatorBackend:(id)allocatorBackend memoryPool:(unint64_t)pool
{
  v21.receiver = self;
  v21.super_class = BWCoreImageIntermediateAllocator;
  v9 = [(BWCoreImageIntermediateAllocator *)&v21 init];
  v9->_poolID = pool;
  v9->_device = backend;
  v10 = objc_opt_new();
  v11 = v10;
  if (!v10)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v21.receiver, v21.super_class, v22, v23, v24, v25);
    v16 = qword_1ED844648;
    v17 = 4294893831;
    v18 = 86;
LABEL_7:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, v17, "<<<< BWCoreImageFilterRenderer >>>>", v18, v5, v14, v15, v20);
    goto LABEL_4;
  }

  [v10 setWireMemory:1];
  [v11 setResourceOptions:{objc_msgSend(allocatorBackend, "resourceOptions")}];
  [v11 setLabel:@"FigMetalAllocator_CoreImageFilterRenderer"];
  if (allocatorBackend)
  {
    v9->_metalAllocator = [objc_alloc(MEMORY[0x1E6991750]) initWithDevice:backend allocatorType:{objc_msgSend(allocatorBackend, "allocatorType")}];
    [v11 setMemSize:{objc_msgSend(allocatorBackend, "memSize")}];
    v12 = [(FigMetalAllocator *)v9->_metalAllocator setupWithDescriptor:v11 allocatorBackend:allocatorBackend];
    if (v12)
    {
      v19 = v12;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v12, v5, v21.receiver, v21.super_class, v22, v23, v24, v25);
      v16 = qword_1ED844648;
      v17 = v19;
      v18 = 96;
      goto LABEL_7;
    }
  }

LABEL_4:

  return v9;
}

@end