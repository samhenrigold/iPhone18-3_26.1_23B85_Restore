@interface NEFilterDataExtensionProviderContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)findFlowWithFlow:(uint64_t)flow;
- (id)socketExceptions;
- (void)applySettings:(id)settings completionHandler:(id)handler;
- (void)closeBrowserFilterFlow:(uint64_t)flow;
- (void)closeChannelFlow:(id *)flow;
- (void)closeFlow:(id *)flow;
- (void)closeSocketFlow:(uint64_t)flow socketID:;
- (void)fetchAppInfoForPID:(int)d UUID:(id)iD bundleID:(id)bundleID completionHandler:(id)handler;
- (void)fetchCurrentRulesForFlow:(id)flow completionHandler:(id)handler;
- (void)fetchProviderConnectionWithCompletionHandler:(id)handler;
- (void)handleChannelMessageFlowFinish:(void *)finish filloutReply:(void *)reply completionHandler:;
- (void)handleClientMessage:(id)message filloutReply:(id)reply completionHandler:(id)handler;
- (void)handleData:(uint64_t)data offset:(void *)offset forFlow:(uint64_t)flow direction:(void *)direction reply:(int)reply controlSocket:(void *)socket completionHandler:;
- (void)handleDataCompleteForFlow:(uint64_t)flow direction:(void *)direction reply:(int)reply controlSocket:(void *)socket completionHandler:;
- (void)handleNewFlow:(void *)flow reply:(int)reply controlSocket:(void *)socket completionHandler:;
- (void)handleRulesChanged;
- (void)provideRemediationMap:(id)map;
- (void)provideURLAppendStringMap:(id)map;
- (void)providerControlSocketFileHandle:(id)handle;
- (void)report:(id)report;
- (void)reportFlow:(void *)flow forVerdict:(uint64_t)verdict event:;
- (void)reportFlow:(void *)flow forVerdict:(void *)verdict absoluteVerdict:;
- (void)reportFlowClosed:(void *)closed;
- (void)reportFlowStats:(void *)stats;
- (void)resumeFlow:(id)flow withVerdict:(id)verdict;
- (void)sendBrowserContentFilterServerRequest;
- (void)sendSocketContentFilterRequest;
- (void)startFilterWithOptions:(id)options completionHandler:(id)handler;
- (void)stopWithReason:(int)reason;
- (void)updateFlow:(id)flow withVerdict:(id)verdict forDirection:(int64_t)direction;
@end

@implementation NEFilterDataExtensionProviderContext

- (void)fetchAppInfoForPID:(int)d UUID:(id)iD bundleID:(id)bundleID completionHandler:(id)handler
{
  iDCopy = iD;
  bundleIDCopy = bundleID;
  handlerCopy = handler;
  queue = [(NEFilterExtensionProviderContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__NEFilterDataExtensionProviderContext_fetchAppInfoForPID_UUID_bundleID_completionHandler___block_invoke;
  block[3] = &unk_1E7F08BD0;
  dCopy = d;
  block[4] = self;
  v18 = iDCopy;
  v19 = bundleIDCopy;
  v20 = handlerCopy;
  v14 = bundleIDCopy;
  v15 = iDCopy;
  v16 = handlerCopy;
  dispatch_async(queue, block);
}

void __91__NEFilterDataExtensionProviderContext_fetchAppInfoForPID_UUID_bundleID_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = [(NEExtensionProviderContext *)*(a1 + 32) hostContext];

  if (v3)
  {
    self = objc_alloc_init(NEAppInfo);
    if (self)
    {
      self->_pid = *(a1 + 64);
      objc_setProperty_nonatomic_copy(self, v4, *(a1 + 40), 16);
      objc_setProperty_nonatomic_copy(self, v5, *(a1 + 48), 24);
    }

    v6 = [(NEExtensionProviderContext *)*(a1 + 32) hostContext];
    [v6 getSourceAppInfo:self completionHandler:*(a1 + 56)];
  }

  else
  {
    v7 = *(*(a1 + 56) + 16);

    v7();
  }
}

- (void)report:(id)report
{
  reportCopy = report;
  if (self && self->_controlProviderExists)
  {
    v7 = reportCopy;
    hostContext = [(NEExtensionProviderContext *)self hostContext];
    [hostContext report:v7];

    reportCopy = v7;
  }
}

- (void)fetchCurrentRulesForFlow:(id)flow completionHandler:(id)handler
{
  handlerCopy = handler;
  flowCopy = flow;
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__NEFilterDataExtensionProviderContext_fetchCurrentRulesForFlow_completionHandler___block_invoke;
  v11[3] = &unk_1E7F07630;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [hostContext fetchCurrentRulesForFlow:flowCopy completionHandler:v11];
}

void __83__NEFilterDataExtensionProviderContext_fetchCurrentRulesForFlow_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __83__NEFilterDataExtensionProviderContext_fetchCurrentRulesForFlow_completionHandler___block_invoke_2;
  v7[3] = &unk_1E7F0B588;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)handleClientMessage:(id)message filloutReply:(id)reply completionHandler:(id)handler
{
  v237 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  replyCopy = reply;
  handlerCopy = handler;
  int64 = xpc_dictionary_get_int64(messageCopy, "command");
  if (int64 <= 6)
  {
    if (int64 > 3)
    {
      if (int64 != 4)
      {
        if (int64 != 5)
        {
          if (!replyCopy)
          {
            v12 = ne_log_obj();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              LOWORD(aBlock[0]) = 0;
              v13 = "Reply dictionary is NULL when handling a protocol new flow message";
              goto LABEL_149;
            }

            goto LABEL_150;
          }

          v14 = messageCopy;
          v15 = replyCopy;
          v16 = handlerCopy;
          if (!self)
          {
            goto LABEL_258;
          }

          v211 = handlerCopy;
          *v225 = 0u;
          v226 = 0u;
          uuid = xpc_dictionary_get_uuid(v14, "flow-uuid");
          if (!uuid)
          {
            v135 = ne_log_obj();
            if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(aBlock[0]) = 0;
              _os_log_debug_impl(&dword_1BA83C000, v135, OS_LOG_TYPE_DEBUG, "channelFlow new channelFlow message rejected, invalid Flow UUID parameter", aBlock, 2u);
            }

            xpc_dictionary_set_int64(v15, "error", 4);
            v16[2](v16);
            goto LABEL_258;
          }

          v18 = uuid;
          v195 = v16;
          v201 = v15;
          uint64 = xpc_dictionary_get_uint64(v14, "ip-protocol");
          v20 = xpc_dictionary_get_uint64(v14, "client-pid");
          v21 = xpc_dictionary_get_uint64(v14, "client-e-pid");
          v192 = xpc_dictionary_get_uint64(v14, "connection-direction");
          memset(out, 0, 37);
          uuid_unparse(v18, out);
          memset(dst, 0, sizeof(dst));
          v22 = xpc_dictionary_get_uuid(v14, "client-proc-uuid");
          if (v22)
          {
            uuid_copy(dst, v22);
          }

          memset(v233, 0, sizeof(v233));
          v23 = xpc_dictionary_get_uuid(v14, "client-e-proc-uuid");
          if (v23)
          {
            uuid_copy(v233, v23);
          }

          length = 0;
          *&v221.sa_len = 0;
          *&v221.sa_data[6] = 0;
          v223 = 0;
          v222 = 0;
          if (xpc_dictionary_get_data(v14, "local-addr", &length) && length <= 0x1C)
          {
            __memcpy_chk();
          }

          *&v218.sa_len = 0;
          *&v218.sa_data[6] = 0;
          v220 = 0;
          v219 = 0;
          v24 = 0;
          if (xpc_dictionary_get_data(v14, "remote-addr", &length) && length <= 0x1C)
          {
            __memcpy_chk();
            if (v218.sa_family == 30)
            {
              v25 = 30;
            }

            else
            {
              v25 = 0;
            }

            v24 = v25;
          }

          if (uint64 == 17)
          {
            v26 = 2;
          }

          else
          {
            v26 = 1;
          }

          newValue = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v18];
          v27 = [[NEFilterSocketFlow alloc] initWithSocketFamily:v24 socketType:v26 socketProtocol:uint64 pid:v20 epid:v21 uuid:dst euuid:v233 socketID:-1];
          if (!v27)
          {
            v141 = ne_log_obj();
            v16 = v195;
            v15 = v201;
            if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
            {
              LODWORD(aBlock[0]) = 138412290;
              *(aBlock + 4) = newValue;
              _os_log_error_impl(&dword_1BA83C000, v141, OS_LOG_TYPE_ERROR, "New flow %@ rejected because flow creation failed", aBlock, 0xCu);
            }

            xpc_dictionary_set_int64(v201, "error", 1);
            xpc_dictionary_set_uuid(v201, "flow-uuid", v18);
            v195[2](v195);
            handlerCopy = v211;
            goto LABEL_257;
          }

          v217 = 0;
          data = xpc_dictionary_get_data(v14, "crypto-signature", &v217);
          v16 = v195;
          v15 = v201;
          if (data && v217)
          {
            v30 = data;
            v31 = objc_alloc(MEMORY[0x1E695DEF0]);
            v32 = [v31 initWithBytes:v30 length:v217];
            [v27 setCrypto_signature:v32];
          }

          objc_setProperty_atomic_copy(v27, v29, newValue, 128);
          if (v192)
          {
            v33 = 2;
          }

          else
          {
            v33 = 1;
          }

          [v27 setDirection:v33];
          xpc_dictionary_get_audit_token();
          v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v225 length:32];
          [v27 setSourceAppAuditToken:v34];

          sourceAppAuditToken = [v27 sourceAppAuditToken];
          [v27 setSourceProcessAuditToken:sourceAppAuditToken];

          v36 = xpc_dictionary_get_remote_connection(v14);
          objc_setProperty_atomic(v27, v37, v36, 144);

          string = xpc_dictionary_get_string(v14, "source-app-bundle-id");
          handlerCopy = v211;
          if (string)
          {
            string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@".%s", string];
            [v27 setSourceAppIdentifier:string];

            v27[13] = 1;
          }

          v193 = v27;
          v40 = xpc_dictionary_get_string(v14, "url");
          if (v40)
          {
            v41 = v40;
            v42 = objc_alloc(MEMORY[0x1E695DFF8]);
            v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v41];
            v44 = [v42 initWithString:v43];
            [v193 setURL:v44];
          }

          v45 = xpc_dictionary_get_string(v14, "remote-hostname");
          v27 = v193;
          if (v45)
          {
            v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v45 encoding:4];
            [v193 setRemoteHostname:v46];
          }

          [(NEFilterSocketFlow *)v193 setLocalAddress:?];
          [(NEFilterSocketFlow *)v193 setRemoteAddress:?];
          channelFlows = self->_channelFlows;
          if (!channelFlows)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v49 = self->_channelFlows;
            self->_channelFlows = dictionary;

            channelFlows = self->_channelFlows;
          }

          [(NSMutableDictionary *)channelFlows setObject:v193 forKey:newValue];
          v190 = newValue;
          if (!v190)
          {
            v187 = ne_log_obj();
            if (os_log_type_enabled(v187, OS_LOG_TYPE_FAULT))
            {
              LODWORD(aBlock[0]) = 136315138;
              *(aBlock + 4) = "[NEFilterDataExtensionProviderContext blessClient:]";
              _os_log_fault_impl(&dword_1BA83C000, v187, OS_LOG_TYPE_FAULT, "%s called with null clientUUID", aBlock, 0xCu);
            }

LABEL_255:
            handlerCopy = v211;
            v16 = v195;
            v15 = v201;
            v27 = v193;
            goto LABEL_256;
          }

          source = self->_source;
          if (source)
          {
            handle = dispatch_source_get_handle(source);
            if ((handle & 0x80000000) == 0)
            {
              *&v228 = 0;
              *aBlock = xmmword_1BAA4E530;
              *&aBlock[2] = 0uLL;
              [v190 getUUIDBytes:&aBlock[3]];
              v52 = 0;
              while (1)
              {
                v53 = write(handle, aBlock + v52, 40 - v52);
                v54 = __error();
                if (v53 < 1)
                {
                  if (v53)
                  {
                    v55 = *v54;
                    if (*v54 != 35)
                    {
                      v183 = ne_log_obj();
                      v184 = v183;
                      if (v55 == 2)
                      {
                        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 0;
                          _os_log_debug_impl(&dword_1BA83C000, v184, OS_LOG_TYPE_DEBUG, "No socket flow to bless, ignore", buf, 2u);
                        }
                      }

                      else if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                      {
                        v185 = strerror(v55);
                        *buf = 136315138;
                        v236 = v185;
                        _os_log_error_impl(&dword_1BA83C000, v184, OS_LOG_TYPE_ERROR, "Write operation on the control socket failed while blessing the socket (%s)", buf, 0xCu);
                      }

                      goto LABEL_255;
                    }
                  }
                }

                else
                {
                  v52 += v53;
                }

                if (v52 >= 0x28)
                {
                  goto LABEL_255;
                }
              }
            }

            v146 = ne_log_obj();
            if (!os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_243;
            }

            LODWORD(aBlock[0]) = 138412290;
            *(aBlock + 4) = v190;
            v147 = "Failed to find control socket to bless client %@";
          }

          else
          {
            v146 = ne_log_obj();
            if (!os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
            {
LABEL_243:

LABEL_256:
              [(NEFilterDataExtensionProviderContext *)self handleNewFlow:v27 reply:v15 controlSocket:-1 completionHandler:v16];
LABEL_257:

LABEL_258:
              goto LABEL_196;
            }

            LODWORD(aBlock[0]) = 138412290;
            *(aBlock + 4) = v190;
            v147 = "Failed to find control socket source to bless client %@";
          }

          _os_log_error_impl(&dword_1BA83C000, v146, OS_LOG_TYPE_ERROR, v147, aBlock, 0xCu);
          goto LABEL_243;
        }

        if (!replyCopy)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LOWORD(aBlock[0]) = 0;
            v13 = "Reply dictionary is NULL when handling a source remediate message";
            goto LABEL_149;
          }

          goto LABEL_150;
        }

        v101 = messageCopy;
        v102 = replyCopy;
        v103 = handlerCopy;
        if (self)
        {
          if (self->_browserFlows)
          {
            v104 = xpc_dictionary_get_uuid(v101, "flow-uuid");
            if (v104)
            {
              v105 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v104];
              v106 = self->_browserFlows;
              newValued = v105;
              v107 = [(NSMutableDictionary *)v106 objectForKey:v105];

              v108 = ne_log_obj();
              v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);
              if (v107)
              {
                v204 = v101;
                v216 = handlerCopy;
                if (v109)
                {
                  LODWORD(aBlock[0]) = 138412290;
                  *(aBlock + 4) = newValued;
                  _os_log_debug_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_DEBUG, "browserFlow: Remediation message received, %@", aBlock, 0xCu);
                }

                v107[10] = 1;
                _principalObject = [(NEExtensionProviderContext *)self _principalObject];
                *out = MEMORY[0x1E69E9820];
                *&out[8] = 3221225472;
                *&out[16] = __96__NEFilterDataExtensionProviderContext_handleRemediationMessage_filloutReply_completionHandler___block_invoke;
                *&out[24] = &unk_1E7F07540;
                *&out[32] = _principalObject;
                v111 = v107;
                v232 = v111;
                v199 = _principalObject;
                v112 = _Block_copy(out);
                aBlock[0] = MEMORY[0x1E69E9820];
                aBlock[1] = 3221225472;
                aBlock[2] = __96__NEFilterDataExtensionProviderContext_handleRemediationMessage_filloutReply_completionHandler___block_invoke_2;
                aBlock[3] = &unk_1E7F07658;
                v113 = v111;
                *&v228 = v113;
                *(&v228 + 1) = self;
                v229 = v102;
                v230 = v103;
                v114 = _Block_copy(aBlock);
                v115 = [[NEFilterDataSavedMessageHandler alloc] initWithGetVerdictBlock:v112 handleVerdictBlock:v114];
                [(NEFilterDataSavedMessageHandler *)v115 enqueueWithFlow:v113 context:self];

                handlerCopy = v216;
                v101 = v204;
              }

              else
              {
                if (v109)
                {
                  LODWORD(aBlock[0]) = 138412290;
                  *(aBlock + 4) = newValued;
                  _os_log_debug_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_DEBUG, "Remediation message ignored, no open flow for %@", aBlock, 0xCu);
                }

                xpc_dictionary_set_int64(v102, "error", 6);
                v103[2](v103);
              }

              goto LABEL_187;
            }

            v140 = ne_log_obj();
            if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
            {
              LOWORD(aBlock[0]) = 0;
              _os_log_error_impl(&dword_1BA83C000, v140, OS_LOG_TYPE_ERROR, "Remediation message rejected, invalid flow UUID parameter", aBlock, 2u);
            }

            v133 = v102;
            v134 = 4;
          }

          else
          {
            v132 = ne_log_obj();
            if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
            {
              LOWORD(aBlock[0]) = 0;
              _os_log_error_impl(&dword_1BA83C000, v132, OS_LOG_TYPE_ERROR, "Remediation message rejected, no browser flow exists", aBlock, 2u);
            }

            v133 = v102;
            v134 = 1;
          }

          xpc_dictionary_set_int64(v133, "error", v134);
          v103[2](v103);
        }

