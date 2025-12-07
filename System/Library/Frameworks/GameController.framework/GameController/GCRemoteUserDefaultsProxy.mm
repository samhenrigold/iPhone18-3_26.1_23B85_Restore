@interface GCRemoteUserDefaultsProxy
- (BOOL)BOOLForKey:(id)key;
- (BOOL)agentConnectionEstablished;
- (GCRemoteUserDefaultsProxy)init;
- (double)doubleForKey:(id)key;
- (float)floatForKey:(id)key;
- (id)arrayForKey:(id)key;
- (id)dataForKey:(id)key;
- (id)dictionaryForKey:(id)key;
- (id)objectForKey:(id)key;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)observeUserDefaultsValueForKeyPath:(id)path change:(id)change;
- (void)postInitialKVONotificationForObservation:(id)observation keyPath:(id)path;
- (void)refreshActiveClient;
- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
- (void)setBool:(BOOL)bool forKey:(id)key;
- (void)setDouble:(double)double forKey:(id)key;
- (void)setFloat:(float)float forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)userDefaultsCheckIn:(id)in effectiveUserIdentifier:(unsigned int)identifier;
@end

@implementation GCRemoteUserDefaultsProxy

- (GCRemoteUserDefaultsProxy)init
{
  v11.receiver = self;
  v11.super_class = GCRemoteUserDefaultsProxy;
  v2 = [(GCRemoteUserDefaultsProxy *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_create("GCRemoteUserDefaultsProxy", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v5;

    v7 = objc_opt_new();
    clients = v2->_clients;
    v2->_clients = v7;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_consoleUserDidChange_ name:*MEMORY[0x1E69A0330] object:0];
  }

  return v2;
}

- (BOOL)agentConnectionEstablished
{
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  v3 = activeClient != 0;

  return v3;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy objectForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_41];

      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__7;
      v25 = __Block_byref_object_dispose__7;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_77;
      v20[3] = &unk_1E841AFF8;
      v20[4] = &v21;
      v14 = [v13 objectForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = v22[5];
      _Block_object_dispose(&v21, 8);

LABEL_8:
      goto LABEL_11;
    }

    v18 = gc_isInternalBuild(v10, v11);
    if (v18)
    {
      v13 = getGCLogger(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = 0;
      goto LABEL_8;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

void __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy stringForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_80];

      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__7;
      v25 = __Block_byref_object_dispose__7;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __42__GCRemoteUserDefaultsProxy_stringForKey___block_invoke_81;
      v20[3] = &unk_1E841B020;
      v20[4] = &v21;
      v14 = [v13 stringForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy stringForKey:];
      }

      v17 = v22[5];
      _Block_object_dispose(&v21, 8);

LABEL_8:
      goto LABEL_11;
    }

    v18 = gc_isInternalBuild(v10, v11);
    if (v18)
    {
      v13 = getGCLogger(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = 0;
      goto LABEL_8;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

void __42__GCRemoteUserDefaultsProxy_stringForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy dataForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_84];

      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__7;
      v25 = __Block_byref_object_dispose__7;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __40__GCRemoteUserDefaultsProxy_dataForKey___block_invoke_85;
      v20[3] = &unk_1E841B048;
      v20[4] = &v21;
      v14 = [v13 dataForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy dataForKey:];
      }

      v17 = v22[5];
      _Block_object_dispose(&v21, 8);

LABEL_8:
      goto LABEL_11;
    }

    v18 = gc_isInternalBuild(v10, v11);
    if (v18)
    {
      v13 = getGCLogger(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = 0;
      goto LABEL_8;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

void __40__GCRemoteUserDefaultsProxy_dataForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (id)dictionaryForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy dictionaryForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_88];

      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__7;
      v25 = __Block_byref_object_dispose__7;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __46__GCRemoteUserDefaultsProxy_dictionaryForKey___block_invoke_89;
      v20[3] = &unk_1E841B070;
      v20[4] = &v21;
      v14 = [v13 dictionaryForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy dictionaryForKey:];
      }

      v17 = v22[5];
      _Block_object_dispose(&v21, 8);

