@interface ASDSyncTaskScheduler
+ (id)sharedInstance;
@end

@implementation ASDSyncTaskScheduler

+ (id)sharedInstance
{
  objc_opt_self();
  if (_MergedGlobals_22 != -1)
  {
    dispatch_once(&_MergedGlobals_22, &__block_literal_global);
  }

  v1 = qword_1ED90D428;

  return v1;
}

uint64_t __38__ASDSyncTaskScheduler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ASDSyncTaskScheduler);
  v1 = qword_1ED90D428;
  qword_1ED90D428 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end