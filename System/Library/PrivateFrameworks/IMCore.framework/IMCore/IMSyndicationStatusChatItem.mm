@interface IMSyndicationStatusChatItem
- (BOOL)isEqual:(id)equal;
- (id)_initWithItem:(id)item withSyndicationStatus:(int64_t)status statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMSyndicationStatusChatItem

- (id)_initWithItem:(id)item withSyndicationStatus:(int64_t)status statusItemSequenceNumber:(unint64_t)number
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = IMSyndicationStatusChatItem;
  v9 = [(IMMessageStatusChatItem *)&v16 _initWithItem:itemCopy statusType:21 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v10 = v9;
  if (v9)
  {
    v9[18] = status;
    *(v9 + 121) = [itemCopy wasDetectedAsSWYSpam];
    swyAppName = [itemCopy swyAppName];
    v12 = v10[16];
    v10[16] = swyAppName;

    swyBundleID = [itemCopy swyBundleID];
    v14 = v10[17];
    v10[17] = swyBundleID;

    *(v10 + 120) = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      syndicationStatus = self->_syndicationStatus;
      v6 = syndicationStatus == [(IMSyndicationStatusChatItem *)equalCopy syndicationStatus];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = IMSyndicationStatusChatItem;
      v6 = [(IMTranscriptChatItem *)&v8 isEqual:equalCopy];
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v5 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem withSyndicationStatus:self->_syndicationStatus statusItemSequenceNumber:{-[IMMessageStatusChatItem statusItemSequenceNumber](self, "statusItemSequenceNumber")}];

  return v5;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v6 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem withSyndicationStatus:self->_syndicationStatus statusItemSequenceNumber:number];

  return v6;
}

@end