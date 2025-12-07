@interface VFXARKitHandTracker
- (VFXARKitHandTracker)init;
- (void)dealloc;
@end

@implementation VFXARKitHandTracker

- (VFXARKitHandTracker)init
{
  v3.receiver = self;
  v3.super_class = VFXARKitHandTracker;
  return [(VFXARKitHandTracker *)&v3 init];
}

- (void)dealloc
{
  objc_msgSend_stop(self, a2, v2);
  updater = self->_updater;
  if (updater)
  {

    self->_updater = 0;
  }

  v5.receiver = self;
  v5.super_class = VFXARKitHandTracker;
  [(VFXARKitHandTracker *)&v5 dealloc];
}

@end