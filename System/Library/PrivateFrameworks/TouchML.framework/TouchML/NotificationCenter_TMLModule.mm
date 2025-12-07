@interface NotificationCenter_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation NotificationCenter_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1CCA90;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9278 != -1)
  {
    dispatch_once(&qword_2806D9278, block);
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
  [dictionary setObject:&unk_287F55CE8 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"NCUpdateResultNewData" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D00 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"NCUpdateResultNoData" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D18 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"NCUpdateResultFailed" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D30 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"NCWidgetDisplayModeCompact" descriptor:dictionary];
  [dictionary setObject:&unk_287F55D48 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"NCWidgetDisplayModeExpanded" descriptor:dictionary];
}

@end