LABEL_187:

        goto LABEL_197;
      }

      if (!replyCopy)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(aBlock[0]) = 0;
          v13 = "Reply dictionary is NULL when handling a source data complete message";
          goto LABEL_149;
        }

        goto LABEL_150;
      }

      v14 = messageCopy;
      v56 = replyCopy;
      v57 = handlerCopy;
      if (!self)
      {
        goto LABEL_194;
      }

      if (self->_browserFlows)
      {
        v120 = xpc_dictionary_get_uuid(v14, "flow-uuid");
        if (v120)
        {
          v78 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v120];
          v80 = [(NSMutableDictionary *)self->_browserFlows objectForKey:v78];
          if (v80)
          {
            v214 = handlerCopy;
            v121 = xpc_dictionary_get_int64(v14, "direction");
            [v80 setInBytes:{xpc_dictionary_get_uint64(v14, "byte-count-inbound")}];
            [v80 setOutBytes:{xpc_dictionary_get_uint64(v14, "byte-count-outbound")}];
            *out = 0;
            v122 = xpc_dictionary_get_data(v14, "crypto-signature", out);
            if (v122 && *out)
            {
              v123 = v122;
              v124 = objc_alloc(MEMORY[0x1E695DEF0]);
              v125 = [v124 initWithBytes:v123 length:*out];
              [v80 setCrypto_signature:v125];
            }

            v126 = ne_log_obj();
            if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(aBlock[0]) = 138412290;
              *(aBlock + 4) = v78;
              _os_log_debug_impl(&dword_1BA83C000, v126, OS_LOG_TYPE_DEBUG, "browserFlow data complete message received, %@", aBlock, 0xCu);
            }

            [(NEFilterDataExtensionProviderContext *)self handleDataCompleteForFlow:v80 direction:v121 reply:v56 controlSocket:-1 completionHandler:v57];
            goto LABEL_130;
          }

          v145 = ne_log_obj();
          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(aBlock[0]) = 138412290;
            *(aBlock + 4) = v78;
            _os_log_debug_impl(&dword_1BA83C000, v145, OS_LOG_TYPE_DEBUG, "browserFlow data complete message ignored, no open flow for %@", aBlock, 0xCu);
          }

          xpc_dictionary_set_int64(v56, "error", 6);
LABEL_191:
          v57[2](v57);
          goto LABEL_192;
        }

        v138 = ne_log_obj();
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_177;
        }

        LOWORD(aBlock[0]) = 0;
        v139 = "browserFlow data complete message rejected, invalid Flow UUID parameter";
        goto LABEL_260;
      }

      v130 = ne_log_obj();
      if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
LABEL_166:

        v136 = v56;
        v137 = 1;
LABEL_178:
        xpc_dictionary_set_int64(v136, "error", v137);
        v57[2](v57);
LABEL_194:

LABEL_195:
        goto LABEL_196;
      }

      LOWORD(aBlock[0]) = 0;
      v131 = "browserFlow data complete message rejected, no browser flows exist.";
