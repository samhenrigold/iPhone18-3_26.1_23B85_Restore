@interface CKScheduledSectionDateCell
+ (id)createStampLabelView;
- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKScheduledSectionDateCell)initWithFrame:(CGRect)frame;
- (CKScheduledSectionDateCellDelegate)delegate;
- (id)_deferredMenuForEditScheduleButton;
- (id)scheduledSectionDateStringWithControlState:(unint64_t)state;
- (void)_updateEditScheduleButtonAttributedTitleForControlState:(unint64_t)state;
- (void)addFilter:(id)filter;
- (void)clearFilters;
- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve;
- (void)handleDeleteAllAction:(id)action;
- (void)handleEditDateAction:(id)action;
- (void)handleSendNowAction:(id)action;
- (void)layoutSubviewsForAlignmentContents;
- (void)setDisplayEditButton:(BOOL)button;
- (void)setTimeString:(id)string;
@end

@implementation CKScheduledSectionDateCell

- (CKScheduledSectionDateCell)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = CKScheduledSectionDateCell;
  v3 = [(CKTranscriptStampCell *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKTranscriptLegibilityButton buttonWithType:1];
    [(CKEditableCollectionViewCell *)v3 setEffect:0];
    v5 = +[CKUIBehavior sharedBehaviors];
    transcriptSendLaterButtonConfiguration = [v5 transcriptSendLaterButtonConfiguration];
    [(CKTranscriptLegibilityButton *)v4 setConfiguration:transcriptSendLaterButtonConfiguration];

    v7 = +[CKUIBehavior sharedBehaviors];
    transcriptSendLaterButtonConfigurationUpdateHandler = [v7 transcriptSendLaterButtonConfigurationUpdateHandler];
    [(CKTranscriptLegibilityButton *)v4 setConfigurationUpdateHandler:transcriptSendLaterButtonConfigurationUpdateHandler];

    contentView = [(CKEditableCollectionViewCell *)v3 contentView];
    [contentView addSubview:v4];

    editScheduleButton = v3->_editScheduleButton;
    v3->_editScheduleButton = v4;
    v11 = v4;

    _deferredMenuForEditScheduleButton = [(CKScheduledSectionDateCell *)v3 _deferredMenuForEditScheduleButton];
    [(CKTranscriptLegibilityButton *)v3->_editScheduleButton setMenu:_deferredMenuForEditScheduleButton];

    [(CKTranscriptLegibilityButton *)v3->_editScheduleButton setShowsMenuAsPrimaryAction:1];
  }

  return v3;
}

- (void)setDisplayEditButton:(BOOL)button
{
  if (self->_displayEditButton != button)
  {
    self->_displayEditButton = button;
    [(CKTranscriptLegibilityButton *)self->_editScheduleButton setEnabled:?];

    [(CKScheduledSectionDateCell *)self _updateEditScheduleButtonAttributedTitleForControlState:0];
  }
}

- (void)setTimeString:(id)string
{
  stringCopy = string;
  if (self->_timeString != stringCopy)
  {
    v7 = stringCopy;
    objc_storeStrong(&self->_timeString, string);
    [(CKScheduledSectionDateCell *)self _updateEditScheduleButtonAttributedTitleForControlState:0];
    [(CKTranscriptStampCell *)self contentAlignmentRect];
    [(CKScheduledSectionDateCell *)self layoutSizeForWidth:1 applyLayout:v6];
    stringCopy = v7;
  }
}

- (void)_updateEditScheduleButtonAttributedTitleForControlState:(unint64_t)state
{
  v5 = [(CKScheduledSectionDateCell *)self scheduledSectionDateStringWithControlState:?];
  [(CKTranscriptLegibilityButton *)self->_editScheduleButton setAttributedTitle:v5 forState:state];
}

- (id)_deferredMenuForEditScheduleButton
{
  v12[1] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69DC928];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke;
  v9[3] = &unk_1E72F3C78;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  v4 = [v3 elementWithUncachedProvider:v9];
  v5 = MEMORY[0x1E69DCC60];
  v12[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v7 = [v5 menuWithChildren:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v7;
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v43 = WeakRetained;
    v45 = v3;
    v44 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
    v6 = [*(a1 + 32) delegate];
    v7 = [v6 dateCellRequestedScheduledMessageCount:*(a1 + 32)];

    v8 = MEMORY[0x1E696AEC0];
    v10 = CKFrameworkBundle(v9);
    v11 = [v10 localizedStringForKey:@"SEND_LATER_SEND_MESSAGE_NOW" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v8 localizedStringWithFormat:v11, v7];

    v13 = [MEMORY[0x1E69DC668] sharedApplication];
    v14 = [v13 userInterfaceLayoutDirection];

    if (v14 == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v16 = [(__CFString *)v15 stringByAppendingString:v12];

    v17 = MEMORY[0x1E696AEC0];
    v19 = CKFrameworkBundle(v18);
    v20 = [v19 localizedStringForKey:@"SEND_LATER_DELETE_ALL_MESSAGES" value:&stru_1F04268F8 table:@"ChatKit"];
    v21 = [v17 localizedStringWithFormat:v20, v7];

    v22 = [MEMORY[0x1E69DC668] sharedApplication];
    v23 = [v22 userInterfaceLayoutDirection];

    if (v23 == 1)
    {
      v24 = @"\u200F";
    }

    else
    {
      v24 = @"\u200E";
    }

    v25 = [(__CFString *)v24 stringByAppendingString:v21];

    v26 = +[CKUIBehavior sharedBehaviors];
    v27 = [v26 sendLaterScheduledSectionMenuSendNowImage];

    v28 = MEMORY[0x1E69DC628];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_224;
    v50[3] = &unk_1E72EBCD8;
    objc_copyWeak(v51, (a1 + 40));
    v41 = v16;
    v42 = v27;
    v29 = [v28 actionWithTitle:v16 image:v27 identifier:0 handler:v50];
    v30 = MEMORY[0x1E69DC628];
    v31 = CKFrameworkBundle(v29);
    v32 = [v31 localizedStringForKey:@"EDIT_TIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v33 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"clock"];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_233;
    v48[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v49, (a1 + 40));
    v34 = [v30 actionWithTitle:v32 image:v33 identifier:0 handler:v48];

    v35 = MEMORY[0x1E69DC628];
    v36 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"trash"];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_237;
    v46[3] = &unk_1E72EBCD8;
    objc_copyWeak(&v47, (a1 + 40));
    v37 = v35;
    v38 = v25;
    v39 = [v37 actionWithTitle:v25 image:v36 identifier:0 handler:v46];

    v3 = v45;
    if (!CKIsRunningInMacCatalyst())
    {
      [v39 setAttributes:2];
    }

    [v44 addObject:v29];
    [v44 addObject:v34];
    [v44 addObject:v39];
    v45[2](v45, v44);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&v49);

    objc_destroyWeak(v51);
    v5 = v43;
  }

  else
  {
    v40 = IMLogHandleForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_cold_1();
    }

    v3[2](v3, MEMORY[0x1E695E0F0]);
  }
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_224(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleSendNowAction:v3];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_224_cold_1();
    }
  }
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_233(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleEditDateAction:v3];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_233_cold_1();
    }
  }
}

