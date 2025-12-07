@interface MSAccountToEmailProvider
+ (int64_t)accountStatisticsKindToIdentifier:(id)identifier;
@end

@implementation MSAccountToEmailProvider

+ (int64_t)accountStatisticsKindToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (accountStatisticsKindToIdentifier__onceToken != -1)
  {
    +[MSAccountToEmailProvider accountStatisticsKindToIdentifier:];
  }

  v4 = [accountStatisticsKindToIdentifier___statisticsKindToAccountTypeMapping objectForKeyedSubscript:identifierCopy];
  v5 = v4;
  if (v4)
  {
    intValue = [v4 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

void __62__MSAccountToEmailProvider_accountStatisticsKindToIdentifier___block_invoke()
{
  v3[10] = *MEMORY[0x277D85DE8];
  v2[0] = @"aol";
  v2[1] = @"icloud";
  v3[0] = &unk_286935398;
  v3[1] = &unk_2869353B0;
  v2[2] = @"hotmail";
  v2[3] = @"exchange";
  v3[2] = &unk_2869353C8;
  v3[3] = &unk_2869353E0;
  v2[4] = @"gmail";
  v2[5] = @"netease";
  v3[4] = &unk_2869353F8;
  v3[5] = &unk_286935410;
  v2[6] = @"qq";
  v2[7] = @"yahoo";
  v3[6] = &unk_286935428;
  v3[7] = &unk_286935440;
  v2[8] = @"imap";
  v2[9] = @"pop";
  v3[8] = &unk_286935458;
  v3[9] = &unk_286935470;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:10];
  v1 = accountStatisticsKindToIdentifier___statisticsKindToAccountTypeMapping;
  accountStatisticsKindToIdentifier___statisticsKindToAccountTypeMapping = v0;
}

@end