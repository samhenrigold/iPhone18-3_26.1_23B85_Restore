@interface PKNANSubscriber
- (NSString)debugDescription;
- (PKNANSubscriber)init;
- (id)queue;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result;
- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation PKNANSubscriber

- (PKNANSubscriber)init
{
  v6.receiver = self;
  v6.super_class = PKNANSubscriber;
  v2 = [(PKNANSubscriber *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    endpoints = v2->_endpoints;
    v2->_endpoints = v3;
  }

  return v2;
}

- (NSString)debugDescription
{
  v9.receiver = self;
  v9.super_class = PKNANSubscriber;
  v3 = [(PKNANSubscriber *)&v9 debugDescription];
  v4 = [(NSMutableSet *)self->_endpoints count];
  v5 = [(NSMutableSet *)self->_endpoints debugDescription];
  v6 = [(WiFiAwareSubscriber *)self->_subscriber debugDescription];
  v7 = [NSString stringWithFormat:@"%@ { %d endpoints - %@, %@ }", v3, v4, v5, v6];

  return v7;
}

- (id)queue
{
  dispatchQueue = [(PKNANSubscriber *)self dispatchQueue];

  if (dispatchQueue)
  {
    dispatchQueue2 = [(PKNANSubscriber *)self dispatchQueue];
  }

  else
  {
    dispatchQueue2 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
  }

  return dispatchQueue2;
}

- (void)subscriberStarted:(id)started
{
  startedCopy = started;
  v6 = NSStringFromSelector(a2);
  NSLog(@"%@: %@ %@", self, v6, startedCopy);

  v7 = objc_retainBlock(self->_activateHandler);
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  if (v7)
  {
    queue = [(PKNANSubscriber *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002D2DC;
    block[3] = &unk_100095840;
    v11 = v7;
    dispatch_async(queue, block);
  }
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  v6 = NSStringFromSelector(a2);
  NSLog(@"%@: %@ - %d", self, v6, error);

  v7 = objc_retainBlock(self->_activateHandler);
  activateHandler = self->_activateHandler;
  self->_activateHandler = 0;

  if (v7)
  {
    v17 = @"WiFiP2PError";
    v9 = [NSNumber numberWithInteger:error];
    v18 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:14 userInfo:v10];

    queue = [(PKNANSubscriber *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002D4EC;
    block[3] = &unk_100095B90;
    v15 = v11;
    v16 = v7;
    v13 = v11;
    dispatch_async(queue, block);
  }
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  subscriberCopy = subscriber;
  v6 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v6);

  if (self->_activateHandler)
  {
    __assert_rtn("[PKNANSubscriber subscriber:terminatedWithReason:]", "PKNan.mm", 293, "_activateHandler == nil");
  }

  [subscriberCopy setDelegate:0];
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  dCopy = d;
  addressCopy = address;
  v7 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v7);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  selfCopy = self;
  obj = self->_endpoints;
  v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v29 + 1) + 8 * v10);
      discoveryResult = [v11 discoveryResult];
      if ([discoveryResult publishID] == dCopy)
      {
        discoveryResult2 = [v11 discoveryResult];
        publisherAddress = [discoveryResult2 publisherAddress];
        data = [publisherAddress data];
        data2 = [addressCopy data];
        v17 = [data isEqualToData:data2];

        if (v17)
        {
          v18 = v11;

          if (!v18)
          {
            goto LABEL_17;
          }

          endpointLostHandler = [(PKNANSubscriber *)selfCopy endpointLostHandler];
          if (endpointLostHandler)
          {
            queue = [(PKNANSubscriber *)selfCopy queue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10002D90C;
            block[3] = &unk_100095B90;
            v28 = endpointLostHandler;
            v27 = v18;
            dispatch_async(queue, block);
          }

          [(NSMutableSet *)selfCopy->_endpoints removeObject:v18];

          v21 = addressCopy;
          goto LABEL_18;
        }
      }

      else
      {
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableSet *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

LABEL_17:
  v21 = addressCopy;
  NSLog(@"Can't find endpoint publish id %d, addr %@", dCopy, addressCopy);
LABEL_18:
}

- (void)subscriber:(id)subscriber receivedDiscoveryResult:(id)result
{
  resultCopy = result;
  v7 = NSStringFromSelector(a2);
  v8 = [resultCopy debugDescription];
  NSLog(@"%@: %@ - %@", self, v7, v8);

  v9 = [[PKNANEndpoint alloc] initWithDiscoveryResult:resultCopy];
  [(NSMutableSet *)self->_endpoints addObject:v9];
  endpointFoundHandler = [(PKNANSubscriber *)self endpointFoundHandler];
  if (endpointFoundHandler)
  {
    queue = [(PKNANSubscriber *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002DA98;
    block[3] = &unk_100095B90;
    v14 = endpointFoundHandler;
    v13 = v9;
    dispatch_async(queue, block);
  }
}

- (void)subscriber:(id)subscriber receivedMessage:(id)message fromPublishID:(unsigned __int8)d address:(id)address
{
  v7 = NSStringFromSelector(a2);
  NSLog(@"%@: %@", self, v7);
}

- (void)activateWithCompletion:(id)completion
{
  v4 = objc_retainBlock(completion);
  activateHandler = self->_activateHandler;
  self->_activateHandler = v4;

  v6 = [WiFiAwareSubscribeConfiguration alloc];
  serviceType = [(PKNANSubscriber *)self serviceType];
  v10 = [v6 initWithServiceName:serviceType];

  if (([(PKNANSubscriber *)self controlFlags]& 1) != 0)
  {
    [v10 setAuthenticationType:0];
  }

  v8 = [[WiFiAwareSubscriber alloc] initWithConfiguration:v10];
  subscriber = self->_subscriber;
  self->_subscriber = v8;

  [(WiFiAwareSubscriber *)self->_subscriber setDelegate:self];
  [(WiFiAwareSubscriber *)self->_subscriber start];
}

- (void)invalidate
{
  subscriber = self->_subscriber;
  if (subscriber)
  {
    [(WiFiAwareSubscriber *)subscriber stop];
    [(WiFiAwareSubscriber *)self->_subscriber setDelegate:0];
    v4 = self->_subscriber;
    self->_subscriber = 0;
  }
}

@end