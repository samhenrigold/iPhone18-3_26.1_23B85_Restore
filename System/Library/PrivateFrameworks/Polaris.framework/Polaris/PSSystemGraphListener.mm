@interface PSSystemGraphListener
- (PSSystemGraphListener)initWithDispatchQueue:(id)queue GSTManager:(id)manager Builder:(id)builder Orchestrator:(id)orchestrator FrameIDTranslator:(id)translator;
- (id)handleMessage:(id)message withMessageType:(unint64_t)type withSession:(id)session;
- (id)initForLocalReplayWithDispatchQueue:(id)queue localGSM:(ps_gsm_s *)m GSTManager:(id)manager Builder:(id)builder Orchestrator:(id)orchestrator;
- (void)builderAddGraphs:(id)graphs execSessionName:(const char *)name addedGraphs:(id)addedGraphs;
- (void)dealloc;
- (void)handleAddRemoveGraphsMessage:(id)message;
- (void)handleBuilderDumpStateMessage:(id)message withSession:(id)session;
- (void)handleOrchestratorDumpStateMessage:(id)message withSession:(id)session;
- (void)sendDomainInfoToOrchestrator:(id)orchestrator;
@end

@implementation PSSystemGraphListener

- (id)handleMessage:(id)message withMessageType:(unint64_t)type withSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  sessionCopy = session;
  v11 = sessionCopy;
  if (type <= 6)
  {
    if (type - 2 < 4)
    {
LABEL_3:
      v12 = [(PSGSTManager *)self->_gstManager handleMessage:messageCopy];
      goto LABEL_24;
    }

    if (type == 1)
    {
      [(PSSystemGraphListener *)self sendDomainInfoToOrchestrator:messageCopy];
      goto LABEL_3;
    }

    if (type == 6)
    {
      v13 = __PSSGLogSharedInstance(sessionCopy, v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEFAULT, "Received PRODUCIBLE_STRIDES_HAVE_CHANGED_TO message", buf, 2u);
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__PSSystemGraphListener_handleMessage_withMessageType_withSession___block_invoke;
      v17[3] = &unk_279A490C0;
      v17[4] = self;
      [PSSystemGraphMessageDeserializer deserializeProducibleStridesHaveChangedToMessage:messageCopy completion:v17];
      goto LABEL_23;
    }

LABEL_20:
    v14 = __PSSGLogSharedInstance(sessionCopy, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_ERROR, "Received an unknown message type = %llu, this should never happen!", buf, 0xCu);
    }

    goto LABEL_23;
  }

  if (type <= 8)
  {
    if (type == 7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__PSSystemGraphListener_handleMessage_withMessageType_withSession___block_invoke_2;
      v16[3] = &unk_279A490E8;
      v16[4] = self;
      [PSSystemGraphMessageDeserializer deserializeProducedStridesWillChangeMessage:messageCopy completion:v16];
    }

    else
    {
      [(PSSystemGraphListener *)self handleAddRemoveGraphsMessage:messageCopy];
    }
  }

  else
  {
    switch(type)
    {
      case 9uLL:
        [(PSOrchestratorListenerProtocol *)self->_orchestrator setupSupportedStridesForLocalReplay:messageCopy];
        break;
      case 0xAuLL:
        [(PSSystemGraphListener *)self handleBuilderDumpStateMessage:messageCopy withSession:sessionCopy];
        break;
      case 0xBuLL:
        [(PSSystemGraphListener *)self handleOrchestratorDumpStateMessage:messageCopy withSession:sessionCopy];
        break;
      default:
        goto LABEL_20;
    }
  }

LABEL_23:
  v12 = 0;
LABEL_24:

  return v12;
}

