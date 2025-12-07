@interface CTXPCGetIsDataAttachedResponse
+ (id)allowedClassesForArguments;
- (BOOL)isDataAttached;
- (CTXPCGetIsDataAttachedResponse)initWithIsDataAttached:(BOOL)attached;
@end

@implementation CTXPCGetIsDataAttachedResponse

- (CTXPCGetIsDataAttachedResponse)initWithIsDataAttached:(BOOL)attached
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"isDataAttached";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:attached];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetIsDataAttachedResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (BOOL)isDataAttached
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"isDataAttached"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetIsDataAttachedResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end