void __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_237(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Delete all messages", v7, 2u);
      }
    }

    [WeakRetained handleDeleteAllAction:v3];
  }

  else
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CKScheduledSectionDateCell__deferredMenuForEditScheduleButton__block_invoke_237_cold_1();
    }
  }
}

- (void)handleSendNowAction:(id)action
{
  delegate = [(CKScheduledSectionDateCell *)self delegate];
  [delegate dateCellRequestedScheduledMessageModification:self scheduleType:0 deliveryTime:0];
}

- (void)handleDeleteAllAction:(id)action
{
  delegate = [(CKScheduledSectionDateCell *)self delegate];
  [delegate dateCellRequestedDeleteAllMessages:self];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CKScheduledSectionDateCell *)self layoutSizeForWidth:0 applyLayout:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviewsForAlignmentContents
{
  v4.receiver = self;
  v4.super_class = CKScheduledSectionDateCell;
  [(CKTranscriptStampCell *)&v4 layoutSubviewsForAlignmentContents];
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  [(CKScheduledSectionDateCell *)self layoutSizeForWidth:1 applyLayout:v3];
}

+ (id)createStampLabelView
{
  v2 = [CKTranscriptLegibilityLabel alloc];
  v3 = [(CKTranscriptLegibilityLabel *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  return v3;
}

- (CGSize)layoutSizeForWidth:(double)width applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  [(CKTranscriptStampCell *)self contentAlignmentRect];
  v8 = v7;
  v10 = v9;
  editScheduleButton = [(CKScheduledSectionDateCell *)self editScheduleButton];
  [editScheduleButton sizeThatFits:{width, 1.79769313e308}];
  v13 = v12;
  v15 = v14;
  if (CKMainScreenScale_once_54 == -1)
  {
    if (!layoutCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    [CKScheduledSectionDateCell layoutSizeForWidth:applyLayout:];
    if (!layoutCopy)
    {
      goto LABEL_6;
    }
  }

  v16 = fmin(width, v13);
  v17 = *&CKMainScreenScale_sMainScreenScale_54;
  if (*&CKMainScreenScale_sMainScreenScale_54 == 0.0)
  {
    v17 = 1.0;
  }

  [editScheduleButton setFrame:{floor((v8 + (v10 - v16) * 0.5) * v17) / v17, 0.0, v16, v15}];
  [editScheduleButton __ck_ensureMinimumTouchInsets];
LABEL_6:

  widthCopy = width;
  v19 = v15;
  result.height = v19;
  result.width = widthCopy;
  return result;
}

- (void)addFilter:(id)filter
{
  v8.receiver = self;
  v8.super_class = CKScheduledSectionDateCell;
  filterCopy = filter;
  [(CKTranscriptStampCell *)&v8 addFilter:filterCopy];
  v5 = [(CKScheduledSectionDateCell *)self editScheduleButton:v8.receiver];
  [filterCopy contentAlpha];
  v7 = v6;

  [v5 setAlpha:v7];
}

- (void)clearFilters
{
  v4.receiver = self;
  v4.super_class = CKScheduledSectionDateCell;
  [(CKTranscriptStampCell *)&v4 clearFilters];
  editScheduleButton = [(CKScheduledSectionDateCell *)self editScheduleButton];
  [editScheduleButton setAlpha:1.0];
}

- (CKScheduledSectionDateCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configureForChatItem:(id)item context:(id)context animated:(BOOL)animated animationDuration:(double)duration animationCurve:(int64_t)curve
{
  v7.receiver = self;
  v7.super_class = CKScheduledSectionDateCell;
  [(CKTranscriptStampCell *)&v7 configureForChatItem:item context:context animated:animated animationDuration:curve animationCurve:duration];
}

- (void)handleEditDateAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_190BDA7AC();
}

- (id)scheduledSectionDateStringWithControlState:(unint64_t)state
{
  selfCopy = self;
  v5.super.isa = CKScheduledSectionDateCell.scheduledSectionDateString(controlState:)(state).super.isa;

  return v5.super.isa;
}

@end