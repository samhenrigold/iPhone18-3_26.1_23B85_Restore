@interface IOGPUMetalDebugCommandEncoder
- (IOGPUMetalDebugCommandEncoder)initWithCommandBuffer:(id)buffer;
- (unsigned)addDebugResourceListInfo:(IOGPUResourceInfo *)info flag:(unsigned int)flag;
- (void)IOLogBytes:(const char *)bytes length:(unint64_t)length;
- (void)addAPIResource:(id)resource;
- (void)dealloc;
- (void)debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type;
- (void)endEncoding;
- (void)kprintfBytes:(const char *)bytes length:(unint64_t)length;
- (void)reserveKernelCommandBufferSpace:(unint64_t)space;
- (void)restartDebugPass;
@end

@implementation IOGPUMetalDebugCommandEncoder

- (IOGPUMetalDebugCommandEncoder)initWithCommandBuffer:(id)buffer
{
  v6.receiver = self;
  v6.super_class = IOGPUMetalDebugCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v6 initWithCommandBuffer:?];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [IOGPUMetalDebugCommandEncoder initWithCommandBuffer:];
    }

    [buffer getCurrentKernelCommandBufferPointer:&v4->_kernelCommandBufferCurrent end:&v4->_kernelCommandBufferEnd];
    [buffer beginSegment:v4->_kernelCommandBufferCurrent];
    v4->_resourceList = [buffer ioGPUResourceList];
    v4->_api_resourceList = [buffer akResourceList];
    if (!v4->_resourceList)
    {
      [IOGPUMetalDebugCommandEncoder initWithCommandBuffer:];
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_kernelCommandBufferEnd = 0;
  self->_kernelCommandBufferCurrent = 0;
  self->_resourceList = 0;
  self->_api_resourceList = 0;
  v2.receiver = self;
  v2.super_class = IOGPUMetalDebugCommandEncoder;
  [(_MTLCommandEncoder *)&v2 dealloc];
}

- (void)reserveKernelCommandBufferSpace:(unint64_t)space
{
  kernelCommandBufferEnd = self->_kernelCommandBufferEnd;
  result = self->_kernelCommandBufferCurrent;
  if (kernelCommandBufferEnd - result < space)
  {
    v7 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
    [v7 growKernelCommandBuffer:space];
    [v7 getCurrentKernelCommandBufferPointer:&self->_kernelCommandBufferCurrent end:&self->_kernelCommandBufferEnd];
    result = self->_kernelCommandBufferCurrent;
    if (self->_kernelCommandBufferEnd - result < space)
    {
      [IOGPUMetalDebugCommandEncoder reserveKernelCommandBufferSpace:];
    }
  }

  self->_kernelCommandBufferCurrent = result + space;
  return result;
}

- (void)restartDebugPass
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
  [v3 setCurrentKernelCommandBufferPointer:self->_kernelCommandBufferCurrent];
  [v3 endCurrentSegment];
  kernelCommandBufferCurrent = self->_kernelCommandBufferCurrent;

  [v3 beginSegment:kernelCommandBufferCurrent];
}

- (void)endEncoding
{
  v3 = *(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]);
  [v3 setCurrentKernelCommandBufferPointer:self->_kernelCommandBufferCurrent];
  [v3 endCurrentSegment];
  self->_kernelCommandBufferEnd = 0;
  self->_kernelCommandBufferCurrent = 0;
  self->_resourceList = 0;
  self->_api_resourceList = 0;
  v4.receiver = self;
  v4.super_class = IOGPUMetalDebugCommandEncoder;
  [(_MTLCommandEncoder *)&v4 endEncoding];
}

- (unsigned)addDebugResourceListInfo:(IOGPUResourceInfo *)info flag:(unsigned int)flag
{
  v4 = *&flag;
  result = IOGPUResourceListAddResource(self->_resourceList, info, *&flag);
  if (!*&self->_resourceList->var12)
  {
    [(IOGPUMetalDebugCommandEncoder *)self restartDebugPass];
    result = IOGPUResourceListAddResource(self->_resourceList, info, v4);
    if (!*&self->_resourceList->var12)
    {
      [IOGPUMetalDebugCommandEncoder addDebugResourceListInfo:flag:];
    }
  }

  if (result == -1)
  {
    [IOGPUMetalDebugCommandEncoder addDebugResourceListInfo:flag:];
  }

  return result;
}

- (void)debugBytes:(const char *)bytes length:(unint64_t)length output_type:(unsigned int)output_type
{
  v8 = (length + 19) & 0xFFFFFFFC;
  0xFFFFFFFFFFFFFFFCLL = [(IOGPUMetalDebugCommandEncoder *)self reserveKernelCommandBufferSpace:(length + 19) & 0xFFFFFFFFFFFFFFFCLL];
  *0xFFFFFFFFFFFFFFFCLL = 0;
  0xFFFFFFFFFFFFFFFCLL[1] = v8;
  0xFFFFFFFFFFFFFFFCLL[2] = output_type;
  0xFFFFFFFFFFFFFFFCLL[3] = length;
  v10 = 0xFFFFFFFFFFFFFFFCLL + 4;

  memcpy(v10, bytes, length);
}

- (void)addAPIResource:(id)resource
{
  if (self->_api_resourceList)
  {
    MTLResourceListAddResource();
  }
}

- (void)kprintfBytes:(const char *)bytes length:(unint64_t)length
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]))
  {
    [IOGPUMetalDebugCommandEncoder kprintfBytes:length:];
  }

  [(IOGPUMetalDebugCommandEncoder *)self debugBytes:bytes length:length output_type:0];
}

- (void)IOLogBytes:(const char *)bytes length:(unint64_t)length
{
  if (!*(&self->super.super.super.super.isa + *MEMORY[0x1E69742C0]))
  {
    [IOGPUMetalDebugCommandEncoder IOLogBytes:length:];
  }

  [(IOGPUMetalDebugCommandEncoder *)self debugBytes:bytes length:length output_type:1];
}

@end