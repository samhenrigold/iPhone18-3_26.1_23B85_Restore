@interface StoreKitRequestQueue
+ (id)sharedInstance;
+ (void)setSharedInstance:(id)instance;
- (StoreKitRequestQueue)init;
- (void)addOperation:(id)operation forClient:(id)client withMessageBlock:(id)block;
- (void)addOperation:(id)operation forMessage:(id)message connection:(id)connection replyBlock:(id)block;
- (void)requestProductsWithMessage:(id)message connection:(id)connection;
@end

@implementation StoreKitRequestQueue

- (StoreKitRequestQueue)init
{
  v4.receiver = self;
  v4.super_class = StoreKitRequestQueue;
  v2 = [(RequestQueue *)&v4 init];
  if (v2)
  {
    if (qword_100383E88 != -1)
    {
      sub_100272154();
    }

    [(RequestQueue *)v2 setOperationQueue:qword_100383E80];
  }

  return v2;
}

+ (void)setSharedInstance:(id)instance
{
  if (qword_100383E78 != instance)
  {

    qword_100383E78 = instance;
  }
}

+ (id)sharedInstance
{
  result = qword_100383E78;
  if (!qword_100383E78)
  {
    result = objc_alloc_init(self);
    qword_100383E78 = result;
  }

  return result;
}

- (void)requestProductsWithMessage:(id)message connection:(id)connection
{
  v7 = objc_opt_class();
  v8 = sub_1001FA208(message, "1", v7);
  v9 = [[LoadMicroPaymentProductsOperation alloc] initWithProductIdentifiers:v8];
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && !SSXPCConnectionHasEntitlement() || (v10 = objc_alloc(sub_1001FA240()), (v11 = [v10 initWithXPCEncoding:{xpc_dictionary_get_value(message, "2")}]) == 0) || (v12 = v11, v13 = objc_alloc_init(StoreKitClientIdentity), -[StoreKitClientIdentity setValuesWithPaymentQueueClient:](v13, "setValuesWithPaymentQueueClient:", v12), v12, !v13))
  {
    v14 = [[XPCClient alloc] initWithInputConnection:connection];
    v13 = objc_alloc_init(StoreKitClientIdentity);
    [(StoreKitClientIdentity *)v13 setBundleIdentifier:[(XPCClient *)v14 clientIdentifier]];
    [(StoreKitClientIdentity *)v13 setSandboxed:[(XPCClient *)v14 isAppleSigned]^ 1];
  }

  [(LoadMicroPaymentProductsOperation *)v9 setClientIdentity:v13];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2328;
  v15[3] = &unk_100328218;
  v15[4] = v9;
  [(StoreKitRequestQueue *)self addOperation:v9 forMessage:message connection:connection replyBlock:v15];
}

- (void)addOperation:(id)operation forClient:(id)client withMessageBlock:(id)block
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D242C;
  v6[3] = &unk_100328240;
  v6[4] = block;
  v5.receiver = self;
  v5.super_class = StoreKitRequestQueue;
  [(RequestQueue *)&v5 addOperation:operation forClient:client withMessageBlock:v6];
}

- (void)addOperation:(id)operation forMessage:(id)message connection:(id)connection replyBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D2518;
  v7[3] = &unk_100328240;
  v7[4] = block;
  v6.receiver = self;
  v6.super_class = StoreKitRequestQueue;
  [(RequestQueue *)&v6 addOperation:operation forMessage:message connection:connection replyBlock:v7];
}

@end