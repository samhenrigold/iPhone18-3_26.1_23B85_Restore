@interface ASTConnectionEnroll
- (ASTConnectionEnroll)initWithIdentity:(id)identity;
@end

@implementation ASTConnectionEnroll

- (ASTConnectionEnroll)initWithIdentity:(id)identity
{
  v12[1] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  v10.receiver = self;
  v10.super_class = ASTConnectionEnroll;
  v5 = [(ASTMaterializedConnection *)&v10 init];
  if (v5)
  {
    json = [identityCopy json];

    if (json)
    {
      v11 = @"identifiers";
      json2 = [identityCopy json];
      v12[0] = json2;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [(ASTMaterializedConnection *)v5 addBody:v8];
    }
  }

  return v5;
}

@end