@interface MTLIOAccelParallelRenderCommandEncoder
- (MTLIOAccelParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelParallelRenderCommandEncoder

- (MTLIOAccelParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelParallelRenderCommandEncoder;
  v5 = [(_MTLParallelRenderCommandEncoder *)&v8 initWithCommandBuffer:buffer renderPassDescriptor:descriptor];
  v6 = v5;
  if (v5)
  {
    [(MTLDevice *)v5->super._device deviceRef];
    v6->super._globalTraceObjectID = IOAccelDeviceGetNextGlobalTraceID();
    if (**MEMORY[0x1E69A8488])
    {
      [(MTLDevice *)v6->super._device deviceRef];
      [buffer globalTraceObjectID];
      [(MTLIOAccelParallelRenderCommandEncoder *)v6 getType];
      IOAccelDeviceTraceEvent();
    }
  }

  return v6;
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v5 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

- (void)endEncoding
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [(MTLCommandBuffer *)self->super._commandBuffer globalTraceObjectID];
    [(MTLIOAccelParallelRenderCommandEncoder *)self getType];
    IOAccelDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v3 endEncoding];
}

- (void)pushDebugGroup:(id)group
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [group cStringUsingEncoding:1];
    IOAccelDeviceTraceObjectLabel();
  }

  v5.receiver = self;
  v5.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v5 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    IOAccelDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v3 popDebugGroup];
}

@end