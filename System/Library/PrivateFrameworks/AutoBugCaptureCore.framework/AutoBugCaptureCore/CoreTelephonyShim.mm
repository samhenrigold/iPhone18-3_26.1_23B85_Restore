@interface CoreTelephonyShim
+ (id)sharedInstance;
- (CoreTelephonyShim)init;
- (void)addDelegate:(id)delegate;
- (void)carrierBundleChange:(id)change;
- (void)currentDataSimChanged:(id)changed;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)subscriptionInfoDidChange;
@end

@implementation CoreTelephonyShim

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__CoreTelephonyShim_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __35__CoreTelephonyShim_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (CoreTelephonyShim)init
{
  v12.receiver = self;
  v12.super_class = CoreTelephonyShim;
  v2 = [(CoreTelephonyShim *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.autobugcapture.coretelephonyshim", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [MEMORY[0x277CBEB58] set];
    delegates = v2->_delegates;
    v2->_delegates = v6;

    v8 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_queue];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v8;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    v10 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(CoreTelephonyClient *)self->_coreTelephonyClient setDelegate:0];
  [(NSMutableSet *)self->_delegates removeAllObjects];
  v3.receiver = self;
  v3.super_class = CoreTelephonyShim;
  [(CoreTelephonyShim *)&v3 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->_delegates addObject:delegateCopy];
  }

  objc_sync_exit(v4);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  if (delegateCopy)
  {
    [(NSMutableSet *)self->_delegates removeObject:delegateCopy];
  }

  objc_sync_exit(v4);
}

- (void)subscriptionInfoDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = self->_delegates;
  objc_sync_enter(v3);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_delegates;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 subscriptionInfoDidChange];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (void)currentDataSimChanged:(id)changed
{
  v16 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = self->_delegates;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_delegates;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 currentDataSimChanged:{changedCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (void)carrierBundleChange:(id)change
{
  v16 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = self->_delegates;
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_delegates;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 carrierBundleChange:{changeCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

@end