@interface _IOGPUMetalMTLLateEvalEvent
- (NSString)label;
- (_IOGPUMetalMTLLateEvalEvent)initWithDevice:(id)device;
- (id)retainedLabel;
- (void)dealloc;
- (void)setLabel:(id)label;
@end

@implementation _IOGPUMetalMTLLateEvalEvent

- (_IOGPUMetalMTLLateEvalEvent)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = _IOGPUMetalMTLLateEvalEvent;
  v4 = -[IOGPUMTLLateEvalEvent initWithDevice:](&v6, sel_initWithDevice_, [device deviceRef]);
  if (v4)
  {
    v4->_device = device;
    v4->_labelLock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _IOGPUMetalMTLLateEvalEvent;
  [(IOGPUMTLLateEvalEvent *)&v3 dealloc];
}

- (id)retainedLabel
{
  os_unfair_lock_lock(&self->_labelLock);
  v3 = self->_label;
  os_unfair_lock_unlock(&self->_labelLock);
  return v3;
}

- (NSString)label
{
  retainedLabel = [(_IOGPUMetalMTLLateEvalEvent *)self retainedLabel];

  return retainedLabel;
}

- (void)setLabel:(id)label
{
  if (*__globalGPUCommPage)
  {
    self->_labelTraceID = IOGPUDeviceTraceObjectLabel(0, 8, 0, self->super._globalTraceObjectID, self->_labelTraceID, [label cStringUsingEncoding:1]);
  }

  v5 = [label copy];
  os_unfair_lock_lock(&self->_labelLock);
  label = self->_label;
  self->_label = v5;
  os_unfair_lock_unlock(&self->_labelLock);
}

@end