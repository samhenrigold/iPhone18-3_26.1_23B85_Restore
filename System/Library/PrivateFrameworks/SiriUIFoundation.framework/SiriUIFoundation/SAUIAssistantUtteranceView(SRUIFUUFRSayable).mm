@interface SAUIAssistantUtteranceView(SRUIFUUFRSayable)
- (id)sruif__uufrSaid;
@end

@implementation SAUIAssistantUtteranceView(SRUIFUUFRSayable)

- (id)sruif__uufrSaid
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D5AC48]);
  dialogIdentifier = [self dialogIdentifier];
  [v2 setDialogIdentifier:dialogIdentifier];

  aceId = [self aceId];
  [v2 setAceViewID:aceId];

  encodedClassName = [self encodedClassName];
  [v2 setAceViewClass:encodedClassName];

  v8[0] = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

@end