@interface UBUnblockClient
- (UBUnblockClient)init;
- (id)handleRecoverReply:(id)reply input_services:(id)input_services err:(id *)err;
- (id)prepareRecoverRequest:(id)request stackshot_data:(id)stackshot_data err:(id *)err;
- (void)dealloc;
- (void)openConnectionToUnblockService;
- (void)recover:(id)recover stackshotData:(id)data replyQueue:(id)queue callback:(id)callback;
@end

@implementation UBUnblockClient

- (void)openConnectionToUnblockService
{
  if (self->_connection)
  {
    v2 = __error();
    v3 = *v2;
    v4 = _ublogt(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_27038C000, v4, OS_LOG_TYPE_DEFAULT, "The connection to com.apple.unblock is already up and active.", v17, 2u);
    }

LABEL_13:

    *__error() = v3;
    return;
  }

  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.unblock.client.replyq", v6);
  replyQueue = self->_replyQueue;
  self->_replyQueue = v7;

  v9 = self->_replyQueue;
  if (!v9)
  {
    v14 = __error();
    v3 = *v14;
    v4 = _ublogt(v14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) openConnectionToUnblockService];
    }

    goto LABEL_13;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.unblock", v9, 0);
  connection = self->_connection;
  self->_connection = mach_service;

  v12 = self->_connection;
  if (!v12)
  {
    v15 = self->_replyQueue;
    self->_replyQueue = 0;

    v16 = __error();
    v3 = *v16;
    v4 = _ublogt(v16);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) openConnectionToUnblockService];
    }

    goto LABEL_13;
  }

  xpc_connection_set_event_handler(v12, &__block_literal_global_574);
  v13 = self->_connection;

  xpc_connection_resume(v13);
}

- (id)prepareRecoverRequest:(id)request stackshot_data:(id)stackshot_data err:(id *)err
{
  v20 = *MEMORY[0x277D85DE8];
  stackshot_dataCopy = stackshot_data;
  v17 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:request requiringSecureCoding:1 error:&v17];
  v9 = v17;
  if (v8)
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v10, "UBRequestKey", 1uLL);
    if (stackshot_dataCopy && [stackshot_dataCopy length] && objc_msgSend(stackshot_dataCopy, "bytes"))
    {
      xpc_dictionary_set_data(v10, "UBStackshotDataKey", [stackshot_dataCopy bytes], objc_msgSend(stackshot_dataCopy, "length"));
    }

    xpc_dictionary_set_data(v10, "UBStuckServicesDataKey", [v8 bytes], objc_msgSend(v8, "length"));
    v19 = 0;
    memset(buffer, 0, sizeof(buffer));
    v11 = getpid();
    proc_name(v11, buffer, 0x21u);
    if (LOBYTE(buffer[0]))
    {
      xpc_dictionary_set_string(v10, "UBClientName", buffer);
    }
  }

  else
  {
    v12 = __error();
    v13 = *v12;
    v14 = _ublogt(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) prepareRecoverRequest:stackshot_data:err:];
    }

    *__error() = v13;
    if (err)
    {
      v15 = v9;
      v10 = 0;
      *err = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)handleRecoverReply:(id)reply input_services:(id)input_services err:(id *)err
{
  v173 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  input_servicesCopy = input_services;
  if (MEMORY[0x27439FD10](replyCopy) == MEMORY[0x277D86480])
  {
    string = xpc_dictionary_get_string(replyCopy, *MEMORY[0x277D86400]);
    v12 = __error();
    v13 = *v12;
    v14 = _ublogt(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
    }

    *__error() = v13;
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (err)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v15 forKey:*MEMORY[0x277CCA450]];
      *err = [v16 errorWithDomain:@"UBUnblockError" code:2 userInfo:v17];
    }

