@interface CDXSetExtensionEnabledOperation
- (BOOL)_loadExtensionDataWithError:(id *)error;
- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)identifier enabled:(BOOL)enabled loadExtensionDataOperation:(id)operation queue:(id)queue store:(id)store identificationEntriesChangedNotifier:(id)notifier;
- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)identifier enabled:(BOOL)enabled loadExtensionDataOperation:(id)operation store:(id)store;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXSetExtensionEnabledOperation

- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)identifier enabled:(BOOL)enabled loadExtensionDataOperation:(id)operation queue:(id)queue store:(id)store identificationEntriesChangedNotifier:(id)notifier
{
  identifierCopy = identifier;
  operationCopy = operation;
  queueCopy = queue;
  storeCopy = store;
  notifierCopy = notifier;
  v26.receiver = self;
  v26.super_class = CDXSetExtensionEnabledOperation;
  v18 = [(CDXSetExtensionEnabledOperation *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    v20 = [identifierCopy copy];
    extensionIdentifier = v19->_extensionIdentifier;
    v19->_extensionIdentifier = v20;

    v19->_enabled = enabled;
    objc_storeStrong(&v19->_loadExtensionDataOperation, operation);
    objc_storeStrong(&v19->_store, store);
    objc_storeStrong(&v19->_identificationEntriesChangedNotifier, notifier);
    v22 = objc_alloc_init(CDXAWDReporter);
    awdReporter = v19->_awdReporter;
    v19->_awdReporter = v22;
  }

  return v19;
}

- (CDXSetExtensionEnabledOperation)initWithExtensionIdentifier:(id)identifier enabled:(BOOL)enabled loadExtensionDataOperation:(id)operation store:(id)store
{
  enabledCopy = enabled;
  storeCopy = store;
  operationCopy = operation;
  identifierCopy = identifier;
  v13 = dispatch_queue_create("com.apple.callkit.calldirectory.setextensionenabledoperation", 0);
  v14 = [CDXNotifydNotifier alloc];
  v15 = [(CDXNotifydNotifier *)v14 initWithNotificationName:CXCallDirectoryManagerIdentificationEntriesChangedNotification];
  v16 = [(CDXSetExtensionEnabledOperation *)self initWithExtensionIdentifier:identifierCopy enabled:enabledCopy loadExtensionDataOperation:operationCopy queue:v13 store:storeCopy identificationEntriesChangedNotifier:v15];

  return v16;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXSetExtensionEnabledOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008E48;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_loadExtensionDataWithError:(id *)error
{
  queue = [(CDXSetExtensionEnabledOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  loadExtensionDataOperation = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];

  if (loadExtensionDataOperation)
  {
    loadExtensionDataOperation2 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];
    [loadExtensionDataOperation2 setAllowLoadingDisabledExtensions:1];

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_10000962C;
    v23 = sub_10000963C;
    v24 = 0;
    v9 = dispatch_semaphore_create(0);
    loadExtensionDataOperation3 = [(CDXSetExtensionEnabledOperation *)self loadExtensionDataOperation];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100009644;
    v15[3] = &unk_100034D78;
    v17 = &v25;
    v18 = &v19;
    v11 = v9;
    v16 = v11;
    [loadExtensionDataOperation3 performWithCompletionHandler:v15];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v20[5];
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v12 = sub_100005CC4(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100021B1C(v12);
    }

    if (error)
    {
      *error = [NSError cx_callDirectoryManagerErrorWithCode:0];
    }
  }

  v13 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);
  return v13;
}

@end