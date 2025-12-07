@interface IMMessageStatusChatItem
- (BOOL)isFromMe;
- (BOOL)isStewie;
- (NSString)description;
- (NSString)errorText;
- (id)_initWithItem:(id)item statusType:(int64_t)type time:(id)time count:(unint64_t)count expireStatusType:(int64_t)statusType statusItemSequenceNumber:(unint64_t)number;
- (id)_timeStale;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setTimeAdded:(id)added;
@end

@implementation IMMessageStatusChatItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMMessageStatusChatItem;
  v4 = [(IMTranscriptChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[[%@] statusType: %d expireStatusType: %d]", v4, self->_statusType, self->_expireStatusType];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v5 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem statusType:self->_statusType time:self->_time count:self->_count expireStatusType:self->_expireStatusType statusItemSequenceNumber:self->_statusItemSequenceNumber];

  return v5;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v6 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem statusType:self->_statusType time:self->_time count:self->_count expireStatusType:self->_expireStatusType statusItemSequenceNumber:number];

  return v6;
}

- (id)_timeStale
{
  timeStale = self->_timeStale;
  if (!timeStale)
  {
    _item = [(IMChatItem *)self _item];
    v5 = _item;
    if (self->_expireStatusType == 2)
    {
      if (![_item isFromMe])
      {
        timePlayed = [v5 timePlayed];
        if (timePlayed)
        {
          v8 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:timePlayed sinceDate:3.0];
          v9 = self->_timeStale;
          self->_timeStale = v8;
        }

        goto LABEL_8;
      }

      if (self->_timeAdded)
      {
        v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeInterval:self->_timeAdded sinceDate:3.0];
        timePlayed = self->_timeStale;
        self->_timeStale = v6;
LABEL_8:
      }
    }

    timeStale = self->_timeStale;
  }

  return timeStale;
}

- (void)_setTimeAdded:(id)added
{
  addedCopy = added;
  if (self->_timeAdded != addedCopy)
  {
    v7 = addedCopy;
    objc_storeStrong(&self->_timeAdded, added);
    timeStale = self->_timeStale;
    self->_timeStale = 0;

    addedCopy = v7;
  }
}

- (BOOL)isFromMe
{
  _item = [(IMChatItem *)self _item];
  isFromMe = [_item isFromMe];

  return isFromMe;
}

- (BOOL)isStewie
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (!stewieEnabled)
  {
    return 0;
  }

  _item = [(IMChatItem *)self _item];
  message = [_item message];
  subject = [message subject];
  isStewie = [subject isStewie];

  return isStewie;
}

- (NSString)errorText
{
  _item = [(IMChatItem *)self _item];
  message = [_item message];

  error = [message error];
  v5 = error;
  if (error)
  {
    v6 = _NSStringFromIMMessageError([error code]);
    if (!v6)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error %ld", objc_msgSend(v5, "code")];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_initWithItem:(id)item statusType:(int64_t)type time:(id)time count:(unint64_t)count expireStatusType:(int64_t)statusType statusItemSequenceNumber:(unint64_t)number
{
  itemCopy = item;
  timeCopy = time;
  v23.receiver = self;
  v23.super_class = IMMessageStatusChatItem;
  v16 = [(IMChatItem *)&v23 _initWithItem:itemCopy];
  v17 = v16;
  if (v16)
  {
    *(v16 + 7) = type;
    objc_storeStrong(v16 + 8, time);
    v17[10] = count;
    v17[9] = statusType;
    v17[14] = number;
    guid = [itemCopy guid];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:number];
    stringValue = [v19 stringValue];
    v21 = sub_1A83AC604();

    [v17 _setGUID:v21];
  }

  return v17;
}

@end