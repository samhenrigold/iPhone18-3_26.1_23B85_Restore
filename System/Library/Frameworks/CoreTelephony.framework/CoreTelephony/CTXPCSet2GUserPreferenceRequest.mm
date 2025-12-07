@interface CTXPCSet2GUserPreferenceRequest
+ (id)allowedClassesForArguments;
- (CTXPCSet2GUserPreferenceRequest)initWithEnable:(BOOL)enable;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSet2GUserPreferenceRequest

- (CTXPCSet2GUserPreferenceRequest)initWithEnable:(BOOL)enable
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"enable";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enable];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCSet2GUserPreferenceRequest;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v9 = [namedArguments objectForKey:@"enable"];
  v10 = CTThrowingCastIfClass<NSNumber>(v9);
  bOOLValue = [v10 BOOLValue];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__CTXPCSet2GUserPreferenceRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy set2GUserPreference:bOOLValue completion:v13];
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCSet2GUserPreferenceRequest;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end