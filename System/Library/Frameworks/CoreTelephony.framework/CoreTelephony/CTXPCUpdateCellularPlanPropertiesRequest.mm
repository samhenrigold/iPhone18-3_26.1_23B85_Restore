@interface CTXPCUpdateCellularPlanPropertiesRequest
+ (id)allowedClassesForArguments;
- (CTXPCUpdateCellularPlanPropertiesRequest)initWithProperties:(id)properties appName:(id)name appType:(unint64_t)type;
- (id)appName;
- (id)properties;
- (unint64_t)appType;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCUpdateCellularPlanPropertiesRequest

- (CTXPCUpdateCellularPlanPropertiesRequest)initWithProperties:(id)properties appName:(id)name appType:(unint64_t)type
{
  v16[3] = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  nameCopy = name;
  v15[0] = @"properties";
  v15[1] = @"appName";
  v16[0] = propertiesCopy;
  v16[1] = nameCopy;
  v15[2] = @"appType";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v16[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v14.receiver = self;
  v14.super_class = CTXPCUpdateCellularPlanPropertiesRequest;
  v12 = [(CTXPCMessage *)&v14 initWithNamedArguments:v11];

  return v12;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  properties = [(CTXPCUpdateCellularPlanPropertiesRequest *)self properties];
  appName = [(CTXPCUpdateCellularPlanPropertiesRequest *)self appName];
  appType = [(CTXPCUpdateCellularPlanPropertiesRequest *)self appType];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__CTXPCUpdateCellularPlanPropertiesRequest_performRequestWithHandler_completionHandler___block_invoke;
  v12[3] = &unk_1E6A43CC8;
  v11 = completionHandlerCopy;
  v13 = v11;
  [handlerCopy updateCellularPlanProperties:properties appName:appName appType:appType completionHandler:v12];
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCUpdateCellularPlanPropertiesRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

- (id)properties
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"properties"];
  v4 = CTThrowingCastIfClass<CTCellularPlanProperties>(v3);

  return v4;
}

- (id)appName
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"appName"];
  v4 = CTThrowingCastIfClass<NSString>(v3);

  return v4;
}

- (unint64_t)appType
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"appType"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end