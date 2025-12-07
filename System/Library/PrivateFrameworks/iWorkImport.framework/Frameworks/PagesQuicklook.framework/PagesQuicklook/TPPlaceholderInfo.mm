@interface TPPlaceholderInfo
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TPPlaceholderInfo

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v13 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v9, v10, v11, v12, off_2812F85B8[6], v6, v7, v8);

  if (*(v13 + 24))
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = MEMORY[0x277D81070];
  }

  v15.receiver = self;
  v15.super_class = TPPlaceholderInfo;
  [(TPPlaceholderInfo *)&v15 loadFromArchive:v14 unarchiver:unarchiverCopy];
}

@end