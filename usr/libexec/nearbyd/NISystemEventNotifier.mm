@interface NISystemEventNotifier
- (NISystemEventNotifier)initWithParentSession:(id)session;
- (void)_notifyResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type;
- (void)notifyPassiveAccessIntent:(unsigned int)intent;
@end

@implementation NISystemEventNotifier

- (NISystemEventNotifier)initWithParentSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = NISystemEventNotifier;
  v5 = [(NISystemEventNotifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->parentSession, sessionCopy);
  }

  return v6;
}

- (void)notifyPassiveAccessIntent:(unsigned int)intent
{
  v3 = *&intent;
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v16[0] = &off_1009C4148;
    v15[0] = @"SystemEventDictKey_EventType";
    v15[1] = @"SystemEventDictKey_PassiveAccessIntentOptions";
    v7 = [NSNumber numberWithUnsignedInt:v3];
    v16[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003579D0;
    block[3] = &unk_10098A2E8;
    v13 = WeakRetained;
    v14 = v8;
    v10 = v8;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:3097 description:@"Parent session is nil"];
  }
}

- (void)_notifyResourceUsageLimitExceeded:(BOOL)exceeded forSessionConfigurationType:(Class)type
{
  exceededCopy = exceeded;
  WeakRetained = objc_loadWeakRetained(&self->parentSession);
  if (WeakRetained)
  {
    v19[0] = &off_1009C4160;
    v18[0] = @"SystemEventDictKey_EventType";
    v18[1] = @"SystemEventDictKey_ResourceUsageLimitExceededValue";
    v9 = [NSNumber numberWithBool:exceededCopy];
    v19[1] = v9;
    v18[2] = @"SystemEventDictKey_ConfigurationType";
    v10 = NSStringFromClass(type);
    v19[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];

    getInternalConnectionQueue = [WeakRetained getInternalConnectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100357C64;
    block[3] = &unk_10098A2E8;
    v16 = WeakRetained;
    v17 = v11;
    v13 = v11;
    dispatch_sync(getInternalConnectionQueue, block);
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NISession.mm" lineNumber:3113 description:@"Parent session is nil"];
  }
}

@end