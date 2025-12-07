@interface IMAttachment
- (IMAttachment)initWithPath:(id)path guid:(id)guid createdDate:(id)date isSticker:(BOOL)sticker isTransferComplete:(BOOL)complete;
- (NSString)path;
- (id)description;
- (id)fileTransfer;
@end

@implementation IMAttachment

- (IMAttachment)initWithPath:(id)path guid:(id)guid createdDate:(id)date isSticker:(BOOL)sticker isTransferComplete:(BOOL)complete
{
  pathCopy = path;
  guidCopy = guid;
  dateCopy = date;
  v21.receiver = self;
  v21.super_class = IMAttachment;
  v15 = [(IMAttachment *)&v21 init];
  if (v15)
  {
    v16 = [pathCopy copy];
    path = v15->_path;
    v15->_path = v16;

    v18 = [guidCopy copy];
    guid = v15->_guid;
    v15->_guid = v18;

    v15->_isSticker = sticker;
    objc_storeStrong(&v15->_createdDate, date);
    v15->_isTransferComplete = complete;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = IMAttachment;
  v4 = [(IMAttachment *)&v10 description];
  guid = self->_guid;
  path = [(IMAttachment *)self path];
  fileTransfer = [(IMAttachment *)self fileTransfer];
  v8 = [v3 stringWithFormat:@"%@ - guid: %@ path: %@ fileTransfer: %@, createdDate = %@, isSticker = %d", v4, guid, path, fileTransfer, self->_createdDate, self->_isSticker];

  return v8;
}

- (NSString)path
{
  path = self->_path;
  if (path)
  {
    localPath = path;
  }

  else
  {
    fileTransfer = [(IMAttachment *)self fileTransfer];
    localPath = [fileTransfer localPath];
  }

  return localPath;
}

- (id)fileTransfer
{
  v3 = +[IMFileTransferCenter sharedInstance];
  v4 = [v3 transferForGUID:self->_guid];

  return v4;
}

@end