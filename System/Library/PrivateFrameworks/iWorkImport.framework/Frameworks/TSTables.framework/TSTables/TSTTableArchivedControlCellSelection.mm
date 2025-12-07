@interface TSTTableArchivedControlCellSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTTableArchivedControlCellSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  objc_msgSend_willModify(self, v4, v5, v6);
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  controlCellSelection = self->_controlCellSelection;
  self->_controlCellSelection = v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  v4 = [TSTTableControlCellSelection alloc];
  v7 = objc_msgSend_initWithKeyboardShown_(v4, v5, 0, v6);
  controlCellSelection = self->_controlCellSelection;
  self->_controlCellSelection = v7;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, sub_22123FA78, off_2812E4498[148]);
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