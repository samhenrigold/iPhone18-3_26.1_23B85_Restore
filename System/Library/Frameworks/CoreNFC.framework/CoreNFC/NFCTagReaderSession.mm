@interface NFCTagReaderSession
- (NFCTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate delegateType:(int64_t)type sessionType:(unint64_t)sessionType queue:(id)queue;
- (NFCTagReaderSession)initWithPollingOption:(int64_t)option swiftDelegate:(id)delegate sessionType:(unint64_t)type queue:(id)queue;
- (void)_callbackDidBecomeActive;
- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler;
- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index;
- (void)restartPolling;
@end

@implementation NFCTagReaderSession

- (NFCTagReaderSession)initWithPollingOption:(int64_t)option delegate:(id)delegate delegateType:(int64_t)type sessionType:(unint64_t)sessionType queue:(id)queue
{
  v51 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  queueCopy = queue;
  if ((option - 1) >= 0xF)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v18 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v18(3, "%c[%{public}s %{public}s]:%i Invalid NFCPollingOption parameter: 0x%lx", v21, ClassName, Name, 31, option);
    }

    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      *buf = 67110146;
      v42 = v24;
      v43 = 2082;
      v44 = object_getClassName(self);
      v45 = 2082;
      v46 = sel_getName(a2);
      v47 = 1024;
      v48 = 31;
      v49 = 2048;
      optionCopy = option;
      _os_log_impl(&dword_23728C000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid NFCPollingOption parameter: 0x%lx", buf, 0x2Cu);
    }

    selfCopy = 0;
  }

  else
  {
    if (option >= 8)
    {
      v26 = NFLogGetLogger();
      if (v26)
      {
        v27 = v26;
        v28 = object_getClass(self);
        v29 = class_isMetaClass(v28);
        v30 = object_getClassName(self);
        v39 = sel_getName(a2);
        v31 = 45;
        if (v29)
        {
          v31 = 43;
        }

        v27(6, "%c[%{public}s %{public}s]:%i PACE-polling enabled", v31, v30, v39, 42);
      }

      v32 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = object_getClass(self);
        if (class_isMetaClass(v33))
        {
          v34 = 43;
        }

        else
        {
          v34 = 45;
        }

        *buf = 67109890;
        v42 = v34;
        v43 = 2082;
        v44 = object_getClassName(self);
        v45 = 2082;
        v46 = sel_getName(a2);
        v47 = 1024;
        v48 = 42;
        _os_log_impl(&dword_23728C000, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PACE-polling enabled", buf, 0x22u);
      }

      v16 = 1030;
      v15 = 8;
    }

    else
    {
      v15 = (__rbit32(option & 3) >> 28) & 0xFFFFFFFFFFFFFFEFLL | (16 * ((option >> 2) & 1));
      v16 = 6;
    }

    if (sessionType == 5)
    {
      v35 = v15 | 0x20;
    }

    else
    {
      v35 = v15;
    }

    v40.receiver = self;
    v40.super_class = NFCTagReaderSession;
    self = [(NFCReaderSession *)&v40 initWithDelegate:delegateCopy sessionDelegateType:type queue:queueCopy pollMethod:v35 sessionType:sessionType sessionConfig:v16];
    selfCopy = self;
  }

  return selfCopy;
}

- (NFCTagReaderSession)initWithPollingOption:(int64_t)option swiftDelegate:(id)delegate sessionType:(unint64_t)type queue:(id)queue
{
  objc_storeStrong(&self->_swiftDelegateWrapper, delegate);
  delegateCopy = delegate;
  queueCopy = queue;
  v13 = [(NFCTagReaderSession *)self initWithPollingOption:option delegate:delegateCopy delegateType:3 sessionType:type queue:queueCopy];

  return v13;
}

- (void)restartPolling
{
  v3 = _os_activity_create(&dword_23728C000, "NFCTagReaderSession restartPolling", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  os_activity_scope_leave(&state);

  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectedTag = selfCopy->_connectedTag;
  selfCopy->_connectedTag = 0;

  objc_sync_exit(selfCopy);
  v6.receiver = selfCopy;
  v6.super_class = NFCTagReaderSession;
  [(NFCReaderSession *)&v6 restartPolling];
}

- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = tag;
  v9 = completionHandler;
  v10 = _os_activity_create(&dword_23728C000, "NFCTagReaderSession connectToTag:completionHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v10, state);
  os_activity_scope_leave(state);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v8;
    v46 = 0;
    v12 = [v11 isMatchingSession:self outError:&v46];
    v13 = v46;
    if (v12)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_connectedTag, tag);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_2372C2EDC;
      v40[3] = &unk_278A2A090;
      v40[4] = selfCopy;
      v42 = v9;
      v41 = v13;
      v15 = v11;
      [v15 _connectWithCompletionHandler:v40];

      objc_sync_exit(selfCopy);
    }

    else
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_2372C2EC8;
      v43[3] = &unk_278A29D48;
      v45 = v9;
      v44 = v13;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:v43];
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v28 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v32 = 45;
        if (isMetaClass)
        {
          v32 = 43;
        }

        v28(3, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", v32, ClassName, Name, 112);
      }

      v33 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = object_getClass(self);
        if (class_isMetaClass(v34))
        {
          v35 = 43;
        }

        else
        {
          v35 = 45;
        }

        v36 = object_getClassName(self);
        v37 = sel_getName(a2);
        *state = 67109890;
        *&state[4] = v35;
        *&state[8] = 2082;
        *&state[10] = v36;
        v50 = 2082;
        v51 = v37;
        v52 = 1024;
        v53 = 112;
        _os_log_impl(&dword_23728C000, v33, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", state, 0x22u);
      }

      selfCopy = v45;
    }
  }

  else
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2372C2E60;
    v47[3] = &unk_278A29C38;
    v48 = v9;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v47];
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(self);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(self);
      v38 = sel_getName(a2);
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Invalid tag object", v21, v20, v38, 102);
    }

    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(self);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(self);
      v26 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v24;
      *&state[8] = 2082;
      *&state[10] = v25;
      v50 = 2082;
      v51 = v26;
      v52 = 1024;
      v53 = 102;
      _os_log_impl(&dword_23728C000, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag object", state, 0x22u);
    }

    v11 = v48;
  }
}

