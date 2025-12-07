@interface ACAccountTypeForSyncAccountType
@end

@implementation ACAccountTypeForSyncAccountType

id ___ACAccountTypeForSyncAccountType_block_invoke()
{
  v6[7] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CB8CF8];
  v5[0] = @"SMTPAccount";
  v5[1] = @"iToolsAccount";
  v1 = *MEMORY[0x277CB8BA0];
  v6[0] = v0;
  v6[1] = v1;
  v5[2] = @"YahooAccount";
  v5[3] = @"GmailAccount";
  v2 = *MEMORY[0x277CB8C40];
  v6[2] = *MEMORY[0x277CB8D38];
  v6[3] = v2;
  v5[4] = @".Mac";
  v5[5] = @"IMAPAccount";
  v3 = *MEMORY[0x277CB8C60];
  v6[4] = v1;
  v6[5] = v3;
  v5[6] = @"POPAccount";
  v6[6] = *MEMORY[0x277CB8CD8];
  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:7];
  _ACAccountTypeForSyncAccountType_accountTypeForAccountClass = result;
  return result;
}

@end