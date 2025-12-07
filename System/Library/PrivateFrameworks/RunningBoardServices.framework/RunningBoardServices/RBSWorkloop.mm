@interface RBSWorkloop
+ (dispatch_queue_t)createCalloutQueue:(uint64_t)queue;
+ (id)createBackgroundQueue:(id)queue;
+ (id)createSyncingQueue:(id)queue;
+ (id)sharedBackgroundWorkloop;
+ (id)sharedCalloutWorkloop;
+ (id)sharedInstance;
+ (id)sharedSyncingWorkloop;
+ (void)performBackgroundWork:(id)work;
+ (void)performBackgroundWorkWithServiceClass:(unsigned int)class block:(id)block;
+ (void)performCallout:(uint64_t)callout;
+ (void)performCalloutWithServiceClass:(void *)class block:;
- (dispatch_workloop_t)_init;
@end

@implementation RBSWorkloop

+ (id)sharedBackgroundWorkloop
{
  v2 = +[RBSWorkloop sharedInstance];
  v3 = v2[2];

  return v3;
}

+ (id)sharedInstance
{
  objc_opt_self();
  if (sharedInstance_onceToken != -1)
  {
    +[RBSWorkloop sharedInstance];
  }

  v0 = sharedInstance___sharedInstance;

  return v0;
}

+ (id)sharedCalloutWorkloop
{
  objc_opt_self();
  v2 = +[RBSWorkloop sharedInstance];
  v3 = v2[1];

  return v3;
}

uint64_t __29__RBSWorkloop_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[RBSWorkloop alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (dispatch_workloop_t)_init
{
  if (!self)
  {
    return 0;
  }

  v9.receiver = self;
  v9.super_class = RBSWorkloop;
  v1 = objc_msgSendSuper2(&v9, sel_init);
  if (v1)
  {
    inactive = dispatch_workloop_create_inactive("com.apple.runningboardservices.callout-workloop");
    v3 = v1[1];
    v1[1] = inactive;

    dispatch_workloop_set_autorelease_frequency(v1[1], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_set_qos_class_fallback();
    v4 = dispatch_workloop_create_inactive("com.apple.runningboardservices.background-workloop");
    v5 = v1[2];
    v1[2] = v4;

    dispatch_workloop_set_autorelease_frequency(v1[2], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_set_qos_class_fallback();
    v6 = dispatch_workloop_create_inactive("com.apple.runningboardservices.syncing-workloop");
    v7 = v1[3];
    v1[3] = v6;

    dispatch_workloop_set_autorelease_frequency(v1[3], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    dispatch_set_qos_class_fallback();
    dispatch_activate(v1[1]);
    dispatch_activate(v1[2]);
    dispatch_activate(v1[3]);
  }

  return v1;
}

+ (id)sharedSyncingWorkloop
{
  v2 = +[RBSWorkloop sharedInstance];
  v3 = v2[3];

  return v3;
}

+ (dispatch_queue_t)createCalloutQueue:(uint64_t)queue
{
  v2 = a2;
  v3 = objc_opt_self();
  uTF8String = [v2 UTF8String];

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = +[(RBSWorkloop *)v3];
  v8 = dispatch_queue_create_with_target_V2(uTF8String, v5, v7);

  return v8;
}

+ (void)performCallout:(uint64_t)callout
{
  v2 = a2;
  v3 = objc_opt_self();
  v5 = +[(RBSWorkloop *)v3];
  dispatch_async(v5, v2);
}

+ (void)performCalloutWithServiceClass:(void *)class block:
{
  classCopy = class;
  v5 = objc_opt_self();
  v7 = +[(RBSWorkloop *)v5];
  RBSDispatchAsyncWithQoS(v7, a2, classCopy);
}

+ (id)createBackgroundQueue:(id)queue
{
  queueCopy = queue;
  uTF8String = [queue UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  sharedBackgroundWorkloop = [self sharedBackgroundWorkloop];
  v9 = dispatch_queue_create_with_target_V2(uTF8String, v7, sharedBackgroundWorkloop);

  return v9;
}

+ (void)performBackgroundWork:(id)work
{
  workCopy = work;
  sharedBackgroundWorkloop = [self sharedBackgroundWorkloop];
  dispatch_async(sharedBackgroundWorkloop, workCopy);
}

+ (void)performBackgroundWorkWithServiceClass:(unsigned int)class block:(id)block
{
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, class, 0, block);
  [self performBackgroundWork:v5];
}

+ (id)createSyncingQueue:(id)queue
{
  queueCopy = queue;
  v4 = +[RBSWorkloop sharedInstance];
  v5 = v4[3];

  uTF8String = [queueCopy UTF8String];
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create_with_target_V2(uTF8String, v7, v5);

  return v8;
}

@end