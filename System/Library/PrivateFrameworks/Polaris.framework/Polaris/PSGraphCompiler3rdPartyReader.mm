@interface PSGraphCompiler3rdPartyReader
- (PSGraphCompiler3rdPartyReader)initWithTransitionManager:(id)manager withContext:(id)context;
- (PSTransitionManager3rdPartyReader)transitionManager;
- (void)createReadersForTransitionBlock:(id)block;
- (void)dealloc;
- (void)destroyReadersForTransitionBlock:(id)block;
- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity;
@end

@implementation PSGraphCompiler3rdPartyReader

- (PSGraphCompiler3rdPartyReader)initWithTransitionManager:(id)manager withContext:(id)context
{
  managerCopy = manager;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = PSGraphCompiler3rdPartyReader;
  v8 = [(PSGraphCompiler3rdPartyReader *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAB00]);
    retainedReaderBlocks = v8->_retainedReaderBlocks;
    v8->_retainedReaderBlocks = v9;

    objc_storeWeak(&v8->_transitionManager, managerCopy);
    objc_storeStrong(&v8->_context, context);
    ps_prm_create_manager_for_3rdParty_session();
  }

  return 0;
}

- (void)dealloc
{
  ps_prm_delete_manager(self->_prm_mgr);
  v3.receiver = self;
  v3.super_class = PSGraphCompiler3rdPartyReader;
  [(PSGraphCompiler3rdPartyReader *)&v3 dealloc];
}

- (void)createReadersForTransitionBlock:(id)block
{
  v62 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  blockCopy = block;
  obj = [blockCopy addedGraphs];
  v41 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v41)
  {
    v40 = *v51;
    v4 = 0x281E7A000;
    do
    {
      v5 = 0;
      do
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v50 + 1) + 8 * v5);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        readers = [v6 readers];
        v7 = [readers countByEnumeratingWithState:&v46 objects:v60 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v47;
          do
          {
            v10 = 0;
            v43 = v8;
            do
            {
              if (*v47 != v9)
              {
                objc_enumerationMutation(readers);
              }

              v11 = *(*(&v46 + 1) + 8 * v10);
              v12 = __PLSLogSharedInstance(v7);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                name = [v11 name];
                uTF8String = [name UTF8String];
                input = [v11 input];
                [input resourceKey];
                selfCopy = self;
                v17 = v6;
                v19 = v18 = v9;
                uTF8String2 = [v19 UTF8String];
                *buf = 136315394;
                v55 = uTF8String;
                v56 = 2080;
                *v57 = uTF8String2;
                _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Creating PSReader (%s) for resource key %s.", buf, 0x16u);

                v9 = v18;
                v6 = v17;
                self = selfCopy;
                v8 = v43;

                v4 = 0x281E7A000uLL;
              }

              context = ps_prm_opts_create();
              input2 = [v11 input];
              resolvedResourceKey = [input2 resolvedResourceKey];

              input3 = [v11 input];
              -[PSGraphCompiler3rdPartyReader populateReaderOpts:forKey:forGraph:withCapacity:](self, "populateReaderOpts:forKey:forGraph:withCapacity:", context, resolvedResourceKey, v6, [input3 capacity]);

              v25 = [objc_alloc((v4 + 2896)) init3rdPartyReader:v11 graph:v6 readerOptions:context withPRMManager:self->_prm_mgr];
              if (*(*[v11 getContext] + 8) != 1)
              {
                [PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:buf];
LABEL_21:
                v45 = 0;
                name2 = [v11 name];
                uTF8String3 = [name2 UTF8String];
                v28 = context + 6;
                v29 = atomic_load(v28);
                asprintf(&v45, "Unable to set reader (%s) state to _READY. Current state %d", uTF8String3, v29);

                v31 = __PLSLogSharedInstance(v30);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
                {
                  name3 = [v11 name];
                  uTF8String4 = [name3 UTF8String];
                  v34 = atomic_load(v28);
                  *buf = 136315906;
                  v55 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
                  v56 = 1024;
                  *v57 = 87;
                  *&v57[4] = 2080;
                  *&v57[6] = uTF8String4;
                  v58 = 1024;
                  v59 = v34;
                  _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _READY. Current state %d", buf, 0x22u);
                }

                v35 = OSLogFlushBuffers();
                if (v35)
                {
                  v36 = v35;
                  v37 = __PLSLogSharedInstance(v35);
                  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v55 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
                    v56 = 1024;
                    *v57 = v36;
                    _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                  }
                }

                else
                {
                  usleep(0x1E8480u);
                }

                abort_with_reason();
              }

              [(NSMapTable *)self->_retainedReaderBlocks setObject:v25 forKey:v11];
              ps_prm_opts_destroy(context);
              context = [v11 context];
              if (ps_reader_state_update())
              {
                goto LABEL_21;
              }

              ++v10;
            }

            while (v8 != v10);
            v7 = [readers countByEnumeratingWithState:&v46 objects:v60 count:16];
            v8 = v7;
          }

          while (v7);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v41);
  }
}

