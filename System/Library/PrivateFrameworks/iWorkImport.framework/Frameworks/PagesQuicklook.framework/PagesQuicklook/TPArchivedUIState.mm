@interface TPArchivedUIState
- (BOOL)isEqual:(id)equal;
- (TPArchivedUIState)initWithContext:(id)context uiState:(id)state;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setUiState:(id)state;
@end

@implementation TPArchivedUIState

- (void)setUiState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_copy(stateCopy, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  uiState = self->_uiState;
  self->_uiState = v22;
}

- (TPArchivedUIState)initWithContext:(id)context uiState:(id)state
{
  contextCopy = context;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = TPArchivedUIState;
  v13 = [(TPArchivedUIState *)&v21 initWithContext:contextCopy];
  if (v13)
  {
    v18 = objc_msgSend_copy(stateCopy, v8, v14, v15, v16, v17, v9, v10, v11, v12);
    uiState = v13->_uiState;
    v13->_uiState = v18;
  }

  return v13;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v8, v9, v10, v11, off_2812F85B8[56], v5, v6, v7);

  v13 = [TPUIState alloc];
  v21 = objc_msgSend_initWithArchive_unarchiver_(v13, v14, v17, v18, v19, v20, v12, unarchiverCopy, v15, v16);
  uiState = self->_uiState;
  self->_uiState = v21;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_275FEA778, off_2812F85B8[56], v5, v6);

  uiState = self->_uiState;
  v22 = objc_msgSend_context(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  objc_msgSend_saveToArchive_archiver_context_(uiState, v23, v25, v26, v27, v28, v11, archiverCopy, v22, v24);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArchivedUIState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToArchivedUIState = objc_msgSend_isEqualToArchivedUIState_(self, v5, v9, v10, v11, v12, equalCopy, v6, v7, v8);
    }

    else
    {
      isEqualToArchivedUIState = 0;
    }
  }

  return isEqualToArchivedUIState;
}

@end