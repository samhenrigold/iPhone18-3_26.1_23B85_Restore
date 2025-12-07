@interface APRequestCoordinator
+ (id)sharedCoordinator;
- (APRequestCoordinator)init;
- (BOOL)attemptRetryMessageForBox:(id)box;
- (id)proxyURLForRequester:(id)requester;
- (void)_addBox:(id)box;
- (void)_removeBox:(id)box;
- (void)beginSessionForID:(id)d;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)connectionSeveredForBox:(id)box;
- (void)contentResponses:(id)responses requester:(id)requester;
- (void)extendCollectionClassesForExportedInterface:(id)interface;
- (void)extendCollectionClassesForRemoteInterface:(id)interface;
- (void)finishedWithRequestsForID:(id)d;
- (void)preWarm:(id)warm forRequester:(id)requester completion:(id)completion;
- (void)proxyURLForRequester:(id)requester withCompletionHandler:(id)handler;
- (void)requestPromotedContentWithBox:(id)box;
- (void)requestPromotedContentWithContents:(id)contents forRequester:(id)requester completionHandler:(id)handler;
- (void)requestProxyWithBox:(id)box;
- (void)requestRankingWithBox:(id)box;
- (void)sendAndRankContent:(id)content forRequester:(id)requester forContext:(id)context placement:(unint64_t)placement completionHandler:(id)handler;
@end

@implementation APRequestCoordinator

+ (id)sharedCoordinator
{
  if (qword_1EDD51888[0] != -1)
  {
    sub_1BAFC6AF8();
  }

  v3 = qword_1EDD51880;

  return v3;
}

- (APRequestCoordinator)init
{
  v10.receiver = self;
  v10.super_class = APRequestCoordinator;
  v4 = [(APXPCActionRequester *)&v10 init];
  if (v4)
  {
    v5 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
    managerToRetryBoxMap = v4->_managerToRetryBoxMap;
    v4->_managerToRetryBoxMap = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69861D8]);
    lock = v4->_lock;
    v4->_lock = v7;
  }

  return v4;
}

- (void)requestPromotedContentWithContents:(id)contents forRequester:(id)requester completionHandler:(id)handler
{
  handlerCopy = handler;
  requesterCopy = requester;
  contentsCopy = contents;
  v11 = [APCoordinatedAdRequestBox alloc];
  v13 = objc_msgSend_initWithDelegate_contents_handler_(v11, v12, requesterCopy, contentsCopy, handlerCopy);

  objc_msgSend__addBox_(self, v14, v13);
  v17 = objc_msgSend_clientInfo(contentsCopy, v15, v16);

  if (!v17)
  {
    v19 = APLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1BAFC4000, v19, OS_LOG_TYPE_DEFAULT, "No client info was available for an ad request.", v20, 2u);
    }
  }

  objc_msgSend_requestPromotedContentWithBox_(self, v18, v13);
}

- (void)sendAndRankContent:(id)content forRequester:(id)requester forContext:(id)context placement:(unint64_t)placement completionHandler:(id)handler
{
  handlerCopy = handler;
  requesterCopy = requester;
  contentCopy = content;
  v14 = [APCoordinatedRankRequestBox alloc];
  v18 = objc_msgSend_initWithDelegate_contents_placement_handler_(v14, v15, requesterCopy, contentCopy, placement, handlerCopy);

  objc_msgSend__addBox_(self, v16, v18);
  objc_msgSend_requestRankingWithBox_(self, v17, v18);
}

