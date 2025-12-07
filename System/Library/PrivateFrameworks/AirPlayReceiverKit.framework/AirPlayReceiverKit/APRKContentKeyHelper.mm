@interface APRKContentKeyHelper
- (APRKContentKeyHelper)init;
- (APRKContentKeyHelperDelegate)delegate;
- (BOOL)isHandlingContentKeyRequestWithURLString:(id)string;
- (void)_performContentKeyRequest:(id)request isRenewalRequest:(BOOL)renewalRequest;
- (void)contentKeySessionDidGenerateExpiredSessionReport:(id)report;
- (void)forgetAllActiveContentKeyRequests;
- (void)processStreamingKeyRequestWithDictionary:(id)dictionary withCompletionBlock:(id)block;
- (void)processUnhandledURLResponseWithDictionary:(id)dictionary error:(id *)error;
- (void)registerAVURLAsset:(id)asset;
- (void)unregisterAVURLAsset:(id)asset;
@end

@implementation APRKContentKeyHelper

- (APRKContentKeyHelper)init
{
  v15.receiver = self;
  v15.super_class = APRKContentKeyHelper;
  v2 = [(APRKContentKeyHelper *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.APRKMediaPlayer.contentKeySessionQueue", 0);
    contentKeySessionQueue = v2->_contentKeySessionQueue;
    v2->_contentKeySessionQueue = v3;

    v7 = +[APRKUtilities secureStopURL];
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKContentKeyHelper *)v7 init];
    }

    v8 = [MEMORY[0x277CE64D8] contentKeySessionWithKeySystem:? storageDirectoryAtURL:?];
    contentKeySession = v2->_contentKeySession;
    v2->_contentKeySession = v8;

    [AVContentKeySession setDelegate:"setDelegate:queue:" queue:?];
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeContentKeyRequests = v2->_activeContentKeyRequests;
    v2->_activeContentKeyRequests = v10;

    v2->_forwardsFPSSecureStopData = 0;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKContentKeyHelper *)v2 init];
    }
  }

  return v2;
}

- (BOOL)isHandlingContentKeyRequestWithURLString:(id)string
{
  activeContentKeyRequests = self->_activeContentKeyRequests;
  stringCopy = string;
  allKeys = [(NSMutableDictionary *)activeContentKeyRequests allKeys];
  v6 = [allKeys containsObject:?];

  return v6;
}

- (void)registerAVURLAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    v7 = assetCopy;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKContentKeyHelper registerAVURLAsset:]", 33554462, "Registering asset %@ with content key helper %@", v5, self);
      }
    }

    assetCopy = [(AVContentKeySession *)self->_contentKeySession addContentKeyRecipient:?];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](assetCopy, v5);
}

- (void)unregisterAVURLAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    v7 = assetCopy;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKContentKeyHelper unregisterAVURLAsset:]", 33554462, "Unregistering asset %@ from content key helper %@", v5, self);
      }
    }

    assetCopy = [(AVContentKeySession *)self->_contentKeySession removeContentKeyRecipient:?];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](assetCopy, v5);
}

- (void)forgetAllActiveContentKeyRequests
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKContentKeyHelper *)self forgetAllActiveContentKeyRequests];
  }

  activeContentKeyRequests = self->_activeContentKeyRequests;

  [(NSMutableDictionary *)activeContentKeyRequests removeAllObjects];
}

- (void)processUnhandledURLResponseWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy || !error)
  {
    v6 = [dictionaryCopy objectForKey:?];
    v7 = [dictionaryCopy objectForKey:?];
    v8 = [(NSMutableDictionary *)self->_activeContentKeyRequests objectForKey:?];
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKContentKeyHelper processUnhandledURLResponseWithDictionary:v8 error:?];
    }

    v9 = [dictionaryCopy objectForKey:?];
    if (v9)
    {
      v10 = [MEMORY[0x277CE64D0] contentKeyResponseWithFairPlayStreamingKeyResponseData:? renewalDate:?];
      [v8 processContentKeyResponse:?];
    }

    [(NSMutableDictionary *)self->_activeContentKeyRequests removeObjectForKey:?];
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKContentKeyHelper processUnhandledURLResponseWithDictionary:error:];
    }

    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    *error = v6;
  }
}

