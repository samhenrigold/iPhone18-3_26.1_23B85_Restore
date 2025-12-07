@interface CTXPCSendOneToManyGeoLocationRequest
+ (id)allowedClassesForArguments;
- (CTLazuliDestinationList)destinationList;
- (CTLazuliMessageGeoLocationPush)push;
- (CTLazuliMessageID)messageID;
- (CTXPCSendOneToManyGeoLocationRequest)initWithContext:(id)context to:(id)to withMessageID:(id)d withGeoPush:(id)push;
- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation CTXPCSendOneToManyGeoLocationRequest

- (CTXPCSendOneToManyGeoLocationRequest)initWithContext:(id)context to:(id)to withMessageID:(id)d withGeoPush:(id)push
{
  v19[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  toCopy = to;
  dCopy = d;
  pushCopy = push;
  v18[0] = @"destinationList";
  v18[1] = @"messageID";
  v19[0] = toCopy;
  v19[1] = dCopy;
  v18[2] = @"geoLocationPush";
  v19[2] = pushCopy;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v17.receiver = self;
  v17.super_class = CTXPCSendOneToManyGeoLocationRequest;
  v15 = [(CTXPCSubscriptionContextRequest *)&v17 initWithContext:contextCopy namedArguments:v14];

  return v15;
}

- (CTLazuliMessageID)messageID
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"messageID"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageID>(v3);

  return v4;
}

- (CTLazuliMessageGeoLocationPush)push
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"geoLocationPush"];
  v4 = CTThrowingCastIfClass<CTLazuliMessageGeoLocationPush>(v3);

  return v4;
}

- (CTLazuliDestinationList)destinationList
{
  namedArguments = [(CTXPCMessage *)self namedArguments];
  v3 = [namedArguments objectForKey:@"destinationList"];
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

- (void)performRequestWithHandler:(id)handler completionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  context = [(CTXPCSubscriptionContextRequest *)self context];
  messageID = [(CTXPCSendOneToManyGeoLocationRequest *)self messageID];
  push = [(CTXPCSendOneToManyGeoLocationRequest *)self push];
  destinationList = [(CTXPCSendOneToManyGeoLocationRequest *)self destinationList];
  if (destinationList)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__CTXPCSendOneToManyGeoLocationRequest_performRequestWithHandler_completionHandler___block_invoke;
    v13[3] = &unk_1E6A43CC8;
    v14 = completionHandlerCopy;
    [handlerCopy sendOneToManyGeolocationMessage:context to:destinationList withMessageID:messageID withGeoPush:push completion:v13];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(completionHandlerCopy + 2))(completionHandlerCopy, 0, v12);
  }
}

+ (id)allowedClassesForArguments
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CTXPCSendOneToManyGeoLocationRequest;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClassesForArguments);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  return v4;
}

@end