LABEL_251:
      _os_log_error_impl(&dword_1BA83C000, v130, OS_LOG_TYPE_ERROR, v131, aBlock, 2u);
      goto LABEL_166;
    }

    if (int64 == 2)
    {
      if (!replyCopy)
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(aBlock[0]) = 0;
          v13 = "Reply dictionary is NULL when handling a source new flow message";
          goto LABEL_149;
        }

        goto LABEL_150;
      }

      v14 = messageCopy;
      v91 = replyCopy;
      v92 = handlerCopy;
      if (self)
      {
        newValuec = v91;
        v215 = handlerCopy;
        v225[0] = 0;
        memset(aBlock, 0, sizeof(aBlock));
        v93 = xpc_dictionary_get_uuid(v14, "flow-uuid");
        v94 = xpc_dictionary_get_int64(v14, "direction");
        v95 = xpc_dictionary_get_string(v14, "url");
        v96 = xpc_dictionary_get_string(v14, "parent-url");
        v97 = xpc_dictionary_get_string(v14, "source-app-bundle-id");
        v191 = xpc_dictionary_get_uint64(v14, "source-app-pid");
        v189 = xpc_dictionary_get_uint64(v14, "source-pid");
        *v194 = xpc_dictionary_get_uint64(v14, "socket-identifier");
        v98 = xpc_dictionary_get_uint64(v14, "connection-direction");
        if (v93 && (v94 - 3) > 0xFFFFFFFFFFFFFFFDLL)
        {
          v188 = v98;
          if (v95)
          {
            v99 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v95];
            if (v99)
            {
              v100 = [MEMORY[0x1E695DFF8] URLWithString:v99];
            }

            else
            {
              v100 = 0;
            }
          }

          else
          {
            v100 = 0;
          }

          if (v96)
          {
            v149 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v96];
            if (v149)
            {
              v96 = [MEMORY[0x1E695DFF8] URLWithString:v149];
            }

            else
            {
              v96 = 0;
            }
          }

          if (v97)
          {
            v205 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@".%s", v97];
          }

          else
          {
            v205 = 0;
          }

          v150 = [NEFilterBrowserFlow alloc];
          v200 = v96;
          if (v150 && (*out = v150, *&out[8] = NEFilterBrowserFlow, (v151 = objc_msgSendSuper2(out, sel_initWithURL_sourceAppIdentifier_, v100, v205)) != 0))
          {
            v152 = v151;
            objc_storeStrong(v151 + 21, v96);
            v153 = v152[19];
            v152[19] = 0;

            v154 = v152[20];
            v152[20] = 0;

            *(v152 + 13) = v205 != 0;
            *out = 0;
            v155 = xpc_dictionary_get_data(v14, "crypto-signature", out);
            if (v155 && *out)
            {
              v156 = v155;
              v157 = objc_alloc(MEMORY[0x1E695DEF0]);
              v158 = [v157 initWithBytes:v156 length:*out];
              [v152 setCrypto_signature:v158];
            }

            v159 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v93];
            objc_setProperty_atomic_copy(v152, v160, v159, 128);

            [v152 setEpid:v191];
            [v152 setPid:v189];
            if (v188)
            {
              v161 = 2;
            }

            else
            {
              v161 = 1;
            }

            [v152 setDirection:v161];
            xpc_dictionary_get_audit_token();
            v162 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:aBlock length:32];
            [v152 setSourceAppAuditToken:v162];

            v163 = xpc_dictionary_get_remote_connection(v14);
            objc_setProperty_atomic(v152, v164, v163, 144);

            v165 = xpc_dictionary_get_data(v14, "url-request", v225);
            if (v165)
            {
              v166 = [MEMORY[0x1E695DEF0] dataWithBytes:v165 length:v225[0]];
              if (v166)
              {
                v167 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v166 error:0];
                v168 = [v167 decodeObjectOfClass:objc_opt_class() forKey:@"URL_Request"];
                [v152 setRequest:v168];

                [v167 finishDecoding];
              }
            }

            v169 = xpc_dictionary_get_data(v14, "url-response", v225);
            if (v169)
            {
              v170 = [MEMORY[0x1E695DEF0] dataWithBytes:v169 length:v225[0]];
              if (v170)
              {
                v171 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v170 error:0];
                v172 = [v171 decodeObjectOfClass:objc_opt_class() forKey:@"URL_Response"];
                [v152 setResponse:v172];

                [v171 finishDecoding];
              }
            }

            if (*v194)
            {
              socketExceptions = [(NEFilterDataExtensionProviderContext *)self socketExceptions];
              v174 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v194];
              [socketExceptions addObject:v174];
            }

            browserFlows = self->_browserFlows;
            if (!browserFlows)
            {
              dictionary2 = [MEMORY[0x1E695DF90] dictionary];
              v177 = self->_browserFlows;
              self->_browserFlows = dictionary2;

              browserFlows = self->_browserFlows;
            }

            v178 = browserFlows;
            v180 = objc_getProperty(v152, v179, 128, 1);
            [(NSMutableDictionary *)v178 setObject:v152 forKeyedSubscript:v180];

            v91 = newValuec;
            [(NEFilterDataExtensionProviderContext *)self handleNewFlow:v152 reply:newValuec controlSocket:-1 completionHandler:v92];
          }

          else
          {

            v181 = ne_log_obj();
            if (os_log_type_enabled(v181, OS_LOG_TYPE_ERROR))
            {
              *out = 0;
              _os_log_error_impl(&dword_1BA83C000, v181, OS_LOG_TYPE_ERROR, "browserFlow: New flow rejected because flow object creation failed", out, 2u);
            }

            v91 = newValuec;
            xpc_dictionary_set_int64(newValuec, "error", 1);
            v92[2](v92);
            v152 = 0;
          }
        }

        else
        {
          v128 = ne_log_obj();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
          {
            *out = 0;
            _os_log_debug_impl(&dword_1BA83C000, v128, OS_LOG_TYPE_DEBUG, "browserFlow: New flow rejected due to invalid parameters", out, 2u);
          }

          v91 = newValuec;
          xpc_dictionary_set_int64(newValuec, "error", 4);
          v92[2](v92);
        }

        handlerCopy = v215;
      }

      goto LABEL_196;
    }

    if (int64 != 3)
    {
      goto LABEL_197;
    }

    if (!replyCopy)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(aBlock[0]) = 0;
        v13 = "Reply dictionary is NULL when handling a source add data message";
        goto LABEL_149;
      }

      goto LABEL_150;
    }

    v14 = messageCopy;
    v56 = replyCopy;
    v57 = handlerCopy;
    if (!self)
    {
      goto LABEL_194;
    }

    if (!self->_browserFlows)
    {
      v130 = ne_log_obj();
      if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_166;
      }

      LOWORD(aBlock[0]) = 0;
      v131 = "browserFlow: Add data message rejected, no browser flow exist";
      goto LABEL_251;
    }

    v58 = xpc_dictionary_get_uuid(v14, "flow-uuid");
    if (!v58)
    {
      v138 = ne_log_obj();
      if (!os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
LABEL_177:

        v136 = v56;
        v137 = 4;
        goto LABEL_178;
      }

      LOWORD(aBlock[0]) = 0;
      v139 = "browserFlow: Add data flow rejected due to invalid parameters";
LABEL_260:
      _os_log_error_impl(&dword_1BA83C000, v138, OS_LOG_TYPE_ERROR, v139, aBlock, 2u);
      goto LABEL_177;
    }

    v59 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v58];
    v60 = ne_log_obj();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(aBlock[0]) = 138412290;
      *(aBlock + 4) = v59;
      _os_log_debug_impl(&dword_1BA83C000, v60, OS_LOG_TYPE_DEBUG, "browserFlow: add-data message received, %@", aBlock, 0xCu);
    }

    newValuea = v59;
    v61 = [(NSMutableDictionary *)self->_browserFlows objectForKey:v59];
    if (v61)
    {
      v62 = xpc_dictionary_get_int64(v14, "direction");
      *out = 0;
      v63 = xpc_dictionary_get_data(v14, "data", out);
      if (v63 && *out)
      {
        v64 = v63;
        v202 = v62;
        aBlock[0] = 0;
        v65 = xpc_dictionary_get_data(v14, "url-request", aBlock);
        if (v65)
        {
          v66 = [MEMORY[0x1E695DEF0] dataWithBytes:v65 length:aBlock[0]];
          if (v66)
          {
            v196 = v64;
            v67 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v66 error:0];
            [v67 decodeObjectOfClass:objc_opt_class() forKey:@"URL_Request"];
            v68 = v212 = handlerCopy;
            [v61 setRequest:v68];

            handlerCopy = v212;
            [v67 finishDecoding];

            v64 = v196;
          }
        }

        v69 = xpc_dictionary_get_data(v14, "url-response", aBlock);
        if (v69)
        {
          v70 = [MEMORY[0x1E695DEF0] dataWithBytes:v69 length:aBlock[0]];
          if (v70)
          {
            v197 = v64;
            v71 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v70 error:0];
            [v71 decodeObjectOfClass:objc_opt_class() forKey:@"URL_Response"];
            v72 = v213 = handlerCopy;
            [v61 setResponse:v72];

            handlerCopy = v213;
            [v71 finishDecoding];

            v64 = v197;
          }
        }

        v73 = xpc_dictionary_get_uint64(v14, "data-start-offset");
        v74 = [MEMORY[0x1E695DEF0] dataWithBytes:v64 length:*out];
        [(NEFilterDataExtensionProviderContext *)self handleData:v74 offset:v73 forFlow:v61 direction:v202 reply:v56 controlSocket:-1 completionHandler:v57];

        goto LABEL_204;
      }

      v148 = ne_log_obj();
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(aBlock[0]) = 138412290;
        *(aBlock + 4) = newValuea;
        _os_log_debug_impl(&dword_1BA83C000, v148, OS_LOG_TYPE_DEBUG, "browserFlow: Add data message rejected, invalid data parameter %@", aBlock, 0xCu);
      }

      v143 = v56;
      v144 = 4;
    }

    else
    {
      v142 = ne_log_obj();
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(aBlock[0]) = 138412290;
        *(aBlock + 4) = newValuea;
        _os_log_debug_impl(&dword_1BA83C000, v142, OS_LOG_TYPE_DEBUG, "browserFlow: Add data message ignored, %@", aBlock, 0xCu);
      }

      v143 = v56;
      v144 = 6;
    }

    xpc_dictionary_set_int64(v143, "error", v144);
    v57[2](v57);
LABEL_204:

    goto LABEL_194;
  }

  if (int64 <= 10)
  {
    if ((int64 - 7) >= 2)
    {
      if ((int64 - 9) < 2)
      {
        if (!replyCopy)
        {
          v12 = ne_log_obj();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LOWORD(aBlock[0]) = 0;
            v13 = "Reply dictionary is NULL when handling a protocol data finished message";
LABEL_149:
            _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, aBlock, 2u);
            goto LABEL_150;
          }

          goto LABEL_150;
        }

        goto LABEL_77;
      }

      goto LABEL_197;
    }

    if (!replyCopy)
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(aBlock[0]) = 0;
        v13 = "Reply dictionary is NULL when handling a protocol data message";
        goto LABEL_149;
      }

LABEL_150:

      goto LABEL_197;
    }

    v14 = messageCopy;
    v56 = replyCopy;
    v75 = handlerCopy;
    v57 = v75;
    if (!self)
    {
      goto LABEL_194;
    }

    if (v14)
    {
      if (v75)
      {
        v76 = xpc_dictionary_get_int64(v14, "command");
        v77 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{xpc_dictionary_get_uuid(v14, "flow-uuid")}];
        if (!v77)
        {
          v127 = ne_log_obj();
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(aBlock[0]) = 0;
            _os_log_debug_impl(&dword_1BA83C000, v127, OS_LOG_TYPE_DEBUG, "New data message rejected, invalid flow UUID", aBlock, 2u);
          }

          xpc_dictionary_set_int64(v56, "error", 4);
          v57[2](v57);
          v78 = 0;
          goto LABEL_193;
        }

        v78 = v77;
        v198 = v76;
        if (v76 == 8)
        {
          v79 = 2;
        }

        else
        {
          v79 = 1;
        }

        v80 = [(NSMutableDictionary *)self->_channelFlows objectForKey:v77];
        if (v80)
        {
          *&v221.sa_len = 0;
          memset(out, 0, 28);
          if (xpc_dictionary_get_data(v14, "local-addr", &v221.sa_len) && *&v221.sa_len <= 0x1CuLL)
          {
            __memcpy_chk();
            [(NEFilterSocketFlow *)v80 setLocalAddress:out];
          }

          v203 = v79;
          v214 = handlerCopy;
          v225[0] = 0;
          v225[1] = 0;
          DWORD2(v226) = 0;
          *&v226 = 0;
          if (xpc_dictionary_get_data(v14, "remote-addr", &v221.sa_len) && *&v221.sa_len <= 0x1CuLL)
          {
            __memcpy_chk();
            [(NEFilterSocketFlow *)v80 setRemoteAddress:v225];
          }

          newValueb = v56;
          *&v218.sa_len = 0;
          v81 = xpc_dictionary_get_data(v14, "crypto-signature", &v218.sa_len);
          if (v81 && *&v218.sa_len)
          {
            v82 = v81;
            v83 = objc_alloc(MEMORY[0x1E695DEF0]);
            v84 = [v83 initWithBytes:v82 length:*&v218.sa_len];
            [v80 setCrypto_signature:v84];
          }

          v85 = xpc_dictionary_get_uint64(v14, "pending-data-start-offset");
          *dst = 0;
          v86 = xpc_dictionary_get_data(v14, "data", dst);
          v87 = objc_alloc(MEMORY[0x1E695DEF0]);
          v88 = [v87 initWithBytes:v86 length:*dst];
          v89 = ne_log_obj();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
          {
            v182 = "out";
            LODWORD(aBlock[0]) = 136315906;
            if (v198 == 8)
            {
              v182 = "in";
            }

            *(aBlock + 4) = v182;
            WORD2(aBlock[1]) = 2112;
            *(&aBlock[1] + 6) = v78;
            HIWORD(aBlock[2]) = 2048;
            aBlock[3] = v85;
            LOWORD(v228) = 2048;
            *(&v228 + 2) = *dst;
            _os_log_debug_impl(&dword_1BA83C000, v89, OS_LOG_TYPE_DEBUG, "Received %sbound data for %@ (offset %lld, dataLen %zu)", aBlock, 0x2Au);
          }

          v90 = v85;
          v56 = newValueb;
          [(NEFilterDataExtensionProviderContext *)self handleData:v88 offset:v90 forFlow:v80 direction:v203 reply:newValueb controlSocket:-1 completionHandler:v57];

LABEL_130:
          handlerCopy = v214;
LABEL_192:

LABEL_193:
          goto LABEL_194;
        }

        xpc_dictionary_set_int64(v56, "error", 6);
        v129 = ne_log_obj();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(aBlock[0]) = 138412290;
          *(aBlock + 4) = v78;
          _os_log_debug_impl(&dword_1BA83C000, v129, OS_LOG_TYPE_DEBUG, "Add data message rejected, no flow for %@", aBlock, 0xCu);
        }

        goto LABEL_191;
      }

      v78 = ne_log_obj();
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_193;
      }

      LODWORD(aBlock[0]) = 136315138;
      *(aBlock + 4) = "[NEFilterDataExtensionProviderContext handleChannelMessageMoreData:filloutReply:completionHandler:]";
      v186 = "%s called with null completionHandler";
    }

    else
    {
      v78 = ne_log_obj();
      if (!os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_193;
      }

      LODWORD(aBlock[0]) = 136315138;
      *(aBlock + 4) = "[NEFilterDataExtensionProviderContext handleChannelMessageMoreData:filloutReply:completionHandler:]";
      v186 = "%s called with null message";
    }

    _os_log_fault_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_FAULT, v186, aBlock, 0xCu);
    goto LABEL_193;
  }

  if (int64 == 12)
  {
    v14 = handlerCopy;
    if (self)
    {
      v116 = xpc_dictionary_get_array(messageCopy, "stats-report-statistics");
      v56 = v116;
      if (v116 && xpc_array_get_count(v116))
      {
        v117 = ne_log_obj();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(aBlock[0]) = 134217984;
          *(aBlock + 4) = xpc_array_get_count(v56);
          _os_log_debug_impl(&dword_1BA83C000, v117, OS_LOG_TYPE_DEBUG, "Channel Stats Report - stats count %zu", aBlock, 0xCu);
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __103__NEFilterDataExtensionProviderContext_handleChannelMessageStatsReport_filloutReply_completionHandler___block_invoke;
        aBlock[3] = &unk_1E7F076A0;
        v118 = v14;
        *&v228 = self;
        *(&v228 + 1) = v118;
        xpc_array_apply(v56, aBlock);
        v119 = *(&v228 + 1);
      }

      else
      {
        v119 = ne_log_obj();
        if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
        {
          LOWORD(aBlock[0]) = 0;
          _os_log_error_impl(&dword_1BA83C000, v119, OS_LOG_TYPE_ERROR, "Channel Stats Report - empty stats", aBlock, 2u);
        }
      }

      goto LABEL_195;
    }

LABEL_196:

    goto LABEL_197;
  }

  if (int64 == 11)
  {
LABEL_77:
    [(NEFilterDataExtensionProviderContext *)&self->super.super.super.super.isa handleChannelMessageFlowFinish:messageCopy filloutReply:replyCopy completionHandler:handlerCopy];
  }

