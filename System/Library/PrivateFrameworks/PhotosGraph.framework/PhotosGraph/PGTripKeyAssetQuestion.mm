@interface PGTripKeyAssetQuestion
- (PGTripKeyAssetQuestion)initWithKeyAssetUUID:(id)d tripName:(id)name isLongTrip:(BOOL)trip localFactoryScore:(double)score;
@end

@implementation PGTripKeyAssetQuestion

- (PGTripKeyAssetQuestion)initWithKeyAssetUUID:(id)d tripName:(id)name isLongTrip:(BOOL)trip localFactoryScore:(double)score
{
  tripCopy = trip;
  v21[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PGTripKeyAssetQuestion;
  v13 = [(PGTripKeyAssetQuestion *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entityIdentifier, d);
    v14->_state = 0;
    v20[0] = @"tripName";
    v20[1] = @"isLongTrip";
    v21[0] = nameCopy;
    v15 = [MEMORY[0x277CCABB0] numberWithBool:tripCopy];
    v21[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    additionalInfo = v14->_additionalInfo;
    v14->_additionalInfo = v16;

    v14->_localFactoryScore = score;
  }

  return v14;
}

@end