@interface AAiCloudTermsStringRequest
- (AAiCloudTermsStringRequest)initWithAccount:(id)account preferPassword:(BOOL)password;
- (AAiCloudTermsStringRequest)initWithAccount:(id)account termsEntries:(id)entries preferPassword:(BOOL)password;
@end

@implementation AAiCloudTermsStringRequest

- (AAiCloudTermsStringRequest)initWithAccount:(id)account preferPassword:(BOOL)password
{
  passwordCopy = password;
  v17[1] = *MEMORY[0x1E69E9840];
  v16 = @"name";
  v17[0] = @"iCloud";
  v6 = MEMORY[0x1E695DF20];
  accountCopy = account;
  v8 = [v6 dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14[0] = @"terms";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:v8];
  v14[1] = @"format";
  v15[0] = v9;
  v15[1] = @"plist/text";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v13.receiver = self;
  v13.super_class = AAiCloudTermsStringRequest;
  v11 = [(AAGenericTermsUIRequest *)&v13 initWithAccount:accountCopy parameters:v10 preferPassword:passwordCopy];

  return v11;
}

- (AAiCloudTermsStringRequest)initWithAccount:(id)account termsEntries:(id)entries preferPassword:(BOOL)password
{
  passwordCopy = password;
  accountCopy = account;
  v9 = [(AAGenericTermsUIRequest *)self _requestParamsForTermsEntries:entries];
  v10 = [v9 mutableCopy];

  [v10 setObject:@"plist/text" forKeyedSubscript:@"format"];
  v11 = [v10 copy];
  v14.receiver = self;
  v14.super_class = AAiCloudTermsStringRequest;
  v12 = [(AAGenericTermsUIRequest *)&v14 initWithAccount:accountCopy parameters:v11 preferPassword:passwordCopy];

  return v12;
}

@end