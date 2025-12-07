@interface LNAppShortcutDynamicOptionsProviderReference
@end

@implementation LNAppShortcutDynamicOptionsProviderReference

void __75__LNAppShortcutDynamicOptionsProviderReference_TopHits__appShortcutMapping__block_invoke()
{
  v15[5] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_28509B960;
  v12[1] = &unk_28509B978;
  v13[0] = @"WFStartCallActionCollectionIdentifierFavorites";
  v13[1] = @"WFStartCallActionCollectionIdentifierRecents";
  v14[0] = &unk_28509B948;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v0;
  v14[1] = &unk_28509B990;
  v10 = &unk_28509B960;
  v11 = *MEMORY[0x277D7A548];
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v1;
  v14[2] = &unk_28509B9A8;
  v8 = &unk_28509B960;
  v9 = *MEMORY[0x277D7A550];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v15[2] = v2;
  v14[3] = &unk_28509B9C0;
  v6 = &unk_28509B960;
  v7 = @"WFStartCallActionCollectionIdentifierFaceTimeRecents";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  v14[4] = &unk_28509B9D8;
  v15[3] = v3;
  v15[4] = MEMORY[0x277CBEC10];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  v5 = appShortcutMapping_mapping;
  appShortcutMapping_mapping = v4;
}

@end