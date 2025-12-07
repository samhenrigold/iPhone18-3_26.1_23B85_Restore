@interface CTXPCReportSpamRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestination)destination;
- (CTLazuliOperationID)operationID;
- (CTLazuliSpamReportInformation)spamReportInfo;
- (CTXPCReportSpamRequest)initWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCReportSpamRequest

- (CTXPCReportSpamRequest)initWithContext:(id)context destination:(id)destination spamReportInfo:(id)info operationID:(id)d
{
  v19[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  destinationCopy = destination;
  infoCopy = info;
  dCopy = d;
  v18[0] = @"destination";
  v18[1] = @"spamReportInfo";
  v19[0] = destinationCopy;
  v19[1] = infoCopy;
  v18[2] = @"operationID";
  v19[2] = dCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v17.receiver = self;
  v17.super_class = CTXPCReportSpamRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v17 initWithContext:contextCopy namedArguments:v14];

  return v15;
}

- (CTLazuliDestination)destination
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destination"];
  v4 = CTThrowingCastIfClass<CTLazuliDestination>(v3);

  return v4;
}

- (CTLazuliSpamReportInformation)spamReportInfo
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"spamReportInfo"];
  v4 = CTThrowingCastIfClass<CTLazuliSpamReportInformation>(v3);

  return v4;
}

- (CTLazuliOperationID)operationID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"operationID"];
  v4 = CTThrowingCastIfClass<CTLazuliOperationID>(v3);

  return v4;
}

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  destination = [(CTXPCReportSpamRequest *)self destination];
  spamReportInfo = [(CTXPCReportSpamRequest *)self spamReportInfo];
  operationID = [(CTXPCReportSpamRequest *)self operationID];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__CTXPCReportSpamRequest_performRequestWithHandler_completionHandler___block_invoke;
  v13[3] = &unk_1E6A43CC8;
  v12 = completionHandlerCopy;
  v14 = v12;
  [handlerCopy reportLazuliSpamWithContext:context destination:destination spamReportInfo:spamReportInfo operationID:operationID completion:v13];
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCReportSpamRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end