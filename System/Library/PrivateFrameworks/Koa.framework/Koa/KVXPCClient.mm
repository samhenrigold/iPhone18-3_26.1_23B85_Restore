@interface KVXPCClient
+ (void)initialize;
- (KVXPCClient)init;
- (KVXPCClient)initWithServiceProtocol:(id)protocol machServiceName:(id)name clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode;
- (id)_errorHandlerWithCompletion:(id)completion;
- (id)_failureHandlerWithResponse:(unsigned __int16)response;
- (id)_remoteObjectProxy:(BOOL)proxy errorCompletion:(id)completion;
- (void)dealloc;
- (void)serviceArrayRespondingRequestWithCompletion:(id)completion usingBlock:(id)block;
- (void)serviceOptionsRespondingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block;
- (void)serviceRequest:(BOOL)request completion:(id)completion usingBlock:(id)block;
- (void)serviceVersionRespondingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block;
@end

@implementation KVXPCClient

- (id)_remoteObjectProxy:(BOOL)proxy errorCompletion:(id)completion
{
  proxyCopy = proxy;
  completionCopy = completion;
  v11 = objc_msgSend__errorHandlerWithCompletion_(self, v7, completionCopy, v8, v9, v10);
  v17 = objc_msgSend_connection(self, v12, v13, v14, v15, v16);
  v22 = v17;
  if (proxyCopy)
  {
    objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v17, v18, v11, v19, v20, v21);
  }

  else
  {
    objc_msgSend_remoteObjectProxyWithErrorHandler_(v17, v18, v11, v19, v20, v21);
  }
  v23 = ;

  if (completionCopy && !v23)
  {
    v29 = objc_msgSend_failureCode(self, v24, v25, v26, v27, v28);
    completionCopy[2](completionCopy, v29);
  }

  return v23;
}

- (void)serviceArrayRespondingRequestWithCompletion:(id)completion usingBlock:(id)block
{
  completionCopy = completion;
  blockCopy = block;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2559AEF48;
  v13[3] = &unk_279803A00;
  v8 = completionCopy;
  v14 = v8;
  v12 = objc_msgSend__remoteObjectProxy_errorCompletion_(self, v9, 1, v13, v10, v11);
  if (v12)
  {
    blockCopy[2](blockCopy, v12, v8);
  }
}

- (void)serviceVersionRespondingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block
{
  requestCopy = request;
  completionCopy = completion;
  blockCopy = block;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2559AF048;
  v15[3] = &unk_279803A00;
  v10 = completionCopy;
  v16 = v10;
  v14 = objc_msgSend__remoteObjectProxy_errorCompletion_(self, v11, requestCopy, v15, v12, v13);
  if (v14)
  {
    blockCopy[2](blockCopy, v14, v10);
  }
}

- (void)serviceOptionsRespondingRequest:(BOOL)request completion:(id)completion usingBlock:(id)block
{
  requestCopy = request;
  completionCopy = completion;
  blockCopy = block;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2559AF144;
  v15[3] = &unk_279803A00;
  v10 = completionCopy;
  v16 = v10;
  v14 = objc_msgSend__remoteObjectProxy_errorCompletion_(self, v11, requestCopy, v15, v12, v13);
  if (v14)
  {
    blockCopy[2](blockCopy, v14, v10);
  }
}

- (void)serviceRequest:(BOOL)request completion:(id)completion usingBlock:(id)block
{
  requestCopy = request;
  completionCopy = completion;
  blockCopy = block;
  v12 = objc_msgSend__remoteObjectProxy_errorCompletion_(self, v9, requestCopy, completionCopy, v10, v11);
  if (v12)
  {
    blockCopy[2](blockCopy, v12, completionCopy);
  }
}

- (id)_errorHandlerWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2559AF2D4;
  v8[3] = &unk_2798039D8;
  objc_copyWeak(&v10, &location);
  v9 = completionCopy;
  v5 = completionCopy;
  v6 = MEMORY[0x259C45590](v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_failureHandlerWithResponse:(unsigned __int16)response
{
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2559AF4E0;
  v6[3] = &unk_2798039B0;
  objc_copyWeak(&v7, &location);
  responseCopy = response;
  v4 = MEMORY[0x259C45590](v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

- (void)dealloc
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = qword_28106B3C0;
  if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_DEBUG))
  {
    v9 = v3;
    v15 = objc_msgSend_clientId(self, v10, v11, v12, v13, v14);
    *buf = 136315394;
    v18 = "[KVXPCClient dealloc]";
    v19 = 2112;
    v20 = v15;
    _os_log_debug_impl(&dword_2559A5000, v9, OS_LOG_TYPE_DEBUG, "%s Invalidating XPC connection for client %@", buf, 0x16u);
  }

  objc_msgSend_invalidate(self->_connection, v4, v5, v6, v7, v8);
  v16.receiver = self;
  v16.super_class = KVXPCClient;
  [(KVXPCClient *)&v16 dealloc];
}

- (KVXPCClient)initWithServiceProtocol:(id)protocol machServiceName:(id)name clientId:(id)id interruptionCode:(unsigned __int16)code invalidationCode:(unsigned __int16)invalidationCode
{
  invalidationCodeCopy = invalidationCode;
  codeCopy = code;
  v66 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  nameCopy = name;
  idCopy = id;
  v61.receiver = self;
  v61.super_class = KVXPCClient;
  v15 = [(KVXPCClient *)&v61 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    v15->_failureCode = 0;
    v15->_interruptionCode = codeCopy;
    objc_storeStrong(&v15->_clientId, id);
    v17 = objc_alloc(MEMORY[0x277CCAE80]);
    v21 = objc_msgSend_initWithMachServiceName_options_(v17, v18, nameCopy, 0, v19, v20);
    v22 = p_isa[2];
    p_isa[2] = v21;

    if (!p_isa[2] || (objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v23, protocolCopy, v24, v25, v26), (v27 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v59 = 0;
      goto LABEL_9;
    }

    v32 = v27;
    objc_msgSend_setRemoteObjectInterface_(p_isa[2], v28, v27, v29, v30, v31);
    v33 = p_isa[2];
    v38 = objc_msgSend__failureHandlerWithResponse_(p_isa, v34, codeCopy, v35, v36, v37);
    objc_msgSend_setInterruptionHandler_(v33, v39, v38, v40, v41, v42);

    v43 = p_isa[2];
    v48 = objc_msgSend__failureHandlerWithResponse_(p_isa, v44, invalidationCodeCopy, v45, v46, v47);
    objc_msgSend_setInvalidationHandler_(v43, v49, v48, v50, v51, v52);

    v53 = qword_28106B3C0;
    if (os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v63 = "[KVXPCClient initWithServiceProtocol:machServiceName:clientId:interruptionCode:invalidationCode:]";
      v64 = 2112;
      v65 = idCopy;
      _os_log_impl(&dword_2559A5000, v53, OS_LOG_TYPE_INFO, "%s Client %@ connecting to XPC service", buf, 0x16u);
    }

    objc_msgSend_resume(p_isa[2], v54, v55, v56, v57, v58);
  }

  v59 = p_isa;
LABEL_9:

  return v59;
}

- (KVXPCClient)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end