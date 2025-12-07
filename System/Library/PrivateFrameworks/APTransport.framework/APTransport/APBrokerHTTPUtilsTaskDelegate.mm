@interface APBrokerHTTPUtilsTaskDelegate
- (APBrokerHTTPUtilsTaskDelegate)initWithLogContext:(void *)context sslCertificateHostName:(id)name;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)dealloc;
@end

@implementation APBrokerHTTPUtilsTaskDelegate

- (APBrokerHTTPUtilsTaskDelegate)initWithLogContext:(void *)context sslCertificateHostName:(id)name
{
  v9.receiver = self;
  v9.super_class = APBrokerHTTPUtilsTaskDelegate;
  v6 = [(APBrokerHTTPUtilsTaskDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_logContext = context;
    if (name)
    {
      v6->_sslCertificateHostName = name;
    }

    else
    {
      [APBrokerHTTPUtilsTaskDelegate initWithLogContext:v6 sslCertificateHostName:?];
      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  self->_sslCertificateHostName = 0;
  v3.receiver = self;
  v3.super_class = APBrokerHTTPUtilsTaskDelegate;
  [(APBrokerHTTPUtilsTaskDelegate *)&v3 dealloc];
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  v19[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v11 = [objc_msgSend(challenge "protectionSpace")];
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    [APBrokerHTTPUtilsTaskDelegate URLSession:challenge task:session didReceiveChallenge:task completionHandler:?];
  }

  v12 = [objc_msgSend(challenge "protectionSpace")];
  if ([v12 isEqualToString:*MEMORY[0x277CCA720]])
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    SSL = SecPolicyCreateSSL(1u, self->_sslCertificateHostName);
    v15 = SSL;
    if (SSL)
    {
      v19[0] = SSL;
      SecTrustSetPolicies(v11, [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1]);
      if (SecTrustEvaluateWithError(v11, &error))
      {
        v14 = [MEMORY[0x277CCACF0] credentialForTrust:v11];
        v16 = 0;
        goto LABEL_17;
      }

      if (gLogCategory_APBrokerHTTPUtils >= 91)
      {
        (*(handler + 2))(handler, 2, 0);
LABEL_22:
        CFRelease(v15);
        goto LABEL_23;
      }

      if (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize())
      {
        [APBrokerHTTPUtilsTaskDelegate URLSession:&error task:? didReceiveChallenge:? completionHandler:?];
      }
    }

    else
    {
      [APBrokerHTTPUtilsTaskDelegate URLSession:task:didReceiveChallenge:completionHandler:];
    }

    v14 = 0;
    v16 = 2;
    goto LABEL_17;
  }

  v14 = 0;
  v15 = 0;
  v16 = 1;
LABEL_17:
  if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APBrokerHTTPUtils, "[APBrokerHTTPUtilsTaskDelegate URLSession:task:didReceiveChallenge:completionHandler:]", 33554462, "[%{ptr}] Calling completion handler with disposition: %d and credential: %@\n", self->_logContext, v16, v14);
  }

  (*(handler + 2))(handler, v16, v14);
  if (v15)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (error)
  {
    CFRelease(error);
  }
}

@end