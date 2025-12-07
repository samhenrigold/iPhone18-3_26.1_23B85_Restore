@interface PGFrequentLocationQuestion
- (PGFrequentLocationQuestion)initWithAssetUUID:(id)d location:(id)location locationTypeName:(id)name;
@end

@implementation PGFrequentLocationQuestion

- (PGFrequentLocationQuestion)initWithAssetUUID:(id)d location:(id)location locationTypeName:(id)name
{
  v30[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  locationCopy = location;
  nameCopy = name;
  v27.receiver = self;
  v27.super_class = PGFrequentLocationQuestion;
  v12 = [(PGFrequentLocationQuestion *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, d);
    [*MEMORY[0x277D3C8C8] doubleValue];
    v13->_localFactoryScore = v14;
    v13->_state = 0;
    v15 = *MEMORY[0x277D3C930];
    v30[0] = *MEMORY[0x277D3C928];
    v30[1] = v15;
    v16 = *MEMORY[0x277D3C900];
    v30[2] = *MEMORY[0x277D3C938];
    v30[3] = v16;
    v30[4] = *MEMORY[0x277D3C918];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:5];
    [locationCopy coordinate];
    v19 = v18;
    v20 = *MEMORY[0x277D3C8F8];
    v29[0] = v17;
    v21 = *MEMORY[0x277D3C908];
    v28[0] = v20;
    v28[1] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v29[1] = v22;
    v28[2] = *MEMORY[0x277D3C910];
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v28[3] = *MEMORY[0x277D3C920];
    v29[2] = v23;
    v29[3] = nameCopy;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
    additionalInfo = v13->_additionalInfo;
    v13->_additionalInfo = v24;
  }

  return v13;
}

@end