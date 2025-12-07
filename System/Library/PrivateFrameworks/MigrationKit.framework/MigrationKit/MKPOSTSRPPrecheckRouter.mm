@interface MKPOSTSRPPrecheckRouter
- (MKPOSTSRPPrecheckRouter)initWithPrecheck:(id)precheck;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKPOSTSRPPrecheckRouter

- (MKPOSTSRPPrecheckRouter)initWithPrecheck:(id)precheck
{
  precheckCopy = precheck;
  v9.receiver = self;
  v9.super_class = MKPOSTSRPPrecheckRouter;
  v6 = [(MKPOSTSRPPrecheckRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_precheck, precheck);
  }

  return v7;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  v26[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  hostname = [requestCopy hostname];
  if ([hostname length])
  {
    v10 = [(MKSRPPrecheck *)self->_precheck serverForKey:hostname];
    if (v10)
    {
      body = [requestCopy body];
      if ([body length])
      {
        v24 = 0;
        v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:body options:0 error:&v24];
        v13 = v24;
        v23 = v10;
        if (v13)
        {
          v22 = v12;
          v14 = +[MKLog log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [MKPOSTSRPPrecheckRouter server:v13 didReceiveRequest:v14 response:?];
          }

          v15 = 0;
          v16 = v22;
        }

        else
        {
          v14 = [v12 objectForKey:@"pubkey"];
          v17 = [v12 objectForKey:@"proof"];
          v18 = [v10 generateSharedKey:v14 proofOfMatch:v17];
          v16 = v12;
          v15 = v18 != 0;
        }

        v10 = v23;
      }

      else
      {
        v13 = +[MKLog log];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [MKGETSRPPrecheckRouter server:v13 didReceiveRequest:? response:?];
        }

        v15 = 0;
      }
    }

    else
    {
      body = +[MKLog log];
      if (os_log_type_enabled(body, OS_LOG_TYPE_ERROR))
      {
        [MKPOSTSRPPrecheckRouter server:body didReceiveRequest:? response:?];
      }

      v15 = 0;
    }

    v25 = @"success";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:v15];
    v26[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    v21 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v20 options:0 error:0];
    [responseCopy setBody:v21];
    [(MKSRPPrecheck *)self->_precheck removeServerForKey:hostname];
  }
}

@end