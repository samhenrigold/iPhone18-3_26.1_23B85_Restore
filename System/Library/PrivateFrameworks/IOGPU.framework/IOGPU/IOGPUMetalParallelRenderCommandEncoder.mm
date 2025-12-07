@interface IOGPUMetalParallelRenderCommandEncoder
- (IOGPUMetalParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor;
- (id)_renderCommandEncoderCommon;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalParallelRenderCommandEncoder

- (IOGPUMetalParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = IOGPUMetalParallelRenderCommandEncoder;
  v5 = [(_MTLParallelRenderCommandEncoder *)&v11 initWithCommandBuffer:buffer renderPassDescriptor:descriptor];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E69743B8];
    NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([*(&v5->super.super.super.isa + v7) deviceRef]);
    v9 = *MEMORY[0x1E69743C0];
    *(&v6->super.super.super.isa + v9) = NextGlobalTraceID;
    if (*__globalGPUCommPage)
    {
      IOGPUDeviceTraceEvent([*(&v6->super.super.super.isa + v7) deviceRef], 8, 8, objc_msgSend(buffer, "globalTraceObjectID"), *(&v6->super.super.super.isa + v9), -[IOGPUMetalParallelRenderCommandEncoder getType](v6, "getType"), 0);
    }
  }

  return v6;
}

- (void)setLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    v6 = *MEMORY[0x1E69743C8];
    *(&self->super.super.super.isa + v6) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]), *(&self->super.super.super.isa + v6), [label cStringUsingEncoding:1]);
  }
}

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    globalTraceObjectID = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B0]) globalTraceObjectID];
    IOGPUDeviceTraceEvent(deviceRef, 8, 9, globalTraceObjectID, *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]), [(IOGPUMetalParallelRenderCommandEncoder *)self getType], 0);
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v5 endEncoding];
}

- (void)pushDebugGroup:(id)group
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    IOGPUDeviceTraceObjectLabel(deviceRef, 8, 12, *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]), 0, [group cStringUsingEncoding:1]);
  }

  v6.receiver = self;
  v6.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v6 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69743B8]) deviceRef];
    IOGPUDeviceTraceEvent(deviceRef, 8, 13, *(&self->super.super.super.isa + *MEMORY[0x1E69743C0]), 0, 0, 0);
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetalParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v4 popDebugGroup];
}

- (id)_renderCommandEncoderCommon
{
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  *(StatusReg + 288) = 11181;
  v4.receiver = self;
  v4.super_class = IOGPUMetalParallelRenderCommandEncoder;
  result = [(_MTLParallelRenderCommandEncoder *)&v4 _renderCommandEncoderCommon];
  *(StatusReg + 288) = 0;
  return result;
}

@end