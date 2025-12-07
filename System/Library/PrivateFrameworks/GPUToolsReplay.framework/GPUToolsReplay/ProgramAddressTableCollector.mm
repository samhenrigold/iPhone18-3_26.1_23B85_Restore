@interface ProgramAddressTableCollector
- (ProgramAddressTableCollector)init;
- (id)binaries;
- (id)initForHarvestingBinaries;
- (id)mappings;
- (void)addBinaries:(id)binaries;
- (void)addBinaryMapping:(id)mapping forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)index forIndex:(unsigned int)forIndex;
- (void)addOtherEncoderFunctionIndex:(unint64_t)index forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)encoderIndex forType:(id)type;
- (void)addProgramAddressTable:(id)table forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)index;
- (void)addSampledCallFunctionIndex:(unint64_t)index;
- (void)addSampledCallFunctionIndex:(unint64_t)index forIndex:(unsigned int)forIndex forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)encoderIndex forType:(id)type;
- (void)dealloc;
@end

@implementation ProgramAddressTableCollector

- (id)binaries
{
  if ((qword_27F09CF90 & 0x200) != 0)
  {
    v4 = [(NSMutableDictionary *)self->_binaries copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (id)mappings
{
  if ((qword_27F09CF90 & 0x200) != 0)
  {
    v4 = [(NSMutableArray *)self->_mappings copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)addOtherEncoderFunctionIndex:(unint64_t)index forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)encoderIndex forType:(id)type
{
  v6 = *&encoderIndex;
  v7 = *&encoder;
  v15[7] = *MEMORY[0x277D85DE8];
  v14[0] = @"mappedAddress";
  v14[1] = @"mappedSize";
  mappings = self->_mappings;
  v14[2] = @"binaryUniqueId";
  v14[3] = @"index";
  v15[0] = &unk_2860D67B8;
  v15[1] = &unk_2860D67B8;
  v15[2] = @"0";
  v15[3] = &unk_2860D67B8;
  v15[4] = type;
  v14[4] = @"type";
  v14[5] = @"encID";
  v9 = MEMORY[0x277CCABB0];
  typeCopy = type;
  v11 = [v9 numberWithUnsignedInt:v7];
  v15[5] = v11;
  v14[6] = @"encIndex";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v6];
  v15[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:7];
  [(NSMutableArray *)mappings addObject:v13];
}

- (void)addSampledCallFunctionIndex:(unint64_t)index forIndex:(unsigned int)forIndex forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)encoderIndex forType:(id)type
{
  v7 = *&encoderIndex;
  v8 = *&encoder;
  v9 = *&forIndex;
  v24[9] = *MEMORY[0x277D85DE8];
  functionIndices = self->_functionIndices;
  v13 = MEMORY[0x277CCABB0];
  typeCopy = type;
  v15 = [v13 numberWithUnsignedLongLong:index];
  [(NSMutableArray *)functionIndices addObject:v15];

  mappings = self->_mappings;
  v23[0] = @"mappedAddress";
  v23[1] = @"mappedSize";
  v24[0] = &unk_2860D67B8;
  v24[1] = &unk_2860D67B8;
  v23[2] = @"binaryUniqueId";
  v23[3] = @"type";
  v24[2] = @"0";
  v24[3] = typeCopy;
  v23[4] = @"encID";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v8];
  v24[4] = v17;
  v23[5] = @"encIndex";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v24[5] = v18;
  v23[6] = @"index";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v24[6] = v19;
  v23[7] = @"drawCallIndex";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drawCallIndex];
  v24[7] = v20;
  v23[8] = @"drawFunctionIndex";
  v21 = [(NSMutableArray *)self->_functionIndices objectAtIndexedSubscript:self->_drawCallIndex];
  v24[8] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:9];
  [(NSMutableArray *)mappings addObject:v22];

  ++self->_drawCallIndex;
}

- (void)addSampledCallFunctionIndex:(unint64_t)index
{
  functionIndices = self->_functionIndices;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:index];
  [(NSMutableArray *)functionIndices addObject:v4];
}

- (void)addProgramAddressTable:(id)table forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)index
{
  v5 = *&index;
  v6 = *&encoder;
  tableCopy = table;
  v9 = tableCopy;
  if (tableCopy)
  {
    if ((qword_27F09CF90 & 0x200) != 0)
    {
      encoderInternalBinaries = [tableCopy encoderInternalBinaries];
      [(ProgramAddressTableCollector *)self addBinaries:encoderInternalBinaries];

      binaryMappingsEncoderInternal = [v9 binaryMappingsEncoderInternal];
      [(ProgramAddressTableCollector *)self addBinaryMapping:binaryMappingsEncoderInternal forEncoder:v6 atEncoderIndex:v5 forIndex:0xFFFFFFFFLL];

      binaryMappingsPerInvocation = [v9 binaryMappingsPerInvocation];
      v13 = [binaryMappingsPerInvocation count];

      if (v13)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          binaryMappingsPerInvocation2 = [v9 binaryMappingsPerInvocation];
          v17 = [binaryMappingsPerInvocation2 objectAtIndexedSubscript:v14];

          if ([v17 count])
          {
            v23 = v14 | (v6 << 32);
            v18 = *find_entry(self->_addresses, &v23, 8uLL, 0);
            if (!v18 || !*(v18 + 32))
            {
              [(ProgramAddressTableCollector *)self addBinaryMapping:v17 forEncoder:v6 atEncoderIndex:v5 forIndex:v15 - 1];
              ++self->_drawCallIndex;
              v19 = apr_palloc(self->_addressPool, 8uLL);
              *v19 = v23;
              apr_hash_set(self->_addresses, v19, 8, v19);
            }
          }

          v14 = v15;
          binaryMappingsPerInvocation3 = [v9 binaryMappingsPerInvocation];
          v21 = [binaryMappingsPerInvocation3 count];
        }

        while (v21 > v15++);
      }
    }
  }
}

