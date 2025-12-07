@interface CTXPCGetNetworkSelectionInfoResponse
+ (id)allowedClassesForArguments;
- (CTNetworkSelectionInfo)info;
- (CTXPCGetNetworkSelectionInfoResponse)initWithNetworkSelectionInfo:(id)info;
@end

@implementation CTXPCGetNetworkSelectionInfoResponse

- (CTXPCGetNetworkSelectionInfoResponse)initWithNetworkSelectionInfo:(id)info
{
  v10[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = @"selection";
  v10[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetNetworkSelectionInfoResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTNetworkSelectionInfo)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"selection"];
  v4 = CTThrowingCastIfClass<CTNetworkSelectionInfo>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetNetworkSelectionInfoResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end