- (void)beginSessionForID:(id)d
{
  v4 = MEMORY[0x1E695DF70];
  dCopy = d;
  v22 = objc_msgSend_array(v4, v6, v7);
  v10 = objc_msgSend_lock(self, v8, v9);
  objc_msgSend_lock(v10, v11, v12);

  v15 = objc_msgSend_managerToRetryBoxMap(self, v13, v14);
  objc_msgSend_setObject_forKey_(v15, v16, v22, dCopy);

  v19 = objc_msgSend_lock(self, v17, v18);
  objc_msgSend_unlock(v19, v20, v21);
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
  v20 = objc_msgSend_managerToRetryBoxMap(self, v18, v19);
  objc_msgSend_removeObjectForKey_(v20, v21, dCopy);

  v24 = objc_msgSend_managerToRetryBoxMap(self, v22, v23);
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
  v5 = [APCoordinatedRetryBox alloc];
  v7 = objc_msgSend_initWithType_delegate_(v5, v6, -1, requesterCopy);
  objc_msgSend_setCanRetry_(v7, v8, 0);
  objc_msgSend__addBox_(self, v9, v7);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1BAFD4A1C;
  v26 = sub_1BAFD4A2C;
  v27 = 0;
  v11 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v10, &unk_1F390A6F0);
  v12 = APPerfLogForCategory();
  v13 = os_signpost_id_generate(v12);
  v14 = v12;
  v15 = v14;
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "xpcDelay", "", buf, 2u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1BAFD4A94;
  v20[3] = &unk_1E7F20E40;
  v20[4] = &v22;
  objc_msgSend_proxyURLWithLogID_completionHandler_(v11, v16, v13, v20);
  objc_msgSend__removeBox_(self, v17, v7);
  v18 = v23[5];

  _Block_object_dispose(&v22, 8);

  return v18;
}

- (void)proxyURLForRequester:(id)requester withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requesterCopy = requester;
  v8 = [APCoordinatedProxyUrlRequestBox alloc];
  v12 = objc_msgSend_initWithDelegate_handler_(v8, v9, requesterCopy, handlerCopy);

  objc_msgSend__addBox_(self, v10, v12);
  objc_msgSend_requestProxyWithBox_(self, v11, v12);
}

- (void)preWarm:(id)warm forRequester:(id)requester completion:(id)completion
{
  completionCopy = completion;
  requesterCopy = requester;
  warmCopy = warm;
  v11 = [APCoordinatedRetryBox alloc];
  v13 = objc_msgSend_initWithType_delegate_(v11, v12, -1, requesterCopy);

  objc_msgSend_setCanRetry_(v13, v14, 0);
  objc_msgSend__addBox_(self, v15, v13);
  v17 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v16, &unk_1F390A710);
  v18 = APPerfLogForCategory();
  v19 = os_signpost_id_generate(v18);
  v20 = v18;
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *v24 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "xpcDelay", "", v24, 2u);
  }

  objc_msgSend_preWarm_logID_completion_(v17, v22, warmCopy, v19, completionCopy);
  objc_msgSend__removeBox_(self, v23, v13);
}

- (void)requestPromotedContentWithBox:(id)box
{
  boxCopy = box;
  objc_initWeak(location, self);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v5 = APPerfLogForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "xpcDelay", "", buf, 2u);
  }

  v42 = v6;
  v40 = v8;

  v41 = objc_msgSend_remoteObjectProxy(self, v9, v10);
  v13 = objc_msgSend_requestContents(boxCopy, v11, v12);
  v39 = objc_msgSend_contentTypes(v13, v14, v15);
  v38 = objc_msgSend_requesterID(boxCopy, v16, v17);
  v20 = objc_msgSend_requestContents(boxCopy, v18, v19);
  v23 = objc_msgSend_apContext(v20, v21, v22);
  v26 = objc_msgSend_requestContents(boxCopy, v24, v25);
  v29 = objc_msgSend_clientInfo(v26, v27, v28);
  v32 = objc_msgSend_requestContents(boxCopy, v30, v31);
  v35 = objc_msgSend_deliverEntireBatch(v32, v33, v34);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1BAFD4F8C;
  v43[3] = &unk_1E7F20F30;
  v45 = v48;
  objc_copyWeak(&v46, location);
  v36 = boxCopy;
  v44 = v36;
  objc_msgSend_requestPromotedContentOfTypes_forRequester_forContext_withClientInfo_deliverEntireBatch_logID_completionHandler_(v41, v37, v39, v38, v23, v29, v35, v42, v43);

  objc_destroyWeak(&v46);
  _Block_object_dispose(v48, 8);
  objc_destroyWeak(location);
}

