@interface SFDeviceAssetRequestConfiguration
- (SFDeviceAssetRequestConfiguration)initWithQueryResultHandler:(id)handler;
- (id)description;
@end

@implementation SFDeviceAssetRequestConfiguration

- (SFDeviceAssetRequestConfiguration)initWithQueryResultHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = SFDeviceAssetRequestConfiguration;
  v5 = [(SFDeviceAssetRequestConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    queryResultHandler = v5->_queryResultHandler;
    v5->_queryResultHandler = v6;
  }

  return v5;
}

- (id)description
{
  v18 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v18, "<%@: %{ptr}", v3, self);
  v4 = v18;
  [(SFDeviceAssetRequestConfiguration *)self timeout];
  if (fabs(v5) >= 0.00000011920929)
  {
    v17 = v4;
    [(SFDeviceAssetRequestConfiguration *)self timeout];
    NSAppendPrintF(&v17, ", %f", v6);
    v7 = v17;

    v4 = v7;
  }

  downloadCompletionHandler = [(SFDeviceAssetRequestConfiguration *)self downloadCompletionHandler];

  if (downloadCompletionHandler)
  {
    v16 = v4;
    downloadCompletionHandler2 = [(SFDeviceAssetRequestConfiguration *)self downloadCompletionHandler];
    v10 = "yes";
    if (!downloadCompletionHandler2)
    {
      v10 = "no";
    }

    NSAppendPrintF(&v16, ", downloadCompletionHandler: %s", v10);
    v11 = v16;

    v4 = v11;
  }

  v15 = v4;
  NSAppendPrintF(&v15, ">");
  v12 = v15;
  v13 = v15;

  return v12;
}

@end