- (void)processStreamingKeyRequestWithDictionary:(id)dictionary withCompletionBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
  if (dictionaryCopy)
  {
    v8 = [dictionaryCopy objectForKey:?];
    v9 = [v8 objectForKey:?];
    appIDData = self->_appIDData;
    self->_appIDData = v9;

    v11 = [v8 objectForKey:?];
    v12 = [v8 objectForKey:?];
    v13 = [v8 objectForKey:?];
    v14 = [v12 objectForKey:?];
    if (v14 && self->_appIDData)
    {
      v15 = [(NSMutableDictionary *)self->_activeContentKeyRequests objectForKey:?];
      v18 = v15;
      if (v15)
      {
        v23 = v15;
        allKeys = [v13 allKeys];
        v20 = [allKeys containsObject:?];

        if (v20)
        {
          v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v22 = [v13 objectForKey:?];
          [v21 setObject:? forKey:?];
        }

        else
        {
          v21 = 0;
        }

        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKContentKeyHelper processStreamingKeyRequestWithDictionary:withCompletionBlock:];
        }

        v24 = blockCopy;
        v18 = v23;
        [v23 makeStreamingContentKeyRequestDataForApp:? contentIdentifier:? options:? completionHandler:?];
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKContentKeyHelper *)v14 processStreamingKeyRequestWithDictionary:v16 withCompletionBlock:v17];
      }
    }

    goto LABEL_23;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKContentKeyHelper processStreamingKeyRequestWithDictionary:withCompletionBlock:];
    if (!blockCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (blockCopy)
  {
LABEL_11:
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    (*(blockCopy + 2))(blockCopy, 0, v8);
LABEL_23:
  }

LABEL_24:
}

void __85__APRKContentKeyHelper_processStreamingKeyRequestWithDictionary_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v5 && gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __85__APRKContentKeyHelper_processStreamingKeyRequestWithDictionary_withCompletionBlock___block_invoke_cold_1(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_performContentKeyRequest:(id)request isRenewalRequest:(BOOL)renewalRequest
{
  renewalRequestCopy = renewalRequest;
  activeContentKeyRequests = self->_activeContentKeyRequests;
  requestCopy = request;
  identifier = [requestCopy identifier];
  [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier2 = [requestCopy identifier];

  [dictionary setObject:? forKey:?];
  [dictionary setObject:? forKey:?];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [dictionary setObject:? forKey:?];

  if (renewalRequestCopy)
  {
    [dictionary setObject:? forKey:?];
  }

  ++sMessageID;
  delegate = [(APRKContentKeyHelper *)self delegate];
  [delegate contentKeyHelper:? wantsToPerformContentKeyRequestWithDictionary:?];
}

- (void)contentKeySessionDidGenerateExpiredSessionReport:(id)report
{
  reportCopy = report;
  if (self->_appIDData)
  {
    v5 = +[APRKUtilities secureStopURL];
    v6 = [MEMORY[0x277CE64D8] pendingExpiredSessionReportsWithAppIdentifier:? storageDirectoryAtURL:?];
    v7 = v6;
    if (self->_forwardsFPSSecureStopData && v6 != 0)
    {
      v16 = v5;
      v17 = reportCopy;
      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKContentKeyHelper contentKeySessionDidGenerateExpiredSessionReport:v7];
      }

      v18 = 0;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
      if (v10)
      {
        v11 = v10;
        v12 = MEMORY[0];
        do
        {
          for (i = 0; i != v11; i = (i + 1))
          {
            if (MEMORY[0] != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v17 count:v18];
            delegate = [(APRKContentKeyHelper *)self delegate];
            [delegate contentKeyHelper:? didGenerateSecureStopRecordPayload:?];
          }

          v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v11);
      }

      v5 = v16;
      reportCopy = v17;
    }

    if (v7)
    {
      [MEMORY[0x277CE64D8] removePendingExpiredSessionReports:? withAppIdentifier:? storageDirectoryAtURL:?];
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKContentKeyHelper contentKeySessionDidGenerateExpiredSessionReport:];
  }
}

- (APRKContentKeyHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)processUnhandledURLResponseWithDictionary:(void *)a1 error:.cold.1(void *a1)
{
  v2 = [a1 identifier];
  OUTLINED_FUNCTION_1(&gLogCategory_AirPlayReceiverKit, "[APRKContentKeyHelper processUnhandledURLResponseWithDictionary:error:]", v1, "Handling content key request with ID: %@");
}

- (void)contentKeySessionDidGenerateExpiredSessionReport:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKContentKeyHelper contentKeySessionDidGenerateExpiredSessionReport:]", 33554442, "Secure stop generated with reports: %@", v1);
}

@end