LABEL_8:
      goto LABEL_11;
    }

    v18 = gc_isInternalBuild(v10, v11);
    if (v18)
    {
      v13 = getGCLogger(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = 0;
      goto LABEL_8;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

void __46__GCRemoteUserDefaultsProxy_dictionaryForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy arrayForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_92];

      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__7;
      v25 = __Block_byref_object_dispose__7;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __41__GCRemoteUserDefaultsProxy_arrayForKey___block_invoke_93;
      v20[3] = &unk_1E841B098;
      v20[4] = &v21;
      v14 = [v13 arrayForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy arrayForKey:];
      }

      v17 = v22[5];
      _Block_object_dispose(&v21, 8);

LABEL_8:
      goto LABEL_11;
    }

    v18 = gc_isInternalBuild(v10, v11);
    if (v18)
    {
      v13 = getGCLogger(v18);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = 0;
      goto LABEL_8;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

void __41__GCRemoteUserDefaultsProxy_arrayForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setObject:objectCopy forKey:keyCopy];
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy BOOLForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_96];

      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __40__GCRemoteUserDefaultsProxy_BOOLForKey___block_invoke_97;
      v19[3] = &unk_1E841B0C0;
      v19[4] = &v20;
      v14 = [v13 BOOLForKey:keyCopy withReply:v19];
      isInternalBuild = gc_isInternalBuild(v14, v15);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy BOOLForKey:];
      }

      LOBYTE(agentConnectionEstablished) = *(v21 + 24);
      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v17 = gc_isInternalBuild(v10, v11);
      if (!v17)
      {
        LOBYTE(agentConnectionEstablished) = 0;
        goto LABEL_11;
      }

      v13 = getGCLogger(v17);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      LOBYTE(agentConnectionEstablished) = 0;
    }
  }

LABEL_11:

  return agentConnectionEstablished & 1;
}

void __40__GCRemoteUserDefaultsProxy_BOOLForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (void)setBool:(BOOL)bool forKey:(id)key
{
  boolCopy = bool;
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setBool:boolCopy forKey:keyCopy];
}

- (double)doubleForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  v9 = 0.0;
  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy doubleForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v14 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_100];

      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __42__GCRemoteUserDefaultsProxy_doubleForKey___block_invoke_101;
      v20[3] = &unk_1E841B0E8;
      v20[4] = &v21;
      v15 = [v14 doubleForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v15, v16);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy doubleForKey:];
      }

      v9 = v22[3];
      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v18 = gc_isInternalBuild(v11, v12);
      if (!v18)
      {
        goto LABEL_10;
      }

      v14 = getGCLogger(v18);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }
    }
  }

LABEL_10:

  return v9;
}

void __42__GCRemoteUserDefaultsProxy_doubleForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (void)setDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setDouble:keyCopy forKey:double];
}

- (float)floatForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  v9 = 0.0;
  if (agentConnectionEstablished)
  {
    if (gc_isInternalBuild(v7, v8))
    {
      [GCRemoteUserDefaultsProxy floatForKey:keyCopy];
    }

    activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

    if (activeClient)
    {
      activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      v14 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_104_0];

      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __41__GCRemoteUserDefaultsProxy_floatForKey___block_invoke_105;
      v20[3] = &unk_1E841B110;
      v20[4] = &v21;
      v15 = [v14 floatForKey:keyCopy withReply:v20];
      isInternalBuild = gc_isInternalBuild(v15, v16);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy floatForKey:];
      }

      v9 = v22[6];
      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v18 = gc_isInternalBuild(v11, v12);
      if (!v18)
      {
        goto LABEL_10;
      }

      v14 = getGCLogger(v18);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }
    }
  }

LABEL_10:

  return v9;
}

void __41__GCRemoteUserDefaultsProxy_floatForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (void)setFloat:(float)float forKey:(id)key
{
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  *&v7 = float;
  [activeClient setFloat:keyCopy forKey:v7];
}

