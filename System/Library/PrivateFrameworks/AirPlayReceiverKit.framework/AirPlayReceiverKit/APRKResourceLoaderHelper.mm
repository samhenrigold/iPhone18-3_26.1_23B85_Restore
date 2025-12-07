@interface APRKResourceLoaderHelper
- (APRKResourceLoaderHelper)init;
- (APRKResourceLoaderHelperDelegate)delegate;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (BOOL)resourceLoader:(id)loader shouldWaitForResponseToAuthenticationChallenge:(id)challenge;
- (void)forgetAllActiveResourceLoadingRequests;
- (void)processUnhandledURLResponseWithDictionary:(id)dictionary error:(id *)error;
- (void)registerAVURLAsset:(id)asset;
- (void)resourceLoader:(id)loader didCancelAuthenticationChallenge:(id)challenge;
- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request;
- (void)unregisterAVURLAsset:(id)asset;
@end

@implementation APRKResourceLoaderHelper

- (APRKResourceLoaderHelper)init
{
  v18 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = APRKResourceLoaderHelper;
  v2 = [(APRKResourceLoaderHelper *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeResourceLoadingRequests = v2->_activeResourceLoadingRequests;
    v2->_activeResourceLoadingRequests = v3;

    v5 = dispatch_queue_create("com.apple.APRKMediaPlayer.resourceLoaderQueue", 0);
    resourceLoaderQueue = v2->_resourceLoaderQueue;
    v2->_resourceLoaderQueue = v5;

    v14 = @"Accept-Encoding";
    v15 = @"User-Agent";
    v16 = @"gzip";
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:APSVersionUtilsGetShortVersionLength(), "920.10.1"];
    v17 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    headersDictionary = v2->_headersDictionary;
    v2->_headersDictionary = v8;

    v2->_requestIDCnt = 0;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKResourceLoaderHelper *)v2 init];
    }
  }

  return v2;
}

- (void)registerAVURLAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    v8 = assetCopy;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKResourceLoaderHelper registerAVURLAsset:]", 33554462, "Registering asset %@ with resource loader helper %@", v5, self);
        v5 = v8;
      }
    }

    resourceLoader = [v5 resourceLoader];
    [resourceLoader setDelegate:? queue:?];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](assetCopy, v5);
}

- (void)unregisterAVURLAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (assetCopy)
  {
    v8 = assetCopy;
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v6 = _LogCategory_Initialize(), v5 = v8, v6))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKResourceLoaderHelper unregisterAVURLAsset:]", 33554462, "Unregistering asset %@ from resource loader helper %@", v5, self);
        v5 = v8;
      }
    }

    resourceLoader = [v5 resourceLoader];
    [resourceLoader setDelegate:? queue:?];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](assetCopy, v5);
}

- (void)forgetAllActiveResourceLoadingRequests
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKResourceLoaderHelper *)self forgetAllActiveResourceLoadingRequests];
  }

  obj = self;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)obj->_activeResourceLoadingRequests removeAllObjects];
  objc_sync_exit(obj);
}

- (void)processUnhandledURLResponseWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:?];
  v7 = [dictionaryCopy objectForKey:?];
  integerValue = [v7 integerValue];

  v9 = [dictionaryCopy objectForKey:?];
  v10 = [dictionaryCopy objectForKey:?];
  v11 = [dictionaryCopy objectForKey:?];
  v14 = [dictionaryCopy objectForKey:?];
  if (gLogCategory_AirPlayReceiverKit > 30 || gLogCategory_AirPlayReceiverKit == -1 && !_LogCategory_Initialize())
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:? code:? userInfo:?];
    goto LABEL_14;
  }

  [(APRKResourceLoaderHelper *)v6 processUnhandledURLResponseWithDictionary:v12 error:v13];
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = integerValue == 0;
  }

  if (!v15)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v17 = [(NSMutableDictionary *)selfCopy->_activeResourceLoadingRequests objectForKey:?];
    objc_sync_exit(selfCopy);

    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
