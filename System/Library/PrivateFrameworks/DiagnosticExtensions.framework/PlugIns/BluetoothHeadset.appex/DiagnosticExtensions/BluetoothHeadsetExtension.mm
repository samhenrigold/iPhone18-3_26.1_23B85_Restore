@interface BluetoothHeadsetExtension
- (id)attachmentsForParameters:(id)parameters;
- (id)getFilesAtPathSortedByModificationDate:(id)date numberOfFirstNFiles:(int)files;
- (void)cancelXPCConnection;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)handleXPCError:(id)error;
- (void)handleXPCEvent:(id)event;
- (void)handleXPCMsg:(id)msg;
- (void)leLogRequest;
- (void)sendXPCMsg:(id)msg args:(id)args;
@end

@implementation BluetoothHeadsetExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  NSLog(@"attachmentsForParameters: Invoked");
  v5 = dispatch_queue_create("BluetoothHeadsetLogging", &_dispatch_queue_attr_concurrent);
  queue = self->_queue;
  self->_queue = v5;

  self->_didPeripheralConnection = 0;
  v7 = dispatch_group_create();
  v8 = g_waitingBranchesGroup;
  g_waitingBranchesGroup = v7;

  v9 = dispatch_group_create();
  v10 = g_waitingPeripheralsGroup;
  g_waitingPeripheralsGroup = v9;

  v11 = dispatch_semaphore_create(0);
  v12 = g_waitingForSerialsSema;
  g_waitingForSerialsSema = v11;

  self->_leUarpBranchDone = 0;
  v82 = CBCentralManagerOptionEnableFindMy;
  v83 = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  cmOptions = self->_cmOptions;
  self->_cmOptions = v13;

  v15 = [[CBCentralManager alloc] initWithDelegate:self queue:0 options:self->_cmOptions];
  centralManager = self->_centralManager;
  self->_centralManager = v15;

  v17 = objc_opt_new();
  peripherals = self->_peripherals;
  self->_peripherals = v17;

  v19 = objc_opt_new();
  v20 = g_findMySerialNumbers;
  g_findMySerialNumbers = v19;

  v21 = parametersCopy;
  v22 = objc_opt_new();
  v23 = g_loggingFilenames;
  g_loggingFilenames = v22;

  v24 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  g_loggingConsent = [v24 BOOLValue];

  v25 = [v21 objectForKeyedSubscript:@"componentID"];
  v26 = g_componentID;
  g_componentID = v25;

  v27 = [v21 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
  v28 = g_hostApp;
  g_hostApp = v27;

  v29 = objc_autoreleasePoolPush();
  dispatch_group_enter(g_waitingBranchesGroup);
  dispatch_group_enter(g_waitingPeripheralsGroup);
  block[5] = sessionEventCallback;
  v30 = getprogname();
  v31 = [NSString stringWithFormat:@"%s-%u", v30, getpid()];
  [v31 UTF8String];
  v32 = BTSessionAttachWithQueue();

  if (v32)
  {
    NSLog(@"attachmentsForParameters: Failed to attach to bluetoothd with error 0x%08x", v32);
    dispatch_group_leave(g_waitingBranchesGroup);
    v33 = g_loggingFilenames;
    objc_autoreleasePoolPop(v29);
  }

  else
  {
    v65 = v21;
    dispatch_group_enter(g_waitingBranchesGroup);
    v34 = g_waitingPeripheralsGroup;
    v35 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v34, v35))
    {
      NSLog(@"attachmentsForParameters: Timed out waiting for CBCentralManager didUpdateState callback");
    }

    v36 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000019E4;
    block[3] = &unk_100008300;
    block[4] = self;
    dispatch_async(v36, block);
    NSLog(@"attachmentsForParameters: Awaiting logging response ... ");
    v37 = g_waitingBranchesGroup;
    v38 = dispatch_time(0, 495000000000);
    if (dispatch_group_wait(v37, v38))
    {
      NSLog(@"attachmentsForParameters: Log Collection Timed Out");
      if (g_result)
      {
        NSLog(@"attachmentsForParameters: Wx Log Retrieval Timed Out");
      }
    }

    else
    {
      NSLog(@"attachmentsForParameters: Log Collection Completed");
    }

    BTAccessoryManagerDeregisterCustomMessageClient();
    BTSessionDetachWithQueue();
    if (g_result)
    {
      NSLog(@"attachmentsForParameters: Failed to register callback with error 0x%08x", g_result);
    }

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v39 = self->_peripherals;
    v40 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v74 objects:v81 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v75;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v75 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [(CBCentralManager *)self->_centralManager cancelPeripheralConnection:*(*(&v74 + 1) + 8 * i)];
        }

        v41 = [(NSMutableArray *)v39 countByEnumeratingWithState:&v74 objects:v81 count:16];
      }

      while (v41);
    }

    [(BluetoothHeadsetExtension *)self cancelXPCConnection];
    objc_autoreleasePoolPop(v29);
    v33 = objc_opt_new();
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v44 = g_loggingFilenames;
    v45 = [v44 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = 0;
      v48 = *v71;
      do
      {
        for (j = 0; j != v46; j = j + 1)
        {
          if (*v71 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v50 = *(*(&v70 + 1) + 8 * j);
          v51 = +[NSFileManager defaultManager];
          v52 = [v51 fileExistsAtPath:v50];

          if (v52)
          {
            v53 = [DEAttachmentItem attachmentWithPath:v50];
            v54 = [v33 arrayByAddingObject:v53];

            v47 = (v47 + 1);
            NSLog(@"attachmentsForParameters: attaching %@", v50);
            v33 = v54;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v46);
    }

    else
    {
      v47 = 0;
    }

    v55 = productId;
    if (((productId - 8194) > 0xE || ((1 << (productId - 2)) & 0x409B) == 0) && productId)
    {
      v57 = CLGetAccessoryMotionSensorLogs();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v58 = [v57 countByEnumeratingWithState:&v66 objects:v79 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v67;
        do
        {
          v61 = 0;
          v62 = v33;
          do
          {
            if (*v67 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v63 = *(*(&v66 + 1) + 8 * v61);
            NSLog(@"attachmentsForParameters: added motion sensor log %@", v63);
            v64 = [DEAttachmentItem attachmentWithPath:v63];
            v33 = [v62 arrayByAddingObject:v64];

            v61 = v61 + 1;
            v62 = v33;
          }

          while (v59 != v61);
          v59 = [v57 countByEnumeratingWithState:&v66 objects:v79 count:16];
        }

        while (v59);
      }

      v55 = productId;
    }

    NSLog(@"attachmentsForParameters: pId %u, passed %lu filename(s), attached %d", v55, [g_loggingFilenames count], v47);
    v21 = v65;
  }

  return v33;
}

- (id)getFilesAtPathSortedByModificationDate:(id)date numberOfFirstNFiles:(int)files
{
  v5 = [date sortedArrayUsingComparator:&stru_100008340];
  v6 = [v5 subarrayWithRange:{0, files}];

  return v6;
}

- (void)cancelXPCConnection
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
    NSLog(@"cancelXPCConnection: %p", self->_xpcConnection);
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)handleXPCEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_dictionary)
  {
    [(BluetoothHeadsetExtension *)self handleXPCMsg:eventCopy];
  }

  else if (type == &_xpc_type_error)
  {
    [(BluetoothHeadsetExtension *)self handleXPCError:eventCopy];
  }

  else
  {
    NSLog(@"handleXPCEvent: Unexpected XPC event: %@", eventCopy);
  }
}

