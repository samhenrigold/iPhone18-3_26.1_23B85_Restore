@interface MFMonitoredInvocation
+ (id)invocationWithMethodSignature:(id)signature;
+ (id)invocationWithSelector:(SEL)selector target:(id)target object1:(id)object1 object2:(id)object2 taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled;
+ (id)invocationWithSelector:(SEL)selector target:(id)target object:(id)object taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled;
+ (id)invocationWithSelector:(SEL)selector target:(id)target taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation MFMonitoredInvocation

+ (id)invocationWithMethodSignature:(id)signature
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MFMonitoredInvocation;
  v3 = objc_msgSendSuper2(&v7, sel_invocationWithMethodSignature_, signature);
  v4 = objc_alloc_init(MFActivityMonitor);
  v5 = v3[8];
  v3[8] = v4;

  return v3;
}

+ (id)invocationWithSelector:(SEL)selector target:(id)target taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v8 = *&priority;
  nameCopy = name;
  v13 = [self mf_invocationWithSelector:selector target:target];
  monitor = [v13 monitor];
  [monitor setTaskName:nameCopy];

  [monitor setCanBeCancelled:cancelledCopy];
  [monitor setPriority:v8];

  return v13;
}

+ (id)invocationWithSelector:(SEL)selector target:(id)target object:(id)object taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v9 = *&priority;
  objectCopy = object;
  v14 = [self invocationWithSelector:selector target:target taskName:name priority:v9 canBeCancelled:cancelledCopy];
  methodSignature = [v14 methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];

  if (numberOfArguments >= 3)
  {
    [v14 setArgument:&objectCopy atIndex:2];
  }

  return v14;
}

+ (id)invocationWithSelector:(SEL)selector target:(id)target object1:(id)object1 object2:(id)object2 taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled
{
  v9 = *&priority;
  object2Copy = object2;
  v15 = [self invocationWithSelector:selector target:target object:object1 taskName:name priority:v9 canBeCancelled:cancelled];
  methodSignature = [v15 methodSignature];
  numberOfArguments = [methodSignature numberOfArguments];

  if (numberOfArguments >= 4)
  {
    [v15 setArgument:&object2Copy atIndex:3];
  }

  return v15;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMonitoredInvocation;
  [(MFMonitoredInvocation *)&v2 dealloc];
}

- (void)invoke
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_2720B1000, a2, OS_LOG_TYPE_FAULT, "monitor invoke failed with: %@", &v2, 0xCu);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  priority = [(VFPriorityDesignator *)self->_monitor priority];
  target = [(MFMonitoredInvocation *)self target];
  Name = sel_getName([(MFMonitoredInvocation *)self selector]);
  if (self->_isLowPriority)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p priority: %lu target: %@ selector: %s lowPriority: %@>", v5, self, priority, target, Name, v9];

  return v10;
}

@end