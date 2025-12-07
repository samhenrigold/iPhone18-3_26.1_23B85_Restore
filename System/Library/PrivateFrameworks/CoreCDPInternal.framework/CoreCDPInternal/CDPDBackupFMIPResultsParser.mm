@interface CDPDBackupFMIPResultsParser
- (id)resultsDictionaryFromRecoveryResult:(id)result error:(id *)error;
@end

@implementation CDPDBackupFMIPResultsParser

- (id)resultsDictionaryFromRecoveryResult:(id)result error:(id *)error
{
  v9[1] = *MEMORY[0x277D85DE8];
  recoveredInfo = [result recoveredInfo];
  v5 = [recoveredInfo objectForKeyedSubscript:*MEMORY[0x277CFB2F8]];

  if (v5)
  {
    v8 = *MEMORY[0x277CFD3D8];
    v9[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  return v6;
}

@end