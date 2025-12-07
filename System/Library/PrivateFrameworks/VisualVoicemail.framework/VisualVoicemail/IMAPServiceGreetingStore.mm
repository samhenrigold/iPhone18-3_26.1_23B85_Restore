@interface IMAPServiceGreetingStore
- (IMAPServiceGreetingStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only;
- (id)candidateGreetingMessage;
- (unsigned)appendActiveGreeting:(id)greeting;
- (void)_applyFlags:(id)flags state:(BOOL)state toUidRange:(id)range except:(unsigned int)except closeWhenFinished:(BOOL)finished usingConnection:(id)connection;
- (void)_removeActiveGreetingFlagFromAllUidsExcept:(unsigned int)except isLast:(BOOL)last usingConnection:(id)connection;
- (void)makeGreetingActive:(id)active;
- (void)removeActiveGreetingFlagFromAllUids;
- (void)setLibrary:(id)library;
@end

@implementation IMAPServiceGreetingStore

- (IMAPServiceGreetingStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  v7.receiver = self;
  v7.super_class = IMAPServiceGreetingStore;
  v4 = [(IMAPServiceStore *)&v7 initWithMailboxUid:uid readOnly:only];
  if (v4)
  {
    v5 = objc_alloc_init(IMAPServiceGreetingLibrary);
    [(IMAPServiceGreetingStore *)v4 setLibrary:v5];
  }

  return v4;
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  v5 = sub_1000027C8(libraryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(IMAPServiceGreetingStore *)self mailboxUid];
    *buf = 136315394;
    mambaID = [mailboxUid mambaID];
    v10 = 2080;
    v11 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAPServiceGreetingStore::setLibrary", buf, 0x16u);
  }

  if (!libraryCopy || !*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library])
  {
    v7.receiver = self;
    v7.super_class = IMAPServiceGreetingStore;
    [(IMAPServiceGreetingStore *)&v7 setLibrary:libraryCopy];
  }
}

