@interface MFInvocationQueue
- (void)addBlockInvocation:(id)invocation taskName:(id)name withPriority:(int)priority controlledBy:(id)by;
@end

@implementation MFInvocationQueue

- (void)addBlockInvocation:(id)invocation taskName:(id)name withPriority:(int)priority controlledBy:(id)by
{
  v6 = *&priority;
  byCopy = by;
  nameCopy = name;
  v12 = [invocation copy];
  v13 = objc_retainBlock(v12);
  v14 = [MFMonitoredInvocation invocationWithSelector:"_invokeBlock:" target:self object:v13 taskName:nameCopy priority:v6 canBeCancelled:0];

  [v14 retainArguments];
  v15 = vm_vmd_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    monitor = [v14 monitor];
    monitor2 = [v14 monitor];
    v19 = 138413058;
    selfCopy = self;
    v21 = 2048;
    v22 = monitor;
    v23 = 2112;
    v24 = monitor2;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[IVQ] queue:%@, monitor:%p.'%@', schedule block => %@", &v19, 0x2Au);
  }

  monitor3 = [v14 monitor];
  [byCopy addScheduledActivity:monitor3];

  [(MFInvocationQueue *)self addInvocation:v14];
}

@end