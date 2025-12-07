@interface BDServer
+ (id)sharedBubbleXPCInterface;
+ (id)sharedServer;
+ (id)sharedXPCInterface;
- (BDServer)init;
- (id)_clientForPID:(int)d;
- (void)addBubbleClient:(id)client;
- (void)addClient:(id)client;
- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler;
- (void)removeBubbleClient:(id)client;
- (void)removeClient:(id)client;
@end

@implementation BDServer

+ (id)sharedServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F5C;
  block[3] = &unk_10000C458;
  block[4] = self;
  if (qword_1000119A0 != -1)
  {
    dispatch_once(&qword_1000119A0, block);
  }

  v2 = qword_100011998;

  return v2;
}

+ (id)sharedXPCInterface
{
  if (qword_1000119B0 != -1)
  {
    sub_1000058E0();
  }

  v3 = qword_1000119A8;

  return v3;
}

+ (id)sharedBubbleXPCInterface
{
  if (qword_1000119C0 != -1)
  {
    sub_1000058F4();
  }

  v3 = qword_1000119B8;

  return v3;
}

- (BDServer)init
{
  v6.receiver = self;
  v6.super_class = BDServer;
  v2 = [(BDServer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pidsToClients = v2->_pidsToClients;
    v2->_pidsToClients = v3;
  }

  return v2;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy pid];
  v5 = [NSNumber numberWithInt:v4];
  pidsToClients = [(BDServer *)self pidsToClients];
  v7 = [pidsToClients objectForKeyedSubscript:v5];

  if (v7)
  {
    NSLog(@"We already have a client for pid: %d", v4);
  }

  else
  {
    pidsToClients2 = [(BDServer *)self pidsToClients];
    [pidsToClients2 setObject:clientCopy forKeyedSubscript:v5];
  }
}

- (void)removeClient:(id)client
{
  v4 = [client pid];
  v5 = [(BDServer *)self _clientForPID:v4];

  if (v5)
  {
    pidsToClients = [(BDServer *)self pidsToClients];
    v6 = [NSNumber numberWithInt:v4];
    [pidsToClients setObject:0 forKeyedSubscript:v6];
  }
}

- (void)addBubbleClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy pid];
  v5 = [NSNumber numberWithInt:v4];
  pidsToClients = [(BDServer *)self pidsToClients];
  v7 = [pidsToClients objectForKeyedSubscript:v5];

  if (v7)
  {
    NSLog(@"We already have a client for pid: %d", v4);
  }

  else
  {
    pidsToClients2 = [(BDServer *)self pidsToClients];
    [pidsToClients2 setObject:clientCopy forKeyedSubscript:v5];
  }
}

- (void)removeBubbleClient:(id)client
{
  v4 = [client pid];
  v5 = [(BDServer *)self _clientForPID:v4];

  if (v5)
  {
    pidsToClients = [(BDServer *)self pidsToClients];
    v6 = [NSNumber numberWithInt:v4];
    [pidsToClients setObject:0 forKeyedSubscript:v6];
  }
}

- (id)_clientForPID:(int)d
{
  v3 = *&d;
  pidsToClients = [(BDServer *)self pidsToClients];
  v5 = [NSNumber numberWithInt:v3];
  v6 = [pidsToClients objectForKeyedSubscript:v5];

  if (!v6)
  {
    NSLog(@"We do not have a client for pid: %d", v3);
  }

  return v6;
}

- (void)addUserSwitchBlockingTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  v6 = *&d;
  taskCopy = task;
  handlerCopy = handler;
  v10 = [(BDServer *)self _clientForPID:v6];
  if (v10)
  {
    if (qword_1000119D0 != -1)
    {
      sub_100005908();
    }

    v11 = qword_1000119C8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 0;
      v12 = sub_100003A58();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        *v21 = 138412290;
        *&v21[4] = taskCopy;
        v14 = _os_log_send_and_compose_impl(v13, v20, 0, 0, &_mh_execute_header, v11, 0, "Adding BlockSwitchTask %@", v21, 12);
        if (v14)
        {
          sub_100003A60();
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    [v10 addUserSwitchTask:taskCopy];
    if (qword_1000119D0 != -1)
    {
      sub_10000591C();
    }

    v15 = qword_1000119C8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      v16 = sub_100003A58();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v20[0]) = 0;
        LODWORD(v19) = 2;
        v18 = _os_log_send_and_compose_impl(v17, v21, 0, 0, &_mh_execute_header, v15, 0, "Adding BlockSwitchTask DONE", v20, v19);
        if (v18)
        {
          sub_100003A60();
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)addUserSyncTask:(id)task forPID:(int)d completionHandler:(id)handler
{
  v6 = *&d;
  taskCopy = task;
  handlerCopy = handler;
  v10 = [(BDServer *)self _clientForPID:v6];
  if (v10)
  {
    if (qword_1000119D0 != -1)
    {
      sub_100005908();
    }

    v11 = qword_1000119C8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20[0] = 0;
      v12 = sub_100003A58();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        *v21 = 138412290;
        *&v21[4] = taskCopy;
        v14 = _os_log_send_and_compose_impl(v13, v20, 0, 0, &_mh_execute_header, v11, 0, "Adding Sync Task %@", v21, 12);
        if (v14)
        {
          sub_100003A60();
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    [v10 addUserSyncTask:taskCopy];
    if (qword_1000119D0 != -1)
    {
      sub_10000591C();
    }

    v15 = qword_1000119C8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      v16 = sub_100003A58();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v20[0]) = 0;
        LODWORD(v19) = 2;
        v18 = _os_log_send_and_compose_impl(v17, v21, 0, 0, &_mh_execute_header, v15, 0, "Adding Sync Task DONE", v20, v19);
        if (v18)
        {
          sub_100003A60();
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

@end