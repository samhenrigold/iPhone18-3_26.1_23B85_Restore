@interface WFAirDropActionUIKitUserInterface
- (id)excludedActivityTypes;
@end

@implementation WFAirDropActionUIKitUserInterface

- (id)excludedActivityTypes
{
  v11[14] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D54760];
  v11[0] = *MEMORY[0x277D54748];
  v11[1] = v2;
  v3 = *MEMORY[0x277D54738];
  v11[2] = *MEMORY[0x277D54770];
  v11[3] = v3;
  v4 = *MEMORY[0x277D54778];
  v11[4] = *MEMORY[0x277D54728];
  v11[5] = v4;
  v5 = *MEMORY[0x277D54718];
  v11[6] = *MEMORY[0x277D54720];
  v11[7] = v5;
  v6 = *MEMORY[0x277D54708];
  v11[8] = *MEMORY[0x277D54780];
  v11[9] = v6;
  v7 = *MEMORY[0x277D54768];
  v11[10] = *MEMORY[0x277D54750];
  v11[11] = v7;
  v8 = *MEMORY[0x277CE8978];
  v11[12] = *MEMORY[0x277D54758];
  v11[13] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:14];

  return v9;
}

@end