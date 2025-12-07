@interface HKMCMenstruationDisplayTypeIdentifiers
@end

@implementation HKMCMenstruationDisplayTypeIdentifiers

void ___HKMCMenstruationDisplayTypeIdentifiers_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = @"DisplayTypeIdentifierIntermenstrualBleeding";
  v2[1] = @"DisplayTypeIdentifierSymptoms";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = _HKMCMenstruationDisplayTypeIdentifiers_displayTypeIdentifiers;
  _HKMCMenstruationDisplayTypeIdentifiers_displayTypeIdentifiers = v0;
}

@end