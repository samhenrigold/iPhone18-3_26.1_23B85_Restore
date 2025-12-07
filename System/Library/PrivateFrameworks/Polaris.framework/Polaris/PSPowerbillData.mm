@interface PSPowerbillData
- (NSArray)perGraphData;
@end

@implementation PSPowerbillData

- (NSArray)perGraphData
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"graphName" ascending:1 selector:sel_caseInsensitiveCompare_];
  dataByGraph = [(PSPowerbillData *)self dataByGraph];
  allValues = [dataByGraph allValues];
  v9[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v7 = [allValues sortedArrayUsingDescriptors:v6];

  return v7;
}

@end