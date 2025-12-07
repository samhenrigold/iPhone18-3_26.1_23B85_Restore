@interface VFXCopyContext
- (void)_remapEntityReferencesToVFXObjects:(id)objects;
- (void)dealloc;
@end

@implementation VFXCopyContext

- (void)dealloc
{
  remapTable = self->_remapTable;
  if (remapTable)
  {
    CFRelease(remapTable);
    self->_remapTable = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXCopyContext;
  [(VFXCopyContext *)&v4 dealloc];
}

- (void)_remapEntityReferencesToVFXObjects:(id)objects
{
  v4 = sub_1AFDF5054(self);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_1AF2BEDCC();
    v17 = 3221225472;
    v18 = sub_1AF2BEC88;
    v19 = &unk_1E7A79810;
    v20 = v4;
    objc_msgSend_enumerateHierarchyUsingBlock_(objects, v5, v16);
  }

  else if (objc_opt_respondsToSelector())
  {
    v8 = objc_msgSend_behaviorGraph(objects, v6, v7);
    v11 = objc_msgSend_coreEntityHandle(v8, v9, v10);
    v14 = objc_msgSend_entityObject(v11, v12, v13);

    objc_msgSend_updateVFXObjectReferences_(v14, v15, v4);
  }
}

@end