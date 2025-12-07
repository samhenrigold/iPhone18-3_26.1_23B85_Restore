@interface ASTConnectionRetrieveInstructionalPromptDetails
- (ASTConnectionRetrieveInstructionalPromptDetails)initWithInstructionID:(id)d type:(id)type language:(id)language locale:(id)locale;
@end

@implementation ASTConnectionRetrieveInstructionalPromptDetails

- (ASTConnectionRetrieveInstructionalPromptDetails)initWithInstructionID:(id)d type:(id)type language:(id)language locale:(id)locale
{
  v20[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  typeCopy = type;
  languageCopy = language;
  localeCopy = locale;
  v18.receiver = self;
  v18.super_class = ASTConnectionRetrieveInstructionalPromptDetails;
  v14 = [(ASTMaterializedConnection *)&v18 init];
  if (v14)
  {
    v19[0] = @"instructionId";
    v19[1] = @"type";
    v20[0] = dCopy;
    v20[1] = typeCopy;
    v19[2] = @"language";
    v19[3] = @"locale";
    v20[2] = languageCopy;
    v20[3] = localeCopy;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
    rawBody = v14->_rawBody;
    v14->_rawBody = v15;

    [(ASTMaterializedConnection *)v14 addBody:v14->_rawBody];
  }

  return v14;
}

@end