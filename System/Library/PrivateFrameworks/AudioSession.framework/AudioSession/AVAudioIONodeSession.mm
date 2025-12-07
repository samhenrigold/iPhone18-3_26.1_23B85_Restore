@interface AVAudioIONodeSession
- (AVAudioIONodePlayState)playState;
- (AVAudioIONodeSession)initWithDescription:(id)description;
- (AVAudioIONodeSession)initWithDescription:(id)description server:(id)server;
- (BOOL)_setMXProperties:(void *)properties properties:(id)a4 error:(id *)error;
- (BOOL)privateCreateIONodeSession:(id)session server:(id)server;
- (BOOL)reconfigure:(id)reconfigure error:(id *)error;
- (BOOL)setMXProperties:(id)properties error:(id *)error;
- (BOOL)setMXSessionProperty:(id)property value:(id)value error:(id *)error;
- (NSUUID)nodeSessionUUID;
- (id).cxx_construct;
- (id)getMXProperties:(id)properties propertyErrors:(id *)errors;
- (id)getMXSessionProperty:(id)property error:(id *)error;
- (int)sessionOwnerPID;
- (unsigned)nodeSessionID;
- (unsigned)playerType;
- (unsigned)sourceSessionID;
- (void)dealloc;
- (void)invalidate;
- (void)setInputMuted:(BOOL)muted;
- (void)setOutputMuted:(BOOL)muted;
- (void)setPlayState:(id)state;
@end

@implementation AVAudioIONodeSession

- (AVAudioIONodeSession)initWithDescription:(id)description server:(id)server
{
  v18 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  serverCopy = server;
  v13.receiver = self;
  v13.super_class = AVAudioIONodeSession;
  v8 = [(AVAudioIONodeSession *)&v13 init];
  v9 = v8;
  if (v8)
  {
    atomic_store(0, &v8->_invalidated);
    v10 = [(AVAudioIONodeSession *)v8 privateCreateIONodeSession:descriptionCopy server:serverCopy];
    if ((v10 & 1) == 0)
    {
      v11 = *avas::client::gSessionClientLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "AVAudioIONodeSession.mm";
        v16 = 1024;
        v17 = 94;
        _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create IONodeSession on the server", buf, 0x12u);
      }

      v9 = 0;
    }
  }

  return v9;
}

- (AVAudioIONodeSession)initWithDescription:(id)description
{
  descriptionCopy = description;
  v5 = avac::CreateInProcessIONodeSessionServer(descriptionCopy);
  if (!v5)
  {
    v5 = objc_alloc_init(AVAudioIONodeSessionRemoteServer);
  }

  v6 = [(AVAudioIONodeSession *)self initWithDescription:descriptionCopy server:v5];

  return v6;
}

- (BOOL)privateCreateIONodeSession:(id)session server:(id)server
{
  v8 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  serverCopy = server;
  operator new();
}

- (void)dealloc
{
  [(AVAudioIONodeSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = AVAudioIONodeSession;
  [(AVAudioIONodeSession *)&v3 dealloc];
}

- (void)invalidate
{
  v18 = *MEMORY[0x1E69E9840];
  if ((atomic_exchange(&self->_invalidated._Value, 1u) & 1) == 0)
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    v3 = ptr[6];
    v4 = *(ptr + 1);
    v9 = 0;
    v5 = [v4 invalidateIONode:v3 error:&v9];
    v6 = v9;

    if ((v5 & 1) == 0)
    {
      v8 = *avas::client::gSessionClientLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v11 = "AVAudioIONodeSession.mm";
        v12 = 1024;
        v13 = 156;
        v14 = 1024;
        v15 = v3;
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d failed to invalidate AVAudioIONodeSession 0x%x: %@", buf, 0x22u);
      }
    }

    avas::client::AVAudioIONodeSessionImpl::SetNodeID((ptr + 2), 0);

    os_unfair_lock_unlock(ptr);
  }
}

