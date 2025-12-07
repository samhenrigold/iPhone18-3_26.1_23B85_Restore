@interface CTXPCGetDeviceInfoResponse
+ (id)allowedClassesForArguments;
- (CTXPCGetDeviceInfoResponse)initWithInfo:(id)info;
- (NSDictionary)deviceInfo;
@end

@implementation CTXPCGetDeviceInfoResponse

- (CTXPCGetDeviceInfoResponse)initWithInfo:(id)info
{
  v10[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = @"info";
  v10[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetDeviceInfoResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSDictionary)deviceInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCGetDeviceInfoResponse;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end