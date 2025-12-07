@interface NFCNDEFReaderSession
- (NFCNDEFReaderSession)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue invalidateAfterFirstRead:(BOOL)invalidateAfterFirstRead;
- (void)_callbackDidBecomeActive;
- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler;
- (void)didDetectNDEFMessages:(id)messages fromTags:(id)tags connectedTagIndex:(unint64_t)index updateUICallback:(id)callback;
- (void)didTerminate:(id)terminate;
- (void)restartPolling;
@end

@implementation NFCNDEFReaderSession

- (void)didTerminate:(id)terminate
{
  v3.receiver = self;
  v3.super_class = NFCNDEFReaderSession;
  [(NFCReaderSession *)&v3 didTerminate:terminate];
}

- (void)didDetectNDEFMessages:(id)messages fromTags:(id)tags connectedTagIndex:(unint64_t)index updateUICallback:(id)callback
{
  v105 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  tagsCopy = tags;
  callbackCopy = callback;
  v73 = callbackCopy;
  v74 = tagsCopy;
  if ([(NFCReaderSession *)self delegateType]== 5)
  {
    v14 = messagesCopy;
    callbackCopy[2](callbackCopy, 0);
    [(NFCReaderSession *)self didDetectTags:tagsCopy connectedTagIndex:index];
    v15 = objc_opt_new();
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v16 = tagsCopy;
    v17 = [v16 countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v92;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v92 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[NFCNDEFTag alloc] initWithSession:self tag:*(*(&v91 + 1) + 8 * i) startupConfig:0];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v18);
    }

    v22 = v15;
    if ([v15 count])
    {
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = sub_2372B74D8;
      v89[3] = &unk_278A29E60;
      v89[4] = self;
      v22 = v15;
      v90 = v22;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:v89];
    }

    else
    {
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v59 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v63 = !isMetaClass;
        v22 = v15;
        v64 = 45;
        if (!v63)
        {
          v64 = 43;
        }

        v59(4, "%c[%{public}s %{public}s]:%i No suitable NDEF tag found", v64, ClassName, Name, 73);
      }

      v65 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = object_getClass(self);
        if (class_isMetaClass(v66))
        {
          v67 = 43;
        }

        else
        {
          v67 = 45;
        }

        v68 = object_getClassName(self);
        v69 = sel_getName(a2);
        *buf = 67109890;
        v97 = v67;
        v98 = 2082;
        v99 = v68;
        v22 = v15;
        v100 = 2082;
        v101 = v69;
        v102 = 1024;
        v103 = 73;
        _os_log_impl(&dword_23728C000, v65, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i No suitable NDEF tag found", buf, 0x22u);
      }
    }

    v57 = v73;
    v56 = v74;
  }

  else
  {
    selfCopy = self;
    v76 = objc_opt_new();
    callbackCopy[2](callbackCopy, 1);
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v72 = messagesCopy;
    obj = messagesCopy;
    v78 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v78)
    {
      v77 = *v86;
      do
      {
        v23 = 0;
        do
        {
          if (*v86 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v79 = v23;
          v24 = *(*(&v85 + 1) + 8 * v23);
          v80 = objc_opt_new();
          records = [v24 records];
          v26 = [records count];

          if (v26)
          {
            v27 = 0;
            v28 = 0;
            do
            {
              records2 = [v24 records];
              v30 = [records2 objectAtIndexedSubscript:v27];

              typeNameFormat = [v30 typeNameFormat];
              type = [v30 type];
              identifier = [v30 identifier];
              v33 = objc_alloc(MEMORY[0x277CBEB28]);
              payload = [v30 payload];
              v35 = [v33 initWithData:payload];

              if ([v30 chunked] && objc_msgSend(type, "length"))
              {
                v36 = v28 + 1;
                [v24 records];
                v37 = v81 = v35;
                v38 = [v37 count];

                v35 = v81;
                if (v38 > v28 + 1)
                {
                  v39 = v36;
                  while (1)
                  {
                    records3 = [v24 records];
                    v41 = [records3 objectAtIndexedSubscript:v39];

                    identifier2 = [v41 identifier];
                    if ([identifier2 length])
                    {
                      goto LABEL_32;
                    }

                    v43 = v24;
                    type2 = [v41 type];
                    if ([type2 length])
                    {

                      v24 = v43;
LABEL_32:

                      goto LABEL_36;
                    }

                    v45 = typeNameFormat;
                    typeNameFormat2 = [v41 typeNameFormat];

                    if (typeNameFormat2 != 6)
                    {
                      v24 = v43;
                      goto LABEL_35;
                    }

                    payload2 = [v41 payload];
                    [v81 appendData:payload2];

                    v24 = v43;
                    if (([v41 chunked] & 1) == 0)
                    {
                      break;
                    }

                    ++v39;
                    records4 = [v43 records];
                    v49 = [records4 count];

                    ++v28;
                    typeNameFormat = v45;
                    if (v49 <= v39)
                    {
                      v36 = v28 + 1;
                      goto LABEL_37;
                    }
                  }

                  ++v28;
LABEL_35:
                  typeNameFormat = v45;
LABEL_36:

                  v36 = v28;
LABEL_37:
                  v35 = v81;
                }
              }

              else
              {
                v36 = v28;
              }

              v50 = [[NFCNDEFPayload alloc] initWithFormat:typeNameFormat type:type identifier:identifier payload:v35 chunkSize:0];
              [v80 addObject:v50];

              v28 = v36 + 1;
              v27 = v36 + 1;
              records5 = [v24 records];
              v52 = [records5 count];
            }

            while (v52 > v27);
          }

          v53 = [[NFCNDEFMessage alloc] initWithNDEFRecords:v80];
          records6 = [(NFCNDEFMessage *)v53 records];
          v55 = [records6 count];

          if (v55)
          {
            [v76 addObject:v53];
          }

          v23 = v79 + 1;
        }

        while (v79 + 1 != v78);
        v78 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v78);
    }

    v22 = v76;
    v56 = v74;
    if ([v76 count])
    {
      selfCopy->_tagsRead += [v74 count];
      if ([(NFCReaderSession *)selfCopy delegateType]== 4)
      {
        v83[0] = MEMORY[0x277D85DD0];
        v83[1] = 3221225472;
        v83[2] = sub_2372B7554;
        v83[3] = &unk_278A29E60;
        v83[4] = selfCopy;
        v84 = v76;
        [(NFCReaderSession *)selfCopy submitBlockOnDelegateQueue:v83];
      }
    }

    v14 = v72;
    v57 = v73;
    if (selfCopy->_invalidateAfterFirstRead)
    {
      [(NFCReaderSession *)selfCopy invalidateSessionWithReason:204];
    }
  }
}

