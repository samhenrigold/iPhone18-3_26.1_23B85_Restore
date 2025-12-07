@interface HMDDataStreamTargetControlProtocol
+ (void)sendTargetControlWhoAmIWithIdentifier:(unsigned int)identifier dataStreamProtocolDelegate:(id)delegate;
@end

@implementation HMDDataStreamTargetControlProtocol

+ (void)sendTargetControlWhoAmIWithIdentifier:(unsigned int)identifier dataStreamProtocolDelegate:(id)delegate
{
  v4 = *&identifier;
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"identifier";
  v5 = MEMORY[0x277CCABB0];
  delegateCopy = delegate;
  v7 = [v5 numberWithUnsignedInt:v4];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [delegateCopy sendEventForProtocol:@"targetControl" topic:@"whoami" payload:v8 completion:&__block_literal_global_189053];
}

@end