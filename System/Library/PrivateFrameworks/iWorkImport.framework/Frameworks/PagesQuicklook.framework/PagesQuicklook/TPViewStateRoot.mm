@interface TPViewStateRoot
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToViewStateRoot:(id)root;
- (TPViewStateRoot)initWithContext:(id)context;
- (TPViewStateRoot)initWithContext:(id)context layoutState:(id)state uiState:(id)uiState;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setLayoutState:(id)state;
- (void)setUiState:(id)state;
@end

@implementation TPViewStateRoot

- (TPViewStateRoot)initWithContext:(id)context
{
  contextCopy = context;
  v29.receiver = self;
  v29.super_class = TPViewStateRoot;
  v5 = [(TPViewStateRoot *)&v29 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [TPArchivedLayoutState alloc];
    v15 = objc_msgSend_initWithContext_(v6, v7, v11, v12, v13, v14, contextCopy, v8, v9, v10);
    archivedLayoutState = v5->_archivedLayoutState;
    v5->_archivedLayoutState = v15;

    v17 = [TPArchivedUIState alloc];
    v26 = objc_msgSend_initWithContext_(v17, v18, v22, v23, v24, v25, contextCopy, v19, v20, v21);
    archivedUIState = v5->_archivedUIState;
    v5->_archivedUIState = v26;
  }

  return v5;
}

- (void)setLayoutState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_context(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v31 = objc_msgSend_archivedLayoutStateInContext_(stateCopy, v23, v27, v28, v29, v30, v22, v24, v25, v26);
  archivedLayoutState = self->_archivedLayoutState;
  self->_archivedLayoutState = v31;
}

- (void)setUiState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_context(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v31 = objc_msgSend_archivedUIStateInContext_(stateCopy, v23, v27, v28, v29, v30, v22, v24, v25, v26);
  archivedUIState = self->_archivedUIState;
  self->_archivedUIState = v31;
}

- (TPViewStateRoot)initWithContext:(id)context layoutState:(id)state uiState:(id)uiState
{
  contextCopy = context;
  stateCopy = state;
  uiStateCopy = uiState;
  v34.receiver = self;
  v34.super_class = TPViewStateRoot;
  v11 = [(TPViewStateRoot *)&v34 initWithContext:contextCopy];
  if (v11)
  {
    v12 = [TPArchivedLayoutState alloc];
    if (stateCopy)
    {
      v21 = objc_msgSend_initWithContext_layoutState_(v12, v13, v17, v18, v19, v20, contextCopy, stateCopy, v15, v16);
    }

    else
    {
      v21 = objc_msgSend_initWithContext_(v12, v13, v17, v18, v19, v20, contextCopy, v14, v15, v16);
    }

    v22 = v21;
    objc_storeStrong(&v11->_archivedLayoutState, v21);

    v23 = [TPArchivedUIState alloc];
    v31 = objc_msgSend_initWithContext_uiState_(v23, v24, v27, v28, v29, v30, contextCopy, uiStateCopy, v25, v26);
    archivedUIState = v11->_archivedUIState;
    v11->_archivedUIState = v31;
  }

  return v11;
}

- (BOOL)isEqualToViewStateRoot:(id)root
{
  rootCopy = root;
  if (objc_msgSend_isEqualToArchivedLayoutState_(self->_archivedLayoutState, v5, v9, v10, v11, v12, rootCopy[8], v6, v7, v8))
  {
    isEqualToArchivedUIState = objc_msgSend_isEqualToArchivedUIState_(self->_archivedUIState, v13, v17, v18, v19, v20, rootCopy[9], v14, v15, v16);
  }

  else
  {
    isEqualToArchivedUIState = 0;
  }

  return isEqualToArchivedUIState;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToViewStateRoot = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToViewStateRoot = objc_msgSend_isEqualToViewStateRoot_(self, v5, v9, v10, v11, v12, equalCopy, v6, v7, v8);
    }

    else
    {
      isEqualToViewStateRoot = 0;
    }
  }

  return isEqualToViewStateRoot;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v13 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v9, v10, v11, v12, off_2812F85B8[58], v6, v7, v8);

  if ((*(v13 + 16) & 1) != 0 && objc_msgSend_hasDocumentVersionUUID(unarchiverCopy, v14, v19, v20, v21, v22, v15, v16, v17, v18))
  {
    v23 = *(v13 + 24);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = sub_275FFDEDC;
    v40[3] = &unk_27A6A8BD0;
    v40[4] = self;
    v24 = unarchiverCopy;
    v26 = objc_opt_class();
    if (v23)
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v25, v27, v28, v29, v30, v23, v26, 0, v40);
    }

    else
    {
      objc_msgSend_readReferenceMessage_class_protocol_completion_(v24, v25, v27, v28, v29, v30, MEMORY[0x277D80A18], v26, 0, v40);
    }
  }

  if ((*(v13 + 16) & 2) != 0)
  {
    v31 = *(v13 + 32);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_275FFDFD8;
    v39[3] = &unk_27A6A8BF8;
    v39[4] = self;
    v32 = unarchiverCopy;
    v33 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v32, v34, v35, v36, v37, v38, v31, v33, 0, v39);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_275FFE27C, off_2812F85B8[58], v5, v6);

  archivedLayoutState = self->_archivedLayoutState;
  if (archivedLayoutState)
  {
    *(v11 + 16) |= 1u;
    v20 = *(v11 + 24);
    if (!v20)
    {
      v21 = *(v11 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277C92D60](v21);
      *(v11 + 24) = v20;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v15, v16, v17, v18, archivedLayoutState, v20, v13, v14);
  }

  archivedUIState = self->_archivedUIState;
  if (archivedUIState)
  {
    *(v11 + 16) |= 2u;
    v23 = *(v11 + 32);
    if (!v23)
    {
      v24 = *(v11 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C92D60](v24);
      *(v11 + 32) = v23;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v12, v15, v16, v17, v18, archivedUIState, v23, v13, v14);
  }
}

@end