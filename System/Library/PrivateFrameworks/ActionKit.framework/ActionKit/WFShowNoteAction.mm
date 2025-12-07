@interface WFShowNoteAction
- (id)localizedKeywordsWithContext:(id)context;
- (id)serializationKeysByParameter;
@end

@implementation WFShowNoteAction

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"show|apple", @"show|apple");
  v5 = [contextCopy localize:v4];

  v6 = [v5 componentsSeparatedByString:@"|"];

  return v6;
}

- (id)serializationKeysByParameter
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D7CD70];
  v5[0] = *MEMORY[0x277D7CD78];
  v5[1] = v2;
  v6[0] = @"WFInput";
  v6[1] = @"WFInput";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

@end