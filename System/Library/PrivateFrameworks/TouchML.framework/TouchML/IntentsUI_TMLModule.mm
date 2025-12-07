@interface IntentsUI_TMLModule
+ (BOOL)loadModule;
+ (void)initializeJSContext:(id)context;
@end

@implementation IntentsUI_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1CDB00;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9288 != -1)
  {
    dispatch_once(&qword_2806D9288, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  v3 = MEMORY[0x277CBEB38];
  contextCopy = context;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55DD8 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [contextCopy defineProperty:@"INUIAddVoiceShortcutButtonStyleWhite" descriptor:dictionary];
  [dictionary setObject:&unk_287F55DF0 forKeyedSubscript:v5];
  [contextCopy defineProperty:@"INUIAddVoiceShortcutButtonStyleWhiteOutline" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E08 forKeyedSubscript:v5];
  [contextCopy defineProperty:@"INUIAddVoiceShortcutButtonStyleBlack" descriptor:dictionary];
  [dictionary setObject:&unk_287F55E20 forKeyedSubscript:v5];
  [contextCopy defineProperty:@"INUIAddVoiceShortcutButtonStyleBlackOutline" descriptor:dictionary];
}

@end