void __67__PSSystemGraphListener_handleMessage_withMessageType_withSession___block_invoke_2(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v11 = a2;
  if (a4)
  {
    a3 = [*(*(a1 + 32) + 40) virtualFrameIDForPhysicalFrameID:a3 syncID:a5];
  }

  v9 = *(*(a1 + 32) + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [v9 frameIdUpdate:v11 frameId:v10];
}

- (void)builderAddGraphs:(id)graphs execSessionName:(const char *)name addedGraphs:(id)addedGraphs
{
  addedGraphsCopy = addedGraphs;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __70__PSSystemGraphListener_builderAddGraphs_execSessionName_addedGraphs___block_invoke;
  applier[3] = &unk_279A49110;
  v11 = addedGraphsCopy;
  nameCopy = name;
  applier[4] = self;
  v9 = addedGraphsCopy;
  xpc_array_apply(graphs, applier);
}

uint64_t __70__PSSystemGraphListener_builderAddGraphs_execSessionName_addedGraphs___block_invoke(const char **a1, uint64_t a2, void *a3)
{
  v107 = *MEMORY[0x277D85DE8];
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "graph_name");
  v7 = __PSSGLogSharedInstance(string, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = a1[6];
    *buf = 136315394;
    v100 = string;
    v101 = 2080;
    *v102 = v8;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "Adding builder info for graph = %s, execSession = %s", buf, 0x16u);
  }

  v9 = [PSSGGraphID alloc];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1[6]];
  v12 = [(PSSGGraphID *)v9 initWithName:v10 session:v11];

  uint64 = xpc_dictionary_get_uint64(v4, "graph_frequency_type");
  v14 = xpc_dictionary_get_uint64(v4, "stride");
  v15 = xpc_dictionary_get_value(v4, "input_names_array");
  v16 = xpc_dictionary_get_value(v4, "input_types_array");
  v17 = xpc_dictionary_get_value(v4, "input_storage_modes_array");
  count = xpc_array_get_count(v15);
  xarray = v16;
  if (count != xpc_array_get_count(v16))
  {
    goto LABEL_28;
  }

  v19 = xpc_array_get_count(v15);
  if (v19 != xpc_array_get_count(v17))
  {
    v98 = 0;
    v73 = xpc_array_get_count(v15);
    v74 = xpc_array_get_count(v17);
    v75 = asprintf(&v98, "xpc_array_get_count(inputNamesArray) (%zd) != xpc_array_get_count(inputStorageModesArray) (%zd) @ %s:%d", v73, v74, "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke", 275);
    v77 = __PSSGLogSharedInstance(v75, v76);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v100 = v98;
      _os_log_impl(&dword_25EA3A000, v77, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
    }

    v78 = OSLogFlushBuffers();
    if (v78)
    {
      v64 = v78;
      v65 = __PSSGLogSharedInstance(v78, v79);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v90 = uint64;
  v91 = v14;
  v92 = v12;
  v95 = xpc_array_get_count(v15);
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v21 = xpc_dictionary_get_value(v4, "output_names_array");
  v22 = xpc_dictionary_get_value(v4, "output_storage_modes_array");
  v23 = xpc_array_get_count(v21);
  if (v23 != xpc_array_get_count(v22))
  {
    v98 = 0;
    v80 = xpc_array_get_count(v21);
    v81 = xpc_array_get_count(v22);
    v82 = asprintf(&v98, "xpc_array_get_count(outputNamesArray) (%zd) != xpc_array_get_count(outputStorageModesArray) (%zd) @ %s:%d", v80, v81, "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke", 281);
    v84 = __PSSGLogSharedInstance(v82, v83);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v100 = v98;
      _os_log_impl(&dword_25EA3A000, v84, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
    }

    v85 = OSLogFlushBuffers();
    if (v85)
    {
      v64 = v85;
      v65 = __PSSGLogSharedInstance(v85, v86);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v94 = v17;
  v89 = v4;
  v24 = xpc_array_get_count(v21);
  v25 = 0x279A47000uLL;
  v26 = v22;
  v97 = a1;
  if (v24)
  {
    v27 = v24;
    for (i = 0; i != v27; ++i)
    {
      v29 = xpc_array_get_string(v21, i);
      v30 = xpc_array_get_uint64(v26, i);
      v31 = v26;
      v32 = v20;
      v33 = v21;
      v34 = [PSSGResourceID alloc];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v29];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v97[6]];
      v37 = v34;
      v21 = v33;
      v20 = v32;
      v26 = v31;
      v38 = [(PSSGResourceID *)v37 initWithName:v35 session:v36 storageMode:v30];

      v25 = 0x279A47000uLL;
      [v20 addObject:v38];
    }
  }

  v87 = v26;
  v88 = v21;
  v93 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39 = v97;
  if (v95)
  {
    v40 = 0;
    while (1)
    {
      v41 = v15;
      v42 = xpc_array_get_string(v15, v40);
      v43 = xpc_array_get_uint64(xarray, v40);
      v44 = xpc_array_get_uint64(v94, v40);
      v45 = objc_alloc(*(v25 + 1864));
      v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:v42];
      v15 = v39;
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:v39[6]];
      v48 = [v45 initWithName:v46 session:v47 storageMode:v44];

      if (!v48)
      {
        break;
      }

      if (([v20 containsObject:v48] & 1) == 0)
      {
        v49 = [[PSSGGraphInput alloc] initWithResource:v48 type:v43];
        [v93 addObject:v49];
      }

      ++v40;
      v39 = v15;
      v15 = v41;
      v25 = 0x279A47000;
      if (v95 == v40)
      {
        goto LABEL_15;
      }
    }

    v98 = 0;
    v58 = asprintf(&v98, "Failed to make resourceID (name: %s, session: %s, storageMode: %llu)", v42, v15[6], v44);
    v60 = __PSSGLogSharedInstance(v58, v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      v61 = v15[6];
      *buf = 136316162;
      v100 = "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke";
      v101 = 1024;
      *v102 = 302;
      *&v102[4] = 2080;
      *&v102[6] = v42;
      v103 = 2080;
      v104 = v61;
      v105 = 2048;
      v106 = v44;
      _os_log_impl(&dword_25EA3A000, v60, OS_LOG_TYPE_FAULT, "%s:%d Failed to make resourceID (name: %s, session: %s, storageMode: %llu)", buf, 0x30u);
    }

    v62 = OSLogFlushBuffers();
    if (v62)
    {
      v64 = v62;
      v65 = __PSSGLogSharedInstance(v62, v63);
      if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    while (1)
    {
LABEL_23:
      usleep(0x1E8480u);
      while (1)
      {
        abort_with_reason();
LABEL_28:
        v98 = 0;
        v66 = xpc_array_get_count(v15);
        v67 = xpc_array_get_count(xarray);
        v68 = asprintf(&v98, "xpc_array_get_count(inputNamesArray) (%zd) != xpc_array_get_count(inputTypesArray) (%zd) @ %s:%d", v66, v67, "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke", 274);
        v70 = __PSSGLogSharedInstance(v68, v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          v100 = v98;
          _os_log_impl(&dword_25EA3A000, v70, OS_LOG_TYPE_FAULT, "%s", buf, 0xCu);
        }

        v71 = OSLogFlushBuffers();
        if (!v71)
        {
          break;
        }

        v64 = v71;
        v65 = __PSSGLogSharedInstance(v71, v72);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
LABEL_25:
          *buf = 136315394;
          v100 = "[PSSystemGraphListener builderAddGraphs:execSessionName:addedGraphs:]_block_invoke";
          v101 = 1024;
          *v102 = v64;
          _os_log_impl(&dword_25EA3A000, v65, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
        }

LABEL_26:
      }
    }
  }

LABEL_15:
  v98 = 0;
  v50 = [*(v39[4] + 3) addGraphWithID:v92 type:v90 inputs:v93 outputs:v20 error:&v98];
  if (v98)
  {
    v52 = __PSSGLogSharedInstance(v50, v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = [v98 description];
      v54 = [v53 UTF8String];
      *buf = 136315138;
      v100 = v54;
      _os_log_impl(&dword_25EA3A000, v52, OS_LOG_TYPE_ERROR, "Failed to add graph to builder: %s", buf, 0xCu);
    }
  }

  v55 = v39[5];
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v91];
  [v55 setObject:v56 forKey:v92];

  return 1;
}

- (void)handleAddRemoveGraphsMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  string = xpc_dictionary_get_string(messageCopy, "exec_session_name");
  v7 = xpc_dictionary_get_value(messageCopy, "graphs_removed_array");
  v8 = v7;
  if (!v7)
  {
    __assert_rtn("[PSSystemGraphListener handleAddRemoveGraphsMessage:]", "PSSystemGraphListener.m", 336, "graphsRemovedArray");
  }

  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __54__PSSystemGraphListener_handleAddRemoveGraphsMessage___block_invoke;
  applier[3] = &unk_279A49138;
  applier[4] = &v18;
  applier[5] = string;
  xpc_array_apply(v7, applier);
  [(PSOrchestratorListenerProtocol *)self->_orchestrator transitionAddedGraphs:0 removedGraphs:v19[5]];
  v16 = 0;
  v9 = [(PSSGBuilder *)self->_builder removeGraphsWithIDs:v19[5] error:&v16];
  if (v16)
  {
    v11 = __PSSGLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v16 description];
      v13 = v12;
      uTF8String = [v12 UTF8String];
      *buf = 136315138;
      v25 = uTF8String;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "Error occured while removing graphs within builder %s", buf, 0xCu);
    }
  }

  v15 = xpc_dictionary_get_value(messageCopy, "graphs_added_array");
  if (!v15)
  {
    __assert_rtn("[PSSystemGraphListener handleAddRemoveGraphsMessage:]", "PSSystemGraphListener.m", 359, "graphsAddedArray");
  }

  [(PSSystemGraphListener *)self builderAddGraphs:v15 execSessionName:string addedGraphs:v5];
  [(PSOrchestratorListenerProtocol *)self->_orchestrator transitionAddedGraphs:v5 removedGraphs:0];
  [(PSOrchestratorListenerProtocol *)self->_orchestrator flushAddedRemovedGraphs];

  _Block_object_dispose(&v18, 8);
}

