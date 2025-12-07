@interface IDSAccountController
- (IDSAccountController)initWithService:(id)service;
- (NSSet)accounts;
- (id)_initWithService:(id)service;
- (id)_initWithService:(id)service onIDSQueue:(BOOL)queue;
- (id)_internal;
- (id)accountWithLoginID:(id)d service:(id)service;
- (id)accountWithUniqueID:(id)d;
- (id)enabledAccounts;
- (id)serviceName;
- (void)_disableAccount:(id)account;
- (void)_enableAccount:(id)account;
- (void)_removeAccount:(id)account;
- (void)addAccount:(id)account;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)dealloc;
- (void)removeAccount:(id)account;
- (void)removeDelegate:(id)delegate;
- (void)setupAccountWithLoginID:(id)d aliases:(id)aliases password:(id)password completionHandler:(id)handler;
- (void)setupAccountWithLoginID:(id)d password:(id)password completionHandler:(id)handler;
- (void)setupAccountWithSetupParameters:(id)parameters aliases:(id)aliases completionHandler:(id)handler;
@end

@implementation IDSAccountController

- (id)_internal
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2BA74();
    }
  }

  internal = self->_internal;

  return internal;
}

- (void)dealloc
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2B984(self, registration);
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
  {
    sub_195B2B9FC(self, registration2);
  }

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = sub_195A00744;
  v8[4] = sub_195A03D48;
  v9 = self->_internal;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A04C1C;
  v7[3] = &unk_1E743E648;
  v7[4] = v8;
  [v5 performBlock:v7 waitUntilDone:0];

  _Block_object_dispose(v8, 8);
  v6.receiver = self;
  v6.super_class = IDSAccountController;
  [(IDSAccountController *)&v6 dealloc];
}

- (id)_initWithService:(id)service onIDSQueue:(BOOL)queue
{
  selfCopy2 = queue;
  serviceCopy = service;
  if (_IDSRunningInDaemon())
  {
    v7 = +[IDSLogging IDSAccountController];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B6D0(self, v7);
    }

    selfCopy2 = 0;
    goto LABEL_21;
  }

  v8 = +[IDSInternalQueueController sharedInstance];
  v9 = v8;
  if (selfCopy2)
  {
    assertQueueIsCurrent = [v8 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B2B62C();
      }

LABEL_12:
    }
  }

  else
  {
    assertQueueIsNotCurrent = [v8 assertQueueIsNotCurrent];

    if (assertQueueIsNotCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B2B588();
      }

      goto LABEL_12;
    }
  }

  v36.receiver = self;
  v36.super_class = IDSAccountController;
  v13 = [(IDSAccountController *)&v36 init];
  if (!v13)
  {
    goto LABEL_20;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_195A00744;
  v34 = sub_195A03D48;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_195A60A24;
  v21 = &unk_1E74408A0;
  v24 = &v30;
  v22 = serviceCopy;
  v25 = &v26;
  self = v13;
  selfCopy = self;
  v14 = MEMORY[0x19A8BBEF0](&v18);
  v15 = v14;
  if (selfCopy2)
  {
    (*(v14 + 16))(v14);
  }

  else
  {
    selfCopy2 = [IDSInternalQueueController sharedInstance:v18];
    [selfCopy2 performBlock:v15 waitUntilDone:1];
  }

  v16 = *(v27 + 24);
  if (v16 == 1)
  {
    selfCopy2 = v31[5];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  if ((v16 & 1) == 0)
  {
LABEL_20:
    self = v13;
    selfCopy2 = self;
  }

LABEL_21:

  return selfCopy2;
}

- (id)_initWithService:(id)service
{
  serviceCopy = service;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B844();
    }
  }

  v8 = [(IDSAccountController *)self _initWithService:serviceCopy onIDSQueue:1];

  return v8;
}