- (int64_t)integerForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (!agentConnectionEstablished)
  {
    goto LABEL_10;
  }

  if (gc_isInternalBuild(v7, v8))
  {
    [GCRemoteUserDefaultsProxy integerForKey:keyCopy];
  }

  activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];

  if (!activeClient)
  {
    isInternalBuild = gc_isInternalBuild(v10, v11);
    if (isInternalBuild)
    {
      v13 = getGCLogger(isInternalBuild);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [GCRemoteUserDefaultsProxy objectForKey:];
      }

      v17 = 0;
      goto LABEL_8;
    }

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  activeClient2 = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
  v13 = [activeClient2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_108_0];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __43__GCRemoteUserDefaultsProxy_integerForKey___block_invoke_109;
  v20[3] = &unk_1E841B138;
  v20[4] = &v21;
  v14 = [v13 integerForKey:keyCopy withReply:v20];
  v16 = gc_isInternalBuild(v14, v15);
  if (v16)
  {
    getGCLogger(v16);
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy integerForKey:];
  }

  v17 = v22[3];
  _Block_object_dispose(&v21, 8);
LABEL_8:

LABEL_11:
  return v17;
}

void __43__GCRemoteUserDefaultsProxy_integerForKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (gc_isInternalBuild(v2, v3))
  {
    __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(v2);
  }
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  activeClient = [(GCRemoteUserDefaultsProxy *)self activeClient];
  [activeClient setInteger:integer forKey:keyCopy];
}

- (void)postInitialKVONotificationForObservation:(id)observation keyPath:(id)path
{
  observationCopy = observation;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
  objc_sync_exit(selfCopy);

  if (!agentConnectionEstablished)
  {
    goto LABEL_17;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:&unk_1F4E8F1B8 forKeyedSubscript:*MEMORY[0x1E696A4E8]];
  if (([observationCopy options] & 4) != 0)
  {
    null3 = [(GCRemoteUserDefaultsProxy *)selfCopy objectForKey:pathCopy];
    if (!null3)
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null forKeyedSubscript:*MEMORY[0x1E696A4F0]];

LABEL_13:
      goto LABEL_14;
    }

    v15 = MEMORY[0x1E696A4F0];
LABEL_12:
    [v10 setObject:null3 forKeyedSubscript:*v15];
    goto LABEL_13;
  }

  options = [observationCopy options];
  if (options)
  {
    v13 = [(GCRemoteUserDefaultsProxy *)selfCopy objectForKey:pathCopy];
    if (v13)
    {
      [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x1E696A4F0]];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [v10 setObject:null2 forKeyedSubscript:*MEMORY[0x1E696A4F0]];
    }

    options = [observationCopy options];
    if ((options & 2) != 0)
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      v15 = MEMORY[0x1E696A500];
      goto LABEL_12;
    }
  }

LABEL_14:
  if (gc_isInternalBuild(options, v12))
  {
    [GCRemoteUserDefaultsProxy postInitialKVONotificationForObservation:observationCopy keyPath:?];
  }

  observer = [observationCopy observer];
  [observer observeValueForKeyPath:pathCopy ofObject:selfCopy change:v10 context:{objc_msgSend(observationCopy, "context")}];

