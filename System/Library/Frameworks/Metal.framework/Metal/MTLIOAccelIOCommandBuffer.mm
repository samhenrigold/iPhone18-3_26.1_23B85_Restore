@interface MTLIOAccelIOCommandBuffer
- (MTLIOAccelIOCommandBuffer)initWithQueue:(id)queue;
- (MTLIOAccelIOCommandBuffer)initWithQueue:(id)queue resourceList:(id)list retained:(BOOL)retained;
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelIOCommandBuffer

- (MTLIOAccelIOCommandBuffer)initWithQueue:(id)queue
{
  v4.receiver = self;
  v4.super_class = MTLIOAccelIOCommandBuffer;
  return [(_MTLIOCommandBuffer *)&v4 initWithQueue:queue];
}

- (MTLIOAccelIOCommandBuffer)initWithQueue:(id)queue resourceList:(id)list retained:(BOOL)retained
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelIOCommandBuffer;
  return [(_MTLIOCommandBuffer *)&v6 initWithQueue:queue resourceList:list retained:retained];
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelIOCommandBuffer;
  [(_MTLObjectWithLabel *)&v5 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end