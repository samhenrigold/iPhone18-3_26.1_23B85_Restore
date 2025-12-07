@interface CUMessageSession(HMCUMessageSession)
- (void)sendRequestData:()HMCUMessageSession qualityOfService:responseHandler:;
@end

@implementation CUMessageSession(HMCUMessageSession)

- (void)sendRequestData:()HMCUMessageSession qualityOfService:responseHandler:
{
  v17[2] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v16[0] = @"da";
  v16[1] = @"qos";
  v17[0] = a3;
  v9 = MEMORY[0x1E696AD98];
  v10 = a3;
  v11 = [v9 numberWithInteger:a4];
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__CUMessageSession_HMCUMessageSession__sendRequestData_qualityOfService_responseHandler___block_invoke;
  v14[3] = &unk_1E7548CB8;
  v15 = v8;
  v13 = v8;
  [self sendRequestID:@"HMDSS.cu.rq" options:0 request:v12 responseHandler:v14];
}

@end