@interface IMMessageAttributionChatItem
- (BOOL)isEqual:(id)equal;
- (id)_initWithItem:(id)item attributionInfo:(id)info attributionType:(int64_t)type showsLearnMoreLink:(BOOL)link statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMMessageAttributionChatItem

- (id)_initWithItem:(id)item attributionInfo:(id)info attributionType:(int64_t)type showsLearnMoreLink:(BOOL)link statusItemSequenceNumber:(unint64_t)number
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = IMMessageAttributionChatItem;
  v14 = [(IMMessageStatusChatItem *)&v17 _initWithItem:item statusType:14 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 16, info);
    v15[17] = type;
    *(v15 + 120) = link;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      attributionType = [(IMMessageAttributionChatItem *)self attributionType];
      if (attributionType != [(IMMessageAttributionChatItem *)v6 attributionType]|| (v8 = [(IMMessageAttributionChatItem *)self showsLearnMoreLink], v8 != [(IMMessageAttributionChatItem *)v6 showsLearnMoreLink]))
      {
        v9 = 0;
LABEL_15:

        goto LABEL_16;
      }

      attributionInfo = [(IMMessageAttributionChatItem *)self attributionInfo];
      if (attributionInfo || ([(IMMessageAttributionChatItem *)v6 attributionInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        attributionInfo2 = [(IMMessageAttributionChatItem *)self attributionInfo];
        attributionInfo3 = [(IMMessageAttributionChatItem *)v6 attributionInfo];
        v9 = [attributionInfo2 isEqual:attributionInfo3];

        if (attributionInfo)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_14;
    }

    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v5 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem attributionInfo:self->_attributionInfo attributionType:self->_attributionType showsLearnMoreLink:self->_showsLearnMoreLink statusItemSequenceNumber:{-[IMMessageStatusChatItem statusItemSequenceNumber](self, "statusItemSequenceNumber")}];

  return v5;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v6 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem attributionInfo:self->_attributionInfo attributionType:self->_attributionType showsLearnMoreLink:self->_showsLearnMoreLink statusItemSequenceNumber:number];

  return v6;
}

@end