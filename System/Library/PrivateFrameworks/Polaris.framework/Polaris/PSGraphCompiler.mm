@interface PSGraphCompiler
+ (id)deadlineThresholdsForCriticality:(unint64_t)criticality;
+ (void)populateOptsMetadataType:(PSResourceManagerOptions *)type forProviderType:(int)providerType;
+ (void)populateWriterOpts:(PSResourceManagerOptions *)opts forKey:(id)key withCapacity:(unint64_t)capacity forGraph:(id)graph withResStream:(id)stream withContext:(id)context retainedBufferIndexers:(id)indexers withGSM:(ps_gsm_s *)self0;
- (BOOL)checkForBufferSyncGroupedSources:(id)sources intermediateWaitSources:(id)waitSources graph:(id)graph;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withSources:(id)sources withOffset:(unsigned int)offset;
- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block;
- (BOOL)getDropFramesOptionForKey:(id)key options:(ps_task_output_resource_options_s *)options;
- (BOOL)getStreamOptionsForKey:(id)key options:(ps_input_resource_options_s *)options;
- (BOOL)isCameraDomain:(id)domain withContext:(id)context;
- (BOOL)setupCadenceGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict;
- (BOOL)setupForCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo;
- (BOOL)setupLegacyGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict;
- (BOOL)shouldUseSharedTriggerForGraph:(id)graph withTransitionBlock:(id)block;
- (BOOL)transition:(id)transition addedResources:(id *)resources removedResources:(id *)removedResources;
- (BOOL)validOffsetForGraph:(id)graph inputs:(id)inputs highestStride:(unsigned int *)stride desiredOffset:(unsigned int *)offset;
- (PSGraphCompiler)initWithTransitionManager:(id)manager withContext:(id)context withSystemGraphClient:(id)client withComputeDevices:(id)devices withPLSDevice:(id)device withPRMManager:(PSResourceManager *)mManager;
- (PSTransitionManager)transitionManager;
- (PSTransitionMonitor)transitionMonitor;
- (id)createMtlCommandQueueBestEffort;
- (id)createMtlCommandQueueRealTime;
- (id)createWorkgroupIntervalForGraph:(id)graph;
- (id)createWorkgroupIntervalForThreadPool:(ps_exec_shared_thread_pool_s *)pool;
- (id)extractLocalSystemSourceKeys:(id)keys;
- (id)filterANEWaitResources:(id)resources withGraph:(id)graph;
- (id)filterNonANEWaitResources:(id)resources withGraph:(id)graph;
- (id)generateDependencyGraphWithClientGraph:(id)graph;
- (id)getANEWaitResources:(id)resources;
- (id)getAddedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getAddedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getAllInputsForGraph:(id)graph;
- (id)getAllInputsForGraphs:(id)graphs;
- (id)getAllLocallyProducedOutputsForGraphs:(id)graphs;
- (id)getAllOutputsForGraphs:(id)graphs;
- (id)getAllResourcesForGraphs:(id)graphs;
- (id)getAllStridedInputsForGraph:(id)graph;
- (id)getAllStridedInputsForGraphs:(id)graphs;
- (id)getGraphTaskHash:(id)hash withTask:(id)task;
- (id)getIntermediateSources:(id)sources withTransitionBlock:(id)block;
- (id)getPSResourceKeysInitializing;
- (id)getPolicyWaitResources:(id)resources;
- (id)getProducerOutputRates:(id)rates;
- (id)getReaderResourcesForGraphs:(id)graphs;
- (id)getRemovedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getRemovedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs;
- (id)getResourceKeys:(id)keys;
- (id)getSourceTaskOutputResourcesForGraphs:(id)graphs;
- (id)getStridedGSTWaitSources:(id)sources transitionBlock:(id)block;
- (id)getStridedIntermediateSources:(id)sources withTransitionBlock:(id)block;
- (id)getStridedSystemSources:(id)sources withTransitionBlock:(id)block;
- (id)getSystemSources:(id)sources withTransitionBlock:(id)block withIntermediateSources:(id)intermediateSources;
- (id)getThreadPoolHashIDForGraph:(id)graph;
- (id)getUniqueResourcesFromGraphs:(id)graphs notPresentInGraphs:(id)inGraphs;
- (id)getWriterResourcesForGraphs:(id)graphs;
- (id)matchInputsToGSTStrides:(id)strides;
- (id)matchInputsToSystemGraphRequest:(id)request;
- (id)systemGraphResourceRequest:(id)request;
- (id)systemGraphResourceWithStridesRequest:(id)request;
- (id)threadPoolExecPathToString:(ps_exec_shared_thread_pool_s *)string;
- (id)transitionAddedResources:(id)resources;
- (uint64_t)createBlockFromTask:(void *)task withGraph:(void *)graph withExecSubgraph:(uint64_t)subgraph withMtlQueue:(void *)queue withGraphStringId:(uint64_t)id;
- (unint64_t)getMaxRateForKey:(id)key forGraphs:(id)graphs;
- (unint64_t)populateBufferExpiryOffset:(ps_task_input_resource_s *)offset forKey:(id)key;
- (void)addGraphToThreadPool:(id)pool;
- (void)createExecSubGraphWithFreeSlot:(uint64_t)slot withClientGraph:(void *)graph;
- (void)createGroupedTriggersForTransitionBlock:(id)block;
- (void)createGroupedTriggersOverXPCForTransitionBlock:(id)block;
- (void)createLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block;
- (void)createPRMInstancesForTransitionBlock:(id)block;
- (void)createReadersForTransitionBlock:(id)block;
- (void)createSourceTasksForTransitionBlock:(id)block;
- (void)createWritersForTransitionBlock:(id)block;
- (void)dealloc;
- (void)deinitializeLocalSystemSourcesForTransitionBlock:(id)block;
- (void)destroyAllThreadPools;
- (void)destroyGroupedTriggersForTransitionBlock:(id)block;
- (void)destroyPRMInstancesForTransitionBlock:(id)block;
- (void)destroyReadersForTransitionBlock:(id)block;
- (void)destroyWritersForTransitionBlock:(id)block;
- (void)initThreadPoolForGraph:(id)graph withExecutorGraph:(ps_exec_graph_s *)executorGraph;
- (void)initializeComplexityUpdateHandler:(void *)handler withExecSubgraph:(uint64_t)subgraph withExecBlock:(uint64_t)block;
- (void)initializeExecSubGraphProperties:(uint64_t)properties withClientGraph:(void *)graph;
- (void)initializeExecSubGraphTaskDependencies:(uint64_t)dependencies withClientGraph:(void *)graph;
- (void)initializeExecSubGraphTasks:(uint64_t)tasks withClientGraph:(void *)graph;
- (void)initializeGroupedTriggersForSubgraph:(uint64_t)subgraph withClientGraph:(void *)graph;
- (void)initializeGroupedTriggersForTransitionBlock:(id)block;
- (void)initializeLocalSystemSourcesForTransitionBlock:(id)block;
- (void)initializeSubgraphLiveness:(uint64_t)liveness withRelativeDeadline:(uint64_t)deadline withClientGraph:(void *)graph;
- (void)notifySystemGraphTransitionCompleted:(id)completed;
- (void)performWithKeytoWriterLock:(id)lock;
- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity withForwardingCount:(unint64_t)count;
- (void)removeGraphFromThreadPool:(id)pool;
- (void)removeGroupedTriggersForGraphs:(id)graphs;
- (void)removeMTLCommandQueuesForTransitionBlock:(id)block;
- (void)removeSourceTasksForTransitionBlock:(id)block;
- (void)removeWriterForKey:(id)key;
- (void)resolveStreamDomainsForTransitionBlock:(id)block;
- (void)resolveTimerStreamsForTransitionBlock:(id)block;
- (void)setBufferDepthsForTransitionBlock:(id)block;
- (void)setThreadPoolIDForGraph:(id)graph withTransitionBlock:(id)block;
- (void)setWriterForKey:(id)key writer:(id)writer;
- (void)setupForCadenceGroupedTriggerForGraph:(id)graph withSources:(id)sources withOffset:(unsigned int)offset withGraphInfo:(id)info withGraphSetInfo:(id)setInfo;
- (void)setupForLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo;
- (void)setupGSMSourceDescriptors:(id *)descriptors storageModes:(unsigned __int8 *)modes graphName:(id)name graphFrequencey:(unint64_t)frequencey systemSources:(id)sources intermediateSources:(id)intermediateSources producedOutputRates:(id)rates device:(id)self0 context:(id)self1 syncedBuffers:(BOOL)self2;
- (void)startLocalSystemSources:(id)sources;
- (void)stopLocalSystemSources:(id)sources;
- (void)validateCriticality:(unint64_t)criticality withCriticalityEntitlement:(unint64_t)entitlement withGraph:(id)graph;
- (void)withWriterForKey:(id)key perform:(id)perform;
@end

@implementation PSGraphCompiler

- (PSGraphCompiler)initWithTransitionManager:(id)manager withContext:(id)context withSystemGraphClient:(id)client withComputeDevices:(id)devices withPLSDevice:(id)device withPRMManager:(PSResourceManager *)mManager
{
  managerCopy = manager;
  contextCopy = context;
  clientCopy = client;
  devicesCopy = devices;
  deviceCopy = device;
  v63.receiver = self;
  v63.super_class = PSGraphCompiler;
  v19 = [(PSGraphCompiler *)&v63 init];
  if (v19)
  {
    v20 = objc_alloc_init(MEMORY[0x277CCAB00]);
    graphGSTMap = v19->_graphGSTMap;
    v19->_graphGSTMap = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    keysInitializing = v19->_keysInitializing;
    v19->_keysInitializing = v22;

    v24 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    keysInitializingLock = v19->_keysInitializingLock;
    v19->_keysInitializingLock = v24;

    mtlDevice = [devicesCopy mtlDevice];
    mtlDevice = v19->_mtlDevice;
    v19->_mtlDevice = mtlDevice;

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retainedSourceWriterBlocks = v19->_retainedSourceWriterBlocks;
    v19->_retainedSourceWriterBlocks = v28;

    v30 = objc_alloc_init(MEMORY[0x277CCAB00]);
    retainedReaderBlocks = v19->_retainedReaderBlocks;
    v19->_retainedReaderBlocks = v30;

    v32 = objc_alloc_init(MEMORY[0x277CCAB00]);
    retainedWriterBlocks = v19->_retainedWriterBlocks;
    v19->_retainedWriterBlocks = v32;

    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    retainedBufferIndexers = v19->_retainedBufferIndexers;
    v19->_retainedBufferIndexers = v34;

    v36 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:512 valueOptions:0];
    retainedMtlQueues = v19->_retainedMtlQueues;
    v19->_retainedMtlQueues = v36;

    objc_storeWeak(&v19->_transitionManager, managerCopy);
    [managerCopy transitionMonitor];
    v62 = deviceCopy;
    v39 = v38 = contextCopy;
    objc_storeWeak(&v19->_transitionMonitor, v39);

    objc_storeStrong(&v19->_device, device);
    objc_storeStrong(&v19->_systemGraphClient, client);
    objc_storeStrong(&v19->_context, context);
    v19->_nextExecBlockTraceKey = 0;
    v19->_synchronizer = ps_synchronizer_init();
    v19->_deterministicReplay = 0;
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    priorGraphDomains = v19->_priorGraphDomains;
    v19->_priorGraphDomains = strongToStrongObjectsMapTable;

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taggedWorkgroups = v19->_taggedWorkgroups;
    v19->_taggedWorkgroups = v42;

    v44 = objc_alloc_init(MEMORY[0x277CBEB38]);
    activeThreadPools = v19->_activeThreadPools;
    v19->_activeThreadPools = v44;

    v46 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keytoWriterMap = v19->_keytoWriterMap;
    v19->_keytoWriterMap = v46;

    *&v19->_taggedWorkgroupsLock._os_unfair_lock_opaque = 0;
    v19->_prm_mgr = mManager;
    v48 = objc_alloc_init(MEMORY[0x277CCAB00]);
    prmTaskResources = v19->_prmTaskResources;
    v19->_prmTaskResources = v48;

    v50 = objc_alloc_init(MEMORY[0x277CCAB00]);
    prmGroupedSourcePools = v19->_prmGroupedSourcePools;
    v19->_prmGroupedSourcePools = v50;

    v52 = [PSLocalStreamManager alloc];
    context = v19->_context;
    WeakRetained = objc_loadWeakRetained(&v19->_transitionManager);
    device = v19->_device;
    v56 = WeakRetained;
    executionSession = [v56 executionSession];
    v58 = -[PSLocalStreamManager initWithContext:withTransitionManager:withDevice:withGSM:withPRMManager:](v52, "initWithContext:withTransitionManager:withDevice:withGSM:withPRMManager:", context, v56, device, [executionSession gsm], v19->_prm_mgr);

    localStreamManager = v19->_localStreamManager;
    v19->_localStreamManager = v58;
    contextCopy = v38;
    deviceCopy = v62;

    prm_mgr = v19->_prm_mgr;
    if (prm_mgr)
    {
      ps_prm_register_thread_creator(prm_mgr, _prm_thread_creator, 0);
    }
  }

  return v19;
}

- (void)setBufferDepthsForTransitionBlock:(id)block
{
  v108 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v57 = blockCopy;
  obj = [blockCopy addedGraphs];
  v60 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
  if (v60)
  {
    v59 = *v94;
    do
    {
      v6 = 0;
      do
      {
        if (*v94 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v93 + 1) + 8 * v6);
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v61 = v6;
        v62 = v7;
        tasks = [v7 tasks];
        v66 = [tasks countByEnumeratingWithState:&v89 objects:v106 count:16];
        if (v66)
        {
          v64 = *v90;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v90 != v64)
              {
                objc_enumerationMutation(tasks);
              }

              v9 = *(*(&v89 + 1) + 8 * i);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              outputs = [v9 outputs];
              v11 = [outputs countByEnumeratingWithState:&v85 objects:v105 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v86;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v86 != v13)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v15 = *(*(&v85 + 1) + 8 * j);
                    retainedInputs = [v15 retainedInputs];
                    v17 = [retainedInputs count];

                    if (!v17)
                    {
                      context = self->_context;
                      resourceKey = [v15 resourceKey];
                      v20 = [(PSContext *)context resourceStreamForKey:resourceKey];

                      if (v20)
                      {
                        [v5 addObject:v20];
                      }
                    }
                  }

                  v12 = [outputs countByEnumeratingWithState:&v85 objects:v105 count:16];
                }

                while (v12);
              }
            }

            v66 = [tasks countByEnumeratingWithState:&v89 objects:v106 count:16];
          }

          while (v66);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        sourceTasks = [v62 sourceTasks];
        v21 = [sourceTasks countByEnumeratingWithState:&v81 objects:v104 count:16];
        if (v21)
        {
          v22 = v21;
          v67 = *v82;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v82 != v67)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v24 = *(*(&v81 + 1) + 8 * k);
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              outputs2 = [v24 outputs];
              v26 = [outputs2 countByEnumeratingWithState:&v77 objects:v103 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v78;
                do
                {
                  for (m = 0; m != v27; ++m)
                  {
                    if (*v78 != v28)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    v30 = self->_context;
                    resourceKey2 = [*(*(&v77 + 1) + 8 * m) resourceKey];
                    v32 = [(PSContext *)v30 resourceStreamForKey:resourceKey2];

                    if (v32)
                    {
                      [v5 addObject:v32];
                    }
                  }

                  v27 = [outputs2 countByEnumeratingWithState:&v77 objects:v103 count:16];
                }

                while (v27);
              }
            }

            v22 = [sourceTasks countByEnumeratingWithState:&v81 objects:v104 count:16];
          }

          while (v22);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        writers = [v62 writers];
        v34 = [writers countByEnumeratingWithState:&v73 objects:v102 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v74;
          do
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v74 != v36)
              {
                objc_enumerationMutation(writers);
              }

              v38 = self->_context;
              output = [*(*(&v73 + 1) + 8 * n) output];
              resourceKey3 = [output resourceKey];
              v41 = [(PSContext *)v38 resourceStreamForKey:resourceKey3];

              if (v41)
              {
                [v5 addObject:v41];
              }
            }

            v35 = [writers countByEnumeratingWithState:&v73 objects:v102 count:16];
          }

          while (v35);
        }

        v6 = v61 + 1;
      }

      while (v61 + 1 != v60);
      v60 = [obj countByEnumeratingWithState:&v93 objects:v107 count:16];
    }

    while (v60);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v42 = v5;
  v43 = [v42 countByEnumeratingWithState:&v69 objects:v101 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v70;
    do
    {
      for (ii = 0; ii != v44; ++ii)
      {
        if (*v70 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v69 + 1) + 8 * ii);
        if ([v47 totalBufferCountHint] && objc_msgSend(v47, "reservedForReaderBufferCountHint"))
        {
          totalBufferCountHint = [v47 totalBufferCountHint];
          v49 = totalBufferCountHint - [v47 reservedForReaderBufferCountHint];
          reservedForReaderBufferCountHint = [v47 reservedForReaderBufferCountHint];
          v51 = [v47 key];
          v68 = 0;
          LOBYTE(v49) = [PSConstants setBufferDepthsForKey:v51 writerDepth:v49 readerDepth:reservedForReaderBufferCountHint error:&v68];
          v52 = v68;

          if ((v49 & 1) == 0)
          {
            v54 = __PLSLogSharedInstance(v53);
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = [v47 key];
              v56 = [v52 description];
              *buf = 138412546;
              v98 = v55;
              v99 = 2112;
              v100 = v56;
              _os_log_impl(&dword_25EA3A000, v54, OS_LOG_TYPE_ERROR, "Error when applying buffer depth hint for %@: %@", buf, 0x16u);
            }
          }
        }
      }

      v44 = [v42 countByEnumeratingWithState:&v69 objects:v101 count:16];
    }

    while (v44);
  }
}

- (void)resolveTimerStreamsForTransitionBlock:(id)block
{
  v56 = *MEMORY[0x277D85DE8];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [block addedGraphs];
  v29 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v29)
  {
    v28 = *v49;
    do
    {
      v4 = 0;
      do
      {
        if (*v49 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v4;
        v5 = *(*(&v48 + 1) + 8 * v4);
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        tasks = [v5 tasks];
        v33 = [tasks countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v33)
        {
          v32 = *v45;
          do
          {
            v6 = 0;
            do
            {
              if (*v45 != v32)
              {
                objc_enumerationMutation(tasks);
              }

              v34 = v6;
              v7 = *(*(&v44 + 1) + 8 * v6);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              inputs = [v7 inputs];
              v9 = [inputs countByEnumeratingWithState:&v40 objects:v53 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v41;
                do
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v41 != v11)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v13 = *(*(&v40 + 1) + 8 * i);
                    resourceKey = [v13 resourceKey];
                    v15 = [resourceKey isEqualToString:@"timer"];

                    if (v15)
                    {
                      v16 = -[PLSDevice populateTimerContextForFrequency:](self->_device, "populateTimerContextForFrequency:", [v5 frequency]);
                      [v13 setResolvedResourceKey:v16];
                    }
                  }

                  v10 = [inputs countByEnumeratingWithState:&v40 objects:v53 count:16];
                }

                while (v10);
              }

              v6 = v34 + 1;
            }

            while (v34 + 1 != v33);
            v33 = [tasks countByEnumeratingWithState:&v44 objects:v54 count:16];
          }

          while (v33);
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        readers = [v5 readers];
        v17 = [readers countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(readers);
              }

              v21 = *(*(&v36 + 1) + 8 * j);
              input = [v21 input];
              resourceKey2 = [input resourceKey];
              v24 = [resourceKey2 isEqualToString:@"timer"];

              if (v24)
              {
                v25 = -[PLSDevice populateTimerContextForFrequency:](self->_device, "populateTimerContextForFrequency:", [v5 frequency]);
                input2 = [v21 input];
                [input2 setResolvedResourceKey:v25];
              }
            }

            v18 = [readers countByEnumeratingWithState:&v36 objects:v52 count:16];
          }

          while (v18);
        }

        v4 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v29);
  }
}

+ (id)deadlineThresholdsForCriticality:(unint64_t)criticality
{
  v17[2] = *MEMORY[0x277D85DE8];
  v4 = +[PLSSettings currentSettings];
  iterationsToTrackForDeadlineMisses = [v4 iterationsToTrackForDeadlineMisses];

  if (criticality > 1)
  {
    if (criticality == 2)
    {
      v6 = +[PLSSettings currentSettings];
      bestEffortDeadlineThreshold = [v6 bestEffortDeadlineThreshold];
      goto LABEL_10;
    }

    if (criticality == 3)
    {
      v6 = +[PLSSettings currentSettings];
      bestEffortDeadlineThreshold = [v6 applicationSupportDeadlineThreshold];
      goto LABEL_10;
    }

LABEL_13:
    v13 = +[PSGraphCompiler deadlineThresholdsForCriticality:];
    return [(PSGraphCompiler *)v13 systemGraphResourceRequest:v14, v15];
  }

  if (!criticality)
  {
    v6 = +[PLSSettings currentSettings];
    bestEffortDeadlineThreshold = [v6 realTimeDeadlineThreshold];
    goto LABEL_10;
  }

  if (criticality != 1)
  {
    goto LABEL_13;
  }

  v6 = +[PLSSettings currentSettings];
  bestEffortDeadlineThreshold = [v6 criticalDeadlineThreshold];
LABEL_10:
  v8 = bestEffortDeadlineThreshold;

  v16[0] = @"deadline-miss-threshold";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  v16[1] = @"iterations-to-track";
  v17[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:iterationsToTrackForDeadlineMisses];
  v17[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v11;
}

- (id)systemGraphResourceRequest:(id)request
{
  v54 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  preTransitionGraphs = [requestCopy preTransitionGraphs];
  postTransitionGraphs = [requestCopy postTransitionGraphs];
  v9 = [(PSGraphCompiler *)self getAddedInputsWithOldGraphs:preTransitionGraphs withNewGraphs:postTransitionGraphs];

  postTransitionGraphs2 = [requestCopy postTransitionGraphs];
  v11 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs2];

  v42 = v9;
  v12 = [MEMORY[0x277CBEB58] setWithSet:v9];
  v41 = v11;
  [v12 minusSet:v11];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    do
    {
      v17 = 0;
      do
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v48 + 1) + 8 * v17);
        v19 = [(PSContext *)self->_context resourceStreamForKey:v18];
        v20 = v19;
        if (v19)
        {
          if ([v19 options] != 2)
          {
            goto LABEL_9;
          }

LABEL_8:
          [v5 addObject:v18];
          goto LABEL_9;
        }

        if (![(PLSDevice *)self->_device isTimer:v18])
        {
          goto LABEL_8;
        }

LABEL_9:

        ++v17;
      }

      while (v15 != v17);
      v21 = [v13 countByEnumeratingWithState:&v48 objects:v53 count:16];
      v15 = v21;
    }

    while (v21);
  }

  preTransitionGraphs2 = [requestCopy preTransitionGraphs];
  postTransitionGraphs3 = [requestCopy postTransitionGraphs];
  v24 = [(PSGraphCompiler *)self getRemovedInputsWithOldGraphs:preTransitionGraphs2 withNewGraphs:postTransitionGraphs3];

  v43 = requestCopy;
  preTransitionGraphs3 = [requestCopy preTransitionGraphs];
  v26 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:preTransitionGraphs3];

  v40 = v24;
  v27 = [MEMORY[0x277CBEB58] setWithSet:v24];
  v39 = v26;
  [v27 minusSet:v26];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = v27;
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v29)
  {
    goto LABEL_27;
  }

  v30 = v29;
  v31 = *v45;
  do
  {
    v32 = 0;
    do
    {
      if (*v45 != v31)
      {
        objc_enumerationMutation(v28);
      }

      v33 = *(*(&v44 + 1) + 8 * v32);
      v34 = [(PSContext *)self->_context resourceStreamForKey:v33];
      v35 = v34;
      if (v34)
      {
        if ([v34 options] != 2)
        {
          goto LABEL_22;
        }

LABEL_21:
        [v6 addObject:v33];
        goto LABEL_22;
      }

      if (![(PLSDevice *)self->_device isTimer:v33])
      {
        goto LABEL_21;
      }

LABEL_22:

      ++v32;
    }

    while (v30 != v32);
    v36 = [v28 countByEnumeratingWithState:&v44 objects:v52 count:16];
    v30 = v36;
  }

  while (v36);
LABEL_27:

  v37 = objc_alloc_init(MEMORY[0x277D3E820]);
  [v37 setResourcesWanted:v5];
  [v37 setResourcesNoLongerWanted:v6];

  return v37;
}

- (id)transitionAddedResources:(id)resources
{
  v8 = 0;
  v4 = [(PSGraphCompiler *)self transition:resources addedResources:&v8 removedResources:0];
  v5 = v8;
  v6 = 0;
  if (v4)
  {
    v6 = [(PSGraphCompiler *)self getResourceKeys:v5];
  }

  return v6;
}

- (BOOL)transition:(id)transition addedResources:(id *)resources removedResources:(id *)removedResources
{
  removedResourcesCopy = removedResources;
  v34 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  addedGraphs = [transitionCopy addedGraphs];
  v9 = [addedGraphs countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(addedGraphs);
        }

        [*(*(&v29 + 1) + 8 * i) setCurrentSystemStride:{0, removedResourcesCopy}];
      }

      v10 = [addedGraphs countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  addedGraphs2 = [transitionCopy addedGraphs];
  v14 = [(PSGraphCompiler *)self getAllStridedInputsForGraphs:addedGraphs2];

  removedGraphs = [transitionCopy removedGraphs];
  v16 = [(PSGraphCompiler *)self getAllStridedInputsForGraphs:removedGraphs];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PSGraphCompiler_transition_addedResources_removedResources___block_invoke;
  aBlock[3] = &unk_279A48358;
  aBlock[4] = self;
  v17 = _Block_copy(aBlock);
  v18 = [v14 copy];
  postTransitionGraphs = [transitionCopy postTransitionGraphs];
  v20 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs];

  [v18 filterOutResourceKeys:v20];
  [v18 filterWithBlock:v17];
  v21 = [v16 copy];
  preTransitionGraphs = [transitionCopy preTransitionGraphs];
  v23 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:preTransitionGraphs];

  [v21 filterOutResourceKeys:v23];
  [v21 filterWithBlock:v17];
  if (resources)
  {
    v24 = v18;
    *resources = v18;
  }

  if (removedResourcesCopy)
  {
    v25 = v21;
    *removedResourcesCopy = v21;
  }

  return 1;
}

uint64_t __62__PSGraphCompiler_transition_addedResources_removedResources___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) context];
  v5 = [v3 resourceKey];
  v6 = [v4 resourceStreamForKey:v5];

  if (v6)
  {
    v7 = [v6 options] == 2;
  }

  else
  {
    v8 = [*(a1 + 32) device];
    v9 = [v3 resourceKey];
    v10 = [v8 isTimer:v9];

    v7 = v10 ^ 1u;
  }

  return v7;
}

- (id)systemGraphResourceWithStridesRequest:(id)request
{
  v15 = 0;
  v16 = 0;
  v4 = [(PSGraphCompiler *)self transition:request addedResources:&v16 removedResources:&v15];
  v5 = v16;
  v6 = v15;
  v7 = 0;
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x277D3E820]);
    v8 = [(PSGraphCompiler *)self matchInputsToSystemGraphRequest:v5];
    flattenedRequestArray = [v8 flattenedRequestArray];
    [v7 setResourcesWantedWithStrides:flattenedRequestArray];

    v10 = [(PSGraphCompiler *)self getResourceKeys:v5];
    [v7 setResourcesWanted:v10];

    v11 = [(PSGraphCompiler *)self matchInputsToSystemGraphRequest:v6];
    flattenedRequestArray2 = [v11 flattenedRequestArray];
    [v7 setResourcesNoLongerWantedWithStrides:flattenedRequestArray2];

    v13 = [(PSGraphCompiler *)self getResourceKeys:v6];
    [v7 setResourcesNoLongerWanted:v13];
  }

  return v7;
}

- (id)matchInputsToSystemGraphRequest:(id)request
{
  v79 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277CCA940]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v6 = requestCopy;
  v59 = [v6 countByEnumeratingWithState:&v66 objects:v78 count:16];
  if (!v59)
  {
    goto LABEL_39;
  }

  v7 = *v67;
  v58 = *v67;
  selfCopy = self;
  while (2)
  {
    for (i = 0; i != v59; ++i)
    {
      if (*v67 != v7)
      {
        objc_enumerationMutation(v6);
      }

      v9 = *(*(&v66 + 1) + 8 * i);
      context = [(PSGraphCompiler *)self context];
      resourceKey = [v9 resourceKey];
      v12 = [context resourceStreamForKey:resourceKey];

      if (!v12)
      {
        v45 = __PLSLogSharedInstance(v13);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          resourceKey2 = [v9 resourceKey];
          uTF8String = [resourceKey2 UTF8String];
          *buf = 136315138;
          v71 = uTF8String;
          _os_log_impl(&dword_25EA3A000, v45, OS_LOG_TYPE_ERROR, "Stream %s should already be in the context!", buf, 0xCu);
        }

        goto LABEL_39;
      }

      supportedStrides = [v12 supportedStrides];
      allKeys = [supportedStrides allKeys];

      v60 = allKeys;
      v61 = v12;
      if ([allKeys count])
      {
        if ([v9 inputType])
        {
          [v9 resourceKey];
          v17 = v16 = self;
          defaultStride = [v12 defaultStride];
          inputType = [v9 inputType];
          [v9 graph];
          v21 = v20 = i;
          v22 = [PSResourceRequest requestWithKey:v17 stride:defaultStride inputType:inputType graph:v21];

          i = v20;
          resourceKey5 = v17;
          self = v16;
LABEL_10:
          v7 = v58;
          goto LABEL_25;
        }

        resourceKey5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v76 = resourceKey5;
        v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];
        defaultStride = [allKeys sortedArrayUsingDescriptors:v27];

        v22 = [defaultStride countByEnumeratingWithState:&v62 objects:v77 count:16];
        if (!v22)
        {
          goto LABEL_10;
        }

        v56 = resourceKey5;
        v57 = i;
        v28 = *v63;
        while (2)
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v63 != v28)
            {
              objc_enumerationMutation(defaultStride);
            }

            v30 = *(*(&v62 + 1) + 8 * j);
            stride = [v9 stride];
            unsignedIntValue = [stride unsignedIntValue];
            v33 = unsignedIntValue % [v30 unsignedIntValue];

            if (!v33)
            {
              resourceKey3 = [v9 resourceKey];
              inputType2 = [v9 inputType];
              graph = [v9 graph];
              v22 = [PSResourceRequest requestWithKey:resourceKey3 stride:v30 inputType:inputType2 graph:graph];

              goto LABEL_24;
            }
          }

          v22 = [defaultStride countByEnumeratingWithState:&v62 objects:v77 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

LABEL_24:
        self = selfCopy;
        i = v57;
        v7 = v58;
        resourceKey5 = v56;
      }

      else
      {
        v24 = __PLSLogSharedInstance(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          resourceKey4 = [v9 resourceKey];
          *buf = 138477827;
          v71 = resourceKey4;
          _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_DEBUG, "Stream %{private}@ requested but doesn't support strides - assuming this is a legacy stream request...", buf, 0xCu);
        }

        resourceKey5 = [v9 resourceKey];
        inputType3 = [v9 inputType];
        defaultStride = [v9 graph];
        v22 = [PSResourceRequest requestWithKey:resourceKey5 stride:0 inputType:inputType3 graph:defaultStride];
      }

LABEL_25:

      if (v22)
      {
        v38 = v61;
        if ([v6 countForObject:v9])
        {
          v39 = 0;
          do
          {
            [v5 addObject:v22];
            ++v39;
          }

          while (v39 < [v6 countForObject:v9]);
        }
      }

      else
      {
        v40 = __PLSLogSharedInstance(v37);
        v38 = v61;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          v41 = [v61 key];
          [v9 stride];
          v43 = v42 = i;
          unsignedIntValue2 = [v43 unsignedIntValue];
          *buf = 138412546;
          v71 = v41;
          v72 = 1024;
          LODWORD(v73) = unsignedIntValue2;
          _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_ERROR, "No matching candidate stride for %@, wanted stride %u", buf, 0x12u);

          i = v42;
        }

        v7 = v58;
      }
    }

    v59 = [v6 countByEnumeratingWithState:&v66 objects:v78 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_39:

  totalCount = [v5 totalCount];
  totalCount2 = [v6 totalCount];
  if (totalCount == totalCount2)
  {
    v50 = v5;
  }

  else
  {
    v51 = __PLSLogSharedInstance(totalCount2);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = [v6 count];
      v53 = [v5 count];
      *buf = 134218498;
      v71 = v52;
      v72 = 2048;
      v73 = v53;
      v74 = 2112;
      v75 = v5;
      _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_ERROR, "Failed to match some StridedResources: input %lu, wanted %lu, wanted %@", buf, 0x20u);
    }

    v50 = 0;
  }

  return v50;
}

- (id)matchInputsToGSTStrides:(id)strides
{
  v62 = *MEMORY[0x277D85DE8];
  stridesCopy = strides;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [stridesCopy objectEnumerator];
  v41 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v41)
  {
    v42 = *v52;
    v39 = stridesCopy;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v52 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v51 + 1) + 8 * v5);
      if ([v6 inputType])
      {
        [(PSGraphCompiler *)buf matchInputsToGSTStrides:v6];
      }

      context = [(PSGraphCompiler *)self context];
      resourceKey = [v6 resourceKey];
      v9 = [context resourceStreamForKey:resourceKey];

      if (!v9)
      {
        break;
      }

      supportedStrides = [v9 supportedStrides];
      allKeys = [supportedStrides allKeys];

      if (![allKeys count])
      {
        v36 = __PLSLogSharedInstance(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          resourceKey2 = [v6 resourceKey];
          *buf = 138412290;
          v56 = resourceKey2;
          _os_log_impl(&dword_25EA3A000, v36, OS_LOG_TYPE_DEBUG, "Attempting to match strided GST to stream %@ without supported strides, falling back to legacy GST", buf, 0xCu);
        }

LABEL_31:
        stridesCopy = v39;

        v29 = 0;
        goto LABEL_32;
      }

      v46 = v9;
      v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v44 = v13;
      v59 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
      v45 = allKeys;
      v15 = [allKeys sortedArrayUsingDescriptors:v14];

      v16 = [v15 countByEnumeratingWithState:&v47 objects:v60 count:16];
      if (!v16)
      {
LABEL_22:

LABEL_23:
        v30 = __PLSLogSharedInstance(v28);
        v9 = v46;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = [v46 key];
          stride = [v6 stride];
          unsignedIntValue = [stride unsignedIntValue];
          *buf = 138412546;
          v56 = v31;
          v57 = 1024;
          v58 = unsignedIntValue;
          _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEBUG, "No matching candidate stride for %@, wanted stride %u, falling back to legacy GST", buf, 0x12u);
        }

        goto LABEL_31;
      }

      v17 = v16;
      v18 = *v48;
LABEL_11:
      v19 = 0;
      while (1)
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v47 + 1) + 8 * v19);
        stride2 = [v6 stride];
        unsignedIntValue2 = [stride2 unsignedIntValue];
        v23 = unsignedIntValue2 % [v20 unsignedIntValue];

        if (!v23)
        {
          break;
        }

        if (v17 == ++v19)
        {
          v17 = [v15 countByEnumeratingWithState:&v47 objects:v60 count:16];
          if (v17)
          {
            goto LABEL_11;
          }

          goto LABEL_22;
        }
      }

      resourceKey3 = [v6 resourceKey];
      inputType = [v6 inputType];
      graph = [v6 graph];
      v27 = [PSResourceRequest requestWithKey:resourceKey3 stride:v20 inputType:inputType graph:graph];

      if (!v27)
      {
        goto LABEL_23;
      }

      [v4 addObject:v27];

      if (++v5 == v41)
      {
        stridesCopy = v39;
        v41 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v41)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }

    v9 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      resourceKey4 = [v6 resourceKey];
      uTF8String = [resourceKey4 UTF8String];
      *buf = 136315138;
      v56 = uTF8String;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEBUG, "Stream %s should already be in the context, falling back to legacy GST", buf, 0xCu);
    }

    goto LABEL_31;
  }

LABEL_21:

  v29 = v4;
LABEL_32:

  return v29;
}

- (id)getResourceKeys:(id)keys
{
  v17 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [keysCopy objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        resourceKey = [*(*(&v12 + 1) + 8 * i) resourceKey];
        [v4 addObject:resourceKey];
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)notifySystemGraphTransitionCompleted:(id)completed
{
  v170 = *MEMORY[0x277D85DE8];
  completedCopy = completed;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v82 = completedCopy;
  [completedCopy addedGraphs];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  obj = v157 = 0u;
  v87 = [obj countByEnumeratingWithState:&v154 objects:v169 count:16];
  if (v87)
  {
    v85 = *v155;
    do
    {
      v7 = 0;
      do
      {
        if (*v155 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v154 + 1) + 8 * v7);
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v89 = v7;
        v91 = v8;
        tasks = [v8 tasks];
        v101 = [tasks countByEnumeratingWithState:&v150 objects:v168 count:16];
        if (v101)
        {
          v97 = *v151;
          do
          {
            v9 = 0;
            do
            {
              if (*v151 != v97)
              {
                objc_enumerationMutation(tasks);
              }

              v105 = v9;
              v10 = *(*(&v150 + 1) + 8 * v9);
              v146 = 0u;
              v147 = 0u;
              v148 = 0u;
              v149 = 0u;
              outputs = [v10 outputs];
              v12 = [outputs countByEnumeratingWithState:&v146 objects:v167 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v147;
                do
                {
                  for (i = 0; i != v13; ++i)
                  {
                    if (*v147 != v14)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v16 = *(*(&v146 + 1) + 8 * i);
                    context = self->_context;
                    resourceKey = [v16 resourceKey];
                    v19 = [(PSContext *)context resourceStreamForKey:resourceKey];

                    if ([v19 options] == 2)
                    {
                      resourceKey2 = [v16 resourceKey];
                      [v5 addObject:resourceKey2];
                    }
                  }

                  v13 = [outputs countByEnumeratingWithState:&v146 objects:v167 count:16];
                }

                while (v13);
              }

              v9 = v105 + 1;
            }

            while (v105 + 1 != v101);
            v101 = [tasks countByEnumeratingWithState:&v150 objects:v168 count:16];
          }

          while (v101);
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        sourceTasks = [v91 sourceTasks];
        v102 = [sourceTasks countByEnumeratingWithState:&v142 objects:v166 count:16];
        if (v102)
        {
          v98 = *v143;
          do
          {
            v21 = 0;
            do
            {
              if (*v143 != v98)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v106 = v21;
              v22 = *(*(&v142 + 1) + 8 * v21);
              v138 = 0u;
              v139 = 0u;
              v140 = 0u;
              v141 = 0u;
              outputs2 = [v22 outputs];
              v24 = [outputs2 countByEnumeratingWithState:&v138 objects:v165 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v139;
                do
                {
                  for (j = 0; j != v25; ++j)
                  {
                    if (*v139 != v26)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    v28 = *(*(&v138 + 1) + 8 * j);
                    v29 = self->_context;
                    resourceKey3 = [v28 resourceKey];
                    v31 = [(PSContext *)v29 resourceStreamForKey:resourceKey3];

                    if ([v31 options] == 2)
                    {
                      resourceKey4 = [v28 resourceKey];
                      [v5 addObject:resourceKey4];
                    }
                  }

                  v25 = [outputs2 countByEnumeratingWithState:&v138 objects:v165 count:16];
                }

                while (v25);
              }

              v21 = v106 + 1;
            }

            while (v106 + 1 != v102);
            v102 = [sourceTasks countByEnumeratingWithState:&v142 objects:v166 count:16];
          }

          while (v102);
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        writers = [v91 writers];
        v33 = [writers countByEnumeratingWithState:&v134 objects:v164 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v135;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v135 != v35)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v134 + 1) + 8 * k) output];
              v38 = self->_context;
              resourceKey5 = [output resourceKey];
              v40 = [(PSContext *)v38 resourceStreamForKey:resourceKey5];

              if ([v40 options] == 2)
              {
                resourceKey6 = [output resourceKey];
                [v5 addObject:resourceKey6];
              }
            }

            v34 = [writers countByEnumeratingWithState:&v134 objects:v164 count:16];
          }

          while (v34);
        }

        v7 = v89 + 1;
      }

      while (v89 + 1 != v87);
      v87 = [obj countByEnumeratingWithState:&v154 objects:v169 count:16];
    }

    while (v87);
  }

  [v82 removedGraphs];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v83 = v133 = 0u;
  v88 = [v83 countByEnumeratingWithState:&v130 objects:v163 count:16];
  if (v88)
  {
    v86 = *v131;
    do
    {
      v42 = 0;
      do
      {
        if (*v131 != v86)
        {
          objc_enumerationMutation(v83);
        }

        v43 = *(*(&v130 + 1) + 8 * v42);
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v90 = v42;
        v92 = v43;
        tasks2 = [v43 tasks];
        v103 = [tasks2 countByEnumeratingWithState:&v126 objects:v162 count:16];
        if (v103)
        {
          v99 = *v127;
          do
          {
            v44 = 0;
            do
            {
              if (*v127 != v99)
              {
                objc_enumerationMutation(tasks2);
              }

              v108 = v44;
              v45 = *(*(&v126 + 1) + 8 * v44);
              v122 = 0u;
              v123 = 0u;
              v124 = 0u;
              v125 = 0u;
              outputs3 = [v45 outputs];
              v47 = [outputs3 countByEnumeratingWithState:&v122 objects:v161 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v123;
                do
                {
                  for (m = 0; m != v48; ++m)
                  {
                    if (*v123 != v49)
                    {
                      objc_enumerationMutation(outputs3);
                    }

                    v51 = *(*(&v122 + 1) + 8 * m);
                    v52 = self->_context;
                    resourceKey7 = [v51 resourceKey];
                    v54 = [(PSContext *)v52 resourceStreamForKey:resourceKey7];

                    if ([v54 options] == 2)
                    {
                      resourceKey8 = [v51 resourceKey];
                      [v6 addObject:resourceKey8];
                    }
                  }

                  v48 = [outputs3 countByEnumeratingWithState:&v122 objects:v161 count:16];
                }

                while (v48);
              }

              v44 = v108 + 1;
            }

            while (v108 + 1 != v103);
            v103 = [tasks2 countByEnumeratingWithState:&v126 objects:v162 count:16];
          }

          while (v103);
        }

        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        sourceTasks2 = [v92 sourceTasks];
        v104 = [sourceTasks2 countByEnumeratingWithState:&v118 objects:v160 count:16];
        if (v104)
        {
          v100 = *v119;
          do
          {
            v56 = 0;
            do
            {
              if (*v119 != v100)
              {
                objc_enumerationMutation(sourceTasks2);
              }

              v109 = v56;
              v57 = *(*(&v118 + 1) + 8 * v56);
              v114 = 0u;
              v115 = 0u;
              v116 = 0u;
              v117 = 0u;
              outputs4 = [v57 outputs];
              v59 = [outputs4 countByEnumeratingWithState:&v114 objects:v159 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v115;
                do
                {
                  for (n = 0; n != v60; ++n)
                  {
                    if (*v115 != v61)
                    {
                      objc_enumerationMutation(outputs4);
                    }

                    v63 = *(*(&v114 + 1) + 8 * n);
                    v64 = self->_context;
                    resourceKey9 = [v63 resourceKey];
                    v66 = [(PSContext *)v64 resourceStreamForKey:resourceKey9];

                    if ([v66 options] == 2)
                    {
                      resourceKey10 = [v63 resourceKey];
                      [v6 addObject:resourceKey10];
                    }
                  }

                  v60 = [outputs4 countByEnumeratingWithState:&v114 objects:v159 count:16];
                }

                while (v60);
              }

              v56 = v109 + 1;
            }

            while (v109 + 1 != v104);
            v104 = [sourceTasks2 countByEnumeratingWithState:&v118 objects:v160 count:16];
          }

          while (v104);
        }

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        writers2 = [v92 writers];
        v69 = [writers2 countByEnumeratingWithState:&v110 objects:v158 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v111;
          do
          {
            for (ii = 0; ii != v70; ++ii)
            {
              if (*v111 != v71)
              {
                objc_enumerationMutation(writers2);
              }

              output2 = [*(*(&v110 + 1) + 8 * ii) output];
              v74 = self->_context;
              resourceKey11 = [output2 resourceKey];
              v76 = [(PSContext *)v74 resourceStreamForKey:resourceKey11];

              if ([v76 options] == 2)
              {
                resourceKey12 = [output2 resourceKey];
                [v6 addObject:resourceKey12];
              }
            }

            v70 = [writers2 countByEnumeratingWithState:&v110 objects:v158 count:16];
          }

          while (v70);
        }

        v42 = v90 + 1;
      }

      while (v90 + 1 != v88);
      v88 = [v83 countByEnumeratingWithState:&v130 objects:v163 count:16];
    }

    while (v88);
  }

  v78 = +[PSExecutionSessionWorkarounds sharedInstance];
  shouldNotifySystemGraphOnTransitionComplete = [v78 shouldNotifySystemGraphOnTransitionComplete];

  if (shouldNotifySystemGraphOnTransitionComplete && [v5 count])
  {
    transitionManager = [(PSGraphCompiler *)self transitionManager];
    executionSession = [transitionManager executionSession];
    [executionSession requestedResourcesAreBeingProduced:v5];
  }
}

- (id)getWriterResourcesForGraphs:(id)graphs
{
  v29 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = graphsCopy;
  v5 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        writers = [v9 writers];
        v11 = [writers countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v19 + 1) + 8 * j) output];
              resourceKey = [output resourceKey];
              [v4 addObject:resourceKey];
            }

            v12 = [writers countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)getReaderResourcesForGraphs:(id)graphs
{
  v36 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = graphsCopy;
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v23 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v6;
        v7 = *(*(&v30 + 1) + 8 * v6);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        readers = [v7 readers];
        v9 = [readers countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(readers);
              }

              v13 = *(*(&v26 + 1) + 8 * i);
              input = [v13 input];
              resolvedResourceKey = [input resolvedResourceKey];
              [v5 addObject:resolvedResourceKey];

              device = self->_device;
              input2 = [v13 input];
              resolvedResourceKey2 = [input2 resolvedResourceKey];
              v19 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

              syncedKey = [v19 syncedKey];
              if (syncedKey)
              {
                [v5 addObject:syncedKey];
              }
            }

            v10 = [readers countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v10);
        }

        v6 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  return v5;
}

- (id)getSourceTaskOutputResourcesForGraphs:(id)graphs
{
  v39 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = graphsCopy;
  v22 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v22)
  {
    v21 = *v33;
    do
    {
      v5 = 0;
      do
      {
        if (*v33 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v32 + 1) + 8 * v5);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        sourceTasks = [v6 sourceTasks];
        v8 = [sourceTasks countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v29;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v12 = *(*(&v28 + 1) + 8 * i);
              v24 = 0u;
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              outputs = [v12 outputs];
              v14 = [outputs countByEnumeratingWithState:&v24 objects:v36 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v25;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v25 != v16)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v24 + 1) + 8 * j) resourceKey];
                    [v4 addObject:resourceKey];
                  }

                  v15 = [outputs countByEnumeratingWithState:&v24 objects:v36 count:16];
                }

                while (v15);
              }
            }

            v9 = [sourceTasks countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v9);
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v22);
  }

  return v4;
}

- (void)createWritersForTransitionBlock:(id)block
{
  v305 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance(blockCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v293) = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Creating PSWriters.", &v293, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  v252 = executionSession[1];

  v7 = objc_loadWeakRetained(&self->_transitionManager);
  v7[9] = 0;

  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  addedGraphs = [blockCopy addedGraphs];
  v246 = [addedGraphs countByEnumeratingWithState:&v289 objects:v304 count:16];
  if (v246)
  {
    v245 = *v290;
    *&v8 = 136315138;
    v257 = v8;
    selfCopy = self;
    do
    {
      v9 = 0;
      do
      {
        if (*v290 != v245)
        {
          v10 = v9;
          objc_enumerationMutation(addedGraphs);
          v9 = v10;
        }

        v247 = v9;
        v11 = *(*(&v289 + 1) + 8 * v9);
        v285 = 0u;
        v286 = 0u;
        v287 = 0u;
        v288 = 0u;
        v268 = v11;
        writers = [v11 writers];
        v269 = [writers countByEnumeratingWithState:&v285 objects:v303 count:16];
        if (v269)
        {
          v266 = *v286;
          do
          {
            for (i = 0; i != v269; i = v187 + 1)
            {
              if (*v286 != v266)
              {
                objc_enumerationMutation(writers);
              }

              v272 = i;
              v13 = *(*(&v285 + 1) + 8 * i);
              v14 = objc_loadWeakRetained(&self->_transitionManager);
              ++v14[9];

              v15 = [(NSMapTable *)self->_retainedWriterBlocks objectForKey:v13];

              if (v15)
              {
                v283 = 0u;
                v284 = 0u;
                v281 = 0u;
                v282 = 0u;
                removedGraphs = [blockCopy removedGraphs];
                v18 = [removedGraphs countByEnumeratingWithState:&v281 objects:v302 count:16];
                if (!v18)
                {
                  goto LABEL_117;
                }

                v19 = v18;
                v20 = *v282;
LABEL_16:
                v21 = 0;
                while (1)
                {
                  if (*v282 != v20)
                  {
                    objc_enumerationMutation(removedGraphs);
                  }

                  v22 = *(*(&v281 + 1) + 8 * v21);
                  v277 = 0u;
                  v278 = 0u;
                  v279 = 0u;
                  v280 = 0u;
                  writers2 = [v22 writers];
                  v24 = [writers2 countByEnumeratingWithState:&v277 objects:v301 count:16];
                  if (v24)
                  {
                    break;
                  }

LABEL_27:

                  if (++v21 == v19)
                  {
                    v19 = [removedGraphs countByEnumeratingWithState:&v281 objects:v302 count:16];
                    if (!v19)
                    {
LABEL_117:

                      v274 = 0;
                      name = [v13 name];
                      asprintf(&v274, "Writer block already created for writer with name %s", [name UTF8String]);

                      v204 = __PLSLogSharedInstance(v203);
                      if (os_log_type_enabled(v204, OS_LOG_TYPE_FAULT))
                      {
                        name2 = [v13 name];
                        uTF8String = [name2 UTF8String];
                        v293 = 136315650;
                        v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v295 = 1024;
                        v296 = 1144;
                        v297 = 2080;
                        v298[0] = uTF8String;
                        _os_log_impl(&dword_25EA3A000, v204, OS_LOG_TYPE_FAULT, "%s:%d Writer block already created for writer with name %s", &v293, 0x1Cu);
                      }

                      v207 = OSLogFlushBuffers();
                      if (!v207)
                      {
                        goto LABEL_120;
                      }

                      v218 = v207;
                      v201 = __PLSLogSharedInstance(v207);
                      if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                      {
                        v293 = 136315394;
                        v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v295 = 1024;
                        v296 = v218;
                        _os_log_impl(&dword_25EA3A000, v201, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v293, 0x12u);
                      }

LABEL_148:

LABEL_149:
                      abort_with_reason();
                    }

                    goto LABEL_16;
                  }
                }

                v25 = v24;
                v26 = *v278;
LABEL_21:
                v27 = 0;
                while (1)
                {
                  if (*v278 != v26)
                  {
                    objc_enumerationMutation(writers2);
                  }

                  if (v13 == *(*(&v277 + 1) + 8 * v27))
                  {
                    break;
                  }

                  if (v25 == ++v27)
                  {
                    v25 = [writers2 countByEnumeratingWithState:&v277 objects:v301 count:16];
                    if (!v25)
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_21;
                  }
                }

                v29 = __PLSLogSharedInstance(v28);
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  name3 = [v13 name];
                  uTF8String2 = [name3 UTF8String];
                  v293 = v257;
                  v294 = uTF8String2;
                  _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEFAULT, "To-be-removed PSWriter already found for %s. Continuing without creating a new writer.", &v293, 0xCu);
                }

                self = selfCopy;
                goto LABEL_107;
              }

              v32 = __PLSLogSharedInstance(v16);
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                output = [v13 output];
                resourceKey = [output resourceKey];
                uTF8String3 = [resourceKey UTF8String];
                v293 = v257;
                v294 = uTF8String3;
                _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_DEBUG, "Creating PSWriter (%s)", &v293, 0xCu);
              }

              v36 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v36 lock];

              v37 = MEMORY[0x277CCACA8];
              output2 = [v13 output];
              resourceKey2 = [output2 resourceKey];
              v40 = [v37 stringWithFormat:@"%@ (PSWriter)", resourceKey2];
              v41 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v41 setTransitionStateBufferInitCurResource:v40];

              v42 = objc_loadWeakRetained(&self->_transitionMonitor);
              [v42 unlock];

              v43 = ps_prm_opts_create();
              output3 = [v13 output];
              resourceKey3 = [output3 resourceKey];

              v46 = [(PSContext *)self->_context resourceStreamForKey:resourceKey3];
              resourceClass = [v46 resourceClass];
              v48 = 9;
              v49 = 1;
              v265 = v43;
              if (resourceClass <= 0xB)
              {
                v50 = 1;
                v51 = 1;
                if (((1 << resourceClass) & 0xB80) == 0)
                {
                  goto LABEL_53;
                }

                provider = [v46 provider];
                v48 = provider;
                if (provider <= 8)
                {
                  if (((1 << provider) & 0x49) != 0)
                  {
                    v53 = __PLSLogSharedInstance(provider);
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      name4 = [v13 name];
                      uTF8String4 = [name4 UTF8String];
                      v293 = v257;
                      v294 = uTF8String4;
                      v56 = v53;
                      v57 = "PSWriter (%s) Camera Provider Type: ClosedLoop";
LABEL_44:
                      _os_log_impl(&dword_25EA3A000, v56, OS_LOG_TYPE_DEFAULT, v57, &v293, 0xCu);
                    }
                  }

                  else
                  {
                    if (((1 << provider) & 0x92) == 0)
                    {
                      v59 = __PLSLogSharedInstance(provider);
                      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                      {
                        name5 = [v13 name];
                        uTF8String5 = [name5 UTF8String];
                        v293 = v257;
                        v294 = uTF8String5;
                        _os_log_impl(&dword_25EA3A000, v59, OS_LOG_TYPE_DEFAULT, "PSWriter (%s) Camera Provider Type: Superframe", &v293, 0xCu);
                      }

                      v62 = +[PLSSettings currentSettings];
                      enableHybridLoop = [v62 enableHybridLoop];

                      if (enableHybridLoop)
                      {
                        v64 = +[PSExecutionSessionWorkarounds sharedInstance];
                        v65 = [v64 shouldUsePRMCameraForSuperframe:resourceKey3];

                        v49 = 0;
                        v51 = 0;
                        v50 = v65 ^ 1;
                      }

                      else
                      {
                        v49 = 0;
                        v51 = 0;
                        v50 = 1;
                      }

                      goto LABEL_53;
                    }

                    v53 = __PLSLogSharedInstance(provider);
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                    {
                      name4 = [v13 name];
                      uTF8String6 = [name4 UTF8String];
                      v293 = v257;
                      v294 = uTF8String6;
                      v56 = v53;
                      v57 = "PSWriter (%s) Camera Provider Type: OpenLoop";
                      goto LABEL_44;
                    }
                  }

                  v49 = 0;
                  v50 = 0;
                  v51 = 0;
                  goto LABEL_53;
                }

                v49 = 0;
              }

              v50 = 1;
              v51 = 1;
LABEL_53:
              LODWORD(v254) = v51;
              LODWORD(bytesPerRow) = v50;
              LODWORD(context) = v49;
              LODWORD(elementWidth) = v48;
              v259 = resourceKey3;
              v264 = v46;
              v274 = 0;
              unsignedLongLongValue = 0;
              v276 = 0;
              v267 = objc_loadWeakRetained(&self->_transitionManager);
              executionSession2 = [v267 executionSession];
              caNameHash = [executionSession2 caNameHash];
              LODWORD(v274) = [caNameHash unsignedIntValue];
              v66 = v268;
              caNameHash2 = [v268 caNameHash];
              HIDWORD(v274) = [caNameHash2 unsignedIntValue];
              systemPulseStride = [v66 systemPulseStride];
              unsignedLongLongValue = [systemPulseStride unsignedLongLongValue];
              v67 = +[PSCoreAnalyticsIDManager sharedInstance];
              output4 = [v13 output];
              resourceKey4 = [output4 resourceKey];
              caName = [v66 caName];
              systemPulseStride2 = [v66 systemPulseStride];
              v72 = objc_loadWeakRetained(&self->_transitionManager);
              executionSession3 = [v72 executionSession];
              caName2 = [executionSession3 caName];
              LODWORD(v276) = [v67 opaqueIDForResource:resourceKey4 graph:caName stride:systemPulseStride2 session:caName2];

              if ((context & 1) == 0 && (bytesPerRow & 1) == 0)
              {
                v75 = v265;
                v76 = elementWidth;
                [PSGraphCompiler populateOptsMetadataType:v265 forProviderType:elementWidth];
                resource_metadata_type = ps_prm_opts_get_resource_metadata_type(v75);
                v78 = v264;
                if (resource_metadata_type == 1)
                {
                  if ([v264 resourceClass] == 11)
                  {
                    pearlBufferPools = [v13 pearlBufferPools];
                    v80 = [pearlBufferPools objectAtIndexedSubscript:0];
                    v81 = [v80 count];
                  }

                  else
                  {
                    pearlBufferPools = [v13 imageBufferPool];
                    v81 = [pearlBufferPools count];
                  }

                  metadataBufferPool = [v13 metadataBufferPool];

                  if (!metadataBufferPool)
                  {
                    [PSGraphCompiler createWritersForTransitionBlock:];
                  }

                  metadataBufferPool2 = [v13 metadataBufferPool];
                  v103 = [metadataBufferPool2 count];

                  if (v103 != v81)
                  {
                    v273 = 0;
                    metadataBufferPool3 = [v13 metadataBufferPool];
                    asprintf(&v273, "The writer count %lu does not match the image buffer count %llu", [metadataBufferPool3 count], v81);

                    v227 = __PLSLogSharedInstance(v226);
                    if (os_log_type_enabled(v227, OS_LOG_TYPE_FAULT))
                    {
                      metadataBufferPool4 = [v13 metadataBufferPool];
                      v229 = [metadataBufferPool4 count];
                      v293 = 136315906;
                      v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                      v295 = 1024;
                      v296 = 1282;
                      v297 = 2048;
                      v298[0] = v229;
                      LOWORD(v298[1]) = 2048;
                      *(&v298[1] + 2) = v81;
                      _os_log_impl(&dword_25EA3A000, v227, OS_LOG_TYPE_FAULT, "%s:%d The writer count %lu does not match the image buffer count %llu", &v293, 0x26u);
                    }

                    v230 = OSLogFlushBuffers();
                    if (v230)
                    {
                      v200 = v230;
                      v201 = __PLSLogSharedInstance(v230);
                      if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_147;
                    }

                    goto LABEL_120;
                  }
                }

                v104 = [v78 key];
                LODWORD(executionSession2) = [PSRCConstants getCameraDepthForKey:v104];

                v105 = [v78 key];
                v106 = [PSRCConstants getReaderDepthForKey:v105];

                v107 = [v78 key];
                v108 = [PSRCConstants getWriterDepthForKey:v107];

                ps_prm_opts_set_buffer_depth(v75, v106, v108);
                ps_prm_opts_set_return_capacity(v75, 1);
                v109 = [v78 key];
                ps_prm_opts_set_resource_key(v75, [v109 UTF8String]);

                ps_prm_opts_set_creation_mode(v75, 0);
                ps_prm_opts_set_storage_mode(v75, 2);
                ps_prm_opts_set_resource_class(v75, [v78 resourceClass]);
                v110 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                executionSession4 = [v110 executionSession];
                ps_prm_opts_set_resource_avail_context(v75, [executionSession4 gsm]);

                ps_prm_opts_set_provider_type(v75, v76);
                ps_prm_opts_set_is_camera_stream(v75, 1);
                ps_prm_opts_set_use_prm_camera_reader(v75, 0);
                resourceClass2 = [v78 resourceClass];
                resourceClass3 = [v78 resourceClass];
                if ((resourceClass3 - 7) >= 3)
                {
                  v134 = executionSession2;
                  if (resourceClass3 == 11)
                  {
                    pearlBufferPools2 = [v13 pearlBufferPools];
                    v136 = [pearlBufferPools2 count];

                    if (v136 == 4)
                    {
                      pearlBufferPools3 = [v13 pearlBufferPools];
                      v138 = [pearlBufferPools3 objectAtIndexedSubscript:0];
                      context = [v138 count];

                      v139 = 0;
                      v140 = v108 + v106 + v134 + [v78 retainedISPRCCount];
                      while (1)
                      {
                        pearlBufferPools4 = [v13 pearlBufferPools];
                        v142 = [pearlBufferPools4 objectAtIndexedSubscript:v139];
                        v143 = [v142 count];

                        if (v143 != v140)
                        {
                          break;
                        }

                        if (++v139 == 4)
                        {
                          caNameHash2 = &v243;
                          v144 = context;
                          v145 = (8 * context + 15) & 0xFFFFFFFFFFFFFFF0;
                          if (8 * context >= 0x200)
                          {
                            v146 = 512;
                          }

                          else
                          {
                            v146 = 8 * context;
                          }

                          v267 = &v243 - v145;
                          bzero(&v243 - v145, v146);
                          v147 = &v243 - v145;
                          bzero(&v243 - v145, v146);
                          v148 = &v243 - v145;
                          bzero(&v243 - v145, v146);
                          v149 = &v243 - v145;
                          bzero(&v243 - v145, v146);
                          caNameHash = &v243 - v145;
                          bzero(&v243 - v145, v146);
                          if (v144)
                          {
                            v150 = 0;
                            v151 = 1;
                            do
                            {
                              pearlBufferPools5 = [v13 pearlBufferPools];
                              v153 = [pearlBufferPools5 objectAtIndexedSubscript:0];
                              v154 = [v153 objectAtIndexedSubscript:v150];
                              *&v267[8 * v150] = v154;

                              pearlBufferPools6 = [v13 pearlBufferPools];
                              v156 = [pearlBufferPools6 objectAtIndexedSubscript:1];
                              v157 = [v156 objectAtIndexedSubscript:v150];
                              *&v147[8 * v150] = v157;

                              pearlBufferPools7 = [v13 pearlBufferPools];
                              v159 = [pearlBufferPools7 objectAtIndexedSubscript:2];
                              v160 = [v159 objectAtIndexedSubscript:v150];
                              *&v148[8 * v150] = v160;

                              pearlBufferPools8 = [v13 pearlBufferPools];
                              v162 = [pearlBufferPools8 objectAtIndexedSubscript:3];
                              v163 = [v162 objectAtIndexedSubscript:v150];
                              *&v149[8 * v150] = v163;

                              if (resource_metadata_type == 1)
                              {
                                metadataBufferPool5 = [v13 metadataBufferPool];
                                v165 = [metadataBufferPool5 objectAtIndexedSubscript:v150];
                                *&caNameHash[8 * v150] = v165;
                              }

                              v150 = v151;
                            }

                            while (context > v151++);
                          }

                          v78 = v264;
                          retainedISPRCCount = [v264 retainedISPRCCount];
                          v89 = v265;
                          ps_prm_opts_set_camera_pearlbuffer(v265, retainedISPRCCount, executionSession2, v267, v147, v148, v149, caNameHash, context);
                          v168 = [PSWriterBlock alloc];
                          self = selfCopy;
                          v94 = [(PSWriterBlock *)v168 initWithWriter:v13 graph:v268 withStream:v78 withWriterOptions:v89 withPRMManager:selfCopy->_prm_mgr withDevice:selfCopy->_device withResourceOptions:0 withCAWriterDimensions:&v274 withFrameHistoryClientHandle:v252];
                          if (v94 && [v78 framerate])
                          {
                            v169 = [v78 key];
                            [(PSGraphCompiler *)self setWriterForKey:v169 writer:v13];
                          }

LABEL_96:
                          v29 = v259;
                          goto LABEL_105;
                        }
                      }

                      v273 = 0;
                      v188 = [v78 key];
                      uTF8String7 = [v188 UTF8String];
                      pearlBufferPools9 = [v13 pearlBufferPools];
                      v191 = [pearlBufferPools9 objectAtIndexedSubscript:v139];
                      asprintf(&v273, "Incorrect number of buffers provided for Pearl Bank %d for stream name: %s. Received: %lu expecting: %llu", v139, uTF8String7, [v191 count], v140);

                      v193 = __PLSLogSharedInstance(v192);
                      if (os_log_type_enabled(v193, OS_LOG_TYPE_FAULT))
                      {
                        v194 = [v78 key];
                        uTF8String8 = [v194 UTF8String];
                        pearlBufferPools10 = [v13 pearlBufferPools];
                        v197 = [pearlBufferPools10 objectAtIndexedSubscript:v139];
                        v198 = [v197 count];
                        v293 = 136316418;
                        v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v295 = 1024;
                        v296 = 1409;
                        v297 = 1024;
                        LODWORD(v298[0]) = v139;
                        WORD2(v298[0]) = 2080;
                        *(v298 + 6) = uTF8String8;
                        HIWORD(v298[1]) = 2048;
                        v298[2] = v198;
                        v299 = 2048;
                        v300 = v140;
                        _os_log_impl(&dword_25EA3A000, v193, OS_LOG_TYPE_FAULT, "%s:%d Incorrect number of buffers provided for Pearl Bank %d for stream name: %s. Received: %lu expecting: %llu", &v293, 0x36u);
                      }

                      v199 = OSLogFlushBuffers();
                      if (v199)
                      {
                        v200 = v199;
                        v201 = __PLSLogSharedInstance(v199);
                        if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_148;
                        }

LABEL_147:
                        v293 = 136315394;
                        v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                        v295 = 1024;
                        v296 = v200;
                        _os_log_impl(&dword_25EA3A000, v201, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v293, 0x12u);
                        goto LABEL_148;
                      }

                      goto LABEL_120;
                    }

                    goto LABEL_141;
                  }

                  v240 = [(PSGraphCompiler *)&v293 createWritersForTransitionBlock:v78];
                }

                else
                {
                  v114 = ((resourceClass2 - 9) & 0xFFFFFFFFFFFFFFFDLL) == 0;
                  imageBufferPool = [v13 imageBufferPool];
                  v116 = [imageBufferPool count];

                  retainedISPRCCount2 = [v78 retainedISPRCCount];
                  v118 = ((v108 + v106) << (2 * v114)) + executionSession2 + retainedISPRCCount2;
                  if (v118 != v116)
                  {
                    v273 = 0;
                    v219 = [v78 key];
                    asprintf(&v273, "Incorrect number of buffers provided for: %s. Received: %d expecting: %d", [v219 UTF8String], v116, v118);

                    v221 = __PLSLogSharedInstance(v220);
                    if (os_log_type_enabled(v221, OS_LOG_TYPE_FAULT))
                    {
                      v222 = [v78 key];
                      uTF8String9 = [v222 UTF8String];
                      v293 = 136316162;
                      v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                      v295 = 1024;
                      v296 = 1323;
                      v297 = 2080;
                      v298[0] = uTF8String9;
                      LOWORD(v298[1]) = 1024;
                      *(&v298[1] + 2) = v116;
                      HIWORD(v298[1]) = 1024;
                      LODWORD(v298[2]) = v118;
                      _os_log_impl(&dword_25EA3A000, v221, OS_LOG_TYPE_FAULT, "%s:%d Incorrect number of buffers provided for: %s. Received: %d expecting: %d", &v293, 0x28u);
                    }

                    v224 = OSLogFlushBuffers();
                    if (v224)
                    {
                      v200 = v224;
                      v201 = __PLSLogSharedInstance(v224);
                      if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_148;
                      }

                      goto LABEL_147;
                    }

                    goto LABEL_120;
                  }

                  context = &v243;
                  v119 = 8 * v116;
                  v120 = (v119 + 15) & 0xFFFFFFFF0;
                  v121 = &v243 - v120;
                  if (v119 >= 0x200)
                  {
                    v122 = 512;
                  }

                  else
                  {
                    v122 = 8 * v116;
                  }

                  bzero(&v243 - v120, v122);
                  v123 = &v243 - v120;
                  bzero(v123, v122);
                  if (v116)
                  {
                    for (j = 0; j != v116; ++j)
                    {
                      imageBufferPool2 = [v13 imageBufferPool];
                      v126 = [imageBufferPool2 objectAtIndexedSubscript:j];
                      *&v121[8 * j] = v126;

                      if (resource_metadata_type == 1)
                      {
                        metadataBufferPool6 = [v13 metadataBufferPool];
                        v128 = [metadataBufferPool6 objectAtIndexedSubscript:j];
                        *&v123[8 * j] = v128;
                      }
                    }
                  }

                  resourceClass4 = [v78 resourceClass];
                  if (resourceClass4 == 7)
                  {
                    [v78 provider];
                    if (ps_resource_stream_provider_is_superframe())
                    {
                      v173 = v78;
                      LODWORD(v267) = [v173 retainedISPRCCount];
                      caNameHash = [v173 width];
                      caNameHash2 = [v173 height];
                      bytesPerElement = [v173 bytesPerElement];
                      bytesPerRow = [v173 bytesPerRow];
                      elementWidth = [v173 elementWidth];
                      elementHeight = [v173 elementHeight];
                      pixelFormat = [v173 pixelFormat];
                      systemPulseStride = [v173 superframePlaneOffsets];
                      v254 = [systemPulseStride objectAtIndexedSubscript:0];
                      unsignedIntValue = [v254 unsignedIntValue];
                      superframePlaneBytesPerRow = [v173 superframePlaneBytesPerRow];
                      v175 = [superframePlaneBytesPerRow objectAtIndexedSubscript:0];
                      unsignedIntValue2 = [v175 unsignedIntValue];
                      height = [v173 height];

                      v178 = height * unsignedIntValue2;
                      v78 = v264;
                      v241 = bytesPerElement;
                      v131 = v265;
                      ps_prm_opts_set_camera_cvpixelbuffer_superframe(v265, v267, executionSession2, v121, v123, v116, caNameHash, caNameHash2, v241, bytesPerRow, elementWidth, elementHeight, pixelFormat, unsignedIntValue, v178);
                    }

                    else
                    {
                      retainedISPRCCount3 = [v78 retainedISPRCCount];
                      v131 = v265;
                      ps_prm_opts_set_camera_cvpixelbuffer(v265, retainedISPRCCount3, executionSession2, v121, v123, v116, v180, v181, v243, addedGraphs, v245, v246, v247, unsignedIntValue, superframePlaneBytesPerRow);
                    }

                    self = selfCopy;
                    v29 = v259;
LABEL_102:
                    v182 = [PSWriterBlock alloc];
                    v94 = [(PSWriterBlock *)v182 initWithWriter:v13 graph:v268 withStream:v78 withWriterOptions:v131 withPRMManager:self->_prm_mgr withDevice:self->_device withResourceOptions:0 withCAWriterDimensions:&v274 withFrameHistoryClientHandle:v252];
                    v89 = v131;
                    if (v94 && [v78 framerate])
                    {
                      v183 = [v78 key];
                      [(PSGraphCompiler *)self setWriterForKey:v183 writer:v13];
                    }

                    goto LABEL_105;
                  }

                  self = selfCopy;
                  v29 = v259;
                  if (resourceClass4 == 8)
                  {
                    retainedISPRCCount4 = [v78 retainedISPRCCount];
                    v131 = v265;
                    ps_prm_opts_set_camera_cvdatabuffer(v265, retainedISPRCCount4, executionSession2, v121, v123, v116, v171, v172, v243);
                    goto LABEL_102;
                  }

                  if (resourceClass4 == 9)
                  {
                    retainedISPRCCount5 = [v78 retainedISPRCCount];
                    v131 = v265;
                    ps_prm_opts_set_camera_jasperbuffer(v265, retainedISPRCCount5, executionSession2, v121, v123, v116, v132, v133, v243);
                    goto LABEL_102;
                  }

                  [(PSGraphCompiler *)&v293 createWritersForTransitionBlock:v78];
LABEL_141:
                  v273 = 0;
                  v231 = [v78 key];
                  uTF8String10 = [v231 UTF8String];
                  pearlBufferPools11 = [v13 pearlBufferPools];
                  asprintf(&v273, "Incorrect number of buffer pools for Pearl for %s: Received: %d expecting: %d", uTF8String10, [pearlBufferPools11 count], 4);

                  v235 = __PLSLogSharedInstance(v234);
                  if (os_log_type_enabled(v235, OS_LOG_TYPE_FAULT))
                  {
                    v236 = [v78 key];
                    uTF8String11 = [v236 UTF8String];
                    pearlBufferPools12 = [v13 pearlBufferPools];
                    v239 = [pearlBufferPools12 count];
                    v293 = 136316162;
                    v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                    v295 = 1024;
                    v296 = 1397;
                    v297 = 2080;
                    v298[0] = uTF8String11;
                    LOWORD(v298[1]) = 1024;
                    *(&v298[1] + 2) = v239;
                    HIWORD(v298[1]) = 1024;
                    LODWORD(v298[2]) = 4;
                    _os_log_impl(&dword_25EA3A000, v235, OS_LOG_TYPE_FAULT, "%s:%d Incorrect number of buffer pools for Pearl for %s: Received: %d expecting: %d", &v293, 0x28u);
                  }

                  v240 = OSLogFlushBuffers();
                  if (!v240)
                  {
                    goto LABEL_120;
                  }
                }

                v200 = v240;
                v201 = __PLSLogSharedInstance(v240);
                if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_148;
                }

                goto LABEL_147;
              }

              if (((context | v254) & 1) == 0)
              {
                v96 = [PSSourceWriterBlock alloc];
                sourceTask = [v13 sourceTask];
                self = selfCopy;
                synchronizer = selfCopy->_synchronizer;
                v99 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                v100 = [(PSSourceWriterBlock *)v96 initWithSourceTask:sourceTask synchronizer:synchronizer transitionManager:v99 frameStepping:[(PSGraphCompiler *)self deterministicReplay]];

                [(PSSourceWriterBlock *)v100 setupResultsWithContext:self->_context device:self->_device];
                v94 = [[PSWriterBlock alloc] initWithWriter:v13 withSourceBlock:v100 withPRMManager:self->_prm_mgr];

                v78 = v264;
                v89 = v265;
                goto LABEL_96;
              }

              output5 = [v13 output];
              capacity = [output5 capacity];
              v84 = selfCopy;
              context = selfCopy->_context;
              retainedBufferIndexers = selfCopy->_retainedBufferIndexers;
              v86 = objc_loadWeakRetained(&selfCopy->_transitionManager);
              executionSession5 = [v86 executionSession];
              v88 = [executionSession5 gsm];
              v242 = retainedBufferIndexers;
              v89 = v265;
              v29 = v259;
              v90 = capacity;
              v91 = v268;
              v92 = v264;
              [PSGraphCompiler populateWriterOpts:v265 forKey:v259 withCapacity:v90 forGraph:v268 withResStream:v264 withContext:context retainedBufferIndexers:v242 withGSM:v88];

              self = v84;
              v78 = v92;

              v93 = [PSWriterBlock alloc];
              v94 = [(PSWriterBlock *)v93 initWithWriter:v13 graph:v91 withStream:v92 withWriterOptions:v89 withPRMManager:self->_prm_mgr withDevice:self->_device withResourceOptions:0 withCAWriterDimensions:&v274 withFrameHistoryClientHandle:v252];
              if (v94 && [v92 framerate])
              {
                v95 = [v92 key];
                [(PSGraphCompiler *)self setWriterForKey:v95 writer:v13];
              }

LABEL_105:
              [(NSMapTable *)self->_retainedWriterBlocks setObject:v94 forKey:v13];
              ps_prm_opts_destroy(v89);
              context = [v13 context];
              if (ps_writer_state_update())
              {
                v273 = 0;
                name6 = [v13 name];
                uTF8String12 = [name6 UTF8String];
                v210 = (context + 80);
                v211 = atomic_load((context + 80));
                asprintf(&v273, "Unable to set writer (%s) state to _READY. Current state %d", uTF8String12, v211);

                v213 = __PLSLogSharedInstance(v212);
                if (os_log_type_enabled(v213, OS_LOG_TYPE_FAULT))
                {
                  name7 = [v13 name];
                  uTF8String13 = [name7 UTF8String];
                  v216 = atomic_load(v210);
                  v293 = 136315906;
                  v294 = "[PSGraphCompiler createWritersForTransitionBlock:]";
                  v295 = 1024;
                  v296 = 1510;
                  v297 = 2080;
                  v298[0] = uTF8String13;
                  LOWORD(v298[1]) = 1024;
                  *(&v298[1] + 2) = v216;
                  _os_log_impl(&dword_25EA3A000, v213, OS_LOG_TYPE_FAULT, "%s:%d Unable to set writer (%s) state to _READY. Current state %d", &v293, 0x22u);
                }

                v217 = OSLogFlushBuffers();
                if (v217)
                {
                  v200 = v217;
                  v201 = __PLSLogSharedInstance(v217);
                  if (!os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_147;
                }

LABEL_120:
                usleep(0x1E8480u);
                goto LABEL_149;
              }

              v185 = v268;
              *([v268 executionContext] + 16) = _get_iosurface_count;
              *([v185 executionContext] + 24) = _get_iosurfaces;
              prm_mgr = self->_prm_mgr;
              *([v185 executionContext] + 32) = prm_mgr;

LABEL_107:
              v187 = v272;
            }

            v269 = [writers countByEnumeratingWithState:&v285 objects:v303 count:16];
          }

          while (v269);
        }

        v9 = v247 + 1;
      }

      while (v247 + 1 != v246);
      v246 = [addedGraphs countByEnumeratingWithState:&v289 objects:v304 count:16];
    }

    while (v246);
  }
}

- (void)createReadersForTransitionBlock:(id)block
{
  v143 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance(blockCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Creating PSReaders.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  v104 = executionSession[1];

  v7 = objc_loadWeakRetained(&self->_transitionManager);
  v7[8] = 0;

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = [blockCopy addedGraphs];
  v101 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
  if (v101)
  {
    v102 = *v130;
    selfCopy = self;
    do
    {
      v8 = 0;
      do
      {
        if (*v130 != v102)
        {
          objc_enumerationMutation(obj);
        }

        v103 = v8;
        v9 = *(*(&v129 + 1) + 8 * v8);
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        readers = [v9 readers];
        v111 = [readers countByEnumeratingWithState:&v125 objects:v141 count:16];
        if (v111)
        {
          v109 = v9;
          v110 = *v126;
          do
          {
            for (i = 0; i != v111; ++i)
            {
              if (*v126 != v110)
              {
                objc_enumerationMutation(readers);
              }

              v11 = *(*(&v125 + 1) + 8 * i);
              v12 = objc_loadWeakRetained(&self->_transitionManager);
              ++v12[8];

              v13 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v11];

              if (v13)
              {
                v123 = 0u;
                v124 = 0u;
                v122 = 0u;
                v121 = 0u;
                removedGraphs = [blockCopy removedGraphs];
                v16 = [removedGraphs countByEnumeratingWithState:&v121 objects:v140 count:16];
                if (!v16)
                {
                  goto LABEL_49;
                }

                v17 = v16;
                v18 = *v122;
LABEL_16:
                v19 = 0;
                while (1)
                {
                  if (*v122 != v18)
                  {
                    objc_enumerationMutation(removedGraphs);
                  }

                  v20 = *(*(&v121 + 1) + 8 * v19);
                  v117 = 0u;
                  v118 = 0u;
                  v119 = 0u;
                  v120 = 0u;
                  readers2 = [v20 readers];
                  v22 = [readers2 countByEnumeratingWithState:&v117 objects:v139 count:16];
                  if (v22)
                  {
                    break;
                  }

LABEL_27:

                  if (++v19 == v17)
                  {
                    v17 = [removedGraphs countByEnumeratingWithState:&v121 objects:v140 count:16];
                    if (!v17)
                    {
LABEL_49:

                      v114[0] = 0;
                      name = [v11 name];
                      asprintf(v114, "Reader block already created for reader with name %s", [name UTF8String]);

                      v82 = __PLSLogSharedInstance(v81);
                      if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
                      {
                        name2 = [v11 name];
                        uTF8String = [name2 UTF8String];
                        *buf = 136315650;
                        v134 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                        v135 = 1024;
                        *v136 = 1553;
                        *&v136[4] = 2080;
                        *&v136[6] = uTF8String;
                        _os_log_impl(&dword_25EA3A000, v82, OS_LOG_TYPE_FAULT, "%s:%d Reader block already created for reader with name %s", buf, 0x1Cu);
                      }

                      v85 = OSLogFlushBuffers();
                      if (v85)
                      {
                        v96 = v85;
                        v97 = __PLSLogSharedInstance(v85);
                        if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v134 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                          v135 = 1024;
                          *v136 = v96;
                          _os_log_impl(&dword_25EA3A000, v97, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                        }
                      }

                      else
                      {
                        usleep(0x1E8480u);
                      }

                      goto LABEL_63;
                    }

                    goto LABEL_16;
                  }
                }

                v23 = v22;
                v24 = *v118;
LABEL_21:
                v25 = 0;
                while (1)
                {
                  if (*v118 != v24)
                  {
                    objc_enumerationMutation(readers2);
                  }

                  if (v11 == *(*(&v117 + 1) + 8 * v25))
                  {
                    break;
                  }

                  if (v23 == ++v25)
                  {
                    v23 = [readers2 countByEnumeratingWithState:&v117 objects:v139 count:16];
                    if (!v23)
                    {
                      goto LABEL_27;
                    }

                    goto LABEL_21;
                  }
                }

                v27 = __PLSLogSharedInstance(v26);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  name3 = [v11 name];
                  uTF8String2 = [name3 UTF8String];
                  *buf = 136315138;
                  v134 = uTF8String2;
                  _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_DEFAULT, "To-be-removed PSReader already found for %s. Continuing without creating a new reader.", buf, 0xCu);
                }

                self = selfCopy;
              }

              else
              {
                v30 = __PLSLogSharedInstance(v14);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  name4 = [v11 name];
                  uTF8String3 = [name4 UTF8String];
                  input = [v11 input];
                  resourceKey = [input resourceKey];
                  uTF8String4 = [resourceKey UTF8String];
                  *buf = 136315394;
                  v134 = uTF8String3;
                  v135 = 2080;
                  *v136 = uTF8String4;
                  _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Creating PSReader (%s) for resource key %s.", buf, 0x16u);
                }

                v36 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v36 lock];

                v37 = MEMORY[0x277CCACA8];
                input2 = [v11 input];
                resourceKey2 = [input2 resourceKey];
                v40 = [v37 stringWithFormat:@"%@ (PSReader)", resourceKey2];
                v41 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v41 setTransitionStateBufferInitCurResource:v40];

                v42 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v42 unlock];

                v43 = ps_prm_opts_create();
                v116 = 0;
                input3 = [v11 input];
                resourceKey3 = [input3 resourceKey];
                LODWORD(resourceKey2) = [(PSGraphCompiler *)self getStreamOptionsForKey:resourceKey3 options:&v116];

                if (resourceKey2)
                {
                  v46 = &v116;
                }

                else
                {
                  v46 = 0;
                }

                input4 = [v11 input];
                resolvedResourceKey = [input4 resolvedResourceKey];

                input5 = [v11 input];
                capacity = [input5 capacity];
                input6 = [v11 input];
                v52 = v109;
                -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](self, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v43, resolvedResourceKey, v109, capacity, [input6 forwardingCount]);

                *v114 = 0u;
                v115 = 0u;
                v53 = objc_loadWeakRetained(&self->_transitionManager);

                if (v53)
                {
                  v54 = objc_loadWeakRetained(&self->_transitionManager);
                  executionSession2 = [v54 executionSession];
                  caNameHash = [executionSession2 caNameHash];
                  LODWORD(v114[0]) = [caNameHash unsignedIntValue];

                  caNameHash2 = [v109 caNameHash];
                  HIDWORD(v114[0]) = [caNameHash2 unsignedIntValue];

                  systemPulseStride = [v109 systemPulseStride];
                  v114[1] = [systemPulseStride unsignedLongLongValue];

                  v59 = +[PSCoreAnalyticsIDManager sharedInstance];
                  input7 = [v11 input];
                  resourceKey4 = [input7 resourceKey];
                  caName = [v109 caName];
                  v105 = v46;
                  v63 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                  [v63 executionSession];
                  v106 = v43;
                  v65 = v64 = resolvedResourceKey;
                  caName2 = [v65 caName];
                  HIDWORD(v115) = [v59 opaqueIDForResource:resourceKey4 graph:caName session:caName2 bufferExpired:1];

                  v67 = +[PSCoreAnalyticsIDManager sharedInstance];
                  input8 = [v11 input];
                  resourceKey5 = [input8 resourceKey];
                  caName3 = [v109 caName];
                  v71 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                  executionSession3 = [v71 executionSession];
                  caName4 = [executionSession3 caName];
                  DWORD2(v115) = [v67 opaqueIDForResource:resourceKey5 graph:caName3 session:caName4 bufferExpired:0];

                  resolvedResourceKey = v64;
                  v43 = v106;

                  v46 = v105;
                  v52 = v109;

                  self = selfCopy;
                }

                v74 = [[PSReaderBlock alloc] initWithReader:v11 graph:v52 readerOptions:v43 resourceOptions:v46 withPRMManager:self->_prm_mgr forCABufferExpiry:v114 withFrameHistoryClientHandle:v104];
                getContext = [v11 getContext];
                if (*(*getContext + 8) != 1)
                {
                  [PSGraphCompiler createReadersForTransitionBlock:];
                }

                v76 = [(PSGraphCompiler *)self populateBufferExpiryOffset:**(*getContext + 40) forKey:resolvedResourceKey];
                input9 = [v11 input];
                [input9 setBufferExpiryOffset:v76];

                self = selfCopy;
                [(NSMapTable *)selfCopy->_retainedReaderBlocks setObject:v74 forKey:v11];
                ps_prm_opts_destroy(v43);
                context = [v11 context];
                if (ps_reader_state_update())
                {
                  v113 = 0;
                  name5 = [v11 name];
                  uTF8String5 = [name5 UTF8String];
                  v88 = (context + 24);
                  v89 = atomic_load((context + 24));
                  asprintf(&v113, "Unable to set reader (%s) state to _READY. Current state %d", uTF8String5, v89);

                  v91 = __PLSLogSharedInstance(v90);
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_FAULT))
                  {
                    name6 = [v11 name];
                    uTF8String6 = [name6 UTF8String];
                    v94 = atomic_load(v88);
                    *buf = 136315906;
                    v134 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                    v135 = 1024;
                    *v136 = 1624;
                    *&v136[4] = 2080;
                    *&v136[6] = uTF8String6;
                    v137 = 1024;
                    v138 = v94;
                    _os_log_impl(&dword_25EA3A000, v91, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _READY. Current state %d", buf, 0x22u);
                  }

                  v95 = OSLogFlushBuffers();
                  if (v95)
                  {
                    v98 = v95;
                    v99 = __PLSLogSharedInstance(v95);
                    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v134 = "[PSGraphCompiler createReadersForTransitionBlock:]";
                      v135 = 1024;
                      *v136 = v98;
                      _os_log_impl(&dword_25EA3A000, v99, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    usleep(0x1E8480u);
                  }

LABEL_63:
                  abort_with_reason();
                }

                *([v52 executionContext] + 16) = _get_iosurface_count;
                *([v52 executionContext] + 24) = _get_iosurfaces;
                prm_mgr = selfCopy->_prm_mgr;
                *([v52 executionContext] + 32) = prm_mgr;
              }
            }

            v111 = [readers countByEnumeratingWithState:&v125 objects:v141 count:16];
          }

          while (v111);
        }

        v8 = v103 + 1;
      }

      while (v103 + 1 != v101);
      v101 = [obj countByEnumeratingWithState:&v129 objects:v142 count:16];
    }

    while (v101);
  }
}

- (void)resolveStreamDomainsForTransitionBlock:(id)block
{
  v81 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = __PLSLogSharedInstance(blockCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, "Resolving stream domains.", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  preTransitionGraphs = [blockCopy preTransitionGraphs];
  [v6 unionSet:preTransitionGraphs];

  removedGraphs = [blockCopy removedGraphs];
  [v6 minusSet:removedGraphs];

  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v69 = 0;
  LOBYTE(removedGraphs) = PSGraphResolveStreamDomains();
  v10 = 0;

  if ((removedGraphs & 1) == 0)
  {
    goto LABEL_39;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  postTransitionGraphs2 = [blockCopy postTransitionGraphs];
  v12 = [postTransitionGraphs2 countByEnumeratingWithState:&v65 objects:v80 count:16];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = *v66;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v66 != v14)
      {
        objc_enumerationMutation(postTransitionGraphs2);
      }

      v16 = *(*(&v65 + 1) + 8 * i);
      resolvedDomain = [v16 resolvedDomain];

      if (!resolvedDomain)
      {
        [(PSGraphCompiler *)buf resolveStreamDomainsForTransitionBlock:v16];
LABEL_31:
        v60 = 0;
        name = [resolvedDomain name];
        uTF8String = [name UTF8String];
        v38 = [v16 description];
        uTF8String2 = [v38 UTF8String];
        v40 = [postTransitionGraphs2 description];
        asprintf(&v60, "Stream domain for common graph %s changed during transition. Pre-transition domain: %s. Post-transition domain: %s.", uTF8String, uTF8String2, [v40 UTF8String]);

        v42 = __PLSLogSharedInstance(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          name2 = [resolvedDomain name];
          uTF8String3 = [name2 UTF8String];
          v45 = [v16 description];
          uTF8String4 = [v45 UTF8String];
          v47 = [postTransitionGraphs2 description];
          uTF8String5 = [v47 UTF8String];
          *buf = 136316162;
          v72 = "[PSGraphCompiler resolveStreamDomainsForTransitionBlock:]";
          v73 = 1024;
          *v74 = 1691;
          *&v74[4] = 2080;
          *&v74[6] = uTF8String3;
          v75 = 2080;
          v76 = uTF8String4;
          v77 = 2080;
          v78 = uTF8String5;
          _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_FAULT, "%s:%d Stream domain for common graph %s changed during transition. Pre-transition domain: %s. Post-transition domain: %s.", buf, 0x30u);
        }

        v49 = OSLogFlushBuffers();
        if (v49)
        {
          v50 = v49;
          v51 = __PLSLogSharedInstance(v49);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v72 = "[PSGraphCompiler resolveStreamDomainsForTransitionBlock:]";
            v73 = 1024;
            *v74 = v50;
            _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }

        else
        {
          usleep(0x1E8480u);
        }

        abort_with_reason();
LABEL_39:
        [(PSGraphCompiler *)buf resolveStreamDomainsForTransitionBlock:v10];
      }
    }

    v13 = [postTransitionGraphs2 countByEnumeratingWithState:&v65 objects:v80 count:16];
  }

  while (v13);
LABEL_12:

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = v6;
  v19 = [v18 countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(v18);
        }

        resolvedDomain = *(*(&v61 + 1) + 8 * j);
        v16 = [(NSMapTable *)self->_priorGraphDomains objectForKey:resolvedDomain];
        postTransitionGraphs2 = [resolvedDomain resolvedDomain];
        if (([v16 isEqual:postTransitionGraphs2] & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v20);
  }

  v52 = v18;
  v53 = v10;

  [(NSMapTable *)self->_priorGraphDomains removeAllObjects];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = blockCopy;
  obj = [blockCopy postTransitionGraphs];
  v23 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v57;
    do
    {
      v26 = 0;
      do
      {
        if (*v57 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v56 + 1) + 8 * v26);
        v28 = __PLSLogSharedInstance(v23);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          resolvedDomain2 = [v27 resolvedDomain];
          v30 = [resolvedDomain2 description];
          uTF8String6 = [v30 UTF8String];
          name3 = [v27 name];
          uTF8String7 = [name3 UTF8String];
          *buf = 136315394;
          v72 = uTF8String6;
          v73 = 2080;
          *v74 = uTF8String7;
          _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "STREAMDOMAIN: Resolved to domain [%s] for graph %s", buf, 0x16u);
        }

        priorGraphDomains = self->_priorGraphDomains;
        resolvedDomain3 = [v27 resolvedDomain];
        [(NSMapTable *)priorGraphDomains setObject:resolvedDomain3 forKey:v27];

        ++v26;
      }

      while (v24 != v26);
      v23 = [obj countByEnumeratingWithState:&v56 objects:v70 count:16];
      v24 = v23;
    }

    while (v23);
  }
}

- (void)createSourceTasksForTransitionBlock:(id)block
{
  v74 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  WeakRetained[6] = 0;

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v46 = blockCopy;
  obj = [blockCopy addedGraphs];
  v49 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v49)
  {
    v48 = *v66;
    do
    {
      v6 = 0;
      do
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = v6;
        v7 = *(*(&v65 + 1) + 8 * v6);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        sourceTasks = [v7 sourceTasks];
        v53 = [sourceTasks countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v53)
        {
          v52 = *v62;
          do
          {
            v8 = 0;
            do
            {
              if (*v62 != v52)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v9 = *(*(&v61 + 1) + 8 * v8);
              retainedSourceWriterBlocks = selfCopy->_retainedSourceWriterBlocks;
              name = [v9 name];
              v12 = [(NSMutableDictionary *)retainedSourceWriterBlocks objectForKeyedSubscript:name];

              if (v12)
              {
                [(PSGraphCompiler *)buf createSourceTasksForTransitionBlock:v9];
              }

              v54 = v9;
              v55 = v8;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              outputs = [v9 outputs];
              v14 = [outputs countByEnumeratingWithState:&v57 objects:v71 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v58;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v58 != v16)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v18 = *(*(&v57 + 1) + 8 * i);
                    resourceKey = [v18 resourceKey];
                    uTF8String = [resourceKey UTF8String];
                    if (uTF8String)
                    {
                      v21 = *uTF8String;
                      if (*uTF8String)
                      {
                        v22 = uTF8String + 1;
                        LODWORD(v23) = -2128831035;
                        do
                        {
                          v23 = 16777619 * (v23 ^ v21);
                          v24 = *v22++;
                          v21 = v24;
                        }

                        while (v24);
                      }

                      else
                      {
                        v23 = 2166136261;
                      }
                    }

                    else
                    {
                      v23 = 0;
                    }

                    v25 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                    executionSession = [v25 executionSession];
                    v27 = executionSession[1];
                    resourceKey2 = [v18 resourceKey];
                    ps_frame_history_buffer_service_map_string_with_hash(v27, [resourceKey2 UTF8String], v23);
                  }

                  v15 = [outputs countByEnumeratingWithState:&v57 objects:v71 count:16];
                }

                while (v15);
              }

              v29 = objc_loadWeakRetained(&selfCopy->_transitionManager);
              ++v29[6];

              v31 = __PLSLogSharedInstance(v30);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                name2 = [v54 name];
                uTF8String2 = [name2 UTF8String];
                *buf = 136315138;
                v70 = uTF8String2;
                _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "Creating source task for key %s.", buf, 0xCu);
              }

              v34 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
              [v34 lock];

              v35 = MEMORY[0x277CCACA8];
              name3 = [v54 name];
              v37 = [v35 stringWithFormat:@"%@ (PSSourceTask)", name3];
              v38 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
              [v38 setTransitionStateBufferInitCurResource:v37];

              v39 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
              [v39 unlock];

              v40 = [PSSourceWriterBlock alloc];
              synchronizer = selfCopy->_synchronizer;
              v42 = objc_loadWeakRetained(&selfCopy->_transitionManager);
              v43 = [(PSSourceWriterBlock *)v40 initWithSourceTask:v54 synchronizer:synchronizer transitionManager:v42 frameStepping:[(PSGraphCompiler *)selfCopy deterministicReplay]];

              [(PSSourceWriterBlock *)v43 setupResultsWithContext:selfCopy->_context device:selfCopy->_device];
              v44 = selfCopy->_retainedSourceWriterBlocks;
              name4 = [v54 name];
              [(NSMutableDictionary *)v44 setObject:v43 forKeyedSubscript:name4];

              v8 = v55 + 1;
            }

            while (v55 + 1 != v53);
            v53 = [sourceTasks countByEnumeratingWithState:&v61 objects:v72 count:16];
          }

          while (v53);
        }

        v6 = v50 + 1;
      }

      while (v50 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v49);
  }
}

- (void)initializeLocalSystemSourcesForTransitionBlock:(id)block
{
  v33 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    preTransitionGraphs = [blockCopy preTransitionGraphs];
    v26 = blockCopy;
    postTransitionGraphs = [blockCopy postTransitionGraphs];
    v10 = [(PSGraphCompiler *)self getAddedResourcesWithOldGraphs:preTransitionGraphs withNewGraphs:postTransitionGraphs];

    v25 = v10;
    [(PSGraphCompiler *)self extractLocalSystemSourceKeys:v10];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v31 = 0u;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          uTF8String = [v15 UTF8String];
          if (uTF8String)
          {
            v17 = *uTF8String;
            if (*uTF8String)
            {
              v18 = uTF8String + 1;
              LODWORD(v19) = -2128831035;
              do
              {
                v19 = 16777619 * (v19 ^ v17);
                v20 = *v18++;
                v17 = v20;
              }

              while (v20);
            }

            else
            {
              v19 = 2166136261;
            }
          }

          else
          {
            v19 = 0;
          }

          v21 = objc_loadWeakRetained(&self->_transitionManager);
          executionSession2 = [v21 executionSession];
          ps_frame_history_buffer_service_map_string_with_hash(executionSession2[1], [v15 UTF8String], v19);
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    blockCopy = v26;
    postTransitionGraphs2 = [v26 postTransitionGraphs];
    v24 = [(PSGraphCompiler *)self getAllOutputsForGraphs:postTransitionGraphs2];
    [obj minusSet:v24];

    [(PSGraphCompiler *)self startLocalSystemSources:obj];
  }
}

- (id)extractLocalSystemSourceKeys:(id)keys
{
  v19 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = keysCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(PLSDevice *)self->_device propertiesForKey:v11, v14];
        if ([v12 type] == 1 || objc_msgSend(v12, "type") == 7)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)startLocalSystemSources:(id)sources
{
  v19 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
        [WeakRetained lock];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Polaris Source)", v9];
        v12 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v12 setTransitionStateLocalSourceInitCurResource:v11];

        v13 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v13 unlock];

        [(PSLocalStreamManager *)self->_localStreamManager startSourceForKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [sourcesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (void)createPRMInstancesForTransitionBlock:(id)block
{
  v499 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    addedGraphs = [blockCopy addedGraphs];
    v9 = [addedGraphs count];

    if (v9)
    {
      v331 = blockCopy;
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v10 = __PLSLogSharedInstance(strongToStrongObjectsMapTable);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "Creating task instances for transition block.", buf, 2u);
      }

      v477 = 0u;
      v476 = 0u;
      v475 = 0u;
      v474 = 0u;
      obj = [blockCopy addedGraphs];
      v390 = [obj countByEnumeratingWithState:&v474 objects:v498 count:16];
      if (v390)
      {
        v388 = *v475;
        do
        {
          v11 = 0;
          do
          {
            if (*v475 != v388)
            {
              objc_enumerationMutation(obj);
            }

            v394 = v11;
            v12 = *(*(&v474 + 1) + 8 * v11);
            v470 = 0u;
            v471 = 0u;
            v472 = 0u;
            v473 = 0u;
            tasks = [v12 tasks];
            v14 = [tasks countByEnumeratingWithState:&v470 objects:v497 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v471;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v471 != v16)
                  {
                    objc_enumerationMutation(tasks);
                  }

                  v18 = *(*(&v470 + 1) + 8 * i);
                  inputs = [v18 inputs];
                  v20 = [inputs count];

                  outputs = [v18 outputs];
                  v22 = [outputs count];

                  v24 = __PLSLogSharedInstance(v23);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    name = [v18 name];
                    uTF8String = [name UTF8String];
                    *buf = 136380675;
                    v482 = uTF8String;
                    _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_DEBUG, "Creating task instance for key %{private}s", buf, 0xCu);
                  }

                  name2 = [v18 name];
                  v28 = ps_task_resources_create(v20, v22, [name2 UTF8String], selfCopy->_prm_mgr, 0);

                  prmTaskResources = selfCopy->_prmTaskResources;
                  v30 = [MEMORY[0x277CCAE60] valueWithPointer:v28];
                  v31 = [(PSGraphCompiler *)selfCopy getGraphTaskHash:v12 withTask:v18];
                  [(NSMapTable *)prmTaskResources setObject:v30 forKey:v31];
                }

                v15 = [tasks countByEnumeratingWithState:&v470 objects:v497 count:16];
              }

              while (v15);
            }

            v11 = v394 + 1;
          }

          while (v394 + 1 != v390);
          v390 = [obj countByEnumeratingWithState:&v474 objects:v498 count:16];
        }

        while (v390);
      }

      v32 = selfCopy;
      v33 = objc_loadWeakRetained(&selfCopy->_transitionManager);
      v33[7] = 0;

      v34 = objc_loadWeakRetained(&selfCopy->_transitionManager);
      v34[4] = 0;

      v35 = objc_loadWeakRetained(&selfCopy->_transitionManager);
      v35[5] = 0;

      v37 = __PLSLogSharedInstance(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_DEFAULT, "Creating writer instances.", buf, 2u);
      }

      v469 = 0u;
      v468 = 0u;
      v467 = 0u;
      v466 = 0u;
      v38 = v331;
      addedGraphs2 = [v331 addedGraphs];
      v39 = [addedGraphs2 countByEnumeratingWithState:&v466 objects:v496 count:16];
      v40 = strongToStrongObjectsMapTable;
      v344 = v39;
      if (v39)
      {
        v347 = *v467;
        do
        {
          v41 = 0;
          do
          {
            if (*v467 != v347)
            {
              objc_enumerationMutation(addedGraphs2);
            }

            v349 = v41;
            v42 = *(*(&v466 + 1) + 8 * v41);
            v43 = __PLSLogSharedInstance(v39);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              name3 = [v42 name];
              uTF8String2 = [name3 UTF8String];
              *buf = 136315138;
              v482 = uTF8String2;
              _os_log_impl(&dword_25EA3A000, v43, OS_LOG_TYPE_DEFAULT, "Creating writer instances for graph %s.", buf, 0xCu);
            }

            v465 = 0u;
            v464 = 0u;
            v463 = 0u;
            v462 = 0u;
            tasks2 = [v42 tasks];
            v359 = [tasks2 countByEnumeratingWithState:&v462 objects:v495 count:16];
            if (v359)
            {
              v355 = *v463;
              do
              {
                v46 = 0;
                do
                {
                  if (*v463 != v355)
                  {
                    objc_enumerationMutation(tasks2);
                  }

                  v367 = v46;
                  v47 = *(*(&v462 + 1) + 8 * v46);
                  v48 = objc_loadWeakRetained(&v32->_transitionManager);
                  ++v48[7];

                  resourceKey6 = v32->_prmTaskResources;
                  v50 = [(PSGraphCompiler *)v32 getGraphTaskHash:v42 withTask:v47];
                  v51 = [resourceKey6 objectForKey:v50];

                  pointerValue = [v51 pointerValue];
                  if (!pointerValue)
                  {
                    goto LABEL_213;
                  }

                  v363 = v51;
                  v461 = 0u;
                  v460 = 0u;
                  v459 = 0u;
                  v458 = 0u;
                  outputs2 = [v47 outputs];
                  v32 = selfCopy;
                  v391 = [outputs2 countByEnumeratingWithState:&v458 objects:v494 count:16];
                  if (v391)
                  {
                    v377 = v47;
                    obja = *v459;
                    do
                    {
                      v52 = 0;
                      do
                      {
                        if (*v459 != obja)
                        {
                          objc_enumerationMutation(outputs2);
                        }

                        v395 = v52;
                        resourceKey6 = *(*(&v458 + 1) + 8 * v52);
                        v53 = objc_loadWeakRetained(&v32->_transitionManager);
                        ++v53[5];

                        v55 = __PLSLogSharedInstance(v54);
                        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                        {
                          name4 = [v47 name];
                          uTF8String3 = [name4 UTF8String];
                          resourceKey = [resourceKey6 resourceKey];
                          uTF8String4 = [resourceKey UTF8String];
                          *buf = 136380931;
                          v482 = uTF8String3;
                          v483 = 2081;
                          *v484 = uTF8String4;
                          _os_log_impl(&dword_25EA3A000, v55, OS_LOG_TYPE_DEBUG, "Creating writer instance for task %{private}s, resource %{private}s.", buf, 0x16u);
                        }

                        v60 = objc_loadWeakRetained(&v32->_transitionMonitor);
                        [v60 lock];

                        v61 = MEMORY[0x277CCACA8];
                        resourceKey2 = [resourceKey6 resourceKey];
                        name5 = [v42 name];
                        v64 = [v61 stringWithFormat:@"%@ (Output for %@)", resourceKey2, name5];
                        v65 = objc_loadWeakRetained(&v32->_transitionMonitor);
                        [v65 setTransitionStateBufferInitCurResource:v64];

                        v66 = objc_loadWeakRetained(&v32->_transitionMonitor);
                        [v66 unlock];

                        v67 = ps_prm_opts_create();
                        context = v32->_context;
                        resourceKey3 = [resourceKey6 resourceKey];
                        v401 = [(PSContext *)context resourceStreamForKey:resourceKey3];

                        resourceKey4 = [resourceKey6 resourceKey];
                        capacity = [resourceKey6 capacity];
                        v72 = v32->_context;
                        retainedBufferIndexers = v32->_retainedBufferIndexers;
                        v74 = objc_loadWeakRetained(&v32->_transitionManager);
                        executionSession2 = [v74 executionSession];
                        +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:](PSGraphCompiler, "populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:", v67, resourceKey4, capacity, v42, v401, v72, retainedBufferIndexers, [executionSession2 gsm]);

                        retainedInputs = [resourceKey6 retainedInputs];
                        v77 = ps_task_resources_add_output(pointerValue, v67, [retainedInputs count]);

                        ps_prm_opts_destroy(v67);
                        retainedInputs2 = [resourceKey6 retainedInputs];
                        v79 = [retainedInputs2 count];

                        if (v79)
                        {
                          v80 = [strongToStrongObjectsMapTable objectForKey:resourceKey6];

                          if (v80)
                          {
                            [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:resourceKey6];
LABEL_187:
                            v423[0] = 0;
                            resourceKey5 = [resourceKey6 resourceKey];
                            uTF8String5 = [resourceKey5 UTF8String];
                            name6 = [v80 name];
                            uTF8String6 = [name6 UTF8String];
                            name7 = [pointerValue name];
                            asprintf(v423, "Mismatched task input found for retained bundle input %s for task %s, graph %s", uTF8String5, uTF8String6, [name7 UTF8String]);

                            v47 = __PLSLogSharedInstance(v278);
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                            {
                              resourceKey6 = [resourceKey6 resourceKey];
                              uTF8String7 = [resourceKey6 UTF8String];
                              name8 = [v80 name];
                              uTF8String8 = [name8 UTF8String];
                              name9 = [pointerValue name];
                              uTF8String9 = [name9 UTF8String];
                              *buf = 136316162;
                              v482 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                              v483 = 1024;
                              *v484 = 2222;
                              *&v484[4] = 2080;
                              *&v484[6] = uTF8String7;
                              *&v484[14] = 2080;
                              *&v484[16] = uTF8String8;
                              *&v484[24] = 2080;
                              *&v484[26] = uTF8String9;
                              _os_log_impl(&dword_25EA3A000, v47, OS_LOG_TYPE_FAULT, "%s:%d Mismatched task input found for retained bundle input %s for task %s, graph %s", buf, 0x30u);
                            }

                            v284 = OSLogFlushBuffers();
                            if (v284)
                            {
                              v47 = v284;
                              v285 = __PLSLogSharedInstance(v284);
                              if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_202;
                              }

                              goto LABEL_211;
                            }

                            goto LABEL_208;
                          }

                          v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v77];
                          [strongToStrongObjectsMapTable setObject:v81 forKey:resourceKey6];
                        }

                        v32 = selfCopy;
                        v52 = v395 + 1;
                        v47 = v377;
                      }

                      while (v391 != v395 + 1);
                      v391 = [outputs2 countByEnumeratingWithState:&v458 objects:v494 count:16];
                    }

                    while (v391);
                  }

                  v46 = v367 + 1;
                  v40 = strongToStrongObjectsMapTable;
                }

                while (v367 + 1 != v359);
                v359 = [tasks2 countByEnumeratingWithState:&v462 objects:v495 count:16];
              }

              while (v359);
            }

            v41 = v349 + 1;
          }

          while (v349 + 1 != v344);
          v39 = [addedGraphs2 countByEnumeratingWithState:&v466 objects:v496 count:16];
          v38 = v331;
          v344 = v39;
        }

        while (v39);
      }

      v83 = __PLSLogSharedInstance(v82);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v83, OS_LOG_TYPE_DEFAULT, "Creating reader instances.", buf, 2u);
      }

      v457 = 0u;
      v456 = 0u;
      v455 = 0u;
      v454 = 0u;
      addedGraphs3 = [v38 addedGraphs];
      v85 = [addedGraphs3 countByEnumeratingWithState:&v454 objects:v493 count:16];
      if (v85)
      {
        v86 = *v455;
        v337 = 136315394;
        v322 = *v455;
        v323 = addedGraphs3;
        do
        {
          v87 = 0;
          v324 = v85;
          do
          {
            if (*v455 != v86)
            {
              objc_enumerationMutation(addedGraphs3);
            }

            v327 = v87;
            v88 = *(*(&v454 + 1) + 8 * v87);
            v89 = __PLSLogSharedInstance(v85);
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              name10 = [v88 name];
              uTF8String10 = [name10 UTF8String];
              *buf = 136315138;
              v482 = uTF8String10;
              _os_log_impl(&dword_25EA3A000, v89, OS_LOG_TYPE_DEFAULT, "Creating reader instances for graph %s.", buf, 0xCu);
            }

            v92 = [(PSGraphCompiler *)v32 getIntermediateSources:v88 withTransitionBlock:v38];
            v93 = [(PSGraphCompiler *)v32 getSystemSources:v88 withTransitionBlock:v38 withIntermediateSources:v92];
            v94 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v325 = v93;
            [v94 unionSet:v93];
            v368 = v94;
            v326 = v92;
            [v94 unionSet:v92];
            strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v392 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v396 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v97 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v98 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v99 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v101 = v88;
            v102 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [strongToStrongObjectsMapTable2 setObject:v396 forKey:&unk_2870CAC38];
            [strongToStrongObjectsMapTable2 setObject:v97 forKey:&unk_2870CAC50];
            v402 = strongToStrongObjectsMapTable2;
            [strongToStrongObjectsMapTable2 setObject:v98 forKey:&unk_2870CAC68];
            [strongToStrongObjectsMapTable3 setObject:v99 forKey:&unk_2870CAC38];
            [strongToStrongObjectsMapTable3 setObject:v100 forKey:&unk_2870CAC50];
            v343 = strongToStrongObjectsMapTable3;
            [strongToStrongObjectsMapTable3 setObject:v102 forKey:&unk_2870CAC68];

            v453 = 0u;
            v452 = 0u;
            v451 = 0u;
            v450 = 0u;
            pointerValue = v101;
            tasks3 = [v101 tasks];
            objb = [tasks3 countByEnumeratingWithState:&v450 objects:v492 count:16];
            if (objb)
            {
              v378 = *v451;
              do
              {
                v103 = 0;
                do
                {
                  if (*v451 != v378)
                  {
                    objc_enumerationMutation(tasks3);
                  }

                  v397 = v103;
                  v104 = *(*(&v450 + 1) + 8 * v103);
                  v446 = 0u;
                  v447 = 0u;
                  v448 = 0u;
                  v449 = 0u;
                  inputs2 = [v104 inputs];
                  v106 = [inputs2 countByEnumeratingWithState:&v446 objects:v491 count:16];
                  if (v106)
                  {
                    v107 = v106;
                    v108 = *v447;
                    do
                    {
                      for (j = 0; j != v107; ++j)
                      {
                        if (*v447 != v108)
                        {
                          objc_enumerationMutation(inputs2);
                        }

                        v110 = *(*(&v446 + 1) + 8 * j);
                        resolvedResourceKey = [v110 resolvedResourceKey];
                        if ([v368 containsObject:resolvedResourceKey])
                        {
                          v112 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v110, "type")}];
                          v113 = [v402 objectForKey:v112];

                          v114 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v110, "type")}];
                          v115 = [v343 objectForKey:v114];

                          if (v113)
                          {
                            v116 = v115 == 0;
                          }

                          else
                          {
                            v116 = 1;
                          }

                          if (!v116)
                          {
                            [v113 addObject:resolvedResourceKey];
                            v117 = [v115 objectForKeyedSubscript:resolvedResourceKey];
                            v118 = v117;
                            if (!v117 || (v119 = [v117 unsignedLongValue], objc_msgSend(v110, "capacity") > v119))
                            {
                              v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v110, "capacity")}];
                              [v115 setObject:v120 forKeyedSubscript:resolvedResourceKey];
                            }
                          }

                          v121 = [v392 objectForKeyedSubscript:resolvedResourceKey];
                          v122 = v121;
                          if (!v121 || (v123 = [v121 unsignedLongValue], objc_msgSend(v110, "forwardingCount") > v123))
                          {
                            v124 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v110, "forwardingCount")}];
                            [v392 setObject:v124 forKeyedSubscript:resolvedResourceKey];
                          }
                        }
                      }

                      v107 = [inputs2 countByEnumeratingWithState:&v446 objects:v491 count:16];
                    }

                    while (v107);
                  }

                  v103 = v397 + 1;
                }

                while ((v397 + 1) != objb);
                objb = [tasks3 countByEnumeratingWithState:&v450 objects:v492 count:16];
              }

              while (objb);
            }

            v445 = 0u;
            v443 = 0u;
            v444 = 0u;
            v442 = 0u;
            v125 = v402;
            v126 = [v125 countByEnumeratingWithState:&v442 objects:v490 count:16];
            if (v126)
            {
              v127 = v126;
              v128 = 0;
              v129 = *v443;
              do
              {
                for (k = 0; k != v127; ++k)
                {
                  if (*v443 != v129)
                  {
                    objc_enumerationMutation(v125);
                  }

                  v131 = [v125 objectForKey:*(*(&v442 + 1) + 8 * k)];
                  v128 += [v131 count];
                }

                v127 = [v125 countByEnumeratingWithState:&v442 objects:v490 count:16];
              }

              while (v127);
            }

            else
            {
              v128 = 0;
            }

            prm_mgr = selfCopy->_prm_mgr;
            name11 = [pointerValue name];
            uTF8String11 = [name11 UTF8String];
            systemPulseStride = [pointerValue systemPulseStride];
            v136 = ps_grouped_source_pool_create(prm_mgr, uTF8String11, v128, systemPulseStride, 1, [(PSGraphCompiler *)selfCopy deterministicReplay]);

            prmGroupedSourcePools = selfCopy->_prmGroupedSourcePools;
            v138 = pointerValue;
            v374 = v136;
            v139 = [MEMORY[0x277CCAE60] valueWithPointer:v136];
            [(NSMapTable *)prmGroupedSourcePools setObject:v139 forKey:pointerValue];

            strongToStrongObjectsMapTable4 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v142 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v143 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [strongToStrongObjectsMapTable4 setObject:v141 forKey:&unk_2870CAC38];
            [strongToStrongObjectsMapTable4 setObject:v142 forKey:&unk_2870CAC50];
            v348 = strongToStrongObjectsMapTable4;
            [strongToStrongObjectsMapTable4 setObject:v143 forKey:&unk_2870CAC68];

            strongToStrongObjectsMapTable5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
            v438 = 0u;
            v439 = 0u;
            v440 = 0u;
            v441 = 0u;
            v335 = v125;
            v364 = [v335 countByEnumeratingWithState:&v438 objects:v489 count:16];
            if (v364)
            {
              v360 = *v439;
              do
              {
                v144 = 0;
                do
                {
                  if (*v439 != v360)
                  {
                    objc_enumerationMutation(v335);
                  }

                  v369 = v144;
                  v145 = *(*(&v438 + 1) + 8 * v144);
                  integerValue = [v145 integerValue];
                  v403 = [v348 objectForKey:v145];
                  v147 = [v335 objectForKey:v145];
                  v398 = [v343 objectForKey:v145];
                  v434 = 0u;
                  v435 = 0u;
                  v436 = 0u;
                  v437 = 0u;
                  v379 = v147;
                  v148 = [v379 countByEnumeratingWithState:&v434 objects:v488 count:16];
                  if (v148)
                  {
                    v149 = v148;
                    objc = *v435;
                    do
                    {
                      for (m = 0; m != v149; ++m)
                      {
                        if (*v435 != objc)
                        {
                          objc_enumerationMutation(v379);
                        }

                        v151 = *(*(&v434 + 1) + 8 * m);
                        v152 = [v398 objectForKeyedSubscript:v151];
                        unsignedLongValue = [v152 unsignedLongValue];

                        v154 = [v392 objectForKeyedSubscript:v151];
                        unsignedLongValue2 = [v154 unsignedLongValue];

                        v157 = __PLSLogSharedInstance(v156);
                        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEBUG))
                        {
                          uTF8String12 = [v151 UTF8String];
                          *buf = 134218754;
                          v482 = integerValue;
                          v483 = 2080;
                          *v484 = uTF8String12;
                          *&v484[8] = 2048;
                          *&v484[10] = unsignedLongValue;
                          *&v484[18] = 2048;
                          *&v484[20] = unsignedLongValue2;
                          _os_log_impl(&dword_25EA3A000, v157, OS_LOG_TYPE_DEBUG, "Creating a GSP res (type %lu) for key %s, capacity %llu, fwdCount:%llu", buf, 0x2Au);
                        }

                        v159 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v159 lock];

                        v160 = MEMORY[0x277CCACA8];
                        name12 = [v138 name];
                        v161 = [v160 stringWithFormat:@"%@ (GSP input for %@)", v151, name12];
                        v163 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v163 setTransitionStateBufferInitCurResource:v161];

                        v138 = pointerValue;
                        v164 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v164 unlock];

                        v165 = ps_prm_opts_create();
                        [(PSGraphCompiler *)selfCopy populateReaderOpts:v165 forKey:v151 forGraph:pointerValue withCapacity:unsignedLongValue withForwardingCount:unsignedLongValue2];
                        v166 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                        [v166 isBiometricKit];

                        v167 = ps_grouped_source_pool_add_input(v374, v165, integerValue);
                        v168 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                        [v168 isBiometricKit];

                        ps_prm_opts_destroy(v165);
                        v169 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v167];
                        [v403 setObject:v169 forKeyedSubscript:v151];
                      }

                      v149 = [v379 countByEnumeratingWithState:&v434 objects:v488 count:16];
                    }

                    while (v149);
                  }

                  v144 = v369 + 1;
                }

                while (v369 + 1 != v364);
                v364 = [v335 countByEnumeratingWithState:&v438 objects:v489 count:16];
              }

              while (v364);
            }

            v432 = 0u;
            v433 = 0u;
            v430 = 0u;
            v431 = 0u;
            tasks4 = [v138 tasks];
            v38 = v331;
            v32 = selfCopy;
            v332 = [tasks4 countByEnumeratingWithState:&v430 objects:v487 count:16];
            if (v332)
            {
              v329 = *v431;
              do
              {
                v170 = 0;
                do
                {
                  if (*v431 != v329)
                  {
                    objc_enumerationMutation(tasks4);
                  }

                  v334 = v170;
                  resourceKey6 = *(*(&v430 + 1) + 8 * v170);
                  strongToStrongObjectsMapTable6 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                  [strongToStrongObjectsMapTable5 setObject:strongToStrongObjectsMapTable6 forKey:resourceKey6];
                  v172 = v32->_prmTaskResources;
                  v173 = [(PSGraphCompiler *)v32 getGraphTaskHash:v138 withTask:resourceKey6];
                  v174 = [(NSMapTable *)v172 objectForKey:v173];

                  v333 = v174;
                  pointerValue2 = [v174 pointerValue];
                  if (!pointerValue2)
                  {
                    goto LABEL_214;
                  }

                  v176 = pointerValue2;
                  v428 = 0u;
                  v429 = 0u;
                  v426 = 0u;
                  v427 = 0u;
                  inputs3 = [resourceKey6 inputs];
                  v177 = [inputs3 countByEnumeratingWithState:&v426 objects:v486 count:16];
                  v353 = v177;
                  if (v177)
                  {
                    v178 = resourceKey6;
                    v345 = *v427;
                    v340 = resourceKey6;
                    v399 = strongToStrongObjectsMapTable6;
                    v350 = v176;
                    do
                    {
                      v179 = 0;
                      do
                      {
                        if (*v427 != v345)
                        {
                          objc_enumerationMutation(inputs3);
                        }

                        v370 = v179;
                        v180 = *(*(&v426 + 1) + 8 * v179);
                        v181 = __PLSLogSharedInstance(v177);
                        if (os_log_type_enabled(v181, OS_LOG_TYPE_DEBUG))
                        {
                          name13 = [v178 name];
                          uTF8String13 = [name13 UTF8String];
                          resourceKey7 = [v180 resourceKey];
                          uTF8String14 = [resourceKey7 UTF8String];
                          *buf = 136315394;
                          v482 = uTF8String13;
                          v32 = selfCopy;
                          v483 = 2080;
                          *v484 = uTF8String14;
                          _os_log_impl(&dword_25EA3A000, v181, OS_LOG_TYPE_DEBUG, "Populating input for task %s, resource %s", buf, 0x16u);
                        }

                        resolvedResourceKey2 = [v180 resolvedResourceKey];
                        v187 = objc_loadWeakRetained(&v32->_transitionManager);
                        ++v187[4];

                        v188 = objc_loadWeakRetained(&v32->_transitionMonitor);
                        [v188 lock];

                        v189 = MEMORY[0x277CCACA8];
                        resourceKey8 = [v180 resourceKey];
                        name14 = [v138 name];
                        v191 = [v189 stringWithFormat:@"%@ (Input for %@)", resourceKey8, name14];
                        v193 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v193 setTransitionStateBufferInitCurResource:v191];

                        v194 = resolvedResourceKey2;
                        v32 = selfCopy;

                        v195 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                        [v195 unlock];

                        v196 = ps_prm_opts_create();
                        v425 = 0;
                        resourceKey9 = [v180 resourceKey];
                        LODWORD(resourceKey8) = [(PSGraphCompiler *)selfCopy getStreamOptionsForKey:resourceKey9 options:&v425];

                        v198 = &v425;
                        if (!resourceKey8)
                        {
                          v198 = 0;
                        }

                        v365 = v198;
                        objd = v196;
                        -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](selfCopy, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v196, v194, v138, [v180 capacity], objc_msgSend(v180, "forwardingCount"));
                        v199 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v180, "type")}];
                        v200 = [v348 objectForKey:v199];

                        v380 = v200;
                        if (v200 && ([v200 objectForKeyedSubscript:v194], v201 = objc_claimAutoreleasedReturnValue(), v201, v201))
                        {
                          v203 = __PLSLogSharedInstance(v202);
                          if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
                          {
                            uTF8String15 = [v194 UTF8String];
                            name15 = [v178 name];
                            uTF8String16 = [name15 UTF8String];
                            name16 = [v138 name];
                            uTF8String17 = [name16 UTF8String];
                            type = [v180 type];
                            *buf = 136381443;
                            v482 = uTF8String15;
                            v483 = 2081;
                            *v484 = uTF8String16;
                            strongToStrongObjectsMapTable6 = v399;
                            *&v484[8] = 2081;
                            *&v484[10] = uTF8String17;
                            *&v484[18] = 2048;
                            *&v484[20] = type;
                            _os_log_impl(&dword_25EA3A000, v203, OS_LOG_TYPE_DEBUG, "Initializing key %{private}s in task %{private}s, graph %{private}s as a (%lu) GSP resource.", buf, 0x2Au);

                            v176 = v350;
                            v32 = selfCopy;
                          }

                          v210 = [v380 objectForKeyedSubscript:v194];
                          unsignedIntValue = [v210 unsignedIntValue];

                          v361 = v374;
                        }

                        else
                        {
                          unsignedIntValue = 0;
                          v361 = 0;
                        }

                        *v423 = 0u;
                        v424 = 0u;
                        v212 = objc_loadWeakRetained(&v32->_transitionManager);

                        if (v212)
                        {
                          v213 = objc_loadWeakRetained(&v32->_transitionManager);
                          [v213 executionSession];
                          v214 = v356 = unsignedIntValue;
                          caNameHash = [v214 caNameHash];
                          LODWORD(v423[0]) = [caNameHash unsignedIntValue];

                          caNameHash2 = [v138 caNameHash];
                          HIDWORD(v423[0]) = [caNameHash2 unsignedIntValue];

                          systemPulseStride2 = [v138 systemPulseStride];
                          v423[1] = [systemPulseStride2 unsignedLongLongValue];

                          v218 = +[PSCoreAnalyticsIDManager sharedInstance];
                          resourceKey10 = [v180 resourceKey];
                          caName = [v138 caName];
                          v221 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                          executionSession3 = [v221 executionSession];
                          caName2 = [executionSession3 caName];
                          HIDWORD(v424) = [v218 opaqueIDForResource:resourceKey10 graph:caName session:caName2 bufferExpired:1];

                          v178 = v340;
                          v224 = +[PSCoreAnalyticsIDManager sharedInstance];
                          resourceKey11 = [v180 resourceKey];
                          caName3 = [v138 caName];
                          v227 = objc_loadWeakRetained(&selfCopy->_transitionManager);
                          executionSession4 = [v227 executionSession];
                          caName4 = [executionSession4 caName];
                          DWORD2(v424) = [v224 opaqueIDForResource:resourceKey11 graph:caName3 session:caName4 bufferExpired:0];

                          v176 = v350;
                          strongToStrongObjectsMapTable6 = v399;

                          v32 = selfCopy;
                          unsignedIntValue = v356;
                        }

                        type2 = [v180 type];
                        if (type2 >= 3)
                        {
                          if (type2 != 3)
                          {
                            v242 = 0;
                            goto LABEL_151;
                          }

                          v357 = unsignedIntValue;
                          v421 = 0u;
                          v422 = 0u;
                          v419 = 0u;
                          v420 = 0u;
                          inputs4 = [v178 inputs];
                          v232 = [inputs4 countByEnumeratingWithState:&v419 objects:v485 count:16];
                          if (!v232)
                          {

LABEL_205:
                            v418 = 0;
                            resourceKey12 = [v180 resourceKey];
                            resourceKey6 = [resourceKey12 UTF8String];
                            name17 = [v138 name];
                            uTF8String18 = [name17 UTF8String];
                            name18 = [v178 name];
                            asprintf(&v418, "Could not find source input for synced key %s in graph %s, task %s", resourceKey6, uTF8String18, [name18 UTF8String]);

                            v47 = __PLSLogSharedInstance(v314);
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                            {
                              [v180 resourceKey];
                              v316 = v315 = v178;
                              uTF8String19 = [v316 UTF8String];
                              resourceKey6 = [v138 name];
                              uTF8String20 = [resourceKey6 UTF8String];
                              name19 = [v315 name];
                              uTF8String21 = [name19 UTF8String];
                              *buf = 136316162;
                              v482 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                              v483 = 1024;
                              *v484 = 2170;
                              *&v484[4] = 2080;
                              *&v484[6] = uTF8String19;
                              *&v484[14] = 2080;
                              *&v484[16] = uTF8String20;
                              *&v484[24] = 2080;
                              *&v484[26] = uTF8String21;
                              _os_log_impl(&dword_25EA3A000, v47, OS_LOG_TYPE_FAULT, "%s:%d Could not find source input for synced key %s in graph %s, task %s", buf, 0x30u);
                            }

                            v321 = OSLogFlushBuffers();
                            if (v321)
                            {
                              v47 = v321;
                              v285 = __PLSLogSharedInstance(v321);
                              if (!os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                              {
                                goto LABEL_211;
                              }

                              goto LABEL_210;
                            }

LABEL_208:
                            usleep(0x1E8480u);
                            goto LABEL_212;
                          }

                          v233 = v232;
                          v336 = v194;
                          v234 = 0;
                          unsignedIntValue2 = 0;
                          v235 = *v420;
                          do
                          {
                            for (n = 0; n != v233; ++n)
                            {
                              if (*v420 != v235)
                              {
                                objc_enumerationMutation(inputs4);
                              }

                              v237 = *(*(&v419 + 1) + 8 * n);
                              resourceKey13 = [v237 resourceKey];
                              sourceInputResourceKey = [v180 sourceInputResourceKey];
                              v240 = [resourceKey13 isEqualToString:sourceInputResourceKey];

                              if (v240)
                              {
                                v241 = [v399 objectForKey:v237];
                                unsignedIntValue2 = [v241 unsignedIntValue];

                                v234 = 1;
                              }
                            }

                            v233 = [inputs4 countByEnumeratingWithState:&v419 objects:v485 count:16];
                          }

                          while (v233);

                          v138 = pointerValue;
                          v178 = v340;
                          strongToStrongObjectsMapTable6 = v399;
                          v176 = v350;
                          v194 = v336;
                          unsignedIntValue = v357;
                          if ((v234 & 1) == 0)
                          {
                            goto LABEL_205;
                          }
                        }

                        else
                        {
                          unsignedIntValue2 = -1;
                        }

                        v242 = ps_task_resources_add_input(v176, [v180 type], unsignedIntValue2, objd, v361, unsignedIntValue, v365, v423, 1);
                        v32 = selfCopy;
LABEL_151:
                        [v180 setBufferExpiryOffset:{-[PSGraphCompiler populateBufferExpiryOffset:forKey:](v32, "populateBufferExpiryOffset:forKey:", *(*(v176 + 40) + 8 * (*(v176 + 12) - 1)), v194)}];
                        v243 = [strongToStrongObjectsMapTable6 objectForKey:v180];

                        if (v243)
                        {
                          v418 = 0;
                          resourceKey14 = [v180 resourceKey];
                          resourceKey6 = [resourceKey14 UTF8String];
                          name20 = [v138 name];
                          uTF8String22 = [name20 UTF8String];
                          name21 = [v178 name];
                          asprintf(&v418, "Found a duplicate PSTaskInput for key %s in graph %s, task %s", resourceKey6, uTF8String22, [name21 UTF8String]);

                          v47 = __PLSLogSharedInstance(v302);
                          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                          {
                            [v180 resourceKey];
                            v304 = v303 = v178;
                            uTF8String23 = [v304 UTF8String];
                            resourceKey6 = [v138 name];
                            uTF8String24 = [resourceKey6 UTF8String];
                            name22 = [v303 name];
                            uTF8String25 = [name22 UTF8String];
                            *buf = 136316162;
                            v482 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                            v483 = 1024;
                            *v484 = 2186;
                            *&v484[4] = 2080;
                            *&v484[6] = uTF8String23;
                            *&v484[14] = 2080;
                            *&v484[16] = uTF8String24;
                            *&v484[24] = 2080;
                            *&v484[26] = uTF8String25;
                            _os_log_impl(&dword_25EA3A000, v47, OS_LOG_TYPE_FAULT, "%s:%d Found a duplicate PSTaskInput for key %s in graph %s, task %s", buf, 0x30u);
                          }

                          v309 = OSLogFlushBuffers();
                          if (v309)
                          {
                            v47 = v309;
                            v285 = __PLSLogSharedInstance(v309);
                            if (!os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_211;
                            }

LABEL_210:
                            *buf = 136315394;
                            v482 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                            v483 = 1024;
                            *v484 = v47;
                            _os_log_impl(&dword_25EA3A000, v285, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                            goto LABEL_211;
                          }

                          goto LABEL_208;
                        }

                        v244 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v242];
                        [strongToStrongObjectsMapTable6 setObject:v244 forKey:v180];

                        ps_prm_opts_destroy(objd);
                        v179 = v370 + 1;
                      }

                      while ((v370 + 1) != v353);
                      v177 = [inputs3 countByEnumeratingWithState:&v426 objects:v486 count:16];
                      v353 = v177;
                    }

                    while (v177);
                  }

                  v170 = v334 + 1;
                  v38 = v331;
                }

                while (v334 + 1 != v332);
                v332 = [tasks4 countByEnumeratingWithState:&v430 objects:v487 count:16];
              }

              while (v332);
            }

            v416 = 0u;
            v417 = 0u;
            v414 = 0u;
            v415 = 0u;
            tasks5 = [v138 tasks];
            v341 = [tasks5 countByEnumeratingWithState:&v414 objects:v480 count:16];
            if (v341)
            {
              v346 = *v415;
              do
              {
                v245 = 0;
                do
                {
                  if (*v415 != v346)
                  {
                    objc_enumerationMutation(tasks5);
                  }

                  v354 = v245;
                  v246 = *(*(&v414 + 1) + 8 * v245);
                  v247 = [strongToStrongObjectsMapTable5 objectForKey:v246];
                  v248 = v32->_prmTaskResources;
                  v249 = [(PSGraphCompiler *)v32 getGraphTaskHash:pointerValue withTask:v246];
                  v250 = [(NSMapTable *)v248 objectForKey:v249];

                  v351 = v250;
                  obje = [v250 pointerValue];
                  if (!obje)
                  {
                    [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:v246];
                  }

                  v412 = 0u;
                  v413 = 0u;
                  v410 = 0u;
                  v411 = 0u;
                  outputs3 = [v246 outputs];
                  v366 = [outputs3 countByEnumeratingWithState:&v410 objects:v479 count:16];
                  if (v366)
                  {
                    v362 = *v411;
                    v381 = v246;
                    do
                    {
                      for (ii = 0; ii != v366; ++ii)
                      {
                        if (*v411 != v362)
                        {
                          objc_enumerationMutation(outputs3);
                        }

                        v252 = *(*(&v410 + 1) + 8 * ii);
                        retainedInputs3 = [v252 retainedInputs];
                        v254 = [retainedInputs3 count];

                        if (v254)
                        {
                          v371 = ii;
                          v255 = [strongToStrongObjectsMapTable objectForKey:v252];
                          unsignedIntValue3 = [v255 unsignedIntValue];

                          v408 = 0u;
                          v409 = 0u;
                          v406 = 0u;
                          v407 = 0u;
                          retainedInputs4 = [v252 retainedInputs];
                          v256 = [retainedInputs4 countByEnumeratingWithState:&v406 objects:v478 count:16];
                          if (!v256)
                          {
                            goto LABEL_177;
                          }

                          v257 = v256;
                          v400 = *v407;
                          while (1)
                          {
                            for (jj = 0; jj != v257; ++jj)
                            {
                              if (*v407 != v400)
                              {
                                objc_enumerationMutation(retainedInputs4);
                              }

                              resourceKey6 = *(*(&v406 + 1) + 8 * jj);
                              v259 = [v247 objectForKey:resourceKey6];

                              v80 = v381;
                              if (!v259)
                              {
                                v423[0] = 0;
                                v49ResourceKey = [resourceKey6 resourceKey];
                                uTF8String26 = [v49ResourceKey UTF8String];
                                name23 = [v381 name];
                                uTF8String27 = [name23 UTF8String];
                                name24 = [pointerValue name];
                                asprintf(v423, "No input found matching retained bundle input %s for task %s, graph %s", uTF8String26, uTF8String27, [name24 UTF8String]);

                                v47 = __PLSLogSharedInstance(v291);
                                if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
                                {
                                  resourceKey6 = [resourceKey6 resourceKey];
                                  uTF8String28 = [resourceKey6 UTF8String];
                                  name25 = [v381 name];
                                  uTF8String29 = [name25 UTF8String];
                                  name26 = [pointerValue name];
                                  uTF8String30 = [name26 UTF8String];
                                  *buf = 136316162;
                                  v482 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                                  v483 = 1024;
                                  *v484 = 2215;
                                  *&v484[4] = 2080;
                                  *&v484[6] = uTF8String28;
                                  *&v484[14] = 2080;
                                  *&v484[16] = uTF8String29;
                                  *&v484[24] = 2080;
                                  *&v484[26] = uTF8String30;
                                  _os_log_impl(&dword_25EA3A000, v47, OS_LOG_TYPE_FAULT, "%s:%d No input found matching retained bundle input %s for task %s, graph %s", buf, 0x30u);
                                }

                                v297 = OSLogFlushBuffers();
                                if (!v297)
                                {
                                  goto LABEL_208;
                                }

                                v47 = v297;
                                v285 = __PLSLogSharedInstance(v297);
                                if (os_log_type_enabled(v285, OS_LOG_TYPE_ERROR))
                                {
LABEL_202:
                                  *buf = v337;
                                  v482 = "[PSGraphCompiler createPRMInstancesForTransitionBlock:]";
                                  v483 = 1024;
                                  *v484 = v47;
                                  _os_log_impl(&dword_25EA3A000, v285, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                                }

LABEL_211:

LABEL_212:
                                abort_with_reason();
LABEL_213:
                                [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:v47];
LABEL_214:
                                [(PSGraphCompiler *)buf createPRMInstancesForTransitionBlock:resourceKey6];
                              }

                              inputs5 = [v381 inputs];
                              v261 = [inputs5 containsObject:resourceKey6];

                              if ((v261 & 1) == 0)
                              {
                                goto LABEL_187;
                              }

                              v262 = [v247 objectForKey:resourceKey6];
                              unsignedIntValue4 = [v262 unsignedIntValue];

                              v264 = ps_prm_opts_create();
                              resolvedResourceKey3 = [resourceKey6 resolvedResourceKey];
                              -[PSGraphCompiler populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:](selfCopy, "populateReaderOpts:forKey:forGraph:withCapacity:withForwardingCount:", v264, resolvedResourceKey3, pointerValue, [resourceKey6 capacity], objc_msgSend(resourceKey6, "forwardingCount"));

                              v266 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                              [v266 lock];

                              v267 = MEMORY[0x277CCACA8];
                              v49ResourceKey2 = [resourceKey6 resourceKey];
                              name27 = [pointerValue name];
                              v269 = [v267 stringWithFormat:@"%@ (Retained input for %@)", v49ResourceKey2, name27];
                              v271 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                              [v271 setTransitionStateBufferInitCurResource:v269];

                              v272 = objc_loadWeakRetained(&selfCopy->_transitionMonitor);
                              [v272 unlock];

                              ps_task_resource_attach_retained_input(obje, v264, unsignedIntValue4, unsignedIntValue3);
                              ps_prm_opts_destroy(v264);
                            }

                            v257 = [retainedInputs4 countByEnumeratingWithState:&v406 objects:v478 count:16];
                            if (!v257)
                            {
LABEL_177:

                              ii = v371;
                              break;
                            }
                          }
                        }
                      }

                      v366 = [outputs3 countByEnumeratingWithState:&v410 objects:v479 count:16];
                    }

                    while (v366);
                  }

                  v245 = v354 + 1;
                  v32 = selfCopy;
                }

                while (v354 + 1 != v341);
                v38 = v331;
                v341 = [tasks5 countByEnumeratingWithState:&v414 objects:v480 count:16];
              }

              while (v341);
            }

            v87 = v327 + 1;
            addedGraphs3 = v323;
            v85 = v324;
            v40 = strongToStrongObjectsMapTable;
            v86 = v322;
          }

          while (v327 + 1 != v324);
          v85 = [v323 countByEnumeratingWithState:&v454 objects:v493 count:16];
        }

        while (v85);
      }

      blockCopy = v38;
    }
  }
}

- (unint64_t)populateBufferExpiryOffset:(ps_task_input_resource_s *)offset forKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (!offset)
  {
    [PSGraphCompiler populateBufferExpiryOffset:buf forKey:keyCopy];
  }

  v7 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  info = 0;
  if (mach_timebase_info(&info))
  {
    [PSGraphCompiler populateBufferExpiryOffset:forKey:];
  }

  resourceClass = [v7 resourceClass];
  if (resourceClass - 7 < 3 || resourceClass == 11)
  {
    resourceClass = [v7 provider];
    if (resourceClass <= 7 && ((1 << resourceClass) & 0x92) != 0)
    {
      resourceClass = [v7 framerate];
      if (resourceClass)
      {
        v11 = [PSRCConstants getCameraDepthForKey:keyCopy];
        v12 = [PSRCConstants getReaderDepthForKey:keyCopy]+ v11;
        v13 = [PSRCConstants getWriterDepthForKey:keyCopy];
        v14 = v12 + v13 + [v7 retainedISPRCCount] - 1;
        resourceClass = [v7 framerate];
        v15 = v14 * (0x3B9ACA00 / resourceClass) * info.denom;
LABEL_16:
        v16 = v15 / info.numer;
        goto LABEL_18;
      }
    }
  }

  else if (resourceClass == 12)
  {
    v15 = 2000000000 * info.denom;
    goto LABEL_16;
  }

  v16 = -1;
LABEL_18:
  v17 = __PLSLogSharedInstance(resourceClass);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v7 key];
    uTF8String = [v18 UTF8String];
    *buf = 136315394;
    v23 = uTF8String;
    v24 = 2048;
    v25 = v16;
    _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_DEBUG, "Setting Expiry Offset for key (%s) as (%llu)", buf, 0x16u);
  }

  ps_task_input_resource_set_buffer_expiry_offset(offset, v16);
  return v16;
}

+ (void)populateOptsMetadataType:(PSResourceManagerOptions *)type forProviderType:(int)providerType
{
  has_iosurface_metadata = ps_resource_stream_provider_has_iosurface_metadata();
  has_cfdata_metadata = ps_resource_stream_provider_has_cfdata_metadata();
  has_no_metadata = ps_resource_stream_provider_has_no_metadata();
  if ((has_iosurface_metadata | has_cfdata_metadata) & 1) != 0 || (has_no_metadata)
  {
    if ((has_iosurface_metadata | has_cfdata_metadata))
    {
      v9 = has_iosurface_metadata;
    }

    else
    {
      v9 = 2;
    }

    ps_prm_opts_set_resource_metadata_type(type, v9);
  }

  else
  {
    v10 = [PSGraphCompiler populateOptsMetadataType:providerType forProviderType:?];
    [(PSGraphCompiler *)v10 populateWriterOpts:v11 forKey:v12 withCapacity:v13 forGraph:v14 withResStream:v15 withContext:v16 retainedBufferIndexers:v17 withGSM:v20, v21];
  }
}

+ (void)populateWriterOpts:(PSResourceManagerOptions *)opts forKey:(id)key withCapacity:(unint64_t)capacity forGraph:(id)graph withResStream:(id)stream withContext:(id)context retainedBufferIndexers:(id)indexers withGSM:(ps_gsm_s *)self0
{
  v81 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  graphCopy = graph;
  streamCopy = stream;
  contextCopy = context;
  indexersCopy = indexers;
  v20 = keyCopy;
  if (([v20 isEqualToString:PLSResourceKeyGCLEDSyncLeft[0]]& 1) != 0)
  {
    v21 = 1;
  }

  else
  {
    v21 = [v20 isEqualToString:PLSResourceKeyGCLEDSyncRight[0]];
  }

  if (capacity < 2)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (!streamCopy)
  {
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_72;
  }

  [streamCopy options];
  v24 = v23;
  options = [streamCopy options];
  if (!v24)
  {
LABEL_72:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_73;
  }

  v10 = options;
  if (!options)
  {
LABEL_73:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_74;
  }

  if (!capacity)
  {
LABEL_74:
    +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
    goto LABEL_75;
  }

  if (capacity >= 0x3E9)
  {
LABEL_75:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
    goto LABEL_76;
  }

  if ((v22 & 1) == 0)
  {
LABEL_76:
    [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
LABEL_77:
    v69 = 0;
    v54 = asprintf(&v69, "Writer depth (%u) was greater than reader depth (%u) for resource %s", v10, v27, [v20 UTF8String]);
    v55 = __PLSLogSharedInstance(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      v57 = v70;
      v56 = HIDWORD(v70);
      uTF8String = [v20 UTF8String];
      *buf = 136316162;
      v72 = "+[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:]";
      v73 = 1024;
      v74 = 2415;
      v75 = 1024;
      v76 = v56;
      v77 = 1024;
      v78 = v57;
      v79 = 2080;
      v80 = uTF8String;
      _os_log_impl(&dword_25EA3A000, v55, OS_LOG_TYPE_FAULT, "%s:%d Writer depth (%u) was greater than reader depth (%u) for resource %s", buf, 0x28u);
    }

    v59 = OSLogFlushBuffers();
    if (v59)
    {
      v60 = v59;
      v20 = __PLSLogSharedInstance(v59);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v72 = "+[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:]";
        v73 = 1024;
        v74 = v60;
        _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    resourceClass = abort_with_reason();
LABEL_85:
    if (resourceClass != 5)
    {
      goto LABEL_93;
    }

    resourceClass = +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
    goto LABEL_87;
  }

  ps_prm_opts_set_return_capacity(opts, capacity);
  ps_prm_opts_set_resource_key(opts, [v20 UTF8String]);
  ps_prm_opts_set_graph(opts, graphCopy);
  ps_prm_opts_set_resource_class(opts, [streamCopy resourceClass]);
  ps_prm_opts_set_creation_mode(opts, v24);
  ps_prm_opts_set_resource_avail_context(opts, m);
  if ([contextCopy forceAllResourcesLocal])
  {
    v26 = 1;
  }

  else
  {
    v26 = v10;
  }

  ps_prm_opts_set_storage_mode(opts, v26);
  v70 = 0;
  [PSConstants getBufferDepthsForKey:v20 writerDepth:&v70 + 4 readerDepth:&v70];
  v27 = v70;
  LODWORD(v10) = HIDWORD(v70);
  if (HIDWORD(v70) > v70)
  {
    goto LABEL_77;
  }

  ps_prm_opts_set_buffer_depth(opts, v70, SHIDWORD(v70));
  resourceClass = [streamCopy resourceClass];
  if (resourceClass <= 7)
  {
    if (resourceClass <= 3)
    {
      if (resourceClass != 1)
      {
        if (resourceClass == 2)
        {
          ps_prm_opts_set_object_stream(opts, streamCopy);
          goto LABEL_70;
        }

        if (resourceClass == 3)
        {
          ps_prm_opts_set_opaque_stream(opts, streamCopy);
LABEL_70:
          +[PSGraphCompiler populateOptsMetadataType:forProviderType:](PSGraphCompiler, "populateOptsMetadataType:forProviderType:", opts, [streamCopy provider]);

          return;
        }

        goto LABEL_93;
      }

      v31 = [streamCopy length];
LABEL_48:
      ps_prm_opts_set_data_size(opts, v31 * capacity);
      goto LABEL_70;
    }

    if (resourceClass <= 5)
    {
      if (resourceClass == 4)
      {
        v32 = streamCopy;
        capacity = v32;
        if (v24 == 1)
        {
          ps_prm_opts_set_iosurface_width(opts, [v32 width]);
          ps_prm_opts_set_iosurface_height(opts, [capacity height]);
          ps_prm_opts_set_iosurface_pixelformat(opts, [capacity pixelFormat]);
          ioSurfaceProperties = [capacity ioSurfaceProperties];

          if (ioSurfaceProperties)
          {
            ioSurfaceProperties2 = [capacity ioSurfaceProperties];

            ps_prm_opts_set_iosurface_properties(opts, ioSurfaceProperties2);
          }
        }

        else
        {
          v44 = [v32 key];
          v45 = [indexersCopy objectForKey:v44];

          if (!v45)
          {
            v45 = [[PSBufferIndexer alloc] initWithResourceStream:capacity];
            [indexersCopy setObject:v45 forKey:v20];
          }

          ps_prm_opts_set_iosurface_allocator(opts, allocatedIOSurfaceBufferIndexer, v45);
        }

        goto LABEL_69;
      }

      goto LABEL_85;
    }

    if (resourceClass != 7)
    {
LABEL_87:
      if (resourceClass == 6)
      {
        +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
        goto LABEL_89;
      }

LABEL_93:
      [PSGraphCompiler populateWriterOpts:buf forKey:v20 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
      goto LABEL_94;
    }

    capacity = streamCopy;
    ps_prm_opts_set_is_camera_stream(opts, 0);
    ps_prm_opts_set_use_prm_camera_reader(opts, 0);
    if (v24 == 1)
    {
      ps_prm_opts_set_cvpixelbuffer_width(opts, [capacity width]);
      ps_prm_opts_set_cvpixelbuffer_height(opts, [capacity height]);
      ps_prm_opts_set_cvpixelbuffer_pixelformat(opts, [capacity pixelFormat]);
      ioSurfaceProperties3 = [capacity ioSurfaceProperties];

      if (ioSurfaceProperties3)
      {
        ioSurfaceProperties4 = [capacity ioSurfaceProperties];

        ps_prm_opts_set_cvpixelbuffer_properties(opts, ioSurfaceProperties4);
      }
    }

    else
    {
      v46 = [capacity key];
      v47 = [indexersCopy objectForKey:v46];

      if (!v47)
      {
        v47 = [[PSBufferIndexer alloc] initWithResourceStream:capacity];
        [indexersCopy setObject:v47 forKey:v20];
      }

      ps_prm_opts_set_cvpixelbuffer_allocator(opts, allocatedCVPixelBufferIndexer, v47);
    }

    [capacity provider];
    if (ps_resource_stream_provider_has_iosurface_metadata())
    {
      metadataIOSurfaceProperties = [capacity metadataIOSurfaceProperties];

      if (!metadataIOSurfaceProperties)
      {
LABEL_94:
        [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
        goto LABEL_95;
      }

      metadataIOSurfaceProperties2 = [capacity metadataIOSurfaceProperties];

      ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties2);
    }

    goto LABEL_69;
  }

  if (resourceClass <= 9)
  {
    if (resourceClass == 8)
    {
      capacity = streamCopy;
      ps_prm_opts_set_is_camera_stream(opts, 0);
      ps_prm_opts_set_use_prm_camera_reader(opts, 0);
      if (v24 == 1)
      {
        ps_prm_opts_set_cvdatabuffer_width(opts, [capacity width]);
        ps_prm_opts_set_cvdatabuffer_height(opts, [capacity height]);
        ps_prm_opts_set_cvdatabuffer_pixelformat(opts, [capacity pixelFormat]);
      }

      else
      {
        v50 = [capacity key];
        v51 = [indexersCopy objectForKey:v50];

        if (!v51)
        {
          v51 = [[PSBufferIndexer alloc] initWithResourceStream:capacity];
          [indexersCopy setObject:v51 forKey:v20];
        }

        ps_prm_opts_set_cvdatabuffer_allocator(opts, allocatedCVDataBufferIndexer, v51);
      }

      [capacity provider];
      if (ps_resource_stream_provider_has_iosurface_metadata())
      {
        metadataIOSurfaceProperties3 = [capacity metadataIOSurfaceProperties];

        if (!metadataIOSurfaceProperties3)
        {
LABEL_95:
          [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
          goto LABEL_96;
        }

        metadataIOSurfaceProperties4 = [capacity metadataIOSurfaceProperties];

        ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties4);
      }
    }

    else
    {
      capacity = streamCopy;
      ps_prm_opts_set_is_camera_stream(opts, 0);
      ps_prm_opts_set_use_prm_camera_reader(opts, 0);
      if (v24 != 1)
      {
LABEL_89:
        +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
        goto LABEL_90;
      }

      ps_prm_opts_set_jasperbuffer_width(opts, [capacity width]);
      ps_prm_opts_set_jasperbuffer_height(opts, [capacity height]);
      ps_prm_opts_set_jasperbuffer_pixelformat(opts, [capacity pixelFormat]);
      [capacity provider];
      if (ps_resource_stream_provider_has_iosurface_metadata())
      {
        metadataIOSurfaceProperties5 = [capacity metadataIOSurfaceProperties];

        if (!metadataIOSurfaceProperties5)
        {
LABEL_96:
          [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
          goto LABEL_97;
        }

        metadataIOSurfaceProperties6 = [capacity metadataIOSurfaceProperties];

        ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties6);
      }
    }

    goto LABEL_69;
  }

  if (resourceClass == 10)
  {
    v39 = streamCopy;
    if (v24 != 2)
    {
LABEL_90:
      +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
      goto LABEL_91;
    }

    capacity = v39;
    allocateIOSurfaceRefArray = [v39 allocateIOSurfaceRefArray];
    if (!allocateIOSurfaceRefArray)
    {
LABEL_92:
      +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
      goto LABEL_93;
    }

    v41 = allocateIOSurfaceRefArray;
    ps_prm_opts_set_buffer_depth(opts, 0, [capacity numberOfBufferSet]);
    ps_prm_opts_set_return_capacity(opts, [capacity numberOfBufferSet]);
    ps_prm_opts_set_storage_mode(opts, 2);
    ps_prm_opts_set_ane_chained_stream(opts, v41, [capacity numberOfSurfaceInSet], objc_msgSend(capacity, "firstEventValue"), objc_msgSend(capacity, "metadataSurfaceIndex"), objc_msgSend(capacity, "eventPort"));
    goto LABEL_69;
  }

  if (resourceClass != 11)
  {
    if (resourceClass == 12)
    {
      v29 = streamCopy;
      ps_prm_opts_set_fastpath_stream(opts, v29);
      v30 = [v29 length];

      v31 = v30;
      goto LABEL_48;
    }

    goto LABEL_93;
  }

  capacity = streamCopy;
  ps_prm_opts_set_is_camera_stream(opts, 0);
  ps_prm_opts_set_use_prm_camera_reader(opts, 0);
  if (v24 != 1)
  {
LABEL_91:
    +[PSGraphCompiler populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:];
    goto LABEL_92;
  }

  ps_prm_opts_set_pearlbuffer_width(opts, [capacity width], objc_msgSend(capacity, "dxWidth"), objc_msgSend(capacity, "dyWidth"), objc_msgSend(capacity, "scoreWidth"));
  ps_prm_opts_set_pearlbuffer_height(opts, [capacity height], objc_msgSend(capacity, "dxHeight"), objc_msgSend(capacity, "dyHeight"), objc_msgSend(capacity, "scoreHeight"));
  ps_prm_opts_set_pearlbuffer_pixelformat(opts, [capacity pixelFormat], objc_msgSend(capacity, "dxPixelFormat"), objc_msgSend(capacity, "dyPixelFormat"), objc_msgSend(capacity, "scorePixelFormat"));
  ps_prm_opts_set_pearlbuffer_has_attachments(opts, [capacity hasAttachments]);
  [capacity provider];
  if ((ps_resource_stream_provider_has_iosurface_metadata() & 1) == 0)
  {
LABEL_69:

    goto LABEL_70;
  }

  metadataIOSurfaceProperties7 = [capacity metadataIOSurfaceProperties];

  if (metadataIOSurfaceProperties7)
  {
    metadataIOSurfaceProperties8 = [capacity metadataIOSurfaceProperties];

    ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties(opts, metadataIOSurfaceProperties8);
    goto LABEL_69;
  }

LABEL_97:
  v61 = [PSGraphCompiler populateWriterOpts:buf forKey:capacity withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
  [(PSGraphCompiler *)v61 populateReaderOpts:v62 forKey:v63 forGraph:v64 withCapacity:v65 withForwardingCount:v66, v67];
}

- (void)populateReaderOpts:(PSResourceManagerOptions *)opts forKey:(id)key forGraph:(id)graph withCapacity:(unint64_t)capacity withForwardingCount:(unint64_t)count
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  graphCopy = graph;
  v14 = [(PSContext *)self->_context resourceStreamForKey:keyCopy];
  if (!v14)
  {
    [PSGraphCompiler populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:? withForwardingCount:?];
    goto LABEL_36;
  }

  v15 = v14;
  if (![v14 resourceClass])
  {
LABEL_36:
    [PSGraphCompiler populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:? withForwardingCount:?];
LABEL_37:
    [PSGraphCompiler populateReaderOpts:keyCopy forKey:? forGraph:? withCapacity:? withForwardingCount:?];
  }

  if (![v15 options])
  {
    goto LABEL_37;
  }

  ps_prm_opts_set_return_capacity(opts, capacity);
  ps_prm_opts_set_resource_key(opts, [keyCopy UTF8String]);
  ps_prm_opts_set_graph(opts, graphCopy);
  ps_prm_opts_set_resource_class(opts, [v15 resourceClass]);
  ps_prm_opts_set_storage_mode(opts, [v15 options]);
  ps_prm_opts_set_forwarding_count(opts, count);
  resourceClass = [v15 resourceClass];
  provider = 9;
  if (resourceClass <= 0xB && ((1 << resourceClass) & 0xB80) != 0)
  {
    provider = [v15 provider];
  }

  if ([v15 resourceClass] == 12)
  {
    is_local_replay_session = ps_prm_is_local_replay_session(self->_prm_mgr);
    if ([keyCopy isEqualToString:PLSResourceKeyFastMagnetometer[0]])
    {
      v19 = is_local_replay_session == 0;
      v20 = 3;
      v21 = 5;
    }

    else
    {
      if (([keyCopy isEqualToString:PLSResourceKeyGCIMULeft[0]] & 1) == 0 && !objc_msgSend(keyCopy, "isEqualToString:", PLSResourceKeyGCIMURight[0]))
      {
        v30 = [keyCopy containsString:PLSResourceKeyAccessoryTrackingPrefix[0]];
        if (v30)
        {
          if (is_local_replay_session)
          {
            v20 = 7;
          }

          else
          {
            v20 = 6;
          }
        }

        else
        {
          v31 = __PLSLogSharedInstance(v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136315138;
            uTF8String = [keyCopy UTF8String];
            _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "Unknown fastpath resource with key:%s", &v32, 0xCu);
          }

          v20 = 0;
        }

        goto LABEL_15;
      }

      v19 = is_local_replay_session == 0;
      v20 = 2;
      v21 = 4;
    }

    if (!v19)
    {
      v20 = v21;
    }

LABEL_15:
    ps_prm_opts_set_fastpath_data_type(opts, v20);
  }

  [PSGraphCompiler populateOptsMetadataType:opts forProviderType:provider];
  is_rc = ps_resource_stream_provider_is_rc();
  if (!is_rc)
  {
    ps_prm_opts_set_is_camera_stream(opts, 0);
    goto LABEL_26;
  }

  v23 = __PLSLogSharedInstance(is_rc);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    uTF8String2 = [keyCopy UTF8String];
    v25 = ps_resource_stream_provider_representation();
    v32 = 136315394;
    uTF8String = uTF8String2;
    v34 = 2080;
    v35 = v25;
    _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "Setting reader instance %s as a camera stream with provider type %s", &v32, 0x16u);
  }

  v26 = 1;
  ps_prm_opts_set_is_camera_stream(opts, 1);
  if (provider <= 8 && ((1 << provider) & 0x124) != 0)
  {
    v27 = +[PLSSettings currentSettings];
    if ([v27 enableHybridLoop])
    {
      v28 = +[PSExecutionSessionWorkarounds sharedInstance];
      v29 = [v28 shouldUsePRMCameraForSuperframe:keyCopy];

      if (v29)
      {
        v26 = 1;
        goto LABEL_27;
      }
    }

    else
    {
    }

LABEL_26:
    v26 = 0;
  }

LABEL_27:
  ps_prm_opts_set_use_prm_camera_reader(opts, v26);
  ps_prm_opts_set_provider_type(opts, provider);
  ps_prm_opts_set_ariadne_id(opts, [PLSDevice getAriadneID:keyCopy]+ 4);
}

- (void)initializeGroupedTriggersForTransitionBlock:(id)block
{
  blockCopy = block;
  addedGraphs = [blockCopy addedGraphs];
  v6 = [addedGraphs count];

  if (v6)
  {
    v8 = __PLSLogSharedInstance(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Initializing GSTs for transition block.", v9, 2u);
    }
  }

  [(PSGraphCompiler *)self createGroupedTriggersForTransitionBlock:blockCopy];
}

- (void)createGroupedTriggersOverXPCForTransitionBlock:(id)block
{
  v94 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v76 = [(PSGraphCompiler *)self getProducerOutputRates:?];
  v5 = xpc_dictionary_create(0, 0, 0);
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  name = [executionSession name];
  uTF8String = [name UTF8String];
  v10 = getpid();
  xdict = v5;
  populateGraphSetInfo(v5, 1uLL, uTF8String, v10);

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  addedGraphs = [blockCopy addedGraphs];
  v12 = [addedGraphs countByEnumeratingWithState:&v84 objects:v93 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v85;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v16 = *(*(&v84 + 1) + 8 * i);
        tasks = [v16 tasks];
        v18 = [tasks count];

        if (v18)
        {
          [(PSGraphCompiler *)self setThreadPoolIDForGraph:v16 withTransitionBlock:blockCopy];
          [(PSGraphCompiler *)self addGraphToThreadPool:v16];
          v19 = objc_loadWeakRetained(&self->_transitionManager);
          executionSession2 = [v19 executionSession];
          shouldUseOptimizedVsyncPath = [executionSession2 shouldUseOptimizedVsyncPath];

          if ((shouldUseOptimizedVsyncPath & 1) == 0)
          {
            v22 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v22 lock];

            v23 = MEMORY[0x277CCACA8];
            name2 = [v16 name];
            v25 = [v23 stringWithFormat:@"%@", name2];
            v26 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v26 setTransitionStateGroupedTriggersInitCurGST:v25];

            v27 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v27 unlock];

            v28 = [(PSGraphCompiler *)self setupCadenceGroupedTriggerInfoForGraph:v16 withProducerOutputRates:v76 withTransitionBlock:blockCopy withGraphInfoDict:xdict];
            if ((v28 & 1) == 0)
            {
              v29 = __PLSLogSharedInstance(v28);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                name3 = [v16 name];
                *buf = 138477827;
                v89 = name3;
                _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEBUG, "Falling back to legacy GST for graph %{private}@", buf, 0xCu);
              }

              [(PSGraphCompiler *)self setupLegacyGroupedTriggerInfoForGraph:v16 withProducerOutputRates:v76 withTransitionBlock:blockCopy withGraphInfoDict:xdict];
            }
          }
        }
      }

      v13 = [addedGraphs countByEnumeratingWithState:&v84 objects:v93 count:16];
    }

    while (v13);
  }

  v31 = xpc_dictionary_get_value(xdict, "graphs_array");
  count = xpc_array_get_count(v31);
  v33 = objc_loadWeakRetained(&self->_transitionManager);
  executionSession3 = [v33 executionSession];
  shouldUseOptimizedVsyncPath2 = [executionSession3 shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath2 & 1) != 0 || !count)
  {
LABEL_40:
  }

  else
  {
    v37 = __PLSLogSharedInstance(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = getpid();
      *buf = 67109120;
      LODWORD(v89) = v38;
      _os_log_impl(&dword_25EA3A000, v37, OS_LOG_TYPE_DEFAULT, "Sending a message to the listener xpc service for client %d", buf, 8u);
    }

    v73 = v31;

    v39 = objc_loadWeakRetained(&self->_transitionManager);
    executionSession4 = [v39 executionSession];
    systemGraphSession = [executionSession4 systemGraphSession];
    error_out = 0;
    v42 = xpc_session_send_message_with_reply_sync(systemGraphSession, xdict, &error_out);
    v43 = error_out;

    v78 = v42;
    if (v42 || !v43)
    {
      v72 = v43;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = [blockCopy addedGraphs];
      v44 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
      if (!v44)
      {
        goto LABEL_39;
      }

      v45 = v44;
      v46 = *v80;
      while (1)
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v80 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = *(*(&v79 + 1) + 8 * j);
          name4 = [v48 name];
          v50 = xpc_dictionary_get_value(v78, [name4 UTF8String]);

          if (!v50)
          {
            v66 = __PLSLogSharedInstance(v51);
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
            {
              name5 = [v48 name];
              *buf = 138477827;
              v89 = name5;
              _os_log_impl(&dword_25EA3A000, v66, OS_LOG_TYPE_DEBUG, "GST not assigned to graph %{private}@", buf, 0xCu);
            }

LABEL_36:

            goto LABEL_37;
          }

          uint64 = xpc_dictionary_get_uint64(v50, "gst_idx");
          v53 = __PLSLogSharedInstance(uint64);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            name6 = [v48 name];
            uTF8String2 = [name6 UTF8String];
            *buf = 134218242;
            v89 = uint64;
            v90 = 2080;
            v91 = uTF8String2;
            _os_log_impl(&dword_25EA3A000, v53, OS_LOG_TYPE_DEBUG, "Received a gst index = %llu for graph %s", buf, 0x16u);
          }

          if (uint64 == 0xFFFFFFFF)
          {
            [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:v48];
LABEL_42:
            [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:?];
          }

          v56 = objc_loadWeakRetained(&self->_transitionManager);
          executionSession5 = [v56 executionSession];
          gst = ps_gsm_get_gst([executionSession5 gsm], uint64);

          graphGSTMap = self->_graphGSTMap;
          v60 = [MEMORY[0x277CCAE60] valueWithPointer:gst];
          [(NSMapTable *)graphGSTMap setObject:v60 forKey:v48];

          if ([v48 executionType] == 1)
          {
            uint64 = *([v48 executionContext] + 8);
            v61 = xpc_dictionary_get_uint64(v50, "shared_trigger_idx");
            if (v61 == 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            v62 = v61;
            v63 = __PLSLogSharedInstance(v61);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              name7 = [v48 name];
              uTF8String3 = [name7 UTF8String];
              *buf = 134218242;
              v89 = v62;
              v90 = 2080;
              v91 = uTF8String3;
              _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_DEBUG, "Received a sharedTriggerIndex = %llu for graph %s", buf, 0x16u);
            }

            v66 = objc_loadWeakRetained(&self->_transitionManager);
            executionSession6 = [v66 executionSession];
            *(uint64 + 352) = ps_gsm_get_shared_trigger([executionSession6 gsm], v62);

            goto LABEL_36;
          }

LABEL_37:
        }

        v45 = [obj countByEnumeratingWithState:&v79 objects:v92 count:16];
        if (!v45)
        {
LABEL_39:

          v31 = v73;
          goto LABEL_40;
        }
      }
    }

    v69 = [(PSGraphCompiler *)buf createGroupedTriggersOverXPCForTransitionBlock:v43];
    [(PSGraphCompiler *)v69 createGroupedTriggersForTransitionBlock:v70, v71];
  }
}

- (void)createGroupedTriggersForTransitionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v26 = [(PSGraphCompiler *)self getProducerOutputRates:?];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  addedGraphs = [blockCopy addedGraphs];
  v6 = [addedGraphs countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(addedGraphs);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        tasks = [v10 tasks];
        v12 = [tasks count];

        if (v12)
        {
          [(PSGraphCompiler *)self setThreadPoolIDForGraph:v10 withTransitionBlock:blockCopy];
          [(PSGraphCompiler *)self addGraphToThreadPool:v10];
          WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
          executionSession = [WeakRetained executionSession];
          shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

          if ((shouldUseOptimizedVsyncPath & 1) == 0)
          {
            v16 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v16 lock];

            v17 = MEMORY[0x277CCACA8];
            name = [v10 name];
            v19 = [v17 stringWithFormat:@"%@", name];
            v20 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v20 setTransitionStateGroupedTriggersInitCurGST:v19];

            v21 = objc_loadWeakRetained(&self->_transitionMonitor);
            [v21 unlock];

            v22 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:v10 withProducerOutputRates:v26 withTransitionBlock:blockCopy];
            if ((v22 & 1) == 0)
            {
              v23 = __PLSLogSharedInstance(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v10 name];
                *buf = 138477827;
                v32 = name2;
                _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEBUG, "Falling back to legacy GST for graph %{private}@", buf, 0xCu);
              }

              [(PSGraphCompiler *)self createLegacyGroupedTriggerForGraph:v10 withProducerOutputRates:v26 withTransitionBlock:blockCopy];
            }
          }
        }
      }

      v7 = [addedGraphs countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v7);
  }
}

- (BOOL)checkForBufferSyncGroupedSources:(id)sources intermediateWaitSources:(id)waitSources graph:(id)graph
{
  v43 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  waitSourcesCopy = waitSources;
  graphCopy = graph;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  tasks = [graphCopy tasks];
  v28 = [tasks countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v28)
  {
    v10 = *v38;
    v30 = tasks;
    v31 = graphCopy;
    v27 = *v38;
    do
    {
      v11 = 0;
      do
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(tasks);
        }

        v29 = v11;
        v12 = *(*(&v37 + 1) + 8 * v11);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        inputs = [v12 inputs];
        v14 = [inputs countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v34;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(inputs);
              }

              v18 = *(*(&v33 + 1) + 8 * i);
              type = [v18 type];
              resourceKey = [v18 resourceKey];
              if ([sourcesCopy containsObject:resourceKey])
              {
                v21 = 0;
              }

              else
              {
                resourceKey2 = [v18 resourceKey];
                v23 = [waitSourcesCopy containsObject:resourceKey2];

                v21 = v23 ^ 1;
              }

              if (!type && (v21 & 1) == 0 && [v18 capacity] > 1)
              {

                isGroupable = 0;
                resolvedDomain = v30;
                graphCopy = v31;
                goto LABEL_23;
              }
            }

            v15 = [inputs countByEnumeratingWithState:&v33 objects:v41 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v11 = v29 + 1;
        tasks = v30;
        graphCopy = v31;
        v10 = v27;
      }

      while (v29 + 1 != v28);
      v28 = [v30 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v28);
  }

  resolvedDomain = [graphCopy resolvedDomain];
  isGroupable = [resolvedDomain isGroupable];
LABEL_23:

  return isGroupable;
}

- (BOOL)isCameraDomain:(id)domain withContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allStreams = [context allStreams];
  v7 = [allStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allStreams);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        domain = [v10 domain];
        if ([domain isEqual:domainCopy])
        {
          if ([v10 type] == 3)
          {

LABEL_15:
            LOBYTE(v7) = 1;
            goto LABEL_16;
          }

          type = [v10 type];

          if (type == 5)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [allStreams countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v7;
}

- (void)setupGSMSourceDescriptors:(id *)descriptors storageModes:(unsigned __int8 *)modes graphName:(id)name graphFrequencey:(unint64_t)frequencey systemSources:(id)sources intermediateSources:(id)intermediateSources producedOutputRates:(id)rates device:(id)self0 context:(id)self1 syncedBuffers:(BOOL)self2
{
  v111 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  sourcesCopy = sources;
  intermediateSourcesCopy = intermediateSources;
  ratesCopy = rates;
  deviceCopy = device;
  contextCopy = context;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = sourcesCopy;
  v16 = [obj countByEnumeratingWithState:&v101 objects:v110 count:16];
  frequenceyCopy = frequencey;
  if (v16)
  {
    v17 = v16;
    LODWORD(v18) = 0;
    v89 = *v102;
    do
    {
      v19 = 0;
      v18 = v18;
      v20 = &descriptors[v18];
      do
      {
        if (*v102 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *&v19[*(&v101 + 1)];
        v22 = [deviceCopy propertiesForKey:v21];
        v23 = [contextCopy resourceStreamForKey:v21];
        v94 = v22;
        if ([v23 framerate])
        {
          framerate = [v23 framerate];
          if (framerate < frequencey || (v25 = framerate, v26 = framerate / frequencey, framerate % frequencey))
          {
            [PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:];
LABEL_56:
            v96 = 0;
            v71 = asprintf(&v96, "Producer rate (%lu Hz) for key %s is an invalid multiple of the requested rate (%llu Hz) for graph %s", [v22 unsignedLongValue], objc_msgSend(v19, "UTF8String"), frequencey, objc_msgSend(nameCopy, "UTF8String"));
            v72 = __PLSLogSharedInstance(v71);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
            {
              unsignedLongValue = [v22 unsignedLongValue];
              uTF8String = [v19 UTF8String];
              uTF8String2 = [nameCopy UTF8String];
              *buf = 136316418;
              *v106 = "[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:]";
              *&v106[8] = 1024;
              *&v106[10] = 3008;
              *&v106[14] = 2048;
              *&v106[16] = unsignedLongValue;
              *&v106[24] = 2080;
              *&v106[26] = uTF8String;
              *&v106[34] = 2048;
              *&v106[36] = frequencey;
              v107 = 2080;
              v108 = uTF8String2;
              _os_log_impl(&dword_25EA3A000, v72, OS_LOG_TYPE_FAULT, "%s:%d Producer rate (%lu Hz) for key %s is an invalid multiple of the requested rate (%llu Hz) for graph %s", buf, 0x3Au);
            }

            v76 = OSLogFlushBuffers();
            if (v76)
            {
              v77 = v76;
              v78 = __PLSLogSharedInstance(v76);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *v106 = "[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:]";
                *&v106[8] = 1024;
                *&v106[10] = v77;
                _os_log_impl(&dword_25EA3A000, v78, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
              }
            }

            else
            {
              usleep(0x1E8480u);
            }

            abort_with_reason();
          }

          v20->var1 = v26;
          rcFrameID = [v22 rcFrameID];
          if (rcFrameID)
          {
            v28 = 0x5A / v25;
          }

          else
          {
            v28 = 1;
          }

          v29 = __PLSLogSharedInstance(rcFrameID);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            *v106 = v26;
            *&v106[8] = 2048;
            *&v106[10] = 0x5A / v25;
            *&v106[18] = 2112;
            *&v106[20] = v21;
            _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEBUG, "GST Down Sample Factor %llu Stride Factor %lu Key %@", buf, 0x20u);
          }
        }

        else
        {
          v29 = __PLSLogSharedInstance(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            framerate2 = [v23 framerate];
            *buf = 138478083;
            *v106 = v21;
            *&v106[8] = 2048;
            *&v106[10] = framerate2;
            _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_ERROR, "source camera key %{private}@ rate %lu should be > 0", buf, 0x16u);
          }

          v28 = 1;
        }

        v20->var2 = v28;
        [v21 cStringUsingEncoding:4];
        __strlcpy_chk();
        modes[v18++] = [v23 options] != 1;

        v19 += 8;
        ++v20;
        --v17;
        frequencey = frequenceyCopy;
      }

      while (v17);
      v17 = [obj countByEnumeratingWithState:&v101 objects:v110 count:16];
    }

    while (v17);
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v82 = intermediateSourcesCopy;
  v31 = [v82 countByEnumeratingWithState:&v97 objects:v109 count:16];
  v32 = contextCopy;
  if (v31)
  {
    v33 = v31;
    v84 = *v98;
    do
    {
      v34 = 0;
      v18 = v18;
      v35 = &descriptors[v18];
      do
      {
        if (*v98 != v84)
        {
          objc_enumerationMutation(v82);
        }

        v19 = *(*(&v97 + 1) + v34);
        v36 = [ratesCopy valueForKey:v19];
        if (!v36)
        {
          goto LABEL_61;
        }

        v22 = v36;
        if ([v36 unsignedLongValue] % frequencey)
        {
          goto LABEL_56;
        }

        v88 = [v22 unsignedLongValue] / frequencey;
        v35->var1 = v88;
        v37 = [v32 resourceStreamForKey:v19];
        if (!v37)
        {
          [PSGraphCompiler setupGSMSourceDescriptors:buf storageModes:v19 graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
LABEL_61:
          [PSGraphCompiler setupGSMSourceDescriptors:buf storageModes:v19 graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
        }

        v38 = v37;
        v90 = v33;
        unsignedLongValue2 = [v22 unsignedLongValue];
        resolvedDomain = [v38 resolvedDomain];
        v40 = [(PSGraphCompiler *)self isCameraDomain:resolvedDomain withContext:v32];

        v42 = __PLSLogSharedInstance(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          if (v40)
          {
            v43 = "camera";
          }

          else
          {
            v43 = "non-camera";
          }

          resolvedDomain2 = [v38 resolvedDomain];
          uTF8String3 = [v19 UTF8String];
          *buf = 136315906;
          *v106 = v43;
          *&v106[8] = 2112;
          *&v106[10] = resolvedDomain2;
          *&v106[18] = 2080;
          *&v106[20] = uTF8String3;
          *&v106[28] = 2048;
          *&v106[30] = unsignedLongValue2;
          _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_DEBUG, "Found %s stream domain %@ for key %s, producer rate %llu", buf, 0x2Au);

          frequencey = frequenceyCopy;
        }

        if (v40)
        {
          v47 = 0x5A / unsignedLongValue2;
          goto LABEL_44;
        }

        resolvedDomain3 = [v38 resolvedDomain];
        v49 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyVsync[0]];
        v50 = [resolvedDomain3 isEqual:v49];

        if (v50)
        {
          v51 = 90;
LABEL_43:
          v47 = v51 / unsignedLongValue2;
          frequencey = frequenceyCopy;
          goto LABEL_44;
        }

        resolvedDomain4 = [v38 resolvedDomain];
        v53 = [MEMORY[0x277D3E6C8] customDomain:PLSResourceKeyGyro[0]];
        v54 = [resolvedDomain4 isEqual:v53];

        if (v54 || ([v38 resolvedDomain], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D3E6C8], "customDomain:", PLSResourceKeyAccel[0]), v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v55, "isEqual:", v56), v56, v55, v57) || (objc_msgSend(v38, "resolvedDomain"), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D3E6C8], "customDomain:", PLSResourceKeyBioMotion[0]), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v58, "isEqual:", v59), v59, v58, v60) || (objc_msgSend(v38, "resolvedDomain"), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277D3E6C8], "customDomain:", PLSResourceKeyVIS[0]), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v61, "isEqual:", v62), v62, v61, v63))
        {
          v51 = 100;
          goto LABEL_43;
        }

        v68 = __PLSLogSharedInstance(v46);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          uTF8String4 = [v19 UTF8String];
          *buf = 136315138;
          *v106 = uTF8String4;
          _os_log_impl(&dword_25EA3A000, v68, OS_LOG_TYPE_DEBUG, "No matching stream domain found for %s", buf, 0xCu);
        }

        LODWORD(v47) = 1;
        frequencey = frequenceyCopy;
LABEL_44:
        v64 = __PLSLogSharedInstance(v46);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          uTF8String5 = [v19 UTF8String];
          *buf = 67109378;
          *v106 = v47;
          *&v106[4] = 2080;
          *&v106[6] = uTF8String5;
          _os_log_impl(&dword_25EA3A000, v64, OS_LOG_TYPE_DEBUG, "Got stride %d for resource %s", buf, 0x12u);
        }

        v35->var2 = v47;
        [v19 cStringUsingEncoding:4];
        v66 = __strlcpy_chk();
        v67 = __PLSLogSharedInstance(v66);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v106 = v19;
          *&v106[8] = 1024;
          *&v106[10] = v88;
          _os_log_impl(&dword_25EA3A000, v67, OS_LOG_TYPE_DEBUG, "GST external graph source Key %@, downsample factor %u", buf, 0x12u);
        }

        modes[v18++] = [v38 options] != 1;
        v34 += 8;
        ++v35;
        v33 = v90 - 1;
        v32 = contextCopy;
      }

      while (v90 != 1);
      v70 = [v82 countByEnumeratingWithState:&v97 objects:v109 count:16];
      v33 = v70;
    }

    while (v70);
  }
}

- (BOOL)validOffsetForGraph:(id)graph inputs:(id)inputs highestStride:(unsigned int *)stride desiredOffset:(unsigned int *)offset
{
  v88 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  inputsCopy = inputs;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  objectEnumerator = [inputsCopy objectEnumerator];
  v12 = [objectEnumerator countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (!v12)
  {
    v13 = objectEnumerator;
    goto LABEL_37;
  }

  offsetCopy = offset;
  strideCopy = stride;
  v61 = inputsCopy;
  v13 = 0;
  unsignedIntValue2 = 0;
  v15 = *v72;
  do
  {
    for (i = 0; i != v12; i = (i + 1))
    {
      if (*v72 != v15)
      {
        objc_enumerationMutation(objectEnumerator);
      }

      v17 = *(*(&v71 + 1) + 8 * i);
      stride = [v17 stride];
      unsignedIntValue = [stride unsignedIntValue];

      if (unsignedIntValue2 < unsignedIntValue)
      {
        stride2 = [v17 stride];
        unsignedIntValue2 = [stride2 unsignedIntValue];

        v21 = v17;
        v13 = v21;
      }
    }

    v12 = [objectEnumerator countByEnumeratingWithState:&v71 objects:v87 count:16];
  }

  while (v12);

  if (!v13)
  {
    LOBYTE(v12) = 0;
    inputsCopy = v61;
    goto LABEL_38;
  }

  context = [(PSGraphCompiler *)self context];
  resourceKey = [v13 resourceKey];
  v24 = [context resourceStreamForKey:resourceKey];

  supportedStrides = [v24 supportedStrides];
  v26 = [supportedStrides count];

  if (!v26)
  {
    v12 = __PLSLogSharedInstance(v27);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      resourceKey2 = [v13 resourceKey];
      name = [graphCopy name];
      *buf = 138478083;
      v76 = resourceKey2;
      v77 = 2113;
      *v78 = name;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Input %{private}@ in graph %{private}@ doesn't support strides", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
    goto LABEL_29;
  }

  supportedStrides2 = [v24 supportedStrides];
  stride3 = [v13 stride];
  v30 = [supportedStrides2 objectForKeyedSubscript:stride3];
  offset = [v30 offset];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v61;
  v64 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
  if (!v64)
  {
    goto LABEL_21;
  }

  v63 = *v68;
  v57 = graphCopy;
  v58 = v24;
  while (2)
  {
    for (j = 0; j != v64; ++j)
    {
      if (*v68 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v67 + 1) + 8 * j);
      stride4 = [v32 stride];
      unsignedIntValue3 = [stride4 unsignedIntValue];

      context2 = [(PSGraphCompiler *)self context];
      resourceKey3 = [v32 resourceKey];
      v37 = [context2 resourceStreamForKey:resourceKey3];

      supportedStrides3 = [v37 supportedStrides];
      v39 = [supportedStrides3 count];

      if (!v39)
      {
        v50 = __PLSLogSharedInstance(v40);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          resourceKey4 = [v32 resourceKey];
          graphCopy = v57;
          name2 = [v57 name];
          *buf = 138478083;
          v76 = resourceKey4;
          v77 = 2113;
          *v78 = name2;
          _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_DEFAULT, "Input %{private}@ in graph %{private}@ doesn't support strides", buf, 0x16u);

LABEL_35:
          inputsCopy = v61;

          LOBYTE(v12) = 0;
          v24 = v58;
          goto LABEL_36;
        }

LABEL_34:
        graphCopy = v57;
        goto LABEL_35;
      }

      supportedStrides4 = [v37 supportedStrides];
      stride5 = [v32 stride];
      v43 = [supportedStrides4 objectForKeyedSubscript:stride5];
      offset2 = [v43 offset];

      if (offset % unsignedIntValue3 != offset2)
      {
        v50 = __PLSLogSharedInstance(v45);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          resourceKey5 = [v32 resourceKey];
          graphCopy = v57;
          name3 = [v57 name];
          v55 = [v58 key];
          *buf = 138413826;
          v76 = resourceKey5;
          v77 = 2112;
          *v78 = name3;
          *&v78[8] = 1024;
          *v79 = offset2;
          *&v79[4] = 1024;
          *&v79[6] = unsignedIntValue3;
          v80 = 2112;
          v81 = v55;
          v82 = 1024;
          v83 = unsignedIntValue2;
          v84 = 1024;
          v85 = offset;
          _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_ERROR, "Input %@ in graph %@ has incompatible offset %u for stride %u, max strided input %@ had offset %u for stride %u", buf, 0x38u);

          goto LABEL_35;
        }

        goto LABEL_34;
      }
    }

    graphCopy = v57;
    v24 = v58;
    v64 = [obj countByEnumeratingWithState:&v67 objects:v86 count:16];
    if (v64)
    {
      continue;
    }

    break;
  }

LABEL_21:

  v12 = __PLSLogSharedInstance(v46);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    name4 = [graphCopy name];
    *buf = 138413058;
    v76 = name4;
    v77 = 1024;
    *v78 = unsignedIntValue2;
    *&v78[4] = 1024;
    *&v78[6] = offset;
    *v79 = 2112;
    *&v79[2] = v13;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "Graph %@ using stride %u, offset %u, chosen by stream request %@", buf, 0x22u);
  }

  *offsetCopy = offset;
  *strideCopy = unsignedIntValue2;
  LOBYTE(v12) = 1;
LABEL_29:
  inputsCopy = v61;
LABEL_36:

LABEL_37:
LABEL_38:

  return v12;
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v7 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:block];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          resourceKey = [*(*(&v23 + 1) + 8 * i) resourceKey];
          [v8 addObject:resourceKey];
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    resolvedDomain = [graphCopy resolvedDomain];
    v16 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if ([resolvedDomain isEqual:v16])
    {
      currentSystemStride = [graphCopy currentSystemStride];
      integerValue = [currentSystemStride integerValue];

      if (integerValue > 2)
      {
        v19 = 2;
LABEL_17:
        v21 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:graphCopy withSources:v8 withOffset:v19, v23];
        goto LABEL_18;
      }
    }

    else
    {
    }

    v19 = 0;
    goto LABEL_17;
  }

  v8 = __PLSLogSharedInstance(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [graphCopy name];
    *buf = 138477827;
    v29 = name;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
  }

  v21 = 0;
LABEL_18:

  return v21;
}

- (BOOL)setupForCadenceGroupedTriggerForGraph:(id)graph withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo
{
  v36 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  infoCopy = info;
  setInfoCopy = setInfo;
  v13 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:block];
  if (v13)
  {
    v28 = infoCopy;
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          resourceKey = [*(*(&v29 + 1) + 8 * i) resourceKey];
          [v14 addObject:resourceKey];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    resolvedDomain = [graphCopy resolvedDomain];
    v22 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if ([resolvedDomain isEqual:v22])
    {
      currentSystemStride = [graphCopy currentSystemStride];
      integerValue = [currentSystemStride integerValue];

      infoCopy = v28;
      if (integerValue > 2)
      {
        v25 = 2;
LABEL_16:
        [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:graphCopy withSources:v14 withOffset:v25 withGraphInfo:infoCopy withGraphSetInfo:setInfoCopy];
        goto LABEL_17;
      }
    }

    else
    {

      infoCopy = v28;
    }

    v25 = 0;
    goto LABEL_16;
  }

  v14 = __PLSLogSharedInstance(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    name = [graphCopy name];
    *buf = 138477827;
    v35 = name;
    _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
  }

LABEL_17:

  return v13 != 0;
}

- (void)setupForLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfo:(id)info withGraphSetInfo:(id)setInfo
{
  v73 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  infoCopy = info;
  setInfoCopy = setInfo;
  if (!infoCopy)
  {
    [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfo:withGraphSetInfo:];
  }

  v67 = setInfoCopy;
  v68 = ratesCopy;
  v66 = infoCopy;
  v17 = [(PSGraphCompiler *)self getIntermediateSources:graphCopy withTransitionBlock:blockCopy];
  v65 = blockCopy;
  v18 = [(PSGraphCompiler *)self getSystemSources:graphCopy withTransitionBlock:blockCopy withIntermediateSources:v17];
  v19 = [(PSGraphCompiler *)self filterNonANEWaitResources:v17 withGraph:graphCopy];
  v20 = [(PSGraphCompiler *)self filterNonANEWaitResources:v18 withGraph:graphCopy];
  v21 = __PLSLogSharedInstance(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v70 = v20;
    v71 = 2112;
    v72 = v19;
    _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "after nonANEWaitSource filter - systemWaitSources %@ \n intermediateWaitSources %@ \n", buf, 0x16u);
  }

  v22 = [(PSGraphCompiler *)self checkForBufferSyncGroupedSources:v20 intermediateWaitSources:v19 graph:graphCopy];
  v23 = [v20 count];
  v24 = [v19 count] + v23;
  systemPulseStride = [graphCopy systemPulseStride];
  unsignedIntValue = [systemPulseStride unsignedIntValue];

  v26 = v67;
  v27 = v68;
  if (v24 >= 1)
  {
    v62 = v18;
    v63 = v17;
    v28 = v24 & 0x7FFFFFFF;
    v29 = malloc_type_calloc(v28, 0x88uLL, 0x1000040B5CA6940uLL);
    v30 = malloc_type_calloc(v28, 1uLL, 0x100004077774924uLL);
    name = [graphCopy name];
    v57 = v22;
    LOBYTE(v49) = v22;
    v32 = v29;
    selfCopy = self;
    -[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:](self, "setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:", v29, v30, name, [graphCopy resolvedFrequency], v20, v19, v68, self->_device, self->_context, v49);

    v60 = v20;
    v33 = [v20 count];
    v61 = v19;
    v34 = [v19 count] + v33 != 1;
    if (![graphCopy executionType])
    {
      [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:? withGraphInfo:? withGraphSetInfo:?];
    }

    v55 = v34;
    empty = xpc_array_create_empty();
    v36 = xpc_array_create_empty();
    v37 = xpc_array_create_empty();
    v38 = xpc_array_create_empty();
    v39 = 0;
    v56 = v32;
    do
    {
      v40 = xpc_string_create(v32);
      xpc_array_append_value(empty, v40);

      v41 = xpc_uint64_create(v32[32]);
      xpc_array_append_value(v36, v41);

      v42 = xpc_uint64_create(v32[33]);
      xpc_array_append_value(v37, v42);

      v43 = xpc_uint64_create(v30[v39]);
      xpc_array_append_value(v38, v43);

      ++v39;
      v32 += 34;
    }

    while (v28 != v39);
    activeThreadPools = selfCopy->_activeThreadPools;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
    v59 = [(NSMutableDictionary *)activeThreadPools objectForKey:v45];

    pointerValue = [v59 pointerValue];
    name2 = [graphCopy name];
    uTF8String = [name2 UTF8String];
    executionType = [graphCopy executionType];
    threadPoolID = [graphCopy threadPoolID];
    subgraph_idx = [graphCopy subgraph_idx];
    resolvedDomain = [graphCopy resolvedDomain];
    v48 = [resolvedDomain key];
    populateGraphInfo(v66, 1uLL, uTF8String, v28, v55 && v57, executionType, threadPoolID, (pointerValue + 72), subgraph_idx, unsignedIntValue, 0, empty, v38, v36, v37, 0, [v48 UTF8String]);

    v26 = v67;
    appendGraphInfotoGraphSetInfo(v66, v67);
    free(v56);
    free(v30);

    v27 = v68;
    v18 = v62;
    v17 = v63;
    v20 = v60;
    v19 = v61;
  }
}

- (void)setupForCadenceGroupedTriggerForGraph:(id)graph withSources:(id)sources withOffset:(unsigned int)offset withGraphInfo:(id)info withGraphSetInfo:(id)setInfo
{
  v56 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  sourcesCopy = sources;
  infoCopy = info;
  setInfoCopy = setInfo;
  if (!infoCopy)
  {
    [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:withSources:withOffset:withGraphInfo:withGraphSetInfo:];
  }

  v16 = setInfoCopy;
  offsetCopy = offset;
  currentSystemStride = [graphCopy currentSystemStride];
  unsignedIntValue = [currentSystemStride unsignedIntValue];

  if (![graphCopy executionType])
  {
    [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:graphCopy withSources:? withOffset:? withGraphInfo:? withGraphSetInfo:?];
  }

  v46 = v16;
  v47 = infoCopy;
  empty = xpc_array_create_empty();
  v45 = xpc_array_create_empty();
  v44 = xpc_array_create_empty();
  v19 = xpc_array_create_empty();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = sourcesCopy;
  v21 = [v20 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v51;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v50 + 1) + 8 * i);
        v26 = xpc_string_create([v25 UTF8String]);
        xpc_array_append_value(empty, v26);

        v27 = [(PSContext *)self->_context resourceStreamForKey:v25];
        v28 = xpc_uint64_create([v27 options] != 1);
        xpc_array_append_value(v19, v28);
      }

      v22 = [v20 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v22);
  }

  activeThreadPools = self->_activeThreadPools;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
  v43 = [(NSMutableDictionary *)activeThreadPools objectForKey:v30];

  pointerValue = [v43 pointerValue];
  resolvedDomain = [graphCopy resolvedDomain];
  v32 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
  v33 = [resolvedDomain isEqual:v32];

  name = [graphCopy name];
  uTF8String = [name UTF8String];
  v40 = [v20 count];
  executionType = [graphCopy executionType];
  threadPoolID = [graphCopy threadPoolID];
  subgraph_idx = [graphCopy subgraph_idx];
  resolvedDomain2 = [graphCopy resolvedDomain];
  v36 = [resolvedDomain2 key];
  populateGraphInfo(v47, 2uLL, uTF8String, v40, 0, executionType, threadPoolID, (pointerValue + 72), subgraph_idx, unsignedIntValue, offsetCopy, empty, v19, v45, v44, v33, [v36 UTF8String]);

  appendGraphInfotoGraphSetInfo(v47, v46);
}

- (BOOL)setupLegacyGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict
{
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  dictCopy = dict;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if ([executionSession shouldUseOptimizedVsyncPath])
  {

LABEL_6:
    goto LABEL_7;
  }

  workloadWait = [graphCopy workloadWait];

  if (!workloadWait)
  {
    if (!dictCopy)
    {
      [PSGraphCompiler setupLegacyGroupedTriggerInfoForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfoDict:];
    }

    WeakRetained = xpc_dictionary_create(0, 0, 0);
    [(PSGraphCompiler *)self setupForLegacyGroupedTriggerForGraph:graphCopy withProducerOutputRates:ratesCopy withTransitionBlock:blockCopy withGraphInfo:WeakRetained withGraphSetInfo:dictCopy];
    goto LABEL_6;
  }

LABEL_7:

  return 1;
}

- (BOOL)setupCadenceGroupedTriggerInfoForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block withGraphInfoDict:(id)dict
{
  v63 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  dictCopy = dict;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if ([executionSession shouldUseOptimizedVsyncPath])
  {

LABEL_4:
    v17 = 1;
LABEL_5:

    return v17;
  }

  workloadWait = [graphCopy workloadWait];

  if (workloadWait)
  {
    goto LABEL_4;
  }

  if ([graphCopy executionType])
  {
    v51 = ratesCopy;
    v52 = blockCopy;
    v50 = dictCopy;
    if (!dictCopy)
    {
      [PSGraphCompiler setupCadenceGroupedTriggerInfoForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfoDict:];
    }

    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = +[PSExecutionSessionWorkarounds sharedInstance];
    resolvedDomain = [graphCopy resolvedDomain];
    name = [graphCopy name];
    transitionManager = [(PSGraphCompiler *)self transitionManager];
    executionSession2 = [transitionManager executionSession];
    systemPulseRate = [executionSession2 systemPulseRate];
    v26 = [v20 shouldForceCadencedGSTforDomain:resolvedDomain forGraph:name systemPulseRate:systemPulseRate];

    if (v26)
    {
      blockCopy = v52;
      dictCopy = v50;
      v17 = [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:graphCopy withTransitionBlock:v52 withGraphInfo:v19 withGraphSetInfo:v50];
      ratesCopy = v51;
LABEL_35:

      goto LABEL_5;
    }

    blockCopy = v52;
    v27 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:v52];
    ratesCopy = v51;
    if (v27)
    {
      v28 = [(PSGraphCompiler *)self matchInputsToGSTStrides:v27];
      v29 = v28;
      if (v28)
      {
        if ([v28 count])
        {
          v57 = 0;
          v30 = [(PSGraphCompiler *)self validOffsetForGraph:graphCopy inputs:v29 highestStride:&v57 + 4 desiredOffset:&v57];
          v17 = v30;
          if (v30)
          {
            v49 = v27;
            v31 = [MEMORY[0x277CCABB0] numberWithInt:v57];
            [graphCopy setOffset:v31];

            v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v56 = 0u;
            v48 = v29;
            v33 = v29;
            v34 = [v33 countByEnumeratingWithState:&v53 objects:v58 count:16];
            if (v34)
            {
              v35 = v34;
              v36 = *v54;
              do
              {
                for (i = 0; i != v35; ++i)
                {
                  if (*v54 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  resourceKey = [*(*(&v53 + 1) + 8 * i) resourceKey];
                  [v32 addObject:resourceKey];
                }

                v35 = [v33 countByEnumeratingWithState:&v53 objects:v58 count:16];
              }

              while (v35);
            }

            dictCopy = v50;
            [(PSGraphCompiler *)self setupForCadenceGroupedTriggerForGraph:graphCopy withSources:v32 withOffset:v57 withGraphInfo:v19 withGraphSetInfo:v50];
            blockCopy = v52;
            v29 = v48;
            v27 = v49;
          }

          else
          {
            v32 = __PLSLogSharedInstance(v30);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              name2 = [graphCopy name];
              *buf = 138477827;
              v60 = name2;
              _os_log_impl(&dword_25EA3A000, v32, OS_LOG_TYPE_DEFAULT, "Stride-based GST creation failed for graph %{private}@, no matching offset", buf, 0xCu);

              blockCopy = v52;
            }

            dictCopy = v50;
          }

          ratesCopy = v51;
          goto LABEL_34;
        }

        v17 = 1;
LABEL_28:
        dictCopy = v50;
LABEL_34:

        goto LABEL_35;
      }

      v40 = __PLSLogSharedInstance(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        name3 = [graphCopy name];
        *buf = 138478083;
        v60 = name3;
        v61 = 2113;
        v62 = v27;
        _os_log_impl(&dword_25EA3A000, v40, OS_LOG_TYPE_DEBUG, "Not all inputs for graph %{private}@ have strides, waitSources=%{private}@", buf, 0x16u);

        blockCopy = v52;
      }
    }

    else
    {
      v29 = __PLSLogSharedInstance(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        name4 = [graphCopy name];
        *buf = 138477827;
        v60 = name4;
        _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);

        blockCopy = v52;
      }
    }

    v17 = 0;
    goto LABEL_28;
  }

  v43 = [PSGraphCompiler setupCadenceGroupedTriggerInfoForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:? withGraphInfoDict:?];
  return [(PSGraphCompiler *)v43 createCadenceGroupedTriggerForGraph:v44 withProducerOutputRates:v45 withTransitionBlock:v46, v47];
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block
{
  v47 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if (([executionSession shouldUseOptimizedVsyncPath] & 1) == 0)
  {
    workloadWait = [graphCopy workloadWait];

    if (workloadWait)
    {
      goto LABEL_4;
    }

    v14 = +[PSExecutionSessionWorkarounds sharedInstance];
    resolvedDomain = [graphCopy resolvedDomain];
    name = [graphCopy name];
    transitionManager = [(PSGraphCompiler *)self transitionManager];
    executionSession2 = [transitionManager executionSession];
    systemPulseRate = [executionSession2 systemPulseRate];
    v20 = [v14 shouldForceCadencedGSTforDomain:resolvedDomain forGraph:name systemPulseRate:systemPulseRate];

    if (v20)
    {
      v12 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:graphCopy withTransitionBlock:blockCopy];
      goto LABEL_5;
    }

    v21 = [(PSGraphCompiler *)self getStridedGSTWaitSources:graphCopy transitionBlock:blockCopy];
    if (v21)
    {
      v22 = [(PSGraphCompiler *)self matchInputsToGSTStrides:v21];
      v23 = v22;
      if (v22)
      {
        if ([v22 count])
        {
          v41 = 0;
          v24 = [(PSGraphCompiler *)self validOffsetForGraph:graphCopy inputs:v23 highestStride:&v41 + 4 desiredOffset:&v41];
          if (v24)
          {
            v36 = v21;
            v25 = [MEMORY[0x277CCABB0] numberWithInt:v41];
            [graphCopy setOffset:v25];

            v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v27 = v23;
            v28 = [v27 countByEnumeratingWithState:&v37 objects:v42 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v38;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v38 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  resourceKey = [*(*(&v37 + 1) + 8 * i) resourceKey];
                  [v26 addObject:resourceKey];
                }

                v29 = [v27 countByEnumeratingWithState:&v37 objects:v42 count:16];
              }

              while (v29);
            }

            v12 = [(PSGraphCompiler *)self createCadenceGroupedTriggerForGraph:graphCopy withSources:v26 withOffset:v41];
            v21 = v36;
          }

          else
          {
            v26 = __PLSLogSharedInstance(v24);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              name2 = [graphCopy name];
              *buf = 138477827;
              v44 = name2;
              _os_log_impl(&dword_25EA3A000, v26, OS_LOG_TYPE_DEFAULT, "Stride-based GST creation failed for graph %{private}@, no matching offset", buf, 0xCu);
            }

            v12 = 0;
          }
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_31;
      }

      name4 = __PLSLogSharedInstance(0);
      if (os_log_type_enabled(name4, OS_LOG_TYPE_DEBUG))
      {
        name3 = [graphCopy name];
        *buf = 138478083;
        v44 = name3;
        v45 = 2113;
        v46 = v21;
        _os_log_impl(&dword_25EA3A000, name4, OS_LOG_TYPE_DEBUG, "Not all inputs for graph %{private}@ had strides, waitSources=%{private}@", buf, 0x16u);
      }
    }

    else
    {
      v23 = __PLSLogSharedInstance(0);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:
        v12 = 0;
LABEL_31:

        goto LABEL_5;
      }

      name4 = [graphCopy name];
      *buf = 138477827;
      v44 = name4;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "Unsupported wait resource in graph %{private}@ detected", buf, 0xCu);
    }

    goto LABEL_25;
  }

LABEL_4:
  v12 = 1;
LABEL_5:

  return v12;
}

- (BOOL)createCadenceGroupedTriggerForGraph:(id)graph withSources:(id)sources withOffset:(unsigned int)offset
{
  v57 = *&offset;
  v70 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  sourcesCopy = sources;
  v58 = malloc_type_calloc([sourcesCopy count], 0x80uLL, 0x1000040AE2C30F4uLL);
  v8 = malloc_type_calloc([sourcesCopy count], 1uLL, 0x100004077774924uLL);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v9 = sourcesCopy;
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v10)
  {
    v11 = v10;
    LODWORD(v12) = 0;
    v13 = *v60;
    do
    {
      v14 = 0;
      v12 = v12;
      v15 = &v58[128 * v12];
      do
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v59 + 1) + 8 * v14);
        v17 = [(PSContext *)self->_context resourceStreamForKey:v16];
        strlcpy(v15, [v16 UTF8String], 0x80uLL);
        v8[v12++] = [v17 options] != 1;

        ++v14;
        v15 += 128;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v11);
  }

  systemPulseStride = [graphCopy systemPulseStride];
  unsignedIntValue = [systemPulseStride unsignedIntValue];

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  v22 = [executionSession gsm];

  executionType = [graphCopy executionType];
  if (!executionType)
  {
    [PSGraphCompiler createCadenceGroupedTriggerForGraph:buf withSources:graphCopy withOffset:?];
  }

  v55 = v22;
  v24 = unsignedIntValue | (v57 << 32);
  v25 = __PLSLogSharedInstance(executionType);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    name = [graphCopy name];
    uTF8String = [name UTF8String];
    subgraph_idx = [graphCopy subgraph_idx];
    threadPoolID = [graphCopy threadPoolID];
    *buf = 136381187;
    v64 = uTF8String;
    v65 = 1024;
    v66 = subgraph_idx;
    v67 = 2048;
    v68[0] = threadPoolID;
    _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_INFO, "Creating GST for Graph: %{private}s, Subgraph_idx: %u, threadPoolID: %llu", buf, 0x1Cu);
  }

  if ([graphCopy executionType] != 1)
  {
    name2 = [graphCopy name];
    uTF8String2 = [name2 UTF8String];
    v41 = [v9 count];
    v42 = getpid();
    gst_with_cadence = ps_gsm_create_gst_with_cadence(v55, uTF8String2, v41, v58, v8, v24, v42);

    if (gst_with_cadence)
    {
      goto LABEL_15;
    }

LABEL_20:
    v49 = [PSGraphCompiler createCadenceGroupedTriggerForGraph:buf withSources:graphCopy withOffset:?];
    [(PSGraphCompiler *)v49 createLegacyGroupedTriggerForGraph:v50 withProducerOutputRates:v51 withTransitionBlock:v52, v53];
    return result;
  }

  v54 = unsignedIntValue;
  v30 = *([graphCopy executionContext] + 8);
  name3 = [graphCopy name];
  uTF8String3 = [name3 UTF8String];
  v33 = [v9 count];
  v34 = *(v30 + 352);
  v35 = v24;
  subgraph_idx2 = [graphCopy subgraph_idx];
  v37 = getpid();
  gst_with_cadence = ps_gsm_create_muxed_gst_with_cadence(v55, uTF8String3, v33, v58, v8, v35, v34, subgraph_idx2, v37);

  if (!gst_with_cadence)
  {
    [PSGraphCompiler createCadenceGroupedTriggerForGraph:buf withSources:graphCopy withOffset:?];
    goto LABEL_20;
  }

  unsignedIntValue = v54;
LABEL_15:
  graphGSTMap = self->_graphGSTMap;
  v44 = [MEMORY[0x277CCAE60] valueWithPointer:gst_with_cadence];
  [(NSMapTable *)graphGSTMap setObject:v44 forKey:graphCopy];

  v46 = __PLSLogSharedInstance(v45);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    name4 = [graphCopy name];
    *buf = 138478595;
    v64 = name4;
    v65 = 1024;
    v66 = unsignedIntValue;
    v67 = 1024;
    LODWORD(v68[0]) = v57;
    WORD2(v68[0]) = 2113;
    *(v68 + 6) = v9;
    _os_log_impl(&dword_25EA3A000, v46, OS_LOG_TYPE_DEFAULT, "Stride-based GST for graph %{private}@: execution stride %u, offset %u, sources: %{private}@", buf, 0x22u);
  }

  free(v58);
  free(v8);

  return 1;
}

- (void)createLegacyGroupedTriggerForGraph:(id)graph withProducerOutputRates:(id)rates withTransitionBlock:(id)block
{
  *(&v69[2] + 2) = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  ratesCopy = rates;
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  if ([executionSession shouldUseOptimizedVsyncPath])
  {
  }

  else
  {
    workloadWait = [graphCopy workloadWait];

    if (!workloadWait)
    {
      v14 = [(PSGraphCompiler *)self getIntermediateSources:graphCopy withTransitionBlock:blockCopy];
      v15 = [(PSGraphCompiler *)self getSystemSources:graphCopy withTransitionBlock:blockCopy withIntermediateSources:v14];
      v16 = [(PSGraphCompiler *)self filterNonANEWaitResources:v14 withGraph:graphCopy];
      v65 = v15;
      v17 = [(PSGraphCompiler *)self filterNonANEWaitResources:v15 withGraph:graphCopy];
      v18 = __PLSLogSharedInstance(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v67 = v17;
        v68 = 2112;
        v69[0] = v16;
        _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEBUG, "after nonANEWaitSource filter - systemWaitSources %@ \n intermediateWaitSources %@ \n", buf, 0x16u);
      }

      v19 = [(PSGraphCompiler *)self checkForBufferSyncGroupedSources:v17 intermediateWaitSources:v16 graph:graphCopy];
      v20 = [v17 count];
      v21 = [v16 count] + v20;
      if (v21 >= 1)
      {
        v62 = v14;
        v22 = malloc_type_calloc(v21 & 0x7FFFFFFF, 0x88uLL, 0x1000040B5CA6940uLL);
        v59 = v21;
        v23 = malloc_type_calloc(v21 & 0x7FFFFFFF, 1uLL, 0x100004077774924uLL);
        name = [graphCopy name];
        v60 = v19;
        LOBYTE(v55) = v19;
        v64 = v23;
        -[PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:](self, "setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:", v22, v23, name, [graphCopy resolvedFrequency], v17, v16, ratesCopy, self->_device, self->_context, v55);

        v61 = v17;
        v25 = [v17 count];
        v58 = [v16 count] + v25 != 1;
        v26 = objc_loadWeakRetained(&self->_transitionManager);
        executionSession2 = [v26 executionSession];
        v57 = [executionSession2 gsm];

        executionType = [graphCopy executionType];
        if (!executionType)
        {
          [PSGraphCompiler createLegacyGroupedTriggerForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:?];
        }

        v29 = __PLSLogSharedInstance(executionType);
        v63 = v22;
        v30 = v22;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          name2 = [graphCopy name];
          uTF8String = [name2 UTF8String];
          subgraph_idx = [graphCopy subgraph_idx];
          threadPoolID = [graphCopy threadPoolID];
          *buf = 136315650;
          v67 = uTF8String;
          v30 = v63;
          v68 = 1024;
          LODWORD(v69[0]) = subgraph_idx;
          WORD2(v69[0]) = 2048;
          *(v69 + 6) = threadPoolID;
          _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_INFO, "Creating GST for Graph: %s, Subgraph_idx: %u, threadPoolID: %llu", buf, 0x1Cu);
        }

        if ([graphCopy executionType] == 1)
        {
          v35 = *([graphCopy executionContext] + 8);
          name3 = [graphCopy name];
          uTF8String2 = [name3 UTF8String];
          v56 = *(v35 + 352);
          v37 = v16;
          v38 = v30;
          subgraph_idx2 = [graphCopy subgraph_idx];
          v40 = getpid();
          v41 = v38;
          v16 = v37;
          muxed_gst = ps_gsm_create_muxed_gst(v57, uTF8String2, v59, v41, v64, v58 & v60, v56, subgraph_idx2, v40);
        }

        else
        {
          name3 = [graphCopy name];
          uTF8String3 = [name3 UTF8String];
          v44 = getpid();
          muxed_gst = ps_gsm_create_gst(v57, uTF8String3, v59, v30, v64, v58 & v60, v44);
        }

        v46 = muxed_gst;
        v17 = v61;

        v14 = v62;
        if (!v46)
        {
          [PSGraphCompiler createLegacyGroupedTriggerForGraph:buf withProducerOutputRates:graphCopy withTransitionBlock:?];
        }

        graphGSTMap = self->_graphGSTMap;
        v48 = [MEMORY[0x277CCAE60] valueWithPointer:v46];
        [(NSMapTable *)graphGSTMap setObject:v48 forKey:graphCopy];

        free(v63);
        free(v64);
        v50 = __PLSLogSharedInstance(v49);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          name4 = [graphCopy name];
          *buf = 138412546;
          v67 = name4;
          v68 = 2112;
          v69[0] = v61;
          _os_log_impl(&dword_25EA3A000, v50, OS_LOG_TYPE_DEBUG, "Created system-level PSInputPolicyWait GSTs for graph %@ for sources: %@", buf, 0x16u);
        }

        v53 = __PLSLogSharedInstance(v52);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          name5 = [graphCopy name];
          *buf = 138412546;
          v67 = name5;
          v68 = 2112;
          v69[0] = v16;
          _os_log_impl(&dword_25EA3A000, v53, OS_LOG_TYPE_DEBUG, "Created intermediate PSInputPolicyWait GSTs for graph %@ for sources: %@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)createExecSubGraphWithFreeSlot:(uint64_t)slot withClientGraph:(void *)graph
{
  graphCopy = graph;
  ps_exec_init_subgraph(slot);
  [self initializeExecSubGraphProperties:slot withClientGraph:graphCopy];
  [self initializeExecSubGraphTasks:slot withClientGraph:graphCopy];
  [self initializeExecSubGraphTaskDependencies:slot withClientGraph:graphCopy];

  *(slot + 6800) = [self deterministicReplay];

  ps_exec_finalize_subgraph(slot);
}

- (void)validateCriticality:(unint64_t)criticality withCriticalityEntitlement:(unint64_t)entitlement withGraph:(id)graph
{
  v33 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  if (criticality < entitlement)
  {
    v21 = graphCopy;
    v22 = 0;
    name = [graphCopy name];
    asprintf(&v22, "Client requested a graph above their criticalityEntitlement. Graph: %s, criticalityEntitlement: %lu, requested criticality: %lu", [name UTF8String], entitlement, criticality);

    v10 = __PLSLogSharedInstance(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      name2 = [v21 name];
      uTF8String = [name2 UTF8String];
      *buf = 136316162;
      v24 = "[PSGraphCompiler validateCriticality:withCriticalityEntitlement:withGraph:]";
      v25 = 1024;
      v26 = 3601;
      v27 = 2080;
      v28 = uTF8String;
      v29 = 2048;
      entitlementCopy = entitlement;
      v31 = 2048;
      criticalityCopy = criticality;
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d Client requested a graph above their criticalityEntitlement. Graph: %s, criticalityEntitlement: %lu, requested criticality: %lu", buf, 0x30u);
    }

    v13 = OSLogFlushBuffers();
    if (v13)
    {
      v14 = v13;
      v15 = __PLSLogSharedInstance(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "[PSGraphCompiler validateCriticality:withCriticalityEntitlement:withGraph:]";
        v25 = 1024;
        v26 = v14;
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v16 = abort_with_reason();
    [(PSGraphCompiler *)v16 initializeSubgraphLiveness:v17 withRelativeDeadline:v18 withClientGraph:v19, v20];
  }

  else
  {
  }
}

- (void)initializeSubgraphLiveness:(uint64_t)liveness withRelativeDeadline:(uint64_t)deadline withClientGraph:(void *)graph
{
  v30 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v9 = ps_liveness_node_allocate();
  if (v9 == -1)
  {
    v20 = __PLSLogSharedInstance(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      name = [graphCopy name];
      v22 = 136315138;
      uTF8String = [name UTF8String];
      _os_log_impl(&dword_25EA3A000, v20, OS_LOG_TYPE_DEFAULT, "Can't allocate liveness node for graph %s", &v22, 0xCu);
    }
  }

  else
  {
    v10 = v9;
    header = ps_liveness_get_header();
    node_metadata_address = _liveness_get_node_metadata_address(header, v10);
    node_address = _liveness_get_node_address(header, v10);
    *(liveness + 48) = node_metadata_address + 168;
    *(liveness + 56) = node_address;
    *(liveness + 64) = v10;
    v14 = __PLSLogSharedInstance(node_address);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(liveness + 376);
      v16 = *(liveness + 384);
      v22 = 136315907;
      uTF8String = liveness + 113;
      v24 = 2049;
      v25 = v15;
      v26 = 1025;
      v27 = v16;
      v28 = 1024;
      v29 = v10;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Creating new exec subgraph with name %s, frequency %{private}llu, qos %{private}d, liveness node %08xd", &v22, 0x22u);
    }

    ps_liveness_node_set_base_info(v10, 0, (liveness + 113));
    ps_liveness_node_set_aux_string(v10, "Graph");
    ps_liveness_node_set_deadlines(v10, *(liveness + 376), deadline);
    ps_liveness_node_set_qos(v10, *(liveness + 384));
    WeakRetained = objc_loadWeakRetained((self + 56));
    executionSession = [WeakRetained executionSession];
    name2 = [executionSession name];
    ps_liveness_node_set_session(v10, [name2 UTF8String]);

    ps_liveness_node_finalize(v10, 0);
  }
}

- (void)initializeGroupedTriggersForSubgraph:(uint64_t)subgraph withClientGraph:(void *)graph
{
  graphCopy = graph;
  WeakRetained = objc_loadWeakRetained((self + 56));
  executionSession = [WeakRetained executionSession];
  v8 = [executionSession gsm];

  *(subgraph + 520) = v8;
  *(subgraph + 528) = 0u;
  v9 = [*(self + 48) objectForKey:graphCopy];
  v10 = v9;
  if (v9)
  {
    v11 = *(*(subgraph + 6792) + 4);
    pointerValue = [v9 pointerValue];
    if (v11)
    {
      *(subgraph + 528) = pointerValue;
      if (!pointerValue)
      {
        [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
      }
    }

    else
    {
      *(subgraph + 536) = pointerValue;
      if (!pointerValue)
      {
        [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
      }
    }
  }
}

- (void)initializeExecSubGraphProperties:(uint64_t)properties withClientGraph:(void *)graph
{
  v63 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  name = [graphCopy name];
  [name UTF8String];
  __strlcpy_chk();

  *(properties + 376) = [graphCopy resolvedFrequency];
  *(properties + 40) = graphCopy;
  *(properties + 544) |= 0xFFFFFFFFFFFFuLL;
  WeakRetained = objc_loadWeakRetained((self + 56));
  executionSession = [WeakRetained executionSession];
  isUniqueSession = [executionSession isUniqueSession];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  if (isUniqueSession)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    name2 = [graphCopy name];
    name3 = [v11 initWithFormat:@"%@-%@", processName, name2];
    *(properties + 6784) = [name3 hash];
  }

  else
  {
    processInfo = objc_loadWeakRetained((self + 56));
    processName = [processInfo executionSession];
    name2 = [processName name];
    name3 = [graphCopy name];
    v16 = [v11 initWithFormat:@"%@-%@", name2, name3];
    *(properties + 6784) = [v16 hash];
  }

  v18 = __PLSLogSharedInstance(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(properties + 6784);
    *buf = 136315394;
    *v61 = properties + 113;
    *&v61[8] = 1024;
    *&v61[10] = v19;
    _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEFAULT, "Ariadne Graph & Error Log Buffer Info: Graph=%s KeyHash=%u", buf, 0x12u);
  }

  v20 = +[PLSSettings currentSettings];
  criticalityEntitlement = [v20 criticalityEntitlement];

  [self validateCriticality:objc_msgSend(graphCopy withCriticalityEntitlement:"criticalityCPU") withGraph:{criticalityEntitlement, graphCopy}];
  [self validateCriticality:objc_msgSend(graphCopy withCriticalityEntitlement:"criticalityGPU") withGraph:{criticalityEntitlement, graphCopy}];
  resolvedCriticalityCPU = [graphCopy resolvedCriticalityCPU];
  if (resolvedCriticalityCPU <= 3)
  {
    *(properties + 384) = resolvedCriticalityCPU;
  }

  v23 = objc_loadWeakRetained((self + 56));

  if (v23)
  {
    *&v61[12] = 0;
    v59 = objc_loadWeakRetained((self + 56));
    executionSession2 = [v59 executionSession];
    caNameHash = [executionSession2 caNameHash];
    *buf = [caNameHash unsignedIntValue];
    caNameHash2 = [graphCopy caNameHash];
    *v61 = [caNameHash2 unsignedIntValue];
    systemPulseStride = [graphCopy systemPulseStride];
    *&v61[4] = [systemPulseStride unsignedLongLongValue];
    v25 = +[PSCoreAnalyticsIDManager sharedInstance];
    selfCopy = self;
    v27 = objc_loadWeakRetained((self + 56));
    executionSession3 = [v27 executionSession];
    caName = [executionSession3 caName];
    caName2 = [graphCopy caName];
    systemPulseStride2 = [graphCopy systemPulseStride];
    *&v61[12] = [v25 opaqueIDForSession:caName graph:caName2 stride:systemPulseStride2];

    self = selfCopy;
    graph_per_frame_handle = ps_ca_create_graph_per_frame_handle(buf, &__block_literal_global_5);
    *(properties + 6808) = graph_per_frame_handle;
    ps_ca_gst_drops_init(graph_per_frame_handle);
    ps_ca_graph_exec_init(*(properties + 6808));
    ps_ca_deadline_miss_init(*(properties + 6808));
    ps_ca_workgroup_counters_init(*(properties + 6808));
  }

  if ([graphCopy workloadWait])
  {
    *(properties + 496) = [graphCopy workloadWait];
    *(properties + 504) = [graphCopy workloadWaitContext];
    v33 = objc_loadWeakRetained((self + 56));
    executionSession4 = [v33 executionSession];
    shouldUseOptimizedVsyncPath = [executionSession4 shouldUseOptimizedVsyncPath];

    if (shouldUseOptimizedVsyncPath)
    {
      *(properties + 513) = 1;
    }
  }

  else
  {
    v36 = objc_loadWeakRetained((self + 56));
    executionSession5 = [v36 executionSession];
    shouldUseOptimizedVsyncPath2 = [executionSession5 shouldUseOptimizedVsyncPath];

    if ((shouldUseOptimizedVsyncPath2 & 1) == 0)
    {
      if ([self deterministicReplay])
      {
        *(properties + 616) = tailTaskCallback;
        *(properties + 624) = self;
      }

      *(properties + 440) = groupedSourcePoolAcquireHandler;
      *(properties + 448) = groupedSourcePoolRelinquishHandler;
      v39 = [*(self + 192) objectForKey:graphCopy];
      *(properties + 456) = [v39 pointerValue];
    }
  }

  *(properties + 72) = [graphCopy init_function];
  *(properties + 80) = [graphCopy deinit_function];
  *(properties + 88) = [graphCopy init_context];
  *(properties + 96) = [graphCopy deinit_context];
  *(properties + 112) = 0;
  *(properties + 408) = notifyGraphStartCallback;
  *(properties + 424) = 0;
  *(properties + 432) = 0;
  *(properties + 416) = notifyGraphFinishCallback;
  v40 = +[PLSSettings currentSettings];
  overrideDeadlinePercentage = [v40 overrideDeadlinePercentage];

  v42 = +[PLSSettings currentSettings];
  if (![v42 expectRelativeDeadline])
  {

LABEL_22:
    relativeDeadline2 = 0x3B9ACA00uLL / *(properties + 376);
    goto LABEL_23;
  }

  relativeDeadline = [graphCopy relativeDeadline];

  if (!relativeDeadline)
  {
    goto LABEL_22;
  }

  relativeDeadline2 = [graphCopy relativeDeadline];
  if (!relativeDeadline2)
  {
    goto LABEL_22;
  }

LABEL_23:
  v45 = [graphCopy setResolvedDeadline:relativeDeadline2];
  v46 = ((relativeDeadline2 * overrideDeadlinePercentage) / 100.0);
  v47 = dword_27FD126F4;
  if (!dword_27FD126F4)
  {
    v45 = mach_timebase_info(&initializeExecSubGraphProperties_withClientGraph__timebase_info);
    v47 = dword_27FD126F4;
  }

  *(properties + 552) = v47 * v46 / initializeExecSubGraphProperties_withClientGraph__timebase_info;
  v48 = __PLSLogSharedInstance(v45);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    v49 = *(properties + 552);
    name4 = [graphCopy name];
    uTF8String = [name4 UTF8String];
    *buf = 134218498;
    *v61 = v46;
    *&v61[8] = 2048;
    *&v61[10] = v49;
    *&v61[18] = 2080;
    v62 = uTF8String;
    _os_log_impl(&dword_25EA3A000, v48, OS_LOG_TYPE_DEBUG, "Set up a relative deadline of (%llu)ns, machtime: (%llu), for graph: (%s)", buf, 0x20u);
  }

  v52 = +[PSGraphCompiler deadlineThresholdsForCriticality:](PSGraphCompiler, "deadlineThresholdsForCriticality:", [graphCopy criticalityCPU]);
  v53 = [v52 objectForKeyedSubscript:@"deadline-miss-threshold"];
  *(properties + 564) = [v53 unsignedIntegerValue];

  v54 = [v52 objectForKeyedSubscript:@"iterations-to-track"];
  *(properties + 560) = [v54 unsignedIntegerValue];

  *(properties + 592) = systemHealthDeadlineMissHandler;
  *(properties + 600) = self;
  if ([graphCopy needsLiveness])
  {
    [self initializeSubgraphLiveness:properties withRelativeDeadline:v46 withClientGraph:graphCopy];
  }

  *[graphCopy executionContext] = properties;
  *([graphCopy executionContext] + 16) = _get_iosurface_count;
  *([graphCopy executionContext] + 24) = _get_iosurfaces;
  v55 = *(self + 160);
  *([graphCopy executionContext] + 32) = v55;
}

- (id)createWorkgroupIntervalForThreadPool:(ps_exec_shared_thread_pool_s *)pool
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 799564724;
  v4 = os_workgroup_attr_set_interval_type();
  if (v4)
  {
    v5 = v4;
    v6 = __PLSLogSharedInstance(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      p_var5 = &pool[1].var5;
      v14 = 1024;
      v15 = v5;
      v7 = "Could not set attribute type arkit for threadpool:(%s) error:(%d)";
LABEL_7:
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, v7, &v12, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = os_workgroup_attr_set_telemetry_flavor();
  if (v8)
  {
    v9 = v8;
    v6 = __PLSLogSharedInstance(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      p_var5 = &pool[1].var5;
      v14 = 1024;
      v15 = v9;
      v7 = "Couldn't set telemetry flavor on workgroup attributes for threadpool:(%s) error:(%d)";
      goto LABEL_7;
    }

LABEL_8:

    v10 = 0;
    goto LABEL_9;
  }

  [*MEMORY[0x277D3E6F0] UTF8String];
  v10 = os_workgroup_interval_create_with_workload_id();
LABEL_9:

  return v10;
}

- (id)createWorkgroupIntervalForGraph:(id)graph
{
  v30 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v27 = 0u;
  v26 = 799564724;
  v5 = os_workgroup_attr_set_telemetry_flavor();
  if (v5)
  {
    v6 = v5;
    name3 = __PLSLogSharedInstance(v5);
    if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
    {
      name = [graphCopy name];
      v22 = 138412546;
      v23 = name;
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&dword_25EA3A000, name3, OS_LOG_TYPE_ERROR, "Couldn't set telemetry flavor on workgroup attributes for graph:(%@) error:(%d)", &v22, 0x12u);
    }

    goto LABEL_15;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  isSystemCompositor = [WeakRetained isSystemCompositor];

  if (isSystemCompositor)
  {
    [*MEMORY[0x277D3E710] UTF8String];
    v11 = os_workgroup_attr_set_interval_type();
    if (v11)
    {
      v12 = v11;
      name3 = __PLSLogSharedInstance(v11);
      if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
      {
        name2 = [graphCopy name];
        v22 = 138412546;
        v23 = name2;
        v24 = 1024;
        v25 = v12;
        v14 = "Could not set attribute type compositor for graph:(%@) error:(%d)";
LABEL_14:
        _os_log_impl(&dword_25EA3A000, name3, OS_LOG_TYPE_ERROR, v14, &v22, 0x12u);

        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v15 = [graphCopy tag];
    v16 = [v15 isEqualToString:*MEMORY[0x277D3E6F8]];

    if (v16)
    {
      [graphCopy name];
    }

    else
    {
      [graphCopy tag];
    }
    v17 = ;
    [v17 UTF8String];

    v18 = os_workgroup_attr_set_interval_type();
    if (v18)
    {
      v19 = v18;
      name3 = __PLSLogSharedInstance(v18);
      if (os_log_type_enabled(name3, OS_LOG_TYPE_ERROR))
      {
        name2 = [graphCopy name];
        v22 = 138412546;
        v23 = name2;
        v24 = 1024;
        v25 = v19;
        v14 = "Could not set attribute type arkit for graph:(%@) error:(%d)";
        goto LABEL_14;
      }

LABEL_15:
      v20 = 0;
      goto LABEL_16;
    }
  }

  name3 = [graphCopy name];
  [name3 UTF8String];
  v20 = os_workgroup_interval_create_with_workload_id();
LABEL_16:

  return v20;
}

- (void)initializeExecSubGraphTasks:(uint64_t)tasks withClientGraph:(void *)graph
{
  v64 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  tasks = [graphCopy tasks];
  v8 = [tasks countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v51;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(tasks);
        }

        v10 |= [*(*(&v50 + 1) + 8 * i) computeAgent] == 1;
      }

      v9 = [tasks countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 56));
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((v10 & 1) == 0 && !shouldUseOptimizedVsyncPath)
  {
    v16 = 0;
LABEL_18:
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = graphCopy;
    obj = [graphCopy tasks];
    v17 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
    if (!v17)
    {
      goto LABEL_40;
    }

    v18 = v17;
    v45 = *v47;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v47 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v46 + 1) + 8 * v19);
        v21 = __PLSLogSharedInstance(v17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          name = [v20 name];
          inputs = [v20 inputs];
          outputs = [v20 outputs];
          *buf = 138413058;
          v55 = name;
          v56 = 2080;
          v57 = tasks + 113;
          v58 = 2112;
          v59 = inputs;
          v60 = 2112;
          v61 = outputs;
          _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEBUG, "PS_EXEC: Adding new task %@ for graph %s\nRequires inputs: %@\nProduces outputs: %@", buf, 0x2Au);
        }

        if (*(tasks + 496))
        {
          name2 = [v20 name];
          string_id = ps_telemetry_create_string_id([name2 UTF8String]);
          name3 = [v44 name];
          v28 = ps_telemetry_create_string_id([name3 UTF8String]);
          v29 = ps_task_wrapper_create(v44, v20, 0, tasks + 400, string_id, v28, *(tasks + 6808));

          v30 = objc_loadWeakRetained((self + 56));
          executionSession2 = [v30 executionSession];
          LODWORD(name3) = [executionSession2 shouldUseOptimizedVsyncPath];

          name4 = [v20 name];
          uTF8String = [name4 UTF8String];
          if (name3)
          {
            v34 = ps_task_wrapper_execute_sync;
          }

          else
          {
            v34 = taskWrapperExecutionHandler;
          }

          ps_exec_add_task(tasks, uTF8String, v29, v34, workloadWrapperCleanupHandler);
        }

        else
        {
          v35 = objc_loadWeakRetained((self + 56));
          executionSession3 = [v35 executionSession];
          shouldUseOptimizedVsyncPath2 = [executionSession3 shouldUseOptimizedVsyncPath];

          if (shouldUseOptimizedVsyncPath2)
          {
            v29 = 0;
            goto LABEL_34;
          }

          v38 = [self createBlockFromTask:v20 withGraph:v44 withExecSubgraph:tasks withMtlQueue:v16 withGraphStringId:tasks + 400];
          name4 = [v20 name];
          ps_exec_add_task(tasks, [name4 UTF8String], v38, ps_exec_block_execute_task_instance, ps_exec_block_destroy);
          v29 = 0;
        }

LABEL_34:
        v39 = objc_loadWeakRetained((self + 56));
        executionSession4 = [v39 executionSession];
        shouldUseOptimizedVsyncPath3 = [executionSession4 shouldUseOptimizedVsyncPath];

        if (shouldUseOptimizedVsyncPath3)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          if (!v29)
          {
            [PSGraphCompiler initializeExecSubGraphTasks:withClientGraph:];
LABEL_42:
            [PSGraphCompiler initializeExecSubGraphTasks:withClientGraph:];
          }

          *(v29 + 20) = 1;
          v17 = ps_task_wrapper_setup_gpu_resources(v29, *(self + 96), v16);
        }

        ++v19;
      }

      while (v18 != v19);
      v17 = [obj countByEnumeratingWithState:&v46 objects:v62 count:16];
      v18 = v17;
      if (!v17)
      {
LABEL_40:

        return;
      }
    }
  }

  if ([graphCopy criticalityGPU])
  {
    [self createMtlCommandQueueBestEffort];
  }

  else
  {
    [self createMtlCommandQueueRealTime];
  }
  v16 = ;
  if (v16)
  {
    [*(self + 152) setObject:v16 forKey:graphCopy];
    goto LABEL_18;
  }

  v42 = [PSGraphCompiler initializeExecSubGraphTasks:buf withClientGraph:graphCopy];
  workloadWrapperCleanupHandler(v42);
}

- (uint64_t)createBlockFromTask:(void *)task withGraph:(void *)graph withExecSubgraph:(uint64_t)subgraph withMtlQueue:(void *)queue withGraphStringId:(uint64_t)id
{
  idCopy = id;
  v55 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  graphCopy = graph;
  queueCopy = queue;
  v11 = ps_exec_block_create(taskCopy);
  ps_exec_block_setup_task(v11, taskCopy);
  v12 = ps_exec_block_setup_autoreleasepool(v11, [taskCopy enableAutoreleasePool]);
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      name = [taskCopy name];
      *buf = 136315138;
      *&buf[4] = [name UTF8String];
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Unable to set autoreleasepool settings for task %s", buf, 0xCu);
    }
  }

  v15 = *(self + 184);
  v16 = [self getGraphTaskHash:graphCopy withTask:{taskCopy, idCopy}];
  v17 = [v15 objectForKey:v16];

  v51 = v17;
  if (!v17)
  {
    [PSGraphCompiler createBlockFromTask:buf withGraph:taskCopy withExecSubgraph:? withMtlQueue:? withGraphStringId:?];
  }

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:getpid()];
  v19 = [v18 hash];
  v20 = *(self + 28);
  *(self + 28) = v20 + 1;

  ps_exec_block_setup_task_resources(v11, [v17 pointerValue]);
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19 + v20];
  v22 = [v21 hash];
  name2 = [taskCopy name];
  string_id = ps_telemetry_create_string_id([name2 UTF8String]);
  v50 = graphCopy;
  name3 = [graphCopy name];
  v26 = ps_telemetry_create_string_id([name3 UTF8String]);
  ps_exec_block_setup_perf_values(v11, v22, string_id, v26, v47);

  if ([taskCopy computeAgent] == 1)
  {
    v27 = *(self + 96);
  }

  else
  {
    v27 = 0;
  }

  segments = [taskCopy segments];

  v29 = v50;
  if (segments)
  {
    ps_exec_block_init_task_segments(v11, taskCopy);
  }

  *buf = 0u;
  v54 = 0u;
  WeakRetained = objc_loadWeakRetained((self + 56));

  if (WeakRetained)
  {
    v31 = objc_loadWeakRetained((self + 56));
    executionSession = [v31 executionSession];
    caNameHash = [executionSession caNameHash];
    *buf = [caNameHash unsignedIntValue];

    caNameHash2 = [v50 caNameHash];
    *&buf[4] = [caNameHash2 unsignedIntValue];

    systemPulseStride = [v50 systemPulseStride];
    *&buf[8] = [systemPulseStride unsignedLongLongValue];

    caNameHash3 = [taskCopy caNameHash];
    DWORD2(v54) = [caNameHash3 unsignedIntValue];

    v37 = +[PSCoreAnalyticsIDManager sharedInstance];
    caName = [taskCopy caName];
    caName2 = [v50 caName];
    systemPulseStride2 = [v50 systemPulseStride];
    v41 = objc_loadWeakRetained((self + 56));
    [v41 executionSession];
    v43 = v42 = v27;
    caName3 = [v43 caName];
    LODWORD(v54) = [v37 opaqueIDForTask:caName graph:caName2 stride:systemPulseStride2 session:caName3];

    v27 = v42;
    v29 = v50;
  }

  ps_exec_block_setup_task_context(v11, v27, queueCopy, v29, *(subgraph + 6808), buf);
  [self initializeComplexityUpdateHandler:v29 withExecSubgraph:subgraph withExecBlock:v11];

  return v11;
}

- (void)initializeComplexityUpdateHandler:(void *)handler withExecSubgraph:(uint64_t)subgraph withExecBlock:(uint64_t)block
{
  handlerCopy = handler;
  v8 = [handlerCopy tag];
  if (v8 == *MEMORY[0x277D3E708])
  {
    v11 = 1;
  }

  else
  {
    v9 = [handlerCopy tag];
    if (v9 == *MEMORY[0x277D3E700])
    {
      v11 = 1;
    }

    else
    {
      v10 = [handlerCopy tag];
      v11 = v10 == *MEMORY[0x277D3E718];
    }
  }

  v15[1] = subgraph;
  v15[0] = v11;
  v15[2] = complexityUpdateHandler;
  if (ps_exec_block_set_complexity_update_context(block, v15))
  {
    v12 = [PSGraphCompiler initializeComplexityUpdateHandler:handlerCopy withExecSubgraph:? withExecBlock:?];
    complexityUpdateHandler(v12, v13);
  }

  else
  {
  }
}

- (id)generateDependencyGraphWithClientGraph:(id)graph
{
  v137 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v7 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v67 = graphCopy;
  obj = [graphCopy tasks];
  v75 = v7;
  v76 = [obj countByEnumeratingWithState:&v123 objects:v136 count:16];
  v79 = v5;
  if (v76)
  {
    v73 = *v124;
    do
    {
      v8 = 0;
      do
      {
        if (*v124 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v8;
        v9 = *(*(&v123 + 1) + 8 * v8);
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        waitBarriers = [v9 waitBarriers];
        v11 = [waitBarriers countByEnumeratingWithState:&v119 objects:v135 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v120;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v120 != v13)
              {
                objc_enumerationMutation(waitBarriers);
              }

              [v5 addObject:*(*(&v119 + 1) + 8 * i)];
            }

            v12 = [waitBarriers countByEnumeratingWithState:&v119 objects:v135 count:16];
          }

          while (v12);
        }

        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        updateBarriers = [v9 updateBarriers];
        v16 = [updateBarriers countByEnumeratingWithState:&v115 objects:v134 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v116;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v116 != v18)
              {
                objc_enumerationMutation(updateBarriers);
              }

              [v5 addObject:*(*(&v115 + 1) + 8 * j)];
            }

            v17 = [updateBarriers countByEnumeratingWithState:&v115 objects:v134 count:16];
          }

          while (v17);
        }

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        outputs = [v9 outputs];
        v21 = [outputs countByEnumeratingWithState:&v111 objects:v133 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v112;
          do
          {
            for (k = 0; k != v22; ++k)
            {
              if (*v112 != v23)
              {
                objc_enumerationMutation(outputs);
              }

              resourceKey = [*(*(&v111 + 1) + 8 * k) resourceKey];
              [v7 setObject:v9 forKey:resourceKey];
            }

            v22 = [outputs countByEnumeratingWithState:&v111 objects:v133 count:16];
          }

          while (v22);
        }

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        inputs = [v9 inputs];
        v26 = [inputs countByEnumeratingWithState:&v107 objects:v132 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v108;
          do
          {
            for (m = 0; m != v27; ++m)
            {
              if (*v108 != v28)
              {
                objc_enumerationMutation(inputs);
              }

              v30 = *(*(&v107 + 1) + 8 * m);
              if (![v30 type])
              {
                [v30 resolvedResourceKey];
                v32 = v31 = v6;
                v33 = [v31 objectForKey:v32];

                if (!v33)
                {
                  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
                  resolvedResourceKey = [v30 resolvedResourceKey];
                  [v31 setObject:v34 forKey:resolvedResourceKey];
                }

                resolvedResourceKey2 = [v30 resolvedResourceKey];
                v37 = [v31 objectForKey:resolvedResourceKey2];

                [v37 addObject:v9];
                v7 = v75;
                v6 = v31;
              }
            }

            v27 = [inputs countByEnumeratingWithState:&v107 objects:v132 count:16];
          }

          while (v27);
        }

        v5 = v79;
        v8 = v81 + 1;
      }

      while ((v81 + 1) != v76);
      v76 = [obj countByEnumeratingWithState:&v123 objects:v136 count:16];
    }

    while (v76);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v38 = v6;
  v69 = v38;
  v82 = [v38 countByEnumeratingWithState:&v103 objects:v131 count:16];
  if (v82)
  {
    v77 = *v104;
    do
    {
      for (n = 0; n != v82; ++n)
      {
        if (*v104 != v77)
        {
          objc_enumerationMutation(v38);
        }

        v40 = *(*(&v103 + 1) + 8 * n);
        v41 = [v38 objectForKey:v40];
        v42 = [v7 objectForKey:v40];

        if (v42)
        {
          v43 = [v7 objectForKey:v40];
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v85 = v41;
          v44 = v41;
          v45 = [v44 countByEnumeratingWithState:&v99 objects:v130 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v100;
            do
            {
              for (ii = 0; ii != v46; ++ii)
              {
                if (*v100 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v99 + 1) + 8 * ii);
                v50 = [v4 objectForKey:v43];

                if (!v50)
                {
                  v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  [v4 setObject:v51 forKey:v43];
                }

                v52 = [v4 objectForKey:v43];
                [v52 addObject:v49];
              }

              v46 = [v44 countByEnumeratingWithState:&v99 objects:v130 count:16];
            }

            while (v46);
          }

          v7 = v75;
          v5 = v79;
          v38 = v69;
          v41 = v85;
        }
      }

      v82 = [v38 countByEnumeratingWithState:&v103 objects:v131 count:16];
    }

    while (v82);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v68 = v5;
  obja = [v68 countByEnumeratingWithState:&v95 objects:v129 count:16];
  if (obja)
  {
    v70 = *v96;
    do
    {
      v53 = 0;
      do
      {
        if (*v96 != v70)
        {
          objc_enumerationMutation(v68);
        }

        v74 = v53;
        v54 = *(*(&v95 + 1) + 8 * v53);
        v91 = 0u;
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v83 = v54;
        unblockingTasks = [v54 unblockingTasks];
        v86 = [unblockingTasks countByEnumeratingWithState:&v91 objects:v128 count:16];
        if (v86)
        {
          v80 = *v92;
          do
          {
            for (jj = 0; jj != v86; jj = jj + 1)
            {
              if (*v92 != v80)
              {
                objc_enumerationMutation(unblockingTasks);
              }

              v56 = *(*(&v91 + 1) + 8 * jj);
              v87 = 0u;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              blockingTasks = [v83 blockingTasks];
              v58 = [blockingTasks countByEnumeratingWithState:&v87 objects:v127 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v88;
                do
                {
                  for (kk = 0; kk != v59; ++kk)
                  {
                    if (*v88 != v60)
                    {
                      objc_enumerationMutation(blockingTasks);
                    }

                    v62 = *(*(&v87 + 1) + 8 * kk);
                    v63 = [v4 objectForKey:v56];

                    if (!v63)
                    {
                      v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
                      [v4 setObject:v64 forKey:v56];
                    }

                    v65 = [v4 objectForKey:v56];
                    [v65 addObject:v62];
                  }

                  v59 = [blockingTasks countByEnumeratingWithState:&v87 objects:v127 count:16];
                }

                while (v59);
              }
            }

            v86 = [unblockingTasks countByEnumeratingWithState:&v91 objects:v128 count:16];
          }

          while (v86);
        }

        v53 = v74 + 1;
      }

      while ((v74 + 1) != obja);
      obja = [v68 countByEnumeratingWithState:&v95 objects:v129 count:16];
    }

    while (obja);
  }

  return v4;
}

- (void)initializeExecSubGraphTaskDependencies:(uint64_t)dependencies withClientGraph:(void *)graph
{
  v58 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v6 = objc_alloc_init(MEMORY[0x277CCAB00]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = graphCopy;
  tasks = [graphCopy tasks];
  v8 = [tasks countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v11)
        {
          objc_enumerationMutation(tasks);
        }

        v13 = *(*(&v45 + 1) + 8 * i);
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
        [v6 setObject:v14 forKey:v13];

        v10 = (v10 + 1);
      }

      v9 = [tasks countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v9);
  }

  PSGenerateDependencyGraphWithClientGraph();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v33 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v33)
  {
    v32 = *v42;
    v36 = dependencies + 640;
    do
    {
      v15 = 0;
      do
      {
        if (*v42 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v15;
        v16 = *(*(&v41 + 1) + 8 * v15);
        v17 = [obj objectForKey:v16];
        v18 = [v6 objectForKey:v16];
        unsignedIntValue = [v18 unsignedIntValue];

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v20 = v17;
        v21 = [v20 countByEnumeratingWithState:&v37 objects:v55 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v38;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v38 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [v6 objectForKey:*(*(&v37 + 1) + 8 * j)];
              unsignedIntValue2 = [v25 unsignedIntValue];

              v27 = ps_exec_add_dependency(dependencies, unsignedIntValue, unsignedIntValue2);
              v28 = __PLSLogSharedInstance(v27);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                v29 = *(v36 + 96 * unsignedIntValue + 8);
                v30 = *(v36 + 96 * unsignedIntValue2 + 8);
                *buf = 136315650;
                v50 = dependencies + 113;
                v51 = 2080;
                v52 = v29;
                v53 = 2080;
                v54 = v30;
                _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "PS_EXEC: Found a dependency in subgraph %s for src %s, dst %s", buf, 0x20u);
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v37 objects:v55 count:16];
          }

          while (v22);
        }

        v15 = v35 + 1;
      }

      while (v35 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v33);
  }
}

- (void)removeMTLCommandQueuesForTransitionBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  removedGraphs = [block removedGraphs];
  v5 = [removedGraphs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(removedGraphs);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_retainedMtlQueues objectForKey:v9];

        if (v10)
        {
          [(NSMapTable *)self->_retainedMtlQueues removeObjectForKey:v9];
        }
      }

      v6 = [removedGraphs countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)performWithKeytoWriterLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_keytoWriterMapLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_keytoWriterMapLock);
}

- (void)withWriterForKey:(id)key perform:(id)perform
{
  keyCopy = key;
  performCopy = perform;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__PSGraphCompiler_withWriterForKey_perform___block_invoke;
  v10[3] = &unk_279A483A0;
  v10[4] = self;
  v11 = keyCopy;
  v12 = performCopy;
  v8 = performCopy;
  v9 = keyCopy;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v10];
}

uint64_t __44__PSGraphCompiler_withWriterForKey_perform___block_invoke(void *a1)
{
  [*(a1[4] + 208) objectForKey:a1[5]];
  if (objc_claimAutoreleasedReturnValue())
  {
    (*(a1[6] + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setWriterForKey:(id)key writer:(id)writer
{
  keyCopy = key;
  writerCopy = writer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__PSGraphCompiler_setWriterForKey_writer___block_invoke;
  v10[3] = &unk_279A483C8;
  v10[4] = self;
  v11 = writerCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = writerCopy;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v10];
}

- (void)removeWriterForKey:(id)key
{
  keyCopy = key;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__PSGraphCompiler_removeWriterForKey___block_invoke;
  v6[3] = &unk_279A483F0;
  v6[4] = self;
  v7 = keyCopy;
  v5 = keyCopy;
  [(PSGraphCompiler *)self performWithKeytoWriterLock:v6];
}

- (void)destroyGroupedTriggersForTransitionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    removedGraphs = [blockCopy removedGraphs];
    [(PSGraphCompiler *)self removeGroupedTriggersForGraphs:removedGraphs];
  }
}

- (void)removeGroupedTriggersForGraphs:(id)graphs
{
  v15 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [graphsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(graphsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (![v9 workloadWait])
        {
          [(NSMapTable *)self->_graphGSTMap removeObjectForKey:v9];
        }
      }

      v6 = [graphsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)removeSourceTasksForTransitionBlock:(id)block
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [block removedGraphs];
  v28 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v4;
        v5 = *(*(&v34 + 1) + 8 * v4);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        sourceTasks = [v5 sourceTasks];
        v7 = [sourceTasks countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v31;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v31 != v9)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v11 = *(*(&v30 + 1) + 8 * i);
              retainedSourceWriterBlocks = self->_retainedSourceWriterBlocks;
              name = [v11 name];
              v14 = [(NSMutableDictionary *)retainedSourceWriterBlocks objectForKey:name];

              if (v14)
              {
                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v16 = MEMORY[0x277CCACA8];
                name2 = [v11 name];
                v18 = [v16 stringWithFormat:@"%@ (PSSourceTask)", name2];
                v19 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v19 setTransitionStateBufferDeinitCurResource:v18];

                v20 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v20 unlock];

                v21 = __PLSLogSharedInstance([v14 stop]);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  name3 = [v11 name];
                  uTF8String = [name3 UTF8String];
                  *buf = 136315138;
                  v39 = uTF8String;
                  _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "Deleting source task %s.", buf, 0xCu);
                }

                v24 = self->_retainedSourceWriterBlocks;
                name4 = [v11 name];
                [(NSMutableDictionary *)v24 removeObjectForKey:name4];
              }
            }

            v8 = [sourceTasks countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v8);
        }

        v4 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v28);
  }
}

- (void)destroyWritersForTransitionBlock:(id)block
{
  v115 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance(blockCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Destroying PSWriters.", buf, 2u);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = [blockCopy removedGraphs];
  v78 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
  if (v78)
  {
    v77 = *v100;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v100 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v79 = v5;
        v6 = *(*(&v99 + 1) + 8 * v5);
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        writers = [v6 writers];
        v84 = [writers countByEnumeratingWithState:&v95 objects:v113 count:16];
        if (v84)
        {
          v83 = *v96;
          do
          {
            for (i = 0; i != v84; ++i)
            {
              if (*v96 != v83)
              {
                objc_enumerationMutation(writers);
              }

              v8 = *(*(&v95 + 1) + 8 * i);
              v9 = [(NSMapTable *)self->_retainedWriterBlocks objectForKey:v8];
              v10 = v9;
              if (v9)
              {
                v85 = v9;
                v93 = 0u;
                v94 = 0u;
                v91 = 0u;
                v92 = 0u;
                addedGraphs = [blockCopy addedGraphs];
                v12 = [addedGraphs countByEnumeratingWithState:&v91 objects:v112 count:16];
                if (!v12)
                {
                  goto LABEL_29;
                }

                v13 = v12;
                v14 = *v92;
                while (2)
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v92 != v14)
                    {
                      objc_enumerationMutation(addedGraphs);
                    }

                    v16 = *(*(&v91 + 1) + 8 * j);
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    writers2 = [v16 writers];
                    v18 = [writers2 countByEnumeratingWithState:&v87 objects:v111 count:16];
                    if (v18)
                    {
                      v19 = v18;
                      v20 = *v88;
LABEL_21:
                      v21 = 0;
                      while (1)
                      {
                        if (*v88 != v20)
                        {
                          objc_enumerationMutation(writers2);
                        }

                        if (v8 == *(*(&v87 + 1) + 8 * v21))
                        {
                          break;
                        }

                        if (v19 == ++v21)
                        {
                          v19 = [writers2 countByEnumeratingWithState:&v87 objects:v111 count:16];
                          if (!v19)
                          {
                            goto LABEL_27;
                          }

                          goto LABEL_21;
                        }
                      }

                      v42 = __PLSLogSharedInstance(v51);
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                      {
                        name = [v8 name];
                        uTF8String = [name UTF8String];
                        *buf = 136315138;
                        v104 = uTF8String;
                        _os_log_impl(&dword_25EA3A000, v42, OS_LOG_TYPE_DEFAULT, "Added PSWriter already found for %s. Continuing without deleting the current writer.", buf, 0xCu);
                      }

                      self = selfCopy;
                      goto LABEL_59;
                    }

LABEL_27:

                    self = selfCopy;
                  }

                  v13 = [addedGraphs countByEnumeratingWithState:&v91 objects:v112 count:16];
                  if (v13)
                  {
                    continue;
                  }

                  break;
                }

LABEL_29:

                v23 = __PLSLogSharedInstance(v22);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  output = [v8 output];
                  resourceKey = [output resourceKey];
                  uTF8String2 = [resourceKey UTF8String];
                  *buf = 136315138;
                  v104 = uTF8String2;
                  _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "Deleting PSWriter (%s)", buf, 0xCu);
                }

                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v28 = MEMORY[0x277CCACA8];
                output2 = [v8 output];
                resourceKey2 = [output2 resourceKey];
                v31 = [v28 stringWithFormat:@"%@ (PSWriter)", resourceKey2];
                v32 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v32 setTransitionStateBufferDeinitCurResource:v31];

                v33 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v33 unlock];

                context = [v8 context];
                if (ps_writer_state_update())
                {
                  goto LABEL_68;
                }

                output3 = [v8 output];
                resourceKey3 = [output3 resourceKey];
                [(PSGraphCompiler *)self removeWriterForKey:resourceKey3];

                v37 = objc_loadWeakRetained(&self->_transitionManager);
                executionSession = [v37 executionSession];
                context2 = [executionSession context];
                output4 = [v8 output];
                resourceKey4 = [output4 resourceKey];
                v42 = [context2 resourceStreamForKey:resourceKey4];

                retainedBufferIndexers = self->_retainedBufferIndexers;
                output5 = [v8 output];
                resourceKey5 = [output5 resourceKey];
                v46 = [(NSMutableDictionary *)retainedBufferIndexers objectForKey:resourceKey5];

                if (v46)
                {
                  resPointerArr = [v46 resPointerArr];
                  resourceClass = [v42 resourceClass];
                  switch(resourceClass)
                  {
                    case 8:
                      v59 = v42;
                      if (![resPointerArr count])
                      {
                        goto LABEL_56;
                      }

                      context = 0;
                      while (1)
                      {
                        v60 = [resPointerArr pointerAtIndex:context];
                        if (![v59 deallocator])
                        {
                          break;
                        }

                        ([v59 deallocator])(v60);
                        if (++context >= [resPointerArr count])
                        {
                          goto LABEL_56;
                        }
                      }

                      [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
                      break;
                    case 7:
                      v57 = v42;
                      if (![resPointerArr count])
                      {
                        goto LABEL_56;
                      }

                      context = 0;
                      while (1)
                      {
                        v58 = [resPointerArr pointerAtIndex:context];
                        if (![v57 deallocator])
                        {
                          break;
                        }

                        ([v57 deallocator])(v58);
                        if (++context >= [resPointerArr count])
                        {
                          goto LABEL_56;
                        }
                      }

                      break;
                    case 4:
                      v49 = v42;
                      if ([resPointerArr count])
                      {
                        context = 0;
                        while (1)
                        {
                          v50 = [resPointerArr pointerAtIndex:context];
                          if (![v49 deallocator])
                          {
                            break;
                          }

                          ([v49 deallocator])(v50);
                          if (++context >= [resPointerArr count])
                          {
                            goto LABEL_56;
                          }
                        }

LABEL_67:
                        [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
LABEL_68:
                        v86 = 0;
                        name2 = [v8 name];
                        uTF8String3 = [name2 UTF8String];
                        v66 = (context + 80);
                        v67 = atomic_load((context + 80));
                        asprintf(&v86, "Unable to set writer (%s) state to _UNAVAILABLE. Current state %d. Maybe a write was in progress?", uTF8String3, v67);

                        v69 = __PLSLogSharedInstance(v68);
                        if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
                        {
                          name3 = [v8 name];
                          uTF8String4 = [name3 UTF8String];
                          v72 = atomic_load(v66);
                          *buf = 136315906;
                          v104 = "[PSGraphCompiler destroyWritersForTransitionBlock:]";
                          v105 = 1024;
                          v106 = 4351;
                          v107 = 2080;
                          v108 = uTF8String4;
                          v109 = 1024;
                          v110 = v72;
                          _os_log_impl(&dword_25EA3A000, v69, OS_LOG_TYPE_FAULT, "%s:%d Unable to set writer (%s) state to _UNAVAILABLE. Current state %d. Maybe a write was in progress?", buf, 0x22u);
                        }

                        v73 = OSLogFlushBuffers();
                        if (v73)
                        {
                          v74 = v73;
                          v75 = __PLSLogSharedInstance(v73);
                          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136315394;
                            v104 = "[PSGraphCompiler destroyWritersForTransitionBlock:]";
                            v105 = 1024;
                            v106 = v74;
                            _os_log_impl(&dword_25EA3A000, v75, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                          }
                        }

                        else
                        {
                          usleep(0x1E8480u);
                        }

                        abort_with_reason();
LABEL_76:
                        [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
LABEL_77:
                        [PSGraphCompiler destroyWritersForTransitionBlock:];
                      }

LABEL_56:

                      v61 = self->_retainedBufferIndexers;
                      output6 = [v8 output];
                      resourceKey6 = [output6 resourceKey];
                      [(NSMutableDictionary *)v61 removeObjectForKey:resourceKey6];

LABEL_57:
                      goto LABEL_58;
                    default:
                      goto LABEL_76;
                  }

                  [(PSGraphCompiler *)buf destroyWritersForTransitionBlock:v8];
                  goto LABEL_67;
                }

                [v42 options];
                v55 = v54;
                if ([v42 resourceClass]== 10)
                {
                  v56 = v42;
                  if (v55 != 2)
                  {
                    goto LABEL_77;
                  }

                  resPointerArr = v56;
                  [v56 deallocateIOSurfaceRefArray];
                  goto LABEL_57;
                }

LABEL_58:
                [(NSMapTable *)self->_retainedWriterBlocks removeObjectForKey:v8];

LABEL_59:
                v10 = v85;
              }
            }

            v84 = [writers countByEnumeratingWithState:&v95 objects:v113 count:16];
          }

          while (v84);
        }

        v5 = v79 + 1;
      }

      while (v79 + 1 != v78);
      v78 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
    }

    while (v78);
  }
}

- (void)destroyReadersForTransitionBlock:(id)block
{
  v89 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = __PLSLogSharedInstance(blockCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEFAULT, "Destroying PSReaders.", buf, 2u);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [blockCopy removedGraphs];
  v54 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
  if (v54)
  {
    v53 = *v76;
    selfCopy = self;
    do
    {
      v5 = 0;
      do
      {
        if (*v76 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = v5;
        v6 = *(*(&v75 + 1) + 8 * v5);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        readers = [v6 readers];
        v61 = [readers countByEnumeratingWithState:&v71 objects:v87 count:16];
        if (v61)
        {
          v7 = *v72;
          v57 = *v72;
          do
          {
            for (i = 0; i != v61; ++i)
            {
              if (*v72 != v7)
              {
                objc_enumerationMutation(readers);
              }

              v9 = *(*(&v71 + 1) + 8 * i);
              v10 = [(NSMapTable *)self->_retainedReaderBlocks objectForKey:v9];
              if (v10)
              {
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                addedGraphs = [blockCopy addedGraphs];
                v12 = [addedGraphs countByEnumeratingWithState:&v67 objects:v86 count:16];
                if (v12)
                {
                  v13 = v12;
                  v14 = *v68;
                  v60 = v10;
                  do
                  {
                    for (j = 0; j != v13; ++j)
                    {
                      v16 = v14;
                      if (*v68 != v14)
                      {
                        objc_enumerationMutation(addedGraphs);
                      }

                      v17 = *(*(&v67 + 1) + 8 * j);
                      v63 = 0u;
                      v64 = 0u;
                      v65 = 0u;
                      v66 = 0u;
                      readers2 = [v17 readers];
                      v19 = [readers2 countByEnumeratingWithState:&v63 objects:v85 count:16];
                      if (v19)
                      {
                        v20 = v19;
                        v21 = *v64;
                        while (2)
                        {
                          for (k = 0; k != v20; ++k)
                          {
                            if (*v64 != v21)
                            {
                              objc_enumerationMutation(readers2);
                            }

                            if (v9 == *(*(&v63 + 1) + 8 * k))
                            {

                              v38 = __PLSLogSharedInstance(v37);
                              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                              {
                                name = [v9 name];
                                uTF8String = [name UTF8String];
                                *buf = 136380675;
                                v80 = uTF8String;
                                _os_log_impl(&dword_25EA3A000, v38, OS_LOG_TYPE_DEFAULT, "Added PSReader already found for %{private}s. Continuing without deleting the current reader.", buf, 0xCu);
                              }

                              self = selfCopy;
                              v7 = v57;
                              v10 = v60;
                              goto LABEL_36;
                            }
                          }

                          v20 = [readers2 countByEnumeratingWithState:&v63 objects:v85 count:16];
                          if (v20)
                          {
                            continue;
                          }

                          break;
                        }
                      }

                      v14 = v16;
                    }

                    v13 = [addedGraphs countByEnumeratingWithState:&v67 objects:v86 count:16];
                    self = selfCopy;
                    v7 = v57;
                    v10 = v60;
                  }

                  while (v13);
                }

                WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
                [WeakRetained lock];

                v24 = MEMORY[0x277CCACA8];
                input = [v9 input];
                resourceKey = [input resourceKey];
                v27 = [v24 stringWithFormat:@"%@ (PSReader)", resourceKey];
                v28 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v28 setTransitionStateBufferDeinitCurResource:v27];

                v29 = objc_loadWeakRetained(&self->_transitionMonitor);
                [v29 unlock];

                context = [v9 context];
                if (ps_reader_state_update())
                {
                  v62 = 0;
                  name2 = [v9 name];
                  uTF8String2 = [name2 UTF8String];
                  v43 = atomic_load((context + 24));
                  asprintf(&v62, "Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", uTF8String2, v43);

                  v45 = __PLSLogSharedInstance(v44);
                  if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
                  {
                    name3 = [v9 name];
                    uTF8String3 = [name3 UTF8String];
                    v48 = atomic_load((context + 24));
                    *buf = 136315906;
                    v80 = "[PSGraphCompiler destroyReadersForTransitionBlock:]";
                    v81 = 1024;
                    *v82 = 4484;
                    *&v82[4] = 2080;
                    *&v82[6] = uTF8String3;
                    v83 = 1024;
                    v84 = v48;
                    _os_log_impl(&dword_25EA3A000, v45, OS_LOG_TYPE_FAULT, "%s:%d Unable to set reader (%s) state to _UNAVAILABLE. Current state %d. Maybe a read is in progress?", buf, 0x22u);
                  }

                  v49 = OSLogFlushBuffers();
                  if (v49)
                  {
                    v50 = v49;
                    v51 = __PLSLogSharedInstance(v49);
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v80 = "[PSGraphCompiler destroyReadersForTransitionBlock:]";
                      v81 = 1024;
                      *v82 = v50;
                      _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
                    }
                  }

                  else
                  {
                    usleep(0x1E8480u);
                  }

                  abort_with_reason();
                }

                v31 = __PLSLogSharedInstance(0);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  name4 = [v9 name];
                  uTF8String4 = [name4 UTF8String];
                  input2 = [v9 input];
                  resourceKey2 = [input2 resourceKey];
                  uTF8String5 = [resourceKey2 UTF8String];
                  *buf = 136380931;
                  v80 = uTF8String4;
                  v81 = 2081;
                  *v82 = uTF8String5;
                  _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "Deleting PSReader (%{private}s) for resource key %{private}s.", buf, 0x16u);
                }

                [(NSMapTable *)self->_retainedReaderBlocks removeObjectForKey:v9];
              }

LABEL_36:
            }

            v61 = [readers countByEnumeratingWithState:&v71 objects:v87 count:16];
          }

          while (v61);
        }

        v5 = v55 + 1;
      }

      while (v55 + 1 != v54);
      v54 = [obj countByEnumeratingWithState:&v75 objects:v88 count:16];
    }

    while (v54);
  }
}

- (void)destroyPRMInstancesForTransitionBlock:(id)block
{
  v136 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    v96 = blockCopy;
    v9 = __PLSLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEFAULT, "Destroying graph PRMInstances.", buf, 2u);
    }

    v101 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    removedGraphs = [blockCopy removedGraphs];
    v94 = [removedGraphs countByEnumeratingWithState:&v123 objects:v135 count:16];
    if (v94)
    {
      v11 = *v124;
      v92 = *v124;
      v93 = removedGraphs;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v124 != v11)
          {
            objc_enumerationMutation(removedGraphs);
          }

          v95 = v12;
          v13 = *(*(&v123 + 1) + 8 * v12);
          v14 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v14 lock];

          v15 = MEMORY[0x277CCACA8];
          name = [v13 name];
          v17 = [v15 stringWithFormat:@"Graph %@ (PRMInstances)", name];
          v18 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v18 setTransitionStateBufferDeinitCurResource:v17];

          v19 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v19 unlock];

          v121 = 0u;
          v122 = 0u;
          v119 = 0u;
          v120 = 0u;
          obj = [v13 tasks];
          v20 = [obj countByEnumeratingWithState:&v119 objects:v134 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v120;
            v97 = *v120;
            v98 = v13;
            do
            {
              v23 = 0;
              v99 = v21;
              do
              {
                if (*v120 != v22)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v119 + 1) + 8 * v23);
                prmTaskResources = self->_prmTaskResources;
                v26 = [(PSGraphCompiler *)self getGraphTaskHash:v13 withTask:v24];
                v27 = [(NSMapTable *)prmTaskResources objectForKey:v26];

                if (v27)
                {
                  [v101 addObject:v27];
                  v29 = self->_prmTaskResources;
                  v30 = [(PSGraphCompiler *)self getGraphTaskHash:v13 withTask:v24];
                  [(NSMapTable *)v29 removeObjectForKey:v30];

                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  outputs = [v24 outputs];
                  v106 = [outputs countByEnumeratingWithState:&v115 objects:v133 count:16];
                  if (!v106)
                  {
                    goto LABEL_44;
                  }

                  v102 = v27;
                  v103 = v23;
                  v104 = outputs;
                  v105 = *v116;
                  while (1)
                  {
                    for (i = 0; i != v106; ++i)
                    {
                      if (*v116 != v105)
                      {
                        objc_enumerationMutation(outputs);
                      }

                      v33 = *(*(&v115 + 1) + 8 * i);
                      retainedBufferIndexers = self->_retainedBufferIndexers;
                      resourceKey = [v33 resourceKey];
                      v36 = [(NSMutableDictionary *)retainedBufferIndexers objectForKey:resourceKey];

                      if (v36)
                      {
                        resPointerArr = [v36 resPointerArr];
                        selfCopy = self;
                        v39 = objc_loadWeakRetained(&self->_transitionManager);
                        executionSession2 = [v39 executionSession];
                        context = [executionSession2 context];
                        resourceKey2 = [v33 resourceKey];
                        v43 = [context resourceStreamForKey:resourceKey2];

                        resourceClass = [v43 resourceClass];
                        switch(resourceClass)
                        {
                          case 8:
                            v51 = v43;
                            if ([resPointerArr count])
                            {
                              v52 = 0;
                              while (1)
                              {
                                v53 = [resPointerArr pointerAtIndex:v52];
                                if (![v51 deallocator])
                                {
                                  break;
                                }

                                ([v51 deallocator])(v53);
                                if (++v52 >= [resPointerArr count])
                                {
                                  goto LABEL_38;
                                }
                              }

                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v33];
                              goto LABEL_72;
                            }

                            break;
                          case 7:
                            v48 = v43;
                            if ([resPointerArr count])
                            {
                              v49 = 0;
                              while (1)
                              {
                                v50 = [resPointerArr pointerAtIndex:v49];
                                if (![v48 deallocator])
                                {
                                  break;
                                }

                                ([v48 deallocator])(v50);
                                if (++v49 >= [resPointerArr count])
                                {
                                  goto LABEL_38;
                                }
                              }

LABEL_72:
                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v33];
LABEL_73:
                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v33];
LABEL_74:
                              [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v33];
                            }

                            break;
                          case 4:
                            v45 = v43;
                            if ([resPointerArr count])
                            {
                              v46 = 0;
                              while (1)
                              {
                                v47 = [resPointerArr pointerAtIndex:v46];
                                if (![v45 deallocator])
                                {
                                  goto LABEL_73;
                                }

                                ([v45 deallocator])(v47);
                                if (++v46 >= [resPointerArr count])
                                {
                                  goto LABEL_38;
                                }
                              }
                            }

                            break;
                          default:
                            goto LABEL_74;
                        }

LABEL_38:

                        self = selfCopy;
                        v54 = selfCopy->_retainedBufferIndexers;
                        resourceKey3 = [v33 resourceKey];
                        [(NSMutableDictionary *)v54 removeObjectForKey:resourceKey3];

                        outputs = v104;
                      }
                    }

                    v106 = [outputs countByEnumeratingWithState:&v115 objects:v133 count:16];
                    if (!v106)
                    {
                      v22 = v97;
                      v13 = v98;
                      v21 = v99;
                      v27 = v102;
                      v23 = v103;
                      goto LABEL_44;
                    }
                  }
                }

                outputs = __PLSLogSharedInstance(v28);
                if (os_log_type_enabled(outputs, OS_LOG_TYPE_ERROR))
                {
                  name2 = [v24 name];
                  name3 = [v13 name];
                  *buf = 138478083;
                  v130 = name2;
                  v131 = 2113;
                  v132 = name3;
                  _os_log_impl(&dword_25EA3A000, outputs, OS_LOG_TYPE_ERROR, "New task %{private}@ found in graph %{private}@ that wasn't present on addition. Ignoring", buf, 0x16u);
                }

LABEL_44:

                ++v23;
              }

              while (v23 != v21);
              v21 = [obj countByEnumeratingWithState:&v119 objects:v134 count:16];
            }

            while (v21);
          }

          v58 = [(NSMapTable *)self->_prmGroupedSourcePools objectForKey:v13];
          pointerValue = [v58 pointerValue];

          if (!pointerValue)
          {
            v89 = [(PSGraphCompiler *)buf destroyPRMInstancesForTransitionBlock:v13];
            [(PSGraphCompiler *)v89 deinitializeLocalSystemSourcesForTransitionBlock:v90, v91];
            return;
          }

          v60 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v60 lock];

          v61 = MEMORY[0x277CCACA8];
          name4 = [v13 name];
          v63 = [v61 stringWithFormat:@"Graph %@ (GSP)", name4];
          v64 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v64 setTransitionStateBufferDeinitCurResource:v63];

          v65 = objc_loadWeakRetained(&self->_transitionMonitor);
          [v65 unlock];

          ps_grouped_source_pool_destroy(pointerValue, v66);
          [(NSMapTable *)self->_prmGroupedSourcePools removeObjectForKey:v13];
          v12 = v95 + 1;
          v11 = v92;
          removedGraphs = v93;
        }

        while (v95 + 1 != v94);
        v94 = [v93 countByEnumeratingWithState:&v123 objects:v135 count:16];
        if (v94)
        {
          continue;
        }

        break;
      }
    }

    if ([v101 count])
    {
      v67 = objc_loadWeakRetained(&self->_transitionMonitor);
      [v67 lock];

      v68 = objc_loadWeakRetained(&self->_transitionMonitor);
      [v68 setTransitionStateBufferDeinitCurResource:@"(specific resources unknown) (PRMInstances)"];

      v69 = objc_loadWeakRetained(&self->_transitionMonitor);
      [v69 unlock];

      v71 = __PLSLogSharedInstance(v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v71, OS_LOG_TYPE_DEFAULT, "Deleting reader instances for removed graphs, if any.", buf, 2u);
      }

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v72 = v101;
      v73 = [v72 countByEnumeratingWithState:&v111 objects:v128 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v112;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v112 != v75)
            {
              objc_enumerationMutation(v72);
            }

            pointerValue2 = [*(*(&v111 + 1) + 8 * j) pointerValue];
            ps_task_resources_destroy_inputs(pointerValue2, v78);
          }

          v74 = [v72 countByEnumeratingWithState:&v111 objects:v128 count:16];
        }

        while (v74);
      }

      v80 = __PLSLogSharedInstance(v79);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v80, OS_LOG_TYPE_DEFAULT, "Deleting writer instances for removed graphs, if any.", buf, 2u);
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v81 = v72;
      v82 = [v81 countByEnumeratingWithState:&v107 objects:v127 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v108;
        do
        {
          for (k = 0; k != v83; ++k)
          {
            if (*v108 != v84)
            {
              objc_enumerationMutation(v81);
            }

            pointerValue3 = [*(*(&v107 + 1) + 8 * k) pointerValue];
            ps_task_resources_destroy_outputs(pointerValue3, v87);
            ps_task_resources_destroy(pointerValue3, v88);
          }

          v83 = [v81 countByEnumeratingWithState:&v107 objects:v127 count:16];
        }

        while (v83);
      }
    }

    blockCopy = v96;
  }
}

- (void)deinitializeLocalSystemSourcesForTransitionBlock:(id)block
{
  blockCopy = block;
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if ((shouldUseOptimizedVsyncPath & 1) == 0)
  {
    preTransitionGraphs = [blockCopy preTransitionGraphs];
    postTransitionGraphs = [blockCopy postTransitionGraphs];
    v9 = [(PSGraphCompiler *)self getRemovedResourcesWithOldGraphs:preTransitionGraphs withNewGraphs:postTransitionGraphs];

    v10 = [(PSGraphCompiler *)self extractLocalSystemSourceKeys:v9];
    preTransitionGraphs2 = [blockCopy preTransitionGraphs];
    v12 = [(PSGraphCompiler *)self getAllOutputsForGraphs:preTransitionGraphs2];
    [v10 minusSet:v12];

    [(PSGraphCompiler *)self stopLocalSystemSources:v10];
  }
}

- (void)stopLocalSystemSources:(id)sources
{
  v19 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [sourcesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(sourcesCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);
        [WeakRetained lock];

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Polaris Source)", v9];
        v12 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v12 setTransitionStateLocalSourceDeinitCurResource:v11];

        v13 = objc_loadWeakRetained(&self->_transitionMonitor);
        [v13 unlock];

        [(PSLocalStreamManager *)self->_localStreamManager stopSourceForKey:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [sourcesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)getProducerOutputRates:(id)rates
{
  v82 = *MEMORY[0x277D85DE8];
  ratesCopy = rates;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = ratesCopy;
  v39 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v39)
  {
    v40 = *v73;
    do
    {
      v5 = 0;
      do
      {
        if (*v73 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v72 + 1) + 8 * v5);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        tasks = [v6 tasks];
        v47 = [tasks countByEnumeratingWithState:&v68 objects:v80 count:16];
        if (v47)
        {
          v45 = *v69;
          do
          {
            v7 = 0;
            do
            {
              if (*v69 != v45)
              {
                objc_enumerationMutation(tasks);
              }

              v49 = v7;
              v8 = *(*(&v68 + 1) + 8 * v7);
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              outputs = [v8 outputs];
              v10 = [outputs countByEnumeratingWithState:&v64 objects:v79 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = *v65;
                do
                {
                  for (i = 0; i != v11; ++i)
                  {
                    if (*v65 != v12)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v14 = *(*(&v64 + 1) + 8 * i);
                    resourceKey = [v14 resourceKey];
                    v16 = [v4 valueForKey:resourceKey];

                    if (v16)
                    {
                      [(PSGraphCompiler *)&v63 getProducerOutputRates:v14];
LABEL_50:
                      [(PSGraphCompiler *)&v63 getProducerOutputRates:v14];
LABEL_51:
                      [(PSGraphCompiler *)&v63 getProducerOutputRates:outputs];
                    }

                    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
                    resourceKey2 = [v14 resourceKey];
                    [v4 setValue:v17 forKey:resourceKey2];
                  }

                  v11 = [outputs countByEnumeratingWithState:&v64 objects:v79 count:16];
                }

                while (v11);
              }

              v7 = v49 + 1;
            }

            while (v49 + 1 != v47);
            v47 = [tasks countByEnumeratingWithState:&v68 objects:v80 count:16];
          }

          while (v47);
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        sourceTasks = [v6 sourceTasks];
        v48 = [sourceTasks countByEnumeratingWithState:&v59 objects:v78 count:16];
        if (v48)
        {
          v46 = *v60;
          do
          {
            v19 = 0;
            do
            {
              if (*v60 != v46)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v50 = v19;
              v20 = *(*(&v59 + 1) + 8 * v19);
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              outputs = [v20 outputs];
              v21 = [outputs countByEnumeratingWithState:&v55 objects:v77 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v56;
                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v56 != v23)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    v14 = *(*(&v55 + 1) + 8 * j);
                    resourceKey3 = [v14 resourceKey];
                    v26 = [v4 valueForKey:resourceKey3];

                    if (v26)
                    {
                      goto LABEL_50;
                    }

                    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
                    resourceKey4 = [v14 resourceKey];
                    [v4 setValue:v27 forKey:resourceKey4];
                  }

                  v22 = [outputs countByEnumeratingWithState:&v55 objects:v77 count:16];
                }

                while (v22);
              }

              v19 = v50 + 1;
            }

            while (v50 + 1 != v48);
            v48 = [sourceTasks countByEnumeratingWithState:&v59 objects:v78 count:16];
          }

          while (v48);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        writers = [v6 writers];
        v30 = [writers countByEnumeratingWithState:&v51 objects:v76 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v52;
          do
          {
            for (k = 0; k != v31; ++k)
            {
              if (*v52 != v32)
              {
                objc_enumerationMutation(writers);
              }

              outputs = [*(*(&v51 + 1) + 8 * k) output];
              resourceKey5 = [outputs resourceKey];
              v35 = [v4 valueForKey:resourceKey5];

              if (v35)
              {
                goto LABEL_51;
              }

              v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "resolvedFrequency")}];
              resourceKey6 = [outputs resourceKey];
              [v4 setValue:v36 forKey:resourceKey6];
            }

            v31 = [writers countByEnumeratingWithState:&v51 objects:v76 count:16];
          }

          while (v31);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v39);
  }

  return v4;
}

- (id)getSystemSources:(id)sources withTransitionBlock:(id)block withIntermediateSources:(id)intermediateSources
{
  v38 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  intermediateSourcesCopy = intermediateSources;
  v9 = [(PSGraphCompiler *)self getAllInputsForGraph:sourcesCopy];
  v24 = intermediateSourcesCopy;
  [v9 minusSet:intermediateSourcesCopy];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = sourcesCopy;
  obj = [sourcesCopy tasks];
  v10 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        outputs = [v13 outputs];
        v15 = [outputs countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(outputs);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              resourceKey = [v19 resourceKey];
              v21 = [v9 containsObject:resourceKey];

              if (v21)
              {
                resourceKey2 = [v19 resourceKey];
                [v9 removeObject:resourceKey2];
              }
            }

            v16 = [outputs countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v16);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  return v9;
}

- (id)getStridedGSTWaitSources:(id)sources transitionBlock:(id)block
{
  v63 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v6 = objc_alloc_init(MEMORY[0x277CCA940]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v41 = sourcesCopy;
  tasks = [sourcesCopy tasks];
  v38 = [tasks countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v38)
  {
    v8 = *v56;
    v37 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(tasks);
        }

        v39 = v9;
        v10 = *(*(&v55 + 1) + 8 * v9);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = [v10 inputs];
        v11 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v52;
          while (2)
          {
            v14 = 0;
            v40 = v12;
            do
            {
              if (*v52 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v51 + 1) + 8 * v14);
              context = self->_context;
              resourceKey = [v15 resourceKey];
              v18 = [(PSContext *)context resourceStreamForKey:resourceKey];

              if (![v15 type])
              {
                if ([v18 resourceClass] == 10)
                {

                  v34 = 0;
                  goto LABEL_34;
                }

                resolvedResourceKey = [v15 resolvedResourceKey];
                systemPulseStride = [v41 systemPulseStride];
                v21 = [PSResourceRequest requestWithKey:resolvedResourceKey stride:systemPulseStride inputType:0 graph:v41];
                [v6 addObject:v21];

                v12 = v40;
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        ++v9;
        v8 = v37;
      }

      while (v39 + 1 != v38);
      v38 = [tasks countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v38);
  }

  v36 = v6;

  tasks = objc_alloc_init(MEMORY[0x277CBEB58]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  tasks2 = [v41 tasks];
  v23 = [tasks2 countByEnumeratingWithState:&v47 objects:v60 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v48;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(tasks2);
        }

        v27 = *(*(&v47 + 1) + 8 * i);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        outputs = [v27 outputs];
        v29 = [outputs countByEnumeratingWithState:&v43 objects:v59 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v44;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v44 != v31)
              {
                objc_enumerationMutation(outputs);
              }

              resourceKey2 = [*(*(&v43 + 1) + 8 * j) resourceKey];
              [tasks addObject:resourceKey2];
            }

            v30 = [outputs countByEnumeratingWithState:&v43 objects:v59 count:16];
          }

          while (v30);
        }
      }

      v24 = [tasks2 countByEnumeratingWithState:&v47 objects:v60 count:16];
    }

    while (v24);
  }

  v6 = v36;
  [v36 filterOutResourceKeys:tasks];
  v34 = v36;
LABEL_34:

  return v34;
}

- (id)getStridedSystemSources:(id)sources withTransitionBlock:(id)block
{
  v38 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  blockCopy = block;
  v8 = [(PSGraphCompiler *)self getAllStridedInputsForGraph:sourcesCopy];
  v24 = blockCopy;
  v9 = [(PSGraphCompiler *)self getStridedIntermediateSources:sourcesCopy withTransitionBlock:blockCopy];
  [v8 minusSet:v9];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = sourcesCopy;
  obj = [sourcesCopy tasks];
  v10 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        outputs = [v13 outputs];
        v15 = [outputs countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(outputs);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              resourceKey = [v19 resourceKey];
              v21 = [v8 containsResourceKey:resourceKey];

              if (v21)
              {
                resourceKey2 = [v19 resourceKey];
                [v8 removeResourceKey:resourceKey2];
              }
            }

            v16 = [outputs countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v16);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)getStridedIntermediateSources:(id)sources withTransitionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  blockCopy = block;
  v8 = [(PSGraphCompiler *)self getAllStridedInputsForGraph:sourcesCopy];
  v26 = blockCopy;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v10 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs];

  v25 = v10;
  [v8 filterMatchingResourceKeys:v10];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = sourcesCopy;
  obj = [sourcesCopy tasks];
  v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v29 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        outputs = [v14 outputs];
        v16 = [outputs countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(outputs);
              }

              v20 = *(*(&v30 + 1) + 8 * j);
              resourceKey = [v20 resourceKey];
              v22 = [v8 containsResourceKey:resourceKey];

              if (v22)
              {
                resourceKey2 = [v20 resourceKey];
                [v8 removeResourceKey:resourceKey2];
              }
            }

            v17 = [outputs countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  return v8;
}

- (id)getIntermediateSources:(id)sources withTransitionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  blockCopy = block;
  v8 = [(PSGraphCompiler *)self getAllInputsForGraph:sourcesCopy];
  v26 = blockCopy;
  postTransitionGraphs = [blockCopy postTransitionGraphs];
  v10 = [(PSGraphCompiler *)self getAllLocallyProducedOutputsForGraphs:postTransitionGraphs];

  v25 = v10;
  [v8 intersectSet:v10];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = sourcesCopy;
  obj = [sourcesCopy tasks];
  v11 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v29 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        outputs = [v14 outputs];
        v16 = [outputs countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v31;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v31 != v18)
              {
                objc_enumerationMutation(outputs);
              }

              v20 = *(*(&v30 + 1) + 8 * j);
              resourceKey = [v20 resourceKey];
              v22 = [v8 containsObject:resourceKey];

              if (v22)
              {
                resourceKey2 = [v20 resourceKey];
                [v8 removeObject:resourceKey2];
              }
            }

            v17 = [outputs countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v17);
        }
      }

      v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  return v8;
}

- (id)getAllStridedInputsForGraph:(id)graph
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [graphCopy tasks];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v18 = *v26;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v5;
        v6 = *(*(&v25 + 1) + 8 * v5);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        inputs = [v6 inputs];
        v8 = [inputs countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(inputs);
              }

              v12 = *(*(&v21 + 1) + 8 * i);
              resolvedResourceKey = [v12 resolvedResourceKey];
              systemPulseStride = [graphCopy systemPulseStride];
              v15 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", resolvedResourceKey, systemPulseStride, [v12 type], graphCopy);
              [v4 addObject:v15];
            }

            v9 = [inputs countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  return v4;
}

- (id)getAllInputsForGraph:(id)graph
{
  v29 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = graphCopy;
  tasks = [graphCopy tasks];
  v6 = [tasks countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(tasks);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        inputs = [v10 inputs];
        v12 = [inputs countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(inputs);
              }

              resolvedResourceKey = [*(*(&v19 + 1) + 8 * j) resolvedResourceKey];
              [v4 addObject:resolvedResourceKey];
            }

            v13 = [inputs countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [tasks countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)getAllLocallyProducedOutputsForGraphs:(id)graphs
{
  v74 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = graphsCopy;
  v41 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v41)
  {
    v40 = *v65;
    do
    {
      v5 = 0;
      do
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * v5);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v42 = v5;
        v43 = v6;
        tasks = [v6 tasks];
        v8 = [tasks countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v61;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v61 != v10)
              {
                objc_enumerationMutation(tasks);
              }

              v12 = *(*(&v60 + 1) + 8 * i);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              outputs = [v12 outputs];
              v14 = [outputs countByEnumeratingWithState:&v56 objects:v71 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v57;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v57 != v16)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v56 + 1) + 8 * j) resourceKey];
                    [v4 addObject:resourceKey];
                  }

                  v15 = [outputs countByEnumeratingWithState:&v56 objects:v71 count:16];
                }

                while (v15);
              }
            }

            v9 = [tasks countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v9);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        sourceTasks = [v43 sourceTasks];
        v20 = [sourceTasks countByEnumeratingWithState:&v52 objects:v70 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v53;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v24 = *(*(&v52 + 1) + 8 * k);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              outputs2 = [v24 outputs];
              v26 = [outputs2 countByEnumeratingWithState:&v48 objects:v69 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v49;
                do
                {
                  for (m = 0; m != v27; ++m)
                  {
                    if (*v49 != v28)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v48 + 1) + 8 * m) resourceKey];
                    [v4 addObject:resourceKey2];
                  }

                  v27 = [outputs2 countByEnumeratingWithState:&v48 objects:v69 count:16];
                }

                while (v27);
              }
            }

            v21 = [sourceTasks countByEnumeratingWithState:&v52 objects:v70 count:16];
          }

          while (v21);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        writers = [v43 writers];
        v32 = [writers countByEnumeratingWithState:&v44 objects:v68 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v44 + 1) + 8 * n) output];
              resourceKey3 = [output resourceKey];
              [v4 addObject:resourceKey3];
            }

            v33 = [writers countByEnumeratingWithState:&v44 objects:v68 count:16];
          }

          while (v33);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v41);
  }

  return v4;
}

- (id)filterANEWaitResources:(id)resources withGraph:(id)graph
{
  v6 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  v8 = [v6 setWithSet:resources];
  v9 = [(PSGraphCompiler *)self getANEWaitResources:graphCopy];

  [v8 intersectSet:v9];

  return v8;
}

- (id)filterNonANEWaitResources:(id)resources withGraph:(id)graph
{
  v6 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  resourcesCopy = resources;
  v9 = [[v6 alloc] initWithSet:resourcesCopy];

  v10 = [(PSGraphCompiler *)self getPolicyWaitResources:graphCopy];
  v11 = [(PSGraphCompiler *)self getANEWaitResources:graphCopy];

  [v9 intersectSet:v10];
  [v9 minusSet:v11];

  return v9;
}

- (id)getPolicyWaitResources:(id)resources
{
  v30 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = resourcesCopy;
  tasks = [resourcesCopy tasks];
  v6 = [tasks countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(tasks);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        inputs = [v10 inputs];
        v12 = [inputs countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(inputs);
              }

              v16 = *(*(&v20 + 1) + 8 * j);
              if (![v16 type])
              {
                resolvedResourceKey = [v16 resolvedResourceKey];
                [v4 addObject:resolvedResourceKey];
              }
            }

            v13 = [inputs countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v13);
        }
      }

      v7 = [tasks countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)getANEWaitResources:(id)resources
{
  v33 = *MEMORY[0x277D85DE8];
  resourcesCopy = resources;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = resourcesCopy;
  obj = [resourcesCopy tasks];
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v21 = *v28;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        inputs = [v7 inputs];
        v9 = [inputs countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(inputs);
              }

              v13 = *(*(&v23 + 1) + 8 * j);
              context = self->_context;
              resourceKey = [v13 resourceKey];
              v16 = [(PSContext *)context resourceStreamForKey:resourceKey];

              if (![v13 type] && objc_msgSend(v16, "resourceClass") == 10)
              {
                resolvedResourceKey = [v13 resolvedResourceKey];
                [v5 addObject:resolvedResourceKey];
              }
            }

            v10 = [inputs countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v10);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  return v5;
}

- (id)getThreadPoolHashIDForGraph:(id)graph
{
  v3 = MEMORY[0x277CCACA8];
  graphCopy = graph;
  v5 = [v3 alloc];
  resolvedDomain = [graphCopy resolvedDomain];
  v7 = [resolvedDomain key];
  resolvedFrequency = [graphCopy resolvedFrequency];

  v9 = [v5 initWithFormat:@"%@-%d", v7, resolvedFrequency];

  return v9;
}

- (BOOL)shouldUseSharedTriggerForGraph:(id)graph withTransitionBlock:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  blockCopy = block;
  v8 = +[PLSSettings currentSettings];
  enableThreadCoalescing = [v8 enableThreadCoalescing];

  if (!enableThreadCoalescing)
  {
    goto LABEL_20;
  }

  if ([graphCopy workloadWait])
  {
    goto LABEL_20;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
  executionSession = [WeakRetained executionSession];
  shouldUseOptimizedVsyncPath = [executionSession shouldUseOptimizedVsyncPath];

  if (shouldUseOptimizedVsyncPath)
  {
    goto LABEL_20;
  }

  criticalityCPU = [graphCopy criticalityCPU];
  if (criticalityCPU == 2)
  {
    disableThreadSharing = [graphCopy disableThreadSharing];
    if (disableThreadSharing)
    {
      v15 = __PLSLogSharedInstance(disableThreadSharing);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        name = [graphCopy name];
        v29 = 136380675;
        uTF8String = [name UTF8String];
        v17 = "ThreadPool: Graph (%{private}s) will not be coalesced - Graph Disabled Thread Sharing";
LABEL_18:
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_DEFAULT, v17, &v29, 0xCu);
      }
    }

    else
    {
      teardownType = [graphCopy teardownType];
      if (!teardownType)
      {
        if (shouldUseSharedTriggerForGraph_withTransitionBlock__once_token != -1)
        {
          [PSGraphCompiler shouldUseSharedTriggerForGraph:withTransitionBlock:];
        }

        v19 = shouldUseSharedTriggerForGraph_withTransitionBlock__mixedDomain;
        resolvedDomain = [graphCopy resolvedDomain];
        LODWORD(v19) = [v19 isEqual:resolvedDomain];

        if (!v19)
        {
          v24 = [(PSGraphCompiler *)self getIntermediateSources:graphCopy withTransitionBlock:blockCopy];
          v25 = [(PSGraphCompiler *)self getSystemSources:graphCopy withTransitionBlock:blockCopy withIntermediateSources:v24];
          v26 = [(PSGraphCompiler *)self filterNonANEWaitResources:v24 withGraph:graphCopy];
          v27 = [(PSGraphCompiler *)self filterNonANEWaitResources:v25 withGraph:graphCopy];
          v28 = [v26 count];
          v22 = v28 + [v27 count] != 0;

          goto LABEL_21;
        }

        v15 = __PLSLogSharedInstance(v21);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        name = [graphCopy name];
        v29 = 136380675;
        uTF8String = [name UTF8String];
        v17 = "ThreadPool: Graph (%{private}s) will not be coalesced - Mixed Domain";
        goto LABEL_18;
      }

      v15 = __PLSLogSharedInstance(teardownType);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        name = [graphCopy name];
        v29 = 136380675;
        uTF8String = [name UTF8String];
        v17 = "ThreadPool: Graph (%{private}s) will not be coalesced - Non Standard Teardown Type";
        goto LABEL_18;
      }
    }
  }

  else
  {
    v15 = __PLSLogSharedInstance(criticalityCPU);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [graphCopy name];
      v29 = 136380675;
      uTF8String = [name UTF8String];
      v17 = "ThreadPool: Graph (%{private}s) will not be coalesced - Graph is not Best Effort";
      goto LABEL_18;
    }
  }

LABEL_19:

LABEL_20:
  v22 = 0;
LABEL_21:

  return v22;
}

uint64_t __70__PSGraphCompiler_shouldUseSharedTriggerForGraph_withTransitionBlock___block_invoke()
{
  shouldUseSharedTriggerForGraph_withTransitionBlock__mixedDomain = [MEMORY[0x277D3E6C8] mixedDomain];

  return MEMORY[0x2821F96F8]();
}

- (void)setThreadPoolIDForGraph:(id)graph withTransitionBlock:(id)block
{
  graphCopy = graph;
  blockCopy = block;
  if (setThreadPoolIDForGraph_withTransitionBlock__onceToken != -1)
  {
    [PSGraphCompiler setThreadPoolIDForGraph:withTransitionBlock:];
  }

  [graphCopy setThreadPoolID:0];
  [graphCopy setExecutionType:0];
  if ([(PSGraphCompiler *)self shouldUseSharedTriggerForGraph:graphCopy withTransitionBlock:blockCopy])
  {
    v7 = [(PSGraphCompiler *)self getThreadPoolHashIDForGraph:graphCopy];
    v8 = [setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap objectForKey:v7];
    v9 = v8;
    if (v8)
    {
      [graphCopy setThreadPoolID:{objc_msgSend(v8, "unsignedLongLongValue")}];
    }

    else
    {
      [graphCopy setThreadPoolID:ps_util_generate_uuid()];
      v10 = setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
      [v10 setObject:v11 forKey:v7];
    }

    [graphCopy setExecutionType:1];
  }

  else
  {
    [graphCopy setThreadPoolID:ps_util_generate_uuid()];
    [graphCopy setExecutionType:2];
  }
}

void __63__PSGraphCompiler_setThreadPoolIDForGraph_withTransitionBlock___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v1 = setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap;
  setThreadPoolIDForGraph_withTransitionBlock__bestEffortHashMap = v0;

  v2 = +[PLSSettings currentSettings];
  v3 = [v2 enableThreadCoalescing];

  v5 = __PLSLogSharedInstance(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v10 = 0;
      v7 = "Thread Coalescing is enabled";
      v8 = &v10;
LABEL_6:
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if (v6)
  {
    v9 = 0;
    v7 = "Thread Coalescing is disabled";
    v8 = &v9;
    goto LABEL_6;
  }
}

- (id)threadPoolExecPathToString:(ps_exec_shared_thread_pool_s *)string
{
  v28 = *MEMORY[0x277D85DE8];
  var1 = string->var1;
  if (var1 < 4)
  {
    return off_279A48410[var1];
  }

  v17 = 0;
  p_var5 = &string[1].var5;
  v6 = asprintf(&v17, "Unknown ThreadPool Path (%u) for thread_pool (%s) with id: %llu", var1, &string[1].var5, string->var8);
  v7 = __PLSLogSharedInstance(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    v8 = string->var1;
    var8 = string->var8;
    *buf = 136316162;
    v19 = "[PSGraphCompiler threadPoolExecPathToString:]";
    v20 = 1024;
    v21 = 5066;
    v22 = 1024;
    v23 = v8;
    v24 = 2080;
    v25 = p_var5;
    v26 = 2048;
    v27 = var8;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d Unknown ThreadPool Path (%u) for thread_pool (%s) with id: %llu", buf, 0x2Cu);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[PSGraphCompiler threadPoolExecPathToString:]";
      v20 = 1024;
      v21 = v11;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = abort_with_reason();
  [(PSGraphCompiler *)v13 addGraphToThreadPool:v14, v15];
  return result;
}

- (void)addGraphToThreadPool:(id)pool
{
  v55 = *MEMORY[0x277D85DE8];
  poolCopy = pool;
  v5 = *[poolCopy executionContext];
  activeThreadPools = self->_activeThreadPools;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
  v8 = [(NSMutableDictionary *)activeThreadPools objectForKey:v7];

  if (!v8)
  {
    inited = ps_exec_init_shared_thread_pool();
    *(inited + 4) = [poolCopy threadPoolID];
    WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
    executionSession = [WeakRetained executionSession];
    *(inited + 42) = [executionSession gsm];

    v17 = objc_loadWeakRetained(&self->_transitionManager);
    executionSession2 = [v17 executionSession];
    shouldUseOptimizedVsyncPath = [executionSession2 shouldUseOptimizedVsyncPath];

    if (shouldUseOptimizedVsyncPath)
    {
      v21 = 2;
    }

    else
    {
      workloadWait = [poolCopy workloadWait];
      if (workloadWait)
      {
        v21 = 3;
      }

      else
      {
        workloadWait = [poolCopy executionType];
        if (workloadWait == 1)
        {
          *(inited + 1) = 0;
          goto LABEL_12;
        }

        v21 = 1;
      }
    }

    *(inited + 1) = v21;
LABEL_12:
    v22 = __PLSLogSharedInstance(workloadWait);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      name = [poolCopy name];
      uTF8String = [name UTF8String];
      v25 = [(PSGraphCompiler *)self threadPoolExecPathToString:inited];
      *buf = 136315650;
      v48 = uTF8String;
      v49 = 2080;
      uTF8String2 = [v25 UTF8String];
      v51 = 2048;
      threadPoolID = [poolCopy threadPoolID];
      _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEFAULT, "ThreadPool: New Threadpool for Graph (%s) on Execution Path (%s) with ID (%llu)", buf, 0x20u);
    }

    if (*(inited + 1))
    {
      *(inited + 2) = [poolCopy resolvedThreadPoolSize];
      name2 = [poolCopy name];
      [name2 UTF8String];
      __strlcpy_chk();

      *(inited + 6) = v5;
      resolvedCriticalityCPU = [poolCopy resolvedCriticalityCPU];
      if (resolvedCriticalityCPU > 1)
      {
        if (resolvedCriticalityCPU == 2)
        {
          v28 = 2;
          goto LABEL_30;
        }

        if (resolvedCriticalityCPU == 3)
        {
          v28 = 3;
          goto LABEL_30;
        }
      }

      else if (resolvedCriticalityCPU)
      {
        if (resolvedCriticalityCPU == 1)
        {
          v28 = 1;
LABEL_30:
          *(inited + 17) = v28;
        }
      }

      else
      {
        *(inited + 17) = 0;
      }

LABEL_31:
      *(inited + 93) = 0;
      v43 = *(inited + 45);
      *(inited + 45) = 0;

      v44 = self->_activeThreadPools;
      v10 = [MEMORY[0x277CCAE60] valueWithPointer:inited];
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
      [(NSMutableDictionary *)v44 setObject:v10 forKey:v45];

      goto LABEL_32;
    }

    *(inited + 2) = 1;
    *(inited + 17) = 2;
    *(inited + 24) = 1;
    v29 = MEMORY[0x277CCACA8];
    v30 = best_effort_thread_pool_name;
    resolvedDomain = [poolCopy resolvedDomain];
    v32 = [resolvedDomain key];
    v33 = [v29 stringWithFormat:@"%s-%@-%lu", v30, v32, objc_msgSend(poolCopy, "resolvedFrequency")];

    [v33 UTF8String];
    __strlcpy_chk();
    v34 = +[PLSSettings currentSettings];
    v46 = v5;
    if ([v34 enableFastTransition])
    {
      v35 = objc_loadWeakRetained(&self->_transitionManager);
      executionSession3 = [v35 executionSession];
      systemGraphSession = [executionSession3 systemGraphSession];

      if (systemGraphSession)
      {
LABEL_27:
        v41 = getpid();
        v42 = mach_absolute_time();
        snprintf(buf, 0x80uLL, "%d-%04llx-%s", v41, v42 & 0xFFFFF, inited + 72);

        v5 = v46;
        goto LABEL_31;
      }
    }

    else
    {
    }

    v38 = *(inited + 42);
    v39 = getpid();
    shared_trigger = ps_gsm_create_shared_trigger(v38, inited + 72, v39);
    *(inited + 44) = shared_trigger;
    if (!shared_trigger)
    {
      [(PSGraphCompiler *)buf addGraphToThreadPool:?];
    }

    goto LABEL_27;
  }

  inited = [v8 pointerValue];
  atomic_fetch_add(inited + 4, 1u);
  atomic_fetch_add(inited + 5, 1u);
  v10 = __PLSLogSharedInstance(inited);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    name3 = [poolCopy name];
    uTF8String3 = [name3 UTF8String];
    threadPoolID2 = [poolCopy threadPoolID];
    v14 = atomic_load(inited + 4);
    *buf = 136315906;
    v48 = uTF8String3;
    v49 = 2080;
    uTF8String2 = inited + 72;
    v51 = 2048;
    threadPoolID = threadPoolID2;
    v53 = 1024;
    v54 = v14;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEFAULT, "ThreadPool: Adding Graph (%s) for existing ThreadPool (%s) with ID (%llu) with Count (%d)", buf, 0x26u);
  }

LABEL_32:

  *(v5 + 6792) = inited;
  *([poolCopy executionContext] + 8) = inited;
}

- (void)removeGraphFromThreadPool:(id)pool
{
  v33 = *MEMORY[0x277D85DE8];
  poolCopy = pool;
  activeThreadPools = self->_activeThreadPools;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
  v7 = [(NSMutableDictionary *)activeThreadPools objectForKey:v6];

  if (!v7)
  {
    [(PSGraphCompiler *)&v25 removeGraphFromThreadPool:poolCopy];
  }

  pointerValue = [v7 pointerValue];
  add = atomic_fetch_add((pointerValue + 16), 0xFFFFFFFF);
  if (add <= 0)
  {
    [PSGraphCompiler removeGraphFromThreadPool:];
  }

  v10 = pointerValue;
  v11 = __PLSLogSharedInstance(pointerValue);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    name = [poolCopy name];
    uTF8String = [name UTF8String];
    v14 = *(v10 + 32);
    v15 = atomic_load((v10 + 16));
    v25 = 136381443;
    v26 = uTF8String;
    v27 = 2080;
    v28 = v10 + 72;
    v29 = 2048;
    v30 = v14;
    v31 = 1024;
    v32 = v15;
    _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEFAULT, "ThreadPool: Removing Graph (%{private}s) from ThreadPool (%s) with ID (%llu) with Count (%d)", &v25, 0x26u);
  }

  if (add == 1)
  {
    v17 = *(v10 + 24);
    v18 = __PLSLogSharedInstance(v16);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 == 1)
    {
      if (v19)
      {
        v20 = *(v10 + 32);
        v21 = [(PSGraphCompiler *)self threadPoolExecPathToString:v10];
        v25 = 136315650;
        v26 = v10 + 72;
        v27 = 2048;
        v28 = v20;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEFAULT, "ThreadPool: Keeping alive ThreadPool (%s) with ID (%llu) on path (%@) with no subgraphs subscribed to it", &v25, 0x20u);
      }
    }

    else
    {
      if (v19)
      {
        v22 = *(v10 + 32);
        v23 = [(PSGraphCompiler *)self threadPoolExecPathToString:v10];
        v25 = 136315650;
        v26 = v10 + 72;
        v27 = 2048;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_DEFAULT, "ThreadPool: Tearing down ThreadPool (%s) with ID (%llu) on path (%@)", &v25, 0x20u);
      }

      ps_exec_destroy_shared_thread_pool(v10);
      v24 = self->_activeThreadPools;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(poolCopy, "threadPoolID")}];
      [(NSMutableDictionary *)v24 removeObjectForKey:v18];
    }
  }
}

- (void)initThreadPoolForGraph:(id)graph withExecutorGraph:(ps_exec_graph_s *)executorGraph
{
  graphCopy = graph;
  if ([graphCopy threadPoolID])
  {
    activeThreadPools = self->_activeThreadPools;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(graphCopy, "threadPoolID")}];
    v9 = [(NSMutableDictionary *)activeThreadPools objectForKey:v8];

    if (v9)
    {
      pointerValue = [v9 pointerValue];
      v12 = atomic_load(pointerValue);
      if (v12 == 1)
      {
        *(pointerValue + 328) = executorGraph;
        atomic_store(2u, pointerValue);
        ps_exec_launch_threadpool(pointerValue);
      }
    }

    else
    {
      v13 = __PLSLogSharedInstance(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "ThreadPool does not exist in _activeThreadPools", v14, 2u);
      }
    }
  }
}

- (void)destroyAllThreadPools
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = [(NSMutableDictionary *)self->_activeThreadPools count];
  if (v2)
  {
    v3 = __PLSLogSharedInstance(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "ThreadPool: Destroying all ThreadPools", buf, 2u);
    }

    [(NSMutableDictionary *)self->_activeThreadPools allValues];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v4 = v45 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v42 objects:v55 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v43;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(v4);
          }

          pointerValue = [*(*(&v42 + 1) + 8 * i) pointerValue];
          if (atomic_load((pointerValue + 16)))
          {
            [PSGraphCompiler destroyAllThreadPools];
          }

          v11 = pointerValue;
          if (atomic_load((pointerValue + 20)))
          {
            [PSGraphCompiler destroyAllThreadPools];
          }

          ps_exec_terminate_shared_thread_pool(pointerValue);
          ps_gsm_shared_trigger_remove_waiter(*(v11 + 336), *(v11 + 352));
        }

        v6 = [v4 countByEnumeratingWithState:&v42 objects:v55 count:16];
      }

      while (v6);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v4;
    v13 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
    if (v13)
    {
      v15 = v13;
      v16 = *v39;
      v17 = 0x279A47000uLL;
      *&v14 = 134217984;
      v35 = v14;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(obj);
          }

          pointerValue2 = [*(*(&v38 + 1) + 8 * j) pointerValue];
          v20 = *(pointerValue2 + 32);
          v21 = __PLSLogSharedInstance(pointerValue2);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v17;
            v23 = *(pointerValue2 + 32);
            v24 = [(PSGraphCompiler *)self threadPoolExecPathToString:pointerValue2];
            *buf = 136315906;
            v47 = "[PSGraphCompiler destroyAllThreadPools]";
            v48 = 2080;
            v49 = pointerValue2 + 72;
            v50 = 2048;
            v51 = v23;
            v17 = v22;
            v52 = 2112;
            v53 = v24;
            _os_log_impl(&dword_25EA3A000, v21, OS_LOG_TYPE_DEFAULT, "ThreadPool: %s Tearing down ThreadPool (%s) with ID (%llu) on path (%@)", buf, 0x2Au);
          }

          ps_exec_destroy_shared_thread_pool(pointerValue2);
          currentSettings = [*(v17 + 1680) currentSettings];
          if ([currentSettings enableFastTransition])
          {
            WeakRetained = objc_loadWeakRetained(&self->_transitionManager);
            executionSession = [WeakRetained executionSession];
            systemGraphSession = [executionSession systemGraphSession];

            if (!systemGraphSession)
            {
              continue;
            }

            v30 = __PLSLogSharedInstance(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v35;
              v47 = v20;
              _os_log_impl(&dword_25EA3A000, v30, OS_LOG_TYPE_DEFAULT, "Sending an XPC message to remove ThreadPool with ID (%llu)", buf, 0xCu);
            }

            currentSettings = xpc_dictionary_create(0, 0, 0);
            populateRemoveThreadPoolInfo(currentSettings, v20);
            v31 = objc_loadWeakRetained(&self->_transitionManager);
            executionSession2 = [v31 executionSession];
            systemGraphSession2 = [executionSession2 systemGraphSession];
            v34 = xpc_session_send_message(systemGraphSession2, currentSettings);

            if (v34)
            {
              [PSGraphCompiler destroyAllThreadPools];
            }
          }
        }

        v15 = [obj countByEnumeratingWithState:&v38 objects:v54 count:16];
      }

      while (v15);
    }

    [(NSMutableDictionary *)self->_activeThreadPools removeAllObjects];
  }
}

- (id)getAllResourcesForGraphs:(id)graphs
{
  v58 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = graphsCopy;
  v33 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v33)
  {
    v32 = *v51;
    do
    {
      v6 = 0;
      do
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v6;
        v7 = *(*(&v50 + 1) + 8 * v6);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        tasks = [v7 tasks];
        v37 = [tasks countByEnumeratingWithState:&v46 objects:v56 count:16];
        if (v37)
        {
          v36 = *v47;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v47 != v36)
              {
                objc_enumerationMutation(tasks);
              }

              v9 = *(*(&v46 + 1) + 8 * i);
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              inputs = [v9 inputs];
              v11 = [inputs countByEnumeratingWithState:&v42 objects:v55 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v43;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v43 != v13)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v15 = *(*(&v42 + 1) + 8 * j);
                    resolvedResourceKey = [v15 resolvedResourceKey];
                    [v5 addObject:resolvedResourceKey];

                    device = self->_device;
                    resolvedResourceKey2 = [v15 resolvedResourceKey];
                    v19 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

                    syncedKey = [v19 syncedKey];
                    if (syncedKey)
                    {
                      [v5 addObject:syncedKey];
                    }
                  }

                  v12 = [inputs countByEnumeratingWithState:&v42 objects:v55 count:16];
                }

                while (v12);
              }

              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              outputs = [v9 outputs];
              v22 = [outputs countByEnumeratingWithState:&v38 objects:v54 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v39;
                do
                {
                  for (k = 0; k != v23; ++k)
                  {
                    if (*v39 != v24)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v38 + 1) + 8 * k) resourceKey];
                    [v5 addObject:resourceKey];
                  }

                  v23 = [outputs countByEnumeratingWithState:&v38 objects:v54 count:16];
                }

                while (v23);
              }
            }

            v37 = [tasks countByEnumeratingWithState:&v46 objects:v56 count:16];
          }

          while (v37);
        }

        v6 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v33);
  }

  v27 = [(PSGraphCompiler *)self getSourceTaskOutputResourcesForGraphs:obj];
  [v5 unionSet:v27];

  v28 = [(PSGraphCompiler *)self getWriterResourcesForGraphs:obj];
  [v5 unionSet:v28];

  v29 = [(PSGraphCompiler *)self getReaderResourcesForGraphs:obj];
  [v5 unionSet:v29];

  return v5;
}

- (id)getAllStridedInputsForGraphs:(id)graphs
{
  v71 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CCA940]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = graphsCopy;
  v39 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v39)
  {
    v38 = *v64;
    v49 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v64 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v63 + 1) + 8 * v5);
        currentSystemStride = [v6 currentSystemStride];

        v40 = v5;
        if (currentSystemStride)
        {
          currentSystemStride2 = [v6 currentSystemStride];
        }

        else
        {
          currentSystemStride2 = [v6 systemPulseStride];
          [v6 setCurrentSystemStride:currentSystemStride2];
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        tasks = [v6 tasks];
        v43 = [tasks countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v43)
        {
          v42 = *v60;
          do
          {
            v9 = 0;
            do
            {
              if (*v60 != v42)
              {
                objc_enumerationMutation(tasks);
              }

              v45 = v9;
              v10 = *(*(&v59 + 1) + 8 * v9);
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              inputs = [v10 inputs];
              v11 = [inputs countByEnumeratingWithState:&v55 objects:v68 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v56;
                do
                {
                  for (i = 0; i != v12; ++i)
                  {
                    if (*v56 != v13)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v15 = *(*(&v55 + 1) + 8 * i);
                    resolvedResourceKey = [v15 resolvedResourceKey];
                    v17 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", resolvedResourceKey, currentSystemStride2, [v15 type], v6);
                    [v4 addObject:v17];

                    device = self->_device;
                    resolvedResourceKey2 = [v15 resolvedResourceKey];
                    v20 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

                    syncedKey = [v20 syncedKey];
                    if (syncedKey)
                    {
                      v4 = v49;
                      v22 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", syncedKey, currentSystemStride2, [v15 type], v6);
                      [v49 addObject:v22];
                    }
                  }

                  v12 = [inputs countByEnumeratingWithState:&v55 objects:v68 count:16];
                }

                while (v12);
              }

              v9 = v45 + 1;
            }

            while ((v45 + 1) != v43);
            v43 = [tasks countByEnumeratingWithState:&v59 objects:v69 count:16];
          }

          while (v43);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        readers = [v6 readers];
        v48 = [readers countByEnumeratingWithState:&v51 objects:v67 count:16];
        if (v48)
        {
          v46 = *v52;
          do
          {
            for (j = 0; j != v48; j = j + 1)
            {
              if (*v52 != v46)
              {
                objc_enumerationMutation(readers);
              }

              v24 = *(*(&v51 + 1) + 8 * j);
              input = [v24 input];
              resolvedResourceKey3 = [input resolvedResourceKey];
              input2 = [v24 input];
              v28 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", resolvedResourceKey3, currentSystemStride2, [input2 type], v6);
              [v49 addObject:v28];

              v29 = self->_device;
              input3 = [v24 input];
              resolvedResourceKey4 = [input3 resolvedResourceKey];
              v32 = [(PLSDevice *)v29 propertiesForKey:resolvedResourceKey4];

              syncedKey2 = [v32 syncedKey];
              if (syncedKey2)
              {
                input4 = [v24 input];
                v35 = +[PSResourceRequest requestWithKey:stride:inputType:graph:](PSResourceRequest, "requestWithKey:stride:inputType:graph:", syncedKey2, currentSystemStride2, [input4 type], v6);
                [v49 addObject:v35];
              }
            }

            v48 = [readers countByEnumeratingWithState:&v51 objects:v67 count:16];
          }

          while (v48);
        }

        v5 = v40 + 1;
        v4 = v49;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v39);
  }

  return v4;
}

- (id)getAllInputsForGraphs:(id)graphs
{
  v64 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = graphsCopy;
  v39 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v39)
  {
    v38 = *v57;
    do
    {
      v6 = 0;
      do
      {
        if (*v57 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v56 + 1) + 8 * v6);
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v40 = v7;
        v41 = v6;
        tasks = [v7 tasks];
        v8 = [tasks countByEnumeratingWithState:&v52 objects:v62 count:16];
        if (v8)
        {
          v9 = v8;
          v43 = *v53;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v53 != v43)
              {
                objc_enumerationMutation(tasks);
              }

              v11 = *(*(&v52 + 1) + 8 * i);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              inputs = [v11 inputs];
              v13 = [inputs countByEnumeratingWithState:&v48 objects:v61 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v49;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v49 != v15)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    v17 = *(*(&v48 + 1) + 8 * j);
                    resolvedResourceKey = [v17 resolvedResourceKey];
                    [v5 addObject:resolvedResourceKey];

                    device = self->_device;
                    resolvedResourceKey2 = [v17 resolvedResourceKey];
                    v21 = [(PLSDevice *)device propertiesForKey:resolvedResourceKey2];

                    syncedKey = [v21 syncedKey];
                    if (syncedKey)
                    {
                      [v5 addObject:syncedKey];
                    }
                  }

                  v14 = [inputs countByEnumeratingWithState:&v48 objects:v61 count:16];
                }

                while (v14);
              }
            }

            v9 = [tasks countByEnumeratingWithState:&v52 objects:v62 count:16];
          }

          while (v9);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        readers = [v40 readers];
        v24 = [readers countByEnumeratingWithState:&v44 objects:v60 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v45;
          do
          {
            for (k = 0; k != v25; ++k)
            {
              if (*v45 != v26)
              {
                objc_enumerationMutation(readers);
              }

              v28 = *(*(&v44 + 1) + 8 * k);
              input = [v28 input];
              resolvedResourceKey3 = [input resolvedResourceKey];
              [v5 addObject:resolvedResourceKey3];

              v31 = self->_device;
              input2 = [v28 input];
              resolvedResourceKey4 = [input2 resolvedResourceKey];
              v34 = [(PLSDevice *)v31 propertiesForKey:resolvedResourceKey4];

              syncedKey2 = [v34 syncedKey];
              if (syncedKey2)
              {
                [v5 addObject:syncedKey2];
              }
            }

            v25 = [readers countByEnumeratingWithState:&v44 objects:v60 count:16];
          }

          while (v25);
        }

        v6 = v41 + 1;
      }

      while (v41 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v39);
  }

  return v5;
}

- (id)getAllOutputsForGraphs:(id)graphs
{
  v74 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = graphsCopy;
  v41 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v41)
  {
    v40 = *v65;
    do
    {
      v5 = 0;
      do
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v64 + 1) + 8 * v5);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v42 = v5;
        v43 = v6;
        tasks = [v6 tasks];
        v8 = [tasks countByEnumeratingWithState:&v60 objects:v72 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v61;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v61 != v10)
              {
                objc_enumerationMutation(tasks);
              }

              v12 = *(*(&v60 + 1) + 8 * i);
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              outputs = [v12 outputs];
              v14 = [outputs countByEnumeratingWithState:&v56 objects:v71 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v57;
                do
                {
                  for (j = 0; j != v15; ++j)
                  {
                    if (*v57 != v16)
                    {
                      objc_enumerationMutation(outputs);
                    }

                    resourceKey = [*(*(&v56 + 1) + 8 * j) resourceKey];
                    [v4 addObject:resourceKey];
                  }

                  v15 = [outputs countByEnumeratingWithState:&v56 objects:v71 count:16];
                }

                while (v15);
              }
            }

            v9 = [tasks countByEnumeratingWithState:&v60 objects:v72 count:16];
          }

          while (v9);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        sourceTasks = [v43 sourceTasks];
        v20 = [sourceTasks countByEnumeratingWithState:&v52 objects:v70 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v53;
          do
          {
            for (k = 0; k != v21; ++k)
            {
              if (*v53 != v22)
              {
                objc_enumerationMutation(sourceTasks);
              }

              v24 = *(*(&v52 + 1) + 8 * k);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              outputs2 = [v24 outputs];
              v26 = [outputs2 countByEnumeratingWithState:&v48 objects:v69 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v49;
                do
                {
                  for (m = 0; m != v27; ++m)
                  {
                    if (*v49 != v28)
                    {
                      objc_enumerationMutation(outputs2);
                    }

                    resourceKey2 = [*(*(&v48 + 1) + 8 * m) resourceKey];
                    [v4 addObject:resourceKey2];
                  }

                  v27 = [outputs2 countByEnumeratingWithState:&v48 objects:v69 count:16];
                }

                while (v27);
              }
            }

            v21 = [sourceTasks countByEnumeratingWithState:&v52 objects:v70 count:16];
          }

          while (v21);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        writers = [v43 writers];
        v32 = [writers countByEnumeratingWithState:&v44 objects:v68 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v45;
          do
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v45 != v34)
              {
                objc_enumerationMutation(writers);
              }

              output = [*(*(&v44 + 1) + 8 * n) output];
              resourceKey3 = [output resourceKey];
              [v4 addObject:resourceKey3];
            }

            v33 = [writers countByEnumeratingWithState:&v44 objects:v68 count:16];
          }

          while (v33);
        }

        v5 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v41);
  }

  return v4;
}

- (id)getUniqueResourcesFromGraphs:(id)graphs notPresentInGraphs:(id)inGraphs
{
  inGraphsCopy = inGraphs;
  v7 = [(PSGraphCompiler *)self getAllResourcesForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllResourcesForGraphs:inGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getAddedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  graphsCopy = graphs;
  v7 = [(PSGraphCompiler *)self getAllInputsForGraphs:newGraphs];
  v8 = [(PSGraphCompiler *)self getAllInputsForGraphs:graphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getRemovedInputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  newGraphsCopy = newGraphs;
  v7 = [(PSGraphCompiler *)self getAllInputsForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllInputsForGraphs:newGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (id)getAddedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  newGraphsCopy = newGraphs;
  v7 = [(PSGraphCompiler *)self getAllOutputsForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllOutputsForGraphs:newGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v8];
  [v9 minusSet:v7];

  return v9;
}

- (id)getRemovedOutputsWithOldGraphs:(id)graphs withNewGraphs:(id)newGraphs
{
  newGraphsCopy = newGraphs;
  v7 = [(PSGraphCompiler *)self getAllOutputsForGraphs:graphs];
  v8 = [(PSGraphCompiler *)self getAllOutputsForGraphs:newGraphsCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v7];
  [v9 minusSet:v8];

  return v9;
}

- (unint64_t)getMaxRateForKey:(id)key forGraphs:(id)graphs
{
  v42 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = graphs;
  v22 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  v6 = 0;
  if (v22)
  {
    v21 = *v36;
    do
    {
      v7 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v35 + 1) + 8 * v7);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        tasks = [v8 tasks];
        v26 = [tasks countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v26)
        {
          v25 = *v32;
          do
          {
            v9 = 0;
            do
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(tasks);
              }

              v10 = *(*(&v31 + 1) + 8 * v9);
              v27 = 0u;
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              inputs = [v10 inputs];
              v12 = [inputs countByEnumeratingWithState:&v27 objects:v39 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v28;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v28 != v14)
                    {
                      objc_enumerationMutation(inputs);
                    }

                    resolvedResourceKey = [*(*(&v27 + 1) + 8 * v15) resolvedResourceKey];
                    v17 = [resolvedResourceKey isEqualToString:keyCopy];

                    if (v17)
                    {
                      resolvedFrequency = [v8 resolvedFrequency];
                      if (resolvedFrequency > v6)
                      {
                        v6 = resolvedFrequency;
                      }
                    }

                    ++v15;
                  }

                  while (v13 != v15);
                  v13 = [inputs countByEnumeratingWithState:&v27 objects:v39 count:16];
                }

                while (v13);
              }

              ++v9;
            }

            while (v9 != v26);
            v26 = [tasks countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v26);
        }

        v7 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v22);
  }

  return v6;
}

- (id)getGraphTaskHash:(id)hash withTask:(id)task
{
  v5 = MEMORY[0x277CCACA8];
  taskCopy = task;
  hashCopy = hash;
  name = [hashCopy name];
  name2 = [taskCopy name];

  hashCopy = [v5 stringWithFormat:@"%@-%@-%p", name, name2, hashCopy];

  return hashCopy;
}

- (id)getPSResourceKeysInitializing
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(NSLock *)self->_keysInitializingLock lock];
  v4 = [(NSMutableArray *)self->_keysInitializing copy];

  [(NSLock *)self->_keysInitializingLock unlock];

  return v4;
}

- (BOOL)getStreamOptionsForKey:(id)key options:(ps_input_resource_options_s *)options
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (getStreamOptionsForKey_options__onceToken != -1)
  {
    [PSGraphCompiler getStreamOptionsForKey:options:];
  }

  if (getStreamOptionsForKey_options__streamDefaults)
  {
    v6 = [getStreamOptionsForKey_options__streamDefaults objectForKeyedSubscript:keyCopy];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
      v10 = __PLSLogSharedInstance(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = keyCopy;
        v12 = "rdar://85615537 defaults: No settings for stream %@";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 12;
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }

    if ([v6 staleExpiryFramePeriod])
    {
      staleExpiryFramePeriod = [v7 staleExpiryFramePeriod];
      options->var0 = staleExpiryFramePeriod;
      v10 = __PLSLogSharedInstance(staleExpiryFramePeriod);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var0 = options->var0;
        v17 = 138412546;
        v18 = keyCopy;
        v19 = 1024;
        v20 = var0;
        v12 = "rdar://85615537 defaults: Setting stale expiry for stream %@ to %d";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 18;
LABEL_13:
        _os_log_impl(&dword_25EA3A000, v13, v14, v12, &v17, v15);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = __PLSLogSharedInstance(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "rdar://85615537 defaults: No streams have settings defined", &v17, 2u);
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

void __50__PSGraphCompiler_getStreamOptionsForKey_options___block_invoke()
{
  v2 = +[PLSSettings currentSettings];
  v0 = [v2 streamDefaults];
  v1 = getStreamOptionsForKey_options__streamDefaults;
  getStreamOptionsForKey_options__streamDefaults = v0;
}

- (BOOL)getDropFramesOptionForKey:(id)key options:(ps_task_output_resource_options_s *)options
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (getDropFramesOptionForKey_options__onceToken != -1)
  {
    [PSGraphCompiler getDropFramesOptionForKey:options:];
  }

  if (getDropFramesOptionForKey_options__streamDefaults)
  {
    v6 = [getDropFramesOptionForKey_options__streamDefaults objectForKeyedSubscript:keyCopy];
    v7 = v6;
    v8 = v6 != 0;
    if (!v6)
    {
      v10 = __PLSLogSharedInstance(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = keyCopy;
        v12 = "rdar://95213276 defaults: No settings for stream %@";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 12;
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }

    if ([v6 dropFrames])
    {
      dropFrames = [v7 dropFrames];
      options->var0 = dropFrames;
      v10 = __PLSLogSharedInstance(dropFrames);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        var0 = options->var0;
        v17 = 138412546;
        v18 = keyCopy;
        v19 = 1024;
        v20 = var0;
        v12 = "rdar://95213276 defaults: Setting Dropping frames attribute for stream %@ to %d";
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 18;
LABEL_13:
        _os_log_impl(&dword_25EA3A000, v13, v14, v12, &v17, v15);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = __PLSLogSharedInstance(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "rdar://95213276 defaults: No streams have settings defined", &v17, 2u);
    }
  }

  v8 = 0;
LABEL_15:

  return v8;
}

void __53__PSGraphCompiler_getDropFramesOptionForKey_options___block_invoke()
{
  v2 = +[PLSSettings currentSettings];
  v0 = [v2 streamDefaults];
  v1 = getDropFramesOptionForKey_options__streamDefaults;
  getDropFramesOptionForKey_options__streamDefaults = v0;
}

- (id)createMtlCommandQueueBestEffort
{
  newCommandQueue = [(MTLDeviceSPI *)self->_mtlDevice newCommandQueue];

  return newCommandQueue;
}

- (id)createMtlCommandQueueRealTime
{
  commandQueueDescriptor = [MEMORY[0x277CD6CF8] commandQueueDescriptor];
  [commandQueueDescriptor setQosLevel:0];
  v4 = [(MTLDeviceSPI *)self->_mtlDevice newCommandQueueWithDescriptor:commandQueueDescriptor];
  [v4 setGPUPriority:5];

  return v4;
}

- (void)dealloc
{
  ps_exec_dealloc(self->_synchronizer);
  v3.receiver = self;
  v3.super_class = PSGraphCompiler;
  [(PSGraphCompiler *)&v3 dealloc];
}

- (PSTransitionManager)transitionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionManager);

  return WeakRetained;
}

- (PSTransitionMonitor)transitionMonitor
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionMonitor);

  return WeakRetained;
}

+ (uint64_t)deadlineThresholdsForCriticality:.cold.1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Invalid criticality provided for graph. This should not happen.");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid criticality provided for graph. This should not happen.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v18 matchInputsToGSTStrides:v19];
}

- (uint64_t)matchInputsToGSTStrides:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Matching GST strides: Resource %s is not a Wait input", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Matching GST strides: Resource %s is not a Wait input", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 createWritersForTransitionBlock:v23];
}

- (void)createWritersForTransitionBlock:.cold.3()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "No metadata buffer pool was provided");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d No metadata buffer pool was provided", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler createReadersForTransitionBlock:];
}

- (uint64_t)resolveStreamDomainsForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 localizedDescription];
  asprintf(a1, "An error occurred while resolving stream domains: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 localizedDescription];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d An error occurred while resolving stream domains: %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 resolveStreamDomainsForTransitionBlock:v23];
}

- (uint64_t)resolveStreamDomainsForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "No resolved stream domain found for graph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d No resolved stream domain found for graph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 createSourceTasksForTransitionBlock:v23];
}

- (uint64_t)createSourceTasksForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Source task already created for key %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Source task already created for key %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 createPRMInstancesForTransitionBlock:v23];
}

- (uint64_t)createPRMInstancesForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Output object for %s was used in multiple graphs.", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Output object for %s was used in multiple graphs.", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 createPRMInstancesForTransitionBlock:v23];
}

- (uint64_t)createPRMInstancesForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find PRM task for %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find PRM task for %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 createPRMInstancesForTransitionBlock:v23];
}

- (void)createPRMInstancesForTransitionBlock:(char *)a1 .cold.3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find PRM task for %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find PRM task for %s", v10, v11, v12, v13, v24, v25);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  [(PSGraphCompiler *)v22 createPRMInstancesForTransitionBlock:v23];
}

- (void)createPRMInstancesForTransitionBlock:(char *)a1 .cold.4(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find PRM task for %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find PRM task for %s", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler populateBufferExpiryOffset:forKey:];
}

- (uint64_t)populateBufferExpiryOffset:(char *)a1 forKey:(void *)a2 .cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Invalid call to set buffer expiry on uninitialized ps_task_input_resource_t with Key %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Invalid call to set buffer expiry on uninitialized ps_task_input_resource_t with Key %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateOptsMetadataType:v21 forProviderType:v22];
}

+ (uint64_t)populateOptsMetadataType:(char *)a1 forProviderType:(int)a2 .cold.1(char **a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "Metadata ill-defined for provider type %d", a2);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_11();
    v21 = 2357;
    v22 = v6;
    v23 = a2;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Metadata ill-defined for provider type %d", buf, 0x18u);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = __PLSLogSharedInstance(v7);
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v15 forKey:v16 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Capacity > 1 is disallowed for %s writers", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Capacity > 1 is disallowed for %s writers", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.2()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Descriptor mode is not supported for PSANEChainedBufferStream");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Descriptor mode is not supported for PSANEChainedBufferStream", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v18 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.3()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Failed to get allocated buffers PSANEChainedBufferStream");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to get allocated buffers PSANEChainedBufferStream", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v18 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.4()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "allocator creation mode currently not supported on Pearl");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d allocator creation mode currently not supported on Pearl", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v18 forKey:v19 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.5(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v10, v11, v12, v13, v24, v25);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v22 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.6()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "allocator creation mode currently not supported on Jasper");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d allocator creation mode currently not supported on Jasper", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v18 forKey:v19 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.7(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v22 forKey:v23 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.8(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v22 forKey:v23 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.9(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 key];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Can't have iosurface metadata without the metadata iosurface properties configured for key: %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v22 forKey:v23 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.10()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v4 = v3;
  *v2 = 0;
  v5 = asprintf(v2, "MTLTexture not yet supported");
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v7, v8, "%s:%d MTLTexture not yet supported", v9, v10, v11, v12);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:v22 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.11()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v4 = v3;
  *v2 = 0;
  v5 = asprintf(v2, "MTLBuffer not yet supported");
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v7, v8, "%s:%d MTLBuffer not yet supported", v9, v10, v11, v12);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:v22 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.12(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Received an invalid class type for %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Received an invalid class type for %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:v22 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.13(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Max Capacity is 1000 for %s writers", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Max Capacity is 1000 for %s writers", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:? withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:forKey:withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.14()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Zero task output capacity is disallowed");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Zero task output capacity is disallowed", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v18 forKey:v19 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.15(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No storage mode defined for %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No storage mode defined for %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:v22 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.16(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No creation mode defined for %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No creation mode defined for %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateWriterOpts:v21 forKey:v22 withCapacity:? forGraph:? withResStream:? withContext:? retainedBufferIndexers:? withGSM:?];
}

+ (uint64_t)populateWriterOpts:(char *)a1 forKey:(void *)a2 withCapacity:forGraph:withResStream:withContext:retainedBufferIndexers:withGSM:.cold.17(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Output for key %s not defined in PSContext.", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Output for key %s not defined in PSContext.", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateReaderOpts:v21 forKey:v22 forGraph:? withCapacity:? withForwardingCount:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:withForwardingCount:.cold.1(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Resource %s had no storage mode defined", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Resource %s had no storage mode defined", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateReaderOpts:v21 forKey:v22 forGraph:? withCapacity:? withForwardingCount:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:withForwardingCount:.cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Resource %s had no class defined", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Resource %s had no class defined", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler populateReaderOpts:v21 forKey:v22 forGraph:? withCapacity:? withForwardingCount:?];
}

- (uint64_t)populateReaderOpts:(char *)a1 forKey:(void *)a2 forGraph:withCapacity:withForwardingCount:.cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Could not find stream definition for reader key %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find stream definition for reader key %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v21 createGroupedTriggersOverXPCForTransitionBlock:v22];
}

- (uint64_t)createGroupedTriggersOverXPCForTransitionBlock:(char *)a1 .cold.1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "ThreadPool (%s) failed to acquire a shared trigger", (a2 + 72));
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d ThreadPool (%s) failed to acquire a shared trigger", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v19 createGroupedTriggersOverXPCForTransitionBlock:v20];
}

- (uint64_t)createGroupedTriggersOverXPCForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "GST creation failed for graph %s, aborting", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d GST creation failed for graph %s, aborting", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 createGroupedTriggersOverXPCForTransitionBlock:v23];
}

- (uint64_t)createGroupedTriggersOverXPCForTransitionBlock:(char *)a1 .cold.3(char **a1, xpc_rich_error_t error)
{
  *a1 = 0;
  v5 = xpc_rich_error_copy_description(error);
  v6 = asprintf(a1, "Did not a receive a reply from polarisd for graph addition, aborting! Error = %s", v5);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    xpc_rich_error_copy_description(error);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Did not a receive a reply from polarisd for graph addition, aborting! Error = %s", v10, v11, v12, v13, v23, v24);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return [PSGraphCompiler setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:];
}

- (uint64_t)setupGSMSourceDescriptors:storageModes:graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:.cold.1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Camera FPS / downsampling not supported");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Camera FPS / downsampling not supported", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler setupGSMSourceDescriptors:v18 storageModes:v19 graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
}

- (uint64_t)setupGSMSourceDescriptors:(char *)a1 storageModes:(void *)a2 graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:.cold.2(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No res stream for key %s", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No res stream for key %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler setupGSMSourceDescriptors:v21 storageModes:v22 graphName:? graphFrequencey:? systemSources:? intermediateSources:? producedOutputRates:? device:? context:? syncedBuffers:?];
}

- (void)setupGSMSourceDescriptors:(char *)a1 storageModes:(void *)a2 graphName:graphFrequencey:systemSources:intermediateSources:producedOutputRates:device:context:syncedBuffers:.cold.3(char **a1, void *a2)
{
  OUTLINED_FUNCTION_3_1(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Could not find output rate for key %s.", [a2 UTF8String]);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    [a2 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d Could not find output rate for key %s.", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:v21 withProducerOutputRates:v22 withTransitionBlock:? withGraphInfo:? withGraphSetInfo:?];
}

- (void)setupForLegacyGroupedTriggerForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:withGraphInfo:withGraphSetInfo:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler setupForLegacyGroupedTriggerForGraph:withProducerOutputRates:withTransitionBlock:withGraphInfo:withGraphSetInfo:];
}

- (void)setupForCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:withGraphInfo:withGraphSetInfo:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler setupForCadenceGroupedTriggerForGraph:withSources:withOffset:withGraphInfo:withGraphSetInfo:];
}

- (uint64_t)setupCadenceGroupedTriggerInfoForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:withGraphInfoDict:.cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createCadenceGroupedTriggerForGraph:v22 withSources:v23 withOffset:?];
}

- (uint64_t)createCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Stride-based GST creation failed for graph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Stride-based GST creation failed for graph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createCadenceGroupedTriggerForGraph:v22 withSources:v23 withOffset:?];
}

- (uint64_t)createCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:.cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Stride-based GST creation failed for graph %s for shared trigger", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Stride-based GST creation failed for graph %s for shared trigger", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createCadenceGroupedTriggerForGraph:v22 withSources:v23 withOffset:?];
}

- (uint64_t)createCadenceGroupedTriggerForGraph:(char *)a1 withSources:(void *)a2 withOffset:.cold.3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createLegacyGroupedTriggerForGraph:v22 withProducerOutputRates:v23 withTransitionBlock:?];
}

- (void)createLegacyGroupedTriggerForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "GST creation failed for graph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d GST creation failed for graph %s", v10, v11, v12, v13, v24, v25);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  [PSGraphCompiler createLegacyGroupedTriggerForGraph:v22 withProducerOutputRates:v23 withTransitionBlock:?];
}

- (void)createLegacyGroupedTriggerForGraph:(char *)a1 withProducerOutputRates:(void *)a2 withTransitionBlock:.cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Graph (%s) ThreadPoolID is unused but gst create about to be called", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Graph (%s) ThreadPoolID is unused but gst create about to be called", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler initializeGroupedTriggersForSubgraph:withClientGraph:];
}

- (uint64_t)initializeExecSubGraphTasks:withClientGraph:.cold.1()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "task wrapper is NULL");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d task wrapper is NULL", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler initializeExecSubGraphTasks:v18 withClientGraph:?];
}

- (uint64_t)initializeExecSubGraphTasks:withClientGraph:.cold.2()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "MTLQueue not created for WB graph.");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d MTLQueue not created for WB graph.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler initializeExecSubGraphTasks:v18 withClientGraph:v19];
}

- (uint64_t)initializeExecSubGraphTasks:(char *)a1 withClientGraph:(void *)a2 .cold.3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "MTLQueue was nil for graph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d MTLQueue was nil for graph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler createBlockFromTask:v22 withGraph:v23 withExecSubgraph:? withMtlQueue:? withGraphStringId:?];
}

- (uint64_t)createBlockFromTask:(char *)a1 withGraph:(void *)a2 withExecSubgraph:withMtlQueue:withGraphStringId:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find prm_task for key %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find prm_task for key %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [PSGraphCompiler initializeComplexityUpdateHandler:v22 withExecSubgraph:v23 withExecBlock:?];
}

- (uint64_t)initializeComplexityUpdateHandler:(char *)a1 withExecSubgraph:(void *)a2 withExecBlock:.cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Unable to create complexity update context for graph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Unable to create complexity update context for graph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 destroyWritersForTransitionBlock:v23];
}

- (uint64_t)destroyWritersForTransitionBlock:.cold.5()
{
  OUTLINED_FUNCTION_10();
  *v1 = 0;
  v2 = asprintf(v1, "Descriptor mode is not supported for PSANEChainedBufferStream");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Descriptor mode is not supported for PSANEChainedBufferStream", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v18 destroyPRMInstancesForTransitionBlock:v19];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No deallocator specified with allocator for key (%s). Something is wrong.", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d No deallocator specified with allocator for key (%s). Something is wrong.", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 destroyPRMInstancesForTransitionBlock:v23];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No deallocator specified with allocator for key (%s). Something is wrong.", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d No deallocator specified with allocator for key (%s). Something is wrong.", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 destroyPRMInstancesForTransitionBlock:v23];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No deallocator specified with allocator for key (%s). Something is wrong.", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d No deallocator specified with allocator for key (%s). Something is wrong.", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 destroyPRMInstancesForTransitionBlock:v23];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.4(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "No resource present for key (%s) to deallocate. Something is wrong.", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d No resource present for key (%s) to deallocate. Something is wrong.", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 destroyPRMInstancesForTransitionBlock:v23];
}

- (uint64_t)destroyPRMInstancesForTransitionBlock:(char *)a1 .cold.5(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "Could not find GSP for graph %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find GSP for graph %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 getProducerOutputRates:v23];
}

- (uint64_t)getProducerOutputRates:(char *)a1 .cold.1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Multiple producing tasks found for output %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Multiple producing tasks found for output %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 getProducerOutputRates:v23];
}

- (uint64_t)getProducerOutputRates:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Multiple producing tasks found for output %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Multiple producing tasks found for output %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSGraphCompiler *)v22 getProducerOutputRates:v23];
}

- (void)getProducerOutputRates:(char *)a1 .cold.3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 resourceKey];
  asprintf(a1, "Multiple producers (tasks/sourcetasks/writers) found for output %s", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 resourceKey];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Multiple producers (tasks/sourcetasks/writers) found for output %s", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler shouldUseSharedTriggerForGraph:withTransitionBlock:];
}

- (void)addGraphToThreadPool:(char *)a1 .cold.1(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "ThreadPool (%s) failed to acquire a shared trigger", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d ThreadPool (%s) failed to acquire a shared trigger", v7, v8, v9, v10, v19, v20);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler removeGraphFromThreadPool:];
}

- (void)removeGraphFromThreadPool:(char *)a1 .cold.2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 name];
  asprintf(a1, "%s called for graph (%s) not belonging to any threadpool", "-[PSGraphCompiler removeGraphFromThreadPool:]", [v4 UTF8String]);

  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    v7 = [a2 name];
    [v7 UTF8String];
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v8, v9, "%s:%d %s called for graph (%s) not belonging to any threadpool", v10, v11, v12, v13, v22, v23);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSGraphCompiler destroyAllThreadPools];
}

@end