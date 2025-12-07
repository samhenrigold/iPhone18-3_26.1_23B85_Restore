@interface MFMonitoredInvocation
+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)signature;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object1:(id)object1 object2:(id)object2 taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object:(id)object taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled;
+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation MFMonitoredInvocation

+ (MFMonitoredInvocation)invocationWithMethodSignature:(id)signature
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___MFMonitoredInvocation;
  v3 = objc_msgSendSuper2(&v5, sel_invocationWithMethodSignature_, signature);
  v3->_monitor = objc_alloc_init(MFActivityMonitor);
  return v3;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled
{
  cancelledCopy = cancelled;
  v8 = *&priority;
  v10 = [self mf_invocationWithSelector:selector target:target];
  monitor = [(MFMonitoredInvocation *)v10 monitor];
  [(MFActivityMonitor *)monitor setTaskName:name];
  [(MFActivityMonitor *)monitor setCanBeCancelled:cancelledCopy];
  [(EFPriorityDesignator *)monitor setPriority:v8];
  return v10;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object:(id)object taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled
{
  objectCopy = object;
  v8 = [self invocationWithSelector:selector target:target taskName:name priority:*&priority canBeCancelled:cancelled];
  if ([-[MFMonitoredInvocation methodSignature](v8 "methodSignature")] >= 3)
  {
    [(MFMonitoredInvocation *)v8 setArgument:&objectCopy atIndex:2];
  }

  return v8;
}

+ (MFMonitoredInvocation)invocationWithSelector:(SEL)selector target:(id)target object1:(id)object1 object2:(id)object2 taskName:(id)name priority:(int)priority canBeCancelled:(BOOL)cancelled
{
  object2Copy = object2;
  v9 = [self invocationWithSelector:selector target:target object:object1 taskName:name priority:*&priority canBeCancelled:cancelled];
  if ([-[MFMonitoredInvocation methodSignature](v9 "methodSignature")] >= 4)
  {
    [(MFMonitoredInvocation *)v9 setArgument:&object2Copy atIndex:3];
  }

  return v9;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_shouldLogInvocation)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy = self;
      v7 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_258BDA000, v3, OS_LOG_TYPE_DEFAULT, "deallocating %p %@", buf, 0x16u);
    }
  }

  v4.receiver = self;
  v4.super_class = MFMonitoredInvocation;
  [(MFMonitoredInvocation *)&v4 dealloc];
}

- (void)invoke
{
  *buf = 138543618;
  *(buf + 4) = self;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_258BDA000, log, OS_LOG_TYPE_FAULT, "Exception raised during monitored invocation of %{public}@, exception: %{public}@", buf, 0x16u);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  priority = [(EFPriorityDesignator *)self->_monitor priority];
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

  return [v3 stringWithFormat:@"<%@: %p priority: %lu target: %@ selector: %s lowPriority: %@>", v5, self, priority, target, Name, v9];
}

@end