@interface APPCControllerRequester
- (APPCControllerRequester)initWithDeliveryBlock:(id)block;
- (id)_preprocessHandler:(id)handler;
- (id)proxyURL;
- (void)_invalidateAndfulfillAllRequestsWithError:(id)error;
- (void)connectionSevered;
- (void)contentResponses:(id)responses;
- (void)endRequests;
- (void)handleCompletionOfRequest:(id)request;
- (void)preWarm:(id)warm completion:(id)completion;
- (void)proxyURLWithCompletionHandler:(id)handler;
- (void)requestPromotedContentOfTypes:(id)types forContext:(id)context completionHandler:(id)handler;
- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement responseHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation APPCControllerRequester

- (void)endRequests
{
  objc_msgSend__invalidateAndfulfillAllRequestsWithError_(self, a2, 0);
  v17 = objc_msgSend_lock(self, v3, v4);
  objc_msgSend_lock(v17, v5, v6);
  objc_msgSend_setInvalid_(self, v7, 1);
  objc_msgSend_unlock(v17, v8, v9);
  v12 = objc_msgSend_requestCoordinator(self, v10, v11);
  v15 = objc_msgSend_requesterID(self, v13, v14);
  objc_msgSend_finishedWithRequestsForID_(v12, v16, v15);
}

- (APPCControllerRequester)initWithDeliveryBlock:(id)block
{
  blockCopy = block;
  v26.receiver = self;
  v26.super_class = APPCControllerRequester;
  v5 = [(APPCControllerRequester *)&v26 init];
  v8 = v5;
  if (v5)
  {
    v5->_invalid = 0;
    v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
    requestCompletionBlockByRequestID = v8->_requestCompletionBlockByRequestID;
    v8->_requestCompletionBlockByRequestID = v9;

    v11 = _Block_copy(blockCopy);
    newPromotedContentsDeliveryBlock = v8->_newPromotedContentsDeliveryBlock;
    v8->_newPromotedContentsDeliveryBlock = v11;

    v13 = objc_alloc(MEMORY[0x1E69861D8]);
    v15 = objc_msgSend_initWithOptions_(v13, v14, 1);
    lock = v8->_lock;
    v8->_lock = v15;

    v19 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v17, v18);
    requesterID = v8->_requesterID;
    v8->_requesterID = v19;

    v23 = objc_msgSend_requestCoordinator(APControllerRequesterCoordinator, v21, v22);
    requestCoordinator = v8->_requestCoordinator;
    v8->_requestCoordinator = v23;
  }

  return v8;
}

- (void)requestPromotedContentOfTypes:(id)types forContext:(id)context completionHandler:(id)handler
{
  typesCopy = types;
  contextCopy = context;
  handlerCopy = handler;
  v12 = objc_msgSend__preprocessHandler_(self, v11, handlerCopy);
  if (v12)
  {
    objc_initWeak(&location, self);
    v15 = objc_msgSend_requestCoordinator(self, v13, v14);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1BAFCFDC0;
    v17[3] = &unk_1E7F20E68;
    objc_copyWeak(&v19, &location);
    v18 = v12;
    objc_msgSend_requestPromotedContentOfTypes_forRequester_forContext_completionHandler_(v15, v16, typesCopy, self, contextCopy, v17);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)sendAndRankContent:(id)content forContext:(id)context placement:(unint64_t)placement responseHandler:(id)handler completionHandler:(id)completionHandler
{
  contentCopy = content;
  contextCopy = context;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v17 = objc_msgSend__preprocessHandler_(self, v16, completionHandlerCopy);
  if (v17)
  {
    objc_initWeak(&location, self);
    v20 = objc_msgSend_requestCoordinator(self, v18, v19);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1BAFCFFA8;
    v22[3] = &unk_1E7F20E90;
    v24 = handlerCopy;
    objc_copyWeak(&v25, &location);
    v23 = v17;
    objc_msgSend_sendAndRankContent_forContext_placement_completionHandler_(v20, v21, contentCopy, contextCopy, placement, v22);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)connectionSevered
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A588];
  v8[0] = *MEMORY[0x1E696A578];
  v8[1] = v3;
  v9[0] = @"PCController requester was invalidated.";
  v9[1] = @"The user asked to invalidate the requester.";
  v8[2] = *MEMORY[0x1E696A598];
  v9[2] = @"Create a new PCController requester and try again.";
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v9, v8, 3);
  v6 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v5, @"APPCControllerRequesterErrorDomain", 5003, v4);
  objc_msgSend__invalidateAndfulfillAllRequestsWithError_(self, v7, v6);
}

