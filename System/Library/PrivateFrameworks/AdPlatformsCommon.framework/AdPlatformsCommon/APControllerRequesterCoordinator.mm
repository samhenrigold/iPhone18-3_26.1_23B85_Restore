@interface APControllerRequesterCoordinator
+ (id)requestCoordinator;
- (APControllerRequesterCoordinator)init;
- (id)proxyURLForRequester:(id)requester;
- (void)_addDelegate:(id)delegate withID:(id)d;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)contentResponses:(id)responses requester:(id)requester;
- (void)extendCollectionClassesForExportedInterface:(id)interface;
- (void)extendCollectionClassesForRemoteInterface:(id)interface;
- (void)finishedWithRequestsForID:(id)d;
- (void)preWarm:(id)warm forRequester:(id)requester completion:(id)completion;
- (void)proxyURLForRequester:(id)requester withCompletionHandler:(id)handler;
- (void)requestPromotedContentOfTypes:(id)types forRequester:(id)requester forContext:(id)context completionHandler:(id)handler;
- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement completionHandler:(id)handler;
@end

@implementation APControllerRequesterCoordinator

+ (id)requestCoordinator
{
  if (qword_1EDD51998[0] != -1)
  {
    sub_1BAFC58B0();
  }

  v3 = qword_1EDD51990;

  return v3;
}

- (APControllerRequesterCoordinator)init
{
  v10.receiver = self;
  v10.super_class = APControllerRequesterCoordinator;
  v4 = [(APXPCActionRequester *)&v10 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
    requestDelegates = v4->_requestDelegates;
    v4->_requestDelegates = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69861E0]);
    lock = v4->_lock;
    v4->_lock = v7;
  }

  return v4;
}

- (void)requestPromotedContentOfTypes:(id)types forRequester:(id)requester forContext:(id)context completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  requesterCopy = requester;
  contextCopy = context;
  handlerCopy = handler;
  typesCopy = types;
  v16 = objc_msgSend_requesterID(requesterCopy, v14, v15);
  objc_msgSend__addDelegate_withID_(self, v17, requesterCopy, v16);

  v20 = objc_msgSend_activeClientInfo(MEMORY[0x1E6986190], v18, v19);
  if (!v20)
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BAFC4000, v21, OS_LOG_TYPE_DEFAULT, "No client info was available for an ad request.", buf, 2u);
    }
  }

  v22 = APLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v25 = objc_msgSend_identifier(contextCopy, v23, v24);
    *buf = 138543362;
    v38 = v25;
    _os_log_impl(&dword_1BAFC4000, v22, OS_LOG_TYPE_INFO, "Requesting ad from promotedcontentd for context %{public}@", buf, 0xCu);
  }

  v26 = APPerfLogForCategory();
  v27 = os_signpost_id_generate(v26);
  v28 = v26;
  v29 = v28;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "xpcDelay", "", buf, 2u);
  }

  v32 = objc_msgSend_remoteObjectProxy(self, v30, v31);
  v35 = objc_msgSend_requesterID(requesterCopy, v33, v34);
  objc_msgSend_requestPromotedContentOfTypes_forRequester_forContext_withClientInfo_deliverEntireBatch_logID_completionHandler_(v32, v36, typesCopy, v35, contextCopy, v20, 0, v27, handlerCopy);
}

- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  contentCopy = content;
  v13 = APPerfLogForCategory();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "xpcDelay", "", buf, 2u);
  }

  v19 = objc_msgSend_remoteObjectProxy(self, v17, v18);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1BAFCEEA0;
  v22[3] = &unk_1E7F20DF8;
  v23 = handlerCopy;
  v20 = handlerCopy;
  objc_msgSend_sendAndRankContent_forContext_placement_logID_completionHandler_(v19, v21, contentCopy, contextCopy, placement, v14, v22);
}

- (void)contentResponses:(id)responses requester:(id)requester
{
  v28 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  requesterCopy = requester;
  v10 = objc_msgSend_lock(self, v8, v9);
  objc_msgSend_lock(v10, v11, v12);
  v15 = objc_msgSend_requestDelegates(self, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, requesterCopy);

  objc_msgSend_unlock(v10, v18, v19);
  if (v17)
  {
    objc_msgSend_contentResponses_(v17, v20, responsesCopy);
  }

  else
  {
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = 138412546;
      v25 = v23;
      v26 = 2112;
      v27 = requesterCopy;
      _os_log_impl(&dword_1BAFC4000, v21, OS_LOG_TYPE_DEFAULT, "[%@] The requester for %@ is no longer stored. Dropping response.", &v24, 0x16u);
    }
  }
}

