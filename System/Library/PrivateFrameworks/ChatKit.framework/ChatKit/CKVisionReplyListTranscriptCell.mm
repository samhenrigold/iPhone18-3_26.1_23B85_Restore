@interface CKVisionReplyListTranscriptCell
- (CKVisionReplyListTranscriptCell)initWithFrame:(CGRect)frame;
- (CKVisionReplyListTranscriptCellDelegate)delegate;
- (void)layoutSubviewsForAlignmentContents;
- (void)replyListButtonDidSelectReply:(id)reply sourceView:(id)view;
- (void)setReplies:(id)replies;
@end

@implementation CKVisionReplyListTranscriptCell

- (CKVisionReplyListTranscriptCell)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKVisionReplyListTranscriptCell;
  v3 = [(CKTranscriptCell *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc_init(_TtC7ChatKit33QuickReplyButtonListConfiguration);
  configuration = v3->_configuration;
  v3->_configuration = v4;

  return v3;
}

- (void)setReplies:(id)replies
{
  repliesCopy = replies;
  if (![repliesCopy isEqual:self->_replies] || ((-[UIView bounds](self->_listView, "bounds"), v6 = v5, v8 = v7, -[CKEditableCollectionViewCell contentAlignmentRect](self, "contentAlignmentRect"), v6 == v10) ? (v11 = v8 == v9) : (v11 = 0), !v11))
  {
    objc_storeStrong(&self->_replies, replies);
    [(UIView *)self->_listView removeFromSuperview];
    listView = self->_listView;
    self->_listView = 0;

    replies = self->_replies;
    if (replies)
    {
      configuration = [(CKVisionReplyListTranscriptCell *)self configuration];
      v15 = [_TtC7ChatKit26QuickReplyButtonListHelper makeListView:replies delegate:self configurationObject:configuration];
      v16 = self->_listView;
      self->_listView = v15;

      contentView = [(CKEditableCollectionViewCell *)self contentView];
      [contentView addSubview:self->_listView];

      [(CKEditableCollectionViewCell *)self contentAlignmentRect];
      [(UIView *)self->_listView setFrame:?];
    }
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v13.receiver = self;
  v13.super_class = CKVisionReplyListTranscriptCell;
  layoutSubviewsForAlignmentContents = [(CKEditableCollectionViewCell *)&v13 layoutSubviewsForAlignmentContents];
  if (CKIsRunningInMessagesNotificationExtension(layoutSubviewsForAlignmentContents))
  {
    contentView = [(CKEditableCollectionViewCell *)self contentView];
    [contentView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(CKEditableCollectionViewCell *)self setContentAlignmentRect:v6 + 0.0, v8 + 0.0, v10 + -8.0, v12];
  }

  [(CKEditableCollectionViewCell *)self contentAlignmentRect];
  [(UIView *)self->_listView setFrame:?];
}

- (void)replyListButtonDidSelectReply:(id)reply sourceView:(id)view
{
  viewCopy = view;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained replyListCell:self didSelectReply:replyCopy sourceView:viewCopy];
}

- (CKVisionReplyListTranscriptCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end