LABEL_197:
}

- (void)handleChannelMessageFlowFinish:(void *)finish filloutReply:(void *)reply completionHandler:
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a2;
  finishCopy = finish;
  replyCopy = reply;
  if (self)
  {
    int64 = xpc_dictionary_get_int64(v7, "command");
    uuid = xpc_dictionary_get_uuid(v7, "flow-uuid");
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    if (!v12)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "Finished data message rejected, invalid flow UUID", buf, 2u);
      }

      if (finishCopy)
      {
        xpc_dictionary_set_int64(finishCopy, "error", 4);
      }

      replyCopy[2](replyCopy);
      goto LABEL_29;
    }

    v13 = [self[20] objectForKey:v12];
    if (v13)
    {
      if (int64 == 11)
      {
        [v13 setInBytes:{xpc_dictionary_get_uint64(v7, "byte-count-inbound")}];
        [v13 setOutBytes:{xpc_dictionary_get_uint64(v7, "byte-count-outbound")}];
      }

      length = 0;
      data = xpc_dictionary_get_data(v7, "crypto-signature", &length);
      if (data && length)
      {
        v15 = data;
        v16 = objc_alloc(MEMORY[0x1E695DEF0]);
        v17 = [v16 initWithBytes:v15 length:length];
        [v13 setCrypto_signature:v17];
      }

      if (int64 != 11)
      {
        if (int64 == 9)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        v22 = ne_log_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = "in";
          if (int64 == 9)
          {
            v23 = "out";
          }

          *buf = 136315394;
          v26 = v23;
          v27 = 2112;
          v28 = v12;
          _os_log_debug_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_DEBUG, "Received finished %sbound data for %@", buf, 0x16u);
        }

        [(NEFilterDataExtensionProviderContext *)self handleDataCompleteForFlow:v13 direction:v21 reply:finishCopy controlSocket:-1 completionHandler:replyCopy];
        goto LABEL_28;
      }

      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v12;
        _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "Finished flow for %@", buf, 0xCu);
      }

      [(NEFilterDataExtensionProviderContext *)self closeChannelFlow:v13];
    }

    else
    {
      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v26 = v12;
        _os_log_debug_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEBUG, "Finished data message rejected, no flow found for %@", buf, 0xCu);
      }

      if (finishCopy)
      {
        xpc_dictionary_set_uuid(finishCopy, "flow-uuid", uuid);
        xpc_dictionary_set_int64(finishCopy, "error", 6);
      }
    }

    replyCopy[2](replyCopy);
LABEL_28:

LABEL_29:
  }
}

uint64_t __103__NEFilterDataExtensionProviderContext_handleChannelMessageStatsReport_filloutReply_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1BFAFC5E0](v4) == MEMORY[0x1E69E9E80])
  {
    uuid = xpc_dictionary_get_uuid(v5, "flow-uuid");
    if (uuid)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 160);
      }

      else
      {
        v9 = 0;
      }

      v10 = [v9 objectForKey:v7];
      if (v10)
      {
        [v10 setInBytes:{xpc_dictionary_get_uint64(v5, "byte-count-inbound")}];
        [v10 setOutBytes:{xpc_dictionary_get_uint64(v5, "byte-count-outbound")}];
        length = 0;
        *&buf.sa_len = 0;
        *&buf.sa_data[6] = 0;
        v16 = 0;
        v17 = 0;
        if (xpc_dictionary_get_data(v5, "local-addr", &length) && length <= 0x1C)
        {
          __memcpy_chk();
          [(NEFilterSocketFlow *)v10 setLocalAddress:?];
        }

        [(NEFilterDataExtensionProviderContext *)*(a1 + 32) reportFlowStats:v10];
      }

      else
      {
        v12 = ne_log_obj();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *&buf.sa_len = 138412290;
          *&buf.sa_data[2] = v7;
          _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "Channel Stats Report - no flow found for %@", &buf.sa_len, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *&buf.sa_len = 0;
        _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "Channel Stats Report - flow stats with no flow UUID", &buf.sa_len, 2u);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  return 1;
}

- (void)reportFlowStats:(void *)stats
{
  v3 = a2;
  v5 = v3;
  if (stats)
  {
    if (v3)
    {
      Property = objc_getProperty(v3, v4, 112, 1);
    }

    else
    {
      Property = 0;
    }

    v7 = Property;
    v8 = [v7 copy];

    if (v8)
    {
      [v8 setShouldReport:1];
      [(NEFilterDataExtensionProviderContext *)stats reportFlow:v5 forVerdict:v8 event:4];
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "No current verdict available, cannot report flow stats", v10, 2u);
      }
    }
  }
}

- (void)reportFlow:(void *)flow forVerdict:(uint64_t)verdict event:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  flowCopy = flow;
  v9 = flowCopy;
  if (self && flowCopy && [flowCopy shouldReport])
  {
    if (v7)
    {
      v7[12] = 1;
    }

    objc_opt_class();
    v10 = (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v9 statisticsReportFrequency] == 0;
    filterAction = [v9 filterAction];
    if (!v10 || filterAction)
    {
      v13 = [[NEFilterReport alloc] initWithFlow:v7 action:filterAction event:verdict];
      [self report:v13];
      if ((verdict - 3) <= 1 && ([v9 drop] & 1) == 0)
      {
        _principalObject = [self _principalObject];
        [_principalObject handleReport:v13];
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412546;
        v16 = v9;
        v17 = 2048;
        verdictCopy = verdict;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Failed to get an action for verdict (%@), cannot generate flow report with type %ld", &v15, 0x16u);
      }
    }
  }
}

- (void)closeChannelFlow:(id *)flow
{
  v3 = a2;
  [(NEFilterDataExtensionProviderContext *)flow reportFlowClosed:v3];
  if (v3)
  {
    objc_setProperty_atomic(v3, v4, 0, 144);
    v5 = flow[20];
    Property = objc_getProperty(v3, v6, 128, 1);
  }

  else
  {
    v5 = flow[20];
    Property = 0;
  }

  v8 = Property;

  [v5 removeObjectForKey:v8];
}

- (void)handleDataCompleteForFlow:(uint64_t)flow direction:(void *)direction reply:(int)reply controlSocket:(void *)socket completionHandler:
{
  v11 = a2;
  directionCopy = direction;
  socketCopy = socket;
  _principalObject = [self _principalObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__NEFilterDataExtensionProviderContext_handleDataCompleteForFlow_direction_reply_controlSocket_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7F07608;
  flowCopy = flow;
  v15 = v11;
  v31 = v15;
  selfCopy = self;
  v33 = _principalObject;
  v16 = _principalObject;
  v17 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __114__NEFilterDataExtensionProviderContext_handleDataCompleteForFlow_direction_reply_controlSocket_completionHandler___block_invoke_135;
  v23[3] = &unk_1E7F075B8;
  flowCopy2 = flow;
  v18 = v15;
  v24 = v18;
  v19 = directionCopy;
  replyCopy = reply;
  v25 = v19;
  selfCopy2 = self;
  v20 = socketCopy;
  v27 = v20;
  v21 = _Block_copy(v23);
  v22 = [[NEFilterDataSavedMessageHandler alloc] initWithGetVerdictBlock:v17 handleVerdictBlock:v21];
  [(NEFilterDataSavedMessageHandler *)v22 enqueueWithFlow:v18 context:self];
}

id __114__NEFilterDataExtensionProviderContext_handleDataCompleteForFlow_direction_reply_controlSocket_completionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 112, 1);
  }

  v5 = Property;
  v6 = v5;
  if (v3 == 2)
  {
    v7 = [v5 inboundPassOffset];
  }

  else
  {
    v7 = [v5 outboundPassOffset];
  }

  v8 = v7;

  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 56) == 2)
    {
      v23 = @"Inbound";
    }

    else
    {
      v23 = @"Outbound";
    }

    v24 = [*(a1 + 32) identifier];
    v26 = [v24 UUIDString];
    v27 = *(a1 + 32);
    if (v27)
    {
      v27 = objc_getProperty(v27, v25, 112, 1);
    }

    v28 = v27;
    v29 = 138413058;
    v30 = v23;
    v31 = 2112;
    v32 = v26;
    v33 = 2048;
    v34 = v8;
    v35 = 1024;
    v36 = [v28 shouldReport];
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "%@ handleDataCompleteForFlow - for flow %@ passOffset %llu shouldReport %d", &v29, 0x26u);
  }

  v11 = *(a1 + 56);
  if (v11 == 1)
  {
    [*(a1 + 32) setOutputComplete:1];
  }

  else if (v11 == 2)
  {
    [*(a1 + 32) setInputComplete:1];
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = objc_getProperty(v12, v10, 112, 1);
  }

  v13 = v12;
  if ([v13 shouldReport] && objc_msgSend(*(a1 + 32), "inputComplete"))
  {
    v14 = [*(a1 + 32) outputComplete];

    if (!v14)
    {
      goto LABEL_20;
    }

    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
    if (v17)
    {
      v18 = objc_getProperty(*(a1 + 32), v15, 112, 1);
    }

    else
    {
      v18 = 0;
    }

    v13 = v18;
    [(NEFilterDataExtensionProviderContext *)v16 reportFlow:v17 forVerdict:v13 event:3];
  }

LABEL_20:
  if (v8 == -1)
  {
    v21 = +[NEFilterDataVerdict allowVerdict];
  }

  else
  {
    v19 = *(a1 + 48);
    v20 = *(a1 + 32);
    if (*(a1 + 56) == 2)
    {
      [v19 handleInboundDataCompleteForFlow:v20];
    }

    else
    {
      [v19 handleOutboundDataCompleteForFlow:v20];
    }
    v21 = ;
  }

  return v21;
}

void __114__NEFilterDataExtensionProviderContext_handleDataCompleteForFlow_direction_reply_controlSocket_completionHandler___block_invoke_135(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 64) == 2)
      {
        v11 = @"Inbound";
      }

      else
      {
        v11 = @"Outbound";
      }

      v12 = [*(a1 + 32) identifierString];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ data complete verdict for flow %@: %@", &v13, 0x20u);
    }
  }

  if ([*(a1 + 32) createDataCompleteReply:*(a1 + 40) controlSocket:*(a1 + 72) direction:*(a1 + 64) verdict:v3 context:*(a1 + 48)])
  {
    [(NEFilterDataExtensionProviderContext *)*(a1 + 48) closeFlow:?];
  }

  if (v3)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    if (v7)
    {
      Property = objc_getProperty(*(a1 + 32), v5, 112, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    [(NEFilterDataExtensionProviderContext *)v6 reportFlow:v7 forVerdict:v3 absoluteVerdict:v9];
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (void)closeFlow:(id *)flow
{
  v6 = a2;
  if (flow)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NEFilterDataExtensionProviderContext *)flow closeBrowserFilterFlow:v6];
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v6;
      v4 = v3;
      if (v3)
      {
        v5 = v3[25];
        if (v5 == -1)
        {
          [(NEFilterDataExtensionProviderContext *)flow closeChannelFlow:v3];
          goto LABEL_9;
        }
      }

      else
      {
        v5 = 0;
      }

      [(NEFilterDataExtensionProviderContext *)flow closeSocketFlow:v3 socketID:v5];
LABEL_9:
    }
  }

