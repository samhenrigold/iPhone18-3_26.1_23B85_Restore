@interface LBFExperimentEventsHolder
- (BOOL)dumpFetchedEvents;
- (LBFExperimentEventsHolder)initWithExperimentOrTaskId:(id)id;
- (id)ensureDeploymentEventsHolder:(id)holder;
- (id)fetchedEventsInDictionaries;
@end

@implementation LBFExperimentEventsHolder

- (LBFExperimentEventsHolder)initWithExperimentOrTaskId:(id)id
{
  idCopy = id;
  v12.receiver = self;
  v12.super_class = LBFExperimentEventsHolder;
  v6 = [(LBFExperimentEventsHolder *)&v12 init];
  v8 = v6;
  if (v6)
  {
    LBFLoggingUtilsInit(v6, v7);
    objc_storeStrong(&v8->_experimentOrTaskId, id);
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deploymentEventsHolders = v8->_deploymentEventsHolders;
    v8->_deploymentEventsHolders = v9;
  }

  return v8;
}

- (id)ensureDeploymentEventsHolder:(id)holder
{
  holderCopy = holder;
  v7 = objc_msgSend_objectForKey_(self->_deploymentEventsHolders, v5, v6, holderCopy);
  if (!v7)
  {
    v8 = [LBFDeploymentEventsHolder alloc];
    v7 = objc_msgSend_initWithExperimentOrTaskId_deploymentId_(v8, v9, v10, self->_experimentOrTaskId, holderCopy);
    objc_msgSend_setValue_forKey_(self->_deploymentEventsHolders, v11, v12, v7, holderCopy);
  }

  v13 = v7;

  return v13;
}

- (BOOL)dumpFetchedEvents
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    experimentOrTaskId = self->_experimentOrTaskId;
    *buf = 138412290;
    v24 = experimentOrTaskId;
    _os_log_impl(&dword_255ED5000, v3, OS_LOG_TYPE_INFO, "dumpFetchedEvents experimentId %@", buf, 0xCu);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = objc_msgSend_allValues(self->_deploymentEventsHolders, v4, 0, v5, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9, &v18, v22, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_dumpFetchedEvents(*(*(&v18 + 1) + 8 * v16++), v11, v13, v12);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, v13, &v18, v22, 16);
    }

    while (v14);
  }

  return 1;
}

- (id)fetchedEventsInDictionaries
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    experimentOrTaskId = self->_experimentOrTaskId;
    *buf = 138412290;
    v28 = experimentOrTaskId;
    _os_log_impl(&dword_255ED5000, v4, OS_LOG_TYPE_INFO, "dumpFetchedEvents experimentId %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = objc_msgSend_allValues(self->_deploymentEventsHolders, v5, 0, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, v10, &v22, v26, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v8);
        }

        v18 = objc_msgSend_fetchedEventsInDictionaries(*(*(&v22 + 1) + 8 * i), v12, v14, v13);
        objc_msgSend_addObjectsFromArray_(v3, v19, v20, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v12, v14, &v22, v26, 16);
    }

    while (v15);
  }

  return v3;
}

@end