- (NFCNDEFReaderSession)initWithDelegate:(id)delegate queue:(dispatch_queue_t)queue invalidateAfterFirstRead:(BOOL)invalidateAfterFirstRead
{
  v5 = invalidateAfterFirstRead;
  v8 = delegate;
  v9 = queue;
  if ([v8 conformsToProtocol:&unk_284A5A210] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    LOBYTE(v5) = 0;
    v10 = 528;
    v11 = 5;
  }

  else
  {
    if (v5)
    {
      v10 = 64;
    }

    else
    {
      v10 = 0;
    }

    v11 = 4;
  }

  v15.receiver = self;
  v15.super_class = NFCNDEFReaderSession;
  v12 = [(NFCReaderSession *)&v15 initWithDelegate:v8 sessionDelegateType:v11 queue:v9 pollMethod:2 sessionType:1 sessionConfig:v10];
  v13 = v12;
  if (v12)
  {
    v12->_invalidateAfterFirstRead = v5;
  }

  return v13;
}

- (void)restartPolling
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = _os_activity_create(&dword_23728C000, "NFCNDEFReaderSession restartPolling", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v4, state);
  os_activity_scope_leave(state);

  if ([(NFCReaderSession *)self delegateType]== 5)
  {
    v17.receiver = self;
    v17.super_class = NFCNDEFReaderSession;
    [(NFCReaderSession *)&v17 restartPolling];
  }

  else
  {
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(self);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(self);
      Name = sel_getName(a2);
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(5, "%c[%{public}s %{public}s]:%i Delegate conforms to [NFCNDEFReaderSessionDelegate readerSession:didDetectTags]; polling is auto restarted.", v10, ClassName, Name, 185);
    }

    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(self);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(self);
      v15 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v13;
      *&state[8] = 2082;
      *&state[10] = v14;
      v19 = 2082;
      v20 = v15;
      v21 = 1024;
      v22 = 185;
      _os_log_impl(&dword_23728C000, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Delegate conforms to [NFCNDEFReaderSessionDelegate readerSession:didDetectTags]; polling is auto restarted.", state, 0x22u);
    }
  }
}