- (void)_callbackDidBecomeActive
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(NFCReaderSession *)self delegateType]!= 2 && [(NFCReaderSession *)self delegateType]!= 3)
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v19 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      delegateType = [(NFCReaderSession *)self delegateType];
      v24 = 45;
      if (isMetaClass)
      {
        v24 = 43;
      }

      v19(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v24, ClassName, Name, 152, delegateType);
    }

    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v25 = object_getClass(self);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    *buf = 67110146;
    v31 = v26;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 152;
    v38 = 2048;
    delegateType2 = [(NFCReaderSession *)self delegateType];
    v15 = "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld";
    v16 = v12;
    v17 = 44;
    goto LABEL_23;
  }

  delegate = [(NFCReaderSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2372C32A0;
    v29[3] = &unk_278A29F00;
    v29[4] = self;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v29];
    return;
  }

  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(self);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(self);
    v27 = sel_getName(a2);
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSessionDidBecomeActive: method", v11, v10, v27, 149);
  }

  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = object_getClass(self);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v31 = v14;
    v32 = 2082;
    v33 = object_getClassName(self);
    v34 = 2082;
    v35 = sel_getName(a2);
    v36 = 1024;
    v37 = 149;
    v15 = "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSessionDidBecomeActive: method";
    v16 = v12;
    v17 = 34;
LABEL_23:
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_24:
}

- (void)didDetectTags:(id)tags connectedTagIndex:(unint64_t)index
{
  v61 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  v52.receiver = self;
  v52.super_class = NFCTagReaderSession;
  [(NFCReaderSession *)&v52 didDetectTags:tagsCopy connectedTagIndex:index];
  delegate = [(NFCReaderSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v48 = a2;
    v51 = 0;
    v10 = objc_opt_new();
    if ([tagsCopy count])
    {
      v11 = 0;
      while (1)
      {
        v12 = [tagsCopy objectAtIndexedSubscript:v11];
        type = [v12 type];
        v14 = off_278A29970;
        if (type == 8)
        {
          goto LABEL_11;
        }

        type2 = [v12 type];
        v14 = off_278A29968;
        if (type2 == 7)
        {
          goto LABEL_11;
        }

        if ([v12 type] == 9 || objc_msgSend(v12, "type") == 14 || objc_msgSend(v12, "type") == 15 || objc_msgSend(v12, "type") == 16)
        {
          break;
        }

        if ([v12 type] == 3 || objc_msgSend(v12, "type") == 6 || objc_msgSend(v12, "type") == 5 && (objc_msgSend(v12, "tagB"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "pupi"), v47 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(objc_alloc(MEMORY[0x277CBEA90]), "initWithBytes:length:", &v51, 4), v45 = objc_msgSend(v47, "isEqualToData:", v18), v18, v47, v46, v45))
        {
          v14 = off_278A29978;
LABEL_11:
          v16 = [objc_alloc(*v14) initWithSession:self tag:v12 startupConfig:0];
          if (v16)
          {
            v17 = v16;
            [v10 addObject:v16];
          }
        }

        if (++v11 >= [tagsCopy count])
        {
          goto LABEL_30;
        }
      }

      v14 = off_278A29980;
      goto LABEL_11;
    }

LABEL_30:
    if ([v10 count])
    {
      if (index != 0x7FFFFFFFFFFFFFFFLL)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v30 = [v10 objectAtIndex:index];
        connectedTag = selfCopy->_connectedTag;
        selfCopy->_connectedTag = v30;

        objc_sync_exit(selfCopy);
      }

      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = sub_2372C3848;
      v49[3] = &unk_278A29E60;
      v49[4] = self;
      v50 = v10;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:v49];
    }

    else
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v33 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(v48);
        v37 = 45;
        if (isMetaClass)
        {
          v37 = 43;
        }

        v33(4, "%c[%{public}s %{public}s]:%i No suitable tag found", v37, ClassName, Name, 197);
      }

      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = object_getClass(self);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(self);
        v42 = sel_getName(v48);
        *buf = 67109890;
        v54 = v40;
        v55 = 2082;
        v56 = v41;
        v57 = 2082;
        v58 = v42;
        v59 = 1024;
        v60 = 197;
        _os_log_impl(&dword_23728C000, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No suitable tag found", buf, 0x22u);
      }
    }
  }

  else
  {
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(self);
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(self);
      v43 = sel_getName(a2);
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSession:didDetectTags: method", v24, v23, v43, 163);
    }

    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
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
      v54 = v26;
      v55 = 2082;
      v56 = v27;
      v57 = 2082;
      v58 = v28;
      v59 = 1024;
      v60 = 163;
      _os_log_impl(&dword_23728C000, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Delegate does not implement -tagReaderSession:didDetectTags: method", buf, 0x22u);
    }
  }
}

@end