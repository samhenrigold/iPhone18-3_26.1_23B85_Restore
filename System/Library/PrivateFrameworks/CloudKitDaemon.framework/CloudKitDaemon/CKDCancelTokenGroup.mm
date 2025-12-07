@interface CKDCancelTokenGroup
- (CKDCancelTokenGroup)init;
- (void)addCancelToken:(id)token withOperation:(id)operation;
- (void)cancel;
- (void)removeAllCancelTokens;
- (void)removeCancelToken:(id)token;
@end

@implementation CKDCancelTokenGroup

- (CKDCancelTokenGroup)init
{
  v6.receiver = self;
  v6.super_class = CKDCancelTokenGroup;
  v2 = [(CKDCancelTokenGroup *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cancelTokens = v2->_cancelTokens;
    v2->_cancelTokens = v3;
  }

  return v2;
}

- (void)addCancelToken:(id)token withOperation:(id)operation
{
  tokenCopy = token;
  operationCopy = operation;
  if (tokenCopy)
  {
    if (objc_msgSend_isCancelled(operationCopy, v6, v7) & 1) != 0 || (objc_msgSend_cancelTokens(self, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), objc_sync_enter(v11), objc_msgSend_cancelTokens(self, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_addObject_(v14, v15, tokenCopy), v14, objc_sync_exit(v11), v11, (objc_msgSend_isCancelled(operationCopy, v16, v17)))
    {
      objc_msgSend_cancel(tokenCopy, v9, v10);
    }
  }
}

- (void)removeCancelToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v12 = tokenCopy;
    v7 = objc_msgSend_cancelTokens(self, v5, v6);
    objc_sync_enter(v7);
    v10 = objc_msgSend_cancelTokens(self, v8, v9);
    objc_msgSend_removeObject_(v10, v11, v12);

    objc_sync_exit(v7);
    tokenCopy = v12;
  }
}

- (void)removeAllCancelTokens
{
  obj = objc_msgSend_cancelTokens(self, a2, v2);
  objc_sync_enter(obj);
  v6 = objc_msgSend_cancelTokens(self, v4, v5);
  objc_msgSend_removeAllObjects(v6, v7, v8);

  objc_sync_exit(obj);
}

- (void)cancel
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cancelTokens(self, a2, v2);
  objc_sync_enter(v4);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = objc_msgSend_cancelTokens(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v19, v23, 16);
  if (v11)
  {
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_cancel(*(*(&v19 + 1) + 8 * v13++), v9, v10);
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v19, v23, 16);
    }

    while (v11);
  }

  v16 = objc_msgSend_cancelTokens(self, v14, v15);
  objc_msgSend_removeAllObjects(v16, v17, v18);

  objc_sync_exit(v4);
}

@end