uint64_t __54__PSSystemGraphListener_handleAddRemoveGraphsMessage___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  v17 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, "graph_name");
  v6 = __PSSGLogSharedInstance(string, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 40);
    v13 = 136315394;
    v14 = string;
    v15 = 2080;
    v16 = v7;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEBUG, "Removing builder info for graph = %s, execSession = %s", &v13, 0x16u);
  }

  v8 = [PSSGGraphID alloc];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v11 = [(PSSGGraphID *)v8 initWithName:v9 session:v10];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v11];
  return 1;
}

- (void)sendDomainInfoToOrchestrator:(id)orchestrator
{
  orchestratorCopy = orchestrator;
  v5 = xpc_dictionary_get_value(orchestratorCopy, "graphs_array");
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  string = xpc_dictionary_get_string(orchestratorCopy, "exec_session_name");

  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __54__PSSystemGraphListener_sendDomainInfoToOrchestrator___block_invoke;
  v12 = &unk_279A48D90;
  v13 = v6;
  v14 = string;
  v8 = v6;
  xpc_array_apply(v5, &v9);
  [(PSOrchestratorListenerProtocol *)self->_orchestrator resolvedDomainForGraphs:v8, v9, v10, v11, v12];
}

uint64_t __54__PSSystemGraphListener_sendDomainInfoToOrchestrator___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string = xpc_dictionary_get_string(v4, "graph_name");
  v6 = [PSSGGraphID alloc];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 40)];
  v9 = [(PSSGGraphID *)v6 initWithName:v7 session:v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = xpc_dictionary_get_string(v4, "domain_id");

  v12 = [v10 stringWithUTF8String:v11];
  [*(a1 + 32) setObject:v12 forKey:v9];

  return 1;
}

