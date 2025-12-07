@interface AAUpdateAccountUIRequest
- (AAUpdateAccountUIRequest)initWithAccount:(id)account termsEntries:(id)entries deviceOSVersion:(id)version;
- (id)urlString;
@end

@implementation AAUpdateAccountUIRequest

- (AAUpdateAccountUIRequest)initWithAccount:(id)account termsEntries:(id)entries deviceOSVersion:(id)version
{
  v21[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  entriesCopy = entries;
  versionCopy = version;
  v11 = versionCopy;
  if (versionCopy)
  {
    v19 = versionCopy;
    v20 = @"iOS";
    v18 = @"version";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v21[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(AAGenericTermsUIRequest *)self _requestParamsForTermsEntries:entriesCopy additionalInfo:v13];
  v17.receiver = self;
  v17.super_class = AAUpdateAccountUIRequest;
  v15 = [(AAGenericTermsUIRequest *)&v17 initWithAccount:accountCopy parameters:v14];

  return v15;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  updateAccountUIURL = [v2 updateAccountUIURL];

  return updateAccountUIURL;
}

@end