LABEL_14:
  v19 = v18;
  if (v18)
  {
    if (error)
    {
      v20 = v18;
      v17 = 0;
      *error = v19;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_30;
  }

  v17 = 0;
LABEL_18:
  if (integerValue - 301 > 4 || (integerValue - 301) == 3)
  {
    if (v14)
    {
      v43 = v14;
      v34 = v10;
      v35 = v11;
      v36 = objc_alloc(MEMORY[0x277CBAB48]);
      [MEMORY[0x277CBEBC0] URLWithString:?];
      selfCopy2 = self;
      v39 = v38 = v9;
      v22 = [v36 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

      v9 = v38;
      self = selfCopy2;
      [v17 setResponse:?];
      dataRequest = [v17 dataRequest];
      [dataRequest respondWithData:?];

      v11 = v35;
      v10 = v34;
      v14 = v43;
      [v17 finishLoading];
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
      [v17 finishLoadingWithError:?];
    }
  }

  else
  {
    v22 = [v10 objectForKey:?];
    if (v22)
    {
      v23 = MEMORY[0x277CBABA0];
      v42 = v14;
      v24 = v10;
      v25 = v11;
      [MEMORY[0x277CBEBC0] URLWithString:?];
      v26 = v41 = v9;
      v27 = [v23 requestWithURL:?];

      v28 = objc_alloc(MEMORY[0x277CBAB48]);
      v29 = [MEMORY[0x277CBEBC0] URLWithString:?];
      v30 = [v28 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];

      [v17 setResponse:?];
      [v17 setRedirect:?];
      contentInformationRequest = [v17 contentInformationRequest];
      [contentInformationRequest setRenewalDate:?];

      dataRequest2 = [v17 dataRequest];
      [dataRequest2 respondWithData:?];

      v11 = v25;
      v10 = v24;
      v14 = v42;
      [v17 finishLoading];

      v9 = v41;
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
      [v17 finishLoadingWithError:?];
    }
  }

  if (v6)
  {
    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    [(NSMutableDictionary *)selfCopy3->_activeResourceLoadingRequests removeObjectForKey:?];
    objc_sync_exit(selfCopy3);
  }

  v19 = 0;
LABEL_30:
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  loaderCopy = loader;
  resourceCopy = resource;
  serializableRepresentation = [resourceCopy serializableRepresentation];
  v9 = [serializableRepresentation objectForKey:?];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    contentInformationRequest = [resourceCopy contentInformationRequest];
    [contentInformationRequest setContentType:?];

    [resourceCopy finishLoading];
  }

  else
  {
    v12 = MEMORY[0x277CCABB0];
    ++self->_requestIDCnt;
    v13 = [v12 numberWithLongLong:?];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    objc_sync_exit(selfCopy);

    request = [resourceCopy request];
    v16 = [request URL];
    absoluteString = [v16 absoluteString];
    v17 = *MEMORY[0x277CC0950];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [(APRKResourceLoaderHelper *)serializableRepresentation resourceLoader:v17 shouldWaitForLoadingOfRequestedResource:resourceCopy];
    }

    delegate = [(APRKResourceLoaderHelper *)selfCopy delegate];
    [delegate resourceLoaderHelper:? wantsToPerformUnhandledURLRequestWithDictionary:? forRequestID:?];
  }

  return 1;
}

- (void)resourceLoader:(id)loader didCancelLoadingRequest:(id)request
{
  loaderCopy = loader;
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_activeResourceLoadingRequests allKeysForObject:?];
  [(NSMutableDictionary *)selfCopy->_activeResourceLoadingRequests removeObjectsForKeys:?];

  objc_sync_exit(selfCopy);
}

- (BOOL)resourceLoader:(id)loader shouldWaitForResponseToAuthenticationChallenge:(id)challenge
{
  loaderCopy = loader;
  challengeCopy = challenge;
  v9 = challengeCopy;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (challengeCopy = _LogCategory_Initialize(), challengeCopy))
    {
      [(APRKResourceLoaderHelper *)challengeCopy resourceLoader:v7 shouldWaitForResponseToAuthenticationChallenge:v8];
    }
  }

  return 0;
}

- (void)resourceLoader:(id)loader didCancelAuthenticationChallenge:(id)challenge
{
  loaderCopy = loader;
  challengeCopy = challenge;
  v8 = challengeCopy;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (challengeCopy = _LogCategory_Initialize(), challengeCopy))
    {
      [(APRKResourceLoaderHelper *)challengeCopy resourceLoader:v6 didCancelAuthenticationChallenge:v7];
    }
  }
}

- (APRKResourceLoaderHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)resourceLoader:(void *)a3 shouldWaitForLoadingOfRequestedResource:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 objectForKey:?];
  v5 = [a3 request];
  v6 = [v5 URL];
  v8 = [v6 absoluteString];
  OUTLINED_FUNCTION_1(&gLogCategory_AirPlayReceiverKit, "[APRKResourceLoaderHelper resourceLoader:shouldWaitForLoadingOfRequestedResource:]", v7, "Get custom URL request ID = %@, URL: '%@', new AirPlay request ID = %@");
}

@end