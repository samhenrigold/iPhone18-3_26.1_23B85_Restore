@interface PGFeaturedPhotoQuestion
- (BOOL)isEquivalentToQuestion:(id)question;
- (PGFeaturedPhotoQuestion)initWithAssetUUID:(id)d suggestionType:(unsigned __int16)type suggestionSubtype:(unsigned __int16)subtype;
@end

@implementation PGFeaturedPhotoQuestion

- (BOOL)isEquivalentToQuestion:(id)question
{
  questionCopy = question;
  entityIdentifier = [questionCopy entityIdentifier];
  entityIdentifier2 = [(PGFeaturedPhotoQuestion *)self entityIdentifier];
  if ([entityIdentifier isEqualToString:entityIdentifier2] && (v7 = objc_msgSend(questionCopy, "entityType"), v7 == -[PGFeaturedPhotoQuestion entityType](self, "entityType")))
  {
    type = [questionCopy type];
    v9 = type == [(PGFeaturedPhotoQuestion *)self type];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PGFeaturedPhotoQuestion)initWithAssetUUID:(id)d suggestionType:(unsigned __int16)type suggestionSubtype:(unsigned __int16)subtype
{
  subtypeCopy = subtype;
  typeCopy = type;
  v19[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17.receiver = self;
  v17.super_class = PGFeaturedPhotoQuestion;
  v10 = [(PGFeaturedPhotoQuestion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_entityIdentifier, d);
    v11->_state = 0;
    v18[0] = @"suggestionType";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:typeCopy];
    v18[1] = @"suggestionSubType";
    v19[0] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:subtypeCopy];
    v19[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    additionalInfo = v11->_additionalInfo;
    v11->_additionalInfo = v14;
  }

  return v11;
}

@end