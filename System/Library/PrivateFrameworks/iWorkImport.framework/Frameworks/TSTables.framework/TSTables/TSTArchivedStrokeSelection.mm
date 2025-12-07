@interface TSTArchivedStrokeSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTArchivedStrokeSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTArchivedStrokeSelection setSelection:]", v6);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTArchivedStrokeSelection.mm", v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v15, v9, v12, 27, 0, "Wrong type of class %@ (expected TSTStrokeSelection)", v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    }
  }

  objc_msgSend_willModify(self, v4, v5, v6);
  mStrokeSelection = self->mStrokeSelection;
  self->mStrokeSelection = selectionCopy;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[146], v5);

  v7 = [TSTStrokeSelection alloc];
  v9 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v6, unarchiverCopy);
  objc_msgSend_setSelection_(self, v10, v9, v11);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221445348, off_2812E4498[146]);

  v9 = objc_msgSend_selection(self, v6, v7, v8);
  objc_msgSend_saveToArchive_archiver_(v9, v10, v5, archiverCopy);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v9 = objc_msgSend_selection(self, v6, v7, v8);
  v12 = objc_msgSend_stringWithFormat_(v3, v10, @"<%@: %p> %@", v11, v5, self, v9);

  return v12;
}

@end