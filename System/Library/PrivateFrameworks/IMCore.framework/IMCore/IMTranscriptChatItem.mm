@interface IMTranscriptChatItem
- (BOOL)isContiguousWithChatItem:(id)item;
- (NSString)description;
- (NSString)serviceName;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setGUID:(id)d;
@end

@implementation IMTranscriptChatItem

- (NSString)serviceName
{
  _item = [(IMChatItem *)self _item];
  service = [_item service];

  return service;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = IMTranscriptChatItem;
  v4 = [(IMChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (%@)", v4, self->_guid];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  v6 = [v4 _initWithItem:_item];

  return v6;
}

- (BOOL)isContiguousWithChatItem:(id)item
{
  itemCopy = item;
  v5 = &selRef_setCallProviderManager_;
  if (![(IMTranscriptChatItem *)self conformsToProtocol:&unk_1F1BB2640])
  {
    goto LABEL_41;
  }

  if ([(IMChatItem *)self isEditedMessageHistory])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }
  }

  if (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (-[IMTranscriptChatItem messageHighlightChatItem](self, "messageHighlightChatItem"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7) || ![itemCopy conformsToProtocol:&unk_1F1BB2640] || -[IMChatItem isReplyContextPreview](self, "isReplyContextPreview") || (objc_msgSend(itemCopy, "isReplyContextPreview") & 1) != 0 || -[IMChatItem itemIsThreadOriginator](self, "itemIsThreadOriginator") || (objc_msgSend(itemCopy, "itemIsThreadOriginator"))
  {
LABEL_41:
    v6 = 0;
    goto LABEL_42;
  }

  _item = [(IMChatItem *)self _item];
  isReply = [_item isReply];
  v10 = isReply;
  if (isReply && ([itemCopy _item], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "isReply")))
  {
  }

  else
  {
    _item2 = [(IMChatItem *)self _item];
    if ([_item2 isReply])
    {

      if (v10)
      {
      }

      goto LABEL_41;
    }

    _item3 = [itemCopy _item];
    isReply2 = [_item3 isReply];

    if (v10)
    {
    }

    if (isReply2)
    {
      goto LABEL_41;
    }
  }

  _item4 = [(IMChatItem *)self _item];
  _item5 = [itemCopy _item];

  if (_item4 != _item5)
  {
    isEditedMessageHistory = [(IMChatItem *)self isEditedMessageHistory];
    if (isEditedMessageHistory == [itemCopy isEditedMessageHistory])
    {
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isGroupTypingIndicatorsEnabled = [mEMORY[0x1E69A8070] isGroupTypingIndicatorsEnabled];

      if (!isGroupTypingIndicatorsEnabled || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0)))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            selfCopy = self;
            v20 = itemCopy;
            requiresSiriAttribution = [(IMTranscriptChatItem *)selfCopy requiresSiriAttribution];
            v22 = requiresSiriAttribution ^ [v20 requiresSiriAttribution];
            if ((v22 & 1) != 0 || -[IMTranscriptChatItem requiresFaceTimeAttribution](selfCopy, "requiresFaceTimeAttribution") && [v20 requiresFaceTimeAttribution] && (v23 = -[IMTranscriptChatItem isFromMe](selfCopy, "isFromMe"), v23 == objc_msgSend(v20, "isFromMe")))
            {
              v6 = v22 ^ 1;

              goto LABEL_42;
            }
          }
        }

        isFromMe = [(IMTranscriptChatItem *)self isFromMe];
        if (isFromMe == [itemCopy isFromMe])
        {
          time = [itemCopy time];
          time2 = [(IMTranscriptChatItem *)self time];
          [time timeIntervalSinceDate:time2];
          v28 = fabs(v27);

          if (v28 <= 60.0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v6 = objc_opt_isKindOfClass() ^ 1;
              goto LABEL_42;
            }
          }
        }
      }
    }

    goto LABEL_41;
  }

LABEL_4:
  v6 = 1;
LABEL_42:

  return v6 & 1;
}

- (void)_setGUID:(id)d
{
  dCopy = d;
  if (self->_guid != dCopy)
  {
    v6 = dCopy;
    v5 = [(NSString *)dCopy copy];

    objc_storeStrong(&self->_guid, v5);
    dCopy = v5;
  }
}

@end