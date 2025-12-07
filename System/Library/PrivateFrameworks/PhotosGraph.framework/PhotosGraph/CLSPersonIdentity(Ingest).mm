@interface CLSPersonIdentity(Ingest)
- (id)locationsByAddressTypes;
@end

@implementation CLSPersonIdentity(Ingest)

- (id)locationsByAddressTypes
{
  v13[2] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__CLSPersonIdentity_Ingest__locationsByAddressTypes__block_invoke;
  v10[3] = &unk_278884D88;
  v11 = array;
  v3 = array;
  [self enumerateAddressesOfType:0 asCLLocationsWithBlock:v10];
  array2 = [MEMORY[0x277CBEB18] array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CLSPersonIdentity_Ingest__locationsByAddressTypes__block_invoke_2;
  v8[3] = &unk_278884D88;
  v9 = array2;
  v5 = array2;
  [self enumerateAddressesOfType:1 asCLLocationsWithBlock:v8];
  v12[0] = &unk_284482A48;
  v12[1] = &unk_284482A60;
  v13[0] = v3;
  v13[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  return v6;
}

@end