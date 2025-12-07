@interface CTXPCGetNetworkListResponse
+ (id)allowedClassesForArguments;
- (CTNetworkList)networks;
- (CTXPCGetNetworkListResponse)initWithNetworkList:(id)list;
@end

@implementation CTXPCGetNetworkListResponse

- (CTXPCGetNetworkListResponse)initWithNetworkList:(id)list
{
  v10[1] = *MEMORY[0x1E69E9840];
  listCopy = list;
  v9 = @"network";
  v10[0] = listCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetNetworkListResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTNetworkList)networks
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"network"];
  v4 = CTThrowingCastIfClass<CTNetworkList>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetNetworkListResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end