@interface PGPetQuestion
- (PGPetQuestion)initWithPetUUID:(id)d displayString:(id)string localFactoryScore:(double)score;
@end

@implementation PGPetQuestion

- (PGPetQuestion)initWithPetUUID:(id)d displayString:(id)string localFactoryScore:(double)score
{
  v18[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = PGPetQuestion;
  v11 = [(PGPetQuestion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, d);
    v12->_state = 0;
    v12->_localFactoryScore = score;
    if (stringCopy)
    {
      v12->_entityType = 4;
      v12->_displayType = 6;
      v17 = *MEMORY[0x277D3C8D0];
      v18[0] = stringCopy;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    }

    else
    {
      v12->_entityType = 1;
      v12->_displayType = 2;
      v13 = MEMORY[0x277CBEC10];
    }

    additionalInfo = v12->_additionalInfo;
    v12->_additionalInfo = v13;
  }

  return v12;
}

@end