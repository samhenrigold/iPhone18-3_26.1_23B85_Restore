@interface PGPersonActivityMeaningQuestion
- (PGPersonActivityMeaningQuestion)initWithMeaningLabel:(id)label assetUUID:(id)d localFactoryScore:(double)score;
@end

@implementation PGPersonActivityMeaningQuestion

- (PGPersonActivityMeaningQuestion)initWithMeaningLabel:(id)label assetUUID:(id)d localFactoryScore:(double)score
{
  v17[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = PGPersonActivityMeaningQuestion;
  v10 = [(PGPersonActivityMeaningQuestion *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_entityIdentifier, d);
    v11->_state = 0;
    v11->_localFactoryScore = score;
    v16 = @"personActivityMeaningLabel";
    v17[0] = labelCopy;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    additionalInfo = v11->_additionalInfo;
    v11->_additionalInfo = v12;
  }

  return v11;
}

@end