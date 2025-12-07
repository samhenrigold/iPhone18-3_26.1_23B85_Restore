@interface ASSettingsTaskGetterResult
- (ASSettingsTaskGetterResult)initWithKey:(int)key status:(int64_t)status result:(id)result;
@end

@implementation ASSettingsTaskGetterResult

- (ASSettingsTaskGetterResult)initWithKey:(int)key status:(int64_t)status result:(id)result
{
  v6 = *&key;
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = ASSettingsTaskGetterResult;
  v9 = [(ASSettingsTaskGetterResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(ASSettingsTaskGetterResult *)v9 setKey:v6];
    [(ASSettingsTaskGetterResult *)v10 setStatus:status];
    [(ASSettingsTaskGetterResult *)v10 setResult:resultCopy];
  }

  return v10;
}

@end