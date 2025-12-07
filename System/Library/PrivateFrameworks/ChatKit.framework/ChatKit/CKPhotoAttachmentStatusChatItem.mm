@interface CKPhotoAttachmentStatusChatItem
- (BOOL)wantsDrawerLayout;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (UIEdgeInsets)contentInsets;
- (char)transcriptOrientation;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptText;
@end

@implementation CKPhotoAttachmentStatusChatItem

- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override
{
  v29 = *MEMORY[0x1E69E9840];
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

  layoutType = [v14 layoutType];
  if (layoutType <= 10)
  {
    if (layoutType <= 4)
    {
      if ((layoutType - 2) < 2)
      {
        goto LABEL_18;
      }

      if (layoutType != 1)
      {
        goto LABEL_27;
      }
    }

    else if ((layoutType - 5) >= 2 && (layoutType - 8) >= 2)
    {
      if (layoutType != 7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

LABEL_20:
    v18 = [CKChatItemLayoutUtilities nextItemIsOriginatorWithRepliesForIndex:index allDatasourceItems:itemsCopy];
    v19 = +[CKUIBehavior sharedBehaviors];
    v16 = v19;
    if (!v18)
    {
      [v19 mediumTranscriptSpace];
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (layoutType > 0x18)
  {
    goto LABEL_9;
  }

  if (((1 << layoutType) & 0x4C000) != 0)
  {
    goto LABEL_20;
  }

  if (((1 << layoutType) & 0x1800000) != 0)
  {
LABEL_18:
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 largeTranscriptSpace];
    goto LABEL_23;
  }

  if (layoutType == 19)
  {
LABEL_16:
    v16 = +[CKUIBehavior sharedBehaviors];
    [v16 smallTranscriptSpace];
LABEL_23:
    v20 = v17;

    goto LABEL_24;
  }

LABEL_9:
  if ((layoutType - 11) < 2)
  {
    goto LABEL_18;
  }

  if (layoutType == 13)
  {
    v16 = +[CKUIBehavior sharedBehaviors];
LABEL_21:
    [v16 extraLargeTranscriptSpace];
    goto LABEL_23;
  }

LABEL_27:
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      *v28 = 138412546;
      *&v28[4] = v24;
      *&v28[12] = 2112;
      *&v28[14] = objc_opt_class();
      v25 = *&v28[14];
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", v28, 0x16u);
    }
  }

  v26 = [CKUIBehavior sharedBehaviors:*v28];
  [v26 smallTranscriptSpace];
  v20 = v27;

LABEL_24:
  v21 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v20 bottomSpacing:0.0];

  return v21;
}

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
  _photoAttachmentStatusChatItem = [(CKPhotoAttachmentStatusChatItem *)self _photoAttachmentStatusChatItem];
  isFromMe = [_photoAttachmentStatusChatItem isFromMe];

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
  v5.super_class = CKPhotoAttachmentStatusChatItem;
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
  v97[3] = *MEMORY[0x1E69E9840];
  _photoAttachmentStatusChatItem = [(CKPhotoAttachmentStatusChatItem *)self _photoAttachmentStatusChatItem];
  numberOfPhotos = [_photoAttachmentStatusChatItem numberOfPhotos];
  numberOfVideos = [_photoAttachmentStatusChatItem numberOfVideos];
  v88 = _photoAttachmentStatusChatItem;
  numberOfSavedAssets = [_photoAttachmentStatusChatItem numberOfSavedAssets];
  v6 = numberOfSavedAssets;
  if (numberOfVideos + numberOfPhotos)
  {
    if (numberOfVideos)
    {
      v7 = 1;
    }

    else
    {
      v7 = numberOfPhotos == 0;
    }

    v8 = 1;
    if (numberOfPhotos != 0 || numberOfVideos == 0)
    {
      v8 = 2;
    }

    if (!v7)
    {
      v8 = 0;
    }

    v9 = off_1E72F4390[v8];
    v10 = MEMORY[0x1E696AEC0];
    v11 = CKFrameworkBundle(numberOfSavedAssets);
    v12 = [v11 localizedStringForKey:v9 value:&stru_1F04268F8 table:@"ChatKit"];
    v13 = [v10 localizedStringWithFormat:v12, numberOfVideos + numberOfPhotos];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v16 = @"\u200F";
    }

    else
    {
      v16 = @"\u200E";
    }

    v17 = [(__CFString *)v16 stringByAppendingString:v13];
  }

  else
  {
    v13 = CKFrameworkBundle(numberOfSavedAssets);
    v17 = [v13 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_ITEMS_FALLBACK_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v18 = v17;

  v90 = v18;
  if (v6)
  {
    if (numberOfVideos)
    {
      v20 = 1;
    }

    else
    {
      v20 = numberOfPhotos == 0;
    }

    v21 = 1;
    if (numberOfPhotos != 0 || numberOfVideos == 0)
    {
      v21 = 2;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (numberOfVideos + numberOfPhotos == v6)
    {
      v23 = CKFrameworkBundle(v19);
      v24 = v23;
      if (v22 == 2)
      {
        v30 = [v23 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_ALL_ITEMS_SAVED" value:&stru_1F04268F8 table:@"ChatKit"];
        v25 = 0x1E69DC000;
      }

      else
      {
        v25 = 0x1E69DC000uLL;
        if (v22 == 1)
        {
          v26 = @"PHOTO_ATTACHMENT_STATUS_ALL_VIDEOS_SAVED";
        }

        else
        {
          v26 = @"PHOTO_ATTACHMENT_STATUS_ALL_PHOTOS_SAVED";
        }

        v30 = [v23 localizedStringForKey:v26 value:&stru_1F04268F8 table:@"ChatKit"];
      }
    }

    else
    {
      v34 = off_1E72F43A8[v22];
      v35 = MEMORY[0x1E696AEC0];
      v36 = CKFrameworkBundle(v19);
      v37 = [v36 localizedStringForKey:v34 value:&stru_1F04268F8 table:@"ChatKit"];
      v24 = [v35 localizedStringWithFormat:v37, v6];

      v25 = 0x1E69DC000uLL;
      mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection2 == 1)
      {
        v40 = @"\u200F";
      }

      else
      {
        v40 = @"\u200E";
      }

      v30 = [(__CFString *)v40 stringByAppendingString:v24];
    }

    v41 = MEMORY[0x1E696AEC0];
    v43 = CKFrameworkBundle(v42);
    v44 = [v43 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_HAS_SAVED_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
    v45 = [v41 stringWithFormat:v44, v18, v30];

    sharedApplication = [*(v25 + 1640) sharedApplication];
    userInterfaceLayoutDirection3 = [sharedApplication userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection3 == 1)
    {
      v48 = @"\u200F";
    }

    else
    {
      v48 = @"\u200E";
    }

    v89 = [(__CFString *)v48 stringByAppendingString:v45];
  }

  else
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = CKFrameworkBundle(v19);
    v29 = [v28 localizedStringForKey:@"PHOTO_ATTACHMENT_STATUS_TITLE_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
    v30 = [v27 stringWithFormat:v29, v18];

    mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection4 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection4 == 1)
    {
      v33 = @"\u200F";
    }

    else
    {
      v33 = @"\u200E";
    }

    v89 = [(__CFString *)v33 stringByAppendingString:v30];
  }

  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v50 = [defaultParagraphStyle mutableCopy];

  [v50 setAlignment:{2 * (-[CKPhotoAttachmentStatusChatItem transcriptOrientation](self, "transcriptOrientation") != 0)}];
  [v50 setLineBreakMode:2];
  v94 = *MEMORY[0x1E69DB648];
  v84 = v94;
  v51 = +[CKUIBehavior sharedBehaviors];
  transcriptRegularFont = [v51 transcriptRegularFont];
  v97[0] = transcriptRegularFont;
  v95 = *MEMORY[0x1E69DB650];
  v53 = v95;
  v54 = +[CKUIBehavior sharedBehaviors];
  theme = [v54 theme];
  transcriptTextColor = [theme transcriptTextColor];
  v96 = *MEMORY[0x1E69DB688];
  v57 = v96;
  v97[1] = transcriptTextColor;
  v97[2] = v50;
  v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v94 count:3];

  v59 = +[CKUIBehavior sharedBehaviors];
  transcriptMessageStatusFont = [v59 transcriptMessageStatusFont];

  v61 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v61 theme];
  attachmentBalloonActionColor = [theme2 attachmentBalloonActionColor];

  v64 = objc_alloc(MEMORY[0x1E696AD40]);
  v87 = v58;
  v65 = v58;
  v66 = v50;
  v67 = [v64 initWithString:v89 attributes:v65];
  string = [v67 string];
  v69 = [string rangeOfString:v90];
  v71 = v70;

  v92[0] = v84;
  v92[1] = v53;
  v85 = transcriptMessageStatusFont;
  v93[0] = transcriptMessageStatusFont;
  v93[1] = attachmentBalloonActionColor;
  v92[2] = v57;
  v93[2] = v50;
  v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v93 forKeys:v92 count:3];
  if (v69 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v67 setAttributes:v72 range:{v69, v71}];
  }

  string2 = [v67 string];
  v74 = [string2 rangeOfString:@"__IMAGE_PLACEHOLDER__"];
  v76 = v75;

  if (v74 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v77 = MEMORY[0x1E69DCAD8];
    v91 = attachmentBalloonActionColor;
    v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1];
    v79 = [v77 configurationWithPaletteColors:v78];

    v80 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"square.grid.2x2.fill" withConfiguration:v79];
    v81 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v80];
    v82 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttachment:v81 attributes:v72];
    [v67 replaceCharactersInRange:v74 withAttributedString:{v76, v82}];
  }

  return v67;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  transcriptText = [(CKChatItem *)self transcriptText];
  transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
  [transcriptTraitCollection displayScale];
  [CKTranscriptActionButtonCell sizeThatFits:transcriptText attributedText:width displayScale:height, v10];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

@end