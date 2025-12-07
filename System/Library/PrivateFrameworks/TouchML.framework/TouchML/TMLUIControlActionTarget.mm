@interface TMLUIControlActionTarget
- (TMLUIControlActionTarget)initWithSignal:(id)signal controlEvent:(unint64_t)event;
- (void)controlAction:(id)action forEvent:(id)event;
@end

@implementation TMLUIControlActionTarget

- (TMLUIControlActionTarget)initWithSignal:(id)signal controlEvent:(unint64_t)event
{
  signalCopy = signal;
  v11.receiver = self;
  v11.super_class = TMLUIControlActionTarget;
  v7 = [(TMLUIControlActionTarget *)&v11 init];
  if (v7)
  {
    v8 = [signalCopy copy];
    signalName = v7->_signalName;
    v7->_signalName = v8;

    v7->_controlEvent = event;
  }

  return v7;
}

- (void)controlAction:(id)action forEvent:(id)event
{
  signalName = self->_signalName;
  controlEvent = self->_controlEvent;
  actionCopy = action;
  if (controlEvent >= 0x1000)
  {
    [actionCopy emitTMLSignal:signalName withArguments:0];
    v9 = actionCopy;
  }

  else
  {
    allTouches = [event allTouches];
    allObjects = [allTouches allObjects];
    [actionCopy emitTMLSignal:signalName withArguments:allObjects];

    v9 = allTouches;
  }
}

@end