- (void)_applyFlags:(id)flags state:(BOOL)state toUidRange:(id)range except:(unsigned int)except closeWhenFinished:(BOOL)finished usingConnection:(id)connection
{
  finishedCopy = finished;
  stateCopy = state;
  flagsCopy = flags;
  connectionCopy = connection;
  v15 = connectionCopy;
  if (!connectionCopy && ([*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFMailMessageStore__account] connectionForStore:self delegate:self options:1], (v15 = objc_claimAutoreleasedReturnValue()) == 0) || !objc_msgSend(v15, "isValid"))
  {
    v20 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v20 error];

    if (error)
    {
      v19 = 0;
    }

    else
    {
      v19 = [NSError errorWithDomain:kVVErrorDomain code:1023 localizedDescription:@"Could not establish IMAP connection."];
    }

    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (except)
  {
    v16 = [[NSIndexSet alloc] initWithIndex:except];
    v17 = [v15 messageSetForRange:range butNotNumbers:v16];
    v18 = [v15 storeFlags:flagsCopy state:stateCopy forMessageSet:v17];

    if (v18)
    {
      goto LABEL_6;
    }

LABEL_17:
    v19 = [NSError errorWithDomain:kVVErrorDomain code:1016 localizedDescription:@"Error issuing UID STORE for greeting flag."];
    if (!finishedCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (range.var0 == range.var1)
  {
    range = [[NSString alloc] initWithFormat:@"%u", range];
    v23 = [[NSArray alloc] initWithObjects:{range, 0}];
    v24 = [v15 storeFlags:flagsCopy state:stateCopy forUids:v23];

    if ((v24 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (([v15 storeFlags:flagsCopy state:stateCopy forRange:range] & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v19 = 0;
  if (finishedCopy)
  {
LABEL_18:
    [v15 close];
  }

LABEL_19:
  if (connectionCopy)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFMailMessageStore__account] checkInConnection:v15];
  if (v19)
  {
LABEL_21:
    v25 = +[MFActivityMonitor currentTracebleMonitor];
    [v25 setError:v19];
  }

LABEL_22:
}

- (void)removeActiveGreetingFlagFromAllUids
{
  v3 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
  [(IMAPServiceGreetingStore *)self _applyFlags:v3 state:0 toUidRange:0xFFFFFFFF00000001 except:0 closeWhenFinished:1 usingConnection:0];
}

- (void)_removeActiveGreetingFlagFromAllUidsExcept:(unsigned int)except isLast:(BOOL)last usingConnection:(id)connection
{
  lastCopy = last;
  v6 = *&except;
  connectionCopy = connection;
  v9 = connectionCopy;
  if (!connectionCopy)
  {
    connectionCopy = [*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFMailMessageStore__account] connectionForStore:self delegate:self options:1];
    if (!connectionCopy)
    {
      v11 = 0;
      v18 = 0;
      goto LABEL_9;
    }
  }

  v18 = connectionCopy;
  if (![connectionCopy isValid])
  {
    v11 = 1;
LABEL_9:
    v12 = [NSError errorWithDomain:kVVErrorDomain code:1008 localizedDescription:@"Candidate greeting doesn't have a valid remote UID"];
    v13 = +[MFActivityMonitor currentTracebleMonitor];
    [v13 setError:v12];
    goto LABEL_21;
  }

  if (v6)
  {
    if (lastCopy)
    {
      v10 = (v6 - 1);
LABEL_12:
      if (v6 == 1 && v10 < 2)
      {
        v11 = 1;
        if (v9)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_17;
    }

    v14 = *&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryIMAPStore__serverUidNext];
    if (v14)
    {
      v10 = sub_10001E900(v14 - 1);
      goto LABEL_12;
    }
  }

  v10 = 0xFFFFFFFFLL;
LABEL_17:
  v12 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
  v11 = 1;
  v15 = (v10 << 32) | 1;
  [(IMAPServiceGreetingStore *)self _applyFlags:v12 state:0 toUidRange:v15 except:v6 closeWhenFinished:0 usingConnection:v18];
  v13 = +[MFActivityMonitor currentTracebleMonitor];
  if (([v13 shouldCancel] & 1) == 0)
  {
    error = [v13 error];

    if (error)
    {
      v11 = 1;
    }

    else
    {
      v17 = MFCreateArrayForMessageFlags();
      v11 = 1;
      [(IMAPServiceGreetingStore *)self _applyFlags:v17 state:1 toUidRange:v15 except:v6 closeWhenFinished:1 usingConnection:v18];
    }
  }

LABEL_21:

  if (v9)
  {
    goto LABEL_24;
  }

LABEL_22:
  if (v11)
  {
    [*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFMailMessageStore__account] checkInConnection:v18];
  }

LABEL_24:
}

- (unsigned)appendActiveGreeting:(id)greeting
{
  greetingCopy = greeting;
  v5 = [[NSArray alloc] initWithObjects:{greetingCopy, 0}];

  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  v7 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
  v8 = [[NSArray alloc] initWithObjects:{v7, 0}];
  v9 = [NSArray alloc];
  v10 = [NSNumber numberWithUnsignedInt:1];
  v11 = [v9 initWithObjects:{v10, 0}];

  if ([(IMAPServiceGreetingStore *)self appendMessages:v5 unsuccessfulOnes:0 newMessageIDs:v6 newMessages:0 flagsToSet:v11 customIMAPFlagsToSet:v8]!= 1)
  {
    v12 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v12 error];

    if (!error)
    {
      account = [(IMAPServiceGreetingStore *)self account];
      isOffline = [account isOffline];

      v17 = sub_1000027C8(v16);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (isOffline)
      {
        if (v18)
        {
          mailboxUid = [(IMAPServiceGreetingStore *)self mailboxUid];
          *buf = 136315650;
          mambaID = [mailboxUid mambaID];
          v30 = 2080;
          v31 = " ";
          v32 = 2112;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not append greeting for offline service %@", buf, 0x20u);
        }

        v20 = 1023;
        v21 = 1;
      }

      else
      {
        if (v18)
        {
          mailboxUid2 = [(IMAPServiceGreetingStore *)self mailboxUid];
          *buf = 136315650;
          mambaID = [mailboxUid2 mambaID];
          v30 = 2080;
          v31 = " ";
          v32 = 2112;
          selfCopy2 = self;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not append greeting for service %@", buf, 0x20u);
        }

        v21 = 0;
        v20 = 1036;
      }

      v23 = +[VMAWDReporter sharedInstance];
      [v23 reportCustomGreetingFailedWithReason:v21];

      v24 = [NSError errorWithDomain:kVVErrorDomain code:v20 localizedDescription:@"Error appending greeting."];
      [v12 setError:v24];
    }
  }

  lastObject = [v6 lastObject];
  intValue = [lastObject intValue];

  return intValue;
}

- (id)candidateGreetingMessage
{
  selfCopy = self;
  [(IMAPServiceGreetingStore *)self mf_lock];
  v3 = *&selfCopy->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library];
  [v3 resetMessages];
  [(IMAPServiceGreetingStore *)selfCopy fetchMobileSynchronously:0x7FFFFFFFFFFFFFFFLL];
  messages = [v3 messages];
  v5 = [messages count];
  if (v5)
  {
    v20 = selfCopy;
    v21 = v3;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2.22507386e-308;
    do
    {
      v10 = [messages objectAtIndex:{v7, v20, v21}];
      if (([v10 messageFlags] & 2) == 0)
      {
        [v10 dateSentAsTimeIntervalSince1970];
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          customFlags = [v10 customFlags];
          v14 = [customFlags containsObject:@"$AppleVM-ActiveGreeting"];
        }

        else
        {
          v14 = 0;
        }

        if (v12 < v9) | (v8 ^ v14) & 1 && ((v14 ^ 1 | v8))
        {
          v8 = v14;
        }

        else
        {
          v15 = v10;

          v8 = v14;
          v9 = v12;
          v6 = v15;
        }
      }

      ++v7;
    }

    while (v5 != v7);
    if (v8)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    selfCopy = v20;
    v3 = v21;
  }

  else
  {
    v6 = 0;
  }

  account = [(IMAPServiceGreetingStore *)selfCopy account];
  service = [account service];
  [service _setActiveGreetingType:v5];

  [v3 resetMessages];
  [(IMAPServiceGreetingStore *)selfCopy mf_unlock];
  v18 = v6;

  return v6;
}