- (void)handleBuilderDumpStateMessage:(id)message withSession:(id)session
{
  sessionCopy = session;
  reply = xpc_dictionary_create_reply(message);
  builder = self->_builder;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__PSSystemGraphListener_handleBuilderDumpStateMessage_withSession___block_invoke;
  v11[3] = &unk_279A49160;
  v12 = reply;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = reply;
  [(PSSGBuilder *)builder dumpStateAsync:v11];
}

void __67__PSSystemGraphListener_handleBuilderDumpStateMessage_withSession___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = *(a1 + 32);
    v7 = [v3 UTF8String];
    v8 = v6;
  }

  else
  {
    v9 = __PSSGLogSharedInstance(0, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Async state dump from builder returned nil", &v15, 2u);
    }

    v8 = *(a1 + 32);
    v7 = "Async state dump from builder returned nil";
  }

  xpc_dictionary_set_string(v8, "builder_state_json", v7);
  v10 = xpc_session_send_message(*(a1 + 40), *(a1 + 32));
  v11 = v10;
  if (v10)
  {
    v12 = xpc_rich_error_copy_description(v10);
    v14 = __PSSGLogSharedInstance(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = v12;
      _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Error sending builder state: %s", &v15, 0xCu);
    }

    free(v12);
  }
}

- (void)handleOrchestratorDumpStateMessage:(id)message withSession:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  reply = xpc_dictionary_create_reply(message);
  orchestrator = [(PSSystemGraphListener *)self orchestrator];
  [orchestrator dumpStateToXPCDictionary:reply];

  v9 = xpc_session_send_message(sessionCopy, reply);
  if (v9)
  {
    v10 = xpc_rich_error_copy_description(v9);
    v12 = __PSSGLogSharedInstance(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = v10;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEFAULT, "Error sending builder state: %s", &v13, 0xCu);
    }

    free(v10);
  }
}

- (PSSystemGraphListener)initWithDispatchQueue:(id)queue GSTManager:(id)manager Builder:(id)builder Orchestrator:(id)orchestrator FrameIDTranslator:(id)translator
{
  v33 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  builderCopy = builder;
  orchestratorCopy = orchestrator;
  translatorCopy = translator;
  v30.receiver = self;
  v30.super_class = PSSystemGraphListener;
  v17 = [(PSSystemGraphListener *)&v30 init];
  if (v17)
  {
    v17->_gsm = ps_gsm_map_shared();
    objc_storeStrong(&v17->_gstManager, manager);
    objc_storeStrong(&v17->_builder, builder);
    objc_storeStrong(&v17->_orchestrator, orchestrator);
    objc_storeStrong(&v17->_frameIDTranslator, translator);
    incoming_session_handler[0] = MEMORY[0x277D85DD0];
    incoming_session_handler[1] = 3221225472;
    incoming_session_handler[2] = __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke;
    incoming_session_handler[3] = &unk_279A491B0;
    v18 = v17;
    v29 = v18;
    v27 = 0;
    v19 = xpc_listener_create("com.apple.polaris.systemgraph_v2", queueCopy, XPC_LISTENER_CREATE_NONE, incoming_session_handler, &v27);
    v20 = v27;
    v21 = v18[6];
    v18[6] = v19;

    v22 = xpc_listener_copy_description(v18[6]);
    v24 = __PSSGLogSharedInstance(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = v22;
      _os_log_impl(&dword_25EA3A000, v24, OS_LOG_TYPE_DEFAULT, "Created listener: %s", buf, 0xCu);
    }

    free(v22);
    v25 = v18;
  }

  return v17;
}

