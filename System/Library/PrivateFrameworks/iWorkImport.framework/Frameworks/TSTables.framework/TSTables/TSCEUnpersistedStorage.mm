@interface TSCEUnpersistedStorage
+ (id)copyStorageUnpersisted:(id)unpersisted;
- (id)copyPersistedWithContext:(id)context;
@end

@implementation TSCEUnpersistedStorage

+ (id)copyStorageUnpersisted:(id)unpersisted
{
  unpersistedCopy = unpersisted;
  v4 = [TSCEUnpersistedStorage alloc];
  v8 = objc_msgSend_context(unpersistedCopy, v5, v6, v7);
  v12 = objc_msgSend_stylesheet(unpersistedCopy, v9, v10, v11);
  v14 = objc_msgSend_initWithContext_string_stylesheet_kind_(v4, v13, v8, 0, v12, 5);

  objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v14, v15, unpersistedCopy, 0, 0, 0);
  return v14;
}

- (id)copyPersistedWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(MEMORY[0x277D80F28]);
  v9 = objc_msgSend_stylesheet(self, v6, v7, v8);
  v11 = objc_msgSend_initWithContext_string_stylesheet_kind_(v5, v10, contextCopy, 0, v9, 5);

  objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v11, v12, self, 0, 0, 0);
  return v11;
}

@end