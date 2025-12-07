@interface IOGPUMetal4MachineLearningCommandEncoder
- (IOGPUMetal4MachineLearningCommandEncoder)initWithCommandBuffer:(id)buffer allocator:(id)allocator;
- (void)dealloc;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation IOGPUMetal4MachineLearningCommandEncoder

- (IOGPUMetal4MachineLearningCommandEncoder)initWithCommandBuffer:(id)buffer allocator:(id)allocator
{
  v11.receiver = self;
  v11.super_class = IOGPUMetal4MachineLearningCommandEncoder;
  v4 = [(_MTL4MachineLearningCommandEncoder *)&v11 initWithCommandBuffer:buffer allocator:allocator];
  v5 = v4;
  if (v4)
  {
    v6 = *MEMORY[0x1E6974228];
    NextGlobalTraceID = IOGPUDeviceGetNextGlobalTraceID([*(&v4->super.super.super.super.isa + v6) deviceRef]);
    v8 = *MEMORY[0x1E6974230];
    *(&v5->super.super.super.super.isa + v8) = NextGlobalTraceID;
    if (*__globalGPUCommPage)
    {
      deviceRef = [*(&v5->super.super.super.super.isa + v6) deviceRef];
      IOGPUDeviceTraceEvent(deviceRef, 8, 8, [*(&v5->super.super.super.super.isa + *MEMORY[0x1E6974220]) globalTraceObjectID], *(&v5->super.super.super.super.isa + v8), -[IOGPUMetal4MachineLearningCommandEncoder getType](v5, "getType"), 4);
    }
  }

  return v5;
}

- (void)endEncoding
{
  if (*__globalGPUCommPage)
  {
    deviceRef = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974228]) deviceRef];
    globalTraceObjectID = [*(&self->super.super.super.super.isa + *MEMORY[0x1E6974220]) globalTraceObjectID];
    IOGPUDeviceTraceEvent(deviceRef, 8, 9, globalTraceObjectID, *(&self->super.super.super.super.isa + *MEMORY[0x1E6974230]), [(IOGPUMetal4MachineLearningCommandEncoder *)self getType], 4);
  }

  v5.receiver = self;
  v5.super_class = IOGPUMetal4MachineLearningCommandEncoder;
  [(_MTL4MachineLearningCommandEncoder *)&v5 endEncoding];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IOGPUMetal4MachineLearningCommandEncoder;
  [(_MTL4MachineLearningCommandEncoder *)&v2 dealloc];
}

- (void)setLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = IOGPUMetal4MachineLearningCommandEncoder;
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