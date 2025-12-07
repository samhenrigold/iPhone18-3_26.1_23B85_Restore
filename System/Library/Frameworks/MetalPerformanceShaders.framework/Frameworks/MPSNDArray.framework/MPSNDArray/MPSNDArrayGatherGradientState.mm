@interface MPSNDArrayGatherGradientState
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceGradientIndex:(unint64_t)index;
@end

@implementation MPSNDArrayGatherGradientState

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceGradientIndex:(unint64_t)index
{
  v17[16] = *MEMORY[0x277D85DE8];
  v4 = [arrays objectAtIndexedSubscript:index];
  v5 = *(v4 + *MEMORY[0x277CD73F0]);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + *MEMORY[0x277CD7410]);
    v9 = v7[2];
    v8 = v7[3];
    v11 = *v7;
    v10 = v7[1];
    do
    {
      v13 = v11;
      v14 = v10;
      v15 = v9;
      v16 = v8;
      v17[v6] = *(&v13 + (v6 & 0xF));
      ++v6;
    }

    while (v5 != v6);
  }

  return [MEMORY[0x277CD7268] descriptorWithDataType:*(v4 + *MEMORY[0x277CD73C8]) dimensionCount:v13 dimensionSizes:{v14, v15, v16}];
}

@end