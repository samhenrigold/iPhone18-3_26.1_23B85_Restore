@interface MTLIOAccelIOHandleCompressed
- (MTLIOAccelIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached;
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelIOHandleCompressed

- (MTLIOAccelIOHandleCompressed)initWithDevice:(id)device path:(const char *)path compressionType:(int64_t)type error:(id *)error uncached:(BOOL)uncached
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelIOHandleCompressed;
  return [(_MTLIOHandleCompressed *)&v8 initWithDevice:device path:path compressionType:type error:error uncached:uncached];
}

- (void)setLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelIOHandleCompressed;
  [(_MTLObjectWithLabel *)&v5 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOHandleCompressed *)self globalTraceObjectID];
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end