@interface IMSenderChatItem
- (id)_initWithItem:(id)item handle:(id)handle;
- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name mergedBusinessThread:(BOOL)thread;
- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name transcriptSharingMessageType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSenderChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isTranscriptSharingEnabled = [mEMORY[0x1E69A8070] isTranscriptSharingEnabled];

  v6 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  handle = self->_handle;
  if (isTranscriptSharingEnabled)
  {
    v9 = [v6 _initWithItem:_item handle:handle displayName:self->_displayName transcriptSharingMessageType:self->_transcriptSharingMessageType];
  }

  else
  {
    v9 = [v6 _initWithItem:_item handle:handle];
  }

  v10 = v9;

  return v10;
}

- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name transcriptSharingMessageType:(int64_t)type
{
  itemCopy = item;
  handleCopy = handle;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = IMSenderChatItem;
  v13 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, handle);
    objc_storeStrong(v14 + 10, name);
    v14[9] = type;
    v15 = [handleCopy ID];
    guid = [itemCopy guid];
    v17 = sub_1A83AC604();

    [v14 _setGUID:v17];
  }

  return v14;
}

- (id)_initWithItem:(id)item handle:(id)handle displayName:(id)name mergedBusinessThread:(BOOL)thread
{
  itemCopy = item;
  handleCopy = handle;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = IMSenderChatItem;
  v13 = [(IMChatItem *)&v19 _initWithItem:itemCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, handle);
    objc_storeStrong(v14 + 10, name);
    *(v14 + 56) = thread;
    v15 = [handleCopy ID];
    guid = [itemCopy guid];
    v17 = sub_1A83AC604();

    [v14 _setGUID:v17];
  }

  return v14;
}

- (id)_initWithItem:(id)item handle:(id)handle
{
  itemCopy = item;
  handleCopy = handle;
  v14.receiver = self;
  v14.super_class = IMSenderChatItem;
  v8 = [(IMChatItem *)&v14 _initWithItem:itemCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 8, handle);
    v10 = [handleCopy ID];
    guid = [itemCopy guid];
    v12 = sub_1A83AC604();

    [v9 _setGUID:v12];
  }

  return v9;
}

@end