- (IDSAccountController)initWithService:(id)service
{
  serviceCopy = service;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsNotCurrent = [v5 assertQueueIsNotCurrent];

  if (assertQueueIsNotCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2B8E4();
    }
  }

  v8 = [(IDSAccountController *)self _initWithService:serviceCopy onIDSQueue:0];

  return v8;
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v8 = +[IDSInternalQueueController sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195A60F5C;
  v11[3] = &unk_1E743E620;
  v11[4] = self;
  v12 = delegateCopy;
  v13 = queueCopy;
  v9 = queueCopy;
  v10 = delegateCopy;
  [v8 performBlock:v11 waitUntilDone:1];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[IDSInternalQueueController sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A6101C;
  v6[3] = &unk_1E743F468;
  v6[4] = self;
  v6[5] = delegateCopy;
  [v5 performBlock:v6 waitUntilDone:1];
}

- (NSSet)accounts
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00744;
  v12 = sub_195A03D48;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A6116C;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)enabledAccounts
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00744;
  v12 = sub_195A03D48;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A61300;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)serviceName
{
  v3 = +[IDSDaemonController sharedInstance];
  [v3 blockUntilConnected];

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_195A00744;
  v12 = sub_195A03D48;
  v13 = 0;
  v4 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A61494;
  v7[3] = &unk_1E743E670;
  v7[4] = self;
  v7[5] = &v8;
  [v4 performBlock:v7 waitUntilDone:1];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)accountWithLoginID:(id)d service:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v8 = +[IDSDaemonController sharedInstance];
  [v8 blockUntilConnected];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_195A00744;
  v22 = sub_195A03D48;
  v23 = 0;
  v9 = +[IDSInternalQueueController sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A6167C;
  v14[3] = &unk_1E743F648;
  v17 = &v18;
  v14[4] = self;
  v10 = dCopy;
  v15 = v10;
  v11 = serviceCopy;
  v16 = v11;
  [v9 performBlock:v14 waitUntilDone:1];

  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

- (id)accountWithUniqueID:(id)d
{
  dCopy = d;
  v5 = +[IDSDaemonController sharedInstance];
  [v5 blockUntilConnected];

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_195A00744;
  v17 = sub_195A03D48;
  v18 = 0;
  v6 = +[IDSInternalQueueController sharedInstance];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195A6183C;
  v10[3] = &unk_1E743EA08;
  v12 = &v13;
  v10[4] = self;
  v7 = dCopy;
  v11 = v7;
  [v6 performBlock:v10 waitUntilDone:1];

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)setupAccountWithLoginID:(id)d aliases:(id)aliases password:(id)password completionHandler:(id)handler
{
  dCopy = d;
  aliasesCopy = aliases;
  passwordCopy = password;
  handlerCopy = handler;
  v14 = +[IDSInternalQueueController sharedInstance];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_195A619B4;
  v19[3] = &unk_1E74408C8;
  v19[4] = self;
  v20 = dCopy;
  v21 = aliasesCopy;
  v22 = passwordCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = passwordCopy;
  v17 = aliasesCopy;
  v18 = dCopy;
  [v14 performBlock:v19];
}

- (void)setupAccountWithLoginID:(id)d password:(id)password completionHandler:(id)handler
{
  dCopy = d;
  passwordCopy = password;
  handlerCopy = handler;
  v11 = +[IDSInternalQueueController sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_195A61AD0;
  v15[3] = &unk_1E743F318;
  v15[4] = self;
  v16 = dCopy;
  v17 = passwordCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = passwordCopy;
  v14 = dCopy;
  [v11 performBlock:v15];
}

- (void)setupAccountWithSetupParameters:(id)parameters aliases:(id)aliases completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  aliasesCopy = aliases;
  handlerCopy = handler;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = aliasesCopy;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to setup account with aliases: %@ and parameters:", buf, 0xCu);
  }

  [parametersCopy enumerateKeysAndObjectsUsingBlock:&unk_1F09E6120];
  v12 = +[IDSInternalQueueController sharedInstance];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A61D9C;
  v16[3] = &unk_1E743F318;
  v16[4] = self;
  v17 = parametersCopy;
  v18 = aliasesCopy;
  v19 = handlerCopy;
  v13 = handlerCopy;
  v14 = aliasesCopy;
  v15 = parametersCopy;
  [v12 performBlock:v16];
}

- (void)addAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v12 = accountCopy;
    v13 = 2112;
    v14 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to add account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A61F0C;
  v9[3] = &unk_1E743EA30;
  v9[4] = self;
  v10 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v9];
}

- (void)removeAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v12 = accountCopy;
    v13 = 2112;
    v14 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to remove account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A62074;
  v9[3] = &unk_1E743EA30;
  v9[4] = self;
  v10 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v9];
}

- (void)_removeAccount:(id)account
{
  accountCopy = account;
  v5 = +[IDSInternalQueueController sharedInstance];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A62138;
  v7[3] = &unk_1E743EA30;
  v7[4] = self;
  v8 = accountCopy;
  v6 = accountCopy;
  [v5 performBlock:v7];
}

- (void)_enableAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v12 = accountCopy;
    v13 = 2112;
    v14 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to enable account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A622A8;
  v9[3] = &unk_1E743EA30;
  v9[4] = self;
  v10 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v9];
}

- (void)_disableAccount:(id)account
{
  v15 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(IDSAccountController *)self serviceName];
    *buf = 138412546;
    v12 = accountCopy;
    v13 = 2112;
    v14 = serviceName;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "* Request to disable account: %@   service: %@", buf, 0x16u);
  }

  v7 = +[IDSInternalQueueController sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A62410;
  v9[3] = &unk_1E743EA30;
  v9[4] = self;
  v10 = accountCopy;
  v8 = accountCopy;
  [v7 performBlock:v9];
}

@end