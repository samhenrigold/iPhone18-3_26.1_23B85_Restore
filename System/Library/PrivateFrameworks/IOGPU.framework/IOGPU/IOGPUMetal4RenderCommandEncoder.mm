@interface IOGPUMetal4RenderCommandEncoder
- (IOGPUMetal4RenderCommandEncoder)initWithCommandAllocator:(id)allocator;
- (void)dealloc;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetal4RenderCommandEncoder

- (IOGPUMetal4RenderCommandEncoder)initWithCommandAllocator:(id)allocator
{
  v10.receiver = self;
  v10.super_class = IOGPUMetal4RenderCommandEncoder;
  v3 = [(_MTL4RenderCommandEncoder *)&v10 initWithCommandAllocator:allocator];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E6974228];
    NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([*(&v3->super.super.super.super.isa + v5) deviceRef]);
    v7 = *MEMORY[0x1E6974230];
    *(&v4->super.super.super.super.isa + v7) = NextGlobalTraceID;
    v8 = *MEMORY[0x1E6974220];
    [*(&v4->super.super.super.super.isa + v8) setCurrentCommandEncoder:v4];
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([*(&v4->super.super.super.super.isa + v5) deviceRef], 8, 8, objc_msgSend(*(&v4->super.super.super.super.isa + v8), "globalTraceObjectID"), *(&v4->super.super.super.super.isa + v7), -[IOGPUMetal4RenderCommandEncoder getType](v4, "getType"), 4);
    }
  }

  return v4;
}

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    globalTraceObjectID = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974220]) globalTraceObjectID];
    IOGPUDeviceTraceEvent(deviceRef, 8, 9, globalTraceObjectID, *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]), [(IOGPUMetal4RenderCommandEncoder *)self getType], 4);
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetal4RenderCommandEncoder;
  [(_MTL4CommandEncoder *)&v5 endEncoding];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IOGPUMetal4RenderCommandEncoder;
  [(_MTL4CommandEncoder *)&v2 dealloc];
}

- (void)setLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = IOGPUMetal4RenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    v6 = *MEMORY[0x1E6974238];
    *(&self->super.super.super.super.isa + v6) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]), *(&self->super.super.super.super.isa + v6), [label cStringUsingEncoding:1]);
  }
}

- (void)pushDebugGroup:(id)group
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    v6 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);
    v7 = [group cStringUsingEncoding:1];

    IOGPUDeviceTraceObjectLabel(deviceRef, 8, 12, v6, 0, v7);
  }
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    v4 = *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]);

    IOGPUDeviceTraceEvent(deviceRef, 8, 13, v4, 0, 0, 0);
  }
}

@end