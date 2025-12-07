@interface IMMessageRetractionChatItem
- (BOOL)canRetryFailedRetraction;
- (IMMessage)message;
- (NSString)messageGUID;
- (NSString)threadIdentifier;
- (id)_initWithItem:(id)item partIndex:(int64_t)index isFailedRetraction:(BOOL)retraction retractionUnsupportedByHandles:(id)handles sender:(id)sender isFromMe:(BOOL)me;
- (unint64_t)replyCount;
@end

@implementation IMMessageRetractionChatItem

- (id)_initWithItem:(id)item partIndex:(int64_t)index isFailedRetraction:(BOOL)retraction retractionUnsupportedByHandles:(id)handles sender:(id)sender isFromMe:(BOOL)me
{
  itemCopy = item;
  handlesCopy = handles;
  senderCopy = sender;
  v32.receiver = self;
  v32.super_class = IMMessageRetractionChatItem;
  v17 = [(IMChatItem *)&v32 _initWithItem:itemCopy];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x1E696AEC0]);
    guid = [itemCopy guid];
    obj = sender;
    v20 = [v18 initWithFormat:@"p:%ld/%@", index, guid];

    meCopy = me;
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17[10], "count")}];
    [v21 stringValue];
    indexCopy = index;
    v23 = handlesCopy;
    v25 = v24 = senderCopy;
    v26 = sub_1A83AC604();

    senderCopy = v24;
    handlesCopy = v23;

    [v17 _setGUID:v26];
    v17[9] = indexCopy;
    objc_storeStrong(v17 + 8, obj);
    *(v17 + 56) = meCopy;
    *(v17 + 57) = retraction;
    v27 = [v23 copy];
    v28 = v17[10];
    v17[10] = v27;
  }

  return v17;
}

- (BOOL)canRetryFailedRetraction
{
  _retractedMessageItem = [(IMMessageRetractionChatItem *)self _retractedMessageItem];
  canRetryFailedRetraction = [_retractedMessageItem canRetryFailedRetraction];

  return canRetryFailedRetraction;
}

- (IMMessage)message
{
  _retractedMessageItem = [(IMMessageRetractionChatItem *)self _retractedMessageItem];
  message = [_retractedMessageItem message];

  return message;
}

- (NSString)messageGUID
{
  _retractedMessageItem = [(IMMessageRetractionChatItem *)self _retractedMessageItem];
  guid = [_retractedMessageItem guid];

  return guid;
}

- (unint64_t)replyCount
{
  _retractedMessageItem = [(IMMessageRetractionChatItem *)self _retractedMessageItem];
  partIndex = [(IMMessageRetractionChatItem *)self partIndex];
  replyCountsByPart = [_retractedMessageItem replyCountsByPart];
  if ([replyCountsByPart count])
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_1A8259B40;
    v13 = sub_1A825AECC;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A82E3B08;
    v8[3] = &unk_1E7811A98;
    v8[4] = &v9;
    v8[5] = partIndex;
    [replyCountsByPart enumerateKeysAndObjectsUsingBlock:v8];
    unsignedIntegerValue = [v10[5] unsignedIntegerValue];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (NSString)threadIdentifier
{
  _retractedMessageItem = [(IMMessageRetractionChatItem *)self _retractedMessageItem];
  threadIdentifier = [_retractedMessageItem threadIdentifier];

  return threadIdentifier;
}

@end