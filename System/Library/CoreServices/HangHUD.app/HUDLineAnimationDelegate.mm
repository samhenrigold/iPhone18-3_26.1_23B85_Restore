@interface HUDLineAnimationDelegate
- (HUDLine)hudLine;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation HUDLineAnimationDelegate

- (void)animationDidStart:(id)start
{
  hudLine = [(HUDLineAnimationDelegate *)self hudLine];
  lineDelegate = [hudLine lineDelegate];
  [lineDelegate animationDidStartOnLine:hudLine];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  v5 = [(HUDLineAnimationDelegate *)self hudLine:stop];
  lineDelegate = [v5 lineDelegate];
  [lineDelegate animationDidStopOnLine:v5];
}

- (HUDLine)hudLine
{
  WeakRetained = objc_loadWeakRetained(&self->_hudLine);

  return WeakRetained;
}

@end