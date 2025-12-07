@interface NFCISO15693ReaderSession
- (NFCISO15693ReaderSession)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue;
- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index;
- (void)restartPolling;
@end

@implementation NFCISO15693ReaderSession

- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index
{
  v45 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v35.receiver = self;
  v35.super_class = NFCISO15693ReaderSession;
  [(NFCReaderSession *)&v35 didDetectTags:tagsCopy connectedTagIndex:index];
  delegate = [(NFCReaderSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = tagsCopy;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(NFCTag *)[NFCISO15693ReaderSessionTag alloc] initWithSession:self tag:*(*(&v31 + 1) + 8 * i) startupConfig:1];
          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v13);
    }

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2372CD070;
    v29[3] = &unk_278A29E60;
    v29[4] = self;
    v30 = v10;
    v17 = v10;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v29];
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v24 = 43;
      if (!isMetaClass)
      {
        v24 = 45;
      }

      v19(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSession:didDetectTags: method", v24, ClassName, Name, 43);
    }

    v17 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = object_getClass(self);
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(self);
      v28 = sel_getName(a2);
      *buf = 67109890;
      v38 = v26;
      v39 = 2082;
      v40 = v27;
      v41 = 2082;
      v42 = v28;
      v43 = 1024;
      v44 = 43;
      _os_log_impl(&dword_23728C000, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSession:didDetectTags: method", buf, 0x22u);
    }
  }
}

- (NFCISO15693ReaderSession)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue
{
  v5.receiver = self;
  v5.super_class = NFCISO15693ReaderSession;
  return [(NFCReaderSession *)&v5 initWithDelegate:delegate sessionDelegateType:1 queue:queue pollMethod:4 sessionType:2 sessionConfig:32];
}

- (void)restartPolling
{
  v3 = _os_activity_create(&dword_23728C000, "NFCISO15693ReaderSession restartPolling", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  v4.receiver = self;
  v4.super_class = NFCISO15693ReaderSession;
  [(NFCReaderSession *)&v4 restartPolling];
}

@end