void __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_initWeak(&location, v3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke_2;
  handler[3] = &unk_279A49188;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  xpc_session_set_incoming_message_handler(v3, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __97__PSSystemGraphListener_initWithDispatchQueue_GSTManager_Builder_Orchestrator_FrameIDTranslator___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "message_type");
    v7 = __PSSGLogSharedInstance(uint64, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134217984;
      v16 = uint64;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "sysgraph xpc listener received messageType %llu", &v15, 0xCu);
    }

    v8 = [*(a1 + 32) handleMessage:v3 withMessageType:uint64 withSession:WeakRetained];
    v9 = v8;
    if (uint64 == 1 && v8)
    {
      v10 = xpc_session_send_message(WeakRetained, v8);
      v11 = v10;
      if (v10)
      {
        v12 = xpc_rich_error_copy_description(v10);
        v14 = __PSSGLogSharedInstance(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315138;
          v16 = v12;
          _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Reply failed, error: %s", &v15, 0xCu);
        }

        free(v12);
      }
    }
  }
}

- (id)initForLocalReplayWithDispatchQueue:(id)queue localGSM:(ps_gsm_s *)m GSTManager:(id)manager Builder:(id)builder Orchestrator:(id)orchestrator
{
  v29 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  builderCopy = builder;
  orchestratorCopy = orchestrator;
  v26.receiver = self;
  v26.super_class = PSSystemGraphListener;
  v16 = [(PSSystemGraphListener *)&v26 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    v16->_gsm = m;
    objc_storeStrong(&v16->_gstManager, manager);
    objc_storeStrong(p_isa + 3, builder);
    objc_storeStrong(p_isa + 4, orchestrator);
    v18 = p_isa;
    anonymous = xpc_listener_create_anonymous();
    v20 = v18[6];
    v18[6] = anonymous;

    v21 = xpc_listener_copy_description(v18[6]);
    v23 = __PSSGLogSharedInstance(v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v28 = v21;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "Created listener: %s", buf, 0xCu);
    }

    free(v21);
    v24 = v18;
  }

  return p_isa;
}

void __102__PSSystemGraphListener_initForLocalReplayWithDispatchQueue_localGSM_GSTManager_Builder_Orchestrator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_initWeak(&location, v3);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __102__PSSystemGraphListener_initForLocalReplayWithDispatchQueue_localGSM_GSTManager_Builder_Orchestrator___block_invoke_2;
  handler[3] = &unk_279A49188;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 32);
  xpc_session_set_incoming_message_handler(v3, handler);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __102__PSSystemGraphListener_initForLocalReplayWithDispatchQueue_localGSM_GSTManager_Builder_Orchestrator___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "message_type");
    v7 = __PSSGLogSharedInstance(uint64, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134217984;
      v16 = uint64;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_DEBUG, "sysgraph xpc listener received messageType %llu", &v15, 0xCu);
    }

    v8 = [*(a1 + 32) handleMessage:v3 withMessageType:uint64 withSession:WeakRetained];
    v9 = v8;
    if (uint64 == 1 && v8)
    {
      v10 = xpc_session_send_message(WeakRetained, v8);
      v11 = v10;
      if (v10)
      {
        v12 = xpc_rich_error_copy_description(v10);
        v14 = __PSSGLogSharedInstance(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 136315138;
          v16 = v12;
          _os_log_impl(&dword_25EA3A000, v14, OS_LOG_TYPE_DEFAULT, "Reply failed, error: %s", &v15, 0xCu);
        }

        free(v12);
      }
    }
  }
}

- (void)dealloc
{
  listener = self->_listener;
  self->_listener = 0;

  builder = self->_builder;
  self->_builder = 0;

  orchestrator = self->_orchestrator;
  self->_orchestrator = 0;

  frameIDTranslator = self->_frameIDTranslator;
  self->_frameIDTranslator = 0;

  v7.receiver = self;
  v7.super_class = PSSystemGraphListener;
  [(PSSystemGraphListener *)&v7 dealloc];
}

@end