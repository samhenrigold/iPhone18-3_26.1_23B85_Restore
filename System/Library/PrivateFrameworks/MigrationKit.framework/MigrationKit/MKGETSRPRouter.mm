@interface MKGETSRPRouter
- (MKGETSRPRouter)initWithSRP:(id)p;
- (MKGETSRPRouterDelegate)delegate;
- (void)server:(id)server didReceiveRequest:(id)request response:(id)response;
@end

@implementation MKGETSRPRouter

- (MKGETSRPRouter)initWithSRP:(id)p
{
  pCopy = p;
  v9.receiver = self;
  v9.super_class = MKGETSRPRouter;
  v6 = [(MKGETSRPRouter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_srp, p);
  }

  return v7;
}

- (void)server:(id)server didReceiveRequest:(id)request response:(id)response
{
  v16[2] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  srp = self->_srp;
  v13 = 0;
  v14 = 0;
  [(MKSRPServer *)srp generateSalt:&v14 pubkey:&v13];
  v8 = v14;
  v9 = v13;
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v15[0] = @"salt";
    v15[1] = @"pubkey";
    v16[0] = v8;
    v16[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v10 options:0 error:0];
    [responseCopy setBody:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained routerDidRevokeEncryptionKey:self];
  }

  else
  {
    v10 = +[MKLog log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MKGETSRPPrecheckRouter server:v10 didReceiveRequest:? response:?];
    }
  }
}

- (MKGETSRPRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end