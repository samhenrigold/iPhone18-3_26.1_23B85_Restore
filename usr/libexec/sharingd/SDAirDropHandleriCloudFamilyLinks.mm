@interface SDAirDropHandleriCloudFamilyLinks
- (BOOL)canHandleTransfer;
- (SDAirDropHandleriCloudFamilyLinks)initWithTransfer:(id)transfer;
- (id)suitableContentsDescription;
- (int64_t)transferTypes;
@end

@implementation SDAirDropHandleriCloudFamilyLinks

- (SDAirDropHandleriCloudFamilyLinks)initWithTransfer:(id)transfer
{
  v4.receiver = self;
  v4.super_class = SDAirDropHandleriCloudFamilyLinks;
  return [(SDAirDropHandler *)&v4 initWithTransfer:transfer bundleIdentifier:@"com.apple.family"];
}

- (BOOL)canHandleTransfer
{
  if (![(SDAirDropHandler *)self isJustLinks])
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

        if (!SFIsiCloudFamilyLink())
        {
          v9 = 0;
          goto LABEL_13;
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
LABEL_13:

  return v9;
}

- (int64_t)transferTypes
{
  v3.receiver = self;
  v3.super_class = SDAirDropHandleriCloudFamilyLinks;
  return [(SDAirDropHandlerGenericLinks *)&v3 transferTypes]| 0x20000000000;
}

- (id)suitableContentsDescription
{
  senderName = [(SDAirDropHandler *)self senderName];
  v4 = [(SDAirDropHandler *)self alertMessageLocalizedKeyForTypeDicts:&off_1009101D8];
  v5 = SFLocalizedStringForKey();
  v6 = [NSString localizedStringWithFormat:v5, senderName];

  return v6;
}

@end