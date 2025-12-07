@interface DDChatBotAction
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
- (id)commitURL;
- (id)menuActions;
- (id)sheetActions;
@end

@implementation DDChatBotAction

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  urlCopy = url;
  if (!urlCopy)
  {
    if (_DDResultIsURL(result))
    {
      urlCopy = _DDURLFromResult(result, 1u);
    }

    else
    {
      urlCopy = 0;
    }
  }

  v6 = dd_emailFromMailtoScheme(urlCopy);
  IsChatBot = dd_handleIsChatBot(v6);

  if (IsChatBot)
  {
    v8 = 1;
  }

  else
  {
    v12 = 0;
    v9 = [(NSURL *)urlCopy dd_phoneNumberFromTelSchemeAndExtractBody:&v12 serviceID:0 suggestions:?];
    v10 = v12;
    v8 = v10 != 0;
  }

  return v8;
}

- (id)menuActions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(DDAction *)self url];
  if (v3 || [(DDAction *)self result]&& (_DDURLFromResult([(DDAction *)self result], 1u), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:{3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(*(*(&v14 + 1) + 8 * i)) initWithURL:v4 result:self->super.super._result context:self->super.super._context];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [DDActionGroup groupWithActions:v5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)sheetActions
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(DDAction *)self url];
  if (v3 || [(DDAction *)self result]&& (_DDURLFromResult([(DDAction *)self result], 1u), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:{3, 0}];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [objc_alloc(*(*(&v13 + 1) + 8 * i)) initWithURL:v4 result:self->super.super._result context:self->super.super._context];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)commitURL
{
  v3 = self->super.super._url;
  if (!v3)
  {
    v4 = self->super.super._result;
    if (v4)
    {
      v3 = _DDURLFromResult(v4, 1u);
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = [[DDTextMessageAction alloc] initWithURL:v3 result:self->super.super._result context:self->super.super._context];
  notificationURL = [(DDTextMessageAction *)v5 notificationURL];

  return notificationURL;
}

@end