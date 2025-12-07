@interface RMModelStatusBase
+ (BOOL)isSupportedStatusItem:(id)item platform:(int64_t)platform scope:(int64_t)scope;
+ (id)stubObjectForStatusItemType:(id)type;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusBase

+ (id)stubObjectForStatusItemType:(id)type
{
  typeCopy = type;
  if ([RMModelClasses classForStatusItemType:typeCopy])
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = [RMModelStatusDynamic buildWithStatusItemType:typeCopy];
  }

  v5 = v4;

  return v5;
}

+ (BOOL)isSupportedStatusItem:(id)item platform:(int64_t)platform scope:(int64_t)scope
{
  itemCopy = item;
  v8 = [RMModelClasses classForStatusItemType:itemCopy];
  if (v8)
  {
    if (([(objc_class *)v8 isSupportedForPlatform:platform scope:scope]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = +[RMModelStatusSchema schemas];
    v10 = [v9 objectForKeyedSubscript:itemCopy];

    if (!v10 || ([v10 isSupportedForPlatform:platform scope:scope] & 1) == 0)
    {

LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (id)serializeWithType:(signed __int16)type
{
  typeCopy = type;
  v5 = objc_opt_new();
  v6 = [(RMModelStatusBase *)self serializePayloadWithType:typeCopy];
  if ([v6 count])
  {
    [v5 addEntriesFromDictionary:v6];
  }

  v7 = [v5 copy];

  return v7;
}

@end