@interface CTXPCGetBandInfoResponse
+ (id)allowedClassesForArguments;
- (CTBandInfo)bandInfo;
- (CTXPCGetBandInfoResponse)initWithBandInfo:(id)info;
- (CTXPCGetBandInfoResponse)initWithBandMasks:(id)masks;
- (NSDictionary)bandMasks;
@end

@implementation CTXPCGetBandInfoResponse

- (CTXPCGetBandInfoResponse)initWithBandMasks:(id)masks
{
  v10[1] = *MEMORY[0x1E69E9840];
  masksCopy = masks;
  v9 = @"bands";
  v10[0] = masksCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetBandInfoResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTXPCGetBandInfoResponse)initWithBandInfo:(id)info
{
  v10[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9 = @"bands";
  v10[0] = infoCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetBandInfoResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (NSDictionary)bandMasks
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bands"];
  v4 = CTThrowingCastIfClass<NSDictionary>(v3);

  return v4;
}

- (CTBandInfo)bandInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"bands"];
  v4 = CTThrowingCastIfClass<CTBandInfo>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCGetBandInfoResponse;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end