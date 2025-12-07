@interface Messages_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation Messages_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1A2888;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D90D0 != -1)
  {
    dispatch_once(&qword_2806D90D0, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2BB50 forKeyedSubscript:@"MSMessage"];
  [contextCopy setObject:&unk_287F2BB70 forKeyedSubscript:@"MSMessageTemplateLayout"];
  [contextCopy setObject:&unk_287F2BB90 forKeyedSubscript:@"MSMessageLiveLayout"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:&unk_287F55628 forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"MSMessagesAppPresentationStyleCompact" descriptor:dictionary];
  [dictionary setObject:&unk_287F55640 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessagesAppPresentationStyleExpanded" descriptor:dictionary];
  [dictionary setObject:&unk_287F55658 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessagesAppPresentationStyleTranscript" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD68F0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSStickersErrorDomain" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CD68E8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessagesErrorDomain" descriptor:dictionary];
  [dictionary setObject:&unk_287F55670 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeFileNotFound" descriptor:dictionary];
  [dictionary setObject:&unk_287F55688 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeFileUnreadable" descriptor:dictionary];
  [dictionary setObject:&unk_287F556A0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeImproperFileType" descriptor:dictionary];
  [dictionary setObject:&unk_287F556B8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeImproperFileURL" descriptor:dictionary];
  [dictionary setObject:&unk_287F556D0 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeStickerFileImproperFileAttributes" descriptor:dictionary];
  [dictionary setObject:&unk_287F556E8 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeStickerFileImproperFileSize" descriptor:dictionary];
  [dictionary setObject:&unk_287F55700 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeStickerFileImproperFileFormat" descriptor:dictionary];
  [dictionary setObject:&unk_287F55718 forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"MSMessageErrorCodeURLExceedsMaxSize" descriptor:dictionary];
}

@end