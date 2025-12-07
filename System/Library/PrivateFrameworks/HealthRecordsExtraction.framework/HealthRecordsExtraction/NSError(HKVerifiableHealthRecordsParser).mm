@interface NSError(HKVerifiableHealthRecordsParser)
- (id)mappedError;
@end

@implementation NSError(HKVerifiableHealthRecordsParser)

- (id)mappedError
{
  v18[1] = *MEMORY[0x277D85DE8];
  domain = [self domain];
  v3 = [domain isEqualToString:@"com.apple.health.records.extraction"];

  if (!v3)
  {
    goto LABEL_5;
  }

  code = [self code];
  if (code == 104)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277D12340];
    v15 = *MEMORY[0x277CCA7E8];
    selfCopy = self;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v15 count:1];
    v8 = v12;
    v9 = v13;
    v10 = 1;
    goto LABEL_7;
  }

  if (code != 103)
  {
LABEL_5:
    selfCopy2 = self;
    goto LABEL_8;
  }

  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D12340];
  v17 = *MEMORY[0x277CCA7E8];
  v18[0] = self;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v8 = v5;
  v9 = v6;
  v10 = 2;
LABEL_7:
  selfCopy2 = [v8 errorWithDomain:v9 code:v10 userInfo:v7];

LABEL_8:

  return selfCopy2;
}

@end