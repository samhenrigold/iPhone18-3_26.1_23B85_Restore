@interface MFMonitoredInvocation
+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)signature;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object1:(id)object1 object2:(id)object2 taskName:(id)name priority:(unint64_t)priority canBeCancelled:(BOOL)cancelled;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object:(id)object taskName:(id)name priority:(unint64_t)priority canBeCancelled:(BOOL)cancelled;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target taskName:(id)name priority:(unint64_t)priority canBeCancelled:(BOOL)cancelled;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation MFMonitoredInvocation

- (void)invoke
{
  v9[26] = *MEMORY[0x1E69E9840];
  if (self->_powerAssertionId)
  {
    v3 = +[MFPowerController sharedInstance];
    [v3 retainAssertionWithIdentifier:self->_powerAssertionId];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__MFMonitoredInvocation_invoke__block_invoke;
    v9[3] = &unk_1E7AA7B98;
    v9[4] = self;
    v5 = [defaultCenter addObserverForName:@"MFPowerAssertionDidExpire" object:0 queue:0 usingBlock:v9];
  }

  else
  {
    v5 = 0;
  }

  [(MFActivityMonitor *)self->_monitor startActivity];
  if (![(MFActivityMonitor *)self->_monitor shouldCancel])
  {
    v8.receiver = self;
    v8.super_class = MFMonitoredInvocation;
    [(MFMonitoredInvocation *)&v8 invoke];
    _MFFlushCurrentInvocation();
  }

  [(MFActivityMonitor *)self->_monitor finishedActivity:self];
  if (self->_powerAssertionId)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:v5];

    v7 = +[MFPowerController sharedInstance];
    [v7 releaseAssertionWithIdentifier:self->_powerAssertionId];
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_shouldLogInvocation)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v7 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "deallocating %p %@", buf, 0x16u);
    }
  }

  v4.receiver = self;
  v4.super_class = MFMonitoredInvocation;
  [(MFMonitoredInvocation *)&v4 dealloc];
}

+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)signature
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MFMonitoredInvocation;
  v3 = objc_msgSendSuper2(&v7, sel_invocationWithMethodSignature_, signature);
  v4 = objc_alloc_init(MFActivityMonitor);
  v5 = v3[8];
  v3[8] = v4;

  return v3;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target taskName:(id)name priority:(unint64_t)priority canBeCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v9 = [self mf_invocationWithSelector:selector target:{target, name}];
  monitor = [v9 monitor];
  [monitor setCanBeCancelled:cancelledCopy];
  [monitor setPriority:priority];

  return v9;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object:(id)object taskName:(id)name priority:(unint64_t)priority canBeCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  objectCopy = object;
  v14 = [self invocationWithSelector:selector target:target taskName:name priority:priority canBeCancelled:cancelledCopy];
  methodSignature = [v14 methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];

  if (numberOfArguments >= 3)
  {
    [v14 setArgument:&objectCopy atIndex:2];
  }

  return v14;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object1:(id)object1 object2:(id)object2 taskName:(id)name priority:(unint64_t)priority canBeCancelled:(BOOL)cancelled
{
  object2Copy = object2;
  v15 = [self invocationWithSelector:selector target:target object:object1 taskName:name priority:priority canBeCancelled:cancelled];
  methodSignature = [v15 methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];

  if (numberOfArguments >= 4)
  {
    [v15 setArgument:&object2Copy atIndex:3];
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  priority = [(EFPriorityDesignator *)self->_monitor priority];
  target = [(MFMonitoredInvocation *)self target];
  v8 = [v3 stringWithFormat:@"<%@: %p priority: %lu target: %@ selector: %s>", v5, self, priority, target, sel_getName(-[MFMonitoredInvocation selector](self, "selector"))];

  return v8;
}

@end