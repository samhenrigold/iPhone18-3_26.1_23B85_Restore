@interface TSTArchivedRdar39989167CellSelection
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TSTArchivedRdar39989167CellSelection

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[144], v5);

  v7 = [TSTCellSelection alloc];
  v9 = objc_msgSend_initWithRdar39989167Archive_unarchiver_(v7, v8, v6, unarchiverCopy);
  objc_msgSend_setSelection_(self, v10, v9, v11);
}

@end