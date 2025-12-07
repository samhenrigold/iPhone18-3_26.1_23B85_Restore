@interface DURequestObjC
- (DURequestObjC)initWithClient:(id)client contentType:(id)type strategies:(id)strategies;
- (void)executeWithDocument:(id)document completion:(id)completion;
@end

@implementation DURequestObjC

- (void)executeWithDocument:(id)document completion:(id)completion
{
  completionCopy = completion;
  v10 = objc_msgSend_documentForObjCDocument_(DUObjCCompatibilityUtils, v7, document, v8, v9);
  underlyingRequest = self->_underlyingRequest;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_232CE0890;
  v15[3] = &unk_2789A7BD0;
  v16 = completionCopy;
  v12 = completionCopy;
  objc_msgSend_executeWithDocument_completion_(underlyingRequest, v13, v10, v15, v14);
}

- (DURequestObjC)initWithClient:(id)client contentType:(id)type strategies:(id)strategies
{
  v47 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  typeCopy = type;
  strategiesCopy = strategies;
  v45.receiver = self;
  v45.super_class = DURequestObjC;
  v14 = [(DURequestObjC *)&v45 init];
  if (v14)
  {
    v40 = clientCopy;
    v39 = objc_msgSend_clientForObjCClient_(DUObjCCompatibilityUtils, v11, clientCopy, v12, v13);
    v38 = objc_msgSend_typeForObjCType_(DUObjCCompatibilityUtils, v15, typeCopy, v16, v17);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = strategiesCopy;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v41, v46, 16);
    if (v21)
    {
      v25 = v21;
      v26 = *v42;
      do
      {
        v27 = 0;
        do
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(v19);
          }

          v31 = objc_msgSend_strategyForObjCStrategy_(DUObjCCompatibilityUtils, v22, *(*(&v41 + 1) + 8 * v27), v23, v24);
          if (v31)
          {
            objc_msgSend_addObject_(v18, v28, v31, v29, v30);
          }

          ++v27;
        }

        while (v25 != v27);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v41, v46, 16);
      }

      while (v25);
    }

    v32 = [_TtC21DocumentUnderstanding9DURequest alloc];
    v34 = objc_msgSend_initWithClient_contentType_strategies_(v32, v33, v39, v38, v18);
    underlyingRequest = v14->_underlyingRequest;
    v14->_underlyingRequest = v34;

    v36 = v14;
    clientCopy = v40;
  }

  return v14;
}

@end