@interface LACUIHostedSceneAction
- (LACUIHostedSceneAction)initWithRawIdentifier:(unint64_t)identifier value:(id)value;
- (id)description;
@end

@implementation LACUIHostedSceneAction

- (LACUIHostedSceneAction)initWithRawIdentifier:(unint64_t)identifier value:(id)value
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = LACUIHostedSceneAction;
  v7 = [(LACUIHostedSceneAction *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_rawIdentifier = identifier;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || MEMORY[0x259C59C00](valueCopy) == MEMORY[0x277D86478])
    {
      v9 = valueCopy;
    }

    else if (valueCopy)
    {
      v9 = [MEMORY[0x277CBEA90] bs_secureDataFromObject:valueCopy];
    }

    else
    {
      v9 = objc_opt_new();
    }

    rawValue = v8->_rawValue;
    v8->_rawValue = v9;
  }

  return v8;
}

- (id)description
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v12[0] = @"identifier";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[LACUIHostedSceneAction rawIdentifier](self, "rawIdentifier")}];
  v12[1] = @"value";
  v13[0] = v5;
  v6 = MEMORY[0x277CCACA8];
  rawValue = [(LACUIHostedSceneAction *)self rawValue];
  v8 = [v6 stringWithFormat:@"%@", rawValue];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v9];;

  return v10;
}

@end