LABEL_10:
}

- (void)reportFlow:(void *)flow forVerdict:(void *)verdict absoluteVerdict:
{
  v10 = a2;
  flowCopy = flow;
  verdictCopy = verdict;
  if (self && v10 && verdictCopy && [flowCopy shouldReport])
  {
    v9 = [verdictCopy copy];
    if (([v9 drop] & 1) != 0 || objc_msgSend(v9, "inboundPassOffset") == -1 && objc_msgSend(v9, "outboundPassOffset") == -1)
    {
      [v9 setShouldReport:1];
      [(NEFilterDataExtensionProviderContext *)self reportFlow:v10 forVerdict:v9 event:2];
    }
  }
}

- (void)closeBrowserFilterFlow:(uint64_t)flow
{
  if (flow)
  {
    v3 = a2;
    v5 = v3;
    if (v3)
    {
      objc_setProperty_atomic(v3, v4, 0, 144);
      v6 = *(flow + 144);
      Property = objc_getProperty(v5, v7, 128, 1);
    }

    else
    {
      v6 = *(flow + 144);
      Property = 0;
    }

    v9 = Property;

    [v6 removeObjectForKey:v9];
  }
}

- (void)closeSocketFlow:(uint64_t)flow socketID:
{
  [(NEFilterDataExtensionProviderContext *)self reportFlowClosed:a2];
  v5 = self[19];
  v6 = MEMORY[0x1E696AD98];
  v7 = v5;
  v8 = [v6 numberWithUnsignedLongLong:flow];
  [v7 removeObjectForKey:v8];
}

- (void)reportFlowClosed:(void *)closed
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = objc_getProperty(v3, v4, 112, 1);
    v7 = [v6 copy];

    if (v7)
    {
      [v7 setShouldReport:1];
      [(NEFilterDataExtensionProviderContext *)closed reportFlow:v5 forVerdict:v7 event:3];
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "No current verdict available, cannot report flow closed", v9, 2u);
      }
    }
  }
}

- (void)handleData:(uint64_t)data offset:(void *)offset forFlow:(uint64_t)flow direction:(void *)direction reply:(int)reply controlSocket:(void *)socket completionHandler:
{
  v14 = a2;
  offsetCopy = offset;
  directionCopy = direction;
  socketCopy = socket;
  queue = [self queue];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __114__NEFilterDataExtensionProviderContext_handleData_offset_forFlow_direction_reply_controlSocket_completionHandler___block_invoke;
  v24[3] = &unk_1E7F075E0;
  v24[4] = self;
  dataCopy = data;
  v19 = v14;
  v25 = v19;
  v20 = offsetCopy;
  v26 = v20;
  flowCopy = flow;
  v21 = directionCopy;
  v27 = v21;
  replyCopy = reply;
  v22 = socketCopy;
  v28 = v22;
  [(NEFilterFlow *)v20 updateSourceAppInfoWithQueue:queue completionHandler:v24];
}

void __114__NEFilterDataExtensionProviderContext_handleData_offset_forFlow_direction_reply_controlSocket_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _principalObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__NEFilterDataExtensionProviderContext_handleData_offset_forFlow_direction_reply_controlSocket_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E7F07590;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v23 = *(a1 + 72);
  aBlock[4] = v3;
  v20 = v4;
  v5 = *(a1 + 48);
  v24 = *(a1 + 80);
  v21 = v5;
  v22 = v2;
  v6 = v2;
  v7 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __114__NEFilterDataExtensionProviderContext_handleData_offset_forFlow_direction_reply_controlSocket_completionHandler___block_invoke_3;
  v12[3] = &unk_1E7F075B8;
  v17 = *(a1 + 80);
  v13 = *(a1 + 48);
  v8 = *(a1 + 56);
  v18 = *(a1 + 88);
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 64);
  v10 = _Block_copy(v12);
  v11 = [[NEFilterDataSavedMessageHandler alloc] initWithGetVerdictBlock:v7 handleVerdictBlock:v10];
  [(NEFilterDataSavedMessageHandler *)v11 enqueueWithFlow:*(a1 + 32) context:?];
}

id __114__NEFilterDataExtensionProviderContext_handleData_offset_forFlow_direction_reply_controlSocket_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  v6 = *(a1 + 40);
  v7 = v3;
  v9 = v7;
  if (!v2)
  {
    goto LABEL_14;
  }

  if (v7)
  {
    Property = objc_getProperty(v7, v8, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = v11;
  if (v4 == 2)
  {
    v13 = [v11 inboundPassOffset];
  }

  else
  {
    v13 = [v11 outboundPassOffset];
  }

  v14 = v13;

  v15 = v14 - v5;
  if (v14 <= v5)
  {
    v17 = v6;
LABEL_15:
    v14 = v5;
    goto LABEL_20;
  }

  if (v14 == -1)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v16 = v9;
  if ([v16 socketProtocol] != 17 && objc_msgSend(v16, "socketProtocol") != 6)
  {
    v18 = v15 + 4;
    if (v15 + 4 < [v6 length])
    {
      v19 = objc_alloc(MEMORY[0x1E695DF88]);
      v20 = [v6 subdataWithRange:{0, 4}];
      v17 = [v19 initWithData:v20];

      v21 = [v6 subdataWithRange:{v18, objc_msgSend(v6, "length") - v18}];
      [v17 appendData:v21];

      goto LABEL_19;
    }

LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  if (v15 >= [v6 length])
  {
    goto LABEL_18;
  }

  v17 = [v6 subdataWithRange:{v14 - v5, objc_msgSend(v6, "length") - v15}];
LABEL_19:

LABEL_20:
  if (v17)
  {
    v23 = *(a1 + 48);
    v22 = *(a1 + 56);
    if (*(a1 + 72) == 2)
    {
      [v22 handleInboundDataFromFlow:v23 readBytesStartOffset:v14 readBytes:v17];
    }

    else
    {
      [v22 handleOutboundDataFromFlow:v23 readBytesStartOffset:v14 readBytes:v17];
    }
    v24 = ;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

void __114__NEFilterDataExtensionProviderContext_handleData_offset_forFlow_direction_reply_controlSocket_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (*(a1 + 64) == 2)
      {
        v11 = @"Inbound";
      }

      else
      {
        v11 = @"Outbound";
      }

      v12 = [*(a1 + 32) identifierString];
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%@ data verdict for flow %@: %@", &v13, 0x20u);
    }
  }

  if ([*(a1 + 32) createDataReply:*(a1 + 40) controlSocket:*(a1 + 72) direction:*(a1 + 64) verdict:v3 context:*(a1 + 48)])
  {
    [(NEFilterDataExtensionProviderContext *)*(a1 + 48) closeFlow:?];
  }

  if (v3)
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 32);
    if (v7)
    {
      Property = objc_getProperty(*(a1 + 32), v5, 112, 1);
    }

    else
    {
      Property = 0;
    }

    v9 = Property;
    [(NEFilterDataExtensionProviderContext *)v6 reportFlow:v7 forVerdict:v3 absoluteVerdict:v9];
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))();
  }
}

- (void)handleNewFlow:(void *)flow reply:(int)reply controlSocket:(void *)socket completionHandler:
{
  v9 = a2;
  flowCopy = flow;
  socketCopy = socket;
  queue = [self queue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke;
  v16[3] = &unk_1E7F08BD0;
  v16[4] = self;
  v13 = v9;
  v17 = v13;
  v14 = flowCopy;
  v18 = v14;
  replyCopy = reply;
  v15 = socketCopy;
  v19 = v15;
  [(NEFilterFlow *)v13 updateSourceAppInfoWithQueue:queue completionHandler:v16];
}

void __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke_2;
  block[3] = &unk_1E7F08BD0;
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = *(a1 + 48);
  v12 = *(a1 + 64);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

void __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (nelog_is_debug_logging_enabled())
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v23 = v13;
      _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "Handling new flow: %@", buf, 0xCu);
    }
  }

  v3 = [*(a1 + 40) _principalObject];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke_127;
  aBlock[3] = &unk_1E7F07540;
  v20 = v3;
  v21 = *(a1 + 32);
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke_2_128;
  v15[3] = &unk_1E7F07568;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v18 = *(a1 + 64);
  v14 = *(a1 + 40);
  v8 = *(a1 + 56);
  *&v9 = v14;
  *(&v9 + 1) = v8;
  *&v10 = v6;
  *(&v10 + 1) = v7;
  v16 = v10;
  v17 = v9;
  v11 = _Block_copy(v15);
  v12 = [[NEFilterDataSavedMessageHandler alloc] initWithGetVerdictBlock:v5 handleVerdictBlock:v11];
  [(NEFilterDataSavedMessageHandler *)v12 enqueueWithFlow:*(a1 + 40) context:?];
}

void __92__NEFilterDataExtensionProviderContext_handleNewFlow_reply_controlSocket_completionHandler___block_invoke_2_128(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) identifier];
      v7 = [v6 UUIDString];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "New flow verdict for %@: %@", &v8, 0x16u);
    }
  }

  if ([*(a1 + 32) createNewFlowReply:*(a1 + 40) controlSocket:*(a1 + 64) verdict:v3 context:*(a1 + 48)])
  {
    [(NEFilterDataExtensionProviderContext *)*(a1 + 48) closeFlow:?];
  }

  if (v3)
  {
    [(NEFilterDataExtensionProviderContext *)*(a1 + 48) reportFlow:v3 forVerdict:1 event:?];
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __96__NEFilterDataExtensionProviderContext_handleRemediationMessage_filloutReply_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [*(a1 + 32) identifierString];
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Remediation verdict for %@: %@", &v6, 0x16u);
    }
  }

  [(NEFilterDataExtensionProviderContext *)*(a1 + 40) reportFlow:v3 forVerdict:1 event:?];
  if (v3 && ![v3 drop])
  {
    xpc_dictionary_set_uint64(*(a1 + 48), "verdict-pass", 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    xpc_dictionary_set_BOOL(*(a1 + 48), "verdict-drop", 1);
  }

  [(NEFilterDataExtensionProviderContext *)*(a1 + 40) closeBrowserFilterFlow:?];
  (*(*(a1 + 56) + 16))();
}

- (id)socketExceptions
{
  v2 = *(self + 168);
  if (!v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    v4 = *(self + 168);
    *(self + 168) = array;

    v2 = *(self + 168);
  }

  return v2;
}

