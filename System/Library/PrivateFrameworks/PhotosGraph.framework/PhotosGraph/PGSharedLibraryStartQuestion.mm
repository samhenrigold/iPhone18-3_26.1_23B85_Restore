@interface PGSharedLibraryStartQuestion
- (PGSharedLibraryStartQuestion)init;
@end

@implementation PGSharedLibraryStartQuestion

- (PGSharedLibraryStartQuestion)init
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PGSharedLibraryStartQuestion;
  v2 = [(PGSharedLibraryStartQuestion *)&v8 init];
  v3 = v2;
  if (v2)
  {
    entityIdentifier = v2->_entityIdentifier;
    v2->_entityIdentifier = @"SharedLibraryStartQuestion";

    v3->_localFactoryScore = 1.0;
    v3->_state = 0;
    v9 = *MEMORY[0x277D3C8D0];
    v10[0] = @"?";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    additionalInfo = v3->_additionalInfo;
    v3->_additionalInfo = v5;
  }

  return v3;
}

@end