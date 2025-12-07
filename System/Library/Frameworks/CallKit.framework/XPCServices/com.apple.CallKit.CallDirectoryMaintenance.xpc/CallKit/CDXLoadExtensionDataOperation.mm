@interface CDXLoadExtensionDataOperation
- (BOOL)extensionDataRequest:(id)request addedBlockingEntryData:(id)data error:(id *)error;
- (BOOL)extensionDataRequest:(id)request addedIdentificationEntryData:(id)data error:(id *)error;
- (BOOL)extensionDataRequest:(id)request isIncrementalLoadingAllowedWithError:(id *)error;
- (BOOL)extensionDataRequest:(id)request removedAllBlockingEntriesWithError:(id *)error;
- (BOOL)extensionDataRequest:(id)request removedAllIdentificationEntriesWithError:(id *)error;
- (BOOL)extensionDataRequest:(id)request removedBlockingEntryData:(id)data error:(id *)error;
- (BOOL)extensionDataRequest:(id)request removedIdentificationEntryData:(id)data error:(id *)error;
- (BOOL)performInitialDeletionIfNecessaryWithError:(id *)error;
- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)identifier dataRequest:(id)request queue:(id)queue store:(id)store lastUpdateDelegate:(id)delegate;
- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)identifier dataRequest:(id)request queue:(id)queue store:(id)store maximumAllowedEntries:(unint64_t)entries identificationEntriesChangedNotifier:(id)notifier lastUpdateDelegate:(id)delegate;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation CDXLoadExtensionDataOperation

- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)identifier dataRequest:(id)request queue:(id)queue store:(id)store maximumAllowedEntries:(unint64_t)entries identificationEntriesChangedNotifier:(id)notifier lastUpdateDelegate:(id)delegate
{
  identifierCopy = identifier;
  requestCopy = request;
  queueCopy = queue;
  storeCopy = store;
  notifierCopy = notifier;
  delegateCopy = delegate;
  v33.receiver = self;
  v33.super_class = CDXLoadExtensionDataOperation;
  v21 = [(CDXLoadExtensionDataOperation *)&v33 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_queue, queue);
    queue = v22->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000ECE8;
    block[3] = &unk_100035048;
    v26 = v22;
    v27 = identifierCopy;
    v28 = delegateCopy;
    v29 = requestCopy;
    v30 = storeCopy;
    entriesCopy = entries;
    v31 = notifierCopy;
    dispatch_async(queue, block);
  }

  return v22;
}

- (CDXLoadExtensionDataOperation)initWithExtensionIdentifier:(id)identifier dataRequest:(id)request queue:(id)queue store:(id)store lastUpdateDelegate:(id)delegate
{
  delegateCopy = delegate;
  storeCopy = store;
  queueCopy = queue;
  requestCopy = request;
  identifierCopy = identifier;
  v17 = [CDXNotifydNotifier alloc];
  v18 = [(CDXNotifydNotifier *)v17 initWithNotificationName:CXCallDirectoryManagerIdentificationEntriesChangedNotification];
  v19 = [(CDXLoadExtensionDataOperation *)self initWithExtensionIdentifier:identifierCopy dataRequest:requestCopy queue:queueCopy store:storeCopy maximumAllowedEntries:2000000 identificationEntriesChangedNotifier:v18 lastUpdateDelegate:delegateCopy];

  return v19;
}

