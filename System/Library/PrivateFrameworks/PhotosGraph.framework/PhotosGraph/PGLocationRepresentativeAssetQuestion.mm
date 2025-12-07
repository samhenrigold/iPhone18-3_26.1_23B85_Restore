@interface PGLocationRepresentativeAssetQuestion
- (PGLocationRepresentativeAssetQuestion)initWithAssetUUID:(id)d locationName:(id)name;
@end

@implementation PGLocationRepresentativeAssetQuestion

- (PGLocationRepresentativeAssetQuestion)initWithAssetUUID:(id)d locationName:(id)name
{
  v16[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PGLocationRepresentativeAssetQuestion;
  v9 = [(PGLocationRepresentativeAssetQuestion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentifier, d);
    v10->_state = 0;
    v15 = @"localizedLocationName";
    v16[0] = nameCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v11;
  }

  return v10;
}

@end