@interface CTXPCReadCachedChatBotRenderInfoResponse
+ (id)allowedClassesForArguments;
- (CTLazuliChatBotRenderInformationData)info;
- (CTXPCReadCachedChatBotRenderInfoResponse)initWithInfo:(id)info;
@end

@implementation CTXPCReadCachedChatBotRenderInfoResponse

- (CTXPCReadCachedChatBotRenderInfoResponse)initWithInfo:(id)info
{
  v10[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = @"info";
  v10[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCReadCachedChatBotRenderInfoResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTLazuliChatBotRenderInformationData)info
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"info"];
  v4 = CTThrowingCastIfClass<CTLazuliChatBotRenderInformationData>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCReadCachedChatBotRenderInfoResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end