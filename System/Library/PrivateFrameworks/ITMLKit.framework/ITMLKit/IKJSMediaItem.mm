@interface IKJSMediaItem
- (IKJSMediaItem)initWithType:(id)type :(id)a4;
- (NSString)type;
- (void)dealloc;
- (void)loadCertificateDataForURI:(id)i withCallback:(id)callback;
- (void)loadContentIdentifierDataForURI:(id)i withCallback:(id)callback;
- (void)loadKeyDataForURI:(id)i requestData:(id)data withCallback:(id)callback;
- (void)setType:(id)type;
@end

@implementation IKJSMediaItem

- (IKJSMediaItem)initWithType:(id)type :(id)a4
{
  typeCopy = type;
  v7 = a4;
  v8 = +[IKAppContext currentAppContext];
  v15.receiver = self;
  v15.super_class = IKJSMediaItem;
  v9 = [(IKJSObject *)&v15 initWithAppContext:v8];

  if (v9)
  {
    v10 = [IKAppMediaItemBridge alloc];
    appContext = [(IKJSObject *)v9 appContext];
    v12 = [(IKAppMediaItemBridge *)v10 initWithAppContext:appContext jsMediaItem:v9];
    bridge = v9->_bridge;
    v9->_bridge = v12;

    if (v7 && ([v7 isEqualToString:@"undefined"] & 1) == 0)
    {
      [(IKAppMediaItemBridge *)v9->_bridge setUrl:v7];
    }

    [(IKJSMediaItem *)v9 setType:typeCopy];
  }

  return v9;
}

- (void)dealloc
{
  [(IKAppMediaItemBridge *)self->_bridge cleanup];
  v3.receiver = self;
  v3.super_class = IKJSMediaItem;
  [(IKJSMediaItem *)&v3 dealloc];
}

- (void)setType:(id)type
{
  typeCopy = type;
  if (([(__CFString *)typeCopy isEqualToString:@"video"]& 1) == 0 && ([(__CFString *)typeCopy isEqualToString:@"audio"]& 1) == 0)
  {
    v4 = @"video";

    typeCopy = v4;
  }

  bridge = [(IKJSMediaItem *)self bridge];
  [bridge setType:typeCopy];
}

- (NSString)type
{
  bridge = [(IKJSMediaItem *)self bridge];
  type = [bridge type];

  return type;
}

- (void)loadCertificateDataForURI:(id)i withCallback:(id)callback
{
  v22[2] = *MEMORY[0x277D85DE8];
  iCopy = i;
  callbackCopy = callback;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __56__IKJSMediaItem_loadCertificateDataForURI_withCallback___block_invoke;
  v20 = &unk_27979B898;
  v8 = callbackCopy;
  v21 = v8;
  v9 = MEMORY[0x259C21BA0](&v17);
  v10 = MEMORY[0x277CD4658];
  v11 = [(IKJSObject *)self appContext:v17];
  jsContext = [v11 jsContext];
  v13 = [v10 valueWithObject:self inContext:jsContext];

  if ([v13 hasProperty:@"loadCertificate"])
  {
    v22[0] = iCopy;
    v14 = MEMORY[0x259C21BA0](v9);
    v22[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v16 = [(IKJSObject *)self invokeMethod:@"loadCertificate" withArguments:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:103 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v14);
  }
}

void __56__IKJSMediaItem_loadCertificateDataForURI_withCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isString])
  {
    v6 = [v9 toString];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 isString])
  {
    v7 = [v5 toString];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:1 userInfo:0];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)loadContentIdentifierDataForURI:(id)i withCallback:(id)callback
{
  v22[2] = *MEMORY[0x277D85DE8];
  iCopy = i;
  callbackCopy = callback;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __62__IKJSMediaItem_loadContentIdentifierDataForURI_withCallback___block_invoke;
  v20 = &unk_27979B898;
  v8 = callbackCopy;
  v21 = v8;
  v9 = MEMORY[0x259C21BA0](&v17);
  v10 = MEMORY[0x277CD4658];
  v11 = [(IKJSObject *)self appContext:v17];
  jsContext = [v11 jsContext];
  v13 = [v10 valueWithObject:self inContext:jsContext];

  if ([v13 hasProperty:@"loadAssetID"])
  {
    v22[0] = iCopy;
    v14 = MEMORY[0x259C21BA0](v9);
    v22[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v16 = [(IKJSObject *)self invokeMethod:@"loadAssetID" withArguments:v15];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:103 userInfo:0];
    (*(v8 + 2))(v8, 0, 0, v14);
  }
}

void __62__IKJSMediaItem_loadContentIdentifierDataForURI_withCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 isString])
  {
    v6 = [v9 toString];
  }

  else
  {
    v6 = 0;
  }

  if ([v5 isString])
  {
    v7 = [v5 toString];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:v7 code:1 userInfo:0];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)loadKeyDataForURI:(id)i requestData:(id)data withCallback:(id)callback
{
  v22[3] = *MEMORY[0x277D85DE8];
  iCopy = i;
  dataCopy = data;
  callbackCopy = callback;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __60__IKJSMediaItem_loadKeyDataForURI_requestData_withCallback___block_invoke;
  v20[3] = &unk_27979B8C0;
  v11 = callbackCopy;
  v21 = v11;
  v12 = MEMORY[0x259C21BA0](v20);
  v13 = MEMORY[0x277CD4658];
  appContext = [(IKJSObject *)self appContext];
  jsContext = [appContext jsContext];
  v16 = [v13 valueWithObject:self inContext:jsContext];

  if ([v16 hasProperty:@"loadKey"])
  {
    v22[0] = iCopy;
    v22[1] = dataCopy;
    v17 = MEMORY[0x259C21BA0](v12);
    v22[2] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v19 = [(IKJSObject *)self invokeMethod:@"loadKey" withArguments:v18];
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:103 userInfo:0];
    (*(v11 + 2))(v11, 0, 0, v17);
  }
}

void __60__IKJSMediaItem_loadKeyDataForURI_requestData_withCallback___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  if ([v13 isString])
  {
    v9 = [v13 toString];
  }

  else
  {
    v9 = 0;
  }

  if ([v7 isObject])
  {
    v10 = [v7 toObjectOfClass:objc_opt_class()];
  }

  else
  {
    v10 = 0;
  }

  if ([v8 isString])
  {
    v11 = [v8 toString];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v11 code:1 userInfo:0];
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

@end