- (void)updateFlow:(id)flow withVerdict:(id)verdict forDirection:(int64_t)direction
{
  flowCopy = flow;
  verdictCopy = verdict;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"Verdict argument must be a NEFilterDataVerdict";
    goto LABEL_10;
  }

  if (!verdictCopy)
  {
    if (([0 needRules] & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  if (verdictCopy[11] & 1) != 0 || ([verdictCopy needRules] & 1) != 0 || (verdictCopy[13])
  {
LABEL_9:
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = @"Verdict argument must be a allow, drop, or data verdict";
LABEL_10:
    v16 = [v13 exceptionWithName:v14 reason:v15 userInfo:0];
    objc_exception_throw(v16);
  }

LABEL_6:
  queue = [(NEFilterExtensionProviderContext *)self queue];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__NEFilterDataExtensionProviderContext_updateFlow_withVerdict_forDirection___block_invoke;
  v17[3] = &unk_1E7F07518;
  v17[4] = self;
  v18 = flowCopy;
  v19 = verdictCopy;
  directionCopy = direction;
  v11 = verdictCopy;
  v12 = flowCopy;
  dispatch_async(queue, v17);
}

void __76__NEFilterDataExtensionProviderContext_updateFlow_withVerdict_forDirection___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(NEFilterDataExtensionProviderContext *)*(a1 + 32) findFlowWithFlow:?];
  if (!v2)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v10 = [*(a1 + 40) identifierString];
    *buf = 138412290;
    v20 = v10;
    v11 = "Cannot update the verdict for flow %@ which does not exist";
LABEL_8:
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0xCu);

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v10 = [v2 identifierString];
    *buf = 138412290;
    v20 = v10;
    v11 = "Cannot update the verdict for flow %@ which is not a socket flow";
    goto LABEL_8;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__NEFilterDataExtensionProviderContext_updateFlow_withVerdict_forDirection___block_invoke_119;
  aBlock[3] = &unk_1E7F074C8;
  v18 = *(a1 + 48);
  v3 = _Block_copy(aBlock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__NEFilterDataExtensionProviderContext_updateFlow_withVerdict_forDirection___block_invoke_2;
  v12[3] = &unk_1E7F074F0;
  v4 = v2;
  v13 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v14 = v5;
  v15 = v6;
  v16 = *(a1 + 56);
  v7 = _Block_copy(v12);
  v8 = [[NEFilterDataSavedMessageHandler alloc] initWithGetVerdictBlock:v3 handleVerdictBlock:v7];
  [(NEFilterDataSavedMessageHandler *)v8 enqueueWithFlow:v4 context:*(a1 + 32)];

  v9 = v18;
LABEL_9:
}

- (id)findFlowWithFlow:(uint64_t)flow
{
  v3 = a2;
  if (!flow)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = v4;
    if (v4 && v4[25] == -1)
    {
      v8 = *(flow + 160);
      v10 = objc_getProperty(v5, v15, 128, 1);
    }

    else
    {
      v6 = *(flow + 152);
      v7 = MEMORY[0x1E696AD98];
      v8 = v6;
      if (v5)
      {
        v9 = v5[25];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v7 numberWithUnsignedLongLong:v9];
    }

    v12 = v10;
    v14 = [v8 objectForKeyedSubscript:v10];

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_16;
  }

  v12 = *(flow + 144);
  if (v3)
  {
    Property = objc_getProperty(v3, v11, 128, 1);
  }

  else
  {
    Property = 0;
  }

  v5 = Property;
  v14 = [v12 objectForKeyedSubscript:v5];
LABEL_15:

LABEL_16:

  return v14;
}

void __76__NEFilterDataExtensionProviderContext_updateFlow_withVerdict_forDirection___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nelog_is_debug_logging_enabled())
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v28 = [*(a1 + 32) identifierString];
      v29 = *(a1 + 40);
      v30 = 138412546;
      v31 = v28;
      v32 = 2112;
      v33 = v29;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Provider set data verdict for flow %@: %@", &v30, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (!v5 || v5[25] != -1)
  {
    v6 = *(a1 + 48);
    if (v6 && (v7 = *(v6 + 176)) != 0)
    {
      handle = dispatch_source_get_handle(v7);
      if ((handle & 0x80000000) == 0)
      {
        v10 = 0;
        goto LABEL_12;
      }

      v23 = ne_log_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }

      v24 = [*(a1 + 32) identifierString];
      v30 = 138412290;
      v31 = v24;
      v25 = "Failed to find control socket to update verdict for flow %@";
    }

    else
    {
      v23 = ne_log_obj();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_33;
      }

      v24 = [*(a1 + 32) identifierString];
      v30 = 138412290;
      v31 = v24;
      v25 = "Failed to find control socket source to update verdict for flow %@";
    }

    _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v25, &v30, 0xCu);

    goto LABEL_33;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  v5 = *(a1 + 32);
  handle = 0xFFFFFFFFLL;
LABEL_12:
  if (v5)
  {
    Property = objc_getProperty(v5, v8, 112, 1);
  }

  else
  {
    Property = 0;
  }

  v12 = Property;

  if (!v12)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 32) identifierString];
      v30 = 138412290;
      v31 = v26;
      v27 = "Cannot update the verdict for flow %@ because a NEFilterNewFlowVerdict has not yet been provided for this flow";
LABEL_38:
      _os_log_error_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_ERROR, v27, &v30, 0xCu);
    }

LABEL_34:

    goto LABEL_35;
  }

  v14 = [*(a1 + 32) createDataReply:v10 controlSocket:handle direction:*(a1 + 56) verdict:v3 context:*(a1 + 48)];
  if (!v10)
  {
    goto LABEL_22;
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    v15 = objc_getProperty(v15, v13, 144, 1);
  }

  v16 = v15;

  if (!v16)
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [*(a1 + 32) identifierString];
      v30 = 138412290;
      v31 = v26;
      v27 = "Flow %@ does not have a connection to update its verdict";
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v18 = objc_getProperty(v18, v17, 144, 1);
  }

  v19 = v18;
  xpc_connection_send_message(v19, v10);

LABEL_22:
  if (v14)
  {
    [(NEFilterDataExtensionProviderContext *)*(a1 + 48) closeFlow:?];
  }

  if (v3)
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 32);
    if (v21)
    {
      v22 = objc_getProperty(v21, v13, 112, 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    [(NEFilterDataExtensionProviderContext *)v20 reportFlow:v21 forVerdict:v3 absoluteVerdict:v23];
    goto LABEL_34;
  }

LABEL_35:
}

- (void)resumeFlow:(id)flow withVerdict:(id)verdict
{
  flowCopy = flow;
  verdictCopy = verdict;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = @"Verdict argument must be a NEFilterDataVerdict or a NEFilterNewFlowVerdict";
LABEL_8:
      v14 = [v11 exceptionWithName:v12 reason:v13 userInfo:0];
      objc_exception_throw(v14);
    }
  }

  if (verdictCopy && (verdictCopy[13] & 1) != 0)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D940];
    v13 = @"Verdict argument cannot be a pause verdict";
    goto LABEL_8;
  }

  queue = [(NEFilterExtensionProviderContext *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__NEFilterDataExtensionProviderContext_resumeFlow_withVerdict___block_invoke;
  block[3] = &unk_1E7F0A7B0;
  block[4] = self;
  v16 = flowCopy;
  v17 = verdictCopy;
  v9 = verdictCopy;
  v10 = flowCopy;
  dispatch_async(queue, block);
}

void __63__NEFilterDataExtensionProviderContext_resumeFlow_withVerdict___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [(NEFilterDataExtensionProviderContext *)*(a1 + 32) findFlowWithFlow:?];
  v4 = v2;
  if (!v2)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [*(a1 + 40) identifierString];
      v25 = 138412290;
      v26 = v21;
      _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring resume command for flow %@ which does not exist", &v25, 0xCu);
    }

    goto LABEL_15;
  }

  if (v2[11])
  {
    v5 = objc_getProperty(v2, v3, 136, 1);
    v6 = [v5 count];

    if (v6)
    {
      v4[11] = 0;
      v8 = objc_getProperty(v4, v7, 136, 1);
      v9 = [v8 firstObject];

      v11 = objc_getProperty(v4, v10, 136, 1);
      [v11 removeObjectAtIndex:0];

      [(NEFilterDataSavedMessageHandler *)v9 executeVerdictHandlerWithFlow:v4 verdict:*(a1 + 48) context:*(a1 + 32)];
      while ((v4[11] & 1) == 0)
      {
        v13 = objc_getProperty(v4, v12, 136, 1);
        v14 = [v13 count];

        if (!v14)
        {
          break;
        }

        v15 = objc_getProperty(v4, v12, 136, 1);
        v16 = [v15 firstObject];

        v18 = objc_getProperty(v4, v17, 136, 1);
        [v18 removeObjectAtIndex:0];

        [(NEFilterDataSavedMessageHandler *)v16 executeWithFlow:v4 context:*(a1 + 32)];
        v9 = v16;
      }

      v22 = objc_getProperty(v4, v12, 136, 1);
      v23 = [v22 count];

      if (!v23)
      {
        objc_setProperty_atomic(v4, v24, 0, 136);
      }

LABEL_15:

      goto LABEL_16;
    }
  }

  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v4 identifierString];
    v25 = 138412290;
    v26 = v20;
    _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring resume command for flow %@ which is not paused", &v25, 0xCu);
  }

LABEL_16:
}

- (void)applySettings:(id)settings completionHandler:(id)handler
{
  handlerCopy = handler;
  settingsCopy = settings;
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext applySettings:settingsCopy completionHandler:handlerCopy];
}

- (void)sendSocketContentFilterRequest
{
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext sendSocketContentFilterRequest];
}

- (void)sendBrowserContentFilterServerRequest
{
  hostContext = [(NEExtensionProviderContext *)self hostContext];
  [hostContext sendBrowserContentFilterServerRequest];
}

- (void)provideURLAppendStringMap:(id)map
{
  mapCopy = map;
  queue = [(NEFilterExtensionProviderContext *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__NEFilterDataExtensionProviderContext_provideURLAppendStringMap___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_async(queue, v7);
}

- (void)provideRemediationMap:(id)map
{
  mapCopy = map;
  queue = [(NEFilterExtensionProviderContext *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__NEFilterDataExtensionProviderContext_provideRemediationMap___block_invoke;
  v7[3] = &unk_1E7F0A0E8;
  v7[4] = self;
  v8 = mapCopy;
  v6 = mapCopy;
  dispatch_async(queue, v7);
}

- (void)handleRulesChanged
{
  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  [_principalObject handleRulesChanged];
}

- (void)fetchProviderConnectionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!self || !self->_clientListener)
  {
    queue = [(NEFilterExtensionProviderContext *)self queue];
    v6 = xpc_connection_create(0, queue);
    v7 = v6;
    if (self)
    {
      objc_storeStrong(&self->_clientListener, v6);

      clientListener = self->_clientListener;
    }

    else
    {

      clientListener = 0;
    }

    v9 = xpc_endpoint_create(clientListener);
    v10 = objc_alloc_init(MEMORY[0x1E696B0E0]);
    v11 = v10;
    if (self)
    {
      objc_storeStrong(&self->_listenerEndpoint, v10);

      [(NSXPCListenerEndpoint *)self->_listenerEndpoint _setEndpoint:v9];
      v12 = self->_clientListener;
    }

    else
    {

      [0 _setEndpoint:v9];
      v12 = 0;
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __85__NEFilterDataExtensionProviderContext_fetchProviderConnectionWithCompletionHandler___block_invoke;
    handler[3] = &unk_1E7F0AF98;
    handler[4] = self;
    xpc_connection_set_event_handler(v12, handler);
    if (!self)
    {
      xpc_connection_resume(0);

      listenerEndpoint = 0;
      goto LABEL_10;
    }

    xpc_connection_resume(self->_clientListener);
  }

  listenerEndpoint = self->_listenerEndpoint;
LABEL_10:
  handlerCopy[2](handlerCopy, listenerEndpoint);
}

void __85__NEFilterDataExtensionProviderContext_fetchProviderConnectionWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = MEMORY[0x1BFAFC5E0]() == MEMORY[0x1E69E9E68];
    v3 = v9;
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = v9;
      if (v5)
      {
        if (([v5[23] containsObject:v6] & 1) == 0)
        {
          [v5[23] addObject:v6];
        }

        v7 = [v5 queue];
        xpc_connection_set_target_queue(v6, v7);

        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __66__NEFilterDataExtensionProviderContext_acceptNewClientConnection___block_invoke;
        handler[3] = &unk_1E7F08E20;
        handler[4] = v5;
        v8 = v6;
        v11 = v8;
        xpc_connection_set_event_handler(v8, handler);
        xpc_connection_resume(v8);
      }

      v3 = v9;
    }
  }
}

