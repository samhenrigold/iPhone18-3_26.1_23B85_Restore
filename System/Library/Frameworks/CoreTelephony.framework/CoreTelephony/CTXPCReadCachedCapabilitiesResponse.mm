@interface CTXPCReadCachedCapabilitiesResponse
+ (id)allowedClassesForArguments;
- (CTLazuliCapabilitiesInformation)capabilitiesInfo;
- (CTXPCReadCachedCapabilitiesResponse)initWithCapabilitiesInfo:(id)info;
@end

@implementation CTXPCReadCachedCapabilitiesResponse

- (CTXPCReadCachedCapabilitiesResponse)initWithCapabilitiesInfo:(id)info
{
  v10[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = @"capabilitiesInfo";
  v10[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCReadCachedCapabilitiesResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTLazuliCapabilitiesInformation)capabilitiesInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"capabilitiesInfo"];
  v4 = CTThrowingCastIfClass<CTLazuliCapabilitiesInformation>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCReadCachedCapabilitiesResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end