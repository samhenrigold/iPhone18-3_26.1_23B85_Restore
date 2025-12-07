@interface INSearchCallHistoryIntent(APUIKeyPerson)
- (id)apui_keyPeople;
@end

@implementation INSearchCallHistoryIntent(APUIKeyPerson)

- (id)apui_keyPeople
{
  v5[1] = *MEMORY[0x277D85DE8];
  recipient = [self recipient];
  v2 = recipient;
  if (recipient)
  {
    v5[0] = recipient;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end