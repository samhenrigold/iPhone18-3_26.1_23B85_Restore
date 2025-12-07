@interface CTXPCGetSupportedDataRatesResponse
+ (id)allowedClassesForArguments;
- (CTSupportedMaxDataRates)rates;
- (CTXPCGetSupportedDataRatesResponse)initWithSupportedRates:(id)rates;
@end

@implementation CTXPCGetSupportedDataRatesResponse

- (CTXPCGetSupportedDataRatesResponse)initWithSupportedRates:(id)rates
{
  v10[1] = *MEMORY[0x1E69E9840];
  ratesCopy = rates;
  v9 = @"supportedDataRates";
  v10[0] = ratesCopy;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8.receiver = self;
  v8.super_class = CTXPCGetSupportedDataRatesResponse;
  v6 = [(CTXPCMessage *)&v8 initWithNamedArguments:v5];

  return v6;
}

- (CTSupportedMaxDataRates)rates
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"supportedDataRates"];
  v4 = CTThrowingCastIfClass<CTSupportedMaxDataRates>(v3);

  return v4;
}

+ (id)allowedClassesForArguments
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CTXPCGetSupportedDataRatesResponse;
  v2 = objc_msgSendSuper2(&v5, sel_allowedClassesForArguments);
  v3 = [v2 setByAddingObject:objc_opt_class()];

  return v3;
}

@end