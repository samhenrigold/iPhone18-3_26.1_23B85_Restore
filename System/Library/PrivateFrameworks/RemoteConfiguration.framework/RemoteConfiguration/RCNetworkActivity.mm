@interface RCNetworkActivity
+ (RCNetworkActivity)activityWithDomain:(unsigned int)domain label:(unsigned int)label parentToken:(id)token;
- (RCNetworkActivity)initWithDomain:(unsigned int)domain label:(unsigned int)label parentToken:(id)token;
- (void)attachActivityToTask:(id)task;
- (void)completeActivityWithSuccess:(BOOL)success;
- (void)startActivity;
@end

@implementation RCNetworkActivity

+ (RCNetworkActivity)activityWithDomain:(unsigned int)domain label:(unsigned int)label parentToken:(id)token
{
  v5 = *&label;
  v6 = *&domain;
  tokenCopy = token;
  v8 = [[RCNetworkActivity alloc] initWithDomain:v6 label:v5 parentToken:tokenCopy];

  return v8;
}

- (RCNetworkActivity)initWithDomain:(unsigned int)domain label:(unsigned int)label parentToken:(id)token
{
  v17[2] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v16.receiver = self;
  v16.super_class = RCNetworkActivity;
  v10 = [(RCNetworkActivity *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_domain = domain;
    v10->_label = label;
    objc_storeStrong(&v10->_parentToken, token);
    v12 = nw_activity_create();
    activity = v11->_activity;
    v11->_activity = v12;

    if (tokenCopy)
    {
      v17[0] = 0;
      v17[1] = 0;
      [tokenCopy getUUIDBytes:v17];
      v14 = nw_activity_create_from_token();
      nw_activity_set_parent_activity();
    }
  }

  return v11;
}

- (void)startActivity
{
  accessLock = [(RCNetworkActivity *)self accessLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__RCNetworkActivity_startActivity__block_invoke;
  v4[3] = &unk_27822F2B0;
  v4[4] = self;
  [accessLock performWithLockSync:v4];
}

- (void)completeActivityWithSuccess:(BOOL)success
{
  accessLock = [(RCNetworkActivity *)self accessLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__RCNetworkActivity_completeActivityWithSuccess___block_invoke;
  v6[3] = &unk_27822FE90;
  v6[4] = self;
  successCopy = success;
  [accessLock performWithLockSync:v6];
}

uint64_t __49__RCNetworkActivity_completeActivityWithSuccess___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  return MEMORY[0x282126560](*(*(a1 + 32) + 8), v1);
}

- (void)attachActivityToTask:(id)task
{
  taskCopy = task;
  accessLock = [(RCNetworkActivity *)self accessLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RCNetworkActivity_attachActivityToTask___block_invoke;
  v7[3] = &unk_27822F130;
  v8 = taskCopy;
  selfCopy = self;
  v6 = taskCopy;
  [accessLock performWithLockSync:v7];
}

@end