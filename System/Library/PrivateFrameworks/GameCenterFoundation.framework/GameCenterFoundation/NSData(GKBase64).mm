@interface NSData(GKBase64)
- (id)_gkZippedDictionaryValue;
@end

@implementation NSData(GKBase64)

- (id)_gkZippedDictionaryValue
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v1 = [self decompressedDataUsingAlgorithm:3 error:&v10];
  v2 = v10;
  v3 = MEMORY[0x277CBEB98];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v5 = [v3 setWithArray:v4];

  v9 = v2;
  v6 = [MEMORY[0x277CCAAC8] _strictlyUnarchivedObjectOfClasses:v5 fromData:v1 error:&v9];
  v7 = v9;

  return v6;
}

@end