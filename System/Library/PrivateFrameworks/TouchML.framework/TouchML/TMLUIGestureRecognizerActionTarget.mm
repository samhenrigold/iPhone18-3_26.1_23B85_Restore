@interface TMLUIGestureRecognizerActionTarget
- (TMLUIGestureRecognizerActionTarget)initWithSignal:(id)signal state:(int64_t)state;
- (void)handleGesture:(id)gesture;
@end

@implementation TMLUIGestureRecognizerActionTarget

- (TMLUIGestureRecognizerActionTarget)initWithSignal:(id)signal state:(int64_t)state
{
  signalCopy = signal;
  v11.receiver = self;
  v11.super_class = TMLUIGestureRecognizerActionTarget;
  v7 = [(TMLUIGestureRecognizerActionTarget *)&v11 init];
  if (v7)
  {
    v8 = [signalCopy copy];
    signalName = v7->_signalName;
    v7->_signalName = v8;

    v7->_state = state;
  }

  return v7;
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == self->_state)
  {
    [gestureCopy emitTMLSignal:self->_signalName withArguments:0];
  }
}

@end