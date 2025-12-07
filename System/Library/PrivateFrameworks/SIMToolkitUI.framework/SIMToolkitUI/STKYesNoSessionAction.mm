@interface STKYesNoSessionAction
- (STKYesNoSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response;
- (void)sendSuccessWithSelectedResponse:(BOOL)response;
@end

@implementation STKYesNoSessionAction

- (STKYesNoSessionAction)initWithBehavior:(id)behavior inputData:(id)data response:(id)response
{
  responseCopy = response;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__STKYesNoSessionAction_initWithBehavior_inputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = responseCopy;
  v12.receiver = self;
  v12.super_class = STKYesNoSessionAction;
  v9 = responseCopy;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:behavior data:data responseBlock:v13];

  return v10;
}

void __61__STKYesNoSessionAction_initWithBehavior_inputData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v5);
}

- (void)sendSuccessWithSelectedResponse:(BOOL)response
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:response];
  [(STKSessionAction *)self sendResponse:0 withContext:v4];
}

@end