@interface EMMessageTransferAllAction
- (EMMessageTransferAllAction)initWithCoder:(id)coder;
- (EMMessageTransferAllAction)initWithMailboxes:(id)mailboxes messageListItemsToExclude:(id)exclude destinationMailbox:(id)mailbox copyMessages:(BOOL)messages origin:(int64_t)origin actor:(int64_t)actor;
- (EMMessageTransferAllAction)initWithMailboxes:(id)mailboxes messageListItemsToExclude:(id)exclude specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages origin:(int64_t)origin actor:(int64_t)actor;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EMMessageTransferAllAction

- (EMMessageTransferAllAction)initWithMailboxes:(id)mailboxes messageListItemsToExclude:(id)exclude destinationMailbox:(id)mailbox copyMessages:(BOOL)messages origin:(int64_t)origin actor:(int64_t)actor
{
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  excludeCopy = exclude;
  mailboxCopy = mailbox;
  v21.receiver = self;
  v21.super_class = EMMessageTransferAllAction;
  v17 = [(EMMessageTransferAction *)&v21 initWithMessageListItems:excludeCopy origin:origin actor:actor destinationMailbox:mailboxCopy copyMessages:messagesCopy];
  if (v17)
  {
    v18 = [mailboxesCopy ef_mapSelector:sel_objectID];
    mailboxObjectIDs = v17->_mailboxObjectIDs;
    v17->_mailboxObjectIDs = v18;
  }

  return v17;
}

- (EMMessageTransferAllAction)initWithMailboxes:(id)mailboxes messageListItemsToExclude:(id)exclude specialDestinationMailboxType:(int64_t)type flagChange:(id)change copyMessages:(BOOL)messages origin:(int64_t)origin actor:(int64_t)actor
{
  messagesCopy = messages;
  mailboxesCopy = mailboxes;
  excludeCopy = exclude;
  changeCopy = change;
  v22.receiver = self;
  v22.super_class = EMMessageTransferAllAction;
  v18 = [(EMMessageTransferAction *)&v22 initWithMessageListItems:excludeCopy origin:origin actor:actor specialDestinationMailboxType:type flagChange:changeCopy copyMessages:messagesCopy];
  if (v18)
  {
    v19 = [mailboxesCopy ef_map:&__block_literal_global_36];
    mailboxObjectIDs = v18->_mailboxObjectIDs;
    v18->_mailboxObjectIDs = v19;
  }

  return v18;
}

id __141__EMMessageTransferAllAction_initWithMailboxes_messageListItemsToExclude_specialDestinationMailboxType_flagChange_copyMessages_origin_actor___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectID];

  return v2;
}

- (EMMessageTransferAllAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EMMessageTransferAllAction;
  v5 = [(EMMessageTransferAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"EFPropertyKey_mailboxObjectIDs"];
    mailboxObjectIDs = v5->_mailboxObjectIDs;
    v5->_mailboxObjectIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = EMMessageTransferAllAction;
  [(EMMessageTransferAction *)&v6 encodeWithCoder:coderCopy];
  mailboxObjectIDs = [(EMMessageTransferAllAction *)self mailboxObjectIDs];
  [coderCopy encodeObject:mailboxObjectIDs forKey:@"EFPropertyKey_mailboxObjectIDs"];
}

@end