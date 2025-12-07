@interface IMSyncedSettingsManager
+ (IMSyncedSettingsManager)sharedManager;
- (IMSyncedSettingsManager)init;
- (id)settingValueForKey:(int64_t)key;
@end

@implementation IMSyncedSettingsManager

+ (IMSyncedSettingsManager)sharedManager
{
  if (qword_1EB2E9FA0 != -1)
  {
    sub_1A84DF93C();
  }

  v3 = qword_1EB2E9FA8;

  return v3;
}

- (IMSyncedSettingsManager)init
{
  v11.receiver = self;
  v11.super_class = IMSyncedSettingsManager;
  v2 = [(IMSyncedSettingsManager *)&v11 init];
  if (v2)
  {
    v3 = +[IMDaemonController sharedController];
    v4 = [v3 multiplexedConnectionWithLabel:@"IMSyncedSettingsManager" capabilities:0x20000000 context:0];

    [v4 connectWithCompletion:&unk_1F1B6E2A0];
    v5 = [IMSyncedSettingsManager_Impl alloc];
    v6 = +[IMDaemonController sharedController];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = [(IMSyncedSettingsManager_Impl *)v5 initWithDaemonController:v6 connection:v4 notificationCenter:defaultCenter];
    impl = v2->_impl;
    v2->_impl = v8;
  }

  return v2;
}

- (id)settingValueForKey:(int64_t)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259B20;
  v11 = sub_1A825AEBC;
  v12 = 0;
  impl = self->_impl;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82C2CB4;
  v6[3] = &unk_1E78114F8;
  v6[4] = &v7;
  [(IMSyncedSettingsManager_Impl *)impl settingValueForKey:key reply:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end