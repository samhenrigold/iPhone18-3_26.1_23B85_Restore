@interface ChatAssetStatusChangeContext
+ (id)contextWithAssetChangeType:(unsigned int)type isHidden:(BOOL)hidden hasSensitiveContent:(BOOL)content;
- (int64_t)resolvedGroupActionType;
@end

@implementation ChatAssetStatusChangeContext

+ (id)contextWithAssetChangeType:(unsigned int)type isHidden:(BOOL)hidden hasSensitiveContent:(BOOL)content
{
  contentCopy = content;
  hiddenCopy = hidden;
  v7 = *&type;
  v8 = objc_alloc_init(ChatAssetStatusChangeContext);
  [(ChatAssetStatusChangeContext *)v8 setType:v7];
  [(ChatAssetStatusChangeContext *)v8 setHidden:hiddenCopy];
  [(ChatAssetStatusChangeContext *)v8 setHasSensitiveContent:contentCopy];

  return v8;
}

- (int64_t)resolvedGroupActionType
{
  isHidden = [(ChatAssetStatusChangeContext *)self isHidden];
  type = [(ChatAssetStatusChangeContext *)self type];
  if (isHidden)
  {
    if (type)
    {
      return 7;
    }

    else
    {
      return 3;
    }
  }

  else if (type == 1)
  {
    if ([(ChatAssetStatusChangeContext *)self hasSensitiveContent])
    {
      return 5;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 1;
  }
}

@end