- (void)finishedWithRequestsForID:(id)d
{
  dCopy = d;
  v5 = APPerfLogForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v32 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "xpcDelay", "", v32, 2u);
  }

  v11 = objc_msgSend_remoteObjectProxy(self, v9, v10);
  objc_msgSend_finishedWithRequestsForRequester_logID_(v11, v12, dCopy, v6);

  v15 = objc_msgSend_lock(self, v13, v14);
  objc_msgSend_lock(v15, v16, v17);
  v20 = objc_msgSend_requestDelegates(self, v18, v19);
  objc_msgSend_removeObjectForKey_(v20, v21, dCopy);

  v24 = objc_msgSend_requestDelegates(self, v22, v23);
  v27 = objc_msgSend_count(v24, v25, v26);

  objc_msgSend_unlock(v15, v28, v29);
  if (!v27)
  {
    objc_msgSend_finished(self, v30, v31);
  }
}

- (id)proxyURLForRequester:(id)requester
{
  requesterCopy = requester;
  v7 = objc_msgSend_requesterID(requesterCopy, v5, v6);
  objc_msgSend__addDelegate_withID_(self, v8, requesterCopy, v7);

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1BAFCF324;
  v24 = sub_1BAFCF334;
  v25 = 0;
  v10 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v9, &unk_1F390A6B0);
  v11 = APPerfLogForCategory();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "xpcDelay", "", buf, 2u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1BAFCF39C;
  v18[3] = &unk_1E7F20E40;
  v18[4] = &v20;
  objc_msgSend_proxyURLWithLogID_completionHandler_(v10, v15, v12, v18);
  v16 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v16;
}

- (void)proxyURLForRequester:(id)requester withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requesterCopy = requester;
  v10 = objc_msgSend_requesterID(requesterCopy, v8, v9);
  objc_msgSend__addDelegate_withID_(self, v11, requesterCopy, v10);

  v14 = objc_msgSend_remoteObjectProxy(self, v12, v13);
  v15 = APPerfLogForCategory();
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "xpcDelay", "", v20, 2u);
  }

  objc_msgSend_proxyURLWithLogID_completionHandler_(v14, v19, v16, handlerCopy);
}

- (void)preWarm:(id)warm forRequester:(id)requester completion:(id)completion
{
  completionCopy = completion;
  requesterCopy = requester;
  warmCopy = warm;
  v13 = objc_msgSend_requesterID(requesterCopy, v11, v12);
  objc_msgSend__addDelegate_withID_(self, v14, requesterCopy, v13);

  v16 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v15, &unk_1F390A6D0);
  v17 = APPerfLogForCategory();
  v18 = os_signpost_id_generate(v17);
  v19 = v17;
  v20 = v19;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "xpcDelay", "", v22, 2u);
  }

  objc_msgSend_preWarm_logID_completion_(v16, v21, warmCopy, v18, completionCopy);
}

- (void)_addDelegate:(id)delegate withID:(id)d
{
  delegateCopy = delegate;
  dCopy = d;
  v9 = objc_msgSend_lock(self, v7, v8);
  objc_msgSend_lock(v9, v10, v11);
  v14 = objc_msgSend_requestDelegates(self, v12, v13);
  v16 = objc_msgSend_objectForKey_(v14, v15, dCopy);

  if (!v16)
  {
    v19 = objc_msgSend_requestDelegates(self, v17, v18);
    objc_msgSend_setObject_forKey_(v19, v20, delegateCopy, dCopy);
  }

  objc_msgSend_unlock(v9, v17, v18);
}

- (void)connectionInterrupted
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);
  v9 = objc_msgSend_requestDelegates(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  v15 = objc_msgSend_requestDelegates(self, v13, v14);
  objc_msgSend_removeAllObjects(v15, v16, v17);

  objc_msgSend_unlock(v4, v18, v19);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v12;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v34, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_objectForKey_(v20, v23, *(*(&v30 + 1) + 8 * v26), v30);
        objc_msgSend_connectionSevered(v27, v28, v29);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v30, v34, 16);
    }

    while (v24);
  }
}

- (void)connectionInvalidated
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);
  v9 = objc_msgSend_requestDelegates(self, v7, v8);
  v12 = objc_msgSend_requestDelegates(self, v10, v11);
  objc_msgSend_removeAllObjects(v12, v13, v14);

  objc_msgSend_unlock(v4, v15, v16);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = v9;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_objectForKey_(v17, v20, *(*(&v27 + 1) + 8 * v23), v27);
        objc_msgSend_connectionSevered(v24, v25, v26);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v27, v31, 16);
    }

    while (v21);
  }
}

- (void)extendCollectionClassesForExportedInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v3, v7, v5, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interfaceCopy, v8, v9, sel_contentResponses_requester_, 0, 0);
}

- (void)extendCollectionClassesForRemoteInterface:(id)interface
{
  v3 = MEMORY[0x1E695DFD8];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v9 = objc_msgSend_setWithObjects_(v3, v7, v5, v6, 0);
  objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(interfaceCopy, v8, v9, sel_sendAndRankContent_forContext_placement_logID_completionHandler_, 0, 1);
}

@end