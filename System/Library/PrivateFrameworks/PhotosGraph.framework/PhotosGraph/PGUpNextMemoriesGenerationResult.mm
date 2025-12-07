@interface PGUpNextMemoriesGenerationResult
- (NSDictionary)dictionaryRepresentation;
- (PGUpNextMemoriesGenerationResult)initWithMemoryLocalIdentifiers:(id)identifiers debugInfo:(id)info;
@end

@implementation PGUpNextMemoriesGenerationResult

- (NSDictionary)dictionaryRepresentation
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3B138];
  v6[0] = *MEMORY[0x277D3B140];
  v6[1] = v2;
  debugInfo = self->_debugInfo;
  v7[0] = self->_memoryLocalIdentifiers;
  v7[1] = debugInfo;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (PGUpNextMemoriesGenerationResult)initWithMemoryLocalIdentifiers:(id)identifiers debugInfo:(id)info
{
  identifiersCopy = identifiers;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = PGUpNextMemoriesGenerationResult;
  v9 = [(PGUpNextMemoriesGenerationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_memoryLocalIdentifiers, identifiers);
    objc_storeStrong(&v10->_debugInfo, info);
  }

  return v10;
}

@end