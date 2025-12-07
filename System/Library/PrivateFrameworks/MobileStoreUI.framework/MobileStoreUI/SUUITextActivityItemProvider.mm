@interface SUUITextActivityItemProvider
- (id)item;
@end

@implementation SUUITextActivityItemProvider

- (id)item
{
  activityType = [(UIActivityItemProvider *)self activityType];
  isEqualToString = objc_msgSend_isEqualToString_(activityType);

  if (isEqualToString)
  {
    v5 = 0;
  }

  else
  {
    productPageItem = [(SUUIDeferredActivityItemProvider *)self productPageItem];
    title = [productPageItem title];

    productPageItem2 = [(SUUIDeferredActivityItemProvider *)self productPageItem];
    artistName = [productPageItem2 artistName];

    if ([title length] && objc_msgSend(artistName, "length"))
    {
      clientContext = [(SUUIDeferredActivityItemProvider *)self clientContext];
      v11 = clientContext;
      if (clientContext)
      {
        [clientContext localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT"];
      }

      else
      {
        [SUUIClientContext localizedStringForKey:@"SHARE_SHEET_ITEM_TITLE_FORMAT" inBundles:0];
      }
      v12 = ;

      v5 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@%@" error:0, title, artistName];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end