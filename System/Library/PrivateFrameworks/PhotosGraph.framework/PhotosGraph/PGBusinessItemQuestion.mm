@interface PGBusinessItemQuestion
- (PGBusinessItemQuestion)initWithAssetUUID:(id)d businessUUID:(id)iD businessName:(id)name localFactoryScore:(double)score;
@end

@implementation PGBusinessItemQuestion

- (PGBusinessItemQuestion)initWithAssetUUID:(id)d businessUUID:(id)iD businessName:(id)name localFactoryScore:(double)score
{
  v21[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PGBusinessItemQuestion;
  v14 = [(PGBusinessItemQuestion *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityIdentifier, d);
    v15->_localFactoryScore = score;
    v15->_state = 0;
    v20[0] = @"businessUUID";
    v20[1] = @"businessName";
    v21[0] = iDCopy;
    v21[1] = nameCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v16;
  }

  return v15;
}

@end