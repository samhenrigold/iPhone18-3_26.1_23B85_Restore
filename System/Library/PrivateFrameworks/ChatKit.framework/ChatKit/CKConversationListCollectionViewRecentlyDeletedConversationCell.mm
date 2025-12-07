@interface CKConversationListCollectionViewRecentlyDeletedConversationCell
- (BOOL)hasUnreadMessagesForConversation:(id)conversation;
- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)conversation;
- (id)_attributedStringForRecoverableSummaryLabelWithText:(id)text;
- (unint64_t)_daysUntilDeletion:(id)deletion;
- (void)updateSummaryLabel:(id)label conversation:(id)conversation fastPreview:(BOOL)preview;
@end

@implementation CKConversationListCollectionViewRecentlyDeletedConversationCell

- (void)updateSummaryLabel:(id)label conversation:(id)conversation fastPreview:(BOOL)preview
{
  conversationCopy = conversation;
  labelCopy = label;
  chat = [conversationCopy chat];
  recoverableMessagesCount = [chat recoverableMessagesCount];

  chat2 = [conversationCopy chat];
  isDeletingIncomingMessages = [chat2 isDeletingIncomingMessages];

  if (isDeletingIncomingMessages)
  {
    chat3 = [conversationCopy chat];
    unreadRecoverableMessagesCount = [chat3 unreadRecoverableMessagesCount];
  }

  else
  {
    unreadRecoverableMessagesCount = 0;
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = CKFrameworkBundle(v12);
  v17 = [v16 localizedStringForKey:@"RECENTLY_DELETED_CONVERSATIONLIST_CELL_SUMMARY_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];
  v18 = [v15 localizedStringWithFormat:v17, recoverableMessagesCount, unreadRecoverableMessagesCount];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v21 = @"\u200F";
  }

  else
  {
    v21 = @"\u200E";
  }

  v22 = [(__CFString *)v21 stringByAppendingString:v18];

  v23 = [(CKConversationListCollectionViewRecentlyDeletedConversationCell *)self _attributedStringForRecoverableSummaryLabelWithText:v22];
  [labelCopy setAttributedText:v23];
}

- (id)_attributedStringForRecoverableSummaryLabelWithText:(id)text
{
  textCopy = text;
  v5 = +[CKUIBehavior sharedBehaviors];
  conversationListSummaryFont = [v5 conversationListSummaryFont];

  summaryLabelTextColor = [(CKConversationListCollectionViewConversationCell *)self summaryLabelTextColor];
  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];

  v9 = [v8 length];
  [v8 addAttribute:*MEMORY[0x1E69DB648] value:conversationListSummaryFont range:{0, v9}];
  [v8 addAttribute:*MEMORY[0x1E69DB650] value:summaryLabelTextColor range:{0, v9}];

  return v8;
}

- (unint64_t)_daysUntilDeletion:(id)deletion
{
  chat = [deletion chat];
  earliestRecoverableMessageDeletionDate = [chat earliestRecoverableMessageDeletionDate];
  v5 = [CKUtilities daysUntilRecentlyDeletedDeletionForDate:earliestRecoverableMessageDeletionDate];

  return v5;
}

- (BOOL)shouldAlwaysHideUnreadIndicatorForConversation:(id)conversation
{
  chat = [conversation chat];
  isDeletingIncomingMessages = [chat isDeletingIncomingMessages];

  return isDeletingIncomingMessages ^ 1;
}

- (BOOL)hasUnreadMessagesForConversation:(id)conversation
{
  conversationCopy = conversation;
  chat = [conversationCopy chat];
  if ([chat unreadRecoverableMessagesCount])
  {
    chat2 = [conversationCopy chat];
    isDeletingIncomingMessages = [chat2 isDeletingIncomingMessages];
  }

  else
  {
    isDeletingIncomingMessages = 0;
  }

  return isDeletingIncomingMessages;
}

@end