@interface MTLIOAccelIOHandleRaw
- (MTLIOAccelIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached;
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelIOHandleRaw

- (MTLIOAccelIOHandleRaw)initWithDevice:(id)device path:(const char *)path error:(id *)error uncached:(BOOL)uncached
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelIOHandleRaw;
  return [(_MTLIOHandleRaw *)&v7 initWithDevice:device path:path error:error uncached:uncached];
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelIOHandleRaw;
  [(_MTLObjectWithLabel *)&v5 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOHandleRaw *)self globalTraceObjectID];
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end