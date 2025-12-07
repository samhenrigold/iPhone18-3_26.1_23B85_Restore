@interface SSVURLLookupResponseConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SSVURLLookupResponseConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  responseCopy = response;
  v17 = 0;
  v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:data options:0 error:&v17];
  v9 = v17;
  objc_opt_class();
  v10 = 0;
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 objectForKey:@"pageType"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 isEqualToString:@"nearbyApps"])
    {
      v12 = [[SSLookupResponse alloc] initWithLocationResponseDictionary:v8];
    }

    else
    {
      v12 = [[SSLookupResponse alloc] initWithResponseDictionary:v8];
    }

    v10 = v12;
    SSURLResponseExpirationInterval(responseCopy);
    if (v13 >= 0.0)
    {
      v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
      [(SSLookupResponse *)v10 setExpirationDate:v14];
    }
  }

  if (!responseCopy && error)
  {
    v15 = v9;
    *error = v9;
  }

  return v10;
}

@end