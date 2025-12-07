@interface SUPolicyGlobalOptions
- (SUPolicyGlobalOptions)init;
@end

@implementation SUPolicyGlobalOptions

- (SUPolicyGlobalOptions)init
{
  v11[2] = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = SUPolicyGlobalOptions;
  v2 = [(SUPolicyGlobalOptions *)&v9 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = *MEMORY[0x277D64700];
    v10[0] = *MEMORY[0x277D645B0];
    v10[1] = v4;
    v11[0] = @"SUS-2.0";
    v11[1] = @"SUS-2.0";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    v6 = [v3 dictionaryWithDictionary:v5];
    updateMetricEventFields = v2->_updateMetricEventFields;
    v2->_updateMetricEventFields = v6;
  }

  return v2;
}

@end