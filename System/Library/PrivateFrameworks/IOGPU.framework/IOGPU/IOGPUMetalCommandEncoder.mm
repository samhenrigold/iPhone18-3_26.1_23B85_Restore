@interface IOGPUMetalCommandEncoder
- (IOGPUMetalCommandEncoder)initWithCommandBuffer:(id)buffer;
- (unint64_t)globalTraceObjectID;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetalCommandEncoder

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    IOGPUDeviceTraceEvent(deviceRef, 8, 9, [*(&self->super.super.super.isa + *MEMORY[0x1E69742C0]) globalTraceObjectID], -[IOGPUMetalCommandEncoder globalTraceObjectID](self, "globalTraceObjectID"), -[_MTLCommandEncoder getType](self, "getType"), 0);
  }

  v4.receiver = self;
  v4.super_class = IOGPUMetalCommandEncoder;
  [(_MTLCommandEncoder *)&v4 endEncoding];
}

- (unint64_t)globalTraceObjectID
{
  v3 = *MEMORY[0x1E69742D0];
  result = *(&self->super.super.super.isa + v3);
  if (!result)
  {
    result = IOGPUDeviceGetNextGlobalTraceID([*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef]);
    *(&self->super.super.super.isa + v3) = result;
  }

  return result;
}

- (void)popDebugGroup
{
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEvent([*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef], 8, 13, -[IOGPUMetalCommandEncoder globalTraceObjectID](self, "globalTraceObjectID"), 0, 0, 0);
  }

  v3.receiver = self;
  v3.super_class = IOGPUMetalCommandEncoder;
  [(_MTLCommandEncoder *)&v3 popDebugGroup];
}

- (IOGPUMetalCommandEncoder)initWithCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = IOGPUMetalCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v7 initWithCommandBuffer:?];
  v5 = v4;
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceEvent([*(&v4->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef], 8, 8, objc_msgSend(buffer, "globalTraceObjectID"), -[IOGPUMetalCommandEncoder globalTraceObjectID](v4, "globalTraceObjectID"), -[_MTLCommandEncoder getType](v4, "getType"), 0);
  }

  return v5;
}

- (void)setLabel:(id)label
{
  v8.receiver = self;
  v8.super_class = IOGPUMetalCommandEncoder;
  [(_MTLObjectWithLabel *)&v8 setLabel:?];
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef];
    globalTraceObjectID = [(IOGPUMetalCommandEncoder *)self globalTraceObjectID];
    v7 = *MEMORY[0x1E69742D8];
    *(&self->super.super.super.isa + v7) = IOGPUDeviceTraceObjectLabel(deviceRef, 8, 0, globalTraceObjectID, *(&self->super.super.super.isa + v7), [label cStringUsingEncoding:1]);
  }
}

- (void)pushDebugGroup:(id)group
{
  if (*__globalGPUCommPage)
  {
    IOGPUDeviceTraceObjectLabel([*(&self->super.super.super.isa + *MEMORY[0x1E69742C8]) deviceRef], 8, 12, -[IOGPUMetalCommandEncoder globalTraceObjectID](self, "globalTraceObjectID"), 0, objc_msgSend(group, "cStringUsingEncoding:", 1));
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetalCommandEncoder;
  [(_MTLCommandEncoder *)&v5 pushDebugGroup:group];
}

@end