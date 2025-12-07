@interface IMReplyContextTranscriptPluginChatItem
- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me initialPayload:(id)payload index:(int64_t)index messagePartRange:(_NSRange)range parentChatHasKnownParticipants:(BOOL)self0 chatContext:(id)self1;
@end

@implementation IMReplyContextTranscriptPluginChatItem

- (id)_initWithItem:(id)item parentItem:(id)parentItem replyMessageGUID:(id)d replyIsFromMe:(BOOL)me initialPayload:(id)payload index:(int64_t)index messagePartRange:(_NSRange)range parentChatHasKnownParticipants:(BOOL)self0 chatContext:(id)self1
{
  itemCopy = item;
  parentItemCopy = parentItem;
  obj = d;
  dCopy = d;
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = IMReplyContextTranscriptPluginChatItem;
  participants = [(IMTranscriptPluginChatItem *)&v27 _initWithItem:itemCopy initialPayload:payload index:index messagePartRange:range.location parentChatHasKnownParticipants:range.length, participants];
  if (participants)
  {
    guid = [itemCopy guid];
    v21 = sub_1A83AC604();

    [participants _setGUID:v21];
    [participants setChatContext:contextCopy];
    objc_storeStrong(participants + 29, parentItem);
    *(participants + 216) = me;
    objc_storeStrong(participants + 30, obj);
    objc_storeStrong(participants + 28, item);
  }

  return participants;
}

@end