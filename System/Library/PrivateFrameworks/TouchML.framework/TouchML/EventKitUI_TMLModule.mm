@interface EventKitUI_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation EventKitUI_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F198D20;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D90B0 != -1)
  {
    dispatch_once(&qword_2806D90B0, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55550 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"EKEventEditViewActionCanceled" descriptor:dictionary];
  [dictionary setObject:&unk_287F55568 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventEditViewActionSaved" descriptor:dictionary];
  [dictionary setObject:&unk_287F55580 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"EKEventEditViewActionDeleted" descriptor:dictionary];
}

@end