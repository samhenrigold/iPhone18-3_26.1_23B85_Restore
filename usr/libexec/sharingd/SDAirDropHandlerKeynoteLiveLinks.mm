@interface SDAirDropHandlerKeynoteLiveLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerKeynoteLiveLinks)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
- (void)updatePossibleActions;
@end

@implementation SDAirDropHandlerKeynoteLiveLinks

- (SDAirDropHandlerKeynoteLiveLinks)initWithTransfer:(id)transfer
{
  v6.receiver = self;
  v6.super_class = SDAirDropHandlerKeynoteLiveLinks;
  v3 = [(SDAirDropHandler *)&v6 initWithTransfer:transfer];
  if (v3)
  {
    v4 = [LSBundleProxy bundleProxyForIdentifier:@"com.apple.Keynote"];
    [(SDAirDropHandler *)v3 setBundleProxy:v4];
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
  {
    return 0;
  }

  bundleProxy = [(SDAirDropHandler *)self bundleProxy];

  if (!bundleProxy)
  {
    v4 = [SDAirDropHandlerWebLinks alloc];
    transfer = [(SDAirDropHandler *)self transfer];
    v6 = [(SDAirDropHandlerWebLinks *)v4 initWithTransfer:transfer];
    webLinksHandler = self->_webLinksHandler;
    self->_webLinksHandler = v6;

    if (![(SDAirDropHandlerWebLinks *)self->_webLinksHandler canHandleTransfer])
    {
      return 0;
    }
  }

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v8 = [(SDAirDropHandler *)self transfer:0];
  completedURLs = [v8 completedURLs];

  v10 = [completedURLs countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(completedURLs);
        }

        if (!SFIsKeynoteLiveLink())
        {
          v14 = 0;
          goto LABEL_15;
        }
      }

      v11 = [completedURLs countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_15:

  return v14;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerKeynoteLiveLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x20000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_10090FEF0];
  v5 = SFLocalizedStringForKey();
  v6 = [NSString localizedStringWithFormat:v5, senderName];

  return v6;
}

- (void)updatePossibleActions
{
  webLinksHandler = self->_webLinksHandler;
  if (webLinksHandler)
  {
    [(SDAirDropHandlerGenericLinks *)webLinksHandler updatePossibleActions];
    completionHandler = [(SDAirDropHandler *)self completionHandler];
    [(SDAirDropHandler *)self->_webLinksHandler setCompletionHandler:completionHandler];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SDAirDropHandlerKeynoteLiveLinks;
    [(SDAirDropHandlerGenericLinks *)&v5 updatePossibleActions];
  }
}

@end