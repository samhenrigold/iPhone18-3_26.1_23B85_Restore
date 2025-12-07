@interface STKUSSDSessionAction
- (STKUSSDSessionAction)initWithInputData:(id)data response:(id)response;
- (STKUSSDSessionData)sessionData;
@end

@implementation STKUSSDSessionAction

- (STKUSSDSessionAction)initWithInputData:(id)data response:(id)response
{
  responseCopy = response;
  dataCopy = data;
  v8 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__STKUSSDSessionAction_initWithInputData_response___block_invoke;
  v13[3] = &unk_279B4C368;
  v14 = responseCopy;
  v12.receiver = self;
  v12.super_class = STKUSSDSessionAction;
  v9 = responseCopy;
  v10 = [(STKSessionAction *)&v12 initWithBehavior:v8 data:dataCopy responseBlock:v13];

  return v10;
}

void __51__STKUSSDSessionAction_initWithInputData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (STKUSSDSessionData)sessionData
{
  v4.receiver = self;
  v4.super_class = STKUSSDSessionAction;
  sessionData = [(STKSessionAction *)&v4 sessionData];

  return sessionData;
}

@end