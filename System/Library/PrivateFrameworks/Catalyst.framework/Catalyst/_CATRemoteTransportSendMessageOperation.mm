@interface _CATRemoteTransportSendMessageOperation
- (CATRemoteTransport)transport;
- (void)didEncodeData:(id)data;
- (void)main;
@end

@implementation _CATRemoteTransportSendMessageOperation

- (void)main
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v3);

  transport = [(_CATRemoteTransportSendMessageOperation *)self transport];
  if (transport && ![(CATOperation *)self isCanceled])
  {
    v6 = MEMORY[0x277CCAAB0];
    message = [(_CATRemoteTransportSendMessageOperation *)self message];
    v12[0] = 0;
    v8 = [v6 cat_archivedDataWithRootObject:message error:v12];
    v9 = v12[0];

    if (v8)
    {
      [(_CATRemoteTransportSendMessageOperation *)self didEncodeData:v8];
    }

    else
    {
      v13 = *MEMORY[0x277CCA7E8];
      v14[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = CATErrorWithCodeAndUserInfo(301, v10);
      [(CATOperation *)self endOperationWithError:v11];
    }
  }

  else
  {
    v5 = CATErrorWithCodeAndUserInfo(404, 0);
    [(CATOperation *)self endOperationWithError:v5];
  }
}

- (void)didEncodeData:(id)data
{
  dataCopy = data;
  v4 = CATGetCatalystQueue(dataCopy);
  CATAssertIsQueue(v4);

  transport = [(_CATRemoteTransportSendMessageOperation *)self transport];
  if (transport && ![(CATOperation *)self isCanceled])
  {
    [transport remoteTransportSendMessageOperation:self sendData:dataCopy];
  }

  else
  {
    v6 = CATErrorWithCodeAndUserInfo(404, 0);
    [(CATOperation *)self endOperationWithError:v6];
  }
}

- (CATRemoteTransport)transport
{
  WeakRetained = objc_loadWeakRetained(&self->_transport);

  return WeakRetained;
}

@end