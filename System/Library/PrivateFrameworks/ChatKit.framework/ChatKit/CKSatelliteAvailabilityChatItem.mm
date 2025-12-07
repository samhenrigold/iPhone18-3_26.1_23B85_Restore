@interface CKSatelliteAvailabilityChatItem
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
- (void)unloadTranscriptText;
@end

@implementation CKSatelliteAvailabilityChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v32 = *MEMORY[0x1E69E9840];
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

  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 largeTranscriptSpace];
  v20 = v19;

  if (!v14)
  {
    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 topTranscriptSpace];
    v20 = v26;

    goto LABEL_12;
  }

  layoutType = [v14 layoutType];
  if (layoutType > 0x17)
  {
    goto LABEL_20;
  }

  if (((1 << layoutType) & 0xFF4C) == 0)
  {
    if (((1 << layoutType) & 0x22) != 0)
    {
      goto LABEL_12;
    }

    if (layoutType == 23)
    {
      v29 = IMLogHandleForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [CKSatelliteAvailabilityChatItem(Layout) layoutItemSpacingWithEnvironment:v29 datasourceItemIndex:? allDatasourceItems:? supplementryItems:? sizeOverride:?];
      }

LABEL_22:

      v20 = v17;
      goto LABEL_12;
    }

LABEL_20:
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CKSatelliteAvailabilityChatItem(Layout) layoutItemSpacingWithEnvironment:v14 datasourceItemIndex:v29 allDatasourceItems:? supplementryItems:? sizeOverride:?];
    }

    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v30 = 138412290;
      v31 = v24;
      _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Satellite availability indicator unexpectedly following a %@", &v30, 0xCu);
    }
  }

LABEL_12:
  v27 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v20 bottomSpacing:0.0];

  return v27;
}

- (void)unloadTranscriptText
{
  v4.receiver = self;
  v4.super_class = CKSatelliteAvailabilityChatItem;
  [(CKChatItem *)&v4 unloadTranscriptText];
  satelliteAvailabilityTitleLabelAttributedText = self->_satelliteAvailabilityTitleLabelAttributedText;
  self->_satelliteAvailabilityTitleLabelAttributedText = 0;
}

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  satelliteAvailabilityIndicatorIcon = [v3 satelliteAvailabilityIndicatorIcon];

  v5 = +[CKUIBehavior sharedBehaviors];
  transcriptSatelliteAvailabilityFontAttributes = [v5 transcriptSatelliteAvailabilityFontAttributes];

  imSatelliteAvailabilityChatItem = [(CKSatelliteAvailabilityChatItem *)self imSatelliteAvailabilityChatItem];
  handle = [imSatelliteAvailabilityChatItem handle];
  _displayNameWithAbbreviation = [handle _displayNameWithAbbreviation];

  v10 = MEMORY[0x1E696AEC0];
  v12 = CKFrameworkBundle(v11);
  v13 = [v12 localizedStringForKey:@"SATELLITE_AVAILABILITY_OFF_GRID" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
  v14 = [v10 localizedStringWithFormat:v13, _displayNameWithAbbreviation];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    v17 = @"\u200F";
  }

  else
  {
    v17 = @"\u200E";
  }

  v18 = [(__CFString *)v17 stringByAppendingString:v14];

  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v18 attributes:0];
  [(NSAttributedString *)v19 replaceCharactersInRange:0 withString:0, @" "];
  v20 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v20 setImage:satelliteAvailabilityIndicatorIcon];
  v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v20];
  [(NSAttributedString *)v19 insertAttributedString:v21 atIndex:0];

  [(NSAttributedString *)v19 addAttributes:transcriptSatelliteAvailabilityFontAttributes range:0, [(NSAttributedString *)v19 length]];
  satelliteAvailabilityTitleLabelAttributedText = self->_satelliteAvailabilityTitleLabelAttributedText;
  self->_satelliteAvailabilityTitleLabelAttributedText = v19;
  v23 = v19;

  v24 = [(NSAttributedString *)v23 copy];

  return v24;
}

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 stampTranscriptInsets];
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

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  v8 = +[CKUIBehavior sharedBehaviors];
  v9 = v8;
  if (insets)
  {
    [v8 transcriptBoldTextAlignmentInsets];
    insets->top = v10;
    insets->left = v11;
    insets->bottom = v12;
    insets->right = v13;
  }

  v14 = +[CKTranscriptSatelliteAvailabilityCell satelliteAvailabilityTitleLabel];
  transcriptText = [(CKChatItem *)self transcriptText];
  [v14 setAttributedText:transcriptText];

  [v14 sizeThatFits:{width, height}];
  v17 = v16;

  v18 = 0.0;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end