- (void)makeGreetingActive:(id)active
{
  activeCopy = active;
  v5 = +[MFActivityMonitor currentTracebleMonitor];
  remoteID = [activeCopy remoteID];

  intValue = [remoteID intValue];
  if (!intValue)
  {
    v16 = [NSError errorWithDomain:kVVErrorDomain code:1008 localizedDescription:@"Candidate greeting doesn't have a valid remote UID"];
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = OBJC_IVAR___MFMailMessageStore__account;
  v9 = [*&self->super.MFLibraryIMAPStore_opaque[OBJC_IVAR___MFMailMessageStore__account] connectionForStore:self delegate:self options:1];
  v10 = v9;
  if (v9)
  {
    v11 = sub_1000027C8(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mailboxUid = [(IMAPServiceGreetingStore *)self mailboxUid];
      *buf = 136315906;
      mambaID = [mailboxUid mambaID];
      v21 = 2080;
      v22 = " ";
      v23 = 2112;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = v10;
      v13 = v24;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ make greeting active for connection %@", buf, 0x2Au);
    }

    v14 = [[NSArray alloc] initWithObjects:{@"$AppleVM-ActiveGreeting", 0}];
    [(IMAPServiceGreetingStore *)self _applyFlags:v14 state:1 toUidRange:intValue | (intValue << 32) except:0 closeWhenFinished:0 usingConnection:v10];
    if (([v5 shouldCancel] & 1) == 0)
    {
      error = [v5 error];

      if (!error)
      {
        [(IMAPServiceGreetingStore *)self _removeActiveGreetingFlagFromAllUidsExcept:intValue isLast:0 usingConnection:v10];
      }
    }

    [*&self->super.MFLibraryIMAPStore_opaque[v8] checkInConnection:v10];
    v16 = 0;
  }

  else
  {
    v16 = [NSError errorWithDomain:kVVErrorDomain code:1023 localizedDescription:@"Could not establish IMAP connection."];
    v14 = sub_1000027C8(v16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      mailboxUid2 = [(IMAPServiceGreetingStore *)self mailboxUid];
      *buf = 136315906;
      mambaID = [mailboxUid2 mambaID];
      v21 = 2080;
      v22 = " ";
      v23 = 2112;
      v24 = objc_opt_class();
      v25 = 2112;
      v26 = 0;
      v18 = v24;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#W %s%s%@ could not make greeting active for connection %@", buf, 0x2Au);
    }
  }

  if (v16)
  {
LABEL_14:
    [v5 setError:v16];
  }

LABEL_15:
}

@end