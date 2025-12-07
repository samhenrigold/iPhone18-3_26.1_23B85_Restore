@interface TPArchivedCanvasSelection
- (TPArchivedCanvasSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TPArchivedCanvasSelection

- (TPArchivedCanvasSelection)initWithContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = TPArchivedCanvasSelection;
  v10 = [(TPArchivedCanvasSelection *)&v18 initWithContext:contextCopy];
  if (v10)
  {
    v15 = objc_msgSend_emptySelection(TPCanvasSelection, v5, v11, v12, v13, v14, v6, v7, v8, v9);
    selection = v10->_selection;
    v10->_selection = v15;
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v8, v9, v10, v11, off_2812F85B8[52], v5, v6, v7);

  v13 = [TPCanvasSelection alloc];
  v21 = objc_msgSend_initWithArchive_unarchiver_(v13, v14, v17, v18, v19, v20, v12, unarchiverCopy, v15, v16);
  selection = self->_selection;
  self->_selection = v21;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_275FDE4F4, off_2812F85B8[52], v5, v6);

  v21 = objc_msgSend_selection(self, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  objc_msgSend_saveToArchive_archiver_(v21, v22, v25, v26, v27, v28, v11, archiverCopy, v23, v24);
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  v5 = TSUDynamicCast();
  if (v5)
  {
    v6 = [TPCanvasSelection alloc];
    v16 = objc_msgSend_infos(v5, v7, v12, v13, v14, v15, v8, v9, v10, v11);
    v25 = objc_msgSend_initWithInfos_(v6, v17, v21, v22, v23, v24, v16, v18, v19, v20);

    selectionCopy = v25;
  }

  objc_msgSend_willModify(self, v26, v31, v32, v33, v34, v27, v28, v29, v30);
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end