- (void)requestRankingWithBox:(id)box
{
  boxCopy = box;
  objc_initWeak(&location, self);
  v5 = APPerfLogForCategory();
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "xpcDelay", "", buf, 2u);
  }

  v11 = objc_msgSend_remoteObjectProxy(self, v9, v10);
  v14 = objc_msgSend_contentDatas(boxCopy, v12, v13);
  v17 = objc_msgSend_context(boxCopy, v15, v16);
  v20 = objc_msgSend_placement(boxCopy, v18, v19);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1BAFD5228;
  v23[3] = &unk_1E7F20F58;
  objc_copyWeak(&v25, &location);
  v21 = boxCopy;
  v24 = v21;
  objc_msgSend_sendAndRankContent_forContext_placement_logID_completionHandler_(v11, v22, v14, v17, v20, v6, v23);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)requestProxyWithBox:(id)box
{
  boxCopy = box;
  v7 = objc_msgSend_remoteObjectProxy(self, v5, v6);
  objc_initWeak(&location, self);
  v8 = APPerfLogForCategory();
  v9 = os_signpost_id_generate(v8);
  v10 = v8;
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BAFC4000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "xpcDelay", "", buf, 2u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1BAFD5444;
  v14[3] = &unk_1E7F20F80;
  objc_copyWeak(&v16, &location);
  v12 = boxCopy;
  v15 = v12;
  objc_msgSend_proxyURLWithLogID_completionHandler_(v7, v13, v9, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)contentResponses:(id)responses requester:(id)requester
{
  v34 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  requesterCopy = requester;
  v10 = objc_msgSend_lock(self, v8, v9);
  objc_msgSend_lock(v10, v11, v12);
  v15 = objc_msgSend_managerToRetryBoxMap(self, v13, v14);
  v17 = objc_msgSend_objectForKey_(v15, v16, requesterCopy);

  v20 = objc_msgSend_firstObject(v17, v18, v19);
  v23 = objc_msgSend_requestDelegate(v20, v21, v22);

  objc_msgSend_unlock(v10, v24, v25);
  if (v23)
  {
    objc_msgSend_contentResponses_(v23, v26, responsesCopy);
  }

  else
  {
    v27 = APLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = 138478083;
      v31 = v29;
      v32 = 2114;
      v33 = requesterCopy;
      _os_log_impl(&dword_1BAFC4000, v27, OS_LOG_TYPE_DEFAULT, "[%{private}@] The requester for %{public}@ is no longer stored. Dropping response.", &v30, 0x16u);
    }
  }
}

- (void)_addBox:(id)box
{
  boxCopy = box;
  v6 = objc_msgSend_lock(self, v4, v5);
  objc_msgSend_lock(v6, v7, v8);

  v11 = objc_msgSend_managerToRetryBoxMap(self, v9, v10);
  v14 = objc_msgSend_requesterID(boxCopy, v12, v13);
  v16 = objc_msgSend_objectForKey_(v11, v15, v14);

  if (v16)
  {
    if ((objc_msgSend_containsObject_(v16, v17, boxCopy) & 1) == 0)
    {
      objc_msgSend_addObject_(v16, v18, boxCopy);
    }
  }

  else
  {
    v16 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v17, boxCopy);
  }

  v20 = objc_msgSend_managerToRetryBoxMap(self, v18, v19);
  v23 = objc_msgSend_requesterID(boxCopy, v21, v22);
  objc_msgSend_setObject_forKey_(v20, v24, v16, v23);

  v27 = objc_msgSend_lock(self, v25, v26);
  objc_msgSend_unlock(v27, v28, v29);
}