- (void)contentResponses:(id)responses
{
  v35 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  v7 = objc_msgSend_lock(self, v5, v6);
  objc_msgSend_lock(v7, v8, v9);

  v12 = objc_msgSend_newPromotedContentsDeliveryBlock(self, v10, v11);
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_invalid(self, v13, v14);

    if ((v16 & 1) == 0)
    {
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v33 = 134217984;
        v34 = objc_msgSend_count(responsesCopy, v18, v19);
        _os_log_impl(&dword_1BAFC4000, v17, OS_LOG_TYPE_INFO, "Received promoted contents: %lu", &v33, 0xCu);
      }

      v22 = objc_msgSend_newPromotedContentsDeliveryBlock(self, v20, v21);
      (v22)[2](v22, responsesCopy);
    }
  }

  v23 = objc_msgSend_newPromotedContentsDeliveryBlock(self, v13, v14);

  if (!v23)
  {
    v26 = APLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1BAFC4000, v26, OS_LOG_TYPE_ERROR, "Promoted contents are discarded due to missing delivery block.", &v33, 2u);
    }
  }

  if (objc_msgSend_invalid(self, v24, v25))
  {
    v29 = APLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1BAFC4000, v29, OS_LOG_TYPE_ERROR, "Promoted contents are discarded because the requester is invalid.", &v33, 2u);
    }
  }

  v30 = objc_msgSend_lock(self, v27, v28);
  objc_msgSend_unlock(v30, v31, v32);
}

- (id)proxyURL
{
  v4 = objc_msgSend_requestCoordinator(self, a2, v2);
  v6 = objc_msgSend_proxyURLForRequester_(v4, v5, self);

  return v6;
}

- (void)proxyURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend_requestCoordinator(self, v5, v6);
  objc_msgSend_proxyURLForRequester_withCompletionHandler_(v8, v7, self, handlerCopy);
}

- (void)preWarm:(id)warm completion:(id)completion
{
  completionCopy = completion;
  warmCopy = warm;
  v11 = objc_msgSend_requestCoordinator(self, v8, v9);
  objc_msgSend_preWarm_forRequester_completion_(v11, v10, warmCopy, self, completionCopy);
}

- (void)_invalidateAndfulfillAllRequestsWithError:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v7 = objc_msgSend_lock(self, v5, v6);
  objc_msgSend_lock(v7, v8, v9);

  objc_msgSend_setLastError_(self, v10, errorCopy);
  v13 = objc_msgSend_requestCompletionBlockByRequestID(self, v11, v12);
  v16 = objc_msgSend_allValues(v13, v14, v15);

  v19 = objc_msgSend_requestCompletionBlockByRequestID(self, v17, v18);
  objc_msgSend_removeAllObjects(v19, v20, v21);

  v24 = objc_msgSend_lock(self, v22, v23);
  objc_msgSend_unlock(v24, v25, v26);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v27 = v16;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v36, v40, 16);
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      v32 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v27);
        }

        (*(*(*(&v36 + 1) + 8 * v32++) + 16))();
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v33, &v36, v40, 16);
    }

    while (v30);
  }

  v34 = APLogForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    *v35 = 0;
    _os_log_impl(&dword_1BAFC4000, v34, OS_LOG_TYPE_INFO, "XPC connection is closed.", v35, 2u);
  }
}

- (void)handleCompletionOfRequest:(id)request
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = objc_msgSend_lock(self, v5, v6);
  objc_msgSend_lock(v7, v8, v9);

  v12 = objc_msgSend_requestCompletionBlockByRequestID(self, v10, v11);
  v14 = objc_msgSend_objectForKey_(v12, v13, requestCopy);

  v17 = objc_msgSend_requestCompletionBlockByRequestID(self, v15, v16);
  objc_msgSend_removeObjectForKey_(v17, v18, requestCopy);

  v21 = objc_msgSend_lock(self, v19, v20);
  objc_msgSend_unlock(v21, v22, v23);

  if (v14)
  {
    v14[2](v14, 0);
  }

  else
  {
    v24 = APLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_msgSend_lastError(self, v25, v26);
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_1BAFC4000, v24, OS_LOG_TYPE_ERROR, "Request completion block was triggered due to %{public}@.", &v28, 0xCu);
    }
  }
}

- (id)_preprocessHandler:(id)handler
{
  v39[3] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = objc_msgSend_lock(self, v5, v6);
  objc_msgSend_lock(v7, v8, v9);

  if (objc_msgSend_invalid(self, v10, v11))
  {
    v14 = APLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      _os_log_impl(&dword_1BAFC4000, v14, OS_LOG_TYPE_ERROR, "Invalid requester cannot request promoted content.", v37, 2u);
    }

    v15 = *MEMORY[0x1E696A588];
    v38[0] = *MEMORY[0x1E696A578];
    v38[1] = v15;
    v39[0] = @"PCController requester was invalidated.";
    v39[1] = @"The user asked to invalidate the requester.";
    v38[2] = *MEMORY[0x1E696A598];
    v39[2] = @"Create a new PCController requester and try again.";
    v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v39, v38, 3);
    v19 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v18, @"APPCControllerRequesterErrorDomain", 5003, v17);
    handlerCopy[2](handlerCopy, v19);

    v22 = objc_msgSend_lock(self, v20, v21);
    objc_msgSend_unlock(v22, v23, v24);

    v25 = 0;
  }

  else
  {
    v25 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v12, v13);
    v28 = objc_msgSend_requestCompletionBlockByRequestID(self, v26, v27);
    v29 = _Block_copy(handlerCopy);

    objc_msgSend_setObject_forKey_(v28, v30, v29, v25);
    v33 = objc_msgSend_lock(self, v31, v32);
    objc_msgSend_unlock(v33, v34, v35);
  }

  return v25;
}

@end