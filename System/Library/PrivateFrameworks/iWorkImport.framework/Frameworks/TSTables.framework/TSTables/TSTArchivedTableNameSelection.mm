@interface TSTArchivedTableNameSelection
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTArchivedTableNameSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  objc_msgSend_willModify(self, v4, v5, v6);
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  tableNameSelection = self->_tableNameSelection;
  self->_tableNameSelection = v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  v4 = objc_alloc_init(TSTTableNameSelection);
  tableNameSelection = self->_tableNameSelection;
  self->_tableNameSelection = v4;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, sub_2214D522C, off_2812E4498[152]);
}

@end