@interface DUStructuredEntityResponseObjC
- (DUDebugInfoObjC)responseDebugInfo;
- (DUStructuredEntityResponseObjC)init;
- (NSArray)structuredEntities;
- (void)setResponseDebugInfo:(id)info;
- (void)setStructuredEntities:(id)entities;
@end

@implementation DUStructuredEntityResponseObjC

- (void)setResponseDebugInfo:(id)info
{
  v9 = objc_msgSend_debugInfoForObjCDebugInfo_(DUObjCCompatibilityUtils, a2, info, v3, v4);
  objc_msgSend_setResponseDebugInfo_(self->_underlying, v6, v9, v7, v8);
}

- (DUDebugInfoObjC)responseDebugInfo
{
  v5 = objc_msgSend_responseDebugInfo(self->_underlying, a2, v2, v3, v4);
  v9 = objc_msgSend_objcDebugInfoForDebugInfo_(DUObjCCompatibilityUtils, v6, v5, v7, v8);

  return v9;
}

- (void)setStructuredEntities:(id)entities
{
  v27 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = entitiesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v22, v26, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_structuredEntityForObjCStructuredEntity_(DUObjCCompatibilityUtils, v9, *(*(&v22 + 1) + 8 * v14), v10, v11, v22);
        objc_msgSend_addObject_(v5, v16, v15, v17, v18);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v22, v26, 16);
    }

    while (v12);
  }

  objc_msgSend_setStructuredEntities_(self->_underlying, v19, v5, v20, v21);
}

- (NSArray)structuredEntities
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = objc_msgSend_structuredEntities(self->_underlying, v4, v5, v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v22, v26, 16);
  if (v10)
  {
    v14 = v10;
    v15 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = objc_msgSend_objCStructuredEntityForStructuredEntity_(DUObjCCompatibilityUtils, v11, *(*(&v22 + 1) + 8 * i), v12, v13);
        objc_msgSend_addObject_(v3, v18, v17, v19, v20);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v22, v26, 16);
    }

    while (v14);
  }

  return v3;
}

- (DUStructuredEntityResponseObjC)init
{
  v7.receiver = self;
  v7.super_class = DUStructuredEntityResponseObjC;
  v2 = [(DUStructuredEntityResponseObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding26DUStructuredEntityResponse);
    underlying = v2->_underlying;
    v2->_underlying = v3;

    v5 = v2;
  }

  return v2;
}

@end