@interface PGAgeCategoryQuestion
- (PGAgeCategoryQuestion)initWithPersonUUID:(id)d ageCategory:(unint64_t)category localFactoryScore:(double)score;
@end

@implementation PGAgeCategoryQuestion

- (PGAgeCategoryQuestion)initWithPersonUUID:(id)d ageCategory:(unint64_t)category localFactoryScore:(double)score
{
  v18[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16.receiver = self;
  v16.super_class = PGAgeCategoryQuestion;
  v10 = [(PGAgeCategoryQuestion *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_entityIdentifier, d);
    v11->_state = 0;
    v11->_localFactoryScore = score;
    v17 = @"ageCategory";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
    v18[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    additionalInfo = v11->_additionalInfo;
    v11->_additionalInfo = v13;
  }

  return v11;
}

@end