@interface SiriCoreNWContext
+ (id)sharedInstance;
- (SiriCoreNWContext)init;
- (id)_init;
@end

@implementation SiriCoreNWContext

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SiriCoreNWContext;
  v2 = [(SiriCoreNWContext *)&v6 init];
  if (v2)
  {
    v3 = nw_context_create();
    context = v2->_context;
    v2->_context = v3;

    nw_context_set_scheduling_mode();
    nw_context_set_isolate_protocol_stack();
    nw_context_set_privacy_level();
    nw_context_set_isolate_protocol_cache();
  }

  return v2;
}

- (SiriCoreNWContext)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SiriCoreNWContext.m" lineNumber:29 description:{@"%s is marked as NS_UNAVAILABLE. Use the designated initializer instead.", "-[SiriCoreNWContext init]"}];

  return 0;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_640);
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __35__SiriCoreNWContext_sharedInstance__block_invoke()
{
  v0 = [[SiriCoreNWContext alloc] _init];
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end