LABEL_14:

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x27439FD10](replyCopy) != MEMORY[0x277D86468])
  {
    if (err)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Unexcepted xpc event received." forKey:*MEMORY[0x277CCA450]];
      *err = [v9 errorWithDomain:@"UBUnblockError" code:2 userInfo:v10];
    }

    goto LABEL_15;
  }

  if (xpc_dictionary_get_int64(replyCopy, "UBResultKey"))
  {
    v18 = __error();
    v19 = *v18;
    v20 = _ublogt(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
    }

    *__error() = v19;
    if (!err)
    {
      goto LABEL_15;
    }

    v21 = MEMORY[0x277CCA9B8];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Unblock service failed to execute the request." forKey:*MEMORY[0x277CCA450]];
    v22 = [v21 errorWithDomain:@"UBUnblockError" code:2 userInfo:v15];
    goto LABEL_14;
  }

  length = 0;
  data = xpc_dictionary_get_data(replyCopy, "UBStuckServicesResultsDataKey", &length);
  if (data)
  {
    v26 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    v164 = 0;
    v27 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v26 error:&v164];
    v28 = v164;
    if (v28)
    {
      v29 = __error();
      v30 = *v29;
      v31 = _ublogt(v29);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
      }

      *__error() = v30;
      if (err)
      {
        v32 = v28;
        v23 = 0;
        *err = v28;
LABEL_105:

        goto LABEL_106;
      }
    }

    else
    {
      v37 = [input_servicesCopy count];
      if (v37 == [v27 count])
      {
        v126 = v26;
        errCopy = err;
        v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v162[0] = MEMORY[0x277D85DD0];
        v162[1] = 3221225472;
        v162[2] = __70__UBUnblockClient_XPCHandling__handleRecoverReply_input_services_err___block_invoke;
        v162[3] = &unk_279E02558;
        v125 = v38;
        v163 = v125;
        v39 = MEMORY[0x27439FAD0](v162);
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        obj = input_servicesCopy;
        v129 = [obj countByEnumeratingWithState:&v158 objects:v172 count:16];
        if (v129)
        {
          v40 = 0;
          v130 = *v159;
          v122 = 0;
          v123 = input_servicesCopy;
          v128 = v27;
          while (2)
          {
            v41 = 0;
            do
            {
              if (*v159 != v130)
              {
                objc_enumerationMutation(obj);
              }

              v132 = v41;
              v42 = *(*(&v158 + 1) + 8 * v41);
              v43 = [v27 objectAtIndexedSubscript:{v40, v122}];
              v44 = [v42 pid];
              if (v44 != [v43 pid] || objc_msgSend(v42, "threadID") != 1 && (v45 = objc_msgSend(v42, "threadID"), v45 != objc_msgSend(v43, "threadID")) || (objc_msgSend(v42, "incidentUUID"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "service"), v133 = v43, v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "incidentUUID"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v46, "isEqual:", v48), v48, v47, v43 = v133, v46, (v49 & 1) == 0))
              {
                v117 = __error();
                v118 = *v117;
                v119 = _ublogt(v117);
                if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
                }

                *__error() = v118;
                input_servicesCopy = v123;
                if (errCopy)
                {
                  v120 = MEMORY[0x277CCA9B8];
                  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Result has invalid pid/thread_id/incident service's data" forKey:*MEMORY[0x277CCA450]];
                  *errCopy = [v120 errorWithDomain:@"UBUnblockError" code:2 userInfo:v121];
                }

                v23 = 0;
                v28 = v122;
                goto LABEL_104;
              }

              v131 = v40;
              [v133 setService:v42];
              v156 = 0u;
              v157 = 0u;
              v154 = 0u;
              v155 = 0u;
              processesAndThreadsInvolved = [v133 processesAndThreadsInvolved];
              v51 = [processesAndThreadsInvolved countByEnumeratingWithState:&v154 objects:v171 count:16];
              if (v51)
              {
                v52 = v51;
                v53 = *v155;
                do
                {
                  for (i = 0; i != v52; ++i)
                  {
                    if (*v155 != v53)
                    {
                      objc_enumerationMutation(processesAndThreadsInvolved);
                    }

                    v55 = *(*(&v154 + 1) + 8 * i);
                    process = [v55 process];
                    v57 = (v39)[2](v39, process);
                    [v55 setProcess:v57];
                  }

                  v52 = [processesAndThreadsInvolved countByEnumeratingWithState:&v154 objects:v171 count:16];
                }

                while (v52);
              }

              selectedProcess = [v133 selectedProcess];

              if (selectedProcess)
              {
                selectedProcess2 = [v133 selectedProcess];
                v60 = (v39)[2](v39, selectedProcess2);
                [v133 setSelectedProcess:v60];
              }

              v152 = 0u;
              v153 = 0u;
              v150 = 0u;
              v151 = 0u;
              serviceDependencyChain = [v133 serviceDependencyChain];
              v62 = [serviceDependencyChain countByEnumeratingWithState:&v150 objects:v170 count:16];
              if (v62)
              {
                v63 = v62;
                v64 = *v151;
                do
                {
                  for (j = 0; j != v63; ++j)
                  {
                    if (*v151 != v64)
                    {
                      objc_enumerationMutation(serviceDependencyChain);
                    }

                    v66 = *(*(&v150 + 1) + 8 * j);
                    process2 = [v66 process];
                    v68 = (v39)[2](v39, process2);
                    [v66 setProcess:v68];
                  }

                  v63 = [serviceDependencyChain countByEnumeratingWithState:&v150 objects:v170 count:16];
                }

                while (v63);
              }

              v69 = v133;
              processesBlockedByThisIssueOnly = [v133 processesBlockedByThisIssueOnly];
              v71 = [processesBlockedByThisIssueOnly count];

              if (v71)
              {
                processesBlockedByThisIssueOnly2 = [v133 processesBlockedByThisIssueOnly];
                v73 = [processesBlockedByThisIssueOnly2 mutableCopy];

                v148 = 0u;
                v149 = 0u;
                v146 = 0u;
                v147 = 0u;
                processesBlockedByThisIssueOnly3 = [v133 processesBlockedByThisIssueOnly];
                v75 = [processesBlockedByThisIssueOnly3 countByEnumeratingWithState:&v146 objects:v169 count:16];
                if (v75)
                {
                  v76 = v75;
                  v77 = 0;
                  v78 = *v147;
                  do
                  {
                    for (k = 0; k != v76; ++k)
                    {
                      if (*v147 != v78)
                      {
                        objc_enumerationMutation(processesBlockedByThisIssueOnly3);
                      }

                      v80 = v39[2](v39, *(*(&v146 + 1) + 8 * k));
                      [v73 setObject:v80 atIndexedSubscript:v77];

                      ++v77;
                    }

                    v76 = [processesBlockedByThisIssueOnly3 countByEnumeratingWithState:&v146 objects:v169 count:16];
                  }

                  while (v76);
                }

                v81 = [v73 copy];
                v69 = v133;
                [v133 setProcessesBlockedByThisIssueOnly:v81];
              }

              processesBlockedByThisAndOtherIssues = [v69 processesBlockedByThisAndOtherIssues];
              v83 = [processesBlockedByThisAndOtherIssues count];

              if (v83)
              {
                processesBlockedByThisAndOtherIssues2 = [v69 processesBlockedByThisAndOtherIssues];
                v85 = [processesBlockedByThisAndOtherIssues2 mutableCopy];

                v144 = 0u;
                v145 = 0u;
                v142 = 0u;
                v143 = 0u;
                processesBlockedByThisAndOtherIssues3 = [v69 processesBlockedByThisAndOtherIssues];
                v87 = [processesBlockedByThisAndOtherIssues3 countByEnumeratingWithState:&v142 objects:v168 count:16];
                if (v87)
                {
                  v88 = v87;
                  v89 = 0;
                  v90 = *v143;
                  do
                  {
                    for (m = 0; m != v88; ++m)
                    {
                      if (*v143 != v90)
                      {
                        objc_enumerationMutation(processesBlockedByThisAndOtherIssues3);
                      }

                      v92 = v39[2](v39, *(*(&v142 + 1) + 8 * m));
                      [v85 setObject:v92 atIndexedSubscript:v89];

                      ++v89;
                    }

                    v88 = [processesBlockedByThisAndOtherIssues3 countByEnumeratingWithState:&v142 objects:v168 count:16];
                  }

                  while (v88);
                }

                v93 = [v85 copy];
                v69 = v133;
                [v133 setProcessesBlockedByThisAndOtherIssues:v93];
              }

              processesBlockedByOtherIssuesOnly = [v69 processesBlockedByOtherIssuesOnly];
              v95 = [processesBlockedByOtherIssuesOnly count];

              if (v95)
              {
                processesBlockedByOtherIssuesOnly2 = [v69 processesBlockedByOtherIssuesOnly];
                v97 = [processesBlockedByOtherIssuesOnly2 mutableCopy];

                v140 = 0u;
                v141 = 0u;
                v138 = 0u;
                v139 = 0u;
                processesBlockedByOtherIssuesOnly3 = [v69 processesBlockedByOtherIssuesOnly];
                v99 = [processesBlockedByOtherIssuesOnly3 countByEnumeratingWithState:&v138 objects:v167 count:16];
                if (v99)
                {
                  v100 = v99;
                  v101 = 0;
                  v102 = *v139;
                  do
                  {
                    for (n = 0; n != v100; ++n)
                    {
                      if (*v139 != v102)
                      {
                        objc_enumerationMutation(processesBlockedByOtherIssuesOnly3);
                      }

                      v104 = v39[2](v39, *(*(&v138 + 1) + 8 * n));
                      [v97 setObject:v104 atIndexedSubscript:v101];

                      ++v101;
                    }

                    v100 = [processesBlockedByOtherIssuesOnly3 countByEnumeratingWithState:&v138 objects:v167 count:16];
                  }

                  while (v100);
                }

                v105 = [v97 copy];
                v69 = v133;
                [v133 setProcessesBlockedByOtherIssuesOnly:v105];
              }

              v40 = v131 + 1;

              v41 = v132 + 1;
              v27 = v128;
            }

            while (v132 + 1 != v129);
            v28 = v122;
            input_servicesCopy = v123;
            v129 = [obj countByEnumeratingWithState:&v158 objects:v172 count:16];
            if (v129)
            {
              continue;
            }

            break;
          }
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v106 = v27;
        v107 = [v106 countByEnumeratingWithState:&v134 objects:v166 count:16];
        if (v107)
        {
          v108 = v107;
          v109 = *v135;
          do
          {
            for (ii = 0; ii != v108; ++ii)
            {
              if (*v135 != v109)
              {
                objc_enumerationMutation(v106);
              }

              v111 = *(*(&v134 + 1) + 8 * ii);
              if ([v111 recoveryStatus] != 4)
              {
                [v111 _recoveryHadEffectiveness:0];
              }
            }

            v108 = [v106 countByEnumeratingWithState:&v134 objects:v166 count:16];
          }

          while (v108);
        }

        v23 = v106;
LABEL_104:

        v26 = v126;
        goto LABEL_105;
      }

      v112 = __error();
      v113 = *v112;
      v114 = _ublogt(v112);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
      }

      *__error() = v113;
      if (err)
      {
        v115 = MEMORY[0x277CCA9B8];
        v116 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Result does not have all services data." forKey:*MEMORY[0x277CCA450]];
        *err = [v115 errorWithDomain:@"UBUnblockError" code:2 userInfo:v116];
      }
    }

    v23 = 0;
    goto LABEL_105;
  }

  v33 = __error();
  v34 = *v33;
  v35 = _ublogt(v33);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [UBUnblockClient(XPCHandling) handleRecoverReply:input_services:err:];
  }

  *__error() = v34;
  if (!err)
  {
    goto LABEL_15;
  }

  v36 = MEMORY[0x277CCA9B8];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Received NULL watchdog services result data." forKey:*MEMORY[0x277CCA450]];
  [v36 errorWithDomain:@"UBUnblockError" code:2 userInfo:v28];
  *err = v23 = 0;
