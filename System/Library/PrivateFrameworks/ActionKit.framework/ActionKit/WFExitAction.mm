@interface WFExitAction
- (void)runWithInput:(id)input error:(id *)error;
@end

@implementation WFExitAction

- (void)runWithInput:(id)input error:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277D7CB30];
  v9 = *MEMORY[0x277CCA470];
  v7 = WFLocalizedString(@"User requested shortcut exit.");
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  *error = [v5 errorWithDomain:v6 code:4 userInfo:v8];
}

@end