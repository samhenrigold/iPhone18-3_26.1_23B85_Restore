@interface PGTripTitlingQuestion
- (PGTripTitlingQuestion)initWithTripTitle:(id)title legacyTripTitle:(id)tripTitle keyAssetUUID:(id)d localFactoryScore:(double)score duplicatedTitles:(BOOL)titles;
@end

@implementation PGTripTitlingQuestion

- (PGTripTitlingQuestion)initWithTripTitle:(id)title legacyTripTitle:(id)tripTitle keyAssetUUID:(id)d localFactoryScore:(double)score duplicatedTitles:(BOOL)titles
{
  titlesCopy = titles;
  v26[4] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  tripTitleCopy = tripTitle;
  dCopy = d;
  v24.receiver = self;
  v24.super_class = PGTripTitlingQuestion;
  v15 = [(PGTripTitlingQuestion *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_entityIdentifier, d);
    v16->_state = 0;
    v16->_localFactoryScore = score;
    v17 = *MEMORY[0x277D3C8B0];
    v25[0] = *MEMORY[0x277D3CA08];
    v25[1] = v17;
    v26[0] = titleCopy;
    v26[1] = &unk_284483E28;
    v18 = *MEMORY[0x277D3C9F8];
    v26[2] = tripTitleCopy;
    v19 = *MEMORY[0x277D3C9E0];
    v25[2] = v18;
    v25[3] = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithBool:titlesCopy];
    v26[3] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
    additionalInfo = v16->_additionalInfo;
    v16->_additionalInfo = v21;
  }

  return v16;
}

@end