LABEL_106:

LABEL_16:

  return v23;
}

- (UBUnblockClient)init
{
  v7.receiver = self;
  v7.super_class = UBUnblockClient;
  v2 = [(UBUnblockClient *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    connection = v2->_connection;
    v2->_connection = 0;

    replyQueue = v3->_replyQueue;
    v3->_replyQueue = 0;
  }

  return v3;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    v4 = __error();
    v5 = *v4;
    v6 = _ublogt(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_27038C000, v6, OS_LOG_TYPE_DEFAULT, "Canceling xpc connection to unblock service.", buf, 2u);
    }

    *__error() = v5;
    xpc_connection_cancel(self->_connection);
    connection = self->_connection;
  }

  self->_connection = 0;

  replyQueue = self->_replyQueue;
  self->_replyQueue = 0;

  os_unfair_lock_unlock(&self->_lock);
  v8.receiver = self;
  v8.super_class = UBUnblockClient;
  [(UBUnblockClient *)&v8 dealloc];
}

- (void)recover:(id)recover stackshotData:(id)data replyQueue:(id)queue callback:(id)callback
{
  recoverCopy = recover;
  dataCopy = data;
  queueCopy = queue;
  callbackCopy = callback;
  v14 = objc_autoreleasePoolPush();
  if (!queueCopy)
  {
    queueCopy = dispatch_get_global_queue(0, 0);
  }

  os_unfair_lock_lock(&self->_lock);
  [(UBUnblockClient *)self openConnectionToUnblockService];
  if (self->_connection)
  {
    v15 = __error();
    v16 = *v15;
    v17 = _ublogt(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_27038C000, v17, OS_LOG_TYPE_DEFAULT, "Calling remote unblock service to recover stuck watchdog services.", buf, 2u);
    }

    *__error() = v16;
    if (recoverCopy && [recoverCopy count])
    {
      if (!dataCopy || ![dataCopy length] || !objc_msgSend(dataCopy, "bytes"))
      {
        v18 = __error();
        v19 = *v18;
        v20 = _ublogt(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_27038C000, v20, OS_LOG_TYPE_DEFAULT, "No stackshot data provided. The unblock service will take a live stackshot.", buf, 2u);
        }

        *__error() = v19;
      }

      v37 = 0;
      v21 = [(UBUnblockClient *)self prepareRecoverRequest:recoverCopy stackshot_data:dataCopy err:&v37];
      v22 = v37;
      if (v21)
      {
        connection = self->_connection;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_2;
        v31[3] = &unk_279E025A8;
        v31[4] = self;
        v32 = recoverCopy;
        v33 = callbackCopy;
        xpc_connection_send_message_with_reply(connection, v21, queueCopy, v31);
        os_unfair_lock_unlock(&self->_lock);

        v24 = v32;
      }

      else
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_616;
        v34[3] = &unk_279E02580;
        v36 = callbackCopy;
        v22 = v22;
        v35 = v22;
        dispatch_async(queueCopy, v34);
        os_unfair_lock_unlock(&self->_lock);

        v24 = v36;
      }
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Invalid input." forKey:*MEMORY[0x277CCA450]];
      v27 = [v25 errorWithDomain:@"UBUnblockError" code:1 userInfo:v26];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke_615;
      block[3] = &unk_279E02580;
      v39 = v27;
      v40 = callbackCopy;
      v22 = v27;
      dispatch_async(queueCopy, block);
      os_unfair_lock_unlock(&self->_lock);

      v21 = v40;
    }
  }

  else
  {
    v28 = MEMORY[0x277CCA9B8];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Unable to open a xpc connection to unblock service." forKey:*MEMORY[0x277CCA450]];
    v30 = [v28 errorWithDomain:@"UBUnblockError" code:2 userInfo:v29];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __61__UBUnblockClient_recover_stackshotData_replyQueue_callback___block_invoke;
    v42[3] = &unk_279E02580;
    v43 = v30;
    v44 = callbackCopy;
    v22 = v30;
    dispatch_async(queueCopy, v42);
    os_unfair_lock_unlock(&self->_lock);

    v21 = v44;
  }

  objc_autoreleasePoolPop(v14);
}

@end