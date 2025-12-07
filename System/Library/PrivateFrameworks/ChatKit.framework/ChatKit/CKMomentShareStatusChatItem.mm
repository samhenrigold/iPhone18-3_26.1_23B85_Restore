@interface CKMomentShareStatusChatItem
- (BOOL)wantsDrawerLayout;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
@end

@implementation CKMomentShareStatusChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 senderTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (char)transcriptOrientation
{
  _statusChatItem = [(CKMomentShareStatusChatItem *)self _statusChatItem];
  isFromMe = [_statusChatItem isFromMe];

  if (isFromMe)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)wantsDrawerLayout
{
  v5.receiver = self;
  v5.super_class = CKMomentShareStatusChatItem;
  if ([(CKChatItem *)&v5 wantsDrawerLayout])
  {
    v2 = +[CKUIBehavior sharedBehaviors];
    v3 = [v2 timestampsPushBalloons] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)loadTranscriptText
{
  v58[3] = *MEMORY[0x1E69E9840];
  v3 = CKFrameworkBundle(self);
  v4 = [v3 localizedStringForKey:@"ATTRIBUTION_TEXT_PHOTOS_EXTENSION" value:&stru_1F04268F8 table:@"ChatKit"];

  _statusChatItem = [(CKMomentShareStatusChatItem *)self _statusChatItem];
  activityTitle = [_statusChatItem activityTitle];
  v6 = activityTitle;
  v7 = 0x1E69DC000uLL;
  v52 = v4;
  if (activityTitle)
  {
    goto LABEL_11;
  }

  expirationDate = [_statusChatItem expirationDate];
  v9 = expirationDate;
  if (_TitleForExpirationDate_predicate != -1)
  {
    [CKMomentShareStatusChatItem loadTranscriptText];
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  if (!expirationDate)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = [_TitleForExpirationDate_dateFormatter stringFromDate:v9];
  v11 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle(v10);
  [v12 localizedStringForKey:@"MOMENT_SHARE_EXPIRATION_DATE_PREFIX_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v14 = v13 = v4;
  v15 = [v11 stringWithFormat:v14, v10];

  v4 = v13;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v18 = @"\u200F";
  }

  else
  {
    v18 = @"\u200E";
  }

  v6 = [(__CFString *)v18 stringByAppendingString:v15];

  v7 = 0x1E69DC000;
LABEL_10:

  if (!v6)
  {
    v54 = v4;
    goto LABEL_15;
  }

LABEL_11:
  v19 = MEMORY[0x1E696AEC0];
  v20 = CKFrameworkBundle(activityTitle);
  v21 = [v20 localizedStringForKey:@"MOMENT_SHARE_STATUS_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
  v22 = [v19 stringWithFormat:v21, v4, v6];

  sharedApplication = [*(v7 + 1640) sharedApplication];
  userInterfaceLayoutDirection2 = [sharedApplication userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection2 == 1)
  {
    v25 = @"\u200F";
  }

  else
  {
    v25 = @"\u200E";
  }

  v54 = [(__CFString *)v25 stringByAppendingString:v22];

LABEL_15:
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v27 = [defaultParagraphStyle mutableCopy];

  [v27 setAlignment:{2 * (-[CKMomentShareStatusChatItem transcriptOrientation](self, "transcriptOrientation") != 0)}];
  [v27 setLineBreakMode:2];
  v28 = *MEMORY[0x1E69DB648];
  v57[0] = *MEMORY[0x1E69DB648];
  v29 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFont = [v29 transcriptRegularFont];
  v58[0] = transcriptRegularFont;
  v31 = *MEMORY[0x1E69DB650];
  v57[1] = *MEMORY[0x1E69DB650];
  v32 = +[CKUIBehavior sharedBehaviors];
  theme = [v32 theme];
  transcriptTextColor = [theme transcriptTextColor];
  v35 = *MEMORY[0x1E69DB688];
  v57[2] = *MEMORY[0x1E69DB688];
  v58[1] = transcriptTextColor;
  v58[2] = v27;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];

  v37 = v54;
  v51 = v36;
  v38 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v54 attributes:v36];
  string = [v38 string];
  v40 = v52;
  v41 = [string rangeOfString:v52];
  v50 = v42;

  if (v41 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v55[0] = v28;
    v43 = +[CKUIBehavior sharedBehaviors];
    transcriptMessageStatusFont = [v43 transcriptMessageStatusFont];
    v56[0] = transcriptMessageStatusFont;
    v55[1] = v31;
    v45 = +[CKUIBehavior sharedBehaviors];
    theme2 = [v45 theme];
    transcriptTextColor2 = [theme2 transcriptTextColor];
    v55[2] = v35;
    v56[1] = transcriptTextColor2;
    v56[2] = v27;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];

    v37 = v54;
    [v38 setAttributes:v48 range:{v41, v50}];

    v40 = v52;
  }

  return v38;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v9;
    insets->left = v10;
    insets->bottom = v11;
    insets->right = v12;
  }

  transcriptText = [(CKChatItem *)self transcriptText];
  transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
  [transcriptTraitCollection displayScale];
  [CKTranscriptMomentShareLabelCell sizeThatFits:transcriptText attributedText:width displayScale:height, v15];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v27 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  itemsCopy = items;
  supplementryItemsCopy = supplementryItems;
  if (index < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [itemsCopy objectAtIndex:index - 1];
  }

  v15 = +[CKUIBehavior sharedBehaviors];
  [v15 smallTranscriptSpace];
  v17 = v16;

  layoutType = [v14 layoutType];
  if (layoutType <= 0x13 && ((1 << layoutType) & 0xC0002) != 0)
  {
    if ([v14 hasTail])
    {
      v19 = +[CKUIBehavior sharedBehaviors];
      [v19 balloonMaskTailSizeForTailShape:1];
      v17 = v17 + v20;
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      *v26 = 138543618;
      *&v26[4] = v22;
      *&v26[12] = 2114;
      *&v26[14] = objc_opt_class();
      v23 = *&v26[14];
      _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %{public}@ shouldn't follow %{public}@", v26, 0x16u);
    }
  }

  v24 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v17 bottomSpacing:0.0, *v26, *&v26[8], v27];

  return v24;
}

@end