- (void)addBinaryMapping:(id)mapping forEncoder:(unsigned int)encoder atEncoderIndex:(unsigned int)index forIndex:(unsigned int)forIndex
{
  v34[9] = *MEMORY[0x277D85DE8];
  mappingCopy = mapping;
  if ([mappingCopy count])
  {
    v7 = 0;
    v8 = 1;
    v24 = mappingCopy;
    do
    {
      v9 = [mappingCopy objectAtIndexedSubscript:v7];
      binaryUniqueId = [v9 binaryUniqueId];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llx", binaryUniqueId];
      if (v11)
      {
        v12 = [(NSMutableDictionary *)self->_binaryTypes objectForKeyedSubscript:v11];
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = @"unknown";
        }

        mappings = self->_mappings;
        v33[0] = @"mappedAddress";
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "mappedAddress")}];
        v34[0] = v31;
        v33[1] = @"mappedSize";
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "mappedSize")}];
        v34[1] = v30;
        v34[2] = v11;
        v33[2] = @"binaryUniqueId";
        v33[3] = @"type";
        v32 = v13;
        v34[3] = v13;
        v33[4] = @"encID";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:encoder];
        v34[4] = v14;
        v33[5] = @"encIndex";
        v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:index];
        v34[5] = v15;
        v33[6] = @"index";
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:forIndex];
        v34[6] = v16;
        v33[7] = @"drawCallIndex";
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_drawCallIndex];
        v34[7] = v17;
        v33[8] = @"drawFunctionIndex";
        drawCallIndex = self->_drawCallIndex;
        v19 = [(NSMutableArray *)self->_functionIndices count];
        v20 = &unk_2860D67A0;
        if (v19 > drawCallIndex)
        {
          v23 = [(NSMutableArray *)self->_functionIndices objectAtIndexedSubscript:self->_drawCallIndex];
          v20 = v23;
        }

        v34[8] = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];
        [(NSMutableArray *)mappings addObject:v21];

        if (v19 > drawCallIndex)
        {
        }

        mappingCopy = v24;
      }

      v7 = v8;
    }

    while ([mappingCopy count] > v8++);
  }
}

- (void)addBinaries:(id)binaries
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = binaries;
  v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v18)
  {
    v17 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v6 = [obj objectForKeyedSubscript:v5];
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v22;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v22 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v21 + 1) + 8 * i);
              uniqueIdentifier = [v11 uniqueIdentifier];
              v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%016llx", uniqueIdentifier];
              [(NSMutableDictionary *)self->_binaryTypes setObject:v5 forKeyedSubscript:v13];
              binaries = self->_binaries;
              if (binaries)
              {
                v15 = [(NSMutableDictionary *)binaries objectForKeyedSubscript:v13];

                if (!v15)
                {
                  binary = [v11 binary];
                  [(NSMutableDictionary *)self->_binaries setObject:binary forKeyedSubscript:v13];
                }
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v8);
        }

        v4 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v18);
  }
}

- (void)dealloc
{
  addressPool = self->_addressPool;
  if (addressPool)
  {
    apr_pool_destroy(addressPool);
  }

  v4.receiver = self;
  v4.super_class = ProgramAddressTableCollector;
  [(ProgramAddressTableCollector *)&v4 dealloc];
}

- (id)initForHarvestingBinaries
{
  v13.receiver = self;
  v13.super_class = ProgramAddressTableCollector;
  v2 = [(ProgramAddressTableCollector *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    binaryTypes = v2->_binaryTypes;
    v2->_binaryTypes = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    mappings = v2->_mappings;
    v2->_mappings = array;

    v2->_drawCallIndex = 0;
    v7 = objc_opt_new();
    binaries = v2->_binaries;
    v2->_binaries = v7;

    v9 = objc_opt_new();
    functionIndices = v2->_functionIndices;
    v2->_functionIndices = v9;

    apr_pool_create_ex(&v2->_addressPool, 0, 0, v11);
    v2->_addresses = apr_hash_make(v2->_addressPool);
  }

  return v2;
}

- (ProgramAddressTableCollector)init
{
  v13.receiver = self;
  v13.super_class = ProgramAddressTableCollector;
  v2 = [(ProgramAddressTableCollector *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    binaryTypes = v2->_binaryTypes;
    v2->_binaryTypes = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    mappings = v2->_mappings;
    v2->_mappings = array;

    v7 = objc_opt_new();
    binaries = v2->_binaries;
    v2->_binaries = v7;

    v9 = objc_opt_new();
    functionIndices = v2->_functionIndices;
    v2->_functionIndices = v9;

    v2->_drawCallIndex = 0;
    apr_pool_create_ex(&v2->_addressPool, 0, 0, v11);
    v2->_addresses = apr_hash_make(v2->_addressPool);
  }

  return v2;
}

@end