- (void)handleXPCMsg:(id)msg
{
  xdict = msg;
  string = xpc_dictionary_get_string(xdict, "kMsgId");
  v5 = xpc_dictionary_get_value(xdict, "kMsgArgs");
  xpcConnection = [(BluetoothHeadsetExtension *)self xpcConnection];
  NSLog(@"handleXPCMsg: Received XPC message from %p: %s", xpcConnection, string);

  if (self->_leUarpBranchDone)
  {
    NSLog(@"handleXPCMsg: Received XPC message when already done");
  }

  else
  {
    if (!strcmp(string, "LoggingManagerBusy"))
    {
      NSLog(@"handleXPCMsg: BTLEServer LoggingManager busy, returning no files", v12);
    }

    else if (!strcmp(string, "InvalidUUIDs"))
    {
      NSLog(@"handleXPCMsg: BTLEServer LoggingManager does not have any valid UUIDs, returning no files", v12);
    }

    else if (!strcmp(string, "RetrievedLogs"))
    {
      if (v5 && xpc_get_type(v5) == &_xpc_type_array)
      {
        if (xpc_array_get_count(v5))
        {
          v7 = 0;
          do
          {
            v8 = xpc_array_get_string(v5, v7);
            if (v8)
            {
              v9 = v8;
              NSLog(@"handleXPCMsg: Received %s", v8);
              v10 = g_loggingFilenames;
              v11 = [NSString stringWithUTF8String:v9];
              [v10 addObject:v11];
            }

            else
            {
              NSLog(@"handleXPCMsg: Unexpected XPC object at index %d", v7);
            }

            ++v7;
          }

          while (xpc_array_get_count(v5) > v7);
        }
      }

      else
      {
        NSLog(@"handleXPCMsg: Invalid msgArgs", v12);
      }
    }

    else
    {
      NSLog(@"handleXPCMsg: Unexpected XPC message: %s", string);
    }

    self->_leUarpBranchDone = 1;
    dispatch_group_leave(g_waitingBranchesGroup);
  }
}