- (void)_removeBox:(id)box
{
  boxCopy = box;
  v6 = objc_msgSend_lock(self, v4, v5);
  objc_msgSend_lock(v6, v7, v8);

  v11 = objc_msgSend_managerToRetryBoxMap(self, v9, v10);
  v14 = objc_msgSend_requesterID(boxCopy, v12, v13);
  v16 = objc_msgSend_objectForKey_(v11, v15, v14);

  if (v16)
  {
    objc_msgSend_removeObject_(v16, v17, boxCopy);
    v21 = objc_msgSend_managerToRetryBoxMap(self, v19, v20);
    v24 = objc_msgSend_requesterID(boxCopy, v22, v23);
    objc_msgSend_setObject_forKey_(v21, v25, v16, v24);
  }

  else
  {
    v21 = objc_msgSend_diagnosticReportPayload(boxCopy, v17, v18);
    CreateDiagnosticReport();
  }

  v28 = objc_msgSend_lock(self, v26, v27);
  objc_msgSend_unlock(v28, v29, v30);
}

- (void)connectionInterrupted
{
  v87 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1BAFC4000, v3, OS_LOG_TYPE_ERROR, "XPC Connection interrupted", buf, 2u);
  }

  v6 = objc_msgSend_lock(self, v4, v5);
  objc_msgSend_lock(v6, v7, v8);
  v11 = objc_msgSend_managerToRetryBoxMap(self, v9, v10);
  v14 = objc_msgSend_copy(v11, v12, v13);

  v17 = objc_msgSend_managerToRetryBoxMap(self, v15, v16);
  objc_msgSend_removeAllObjects(v17, v18, v19);

  v63 = v6;
  objc_msgSend_unlock(v6, v20, v21);
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v14;
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v73, v86, 16);
  if (v65)
  {
    v64 = *v74;
    do
    {
      v24 = 0;
      do
      {
        if (*v74 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v24;
        v25 = objc_msgSend_objectForKey_(obj, v23, *(*(&v73 + 1) + 8 * v24));
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v69, v85, 16);
        if (v27)
        {
          v30 = v27;
          v31 = *v70;
          do
          {
            v32 = 0;
            v68 = v30;
            do
            {
              if (*v70 != v31)
              {
                objc_enumerationMutation(v25);
              }

              v33 = *(*(&v69 + 1) + 8 * v32);
              if (objc_msgSend_requestType(v33, v28, v29) == -1)
              {
                goto LABEL_21;
              }

              v35 = objc_msgSend_attemptRetryMessageForBox_(self, v34, v33);
              v36 = APLogForCategory();
              v37 = v36;
              if (!v35)
              {
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  v49 = objc_opt_class();
                  v50 = NSStringFromClass(v49);
                  v53 = objc_msgSend_requestID(v33, v51, v52);
                  v56 = objc_msgSend_requestType(v33, v54, v55);
                  objc_msgSend_requesterID(v33, v57, v58);
                  v59 = v31;
                  selfCopy = self;
                  v62 = v61 = v25;
                  *buf = 138478595;
                  v78 = v50;
                  v79 = 2114;
                  v80 = v53;
                  v81 = 2050;
                  v82 = v56;
                  v83 = 2114;
                  v84 = v62;
                  _os_log_impl(&dword_1BAFC4000, v37, OS_LOG_TYPE_ERROR, "[%{private}@] Unable to retry request %{public}@ of type %{public}ld for requester %{public}@", buf, 0x2Au);

                  v25 = v61;
                  self = selfCopy;
                  v31 = v59;
                  v30 = v68;
                }

LABEL_21:
                objc_msgSend_connectionSeveredForBox_(self, v34, v33);
                goto LABEL_22;
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                v38 = objc_opt_class();
                v39 = NSStringFromClass(v38);
                v42 = objc_msgSend_requestID(v33, v40, v41);
                v45 = objc_msgSend_requestType(v33, v43, v44);
                v48 = objc_msgSend_requesterID(v33, v46, v47);
                *buf = 138478595;
                v78 = v39;
                v79 = 2114;
                v80 = v42;
                v81 = 2050;
                v82 = v45;
                v83 = 2114;
                v84 = v48;
                _os_log_impl(&dword_1BAFC4000, v37, OS_LOG_TYPE_DEFAULT, "[%{private}@] Request %{public}@ of type %{public}ld is attempting to retry for requester %{public}@", buf, 0x2Au);
              }

LABEL_22:
              ++v32;
            }

            while (v30 != v32);
            v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v69, v85, 16);
          }

          while (v30);
        }

        v24 = v67 + 1;
      }

      while (v67 + 1 != v65);
      v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v73, v86, 16);
    }

    while (v65);
  }
}

