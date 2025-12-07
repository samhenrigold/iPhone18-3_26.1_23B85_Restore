@interface SDAirDropHandlerNewsLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandlerNewsLinks)initWithTransfer:(id)transfer;
- (id)candidateIdentifiers;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandlerNewsLinks

- (SDAirDropHandlerNewsLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandlerNewsLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.news"];
}

- (id)candidateIdentifiers
{
  v3 = objc_opt_new();
  bundleProxy = [(SDAirDropHandler *)self bundleProxy];

  if (bundleProxy)
  {
    bundleProxy2 = [(SDAirDropHandler *)self bundleProxy];
    bundleIdentifier = [bundleProxy2 bundleIdentifier];
    [v3 addObject:bundleIdentifier];
  }

  return v3;
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks]|| ![(SDAirDropHandler *)self handlingAppInstalled])
  {
    return 0;
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v3 = [(SDAirDropHandler *)self transfer:0];
  completedURLs = [v3 completedURLs];

  v5 = [completedURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(completedURLs);
        }

        if (!SFIsNewsLink())
        {
          v9 = 0;
          goto LABEL_14;
        }
      }

      v6 = [completedURLs countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandlerNewsLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x10000000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_10090FED8];
  v5 = SFLocalizedStringForKey();
  v6 = [NSString localizedStringWithFormat:v5, senderName];

  return v6;
}

@end