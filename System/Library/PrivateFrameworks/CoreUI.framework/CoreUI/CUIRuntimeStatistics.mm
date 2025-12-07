@interface CUIRuntimeStatistics
+ (id)sharedRuntimeStatistics;
- (CUIRuntimeStatistics)init;
- (void)_logStatistics:(unint64_t *)statistics;
- (void)dealloc;
@end

@implementation CUIRuntimeStatistics

+ (id)sharedRuntimeStatistics
{
  if (__once != -1)
  {
    +[CUIRuntimeStatistics sharedRuntimeStatistics];
  }

  return __sharedInstance;
}

CUIRuntimeStatistics *__47__CUIRuntimeStatistics_sharedRuntimeStatistics__block_invoke()
{
  result = objc_alloc_init(CUIRuntimeStatistics);
  __sharedInstance = result;
  return result;
}

- (CUIRuntimeStatistics)init
{
  v6.receiver = self;
  v6.super_class = CUIRuntimeStatistics;
  v2 = [(CUIRuntimeStatistics *)&v6 init];
  v3 = dispatch_queue_create("com.apple.coreui.statistics", 0);
  v2->_queue = v3;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __28__CUIRuntimeStatistics_init__block_invoke;
  handler[3] = &unk_1E724A548;
  handler[4] = v2;
  notify_register_dispatch("com.apple.coreui.statistics", &v2->_notify_token, v3, handler);
  return v2;
}

- (void)dealloc
{
  notify_cancel(self->_notify_token);
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = CUIRuntimeStatistics;
  [(CUIRuntimeStatistics *)&v3 dealloc];
}

- (void)_logStatistics:(unint64_t *)statistics
{
  if (statistics)
  {
    v2 = atomic_load(statistics + 1);
    v3 = atomic_load(statistics + 2);
    v4 = atomic_load(statistics + 3);
    v5 = atomic_load(statistics + 4);
    v6 = atomic_load(statistics + 6);
    v7 = atomic_load(statistics + 5);
    v8 = 0.0;
    v9 = 0.0;
    v10 = atomic_load(statistics + 7);
    if (v3)
    {
      v9 = v2 / v3 * 100.0;
    }

    v11 = 0.0;
    if (v5)
    {
      v8 = v4 / v5 * 100.0;
      v11 = v10 / v5 * 100.0;
    }

    _CUILog(2, "CoreUI: Wasted Size: %lld/%lld=%.2f%% Short Circuit lookups: %lld/%lld=%.2f%% lookups:%lld probes:%lld Missed lookups %lld/%lld=%.2f%%\n", v3, v2, v9, v4, v5, v8, v6, v7, v10, v5, v11);
    atomic_store(0, statistics + 6);
    atomic_store(0, statistics + 5);
  }
}

@end