LABEL_17:
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  v33 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  pathCopy = path;
  selfCopy = self;
  v13 = objc_sync_enter(selfCopy);
  isInternalBuild = gc_isInternalBuild(v13, v14);
  if (isInternalBuild)
  {
    v26 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = 138412802;
      v28 = observerCopy;
      v29 = 2112;
      v30 = pathCopy;
      v31 = 2048;
      contextCopy = context;
      _os_log_impl(&dword_1D2CD5000, v26, OS_LOG_TYPE_INFO, "GCRemoteUserDefaultsProxy - addObserver:%@ forKeyPath:%@ context:%lu", &v27, 0x20u);
    }
  }

  v16 = [(NSMutableDictionary *)selfCopy->_observers objectForKeyedSubscript:pathCopy];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = objc_opt_new();
    agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
    if (agentConnectionEstablished)
    {
      activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
      [activeClient observeKeyPath:pathCopy];
    }

    v21 = gc_isInternalBuild(agentConnectionEstablished, v19);
    if (v21)
    {
      getGCLogger(v21);
      objc_claimAutoreleasedReturnValue();
      [GCRemoteUserDefaultsProxy addObserver:forKeyPath:options:context:];
    }
  }

  v22 = [[GCObservation alloc] initWithObserver:observerCopy options:options context:context];
  [v17 addObject:v22];
  [(NSMutableDictionary *)selfCopy->_observers setObject:v17 forKeyedSubscript:pathCopy];
  options = [(GCObservation *)v22 options];
  if ((options & 4) != 0)
  {
    options = [(GCRemoteUserDefaultsProxy *)selfCopy postInitialKVONotificationForObservation:v22 keyPath:pathCopy];
  }

  v25 = gc_isInternalBuild(options, v24);
  if (v25)
  {
    getGCLogger(v25);
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy addObserver:forKeyPath:options:context:];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  v37 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  pathCopy = path;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_observers objectForKeyedSubscript:pathCopy];
  v12 = [v11 mutableCopy];

  isInternalBuild = gc_isInternalBuild(v13, v14);
  if (isInternalBuild)
  {
    v30 = getGCLogger(isInternalBuild);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *v32 = 138412802;
      *&v32[4] = observerCopy;
      v33 = 2112;
      v34 = pathCopy;
      v35 = 2048;
      contextCopy = context;
      _os_log_impl(&dword_1D2CD5000, v30, OS_LOG_TYPE_INFO, "GCRemoteUserDefaultsProxy - removeObserver %@ forKeyPath %@ context %lu", v32, 0x20u);
    }
  }

  if (v12)
  {
    v17 = [[GCObservation alloc] initWithObserver:observerCopy options:0 context:0];
    v18 = [v12 containsObject:v17];
    if (v18)
    {
      [v12 removeObject:v17];
      v20 = [v12 count];
      observers = selfCopy->_observers;
      if (v20)
      {
        v22 = [(NSMutableDictionary *)observers setObject:v12 forKeyedSubscript:pathCopy];
      }

      else
      {
        [(NSMutableDictionary *)observers removeObjectForKey:pathCopy];
        agentConnectionEstablished = [(GCRemoteUserDefaultsProxy *)selfCopy agentConnectionEstablished];
        if (agentConnectionEstablished)
        {
          activeClient = [(GCRemoteUserDefaultsProxy *)selfCopy activeClient];
          [activeClient stopObservingKeyPath:pathCopy];
        }

        v22 = gc_isInternalBuild(agentConnectionEstablished, v27);
        if (v22)
        {
          getGCLogger(v22);
          objc_claimAutoreleasedReturnValue();
          [GCRemoteUserDefaultsProxy removeObserver:forKeyPath:context:];
        }
      }

      v29 = gc_isInternalBuild(v22, v23);
      if (!v29)
      {
        goto LABEL_15;
      }

      v31 = getGCLogger(v29);
      [GCRemoteUserDefaultsProxy removeObserver:v31 forKeyPath:&selfCopy->_observers context:v32];
      goto LABEL_21;
    }

    v25 = gc_isInternalBuild(v18, v19);
    if (v25)
    {
      getGCLogger(v25);
      objc_claimAutoreleasedReturnValue();
      [GCRemoteUserDefaultsProxy removeObserver:forKeyPath:context:];
LABEL_21:
    }

LABEL_15:

    goto LABEL_16;
  }

  v24 = gc_isInternalBuild(isInternalBuild, v16);
  if (v24)
  {
    getGCLogger(v24);
    objc_claimAutoreleasedReturnValue();
    [GCRemoteUserDefaultsProxy removeObserver:forKeyPath:context:];
    v17 = *v32;
    goto LABEL_15;
  }

LABEL_16:

  objc_sync_exit(selfCopy);
}

