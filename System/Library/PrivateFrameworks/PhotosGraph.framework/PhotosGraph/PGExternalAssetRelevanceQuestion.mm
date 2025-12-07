@interface PGExternalAssetRelevanceQuestion
- (PGExternalAssetRelevanceQuestion)initWithAssetUUID:(id)d momentLocalIdentifiers:(id)identifiers assetInferredAsRelevant:(BOOL)relevant;
@end

@implementation PGExternalAssetRelevanceQuestion

- (PGExternalAssetRelevanceQuestion)initWithAssetUUID:(id)d momentLocalIdentifiers:(id)identifiers assetInferredAsRelevant:(BOOL)relevant
{
  relevantCopy = relevant;
  v22[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = PGExternalAssetRelevanceQuestion;
  v11 = [(PGExternalAssetRelevanceQuestion *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, d);
    v12->_state = 0;
    v21[0] = *MEMORY[0x277D3C8E8];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:relevantCopy];
    v14 = *MEMORY[0x277CD9C90];
    v22[0] = v13;
    v22[1] = identifiersCopy;
    v15 = *MEMORY[0x277D3C8B0];
    v21[1] = v14;
    v21[2] = v15;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*MEMORY[0x277D3C830]];
    v22[2] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
    additionalInfo = v12->_additionalInfo;
    v12->_additionalInfo = v17;
  }

  return v12;
}

@end