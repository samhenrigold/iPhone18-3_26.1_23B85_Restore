@interface IMTranscriptPluginStatusChatItem
- (id)_initWithItem:(id)item dataSource:(id)source statusItemSequenceNumber:(unint64_t)number;
- (id)copyWithStatusItemSequenceNumber:(unint64_t)number;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IMTranscriptPluginStatusChatItem

- (id)_initWithItem:(id)item dataSource:(id)source statusItemSequenceNumber:(unint64_t)number
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = IMTranscriptPluginStatusChatItem;
  v10 = [(IMMessageStatusChatItem *)&v13 _initWithItem:item statusType:16 time:0 count:0 expireStatusType:0 statusItemSequenceNumber:number];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 15, source);
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v5 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem dataSource:self->_dataSource statusItemSequenceNumber:{-[IMMessageStatusChatItem statusItemSequenceNumber](self, "statusItemSequenceNumber")}];

  return v5;
}

- (id)copyWithStatusItemSequenceNumber:(unint64_t)number
{
  messageItem = [(IMMessageStatusChatItem *)self messageItem];
  v6 = [objc_alloc(objc_opt_class()) _initWithItem:messageItem dataSource:self->_dataSource statusItemSequenceNumber:number];

  return v6;
}

@end