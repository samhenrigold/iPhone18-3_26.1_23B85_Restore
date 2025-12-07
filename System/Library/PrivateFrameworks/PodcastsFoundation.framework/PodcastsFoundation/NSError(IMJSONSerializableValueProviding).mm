@interface NSError(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSError(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"code";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(self, "code")}];
  v12[0] = v2;
  v11[1] = @"domain";
  domain = [self domain];
  v4 = domain;
  if (domain)
  {
    v5 = domain;
  }

  else
  {
    v5 = &stru_1F548B930;
  }

  v12[1] = v5;
  v11[2] = @"localizedDescription";
  localizedDescription = [self localizedDescription];
  v7 = localizedDescription;
  if (localizedDescription)
  {
    v8 = localizedDescription;
  }

  else
  {
    v8 = &stru_1F548B930;
  }

  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

@end