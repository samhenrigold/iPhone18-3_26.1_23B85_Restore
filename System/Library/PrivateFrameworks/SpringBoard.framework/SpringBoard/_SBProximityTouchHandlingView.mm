@interface _SBProximityTouchHandlingView
- (double)statusBarHeight;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)setDelegate:(id *)result;
- (uint64_t)setStatusBarHeight:(uint64_t)result;
@end

@implementation _SBProximityTouchHandlingView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v25 = *MEMORY[0x277D85DE8];
  BSFloatLessThanOrEqualToFloat();
  v7 = BSFloatGreaterThanOrEqualToFloat();
  if (v7 && (v7 = BSFloatLessThanFloat(), v7) && (-[_SBProximityTouchHandlingView window](self, "window"), v8 = objc_claimAutoreleasedReturnValue(), [v8 screen], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "bounds"), v10 = BSFloatLessThanFloat(), v9, v8, v10))
  {
    delegate = [(_SBProximityTouchHandlingView *)&self->super.super.super.isa delegate];
    [delegate didHitAllowedRegion:{x, y}];

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = SBLogProximitySensor(v7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    statusBarHeight = self->_statusBarHeight;
    v17 = 134218752;
    v18 = x;
    v19 = 2048;
    v20 = y;
    v21 = 1024;
    v22 = v11;
    v23 = 2048;
    v24 = statusBarHeight;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Prox hit test (%g,%g) - hitStatusBar:%{BOOL}u (statusBarHeight:%g)", &v17, 0x26u);
  }

  if (v11)
  {
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 51);
    v1 = vars8;
  }

  return WeakRetained;
}

- (id)setDelegate:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 51, a2);
  }

  return result;
}

- (double)statusBarHeight
{
  if (self)
  {
    return *(self + 416);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setStatusBarHeight:(uint64_t)result
{
  if (result)
  {
    *(result + 416) = a2;
  }

  return result;
}

@end