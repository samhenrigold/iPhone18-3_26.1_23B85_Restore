@interface BCOutstandingAsset
- (NSDictionary)assetDictionaryAsDictionary;
- (void)setAssetDictionaryAsDictionary:(id)dictionary;
@end

@implementation BCOutstandingAsset

- (void)setAssetDictionaryAsDictionary:(id)dictionary
{
  v10 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:dictionary format:100 options:0 error:&v10];
  v7 = v5;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10 == 0;
  }

  if (!v8)
  {
    v9 = BCDefaultLog(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1361C(dictionary, v9);
    }
  }

  [(BCOutstandingAsset *)self setAssetDictionary:v7];
}

- (NSDictionary)assetDictionaryAsDictionary
{
  v10 = 0;
  v4 = [NSPropertyListSerialization propertyListWithData:[(BCOutstandingAsset *)self assetDictionary] options:0 format:0 error:&v10];
  v6 = v4;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v10 == 0;
  }

  if (!v7)
  {
    v8 = BCDefaultLog(v4, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_13694(self, v8);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1370C(a2, self, v6);
  }

  return v6;
}

@end