- (BOOL)performInitialDeletionIfNecessaryWithError:(id *)error
{
  if (![(CDXLoadExtensionDataOperation *)self requiresInitialDeletion]|| [(CDXLoadExtensionDataOperation *)self hasPerfomedInitialDeletion])
  {
    return 1;
  }

  store = [(CDXLoadExtensionDataOperation *)self store];
  v18 = 0;
  v7 = [store removeBlockingEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v18}];
  v8 = v18;
  if ((v7 & 1) == 0)
  {

LABEL_10:
    v13 = sub_100005CC4(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100022374();
    }

    v5 = 0;
    v11 = v8;
    goto LABEL_13;
  }

  store2 = [(CDXLoadExtensionDataOperation *)self store];
  v17 = v8;
  v10 = [store2 removeIdentificationEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v17}];
  v11 = v17;

  if (!v10)
  {
    v8 = v11;
    goto LABEL_10;
  }

  v5 = 1;
  v13 = sub_100005CC4([(CDXLoadExtensionDataOperation *)self setHasPerfomedInitialDeletion:1]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    extensionIdentifier = [(CDXLoadExtensionDataOperation *)self extensionIdentifier];
    *buf = 138412290;
    v20 = extensionIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Performed initial deletion for extension with identifier %@", buf, 0xCu);
  }

LABEL_13:

  if (error && v11)
  {
    v15 = v11;
    *error = v11;
  }

  return v5;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F1C0;
  v7[3] = &unk_100034B80;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (BOOL)extensionDataRequest:(id)request isIncrementalLoadingAllowedWithError:(id *)error
{
  v5 = [(CDXLoadExtensionDataOperation *)self queue:request];
  dispatch_assert_queue_V2(v5);

  v7 = sub_100005CC4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    incrementalLoadingState = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Extension data request queried incremental loading allowed. incrementalLoadingState: %ld", &v11, 0xCu);
  }

  incrementalLoadingState2 = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
  if (incrementalLoadingState2 == 2)
  {
    return 1;
  }

  if (incrementalLoadingState2 == 1)
  {
    v9 = sub_100005CC4(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Eligible for incremental loading, so changing incremental loading state to Confirmed", &v11, 2u);
    }

    [(CDXLoadExtensionDataOperation *)self setIncrementalLoadingState:2];
    return 1;
  }

  return 0;
}

- (BOOL)extensionDataRequest:(id)request addedBlockingEntryData:(id)data error:(id *)error
{
  dataCopy = data;
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100005CC4(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = dataCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Extension data request added blocking entry data: %@", buf, 0xCu);
  }

  if ([(CDXLoadExtensionDataOperation *)self performInitialDeletionIfNecessaryWithError:error])
  {
    v11 = [dataCopy count];
    v12 = &v11[[(CDXLoadExtensionDataOperation *)self entriesAdded]];
    maximumAllowedEntries = [(CDXLoadExtensionDataOperation *)self maximumAllowedEntries];
    if (v12 >= maximumAllowedEntries)
    {
      v19 = sub_100005CC4(maximumAllowedEntries);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100022A5C(self);
      }

      v14 = [NSError cx_callDirectoryManagerErrorWithCode:5];
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
LABEL_31:
        v18 = v14 == 0;

        goto LABEL_32;
      }

      while (1)
      {
        v15 = [dataCopy phoneNumberAtIndex:v14];
        lastBlockingPhoneNumber = [(CDXLoadExtensionDataOperation *)self lastBlockingPhoneNumber];
        if (v15 == lastBlockingPhoneNumber)
        {
          break;
        }

        lastBlockingPhoneNumber2 = [(CDXLoadExtensionDataOperation *)self lastBlockingPhoneNumber];
        if (v15 < lastBlockingPhoneNumber2)
        {
          v20 = sub_100005CC4(lastBlockingPhoneNumber2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100022ADC();
          }

          v21 = 3;
          goto LABEL_20;
        }

        [(CDXLoadExtensionDataOperation *)self setLastBlockingPhoneNumber:v15];
        if (v11 == ++v14)
        {
          goto LABEL_21;
        }
      }

      v20 = sub_100005CC4(lastBlockingPhoneNumber);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100022B5C();
      }

      v21 = 4;
LABEL_20:

      v14 = [NSError cx_callDirectoryManagerErrorWithCode:v21];
      if (v14)
      {
        goto LABEL_28;
      }