- (void)destroyReadersForTransitionBlock:(id)block
{
  v80 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance(blockCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Destroying PSReaders.", buf, 2u);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = [blockCopy removedGraphs];
  v45 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v45)
  {
    v44 = *v67;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v67 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v5;
        v6 = *(*(&v66 + 1) + 8 * v5);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        readers = [v6 readers];
        v52 = [readers countByEnumeratingWithState:&v62 objects:v78 count:16];
        if (v52)
        {
          v51 = *v63;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v63 != v51)
              {
                objc_enumerationMutation(readers);
              }

              v8 = *(*(&v62 + 1) + 8 * i);
              v9 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v8];
              if (v9)
              {
                v60 = 0u;
                v61 = 0u;
                v58 = 0u;
                v59 = 0u;
                addedGraphs = [blockCopy addedGraphs];
                v11 = [addedGraphs countByEnumeratingWithState:&v58 objects:v77 count:16];
                if (v11)
                {
                  v12 = v11;
                  v13 = *v59;
                  v50 = *v59;
                  do
                  {
                    for (j = 0; j != v12; ++j)
                    {
                      if (*v59 != v13)
                      {
                        objc_enumerationMutation(addedGraphs);
                      }

                      v15 = *(*(&v58 + 1) + 8 * j);
                      v54 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v57 = 0u;
                      readers2 = [v15 readers];
                      v17 = [readers2 countByEnumeratingWithState:&v54 objects:v76 count:16];
                      if (v17)
                      {
                        v18 = v17;
                        v19 = *v55;
                        while (2)
                        {
                          for (k = 0; k != v18; ++k)
                          {
                            if (*v55 != v19)
                            {
                              objc_enumerationMutation(readers2);
                            }

                            if (v8 == *(*(&v54 + 1) + 8 * k))
                            {

                              v29 = __PLSLogSharedInstance(v28);
                              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                              {
                                name = [v8 name];
                                uTF8String = [name UTF8String];
                                *buf = 136380675;
                                v71 = uTF8String;
                                _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEFAULT, "Added PSReader already found for %{private}s. Continuing without deleting the current reader.", buf, 0xCu);
                              }

                              self = selfCopy;
                              goto LABEL_36;
                            }
                          }

                          v18 = [readers2 countByEnumeratingWithState:&v54 objects:v76 count:16];
                          if (v18)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v13 = v50;
                    }

                    v12 = [addedGraphs countByEnumeratingWithState:&v58 objects:v77 count:16];
                    self = selfCopy;
                  }

                  while (v12);
                }

                context = [v8 context];
                if (ps_reader_state_update())
                {
                  v53 = 0;
                  name2 = [v8 name];
                  uTF8String2 = [name2 UTF8String];
                  v34 = atomic_load((context + 24));
                  asprintf(&v53, "Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", uTF8String2, v34);

                  v36 = __PLSLogSharedInstance(v35);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                  {
                    name3 = [v8 name];
                    uTF8String3 = [name3 UTF8String];
                    v39 = atomic_load((context + 24));
                    *buf = 136315906;
                    v71 = "[PSGraphCompiler3rdPartyReader destroyReadersForTransitionBlock:]";
                    v72 = 1024;
                    *v73 = 128;
                    *&v73[4] = 2080;
                    *&v73[6] = uTF8String3;
                    v74 = 1024;
                    v75 = v39;
                    _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", buf, 0x22u);
                  }

                  v40 = OSLogFlushBuffers();
                  if (v40)
                  {
                    v41 = v40;
                    v42 = __PLSLogSharedInstance(v40);
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v71 = "[PSGraphCompiler3rdPartyReader destroyReadersForTransitionBlock:]";
                      v72 = 1024;
                      *v73 = v41;
                      _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    usleep(0x1E8480u);
                  }

                  abort_with_reason();
                }

                v22 = __PLSLogSharedInstance(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  name4 = [v8 name];
                  uTF8String4 = [name4 UTF8String];
                  input = [v8 input];
                  resourceKey = [input resourceKey];
                  uTF8String5 = [resourceKey UTF8String];
                  *buf = 136380931;
                  v71 = uTF8String4;
                  v72 = 2081;
                  *v73 = uTF8String5;
                  _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "Deleting PSReader (%{private}s) for resource key %{private}s.", buf, 0x16u);
                }

                [(NSMapTable *)self->_retainedReaderBlocks removeObjectForKey:v8];
              }

LABEL_36:
            }

            v52 = [readers countByEnumeratingWithState:&v62 objects:v78 count:16];
          }

          while (v52);
        }

        v5 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v45);
  }
}

- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity
{
  keyCopy = key;
  graphCopy = graph;
  v11 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  if (!v11)
  {
    [PSGraphCompiler3rdPartyReader populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:?];
    goto LABEL_8;
  }

  v12 = v11;
  if (![v11 resourceClass])
  {
LABEL_8:
    [PSGraphCompiler3rdPartyReader populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:?];
    goto LABEL_9;
  }

  if (![v12 options])
  {
LABEL_9:
    v14 = [PSGraphCompiler3rdPartyReader populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:?];
    [(PSGraphCompiler3rdPartyReader *)v14 transitionManager];
    return;
  }

  ps_prm_opts_set_return_capacity(opts, capacity);
  v13 = keyCopy;
  ps_prm_opts_set_resource_key(opts, [keyCopy UTF8String]);
  ps_prm_opts_set_graph(opts, graphCopy);
  ps_prm_opts_set_resource_class(opts, [v12 resourceClass]);
  ps_prm_opts_set_storage_mode(opts, [v12 options]);
  ps_prm_opts_set_resource_metadata_type(opts, 2);
}

- (PSTransitionManager3rdPartyReader)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (uint64_t)createReadersForTransitionBlock:(char *)a1 .cold.1(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Third Party Readers cannot have more than one input");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    v10 = 136315394;
    v11 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
    v12 = 1024;
    v13 = 75;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Third Party Readers cannot have more than one input", &v10, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = __PLSLogSharedInstance(v4);
    if (OUTLINED_FUNCTION_6(v6))
    {
      v10 = 136315394;
      v11 = "[PSGraphCompiler3rdPartyReader createReadersForTransitionBlock:]";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v7 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler3rdPartyReader populateReaderOpts:v7 forKey:v8 forGraph:? withCapacity:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:.cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Resource %s had no storage mode defined", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Resource %s had no storage mode defined", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler3rdPartyReader populateReaderOpts:v21 forKey:v22 forGraph:? withCapacity:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:.cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Resource %s had no class defined", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Resource %s had no class defined", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler3rdPartyReader populateReaderOpts:v21 forKey:v22 forGraph:? withCapacity:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:.cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Could not find stream definition for reader key %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find stream definition for reader key %s", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [(PSTransitionManager3rdPartyReader *)v21 dealloc];
}

@end