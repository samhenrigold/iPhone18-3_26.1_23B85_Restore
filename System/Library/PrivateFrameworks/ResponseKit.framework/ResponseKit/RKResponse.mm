@interface RKResponse
- (RKResponse)initWithString:(id)string attributes:(id)attributes category:(id)category;
@end

@implementation RKResponse

void __19___RKResponse_type__block_invoke()
{
  v14[11] = *MEMORY[0x277D85DE8];
  v13[0] = @"Postpone";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v14[0] = v12;
  v13[1] = @"YesNo";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[1] = v0;
  v13[2] = @"YesNoRequest";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[2] = v1;
  v13[3] = @"NotSure";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v14[3] = v2;
  v13[4] = @"GoodBadOk";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[4] = v3;
  v13[5] = @"GoodBadOkState";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[5] = v4;
  v13[6] = @"DontKnow";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v14[6] = v5;
  v13[7] = @"Acknowledgment";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[7] = v6;
  v13[8] = @"YouAreWelcome";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[8] = v7;
  v13[9] = @"LocationSelf";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[9] = v8;
  v13[10] = @"CloseFar";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v14[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:11];
  v11 = type_sSpeechActResponseType;
  type_sSpeechActResponseType = v10;
}

- (RKResponse)initWithString:(id)string attributes:(id)attributes category:(id)category
{
  stringCopy = string;
  attributesCopy = attributes;
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = RKResponse;
  v12 = [(RKResponse *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_string, string);
    objc_storeStrong(&v13->_attributes, attributes);
    objc_storeStrong(&v13->_category, category);
  }

  return v13;
}

@end