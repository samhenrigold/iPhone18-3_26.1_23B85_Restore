@interface IMAPServiceConnection
+ (id)heldConnectionsForCheckingIn;
- (BOOL)changePassword:(id)password;
- (BOOL)checkIn;
- (IMAPServiceConnection)initWithMambaID:(const char *)d;
- (id)_headersToFetchIncludingThoseRequiredForRouting:(BOOL)routing withRecipients:(BOOL)recipients;
- (void)checkInForcefully;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation IMAPServiceConnection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAPServiceConnection;
  [(IMAPServiceConnection *)&v2 dealloc];
}

- (id)_headersToFetchIncludingThoseRequiredForRouting:(BOOL)routing withRecipients:(BOOL)recipients
{
  [IMAPServiceConnection mf_lock:routing];
  if (!qword_10010D768)
  {
    v4 = [NSArray alloc];
    v5 = [v4 initWithObjects:{H_DATE, H_SUBJECT, MFMimeHeaderFromKey, H_CONTENT_TYPE, H_MESSAGE_ID, MFMimeHeaderReplyToKey, @"x-applevm-deletion-date", 0}];
    v6 = qword_10010D768;
    qword_10010D768 = v5;
  }

  +[IMAPServiceConnection mf_unlock];
  v7 = qword_10010D768;

  return v7;
}

- (IMAPServiceConnection)initWithMambaID:(const char *)d
{
  v7.receiver = self;
  v7.super_class = IMAPServiceConnection;
  v3 = [(IMAPServiceConnection *)&v7 initWithMambaID:d];
  if (v3)
  {
    v4 = objc_alloc_init(NSLock);
    checkedOutThreadsLock = v3->_checkedOutThreadsLock;
    v3->_checkedOutThreadsLock = v4;
  }

  return v3;
}

- (BOOL)changePassword:(id)password
{
  passwordCopy = password;
  v5 = sub_1000025EC(passwordCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = [(IMAPServiceConnection *)self mambaID];
    rumbaID = [(IMAPServiceConnection *)self rumbaID];
    *buf = 136316162;
    v23 = mambaID;
    v24 = 2080;
    v25 = " ";
    v26 = 2114;
    v27 = rumbaID;
    v28 = 2080;
    v29 = " ";
    v30 = 2112;
    v31 = @"XCHANGEPASSWORD";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%{public}@%sPerforming custom command %@", buf, 0x34u);
  }

  v21[0] = @"PIN";
  v21[1] = passwordCopy;
  v8 = [NSArray arrayWithObjects:v21 count:2];
  v9 = [(IMAPServiceConnection *)self performCustomCommand:@"XCHANGEPASSWORD" withArguments:v8];

  if ((v9 & 1) == 0)
  {
    v10 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v10 error];
    v12 = error;
    if (error)
    {
      v13 = sub_1000025EC(error);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10009BFE0(self, v12, v13);
      }

      domain = [v12 domain];
      if (![domain isEqualToString:MFMessageErrorDomain])
      {
        goto LABEL_14;
      }

      code = [v12 code];

      if (code == 1033)
      {
        domain = [v12 localizedDescription];
        if (!domain || (pthread_once(&stru_10010CAB0, sub_100014C74), [qword_10010D770 objectForKey:domain], (v16 = objc_claimAutoreleasedReturnValue()) == 0) || (v17 = v16, v18 = objc_msgSend(v16, "intValue"), v17, v18 == -1))
        {
          v18 = 1016;
        }

        v19 = [NSError errorWithDomain:kVVErrorDomain code:v18 localizedDescription:domain];

        [v10 setError:v19];
        v12 = v19;
LABEL_14:
      }
    }
  }

  return v9;
}

+ (id)heldConnectionsForCheckingIn
{
  v2 = +[NSThread currentThread];
  threadDictionary = [v2 threadDictionary];

  v4 = [threadDictionary objectForKey:@"_IMAPServiceConnections"];
  if ([v4 count])
  {
    [threadDictionary removeObjectForKey:@"_IMAPServiceConnections"];
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

- (BOOL)checkIn
{
  v3 = +[NSThread currentThread];
  [(NSLock *)self->_checkedOutThreadsLock lock];
  [(NSMutableSet *)self->_checkedOutThreads removeObject:v3];
  threadDictionary = [v3 threadDictionary];
  v5 = [threadDictionary objectForKey:@"_IMAPServiceConnections"];

  [v5 removeObject:self];
  v6 = [(NSMutableSet *)self->_checkedOutThreads count];
  [(NSLock *)self->_checkedOutThreadsLock unlock];
  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = IMAPServiceConnection;
    [(IMAPServiceConnection *)&v8 setDelegate:0];
  }

  return v6 == 0;
}

- (void)checkInForcefully
{
  [(NSLock *)self->_checkedOutThreadsLock lock];
  [(NSMutableSet *)self->_checkedOutThreads removeAllObjects];
  [(NSLock *)self->_checkedOutThreadsLock unlock];

  [(IMAPServiceConnection *)self checkIn];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(IMAPServiceConnection *)self delegate];
  v6 = delegate;
  if (delegateCopy || !delegate)
  {
    if (delegateCopy)
    {
      [(NSLock *)self->_checkedOutThreadsLock lock];
      checkedOutThreads = self->_checkedOutThreads;
      if (checkedOutThreads)
      {
        if (v6 != delegateCopy)
        {
          [(NSMutableSet *)checkedOutThreads removeAllObjects];
        }
      }

      else
      {
        v8 = objc_alloc_init(NSMutableSet);
        v9 = self->_checkedOutThreads;
        self->_checkedOutThreads = v8;
      }

      v10 = +[NSThread currentThread];
      [(NSMutableSet *)self->_checkedOutThreads addObject:v10];
      threadDictionary = [v10 threadDictionary];
      v12 = [threadDictionary objectForKey:@"_IMAPServiceConnections"];
      if (!v12)
      {
        v12 = objc_alloc_init(NSMutableSet);
        [threadDictionary setObject:v12 forKey:@"_IMAPServiceConnections"];
      }

      [v12 addObject:self];
      [(NSLock *)self->_checkedOutThreadsLock unlock];
      v13.receiver = self;
      v13.super_class = IMAPServiceConnection;
      [(IMAPServiceConnection *)&v13 setDelegate:delegateCopy];
    }
  }

  else
  {
    [(IMAPServiceConnection *)self checkIn];
  }
}

@end