- (BOOL)reconfigure:(id)reconfigure error:(id *)error
{
  reconfigureCopy = reconfigure;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  if ([(AVAudioIONodeDescription *)reconfigureCopy isEqual:*(ptr + 2)])
  {
    goto LABEL_4;
  }

  v8 = *(ptr + 1);
  v9 = ptr[6];
  sourceSession = [(AVAudioIONodeDescription *)reconfigureCopy sourceSession];
  sessionOwnerPID = [(AVAudioIONodeDescription *)reconfigureCopy sessionOwnerPID];
  v12 = [v8 reconfigureIONode:v9 withSourceSession:sourceSession sessionOwnerPID:sessionOwnerPID playerType:-[AVAudioIONodeDescription playerType](reconfigureCopy error:{"playerType"), error}];

  if (v12)
  {
    avas::client::AVAudioIONodeSessionImpl::SetNodeID((ptr + 2), v12);
    avas::client::AVAudioIONodeSessionImpl::SetDescription((ptr + 2), reconfigureCopy);
LABEL_4:
    LOBYTE(v12) = 1;
  }

  os_unfair_lock_unlock(ptr);

  return v12;
}

- (unsigned)nodeSessionID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  os_unfair_lock_opaque = ptr[6]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(ptr);
  return os_unfair_lock_opaque;
}

- (NSUUID)nodeSessionUUID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v3 = *(ptr + 4);
  os_unfair_lock_unlock(ptr);

  return v3;
}

- (unsigned)sourceSessionID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  sourceSession = [*(ptr + 2) sourceSession];
  os_unfair_lock_unlock(ptr);
  return sourceSession;
}

- (int)sessionOwnerPID
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  sessionOwnerPID = [*(ptr + 2) sessionOwnerPID];
  intValue = [sessionOwnerPID intValue];

  os_unfair_lock_unlock(ptr);
  return intValue;
}

- (unsigned)playerType
{
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  playerType = [*(ptr + 2) playerType];
  os_unfair_lock_unlock(ptr);
  return playerType;
}

- (void)setInputMuted:(BOOL)muted
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "AVAudioIONodeSession.mm";
    v6 = 1024;
    v7 = 226;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Unimplemented!", &v4, 0x12u);
  }
}

- (void)setOutputMuted:(BOOL)muted
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "AVAudioIONodeSession.mm";
    v6 = 1024;
    v7 = 237;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Unimplemented!", &v4, 0x12u);
  }
}

- (AVAudioIONodePlayState)playState
{
  v2 = [(AVAudioIONodePlayState *)self->_playState copy];

  return v2;
}

- (void)setPlayState:(id)state
{
  v24 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (![(AVAudioIONodePlayState *)self->_playState isEqual:stateCopy])
  {
    ptr = self->_impl.__ptr_;
    os_unfair_lock_lock(ptr);
    v6 = *(ptr + 1);
    v7 = ptr[6];
    v15 = 0;
    v8 = [v6 setIONode:v7 playState:objc_msgSend(stateCopy modes:"playState") error:{objc_msgSend(stateCopy, "ioMode"), &v15}];
    v9 = v15;

    if (v8)
    {
      v11 = [stateCopy copy];
      playState = self->_playState;
      self->_playState = v11;
    }

    else
    {
      v13 = *avas::client::gSessionClientLog(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = ptr[6];
        *buf = 136315906;
        v17 = "AVAudioIONodeSession.mm";
        v18 = 1024;
        v19 = 260;
        v20 = 1024;
        v21 = v14;
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1AC8A4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set play state for 0x%x: %@", buf, 0x22u);
      }
    }

    os_unfair_lock_unlock(ptr);
  }
}

- (id)getMXSessionProperty:(id)property error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v11[0] = propertyCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v8 = [(AVAudioIONodeSession *)self getMXProperties:v7 propertyErrors:error];

  v9 = [v8 objectForKeyedSubscript:propertyCopy];

  return v9;
}

- (BOOL)setMXSessionProperty:(id)property value:(id)value error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  v14 = propertyCopy;
  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [(AVAudioIONodeSession *)self setMXProperties:v11 error:error];

  if (!valueCopy)
  {
  }

  return v12;
}

