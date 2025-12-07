@interface ASTConnectionSelectSelfServiceSuite
- (ASTConnectionSelectSelfServiceSuite)initWithSuiteID:(id)d;
@end

@implementation ASTConnectionSelectSelfServiceSuite

- (ASTConnectionSelectSelfServiceSuite)initWithSuiteID:(id)d
{
  v12[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v10.receiver = self;
  v10.super_class = ASTConnectionSelectSelfServiceSuite;
  v5 = [(ASTMaterializedConnection *)&v10 init];
  v6 = v5;
  if (dCopy && v5)
  {
    v11 = @"suiteId";
    v12[0] = dCopy;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    rawBody = v6->_rawBody;
    v6->_rawBody = v7;

    [(ASTMaterializedConnection *)v6 addBody:v6->_rawBody];
  }

  return v6;
}

@end