void __66__NEFilterDataExtensionProviderContext_acceptNewClientConnection___block_invoke(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E80])
  {
    reply = xpc_dictionary_create_reply(v4);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __66__NEFilterDataExtensionProviderContext_acceptNewClientConnection___block_invoke_2;
    v29[3] = &unk_1E7F0A0E8;
    v30 = reply;
    v28 = *(a1 + 32);
    v31 = *(a1 + 40);
    v6 = reply;
    [v28 handleClientMessage:v4 filloutReply:v6 completionHandler:v29];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v5)
    {
      [v5[18] allValues];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v39 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v8)
      {
        v10 = v8;
        v11 = *v37;
        do
        {
          v12 = 0;
          do
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v36 + 1) + 8 * v12);
            if (v13)
            {
              Property = objc_getProperty(*(*(&v36 + 1) + 8 * v12), v9, 144, 1);
            }

            else
            {
              Property = 0;
            }

            v15 = Property;

            if (v15 == v6)
            {
              [(NEFilterDataExtensionProviderContext *)v5 closeBrowserFilterFlow:v13];
            }

            ++v12;
          }

          while (v10 != v12);
          v16 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
          v10 = v16;
        }

        while (v16);
      }

      [v5[20] allValues];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v17 = v35 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v18)
      {
        v20 = v18;
        v21 = *v33;
        do
        {
          v22 = 0;
          do
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v32 + 1) + 8 * v22);
            if (v23)
            {
              v24 = objc_getProperty(*(*(&v32 + 1) + 8 * v22), v19, 144, 1);
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            if (v25 == v6)
            {
              [(NEFilterDataExtensionProviderContext *)v5 closeChannelFlow:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v26 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
          v20 = v26;
        }

        while (v26);
      }

      if ([v5[23] containsObject:v6])
      {
        [v5[23] removeObject:v6];
      }

      xpc_connection_cancel(v6);
    }
  }
}

void __66__NEFilterDataExtensionProviderContext_acceptNewClientConnection___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_connection_send_message(*(a1 + 40), v1);
  }
}

- (void)providerControlSocketFileHandle:(id)handle
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = dup([handle fileDescriptor]);
  if (self)
  {
    v5 = v4;
    if (v4 < 0)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        LODWORD(handler[0]) = 67109120;
        HIDWORD(handler[0]) = v5;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "Invalid controlSocket value: %d", handler, 8u);
      }
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      socketFlows = self->_socketFlows;
      self->_socketFlows = dictionary;

      queue = [(NEFilterExtensionProviderContext *)self queue];
      v9 = dispatch_source_create(MEMORY[0x1E69E96F8], v5, 0, queue);

      if (!v9)
      {
        return;
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __75__NEFilterDataExtensionProviderContext_setupSocketSourceWithControlSocket___block_invoke;
      handler[3] = &unk_1E7F0A0E8;
      v10 = v9;
      v18 = v10;
      selfCopy = self;
      dispatch_source_set_cancel_handler(v10, handler);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __75__NEFilterDataExtensionProviderContext_setupSocketSourceWithControlSocket___block_invoke_124;
      v14[3] = &unk_1E7F0A0E8;
      v11 = v10;
      v15 = v11;
      selfCopy2 = self;
      dispatch_source_set_event_handler(v11, v14);
      dispatch_resume(v11);
      source = self->_source;
      self->_source = v11;
      v13 = v11;
    }
  }
}

void __75__NEFilterDataExtensionProviderContext_setupSocketSourceWithControlSocket___block_invoke(uint64_t a1)
{
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_INFO, "socket source cancel handler called", v5, 2u);
  }

  handle = dispatch_source_get_handle(*(a1 + 32));
  close(handle);
  v4 = *(a1 + 40);
  if (v4)
  {
    objc_storeStrong((v4 + 176), 0);
  }
}

void __75__NEFilterDataExtensionProviderContext_setupSocketSourceWithControlSocket___block_invoke_124(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v115 = *MEMORY[0x1E69E9840];
  handle = dispatch_source_get_handle(*(v1 + 32));
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = handle;
    v104 = 4;
    size = 0;
    if (getsockopt(handle, 0xFFFF, 4128, &size, &v104))
    {
      v5 = ne_log_obj();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
LABEL_4:

LABEL_5:
        v6 = 0;
LABEL_6:

        return;
      }

      v30 = __error();
      v31 = strerror(*v30);
      *v113 = 136315138;
      v114 = v31;
      v32 = "Could not get packet size. Received error: %s";
      v33 = v113;
      v34 = v5;
      v35 = 12;
LABEL_42:
      _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, v32, v33, v35);
      goto LABEL_4;
    }

    v7 = size;
    if (size < 10241)
    {
      v11 = v113;
      v12 = 10240;
    }

    else
    {
      if (size > 0x20000)
      {
        while (1)
        {
          v8 = v7 >= 10240 ? 10240 : v7;
          v9 = recv(v4, v113, v8, 0);
          if (!v9)
          {
            break;
          }

          if (v9 == -1)
          {
            v37 = ne_log_obj();
            if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_49;
            }

            v38 = __error();
            v39 = strerror(*v38);
            *buf = 136315138;
            *&buf[4] = v39;
            v40 = "data purge: recv() failed: %s";
            v41 = v37;
            v42 = 12;
            goto LABEL_105;
          }

          v10 = v9 >= v7 || v7 - v9 <= 0;
          LODWORD(v7) = v7 - v9;
          if (v10)
          {
            goto LABEL_50;
          }
        }

        v37 = ne_log_obj();
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        *buf = 0;
        v40 = "data purge: no data to read";
        v41 = v37;
        v42 = 2;
LABEL_105:
        _os_log_error_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_ERROR, v40, buf, v42);
LABEL_49:

LABEL_50:
        v5 = ne_log_obj();
        if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_4;
        }

        *buf = 67109120;
        *&buf[4] = size;
        v32 = "Received data too large, %d bytes from kernel content filter";
        v33 = buf;
        v34 = v5;
        v35 = 8;
        goto LABEL_42;
      }

      v11 = malloc_type_malloc(size, 0x100004077774924uLL);
      v12 = v7;
      if (!v11)
      {
        v36 = ne_log_obj();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v7;
          _os_log_error_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_ERROR, "Failed to alloc large receive buffer of size %d", buf, 8u);
        }

        goto LABEL_5;
      }
    }

    v13 = recv(v4, v11, v12, 0);
    if (v13 == -1)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = __error();
        v18 = strerror(*v17);
        *buf = 136315138;
        *&buf[4] = v18;
        v16 = "recv() failed: %s";
        v19 = v14;
        v20 = 12;
LABEL_36:
        _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, v16, buf, v20);
        goto LABEL_37;
      }

      goto LABEL_37;
    }

    if (*v11 <= 0x17)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *v11;
        *buf = 67109120;
        *&buf[4] = v15;
        v16 = "Received message of invalid length %d from kernel content filter";
LABEL_35:
        v19 = v14;
        v20 = 8;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v11[2] != 1)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v29 = v11[2];
        *buf = 67109120;
        *&buf[4] = v29;
        v16 = "Received unexpected message of type %d from kernel content filter";
        goto LABEL_35;
      }

LABEL_37:

      v6 = 0;
      goto LABEL_38;
    }

    v21 = v13;
    v22 = *(v11 + 2);
    v23 = MEMORY[0x1E696AD98];
    v24 = *(v3 + 152);
    v25 = [v23 numberWithUnsignedLongLong:v22];
    v6 = [v24 objectForKey:v25];

    v26 = [(NEFilterDataExtensionProviderContext *)v3 socketExceptions];
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v22];
    v28 = [v26 containsObject:v27];

    if (v28)
    {
      [NEFilterSocketFlow writeMessageWithControlSocket:v4 drop:0 socketID:v22 inboundPassOffset:-1 inboundPeekOffset:0 outboundPassOffset:-1 outboundPeekOffset:0 statsReportFrequency:0];
LABEL_32:
      [(NEFilterDataExtensionProviderContext *)v3 closeSocketFlow:v6 socketID:v22];
      goto LABEL_38;
    }

    v43 = v11[3];
    if (v43 > 4)
    {
      if ((v43 - 5) < 2)
      {
        if (v6)
        {
          if (v43 == 5)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }

          [(NEFilterDataExtensionProviderContext *)v3 handleDataCompleteForFlow:v6 direction:v45 reply:0 controlSocket:v4 completionHandler:0];
LABEL_38:
          if (v7 >= 10241 && v11)
          {
            free(v11);
          }

          goto LABEL_6;
        }

        v14 = ne_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        v74 = "Inbound";
        if (v43 == 5)
        {
          v74 = "Outbound";
        }

        *buf = 136315394;
        *&buf[4] = v74;
        *&buf[12] = 2048;
        *&buf[14] = v22;
        v73 = "%s disconnect message rejected, no flow found for sockid %llu";
        v75 = v14;
        v76 = 22;
LABEL_124:
        _os_log_debug_impl(&dword_1BA83C000, v75, OS_LOG_TYPE_DEBUG, v73, buf, v76);
        goto LABEL_37;
      }

      if (v43 == 7)
      {
        v56 = ne_log_obj();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          *&buf[4] = v21;
          _os_log_debug_impl(&dword_1BA83C000, v56, OS_LOG_TYPE_DEBUG, "Socket Stats Report - Received stats report size %zd", buf, 0xCu);
        }

        if (v21 > 31)
        {
          v77 = v11[6];
          v78 = ne_log_obj();
          v79 = v78;
          if (!v77)
          {
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_1BA83C000, v79, OS_LOG_TYPE_ERROR, "Socket Stats Report - Received 0 flow stats in stats report", buf, 2u);
            }

            goto LABEL_38;
          }

          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109120;
            *&buf[4] = v77;
            _os_log_debug_impl(&dword_1BA83C000, v79, OS_LOG_TYPE_DEBUG, "Socket Stats Report - Received stats report for %d flows", buf, 8u);
          }

          v80 = 56 * v77 + 32;
          if (v80 <= v21 && *v11 >= v80)
          {
            if (v77 >= 1)
            {
              v90 = (v11 + 14);
              do
              {
                v91 = *&v90[-2].sa_data[6];
                if (v91)
                {
                  v92 = MEMORY[0x1E696AD98];
                  v93 = *(v3 + 152);
                  v94 = [v92 numberWithUnsignedLongLong:v91];
                  v95 = [v93 objectForKey:v94];

                  if (v95)
                  {
                    [v95 setInBytes:*&v90[-1].sa_len];
                    [v95 setOutBytes:*&v90[-1].sa_data[6]];
                    [(NEFilterSocketFlow *)v95 setLocalAddress:v90];
                    if (nelog_is_debug_logging_enabled())
                    {
                      v96 = ne_log_obj();
                      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        *&buf[4] = v95;
                        _os_log_debug_impl(&dword_1BA83C000, v96, OS_LOG_TYPE_DEBUG, "Socket Stats Report - flow stats updated for %@", buf, 0xCu);
                      }
                    }

                    [(NEFilterDataExtensionProviderContext *)v3 reportFlowStats:v95];
                  }

                  else
                  {
                    v97 = ne_log_obj();
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134217984;
                      *&buf[4] = v91;
                      _os_log_debug_impl(&dword_1BA83C000, v97, OS_LOG_TYPE_DEBUG, "Socket Stats Report - No flow found for sockID %llu", buf, 0xCu);
                    }
                  }
                }

                v90 = (v90 + 56);
                --v77;
              }

              while (v77);
            }

            goto LABEL_38;
          }

          v57 = ne_log_obj();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_87;
          }

          v81 = *v11;
          *buf = 134218496;
          *&buf[4] = v21;
          *&buf[12] = 1024;
          *&buf[14] = v81;
          *&buf[18] = 1024;
          *&buf[20] = 56 * v77 + 32;
          v58 = "Socket Stats Report - Received wrong msg size in stats report: bytesRead %zd msg_len %d - expected size %d";
          v59 = v57;
          v60 = 24;
        }

        else
        {
          v57 = ne_log_obj();
          if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
LABEL_87:

            goto LABEL_38;
          }

          *buf = 134217984;
          *&buf[4] = v21;
          v58 = "Socket Stats Report - Received msg size is too small (%zd) for stats report";
          v59 = v57;
          v60 = 12;
        }

