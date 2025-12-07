@interface IDSActivityMonitor
- (BOOL)listeningForUpdates;
- (IDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier;
- (IDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier queue:(id)queue;
- (IDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier queue:(id)queue xpcConnector:(id)connector;
- (IDSActivityMonitorListenerDelegate)delegate;
- (NSArray)subscriptions;
- (void)beginBroadcastingWithInfo:(id)info withCompletion:(id)completion;
- (void)dealloc;
- (void)handleIncomingUpdate:(id)update onActivity:(id)activity completion:(id)completion;
- (void)setDelegate:(id)delegate;
- (void)setListeningForUpdates:(BOOL)updates;
- (void)stopBroadcastingForSubActivity:(id)activity withCompletion:(id)completion;
@end

@implementation IDSActivityMonitor

- (IDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  activityCopy = activity;
  v8 = +[_IDSActivityMonitorXPCConnector weakSharedInstance];
  v9 = [(IDSActivityMonitor *)self initWithActivity:activityCopy serviceIdentifier:identifierCopy queue:0 xpcConnector:v8];

  return v9;
}

- (IDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier queue:(id)queue
{
  queueCopy = queue;
  identifierCopy = identifier;
  activityCopy = activity;
  v11 = +[_IDSActivityMonitorXPCConnector weakSharedInstance];
  v12 = [(IDSActivityMonitor *)self initWithActivity:activityCopy serviceIdentifier:identifierCopy queue:queueCopy xpcConnector:v11];

  return v12;
}

- (IDSActivityMonitor)initWithActivity:(id)activity serviceIdentifier:(id)identifier queue:(id)queue xpcConnector:(id)connector
{
  v28 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  identifierCopy = identifier;
  queueCopy = queue;
  connectorCopy = connector;
  if (connectorCopy && [activityCopy length] && objc_msgSend(identifierCopy, "length"))
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v25 = activityCopy;
      v26 = 2112;
      v27 = identifierCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Creaating new activity monitor with activity %@ service identifier %@", buf, 0x16u);
    }

    v23.receiver = self;
    v23.super_class = IDSActivityMonitor;
    v16 = [(IDSActivityMonitor *)&v23 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_activity, activity);
      objc_storeStrong(&v17->_XPCConnector, connector);
      activityCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", identifierCopy, activityCopy];
      activityIdentifier = v17->_activityIdentifier;
      v17->_activityIdentifier = activityCopy;

      v20 = MEMORY[0x1E69E96A0];
      if (queueCopy)
      {
        v20 = queueCopy;
      }

      v17->_queue = v20;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  XPCConnector = self->_XPCConnector;
  activityIdentifier = [(IDSActivityMonitor *)self activityIdentifier];
  [(_IDSActivityMonitorXPCConnector *)XPCConnector removeListener:self forTopic:activityIdentifier];

  v5.receiver = self;
  v5.super_class = IDSActivityMonitor;
  [(IDSActivityMonitor *)&v5 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v14 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      activityIdentifier = [(IDSActivityMonitor *)self activityIdentifier];
      v10 = 138412546;
      v11 = delegateCopy;
      v12 = 2112;
      v13 = activityIdentifier;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Adding delegate %@ to activity monitor %@", &v10, 0x16u);
    }

    objc_storeWeak(&self->_delegate, delegateCopy);
    xPCConnector = [(IDSActivityMonitor *)self XPCConnector];
    activityIdentifier2 = [(IDSActivityMonitor *)self activityIdentifier];
    if (delegateCopy)
    {
      [xPCConnector addListener:self forTopic:activityIdentifier2];
    }

    else
    {
      [xPCConnector removeListener:self forTopic:activityIdentifier2];
    }
  }
}

- (void)beginBroadcastingWithInfo:(id)info withCompletion:(id)completion
{
  v4 = MEMORY[0x1E69A6138];
  completionCopy = completion;
  registration = [v4 registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
  {
    sub_195B296D0(registration);
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.activity.error" code:-600 userInfo:0];
  completionCopy[2](completionCopy, v7);
}

- (void)stopBroadcastingForSubActivity:(id)activity withCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  completionCopy = completion;
  if (activityCopy && [activityCopy length])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = activityCopy;
      _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Stopping broadcast with subActivity %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    xPCConnector = [(IDSActivityMonitor *)self XPCConnector];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_195A39830;
    v11[3] = &unk_1E743F730;
    objc_copyWeak(&v14, buf);
    v12 = activityCopy;
    v13 = completionCopy;
    [xPCConnector performAction:v11 errorHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else if (completionCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.ids.activity.error" code:-100 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v10);
  }
}

- (BOOL)listeningForUpdates
{
  v11 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Getting listening status for self: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v9 = 0x2020000000;
  v10 = 0;
  xPCConnector = [(IDSActivityMonitor *)self XPCConnector];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A39A14;
  v7[3] = &unk_1E743F780;
  v7[4] = self;
  v7[5] = &buf;
  [xPCConnector performSyncAction:v7];

  v5 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  return v5;
}

- (void)setListeningForUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v13 = *MEMORY[0x1E69E9840];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v10 = updatesCopy;
    v11 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, registration, OS_LOG_TYPE_DEFAULT, "Set listening for updates %d on self %@", buf, 0x12u);
  }

  xPCConnector = [(IDSActivityMonitor *)self XPCConnector];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_195A39C78;
  v7[3] = &unk_1E743F7A8;
  v8 = updatesCopy;
  v7[4] = self;
  [xPCConnector performSyncAction:v7];
}

- (NSArray)subscriptions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_195A006C4;
  v11 = sub_195A03D08;
  array = [MEMORY[0x1E695DEC8] array];
  xPCConnector = [(IDSActivityMonitor *)self XPCConnector];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_195A39E90;
  v6[3] = &unk_1E743F780;
  v6[4] = self;
  v6[5] = &v7;
  [xPCConnector performSyncAction:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)handleIncomingUpdate:(id)update onActivity:(id)activity completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  delegate = [(IDSActivityMonitor *)self delegate];
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195A3A16C;
  v14[3] = &unk_1E743F318;
  v15 = delegate;
  selfCopy = self;
  v17 = updateCopy;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = updateCopy;
  v13 = delegate;
  dispatch_async(queue, v14);
}

- (IDSActivityMonitorListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end