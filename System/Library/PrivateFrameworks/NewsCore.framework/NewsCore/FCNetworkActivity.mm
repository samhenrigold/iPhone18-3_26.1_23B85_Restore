@interface FCNetworkActivity
+ (FCNetworkActivity)activityWithLabel:(unsigned int)label;
- (FCNetworkActivity)initWithLabel:(unsigned int)label;
- (NSUUID)token;
- (void)completeActivityWithSuccess:(BOOL)success;
@end

@implementation FCNetworkActivity

+ (FCNetworkActivity)activityWithLabel:(unsigned int)label
{
  v3 = [[FCNetworkActivity alloc] initWithLabel:*&label];

  return v3;
}

- (FCNetworkActivity)initWithLabel:(unsigned int)label
{
  v9.receiver = self;
  v9.super_class = FCNetworkActivity;
  v4 = [(FCNetworkActivity *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_domain = 54;
    v4->_label = label;
    v6 = nw_activity_create();
    activity = v5->_activity;
    v5->_activity = v6;
  }

  return v5;
}

- (void)completeActivityWithSuccess:(BOOL)success
{
  activity = self->_activity;
  if (success)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  MEMORY[0x1EEDD2CF8](activity, v4);
}

- (NSUUID)token
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  v4[1] = 0;
  nw_activity_get_token();
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];

  return v2;
}

@end