- (void)handleXPCError:(id)error
{
  NSLog(@"handleXPCError: %@", a2, error);
  if (error == &_xpc_error_connection_interrupted || error == &_xpc_error_connection_invalid)
  {
    if (self->_xpcConnection)
    {
      [(BluetoothHeadsetExtension *)self cancelXPCConnection];
      if (!self->_leUarpBranchDone)
      {
        self->_leUarpBranchDone = 1;
        v6 = g_waitingBranchesGroup;

        dispatch_group_leave(v6);
      }
    }
  }

  else
  {
    NSLog(@"handleXPCError: Unhandled XPC error");
  }
}

- (void)sendXPCMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = msgCopy;
  xpc_dictionary_set_string(v7, "kMsgId", [msgCopy UTF8String]);
  if (argsCopy)
  {
    xpc_dictionary_set_value(v7, "kMsgArgs", argsCopy);
  }

  xpcConnection = [(BluetoothHeadsetExtension *)self xpcConnection];
  NSLog(@"sendXPCMsg: Sending XPC message to %p: %@", xpcConnection, msgCopy);

  xpcConnection2 = [(BluetoothHeadsetExtension *)self xpcConnection];
  xpc_connection_send_message(xpcConnection2, v7);
}

- (void)leLogRequest
{
  NSLog(@"leLogRequest: Invoked", a2);
  empty = xpc_array_create_empty();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_peripherals;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        identifier = [*(*(&v12 + 1) + 8 * v8) identifier];
        uUIDString = [identifier UUIDString];

        NSLog(@"leLogRequest: Asking for UUID %@", uUIDString);
        v11 = xpc_string_create([uUIDString UTF8String]);
        xpc_array_append_value(empty, v11);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [(BluetoothHeadsetExtension *)self sendXPCMsg:@"RetrieveLogs" args:empty];
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];
  NSLog(@"centralManager:didConnectPeripheral: UUID %@", uUIDString);
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  errorCopy = error;
  identifier = [peripheral identifier];
  uUIDString = [identifier UUIDString];
  NSLog(@"centralManager:didFailToConnectPeripheral: UUID %@ error %@", uUIDString, errorCopy);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  if ([stateCopy state] == 5 && !self->_didPeripheralConnection)
  {
    self->_didPeripheralConnection = 1;
    NSLog(@"centralManagerDidUpdateState: Now on, awaiting signal");
    v5 = g_waitingForSerialsSema;
    v6 = dispatch_time(0, 180000000000);
    if (dispatch_semaphore_wait(v5, v6))
    {
      NSLog(@"centralManagerDidUpdateState: Never got serial numbers");
    }

    else
    {
      NSLog(@"centralManagerDidUpdateState: Requesting UUIDs for serials: %@", g_findMySerialNumbers);
      if ([g_findMySerialNumbers count])
      {
        v7 = g_findMySerialNumbers;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10000246C;
        v8[3] = &unk_100008368;
        v8[4] = self;
        v9 = stateCopy;
        [v9 retrievePeripheralsWithFindMySerialNumberStrings:v7 completion:v8];
      }
    }
  }
}

@end