- (void)connectToTag:(id)tag completionHandler:(void *)completionHandler
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = tag;
  v8 = completionHandler;
  v9 = _os_activity_create(&dword_23728C000, "NFCNDEFReaderSession connectToTag:completionHandler", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v9, state);
  os_activity_scope_leave(state);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v43 = 0;
    v11 = [v10 isMatchingSession:self outError:&v43];
    v12 = v43;
    if (v11)
    {
      [v10 _connectWithCompletionHandler:v8];
    }

    else
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = sub_2372B7D08;
      v40 = &unk_278A29D48;
      v42 = v8;
      v41 = v12;
      [(NFCReaderSession *)self submitBlockOnDelegateQueue:&v37];
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v25 = Logger;
        Class = object_getClass(self);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(self);
        Name = sel_getName(a2);
        v29 = 45;
        if (isMetaClass)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", v29, ClassName, Name, 207, v37, v38, v39, v40);
      }

      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(self);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        v33 = object_getClassName(self);
        v34 = sel_getName(a2);
        *state = 67109890;
        *&state[4] = v32;
        *&state[8] = 2082;
        *&state[10] = v33;
        v47 = 2082;
        v48 = v34;
        v49 = 1024;
        v50 = 207;
        _os_log_impl(&dword_23728C000, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Only tag from the current session is allowed", state, 0x22u);
      }
    }
  }

  else
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2372B7CA0;
    v44[3] = &unk_278A29C38;
    v45 = v8;
    [(NFCReaderSession *)self submitBlockOnDelegateQueue:v44];
    v13 = NFLogGetLogger();
    if (v13)
    {
      v14 = v13;
      v15 = object_getClass(self);
      v16 = class_isMetaClass(v15);
      v17 = object_getClassName(self);
      v35 = sel_getName(a2);
      v18 = 45;
      if (v16)
      {
        v18 = 43;
      }

      v14(3, "%c[%{public}s %{public}s]:%i Invalid tag object", v18, v17, v35, 197);
    }

    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = object_getClass(self);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v22 = object_getClassName(self);
      v23 = sel_getName(a2);
      *state = 67109890;
      *&state[4] = v21;
      *&state[8] = 2082;
      *&state[10] = v22;
      v47 = 2082;
      v48 = v23;
      v49 = 1024;
      v50 = 197;
      _os_log_impl(&dword_23728C000, v19, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid tag object", state, 0x22u);
    }

    v10 = v45;
  }
}

- (void)_callbackDidBecomeActive
{
  v40 = *MEMORY[0x277D85DE8];
  if ([(NFCReaderSession *)self delegateType]!= 4 && [(NFCReaderSession *)self delegateType]!= 5)
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

      v19(4, "%c[%{public}s %{public}s]:%i Unknown delegate type: %ld", v24, ClassName, Name, 226, delegateType);
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
    v37 = 226;
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
    v29[2] = sub_2372B8054;
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

    v7(4, "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSessionDidBecomeActive: method", v11, v10, v27, 223);
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
    v37 = 223;
    v15 = "%c[%{public}s %{public}s]:%i Delegate does not implement -readerSessionDidBecomeActive: method";
    v16 = v12;
    v17 = 34;
LABEL_23:
    _os_log_impl(&dword_23728C000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_24:
}

@end