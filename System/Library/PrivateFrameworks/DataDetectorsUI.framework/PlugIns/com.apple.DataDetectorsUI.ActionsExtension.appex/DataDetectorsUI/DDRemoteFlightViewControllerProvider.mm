@interface DDRemoteFlightViewControllerProvider
- (void)createViewControllerWithCompletionHandler:(id)handler;
@end

@implementation DDRemoteFlightViewControllerProvider

- (void)createViewControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_flightViewController)
  {
    (*(handlerCopy + 2))(handlerCopy);
  }

  else
  {
    v6 = objc_alloc_init(FUFlightPreviewController);
    flightViewController = self->_flightViewController;
    self->_flightViewController = v6;

    actionContext = [(DDRemoteFlightViewControllerProvider *)self actionContext];
    [actionContext result];
    Type = DDResultGetType();
    v10 = CFStringCompare(Type, DDBinderFlightInformationKey, 0);

    v11 = 0;
    if (v10 == kCFCompareEqualTo && (-[DDRemoteFlightViewControllerProvider actionContext](self, "actionContext"), v12 = objc_claimAutoreleasedReturnValue(), [v12 result], DDResultGetSubresultWithType(), v12, -[DDRemoteFlightViewControllerProvider actionContext](self, "actionContext"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "result"), DDResultGetSubresultWithType(), v13, DDResultGetValue(), v11 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(DDResultGetValue(), "integerValue"), v11) && (v15 = v14) != 0)
    {
      v16 = +[NSDate date];
      v17 = [FUFlightFactory flightFactoryClassWithProvider:FUFactoryProvider_Default];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100003C3C;
      v18[3] = &unk_100008530;
      v18[4] = self;
      v19 = v5;
      [v17 loadFlightsWithNumber:v15 airlineCode:v11 date:v16 dateType:1 completionHandler:v18];
    }

    else
    {
      v5[2](v5, 0);
    }
  }
}

@end