- (BOOL)setMXProperties:(id)properties error:(id *)error
{
  ptr = self->_impl.__ptr_;
  propertiesCopy = properties;
  os_unfair_lock_lock(ptr);
  lock[0] = ptr;
  lock[1] = ptr + 2;
  v8 = [(AVAudioIONodeSession *)self _setMXProperties:lock properties:propertiesCopy error:error];

  if (lock[0])
  {
    os_unfair_lock_unlock(lock[0]);
  }

  return v8;
}

- (BOOL)_setMXProperties:(void *)properties properties:(id)a4 error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = **(properties + 1);
  v8 = *(*(properties + 1) + 16);
  v42 = 0;
  v30 = [v7 setPropertiesIONode:v8 values:a4 error:&v42];
  v31 = v42;

  v9 = v31;
  if (!v31)
  {
    v25 = 0;
    v24 = 0;
    errorCopy2 = error;
    if (!error)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ([v30 count])
  {
    v10 = MEMORY[0x1E695DF90];
    userInfo = [v31 userInfo];
    v12 = [v10 dictionaryWithDictionary:userInfo];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v30;
    v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v13)
    {
      v33 = *v39;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v38 + 1) + 8 * i);
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v17)
          {
            v18 = *v35;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v35 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = *(*(&v34 + 1) + 8 * j);
                v21 = [v16 objectForKeyedSubscript:v20];
                if (([v21 isEqual:&unk_1F2163260] & 1) == 0)
                {
                  [v12 setObject:v21 forKeyedSubscript:v20];
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
            }

            while (v17);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v13);
    }

    v22 = MEMORY[0x1E696ABC0];
    domain = [v31 domain];
    v24 = [v22 errorWithDomain:domain code:objc_msgSend(v31 userInfo:{"code"), v12}];

    v9 = v31;
  }

  else
  {
    v24 = v31;
  }

  if (error)
  {
    v27 = v24;
    v25 = v24;
    v9 = v31;
    errorCopy2 = error;
LABEL_25:
    *errorCopy2 = v25;
    v24 = v25;
  }

LABEL_26:

  return v9 == 0;
}

- (id)getMXProperties:(id)properties propertyErrors:(id *)errors
{
  v39 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  ptr = self->_impl.__ptr_;
  os_unfair_lock_lock(ptr);
  v7 = *(ptr + 1);
  v8 = ptr[6];
  v36 = 0;
  v37 = 0;
  v28 = propertiesCopy;
  v29 = [v7 getPropertiesIONode:v8 properties:propertiesCopy status:&v37 error:&v36];
  v31 = v37;
  v9 = v36;

  if (!v9)
  {
    v25 = 0;
    errorsCopy4 = errors;
    if (!errors)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = [v31 count];
  errorsCopy3 = errors;
  if (v10)
  {
    v12 = MEMORY[0x1E695DF90];
    userInfo = [v9 userInfo];
    v14 = [v12 dictionaryWithDictionary:userInfo];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v31;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v16)
    {
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v32 + 1) + 8 * i);
          v20 = [v15 objectForKeyedSubscript:v19];
          if (([v20 isEqual:&unk_1F2163260] & 1) == 0)
          {
            [v14 setObject:v20 forKeyedSubscript:v19];
          }
        }

        v16 = [v15 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v16);
    }

    v21 = MEMORY[0x1E696ABC0];
    domain = [v9 domain];
    v23 = [v21 errorWithDomain:domain code:objc_msgSend(v9 userInfo:{"code"), v14}];

    v9 = v23;
    errorsCopy3 = errors;
  }

  if (errorsCopy3)
  {
    v24 = v9;
    v25 = v9;
    errorsCopy4 = errors;
LABEL_16:
    *errorsCopy4 = v25;
    v9 = v25;
  }

LABEL_17:

  if (ptr)
  {
    os_unfair_lock_unlock(ptr);
  }

  return v29;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 24) = 0;
  return self;
}

@end