- (void)observeUserDefaultsValueForKeyPath:(id)path change:(id)change
{
  v25 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  changeCopy = change;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_observers objectForKeyedSubscript:pathCopy];
  v11 = v9;
  if (v9 && (v9 = [v9 count]) != 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          observer = [v16 observer];
          [observer observeValueForKeyPath:pathCopy ofObject:selfCopy change:changeCopy context:{objc_msgSend(v16, "context")}];
        }

        v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    isInternalBuild = gc_isInternalBuild(v9, v10);
    if (isInternalBuild)
    {
      v19 = getGCLogger(isInternalBuild);
      [GCRemoteUserDefaultsProxy observeUserDefaultsValueForKeyPath:v19 change:?];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)userDefaultsCheckIn:(id)in effectiveUserIdentifier:(unsigned int)identifier
{
  v4 = *&identifier;
  inCopy = in;
  v8 = inCopy;
  if (inCopy)
  {
    if (v4)
    {
      selfCopy = self;
      v10 = objc_sync_enter(selfCopy);
      isInternalBuild = gc_isInternalBuild(v10, v11);
      if (isInternalBuild)
      {
        getGCLogger(isInternalBuild);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy userDefaultsCheckIn:effectiveUserIdentifier:];
      }

      clients = selfCopy->_clients;
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      [(NSMutableDictionary *)clients setObject:v8 forKey:v14];

      v17 = gc_isInternalBuild(v15, v16);
      if (v17)
      {
        getGCLogger(v17);
        objc_claimAutoreleasedReturnValue();
        [GCRemoteUserDefaultsProxy userDefaultsCheckIn:effectiveUserIdentifier:];
      }

      [(GCRemoteUserDefaultsProxy *)selfCopy refreshActiveClient];
      objc_sync_exit(selfCopy);
    }

    else
    {
      v19 = gc_isInternalBuild(inCopy, v7);
      if (v19)
      {
        [GCRemoteUserDefaultsProxy userDefaultsCheckIn:v19 effectiveUserIdentifier:?];
      }
    }
  }

  else
  {
    v18 = gc_isInternalBuild(0, v7);
    if (v18)
    {
      [GCRemoteUserDefaultsProxy userDefaultsCheckIn:v18 effectiveUserIdentifier:?];
    }
  }
}

- (void)refreshActiveClient
{
  OUTLINED_FUNCTION_8_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 2u);
  }

  *v0 = v1;
}

- (void)objectForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)objectForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void __42__GCRemoteUserDefaultsProxy_objectForKey___block_invoke_cold_1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)stringForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)stringForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)dataForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)dataForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)dictionaryForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)dictionaryForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)arrayForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)arrayForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)BOOLForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)BOOLForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  }
}

- (void)doubleForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)doubleForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)floatForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)floatForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)integerForKey:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = getGCLogger(a1);
  if (OUTLINED_FUNCTION_9(v2))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)integerForKey:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)postInitialKVONotificationForObservation:(uint64_t)a1 keyPath:.cold.1(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x16u);
  }
}

- (void)addObserver:forKeyPath:options:context:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }
}

- (void)addObserver:forKeyPath:options:context:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_11_3(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)removeObserver:forKeyPath:context:.cold.1()
{
  OUTLINED_FUNCTION_8_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    OUTLINED_FUNCTION_11_6(&dword_1D2CD5000, v1, v3, "GCRemoteUserDefaultsProxy - trying to remove an observer that doesn't exist!", v4);
  }

  *v0 = v1;
}

- (void)removeObserver:forKeyPath:context:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }
}

- (void)removeObserver:(NSObject *)a1 forKeyPath:(uint64_t)a2 context:(NSObject *)a3 .cold.3(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (OUTLINED_FUNCTION_11_3(a1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_5_6();
    _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  *a3 = a1;
}

- (void)removeObserver:forKeyPath:context:.cold.4()
{
  OUTLINED_FUNCTION_8_2();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    OUTLINED_FUNCTION_11_6(&dword_1D2CD5000, v1, v3, "GCRemoteUserDefaultsProxy - trying to remove an observer that doesn't exist.", v4);
  }

  *v0 = v1;
}

- (void)observeUserDefaultsValueForKeyPath:(NSObject *)a1 change:.cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_6(v2, v3, v4, v5, v6);
  }
}

- (void)userDefaultsCheckIn:effectiveUserIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0x12u);
  }
}

- (void)userDefaultsCheckIn:effectiveUserIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1_0();
    _os_log_impl(v2, v3, OS_LOG_TYPE_INFO, v4, v5, 0xCu);
  }
}

- (void)userDefaultsCheckIn:(uint64_t)a1 effectiveUserIdentifier:.cold.3(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_6(v2, v3, v4, v5, v6);
  }
}

- (void)userDefaultsCheckIn:(uint64_t)a1 effectiveUserIdentifier:.cold.4(uint64_t a1)
{
  v1 = getGCLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_11_6(v2, v3, v4, v5, v6);
  }
}

@end