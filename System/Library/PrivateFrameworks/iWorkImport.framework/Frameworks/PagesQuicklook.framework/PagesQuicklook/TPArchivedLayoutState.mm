@interface TPArchivedLayoutState
- (BOOL)isEqual:(id)equal;
- (TPArchivedLayoutState)initWithContext:(id)context layoutState:(id)state;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setLayoutState:(id)state;
@end

@implementation TPArchivedLayoutState

- (void)setLayoutState:(id)state
{
  stateCopy = state;
  objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v22 = objc_msgSend_copy(stateCopy, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  layoutState = self->_layoutState;
  self->_layoutState = v22;
}

- (TPArchivedLayoutState)initWithContext:(id)context layoutState:(id)state
{
  contextCopy = context;
  stateCopy = state;
  v21.receiver = self;
  v21.super_class = TPArchivedLayoutState;
  v13 = [(TPArchivedLayoutState *)&v21 initWithContext:contextCopy];
  if (v13)
  {
    v18 = objc_msgSend_copy(stateCopy, v8, v14, v15, v16, v17, v9, v10, v11, v12);
    layoutState = v13->_layoutState;
    v13->_layoutState = v18;
  }

  return v13;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v8, v9, v10, v11, off_2812F85B8[50], v5, v6, v7);

  v13 = [TPLayoutState alloc];
  v21 = objc_msgSend_initWithArchive_unarchiver_(v13, v14, v17, v18, v19, v20, v12, unarchiverCopy, v15, v16);
  layoutState = self->_layoutState;
  self->_layoutState = v21;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_2760055B4, off_2812F85B8[50], v5, v6);

  layoutState = self->_layoutState;
  v22 = objc_msgSend_context(self, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  objc_msgSend_saveToArchive_archiver_context_(layoutState, v23, v25, v26, v27, v28, v11, archiverCopy, v22, v24);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToArchivedLayoutState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToArchivedLayoutState = objc_msgSend_isEqualToArchivedLayoutState_(self, v5, v9, v10, v11, v12, equalCopy, v6, v7, v8);
    }

    else
    {
      isEqualToArchivedLayoutState = 0;
    }
  }

  return isEqualToArchivedLayoutState;
}

@end