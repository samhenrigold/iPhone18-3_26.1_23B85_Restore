@interface ACDAccountSync
+ (id)accountSyncUnsupportedTypes;
+ (id)sharedAccountSyncServer;
- (ACDAccountSync)init;
- (void)dealloc;
@end

@implementation ACDAccountSync

+ (id)sharedAccountSyncServer
{
  v2 = _ACDLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[ACDAccountSync sharedAccountSyncServer];
  }

  return 0;
}

+ (id)accountSyncUnsupportedTypes
{
  v11[14] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8C38];
  v11[0] = *MEMORY[0x277CB8BB0];
  v11[1] = v2;
  v3 = *MEMORY[0x277CB8BE8];
  v11[2] = *MEMORY[0x277CB8C58];
  v11[3] = v3;
  v4 = *MEMORY[0x277CB8D28];
  v11[4] = *MEMORY[0x277CB8CA0];
  v11[5] = v4;
  v5 = *MEMORY[0x277CB8C18];
  v11[6] = *MEMORY[0x277CB8D00];
  v11[7] = v5;
  v6 = *MEMORY[0x277CB8D30];
  v11[8] = *MEMORY[0x277CB8C30];
  v11[9] = v6;
  v7 = *MEMORY[0x277CB8D50];
  v11[10] = *MEMORY[0x277CB8D20];
  v11[11] = v7;
  v8 = *MEMORY[0x277CB8CC8];
  v11[12] = *MEMORY[0x277CB8D18];
  v11[13] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:14];

  return v9;
}

- (ACDAccountSync)init
{
  v3.receiver = self;
  v3.super_class = ACDAccountSync;
  return [(ACDAccountSync *)&v3 init];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ACDAccountSync;
  [(ACDAccountSync *)&v4 dealloc];
}

@end