- (void)connectionInvalidated
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lock(self, a2, v2);
  objc_msgSend_lock(v4, v5, v6);
  v9 = objc_msgSend_managerToRetryBoxMap(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  v15 = objc_msgSend_managerToRetryBoxMap(self, v13, v14);
  objc_msgSend_removeAllObjects(v15, v16, v17);

  objc_msgSend_unlock(v4, v18, v19);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v12;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v38, v43, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v39;
    do
    {
      v26 = 0;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_objectForKey_(v20, v23, *(*(&v38 + 1) + 8 * v26));
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v34, v42, 16);
        if (v29)
        {
          v31 = v29;
          v32 = *v35;
          do
          {
            v33 = 0;
            do
            {
              if (*v35 != v32)
              {
                objc_enumerationMutation(v27);
              }

              objc_msgSend_connectionSeveredForBox_(self, v30, *(*(&v34 + 1) + 8 * v33++));
            }

            while (v31 != v33);
            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v34, v42, 16);
          }

          while (v31);
        }

        ++v26;
      }

      while (v26 != v24);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v38, v43, 16);
    }

    while (v24);
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

- (BOOL)attemptRetryMessageForBox:(id)box
{
  boxCopy = box;
  if (objc_msgSend_canRetry(boxCopy, v5, v6))
  {
    v9 = objc_msgSend_requestDelegate(boxCopy, v7, v8);

    if (v9)
    {
      objc_msgSend_setCanRetry_(boxCopy, v10, 0);
      objc_msgSend__addBox_(self, v11, boxCopy);
      v14 = objc_msgSend_requestType(boxCopy, v12, v13);
      switch(v14)
      {
        case 2:
          objc_msgSend_requestProxyWithBox_(self, v15, boxCopy);
          goto LABEL_10;
        case 1:
          objc_msgSend_requestRankingWithBox_(self, v15, boxCopy);
          goto LABEL_10;
        case 0:
          objc_msgSend_requestPromotedContentWithBox_(self, v15, boxCopy);
LABEL_10:
          v16 = 1;
          goto LABEL_11;
      }
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (void)connectionSeveredForBox:(id)box
{
  v21[3] = *MEMORY[0x1E69E9840];
  boxCopy = box;
  v4 = *MEMORY[0x1E696A588];
  v20[0] = *MEMORY[0x1E696A578];
  v20[1] = v4;
  v21[0] = @"APRequestCoordinator was invalidated.";
  v21[1] = @"The user asked to invalidate the requester, or connection was interrupted.";
  v20[2] = *MEMORY[0x1E696A598];
  v21[2] = @"Retry failed request again.";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v5, v21, v20, 3);
  v8 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v7, @"APPCControllerRequesterErrorDomain", 5003, v6);
  v11 = objc_msgSend_requestDelegate(boxCopy, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_requestDelegate(boxCopy, v12, v13);
    objc_msgSend_connectionSeveredWithError_(v14, v15, v8);
  }

  v16 = objc_msgSend_requestType(boxCopy, v12, v13);
  if (v16 == 2)
  {
    if (boxCopy)
    {
LABEL_11:
      v19 = objc_msgSend_completionHandler(boxCopy, v17, v18);
      v19[2]();
      goto LABEL_12;
    }
  }

  else if (v16 == 1)
  {
    if (boxCopy)
    {
      v19 = objc_msgSend_completionHandler(boxCopy, v17, v18);
      (v19[2])(v19, 0, v8);
LABEL_12:
    }
  }

  else if (!v16 && boxCopy)
  {
    goto LABEL_11;
  }
}

@end