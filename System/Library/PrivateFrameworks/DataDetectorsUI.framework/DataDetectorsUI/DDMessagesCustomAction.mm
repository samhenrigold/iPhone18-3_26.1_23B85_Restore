@interface DDMessagesCustomAction
+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result;
- (id)localizedName;
- (void)performFromView:(id)view;
@end

@implementation DDMessagesCustomAction

+ (BOOL)handlesUrl:(id)url result:(__DDResult *)result
{
  HasType = result;
  if (result)
  {
    v5 = +[DDDetectionController messagesActionHandler];
    if (v5)
    {
      HasType = DDResultHasType();
    }

    else
    {
      HasType = 0;
    }
  }

  return HasType;
}

- (id)localizedName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = DDLocalizedString(@"Send %@");
  v4 = [v2 stringWithFormat:v3, DDResultGetMatchedString()];

  return v4;
}

- (void)performFromView:(id)view
{
  v4 = *MEMORY[0x277D85DE8];
  if (self->super._result)
  {
    v3 = +[DDDetectionController messagesActionHandler];
    if (v3)
    {
      if (DDResultHasType())
      {
        DDResultCurrencyExtraction();
      }
    }
  }
}

@end