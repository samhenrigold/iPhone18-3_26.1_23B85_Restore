@interface TSTCellDiffArray
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellDiffArray

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2211D7854, off_2812E4498[124]);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211D76DC;
  v9[3] = &unk_27845FEF0;
  v7 = archiverCopy;
  v10 = v7;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, v6, v9);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[124], v6);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D7810;
  v10[3] = &unk_27845FF18;
  v8 = unarchiverCopy;
  v11 = v8;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v8, v9, 1, v7, v10);
}

@end