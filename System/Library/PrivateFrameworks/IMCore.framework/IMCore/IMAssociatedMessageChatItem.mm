@interface IMAssociatedMessageChatItem
- (BOOL)_isRecentForTapbackBackgroundAnimationWithinTimeInterval:(double)interval;
- (BOOL)failed;
- (BOOL)isFromMe;
- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor;
- (NSDate)time;
- (NSDictionary)messageSummaryInfo;
- (NSString)associatedMessageEmoji;
- (NSString)associatedMessageGUID;
- (_NSRange)associatedMessageRange;
- (id)_initWithItem:(id)item sender:(id)sender;
- (id)copyWithZone:(_NSZone *)zone;
- (id)message;
- (int64_t)associatedMessageType;
- (void)_setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor;
@end

@implementation IMAssociatedMessageChatItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMAssociatedMessageChatItem alloc];
  _item = [(IMChatItem *)self _item];
  sender = [(IMAssociatedMessageChatItem *)self sender];
  v7 = [(IMAssociatedMessageChatItem *)v4 _initWithItem:_item sender:sender];

  v9 = *&self->_geometryDescriptor.parentPreviewWidth;
  v8 = *&self->_geometryDescriptor.yScalar;
  v10 = *&self->_geometryDescriptor.layoutIntent;
  *(v7 + 152) = self->_geometryDescriptor.rotation;
  *(v7 + 104) = v10;
  *(v7 + 120) = v9;
  *(v7 + 136) = v8;
  objc_storeStrong((v7 + 64), self->_sender);
  objc_storeStrong((v7 + 72), self->_tapback);
  objc_storeStrong((v7 + 80), self->_emojiSticker);
  return v7;
}

- (id)_initWithItem:(id)item sender:(id)sender
{
  itemCopy = item;
  senderCopy = sender;
  v8 = [(IMChatItem *)self _initWithItem:itemCopy];
  if (v8)
  {
    guid = [itemCopy guid];
    v10 = sub_1A83AC604();

    [v8 _setGUID:v10];
    objc_storeStrong(v8 + 8, sender);
  }

  return v8;
}

- (id)message
{
  _item = [(IMChatItem *)self _item];
  message = [_item message];

  return message;
}

- (NSDate)time
{
  _item = [(IMChatItem *)self _item];
  time = [_item time];

  return time;
}

- (BOOL)isFromMe
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  isFromMe = [_imAssociatedMessageItem isFromMe];

  return isFromMe;
}

- (NSString)associatedMessageGUID
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  associatedMessageGUID = [_imAssociatedMessageItem associatedMessageGUID];

  return associatedMessageGUID;
}

- (int64_t)associatedMessageType
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  associatedMessageType = [_imAssociatedMessageItem associatedMessageType];

  return associatedMessageType;
}

- (_NSRange)associatedMessageRange
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  associatedMessageRange = [_imAssociatedMessageItem associatedMessageRange];
  v5 = v4;

  v6 = associatedMessageRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (NSString)associatedMessageEmoji
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  associatedMessageEmoji = [_imAssociatedMessageItem associatedMessageEmoji];

  return associatedMessageEmoji;
}

- (BOOL)failed
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  v3 = [_imAssociatedMessageItem errorCode] != 0;

  return v3;
}

- (NSDictionary)messageSummaryInfo
{
  _imAssociatedMessageItem = [(IMAssociatedMessageChatItem *)self _imAssociatedMessageItem];
  messageSummaryInfo = [_imAssociatedMessageItem messageSummaryInfo];

  return messageSummaryInfo;
}

- (void)_setGeometryDescriptor:(IMAssociatedMessageGeometryDescriptor *)descriptor
{
  v4 = *&descriptor->parentPreviewWidth;
  v3 = *&descriptor->yScalar;
  v5 = *&descriptor->layoutIntent;
  self->_geometryDescriptor.rotation = descriptor->rotation;
  *&self->_geometryDescriptor.parentPreviewWidth = v4;
  *&self->_geometryDescriptor.yScalar = v3;
  *&self->_geometryDescriptor.layoutIntent = v5;
}

- (BOOL)_isRecentForTapbackBackgroundAnimationWithinTimeInterval:(double)interval
{
  time = [(IMAssociatedMessageChatItem *)self time];
  messageSummaryInfo = [(IMAssociatedMessageChatItem *)self messageSummaryInfo];
  v7 = messageSummaryInfo;
  if (messageSummaryInfo)
  {
    v8 = [messageSummaryInfo objectForKeyedSubscript:*MEMORY[0x1E69A7248]];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;

        time = v9;
      }
    }
  }

  v10 = [MEMORY[0x1E695DF00] now];
  [v10 timeIntervalSinceDate:time];
  v12 = v11 < interval;

  return v12;
}

- (IMAssociatedMessageGeometryDescriptor)geometryDescriptor
{
  v3 = *&self[2].associatedLayoutIntent;
  *&retstr->layoutIntent = *&self[1].rotation;
  *&retstr->parentPreviewWidth = v3;
  *&retstr->yScalar = *&self[2].xScalar;
  retstr->rotation = self[2].scale;
  return self;
}

@end