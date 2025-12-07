@interface PGMemoryQualityQuestion
- (PGMemoryQualityQuestion)initWithMemory:(id)memory localFactoryScore:(double)score;
@end

@implementation PGMemoryQualityQuestion

- (PGMemoryQualityQuestion)initWithMemory:(id)memory localFactoryScore:(double)score
{
  v17[2] = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  v15.receiver = self;
  v15.super_class = PGMemoryQualityQuestion;
  v7 = [(PGMemoryQualityQuestion *)&v15 init];
  if (v7)
  {
    uuid = [memoryCopy uuid];
    entityIdentifier = v7->_entityIdentifier;
    v7->_entityIdentifier = uuid;

    v7->_state = 0;
    v7->_localFactoryScore = score;
    v16[0] = @"category";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(memoryCopy, "category")}];
    v16[1] = @"subcategory";
    v17[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(memoryCopy, "subcategory")}];
    v17[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    additionalInfo = v7->_additionalInfo;
    v7->_additionalInfo = v12;
  }

  return v7;
}

@end