LABEL_21:
      store = [(CDXLoadExtensionDataOperation *)self store];
      v29 = 0;
      v23 = [store addBlockingEntriesWithData:dataCopy extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v29}];
      v14 = v29;

      v25 = sub_100005CC4(v24);
      v26 = v25;
      if (v23)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Added %lu phone number blocking entries", buf, 0xCu);
        }

        [(CDXLoadExtensionDataOperation *)self setBlockingEntriesAdded:&v11[[(CDXLoadExtensionDataOperation *)self blockingEntriesAdded]]];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100022BDC();
        }
      }
    }

LABEL_28:
    if (error && v14)
    {
      v27 = v14;
      *error = v14;
    }

    goto LABEL_31;
  }

  v18 = 0;
LABEL_32:

  return v18;
}

- (BOOL)extensionDataRequest:(id)request removedBlockingEntryData:(id)data error:(id *)error
{
  dataCopy = data;
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100005CC4(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dataCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Extension data request removed blocking entry data: %@", buf, 0xCu);
  }

  incrementalLoadingState = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
  if (incrementalLoadingState == 2)
  {
    store = [(CDXLoadExtensionDataOperation *)self store];
    v22 = 0;
    v13 = [store removeBlockingEntriesWithData:dataCopy extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v22}];
    v14 = v22;

    v16 = sub_100005CC4(v15);
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [dataCopy count];
        *buf = 134217984;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed %lu phone number blocking entries", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100022C90();
    }

    if (error)
    {
LABEL_14:
      if (v14)
      {
        v20 = v14;
        *error = v14;
      }
    }
  }

  else
  {
    v19 = sub_100005CC4(incrementalLoadingState);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (error)
    {
      goto LABEL_14;
    }
  }

  return v14 == 0;
}

- (BOOL)extensionDataRequest:(id)request removedAllBlockingEntriesWithError:(id *)error
{
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100005CC4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Extension data request removed all blocking entries", buf, 2u);
  }

  incrementalLoadingState = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
  if (incrementalLoadingState == 2)
  {
    store = [(CDXLoadExtensionDataOperation *)self store];
    v20 = 0;
    v11 = [store removeBlockingEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v20}];
    v12 = v20;

    v14 = sub_100005CC4(v13);
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed all phone number blocking entries", v19, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100022D10();
    }

    if (error)
    {
LABEL_14:
      if (v12)
      {
        v17 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v16 = sub_100005CC4(incrementalLoadingState);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v12 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (error)
    {
      goto LABEL_14;
    }
  }

  return v12 == 0;
}