LABEL_159:
        _os_log_error_impl(&dword_1BA83C000, v59, OS_LOG_TYPE_ERROR, v58, buf, v60);
        goto LABEL_87;
      }
    }

    else
    {
      if ((v43 - 3) < 2)
      {
        if (v6)
        {
          if (v43 == 3)
          {
            v46 = (v11 + 6);
          }

          else
          {
            v46 = (v11 + 13);
          }

          if (v43 == 3)
          {
            v47 = (v11 + 13);
          }

          else
          {
            v47 = (v11 + 6);
          }

          [(NEFilterSocketFlow *)v6 setLocalAddress:v46];
          [(NEFilterSocketFlow *)v6 setRemoteAddress:v47];
          if (v11[32])
          {
            v48 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + 24 length:v11[32]];
            [v6 setCrypto_signature:v48];
          }

          v50 = *(v11 + 10);
          v49 = *(v11 + 11);
          v51 = v49 - v50;
          if (v49 <= v50)
          {
            v54 = ne_log_obj();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              if (v11[3] == 3)
              {
                v99 = "OUT";
              }

              else
              {
                v99 = "IN";
              }

              *buf = 136315138;
              *&buf[4] = v99;
              _os_log_error_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_ERROR, "Received invalid DATA %s message", buf, 0xCu);
            }

            v55 = v11;
          }

          else
          {
            v52 = v11 + 44;
            if ([v6 socketProtocol] != 17 && objc_msgSend(v6, "socketProtocol") != 6)
            {
              v11[43] = v11[33] & 1;
              v52 = v11 + 43;
              v51 += 4;
            }

            v53 = objc_alloc(MEMORY[0x1E695DEF0]);
            if (v7 < 10241)
            {
              v54 = [v53 initWithBytes:v52 length:v51];
              v55 = v11;
            }

            else
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __74__NEFilterDataExtensionProviderContext_handleSocketSourceEventWithSocket___block_invoke;
              v111 = &__block_descriptor_40_e12_v24__0_v8Q16l;
              v112 = v11;
              v54 = [v53 initWithBytesNoCopy:v52 length:v51 deallocator:buf];
              v55 = 0;
            }

            if (v11[3] == 3)
            {
              v82 = 1;
            }

            else
            {
              v82 = 2;
            }

            v83 = *(v11 + 10);
            if ([v6 epid] != v11[34])
            {
              v102 = v83;
              v103 = v82;
              [v6 setEpid:?];
              [v6 setPid:v11[34]];
              v84 = +[NEProcessInfo copyUUIDsForPID:](NEProcessInfo, "copyUUIDsForPID:", [v6 epid]);
              v85 = v84;
              if (v84 && [v84 count])
              {
                v86 = [v85 firstObject];
                [v6 setUuid:v86];
                [v6 setEuuid:v86];
              }

              [v6 pid];
              v87 = NECopySigningIdentifierForPIDwithAuditToken();
              if (v87)
              {
                [v6 setSourceAppIdentifier:v87];
                v88 = ne_log_obj();
                if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                {
                  v101 = [v6 sourceAppIdentifier];
                  v100 = [v6 pid];
                  size_4 = 138412546;
                  v107 = v101;
                  v108 = 1024;
                  v109 = v100;
                  _os_log_debug_impl(&dword_1BA83C000, v88, OS_LOG_TYPE_DEBUG, "Updating bundleID %@ for pid %d", &size_4, 0x12u);
                }
              }

              v89 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + 35 length:32];
              [v6 setSourceAppAuditToken:v89];

              v82 = v103;
              v83 = v102;
            }

            [(NEFilterDataExtensionProviderContext *)v3 handleData:v54 offset:v83 forFlow:v6 direction:v82 reply:0 controlSocket:v4 completionHandler:0];
          }

          v11 = v55;
          goto LABEL_38;
        }

        v14 = ne_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        *buf = 134217984;
        *&buf[4] = v22;
        v73 = "Data message rejected, no flow found for sockid %llu";
LABEL_123:
        v75 = v14;
        v76 = 12;
        goto LABEL_124;
      }

      if (v43 == 1)
      {
        [(NEFilterDataExtensionProviderContext *)v3 closeSocketFlow:v6 socketID:v22];
        v61 = [[NEFilterSocketFlow alloc] initWithSocketFamily:v11[7] socketType:v11[8] socketProtocol:v11[10] pid:v11[11] epid:(v11 + 13) uuid:(v11 + 17) euuid:v22 socketID:?];
        [v61 setRpid:v11[12]];
        v62 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v11 + 21];
        [v61 setRuuid:v62];

        if (v61)
        {
          if (v11[39] == 1)
          {
            v63 = 2;
          }

          else
          {
            v63 = 1;
          }

          if (v11[39] == 1)
          {
            v64 = (v11 + 25);
          }

          else
          {
            v64 = (v11 + 32);
          }

          if (v11[39] == 1)
          {
            v65 = (v11 + 32);
          }

          else
          {
            v65 = (v11 + 25);
          }

          [v61 setDirection:v63];
          [(NEFilterSocketFlow *)v61 setLocalAddress:v64];
          [(NEFilterSocketFlow *)v61 setRemoteAddress:v65];
          v66 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + 40 length:32];
          [v61 setSourceAppAuditToken:v66];

          v67 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + 48 length:32];
          [v61 setSourceProcessAuditToken:v67];

          if (*(v11 + 260))
          {
            v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v11 + 65 encoding:4];
            [v61 setRemoteHostname:v68];
          }

          if (v11[64])
          {
            v69 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + 56 length:v11[64]];
            [v61 setCrypto_signature:v69];
          }

          v70 = MEMORY[0x1E696AD98];
          v71 = *(v3 + 152);
          v72 = [v70 numberWithUnsignedLongLong:v22];
          [v71 setObject:v61 forKey:v72];

          [(NEFilterDataExtensionProviderContext *)v3 handleNewFlow:v61 reply:0 controlSocket:v4 completionHandler:0];
        }

        goto LABEL_38;
      }

      if (v43 == 2)
      {
        if (v6)
        {
          [v6 setInBytes:*(v11 + 10)];
          [v6 setOutBytes:*(v11 + 11)];
          [(NEFilterSocketFlow *)v6 setLocalAddress:?];
          if (v11[39])
          {
            v44 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + 31 length:v11[39]];
            [v6 setCrypto_signature:v44];
          }

          goto LABEL_32;
        }

        v14 = ne_log_obj();
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        *buf = 134217984;
        *&buf[4] = v22;
        v73 = "Closed message rejected, no flow found for sockid %llu";
        goto LABEL_123;
      }
    }

    v57 = ne_log_obj();
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_87;
    }

    v98 = v11[3];
    *buf = 67109120;
    *&buf[4] = v98;
    v58 = "Received unexpected message operation %d from kernel content filter";
    v59 = v57;
    v60 = 8;
    goto LABEL_159;
  }
}

- (void)stopWithReason:(int)reason
{
  queue = [(NEFilterExtensionProviderContext *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__NEFilterDataExtensionProviderContext_stopWithReason___block_invoke;
  v6[3] = &unk_1E7F086C0;
  v6[4] = self;
  reasonCopy = reason;
  dispatch_async(queue, v6);
}

void __55__NEFilterDataExtensionProviderContext_stopWithReason___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 144);
  }

  else
  {
    v3 = 0;
  }

  [v3 allValues];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = v47 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        if (v10)
        {
          objc_setProperty_atomic(v10, v6, 0, 144);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 144);
  }

  else
  {
    v12 = 0;
  }

  [v12 removeAllObjects];
  v13 = *(a1 + 32);
  if (v13)
  {
    v14 = *(v13 + 160);
  }

  else
  {
    v14 = 0;
  }

  [v14 allValues];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v43 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v41;
    do
    {
      v20 = 0;
      do
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v40 + 1) + 8 * v20);
        if (v21)
        {
          objc_setProperty_atomic(v21, v17, 0, 144);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v15 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v18);
  }

  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *(v22 + 160);
  }

  else
  {
    v23 = 0;
  }

  [v23 removeAllObjects];
  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = *(v24 + 152);
  }

  else
  {
    v25 = 0;
  }

  [v25 removeAllObjects];
  v26 = *(a1 + 32);
  if (v26)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v27 = *(v26 + 184);
    v28 = [v27 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v49;
      do
      {
        v31 = 0;
        do
        {
          if (*v49 != v30)
          {
            objc_enumerationMutation(v27);
          }

          xpc_connection_cancel(*(*(&v48 + 1) + 8 * v31++));
        }

        while (v29 != v31);
        v29 = [v27 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v29);
    }

    [*(v26 + 184) removeAllObjects];
    v32 = *(v26 + 128);
    if (v32)
    {
      xpc_connection_cancel(v32);
      v33 = *(v26 + 128);
      *(v26 + 128) = 0;
    }

    v34 = *(a1 + 32);
    if (v34)
    {
      v35 = *(v34 + 176);
      if (v35)
      {
        dispatch_source_cancel(v35);
      }
    }
  }

  v36 = +[NEAppInfoCache sharedAppInfoCache];
  v37 = v36;
  if (v36)
  {
    objc_storeWeak((v36 + 8), 0);
  }

  v38 = *(a1 + 40);
  v39.receiver = *(a1 + 32);
  v39.super_class = NEFilterDataExtensionProviderContext;
  objc_msgSendSuper2(&v39, sel_stopWithReason_, v38);
}

- (void)startFilterWithOptions:(id)options completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (self)
  {
    if (optionsCopy)
    {
      v8 = optionsCopy[11];
    }

    else
    {
      v8 = 0;
    }

    self->_controlProviderExists = v8 & 1;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    objc_storeStrong(&self->_pendingConnections, array);
  }

  dictionary = [MEMORY[0x1E695DF20] dictionary];
  if (self)
  {
    objc_storeStrong(&self->_remediationMap, dictionary);
  }

  dictionary2 = [MEMORY[0x1E695DF20] dictionary];
  if (self)
  {
    objc_storeStrong(&self->_URLAppendStringMap, dictionary2);
  }

  v12 = +[NEAppInfoCache sharedAppInfoCache];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak((v12 + 8), self);
  }

  _principalObject = [(NEExtensionProviderContext *)self _principalObject];
  v19.receiver = self;
  v19.super_class = NEFilterDataExtensionProviderContext;
  [(NEFilterExtensionProviderContext *)&v19 startFilterWithOptions:optionsCopy completionHandler:handlerCopy];
  objc_initWeak(&location, self);
  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEFAULT, "%@: Calling startFilterWithCompletionHandler", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__NEFilterDataExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke;
  v16[3] = &unk_1E7F0A2A0;
  objc_copyWeak(&v17, &location);
  [_principalObject startFilterWithCompletionHandler:v16];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __81__NEFilterDataExtensionProviderContext_startFilterWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[41])
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "The completion handler for startFilterWithOptions was executed twice", v7, 2u);
      }
    }

    else
    {
      WeakRetained[41] = 1;
      if (!v3)
      {
        [WeakRetained sendBrowserContentFilterServerRequest];
        [v5 sendSocketContentFilterRequest];
      }

      [v5 startedWithError:v3];
    }
  }
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (_extensionAuxiliaryHostProtocol_protocolInit_4176 != -1)
  {
    dispatch_once(&_extensionAuxiliaryHostProtocol_protocolInit_4176, &__block_literal_global_75_4177);
  }

  v3 = _extensionAuxiliaryHostProtocol_protocol_4178;

  return v3;
}

uint64_t __71__NEFilterDataExtensionProviderContext__extensionAuxiliaryHostProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2A60];
  v1 = _extensionAuxiliaryHostProtocol_protocol_4178;
  _extensionAuxiliaryHostProtocol_protocol_4178 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (_extensionAuxiliaryVendorProtocol_protocolInit_4181 != -1)
  {
    dispatch_once(&_extensionAuxiliaryVendorProtocol_protocolInit_4181, &__block_literal_global_4182);
  }

  v3 = _extensionAuxiliaryVendorProtocol_protocol_4183;

  return v3;
}

uint64_t __73__NEFilterDataExtensionProviderContext__extensionAuxiliaryVendorProtocol__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C2910];
  v1 = _extensionAuxiliaryVendorProtocol_protocol_4183;
  _extensionAuxiliaryVendorProtocol_protocol_4183 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end