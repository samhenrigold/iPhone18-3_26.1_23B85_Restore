@interface DDTrackShipmentAction
- (DDTrackShipmentAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context;
- (id)notificationTitle;
- (id)quickActionTitle;
- (void)performFromView:(id)view;
@end

@implementation DDTrackShipmentAction

- (DDTrackShipmentAction)initWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  lCopy = l;
  contextCopy = context;
  if (!lCopy && result)
  {
    lCopy = DDShipmentTrackingUrlForResult();
  }

  v12.receiver = self;
  v12.super_class = DDTrackShipmentAction;
  v10 = [(DDAction *)&v12 initWithURL:lCopy result:result context:contextCopy];

  return v10;
}

- (id)quickActionTitle
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(NSDictionary *)self->super._context objectForKeyedSubscript:@"AllResults", 0, 0];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
LABEL_4:
  v8 = 0;
  while (1)
  {
    if (*v18 != v7)
    {
      objc_enumerationMutation(v3);
    }

    if (!DDResultHasType())
    {
      goto LABEL_5;
    }

    if (v6)
    {
      break;
    }

    v6 = 1;
LABEL_5:
    if (v5 == ++v8)
    {
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v5)
      {
        goto LABEL_14;
      }

      goto LABEL_4;
    }
  }

  if (DDResultHasType())
  {
    SubResults = DDResultGetSubResults();
    if (CFArrayGetCount(SubResults) == 1)
    {
      CFArrayGetValueAtIndex(SubResults, 0);
      v10 = DDResultGetMatchedString();
      v11 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"];
      invertedSet = [v11 invertedSet];
      v13 = [v10 componentsSeparatedByCharactersInSet:invertedSet];
      v14 = [v13 componentsJoinedByString:&stru_282C1E0A8];

      localizedName = v14;
      goto LABEL_15;
    }
  }

LABEL_14:

  localizedName = [(DDTrackShipmentAction *)self localizedName];
LABEL_15:

  return localizedName;
}

- (void)performFromView:(id)view
{
  if (self->super._url)
  {
    [(DDAction *)self _performFromView:view byOpeningURL:?];
  }
}

- (id)notificationTitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = DDLocalizedString(@"Track shipment “%@” in Safari");
  v4 = [v2 stringWithFormat:v3, DDResultGetMatchedString()];

  return v4;
}

@end