- (BOOL)extensionDataRequest:(id)request addedIdentificationEntryData:(id)data error:(id *)error
{
  dataCopy = data;
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100005CC4(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = dataCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Extension data request added identification entry data: %@", buf, 0xCu);
  }

  if ([(CDXLoadExtensionDataOperation *)self performInitialDeletionIfNecessaryWithError:error])
  {
    v11 = [dataCopy count];
    v12 = &v11[[(CDXLoadExtensionDataOperation *)self entriesAdded]];
    maximumAllowedEntries = [(CDXLoadExtensionDataOperation *)self maximumAllowedEntries];
    if (v12 >= maximumAllowedEntries)
    {
      v19 = sub_100005CC4(maximumAllowedEntries);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100022A5C(self);
      }

      v14 = [NSError cx_callDirectoryManagerErrorWithCode:5];
    }

    else
    {
      v14 = 0;
      if (!v11)
      {
LABEL_31:
        v18 = v14 == 0;

        goto LABEL_32;
      }

      while (1)
      {
        v15 = [dataCopy phoneNumberAtIndex:v14];
        lastIdentificationPhoneNumber = [(CDXLoadExtensionDataOperation *)self lastIdentificationPhoneNumber];
        if (v15 == lastIdentificationPhoneNumber)
        {
          break;
        }

        lastIdentificationPhoneNumber2 = [(CDXLoadExtensionDataOperation *)self lastIdentificationPhoneNumber];
        if (v15 < lastIdentificationPhoneNumber2)
        {
          v20 = sub_100005CC4(lastIdentificationPhoneNumber2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_100022D90();
          }

          v21 = 3;
          goto LABEL_20;
        }

        [(CDXLoadExtensionDataOperation *)self setLastIdentificationPhoneNumber:v15];
        if (v11 == ++v14)
        {
          goto LABEL_21;
        }
      }

      v20 = sub_100005CC4(lastIdentificationPhoneNumber);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_100022E10();
      }

      v21 = 4;
LABEL_20:

      v14 = [NSError cx_callDirectoryManagerErrorWithCode:v21];
      if (v14)
      {
        goto LABEL_28;
      }

LABEL_21:
      store = [(CDXLoadExtensionDataOperation *)self store];
      v29 = 0;
      v23 = [store addIdentificationEntriesWithData:dataCopy extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v29}];
      v14 = v29;

      v25 = sub_100005CC4(v24);
      v26 = v25;
      if (v23)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v31 = v11;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Added %lu phone number identification entries", buf, 0xCu);
        }

        [(CDXLoadExtensionDataOperation *)self setIdentificationEntriesAdded:&v11[[(CDXLoadExtensionDataOperation *)self identificationEntriesAdded]]];
      }

      else
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_100022E90();
        }
      }
    }

LABEL_28:
    if (error && v14)
    {
      v27 = v14;
      *error = v14;
    }

    goto LABEL_31;
  }

  v18 = 0;
LABEL_32:

  return v18;
}

- (BOOL)extensionDataRequest:(id)request removedIdentificationEntryData:(id)data error:(id *)error
{
  dataCopy = data;
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100005CC4(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dataCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Extension data request removed identification entry data: %@", buf, 0xCu);
  }

  incrementalLoadingState = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
  if (incrementalLoadingState == 2)
  {
    store = [(CDXLoadExtensionDataOperation *)self store];
    v22 = 0;
    v13 = [store removeIdentificationEntriesWithData:dataCopy extensionID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v22}];
    v14 = v22;

    v16 = sub_100005CC4(v15);
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [dataCopy count];
        *buf = 134217984;
        v24 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removed %lu phone number identification entries", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100022F10();
    }

    if (error)
    {
LABEL_14:
      if (v14)
      {
        v20 = v14;
        *error = v14;
      }
    }
  }

  else
  {
    v19 = sub_100005CC4(incrementalLoadingState);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (error)
    {
      goto LABEL_14;
    }
  }

  return v14 == 0;
}

- (BOOL)extensionDataRequest:(id)request removedAllIdentificationEntriesWithError:(id *)error
{
  queue = [(CDXLoadExtensionDataOperation *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100005CC4(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Extension data request removed all identification entries", buf, 2u);
  }

  incrementalLoadingState = [(CDXLoadExtensionDataOperation *)self incrementalLoadingState];
  if (incrementalLoadingState == 2)
  {
    store = [(CDXLoadExtensionDataOperation *)self store];
    v20 = 0;
    v11 = [store removeIdentificationEntriesForExtensionWithID:-[CDXLoadExtensionDataOperation extensionID](self error:{"extensionID"), &v20}];
    v12 = v20;

    v14 = sub_100005CC4(v13);
    v15 = v14;
    if (v11)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removed all phone number identification entries", v19, 2u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100022F90();
    }

    if (error)
    {
LABEL_14:
      if (v12)
      {
        v17 = v12;
        *error = v12;
      }
    }
  }

  else
  {
    v16 = sub_100005CC4(incrementalLoadingState);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100022C5C();
    }

    v12 = [NSError cx_callDirectoryManagerErrorWithCode:8];
    if (error)
    {
      goto LABEL_14;
    }
  }

  return v12 == 0;
}

@end