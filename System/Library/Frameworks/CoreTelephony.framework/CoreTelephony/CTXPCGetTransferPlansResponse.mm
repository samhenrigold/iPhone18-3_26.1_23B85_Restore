@interface CTXPCGetTransferPlansResponse
+ (id)allowedClassesForArguments;
- (BOOL)isFlexPolicyOn;
- (CTRemoteDeviceList)devices;
- (CTXPCGetTransferPlansResponse)initWithRemtoeDevices:(id)devices isFlexPolicyOn:(BOOL)on;
@end

@implementation CTXPCGetTransferPlansResponse

- (CTXPCGetTransferPlansResponse)initWithRemtoeDevices:(id)devices isFlexPolicyOn:(BOOL)on
{
  onCopy = on;
  v18[1] = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v7 = devicesCopy;
  if (devicesCopy)
  {
    v15[0] = @"devices";
    v15[1] = @"isFlexPolicyOn";
    v16[0] = devicesCopy;
    v8 = [MEMORY[0x1E696AD98] numberWithBool:onCopy];
    v16[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v13.receiver = self;
    v13.super_class = CTXPCGetTransferPlansResponse;
    v10 = [(CTXPCMessage *)&v13 initWithNamedArguments:v9];
  }

  else
  {
    v17 = @"isFlexPolicyOn";
    v8 = [MEMORY[0x1E696AD98] numberWithBool:onCopy];
    v18[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v14.receiver = self;
    v14.super_class = CTXPCGetTransferPlansResponse;
    v10 = [(CTXPCMessage *)&v14 initWithNamedArguments:v9];
  }

  v11 = v10;

  return v11;
}

- (CTRemoteDeviceList)devices
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"devices"];
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

- (BOOL)isFlexPolicyOn
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"isFlexPolicyOn"];
  v4 = CTThrowingCastIfClass<NSNumber>(v3);
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)allowedClassesForArguments
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCGetTransferPlansResponse;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end