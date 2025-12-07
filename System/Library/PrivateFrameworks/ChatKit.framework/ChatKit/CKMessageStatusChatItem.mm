@interface CKMessageStatusChatItem
+ (CKTranscriptLegibilityButton)sizingButton;
+ (id)todayDateFormatter;
+ (void)appendChevronToStatusText:(id)text withButtonTextColor:(id)color textAttributes:(id)attributes;
- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection;
- (BOOL)wantsDrawerLayout;
- (CGSize)buttonSize;
- (CGSize)labelSize;
- (CGSize)loadButtonSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)loadLabelSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CGSize)size;
- (Class)cellClass;
- (NSAttributedString)transcriptButtonText;
- (UIEdgeInsets)buttonTextAlignmentInsets;
- (UIEdgeInsets)labelTextAlignmentInsets;
- (UIEdgeInsets)transcriptTextAlignmentInsets;
- (char)statusAlignment;
- (char)transcriptOrientation;
- (id)_styledStatusTextWithStatusText:(id)text orientation:(char)orientation dateSubText:(id)subText buttonSubText:(id)buttonSubText errorSubText:(id)errorSubText overrideTextColor:(id)color overrideButtonColor:(id)buttonColor shouldReplaceWarningIcon:(BOOL)self0 shouldDisplayChevronWithTranscriptBackground:(BOOL)self1;
- (id)createReplayText;
- (id)effectsControlStatusTextForEffectStyleID:(id)d;
- (id)layoutItemSpacingWithEnvironment:(id)environment datasourceItemIndex:(int64_t)index allDatasourceItems:(id)items supplementryItems:(id)supplementryItems sizeOverride:(CGSize)override;
- (id)loadTranscriptButtonText;
- (id)loadTranscriptText;
- (id)time;
- (int64_t)buttonType;
- (int64_t)expireStatusType;
- (int64_t)statusType;
- (unint64_t)count;
- (void)unloadSize;
- (void)unloadTranscriptText;
@end

@implementation CKMessageStatusChatItem

- (char)transcriptOrientation
{
  if ([(CKChatItem *)self isFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (CKTranscriptLegibilityButton)sizingButton
{
  v2 = _sizingButton;
  if (!_sizingButton)
  {
    v3 = +[CKTranscriptStatusCell statusButton];
    v4 = _sizingButton;
    _sizingButton = v3;

    v2 = _sizingButton;
  }

  return v2;
}

- (Class)cellClass
{
  if ([(CKMessageStatusChatItem *)self buttonType]!= 5)
  {
    [(CKMessageStatusChatItem *)self isAddChoiceStamp];
  }

  v3 = objc_opt_class();

  return v3;
}

- (void)unloadTranscriptText
{
  v4.receiver = self;
  v4.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v4 unloadTranscriptText];
  transcriptButtonText = self->_transcriptButtonText;
  self->_transcriptButtonText = 0;
}

- (void)unloadSize
{
  v3.receiver = self;
  v3.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v3 unloadSize];
  self->_buttonSizeLoaded = 0;
  self->_labelSizeLoaded = 0;
}

- (UIEdgeInsets)transcriptTextAlignmentInsets
{
  v19.receiver = self;
  v19.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v19 transcriptTextAlignmentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKMessageStatusChatItem *)self buttonTextAlignmentInsets];
  v12 = fmax(v4, v11);
  v14 = fmax(v6, v13);
  v16 = fmax(v8, v15);
  v18 = fmax(v10, v17);
  result.right = v18;
  result.bottom = v16;
  result.left = v14;
  result.top = v12;
  return result;
}

- (BOOL)wantsDrawerLayout
{
  v5.receiver = self;
  v5.super_class = CKMessageStatusChatItem;
  if ([(CKChatItem *)&v5 wantsDrawerLayout])
  {
    return 1;
  }

  v3 = +[CKUIBehavior sharedBehaviors];
  timestampsPushBalloons = [v3 timestampsPushBalloons];

  return timestampsPushBalloons;
}

- (CGSize)size
{
  v13.receiver = self;
  v13.super_class = CKMessageStatusChatItem;
  [(CKChatItem *)&v13 size];
  selfCopy = self;
  [(CKMessageStatusChatItem *)selfCopy buttonSize];
  v5 = v4;
  [(CKMessageStatusChatItem *)selfCopy labelSize];
  if (v5 < v6)
  {
    v5 = v6;
  }

  [(CKMessageStatusChatItem *)selfCopy buttonSize];
  v8 = v7;
  [(CKMessageStatusChatItem *)selfCopy labelSize];
  v10 = v9;

  v11 = v8 + v10;
  v12 = v5;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)loadTranscriptText
{
  transcriptOrientation = [(CKMessageStatusChatItem *)self transcriptOrientation];
  statusType = [(CKMessageStatusChatItem *)self statusType];
  statusFailureTextColor = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  switch(statusType)
  {
    case 0:
      if (![(CKMessageStatusChatItem *)self expireStatusType])
      {
        v29 = CKFrameworkBundle(0);
        v30 = v29;
        v31 = @"MESSAGE_STATUS_NOSTATUS";
        goto LABEL_42;
      }

      v6 = 0;
      statusFailureTextColor = 0;
      v7 = 0;
      v8 = 0;
      goto LABEL_70;
    case 1:
      iMChatItem = [(CKChatItem *)self IMChatItem];
      isStewie = [iMChatItem isStewie];

      v29 = CKFrameworkBundle(v37);
      v30 = v29;
      if (isStewie)
      {
        v31 = @"MESSAGE_STATUS_SENT_VIA_STEWIE";
        v38 = @"ChatKit-SYDROB_FEATURES";
      }

      else
      {
        v31 = @"MESSAGE_STATUS_DELIVERED";
        v38 = @"ChatKit";
      }

      goto LABEL_43;
    case 2:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
      goto LABEL_42;
    case 3:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_NOTIFIED_RECIPIENT";
      goto LABEL_42;
    case 4:
      time = [(CKMessageStatusChatItem *)self time];
      v20 = [(CKMessageStatusChatItem *)self now];
      v21 = v20;
      if (!time)
      {
        v51 = CKFrameworkBundle(v20);
        v52 = v51;
        v53 = @"MESSAGE_STATUS_READ";
        goto LABEL_40;
      }

      __ck_currentCalendar = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v23 = [__ck_currentCalendar __ck_unitOfDisambiguityFromDate:time toDate:v21];

      switch(v23)
      {
        case 4:
LABEL_14:
          v24 = +[CKMessageStatusChatItem thePastDateFormatter];
          v7 = [v24 stringFromDate:time];
          v25 = MEMORY[0x1E696AEC0];
          v26 = CKFrameworkBundle(v7);
          v27 = v26;
          v28 = @"MESSAGE_STATUS_READ_DATE";
          goto LABEL_55;
        case 16:
          v24 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v90 = 0;
          v7 = [v24 stringFromDate:time isRelative:&v90];
          v58 = v90;
          v25 = MEMORY[0x1E696AEC0];
          v26 = CKFrameworkBundle(v7);
          v27 = v26;
          v59 = @"MESSAGE_STATUS_READ_DAY";
          v60 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          goto LABEL_50;
        case 8:
          goto LABEL_14;
      }

      v24 = +[CKMessageStatusChatItem todayDateFormatter];
      v7 = [v24 stringFromDate:time];
      v25 = MEMORY[0x1E696AEC0];
      v26 = CKFrameworkBundle(v7);
      v27 = v26;
      v28 = @"MESSAGE_STATUS_READ_TIME";
      goto LABEL_55;
    case 5:
      time = [(CKMessageStatusChatItem *)self time];
      v32 = [(CKMessageStatusChatItem *)self now];
      v21 = v32;
      if (time)
      {
        __ck_currentCalendar2 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
        v34 = [__ck_currentCalendar2 __ck_unitOfDisambiguityFromDate:time toDate:v21];

        switch(v34)
        {
          case 4:
LABEL_20:
            v24 = +[CKMessageStatusChatItem thePastDateFormatter];
            v7 = [v24 stringFromDate:time];
            v25 = MEMORY[0x1E696AEC0];
            v26 = CKFrameworkBundle(v7);
            v27 = v26;
            v28 = @"MESSAGE_STATUS_PLAYED_DATE";
            break;
          case 16:
            v24 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
            v89 = 0;
            v7 = [v24 stringFromDate:time isRelative:&v89];
            v58 = v89;
            v25 = MEMORY[0x1E696AEC0];
            v26 = CKFrameworkBundle(v7);
            v27 = v26;
            v59 = @"MESSAGE_STATUS_PLAYED_DAY";
            v60 = @"MESSAGE_STATUS_PLAYED_RELATIVE_DAY";
LABEL_50:
            if (v58)
            {
              v28 = v60;
            }

            else
            {
              v28 = v59;
            }

            break;
          case 8:
            goto LABEL_20;
          default:
            v24 = +[CKMessageStatusChatItem todayDateFormatter];
            v7 = [v24 stringFromDate:time];
            v25 = MEMORY[0x1E696AEC0];
            v26 = CKFrameworkBundle(v7);
            v27 = v26;
            v28 = @"MESSAGE_STATUS_PLAYED_TIME";
            break;
        }

LABEL_55:
        v61 = [v26 localizedStringForKey:v28 value:&stru_1F04268F8 table:@"ChatKit"];
        v62 = [v25 stringWithFormat:v61, v7];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
        {
          v65 = @"\u200F";
        }

        else
        {
          v65 = @"\u200E";
        }

        v8 = [(__CFString *)v65 stringByAppendingString:v62];
      }

      else
      {
        v51 = CKFrameworkBundle(v32);
        v52 = v51;
        v53 = @"MESSAGE_STATUS_PLAYED";
LABEL_40:
        v8 = [v51 localizedStringForKey:v53 value:&stru_1F04268F8 table:@"ChatKit"];

        v7 = 0;
      }

LABEL_68:

      goto LABEL_69;
    case 6:
      time2 = [(CKMessageStatusChatItem *)self time];
      time = time2;
      if (time2)
      {
        v21 = time2;
        v40 = [(CKMessageStatusChatItem *)self now];
        __ck_currentCalendar3 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
        v42 = [__ck_currentCalendar3 __ck_unitOfDisambiguityFromDate:v21 toDate:v40];

        v87 = v40;
        if (v42 != 4)
        {
          if (v42 == 16)
          {
            v43 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
            v88 = 0;
            v7 = [v43 stringFromDate:v21 isRelative:&v88];
            v66 = v88;
            v67 = MEMORY[0x1E696AEC0];
            v68 = CKFrameworkBundle(v7);
            v69 = v68;
            if (v66)
            {
              v70 = @"MESSAGE_STATUS_SAVED_RELATIVE_DAY";
            }

            else
            {
              v70 = @"MESSAGE_STATUS_SAVED_DAY";
            }
          }

          else
          {
            if (v42 == 8)
            {
              goto LABEL_30;
            }

            v43 = +[CKMessageStatusChatItem todayDateFormatter];
            v7 = [v43 stringFromDate:v21];
            v67 = MEMORY[0x1E696AEC0];
            v68 = CKFrameworkBundle(v7);
            v69 = v68;
            v70 = @"MESSAGE_STATUS_SAVED_TIME";
          }

          v71 = [v68 localizedStringForKey:v70 value:&stru_1F04268F8 table:@"ChatKit"];
          v72 = [v67 stringWithFormat:v71, v7];

          mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection2 == 1)
          {
            v75 = @"\u200F";
          }

          else
          {
            v75 = @"\u200E";
          }

          v8 = [(__CFString *)v75 stringByAppendingString:v72];

          goto LABEL_67;
        }

LABEL_30:
        v43 = +[CKMessageStatusChatItem thePastDateFormatter];
        v7 = [v43 stringFromDate:v21];
        v44 = MEMORY[0x1E696AEC0];
        v45 = CKFrameworkBundle(v7);
        v46 = [v45 localizedStringForKey:@"MESSAGE_STATUS_SAVED_DATE" value:&stru_1F04268F8 table:@"ChatKit"];
        v47 = [v44 stringWithFormat:v46, v7];

        mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection3 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection3 == 1)
        {
          v50 = @"\u200F";
        }

        else
        {
          v50 = @"\u200E";
        }

        v8 = [(__CFString *)v50 stringByAppendingString:v47];

LABEL_67:
        goto LABEL_68;
      }

      v54 = [(CKMessageStatusChatItem *)self count];
      if (v54 == 1)
      {
        v55 = CKFrameworkBundle(1);
        v56 = v55;
        v57 = @"MESSAGE_STATUS_SAVED_GROUP_ONE";
        goto LABEL_74;
      }

      if (!v54)
      {
        v55 = CKFrameworkBundle(0);
        v56 = v55;
        v57 = @"MESSAGE_STATUS_SAVED";
LABEL_74:
        v8 = [v55 localizedStringForKey:v57 value:&stru_1F04268F8 table:@"ChatKit"];
        goto LABEL_79;
      }

      v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v54];
      v78 = MEMORY[0x1E696AEC0];
      v79 = CKFrameworkBundle(v56);
      v80 = [v79 localizedStringForKey:@"MESSAGE_STATUS_SAVED_GROUP_MULTIPLE" value:&stru_1F04268F8 table:@"ChatKit"];
      __ck_localizedString = [v56 __ck_localizedString];
      v82 = [v78 stringWithFormat:v80, __ck_localizedString];

      mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection4 = [mEMORY[0x1E69DC668]4 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection4 == 1)
      {
        v85 = @"\u200F";
      }

      else
      {
        v85 = @"\u200E";
      }

      v8 = [(__CFString *)v85 stringByAppendingString:v82];

LABEL_79:
      v7 = 0;
LABEL_69:

      v6 = 0;
      statusFailureTextColor = 0;
LABEL_70:
      LOBYTE(v86) = v6;
      v76 = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v8 orientation:transcriptOrientation dateSubText:v7 buttonSubText:0 errorSubText:0 overrideTextColor:statusFailureTextColor shouldReplaceWarningIcon:v86];

      return v76;
    case 7:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_SENTASTEXTMESSAGE";
      goto LABEL_42;
    case 8:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_SENTASSMS";
      goto LABEL_42;
    case 9:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_SENTTOEMAIL";
      goto LABEL_42;
    case 10:
      v14 = CKFrameworkBundle(statusType);
      v8 = [v14 localizedStringForKey:@"MESSAGE_STATUS_NOTDELIVERED" value:&stru_1F04268F8 table:@"ChatKit"];

      if (CKShowInternalErrors())
      {
        iMChatItem2 = [(CKChatItem *)self IMChatItem];
        errorText = [iMChatItem2 errorText];

        v8 = errorText;
      }

      v17 = +[CKUIBehavior sharedBehaviors];
      theme = [v17 theme];
      statusFailureTextColor = [theme statusFailureTextColor];

      v6 = 0;
      goto LABEL_44;
    case 12:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_RAISETOLISTEN";
      goto LABEL_42;
    case 13:
      v29 = CKFrameworkBundle(statusType);
      v30 = v29;
      v31 = @"MESSAGE_STATUS_RAISETOTALK";
LABEL_42:
      v38 = @"ChatKit";
LABEL_43:
      v8 = [v29 localizedStringForKey:v31 value:&stru_1F04268F8 table:v38];

      v6 = 0;
      statusFailureTextColor = 0;
LABEL_44:
      v7 = 0;
      goto LABEL_70;
    case 17:
      v9 = CKFrameworkBundle(statusType);
      v8 = [v9 localizedStringForKey:@"HAWKING_MESSAGE_STATUS_BLACKHOLED" value:&stru_1F04268F8 table:@"ChatKit"];

      if (CKShowInternalErrors())
      {
        iMChatItem3 = [(CKChatItem *)self IMChatItem];
        errorText2 = [iMChatItem3 errorText];

        v8 = errorText2;
      }

      v12 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v12 theme];
      statusFailureTextColor = [theme2 statusTextColor];

      v7 = 0;
      v6 = 1;
      goto LABEL_70;
    default:
      goto LABEL_70;
  }
}

- (id)_styledStatusTextWithStatusText:(id)text orientation:(char)orientation dateSubText:(id)subText buttonSubText:(id)buttonSubText errorSubText:(id)errorSubText overrideTextColor:(id)color overrideButtonColor:(id)buttonColor shouldReplaceWarningIcon:(BOOL)self0 shouldDisplayChevronWithTranscriptBackground:(BOOL)self1
{
  orientationCopy = orientation;
  textCopy = text;
  subTextCopy = subText;
  buttonSubTextCopy = buttonSubText;
  errorSubTextCopy = errorSubText;
  colorCopy = color;
  buttonColorCopy = buttonColor;
  v21 = +[CKUIBehavior sharedBehaviors];
  v22 = v21;
  if (orientationCopy)
  {
    [v21 rightStatusTranscriptTextAttributes];
  }

  else
  {
    [v21 leftStatusTranscriptTextAttributes];
  }
  v23 = ;

  v67 = colorCopy;
  if (colorCopy)
  {
    v24 = [v23 mutableCopy];
    [v24 setObject:colorCopy forKeyedSubscript:*MEMORY[0x1E69DB650]];
    v25 = [v24 copy];

    v23 = v25;
  }

  v69 = textCopy;
  v70 = buttonSubTextCopy;
  if (textCopy)
  {
    v26 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy attributes:v23];
    textCopy = v26;
    v27 = v26 != 0;
    if (subTextCopy && v26)
    {
      string = [v26 string];
      v29 = [string rangeOfString:subTextCopy];
      v31 = v30;

      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = *MEMORY[0x1E69DB648];
        v33 = +[CKUIBehavior sharedBehaviors];
        transcriptMessageStatusDateFont = [v33 transcriptMessageStatusDateFont];
        [textCopy addAttribute:v32 value:transcriptMessageStatusDateFont range:{v29, v31}];
      }

      v27 = 1;
      buttonSubTextCopy = v70;
    }
  }

  else
  {
    v27 = 0;
  }

  v68 = subTextCopy;
  if (buttonColorCopy)
  {
    transcriptMessageStatusButtonTextColor = buttonColorCopy;
  }

  else
  {
    v36 = +[CKUIBehavior sharedBehaviors];
    theme = [v36 theme];
    transcriptMessageStatusButtonTextColor = [theme transcriptMessageStatusButtonTextColor];
  }

  if (buttonSubTextCopy)
  {
    v38 = !v27;
  }

  else
  {
    v38 = 1;
  }

  if ((v38 & 1) == 0)
  {
    string2 = [textCopy string];
    v40 = [string2 rangeOfString:buttonSubTextCopy];
    v42 = v41;

    if (v40 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(CKMessageStatusChatItem *)self isAddChoiceStamp])
      {
        v43 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
        [v43 __ck_fontWithWeight:*MEMORY[0x1E69DB980]];
      }

      else
      {
        v43 = +[CKUIBehavior sharedBehaviors];
        [v43 transcriptBoldFont];
      }
      v44 = ;

      [textCopy addAttribute:*MEMORY[0x1E69DB648] value:v44 range:{v40, v42}];
      [textCopy addAttribute:*MEMORY[0x1E69DB650] value:transcriptMessageStatusButtonTextColor range:{v40, v42}];
    }
  }

  if (errorSubTextCopy)
  {
    v45 = !v27;
  }

  else
  {
    v45 = 1;
  }

  if ((v45 & 1) == 0)
  {
    string3 = [textCopy string];
    v47 = [string3 rangeOfString:errorSubTextCopy];
    v49 = v48;

    if (v47 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v50 theme];
      statusFailureTextColor = [theme2 statusFailureTextColor];

      [textCopy addAttribute:*MEMORY[0x1E69DB650] value:statusFailureTextColor range:{v47, v49}];
    }
  }

  if (v27 && icon)
  {
    string4 = [textCopy string];
    v54 = [string4 rangeOfString:@"(!)"];
    v56 = v55;

    if (v54 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [textCopy replaceCharactersInRange:v54 withString:{v56, &stru_1F04268F8}];
      v57 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v58 = +[CKUIBehavior sharedBehaviors];
      messageStatusWarningIconRed = [v58 messageStatusWarningIconRed];

      [v57 setImage:messageStatusWarningIconRed];
      v60 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v57];
      v61 = [v60 mutableCopy];

      [v61 addAttributes:v23 range:{0, objc_msgSend(v61, "length")}];
      [textCopy insertAttributedString:v61 atIndex:v54];
    }
  }

  if (background)
  {
    transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
    if ([transcriptTraitCollection isTranscriptBackgroundActive])
    {
    }

    else
    {
      ShouldDifferentiateWithoutColor = UIAccessibilityShouldDifferentiateWithoutColor();

      if (!ShouldDifferentiateWithoutColor)
      {
        goto LABEL_39;
      }
    }

    [CKMessageStatusChatItem appendChevronToStatusText:textCopy withButtonTextColor:transcriptMessageStatusButtonTextColor textAttributes:v23];
  }

LABEL_39:
  v64 = [textCopy copy];

  return v64;
}

+ (void)appendChevronToStatusText:(id)text withButtonTextColor:(id)color textAttributes:(id)attributes
{
  v7 = MEMORY[0x1E696AAB0];
  attributesCopy = attributes;
  colorCopy = color;
  textCopy = text;
  v16 = [[v7 alloc] initWithString:@" " attributes:attributesCopy];
  [textCopy appendAttributedString:v16];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 messageStatusChevronWithButtonColor:colorCopy];

  v13 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v13 setImage:v12];
  v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v13];
  v15 = [v14 mutableCopy];
  [v15 addAttributes:attributesCopy range:{0, objc_msgSend(v15, "length")}];

  [textCopy appendAttributedString:v15];
}

- (BOOL)shouldUnloadTranscriptTextForChangeFromTraitCollection:(id)collection toTraitCollection:(id)traitCollection
{
  collectionCopy = collection;
  traitCollectionCopy = traitCollection;
  isTranscriptBackgroundActive = [collectionCopy isTranscriptBackgroundActive];
  if (isTranscriptBackgroundActive == [traitCollectionCopy isTranscriptBackgroundActive])
  {
    v11.receiver = self;
    v11.super_class = CKMessageStatusChatItem;
    v9 = [(CKChatItem *)&v11 shouldUnloadTranscriptTextForChangeFromTraitCollection:collectionCopy toTraitCollection:traitCollectionCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  transcriptText = [(CKChatItem *)self transcriptText];
  if ([transcriptText length])
  {
    [(CKMessageStatusChatItem *)self loadLabelSizeThatFits:insets textAlignmentInsets:width, height];
  }

  else
  {
    [(CKMessageStatusChatItem *)self loadButtonSizeThatFits:insets textAlignmentInsets:width, height];
  }

  v11 = v9;
  v12 = v10;

  v13 = v11;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (NSAttributedString)transcriptButtonText
{
  transcriptButtonText = self->_transcriptButtonText;
  if (!transcriptButtonText)
  {
    loadTranscriptButtonText = [(CKMessageStatusChatItem *)self loadTranscriptButtonText];
    v5 = [loadTranscriptButtonText copy];
    v6 = self->_transcriptButtonText;
    self->_transcriptButtonText = v5;

    transcriptButtonText = self->_transcriptButtonText;
  }

  return transcriptButtonText;
}

- (CGSize)buttonSize
{
  if (!self->_buttonSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_buttonSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadButtonSizeThatFits:&self->_buttonTextAlignmentInsets textAlignmentInsets:?];
    self->_buttonSize.width = v4;
    self->_buttonSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)labelSize
{
  if (!self->_labelSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_labelSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadLabelSizeThatFits:&self->_labelTextAlignmentInsets textAlignmentInsets:?];
    self->_labelSize.width = v4;
    self->_labelSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  width = self->_labelSize.width;
  height = self->_labelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)labelTextAlignmentInsets
{
  if (!self->_labelSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_labelSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadLabelSizeThatFits:&self->_labelTextAlignmentInsets textAlignmentInsets:?];
    self->_labelSize.width = v4;
    self->_labelSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  top = self->_labelTextAlignmentInsets.top;
  left = self->_labelTextAlignmentInsets.left;
  bottom = self->_labelTextAlignmentInsets.bottom;
  right = self->_labelTextAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)buttonTextAlignmentInsets
{
  if (!self->_buttonSizeLoaded)
  {
    v3 = objc_autoreleasePoolPush();
    [(CKChatItem *)self maxWidth];
    self->_buttonSizeLoaded = 1;
    [(CKMessageStatusChatItem *)self loadButtonSizeThatFits:&self->_buttonTextAlignmentInsets textAlignmentInsets:?];
    self->_buttonSize.width = v4;
    self->_buttonSize.height = v5;
    objc_autoreleasePoolPop(v3);
  }

  top = self->_buttonTextAlignmentInsets.top;
  left = self->_buttonTextAlignmentInsets.left;
  bottom = self->_buttonTextAlignmentInsets.bottom;
  right = self->_buttonTextAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (int64_t)buttonType
{
  v3 = [(CKMessageStatusChatItem *)self expireStatusType]- 1;
  if (v3 < 3)
  {
    v4 = (&unk_190DCED78 + 8 * v3);
    return *v4;
  }

  statusType = [(CKMessageStatusChatItem *)self statusType];
  if (statusType < 0x29)
  {
    v4 = (&unk_190DCED90 + 8 * statusType);
    return *v4;
  }

  return 3;
}

- (char)statusAlignment
{
  v3 = 2;
  if ([(CKMessageStatusChatItem *)self buttonType]!= 1)
  {
    if ([(CKChatItem *)self isFromMe])
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (int64_t)statusType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  messageStatusType = [iMChatItem messageStatusType];

  return messageStatusType;
}

- (int64_t)expireStatusType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  expireStatusType = [iMChatItem expireStatusType];

  return expireStatusType;
}

- (id)time
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  time = [iMChatItem time];

  return time;
}

- (unint64_t)count
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  v3 = [iMChatItem count];

  return v3;
}

+ (id)todayDateFormatter
{
  v2 = +[CKUIBehavior sharedBehaviors];
  timestampDateFormatter = [v2 timestampDateFormatter];

  return timestampDateFormatter;
}

- (id)effectsControlStatusTextForEffectStyleID:(id)d
{
  dCopy = d;
  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKConfettiEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_CONFETTI";
LABEL_27:
    v6 = CKFrameworkBundle(v4);
    v7 = [v6 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit"];

    goto LABEL_28;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKLasersEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_LASERS";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKFireworksEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_FIREWORKS";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKShootingStarEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_SHOOTING_STAR";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKHappyBirthdayEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_BALLOONS";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKSparklesEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_CELEBRATION";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKHeartEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_LOVE";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKEchoEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_ECHO";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.messages.effect.CKSpotlightEffect"];
  if (v4)
  {
    v5 = @"FSM_CONTROL_BUTTON_TITLE_SPOTLIGHT";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"];
  if (v4)
  {
    v5 = @"EFFECT_CONTROL_BUTTON_TITLE_IMPACT";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.loud"];
  if (v4)
  {
    v5 = @"EFFECT_CONTROL_BUTTON_TITLE_LOUD";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.gentle"];
  if (v4)
  {
    v5 = @"EFFECT_CONTROL_BUTTON_TITLE_GENTLE";
    goto LABEL_27;
  }

  v4 = [dCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.focus"];
  if (v4)
  {
    v5 = @"EFFECT_CONTROL_BUTTON_TITLE_FOCUS";
    goto LABEL_27;
  }

  v7 = 0;
LABEL_28:

  return v7;
}

- (id)loadTranscriptButtonText
{
  v243[2] = *MEMORY[0x1E69E9840];
  buttonType = [(CKMessageStatusChatItem *)self buttonType];
  switch(buttonType)
  {
    case 0:
      if ([(CKMessageStatusChatItem *)self expireStatusType]!= 2)
      {
        goto LABEL_56;
      }

      transcriptOrientation = [(CKMessageStatusChatItem *)self transcriptOrientation];
      v5 = +[CKUIBehavior sharedBehaviors];
      v6 = v5;
      if (transcriptOrientation)
      {
        [v5 rightTranscriptButtonTextAttributes];
      }

      else
      {
        [v5 leftTranscriptButtonTextAttributes];
      }
      iMChatItem = ;

      v161 = objc_alloc(MEMORY[0x1E696AD98]);
      IMMessageItemExpireStateExpiringDuration();
      0x3C = [v161 initWithUnsignedInteger:v162 / 0x3C];
      v37 = MEMORY[0x1E696AEC0];
      v38 = CKFrameworkBundle(0x3C);
      v39 = v38;
      v40 = @"MESSAGE_STATUS_EXPIRING";
      goto LABEL_88;
    case 1:
      iMChatItem = +[CKUIBehavior sharedBehaviors];
      statusSaveButtonTranscriptText = [iMChatItem statusSaveButtonTranscriptText];
      goto LABEL_147;
    case 2:
      v242[0] = *MEMORY[0x1E69DB648];
      v30 = +[CKUIBehavior sharedBehaviors];
      transcriptBoldFont = [v30 transcriptBoldFont];
      v243[0] = transcriptBoldFont;
      v242[1] = *MEMORY[0x1E69DB650];
      v32 = +[CKUIBehavior sharedBehaviors];
      theme = [v32 theme];
      appTintColor = [theme appTintColor];
      v243[1] = appTintColor;
      iMChatItem = [MEMORY[0x1E695DF20] dictionaryWithObjects:v243 forKeys:v242 count:2];

      0x3C = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:{-[CKMessageStatusChatItem count](self, "count")}];
      v37 = MEMORY[0x1E696AEC0];
      v38 = CKFrameworkBundle(0x3C);
      v39 = v38;
      v40 = @"PLAY_ALL_BUTTON_TITLE";
LABEL_88:
      v163 = [v38 localizedStringForKey:v40 value:&stru_1F04268F8 table:@"ChatKit"];
      __ck_localizedString = [0x3C __ck_localizedString];
      v164 = [v37 stringWithFormat:v163, __ck_localizedString];

      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection == 1)
      {
        v168 = @"\u200F";
      }

      else
      {
        v168 = @"\u200E";
      }

      v61 = [(__CFString *)v168 stringByAppendingString:v164];

      statusSaveButtonTranscriptText = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v61 attributes:iMChatItem];
      goto LABEL_145;
    case 3:
      iMChatItem = [(CKChatItem *)self IMChatItem];
      attributionType = [iMChatItem attributionType];
      transcriptOrientation2 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      showsLearnMoreLink = [iMChatItem showsLearnMoreLink];
      0x3C = [iMChatItem attributionInfo];
      __ck_localizedAppNameForTranscriptAttribution = [0x3C __ck_localizedAppNameForTranscriptAttribution];
      v61 = __ck_localizedAppNameForTranscriptAttribution;
      v77 = 0;
      transcriptPollsAddChoiceStampButtonColor2 = 0;
      v79 = &stru_1F04268F8;
      if (attributionType <= 5)
      {
        if (attributionType <= 2)
        {
          if (attributionType == 1)
          {
            v157 = MEMORY[0x1E696AEC0];
            v158 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
            v159 = v158;
            v160 = @"ATTRIBUTION_TEXT_APP";
          }

          else
          {
            if (attributionType != 2)
            {
              goto LABEL_143;
            }

            v157 = MEMORY[0x1E696AEC0];
            v158 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
            v159 = v158;
            v160 = @"ATTRIBUTION_TEXT_STS";
          }
        }

        else if (attributionType == 3)
        {
          v157 = MEMORY[0x1E696AEC0];
          v158 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
          v159 = v158;
          v160 = @"ATTRIBUTION_TEXT_STICKER";
        }

        else
        {
          if (attributionType != 4)
          {
            v141 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
            v142 = v141;
            v143 = @"ATTRIBUTION_TEXT_PHOTOS_EXTENSION";
LABEL_127:
            v79 = [v141 localizedStringForKey:v143 value:&stru_1F04268F8 table:@"ChatKit"];

            goto LABEL_139;
          }

          v157 = MEMORY[0x1E696AEC0];
          v158 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
          v159 = v158;
          v160 = @"ATTRIBUTION_TEXT_ASSOCIATED_STICKER";
        }

        v205 = [v158 localizedStringForKey:v160 value:&stru_1F04268F8 table:@"ChatKit"];
        v206 = [v157 stringWithFormat:v205, v61];

        mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection2 = [mEMORY[0x1E69DC668]2 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection2 == 1)
        {
          v209 = @"\u200F";
        }

        else
        {
          v209 = @"\u200E";
        }

        v79 = [(__CFString *)v209 stringByAppendingString:v206];

        transcriptPollsAddChoiceStampButtonColor2 = v61;
        goto LABEL_142;
      }

      if (attributionType > 8)
      {
        if (attributionType == 9)
        {
          mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
          transcriptPollsAddChoiceStampButtonColor2 = [mEMORY[0x1E69A7FC8] sensitiveStickerLinkText:0];

          mEMORY[0x1E69A7FC8]2 = [MEMORY[0x1E69A7FC8] sharedManager];
          v82 = mEMORY[0x1E69A7FC8]2;
          v83 = 0;
          goto LABEL_141;
        }

        if (attributionType != 10)
        {
          if (attributionType != 11)
          {
            goto LABEL_143;
          }

          v148 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
          transcriptPollsAddChoiceStampButtonColor2 = [v148 localizedStringForKey:@"ATTRIBUTION_TEXT_SENSITIVE_STICKER_REVEALED_LINK_TEXT" value:&stru_1F04268F8 table:@"ChatKit"];

          v149 = MEMORY[0x1E696AEC0];
          v151 = CKFrameworkBundle(v150);
          v152 = [v151 localizedStringForKey:@"%@" value:&stru_1F04268F8 table:@"ChatKit"];
          v153 = [v149 stringWithFormat:v152, transcriptPollsAddChoiceStampButtonColor2];

          mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection3 = [mEMORY[0x1E69DC668]3 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection3 == 1)
          {
            v156 = @"\u200F";
          }

          else
          {
            v156 = @"\u200E";
          }

          v79 = [(__CFString *)v156 stringByAppendingString:v153];

          goto LABEL_142;
        }

        v198 = MEMORY[0x1E696AEC0];
        v199 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
        v200 = [v199 localizedStringForKey:@"ATTRIBUTION_TEXT_SENT_WITH_CRITICAL_MESSAGING_API_FORMAT" value:&stru_1F04268F8 table:@"ChatKit"];
        v201 = [v198 stringWithFormat:v200, v61];

        mEMORY[0x1E69DC668]4 = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection4 = [mEMORY[0x1E69DC668]4 userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection4 == 1)
        {
          v204 = @"\u200F";
        }

        else
        {
          v204 = @"\u200E";
        }

        v79 = [(__CFString *)v204 stringByAppendingString:v201];

LABEL_139:
        transcriptPollsAddChoiceStampButtonColor2 = 0;
LABEL_142:
        v77 = 0;
        goto LABEL_143;
      }

      if (attributionType != 6)
      {
        if (attributionType != 7)
        {
          mEMORY[0x1E69A7FC8]3 = [MEMORY[0x1E69A7FC8] sharedManager];
          transcriptPollsAddChoiceStampButtonColor2 = [mEMORY[0x1E69A7FC8]3 sensitiveStickerLinkText:1];

          mEMORY[0x1E69A7FC8]2 = [MEMORY[0x1E69A7FC8] sharedManager];
          v82 = mEMORY[0x1E69A7FC8]2;
          v83 = 1;
LABEL_141:
          v79 = [mEMORY[0x1E69A7FC8]2 sensitiveStickerAttributionText:v83];

          goto LABEL_142;
        }

        v141 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
        v142 = v141;
        v143 = @"ATTRIBUTION_TEXT_SENT_WITH_FACETIME";
        goto LABEL_127;
      }

      v210 = CKFrameworkBundle(__ck_localizedAppNameForTranscriptAttribution);
      v79 = [v210 localizedStringForKey:@"ATTRIBUTION_TEXT_SENT_WITH_SIRI" value:&stru_1F04268F8 table:@"ChatKit"];

      if (!showsLearnMoreLink || CKIsRunningInMacCatalyst())
      {
        goto LABEL_139;
      }

      v79 = v79;
      v77 = 1;
      transcriptPollsAddChoiceStampButtonColor2 = v79;
LABEL_143:
      BYTE1(v223) = v77;
      LOBYTE(v223) = 0;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v79 orientation:transcriptOrientation2 dateSubText:0 buttonSubText:transcriptPollsAddChoiceStampButtonColor2 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v223 shouldDisplayChevronWithTranscriptBackground:?];
      statusSaveButtonTranscriptText = LABEL_144:;

      goto LABEL_145;
    case 4:
      iMChatItem = [(CKChatItem *)self IMChatItem];
      0x3C = [iMChatItem dataSource];
      statusSaveButtonTranscriptText = [0x3C statusAttributedString];
      goto LABEL_146;
    case 5:
      statusSaveButtonTranscriptText = [(CKMessageStatusChatItem *)self createReplayText];
      goto LABEL_148;
    case 8:
      v18 = CKFrameworkBundle(buttonType);
      v19 = v18;
      v20 = @"MESSAGE_STATUS_NOT_EDITED";
      goto LABEL_37;
    case 9:
      v88 = CKFrameworkBundle(buttonType);
      v89 = v88;
      v90 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_58;
    case 10:
      v88 = CKFrameworkBundle(buttonType);
      v89 = v88;
      v90 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
LABEL_58:
      iMChatItem = [v88 localizedStringForKey:v90 value:&stru_1F04268F8 table:@"ChatKit"];

      v127 = CKFrameworkBundle(v126);
      v128 = [v127 localizedStringForKey:@"MESSAGE_STATUS_NOT_EDITED" value:&stru_1F04268F8 table:@"ChatKit"];

      v128 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", iMChatItem, v128];
      LOWORD(v226) = 257;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v128 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:0 errorSubText:v128 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v226 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_63;
    case 11:
      time = [(CKMessageStatusChatItem *)self time];
      v103 = [(CKMessageStatusChatItem *)self now];
      v104 = v103;
      if (!time)
      {
        v147 = CKFrameworkBundle(v103);
        v145 = [v147 localizedStringForKey:@"MESSAGE_STATUS_READ" value:&stru_1F04268F8 table:@"ChatKit"];

        v13 = 0;
        goto LABEL_122;
      }

      __ck_currentCalendar = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v106 = [__ck_currentCalendar __ck_unitOfDisambiguityFromDate:time toDate:v104];

      switch(v106)
      {
        case 4:
          goto LABEL_50;
        case 16:
          v107 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v232 = 0;
          v13 = [v107 stringFromDate:time isRelative:&v232];
          v182 = v232;
          v108 = MEMORY[0x1E696AEC0];
          v109 = CKFrameworkBundle(v13);
          v110 = v109;
          if (v182)
          {
            v111 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          }

          else
          {
            v111 = @"MESSAGE_STATUS_READ_DAY";
          }

          break;
        case 8:
LABEL_50:
          v107 = +[CKMessageStatusChatItem thePastDateFormatter];
          v13 = [v107 stringFromDate:time];
          v108 = MEMORY[0x1E696AEC0];
          v109 = CKFrameworkBundle(v13);
          v110 = v109;
          v111 = @"MESSAGE_STATUS_READ_DATE";
          break;
        default:
          v107 = +[CKMessageStatusChatItem todayDateFormatter];
          v13 = [v107 stringFromDate:time];
          v108 = MEMORY[0x1E696AEC0];
          v109 = CKFrameworkBundle(v13);
          v110 = v109;
          v111 = @"MESSAGE_STATUS_READ_TIME";
          break;
      }

      v191 = [v109 localizedStringForKey:v111 value:&stru_1F04268F8 table:@"ChatKit"];
      v192 = [v108 stringWithFormat:v191, v13];

      mEMORY[0x1E69DC668]5 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection5 = [mEMORY[0x1E69DC668]5 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection5 == 1)
      {
        v195 = @"\u200F";
      }

      else
      {
        v195 = @"\u200E";
      }

      v145 = [(__CFString *)v195 stringByAppendingString:v192];

LABEL_122:
      v197 = CKFrameworkBundle(v196);
      v189 = [v197 localizedStringForKey:@"MESSAGE_STATUS_NOT_EDITED" value:&stru_1F04268F8 table:@"ChatKit"];

      v189 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v145, v189];
      LOWORD(v229) = 257;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v189 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:v13 buttonSubText:0 errorSubText:v189 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v229 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_123;
    case 12:
      v27 = CKFrameworkBundle(buttonType);
      v28 = v27;
      v29 = @"MESSAGE_STATUS_EDITED";
      goto LABEL_45;
    case 13:
      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      v68 = *MEMORY[0x1E69A7678];
      v240 = *MEMORY[0x1E69A7680];
      v241 = &unk_1F04E78D8;
      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
      [mEMORY[0x1E69A8168] trackEvent:v68 withDictionary:v69];

      v71 = CKFrameworkBundle(v70);
      iMChatItem = [v71 localizedStringForKey:@"MESSAGE_STATUS_DELIVERED" value:&stru_1F04268F8 table:@"ChatKit"];

      v48 = CKFrameworkBundle(v72);
      v49 = v48;
      v50 = @"MESSAGE_STATUS_SEND_HQ_IMAGE";
      goto LABEL_62;
    case 14:
      v21 = CKFrameworkBundle(buttonType);
      v22 = v21;
      v23 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_19;
    case 15:
      v21 = CKFrameworkBundle(buttonType);
      v22 = v21;
      v23 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
LABEL_19:
      iMChatItem = [v21 localizedStringForKey:v23 value:&stru_1F04268F8 table:@"ChatKit"];

      v48 = CKFrameworkBundle(v47);
      v49 = v48;
      v50 = @"MESSAGE_STATUS_EDITED";
      goto LABEL_62;
    case 16:
      time2 = [(CKMessageStatusChatItem *)self time];
      v92 = [(CKMessageStatusChatItem *)self now];
      v93 = v92;
      if (!time2)
      {
        v146 = CKFrameworkBundle(v92);
        v145 = [v146 localizedStringForKey:@"MESSAGE_STATUS_READ" value:&stru_1F04268F8 table:@"ChatKit"];

        v13 = 0;
        goto LABEL_115;
      }

      __ck_currentCalendar2 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v95 = [__ck_currentCalendar2 __ck_unitOfDisambiguityFromDate:time2 toDate:v93];

      switch(v95)
      {
        case 4:
          goto LABEL_43;
        case 16:
          v96 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v232 = 0;
          v13 = [v96 stringFromDate:time2 isRelative:&v232];
          v181 = v232;
          v97 = MEMORY[0x1E696AEC0];
          v98 = CKFrameworkBundle(v13);
          v99 = v98;
          if (v181)
          {
            v100 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          }

          else
          {
            v100 = @"MESSAGE_STATUS_READ_DAY";
          }

          break;
        case 8:
LABEL_43:
          v96 = +[CKMessageStatusChatItem thePastDateFormatter];
          v13 = [v96 stringFromDate:time2];
          v97 = MEMORY[0x1E696AEC0];
          v98 = CKFrameworkBundle(v13);
          v99 = v98;
          v100 = @"MESSAGE_STATUS_READ_DATE";
          break;
        default:
          v96 = +[CKMessageStatusChatItem todayDateFormatter];
          v13 = [v96 stringFromDate:time2];
          v97 = MEMORY[0x1E696AEC0];
          v98 = CKFrameworkBundle(v13);
          v99 = v98;
          v100 = @"MESSAGE_STATUS_READ_TIME";
          break;
      }

      v183 = [v98 localizedStringForKey:v100 value:&stru_1F04268F8 table:@"ChatKit"];
      v184 = [v97 stringWithFormat:v183, v13];

      mEMORY[0x1E69DC668]6 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection6 = [mEMORY[0x1E69DC668]6 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection6 == 1)
      {
        v187 = @"\u200F";
      }

      else
      {
        v187 = @"\u200E";
      }

      v145 = [(__CFString *)v187 stringByAppendingString:v184];

LABEL_115:
      v178 = CKFrameworkBundle(v188);
      v179 = v178;
      v180 = @"MESSAGE_STATUS_EDITED";
      goto LABEL_116;
    case 17:
      v27 = CKFrameworkBundle(buttonType);
      v28 = v27;
      v29 = @"MESSAGE_STATUS_HIDE_EDITS";
LABEL_45:
      v101 = [v27 localizedStringForKey:v29 value:&stru_1F04268F8 table:@"ChatKit"];

      LOWORD(v223) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v101 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:v101 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v223 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_68;
    case 18:
      v130 = CKFrameworkBundle(buttonType);
      v131 = v130;
      v132 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_61;
    case 19:
      v130 = CKFrameworkBundle(buttonType);
      v131 = v130;
      v132 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
LABEL_61:
      iMChatItem = [v130 localizedStringForKey:v132 value:&stru_1F04268F8 table:@"ChatKit"];

      v48 = CKFrameworkBundle(v133);
      v49 = v48;
      v50 = @"MESSAGE_STATUS_HIDE_EDITS";
LABEL_62:
      v128 = [v48 localizedStringForKey:v50 value:&stru_1F04268F8 table:@"ChatKit"];

      v128 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", iMChatItem, v128];
      LOWORD(v227) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v128 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:v128 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v227 shouldDisplayChevronWithTranscriptBackground:?];
      statusSaveButtonTranscriptText = LABEL_63:;

      goto LABEL_147;
    case 20:
      time3 = [(CKMessageStatusChatItem *)self time];
      v8 = [(CKMessageStatusChatItem *)self now];
      v9 = v8;
      if (!time3)
      {
        v144 = CKFrameworkBundle(v8);
        v145 = [v144 localizedStringForKey:@"MESSAGE_STATUS_READ" value:&stru_1F04268F8 table:@"ChatKit"];

        v13 = 0;
        goto LABEL_103;
      }

      __ck_currentCalendar3 = [MEMORY[0x1E695DEE8] __ck_currentCalendar];
      v11 = [__ck_currentCalendar3 __ck_unitOfDisambiguityFromDate:time3 toDate:v9];

      switch(v11)
      {
        case 4:
          goto LABEL_9;
        case 16:
          v12 = +[CKMessageStatusChatItem thisWeekRelativeDateFormatter];
          v232 = 0;
          v13 = [v12 stringFromDate:time3 isRelative:&v232];
          v171 = v232;
          v14 = MEMORY[0x1E696AEC0];
          v15 = CKFrameworkBundle(v13);
          v16 = v15;
          if (v171)
          {
            v17 = @"MESSAGE_STATUS_READ_RELATIVE_DAY";
          }

          else
          {
            v17 = @"MESSAGE_STATUS_READ_DAY";
          }

          break;
        case 8:
LABEL_9:
          v12 = +[CKMessageStatusChatItem thePastDateFormatter];
          v13 = [v12 stringFromDate:time3];
          v14 = MEMORY[0x1E696AEC0];
          v15 = CKFrameworkBundle(v13);
          v16 = v15;
          v17 = @"MESSAGE_STATUS_READ_DATE";
          break;
        default:
          v12 = +[CKMessageStatusChatItem todayDateFormatter];
          v13 = [v12 stringFromDate:time3];
          v14 = MEMORY[0x1E696AEC0];
          v15 = CKFrameworkBundle(v13);
          v16 = v15;
          v17 = @"MESSAGE_STATUS_READ_TIME";
          break;
      }

      v172 = [v15 localizedStringForKey:v17 value:&stru_1F04268F8 table:@"ChatKit"];
      v173 = [v14 stringWithFormat:v172, v13];

      mEMORY[0x1E69DC668]7 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection7 = [mEMORY[0x1E69DC668]7 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection7 == 1)
      {
        v176 = @"\u200F";
      }

      else
      {
        v176 = @"\u200E";
      }

      v145 = [(__CFString *)v176 stringByAppendingString:v173];

LABEL_103:
      v178 = CKFrameworkBundle(v177);
      v179 = v178;
      v180 = @"MESSAGE_STATUS_HIDE_EDITS";
LABEL_116:
      v189 = [v178 localizedStringForKey:v180 value:&stru_1F04268F8 table:@"ChatKit"];

      v189 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", v145, v189];
      LOWORD(v228) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v189 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:v13 buttonSubText:v189 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v228 shouldDisplayChevronWithTranscriptBackground:?];
      statusSaveButtonTranscriptText = LABEL_123:;

      goto LABEL_148;
    case 21:
      mEMORY[0x1E69A8168]2 = [MEMORY[0x1E69A8168] sharedInstance];
      v52 = *MEMORY[0x1E69A7690];
      v238 = *MEMORY[0x1E69A77B0];
      v239 = &unk_1F04E78D8;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
      [mEMORY[0x1E69A8168]2 trackEvent:v52 withDictionary:v53];

      iMChatItem = [(CKChatItem *)self IMChatItem];
      0x3C = [iMChatItem recipientDisplayName];
      v54 = MEMORY[0x1E696AEC0];
      v55 = CKFrameworkBundle(0x3C);
      v56 = [v55 localizedStringForKey:@"MESSAGE_STATUS_CONFIRM_SEND_VIA_SATELLITE_SUB_STATUS" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
      v57 = [v54 localizedStringWithFormat:v56, 0x3C];

      mEMORY[0x1E69DC668]8 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection8 = [mEMORY[0x1E69DC668]8 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection8 == 1)
      {
        v60 = @"\u200F";
      }

      else
      {
        v60 = @"\u200E";
      }

      v61 = [(__CFString *)v60 stringByAppendingString:v57];

      v63 = CKFrameworkBundle(v62);
      swyAppName = [v63 localizedStringForKey:@"MESSAGE_STATUS_CONFIRM_SEND_VIA_SATELLITE" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];

      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ \n %@", v61, swyAppName];
      LOWORD(v224) = 256;
      v66 = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v65 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:swyAppName errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v224 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_24;
    case 22:
      v134 = MEMORY[0x1E696AEC0];
      v135 = CKFrameworkBundle(buttonType);
      v136 = [v135 localizedStringForKey:@"MESSAGE_STATUS_CONFIRM_SENT_VIA_SATELLITE" value:&stru_1F04268F8 table:@"ChatKit-CarrierPigeon"];
      v137 = [v134 localizedStringWithFormat:v136];

      mEMORY[0x1E69DC668]9 = [MEMORY[0x1E69DC668] sharedApplication];
      userInterfaceLayoutDirection9 = [mEMORY[0x1E69DC668]9 userInterfaceLayoutDirection];

      if (userInterfaceLayoutDirection9 == 1)
      {
        v140 = @"\u200F";
      }

      else
      {
        v140 = @"\u200E";
      }

      v101 = [(__CFString *)v140 stringByAppendingString:v137];

      LOWORD(v223) = 0;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v101 orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:0 errorSubText:0 overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v223 shouldDisplayChevronWithTranscriptBackground:?];
      statusSaveButtonTranscriptText = LABEL_68:;

      goto LABEL_148;
    case 23:
      v18 = CKFrameworkBundle(buttonType);
      v19 = v18;
      v20 = @"MESSAGE_STATUS_NOT_CANCELLED";
LABEL_37:
      v87 = [v18 localizedStringForKey:v20 value:&stru_1F04268F8 table:@"ChatKit"];

      iMChatItem = v87;
      LOWORD(v223) = 257;
      statusSaveButtonTranscriptText = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:iMChatItem orientation:[(CKMessageStatusChatItem *)self transcriptOrientation] dateSubText:0 buttonSubText:0 errorSubText:iMChatItem overrideTextColor:0 overrideButtonColor:0 shouldReplaceWarningIcon:v223 shouldDisplayChevronWithTranscriptBackground:?];

      goto LABEL_147;
    case 24:
      transcriptOrientation3 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      iMChatItem = CKFrameworkBundle(transcriptOrientation3);
      0x3C = [iMChatItem localizedStringForKey:@"POLLS_ADD_CHOICE" value:&stru_1F04268F8 table:@"ChatKit"];
      v43 = CKFrameworkBundle(0x3C);
      v44 = [v43 localizedStringForKey:@"POLLS_ADD_CHOICE" value:&stru_1F04268F8 table:@"ChatKit"];
      v45 = +[CKUIBehavior sharedBehaviors];
      transcriptPollsAddChoiceStampButtonColor = [v45 transcriptPollsAddChoiceStampButtonColor];
      LOWORD(v223) = 256;
      statusSaveButtonTranscriptText = [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:0x3C orientation:transcriptOrientation3 dateSubText:0 buttonSubText:v44 errorSubText:0 overrideTextColor:0 overrideButtonColor:transcriptPollsAddChoiceStampButtonColor shouldReplaceWarningIcon:v223 shouldDisplayChevronWithTranscriptBackground:?];

      goto LABEL_146;
    case 25:
      v24 = CKFrameworkBundle(buttonType);
      v25 = v24;
      v26 = @"MESSAGE_STATUS_DELIVERED";
      goto LABEL_35;
    case 26:
      v24 = CKFrameworkBundle(buttonType);
      v25 = v24;
      v26 = @"MESSAGE_STATUS_DELIVERED_QUIETLY";
      goto LABEL_35;
    case 27:
      v24 = CKFrameworkBundle(buttonType);
      v25 = v24;
      v26 = @"MESSAGE_STATUS_READ";
LABEL_35:
      iMChatItem = [v24 localizedStringForKey:v26 value:&stru_1F04268F8 table:@"ChatKit"];

      v85 = CKFrameworkBundle(v84);
      0x3C = [v85 localizedStringForKey:@"POLLS_ADD_CHOICE" value:&stru_1F04268F8 table:@"ChatKit"];

      v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ • %@", 0x3C, iMChatItem];
      transcriptOrientation4 = [(CKMessageStatusChatItem *)self transcriptOrientation];
      v79 = +[CKUIBehavior sharedBehaviors];
      transcriptPollsAddChoiceStampButtonColor2 = [(__CFString *)v79 transcriptPollsAddChoiceStampButtonColor];
      LOWORD(v225) = 256;
      [(CKMessageStatusChatItem *)self _styledStatusTextWithStatusText:v61 orientation:transcriptOrientation4 dateSubText:0 buttonSubText:0x3C errorSubText:0 overrideTextColor:0 overrideButtonColor:transcriptPollsAddChoiceStampButtonColor2 shouldReplaceWarningIcon:v225 shouldDisplayChevronWithTranscriptBackground:?];
      goto LABEL_144;
    default:
      if ([(CKMessageStatusChatItem *)self statusType]!= 21)
      {
LABEL_56:
        statusSaveButtonTranscriptText = 0;
        goto LABEL_148;
      }

      iMChatItem2 = [(CKChatItem *)self IMChatItem];
      syndicationStatus = [iMChatItem2 syndicationStatus];
      v235 = *MEMORY[0x1E69DB648];
      v113 = v235;
      v114 = +[CKUIBehavior sharedBehaviors];
      transcriptBoldFont2 = [v114 transcriptBoldFont];
      v237[0] = transcriptBoldFont2;
      v236 = *MEMORY[0x1E69DB650];
      v116 = v236;
      v117 = +[CKUIBehavior sharedBehaviors];
      theme2 = [v117 theme];
      messageStatusLinkTextColor = [theme2 messageStatusLinkTextColor];
      v237[1] = messageStatusLinkTextColor;
      v230 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v237 forKeys:&v235 count:2];

      v233[0] = v113;
      v120 = +[CKUIBehavior sharedBehaviors];
      transcriptMessageStatusFont = [v120 transcriptMessageStatusFont];
      v233[1] = v116;
      v234[0] = transcriptMessageStatusFont;
      v122 = +[CKUIBehavior sharedBehaviors];
      theme3 = [v122 theme];
      messageStatusChatItemAttributionButtonColor = [theme3 messageStatusChatItemAttributionButtonColor];
      v234[1] = messageStatusChatItemAttributionButtonColor;
      v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v234 forKeys:v233 count:2];

      if (syndicationStatus)
      {
        if (syndicationStatus != 1)
        {
          statusSaveButtonTranscriptText = 0;
          0x3C = v230;
          iMChatItem = iMChatItem2;
          goto LABEL_145;
        }

        iMChatItem = iMChatItem2;
        0x3C = v230;
        if ([iMChatItem2 wasDetectedAsSWYSpam])
        {
          v125 = objc_alloc(MEMORY[0x1E696AAB0]);
          swyAppName = CKFrameworkBundle(v125);
          v65 = [swyAppName localizedStringForKey:@"MARKED_AS_NOT_DONATED" value:&stru_1F04268F8 table:@"ChatKit"];
          v66 = [v125 initWithString:v65 attributes:v230];
LABEL_24:
          statusSaveButtonTranscriptText = v66;

          goto LABEL_25;
        }

        swyAppName = [iMChatItem2 swyAppName];
        if ([swyAppName length])
        {
          isSpamOrUnknown = [iMChatItem2 isSpamOrUnknown];

          if (isSpamOrUnknown)
          {
            statusSaveButtonTranscriptText = 0;
            goto LABEL_145;
          }

          v214 = objc_alloc(MEMORY[0x1E696AAB0]);
          v215 = MEMORY[0x1E696AEC0];
          v216 = CKFrameworkBundle(v214);
          v217 = [v216 localizedStringForKey:@"MARKED_AS_NOT_DONATED_PUBLICSWY" value:&stru_1F04268F8 table:@"ChatKit"];
          swyAppName2 = [iMChatItem2 swyAppName];
          v218 = [v215 stringWithFormat:v217, swyAppName2];

          mEMORY[0x1E69DC668]10 = [MEMORY[0x1E69DC668] sharedApplication];
          userInterfaceLayoutDirection10 = [mEMORY[0x1E69DC668]10 userInterfaceLayoutDirection];

          if (userInterfaceLayoutDirection10 == 1)
          {
            v222 = @"\u200F";
          }

          else
          {
            v222 = @"\u200E";
          }

          swyAppName = [(__CFString *)v222 stringByAppendingString:v218];

          statusSaveButtonTranscriptText = [v214 initWithString:swyAppName attributes:v61];
        }

        else
        {
          statusSaveButtonTranscriptText = 0;
        }

LABEL_25:

        goto LABEL_145;
      }

      iMChatItem = iMChatItem2;
      if ([iMChatItem2 wasDetectedAsSWYSpam])
      {
        v169 = objc_alloc(MEMORY[0x1E696AAB0]);
        swyAppName = CKFrameworkBundle(v169);
        v170 = [swyAppName localizedStringForKey:@"MARKED_AS_DONATED" value:&stru_1F04268F8 table:@"ChatKit"];
        statusSaveButtonTranscriptText = [v169 initWithString:v170 attributes:v61];

        0x3C = v230;
        goto LABEL_25;
      }

      statusSaveButtonTranscriptText = 0;
      0x3C = v230;
LABEL_145:

LABEL_146:
LABEL_147:

LABEL_148:

      return statusSaveButtonTranscriptText;
  }
}

- (CGSize)loadLabelSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptStatusItemEdgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x1E695F060];
  v18 = *MEMORY[0x1E695F060];
  transcriptText = [(CKChatItem *)self transcriptText];
  if ([transcriptText length])
  {
    v20 = width - (v12 + v16);
    v21 = height - (v10 + v14);
    transcriptButtonText = [(CKMessageStatusChatItem *)self transcriptButtonText];
    v23 = [transcriptButtonText length];

    if (v23)
    {
      [(CKMessageStatusChatItem *)self buttonSize];
      v25 = v24;
      v26 = +[CKUIBehavior sharedBehaviors];
      [v26 transcriptButtonContentEdgeInsets];
      v18 = v25 + v27 + v28;
    }

    transcriptText2 = [(CKChatItem *)self transcriptText];
    [transcriptText2 boundingRectWithSize:3 options:0 context:{v20 - v18, v21}];
    v18 = v30;
    v32 = v31;

    transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
    [transcriptTraitCollection displayScale];
    if (v34 == 0.0)
    {
      if (CKMainScreenScale_once_13 != -1)
      {
        [CKMessageStatusChatItem loadLabelSizeThatFits:textAlignmentInsets:];
      }

      v34 = *&CKMainScreenScale_sMainScreenScale_13;
      if (*&CKMainScreenScale_sMainScreenScale_13 == 0.0)
      {
        v34 = 1.0;
      }
    }

    v35 = ceil(v32 * v34) / v34;
  }

  else
  {
    v35 = *(v17 + 8);
  }

  v36 = v18;
  v37 = v35;
  result.height = v37;
  result.width = v36;
  return result;
}

- (CGSize)loadButtonSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  if (insets)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    *&insets->top = *MEMORY[0x1E69DDCE0];
    *&insets->bottom = v7;
  }

  v8 = +[CKUIBehavior sharedBehaviors];
  [v8 transcriptStatusItemEdgeInsets];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  transcriptButtonText = [(CKMessageStatusChatItem *)self transcriptButtonText];
  if (transcriptButtonText)
  {
    v18 = +[CKMessageStatusChatItem sizingButton];
    [v18 setAttributedTitle:transcriptButtonText forState:0];
    v19 = objc_alloc_init(MEMORY[0x1E69DD2E8]);
    [v19 addSubview:v18];
    [v18 sizeThatFits:{width - (v12 + v16), height - (v10 + v14)}];
    v21 = v20;
    v23 = v22;
    transcriptTraitCollection = [(CKChatItem *)self transcriptTraitCollection];
    [transcriptTraitCollection displayScale];
    if (v25 == 0.0)
    {
      if (CKMainScreenScale_once_13 != -1)
      {
        [CKMessageStatusChatItem loadLabelSizeThatFits:textAlignmentInsets:];
      }

      v26 = *&CKMainScreenScale_sMainScreenScale_13;
      if (*&CKMainScreenScale_sMainScreenScale_13 == 0.0)
      {
        v26 = 1.0;
      }

      v27 = ceil(v21 * v26) / v26;
      v25 = *&CKMainScreenScale_sMainScreenScale_13;
      if (*&CKMainScreenScale_sMainScreenScale_13 == 0.0)
      {
        v25 = 1.0;
      }
    }

    else
    {
      v27 = ceil(v21 * v25) / v25;
    }

    v28 = ceil(v23 * v25) / v25;

    [v18 removeFromSuperview];
  }

  else
  {
    v27 = *MEMORY[0x1E695F060];
    v28 = *(MEMORY[0x1E695F060] + 8);
  }

  v29 = v27;
  v30 = v28;
  result.height = v30;
  result.width = v29;
  return result;
}

- (id)createReplayText
{
  v32[2] = *MEMORY[0x1E69E9840];
  allowsEffectAutoPlayback = [(CKMessageStatusChatItem *)self allowsEffectAutoPlayback];
  if ((allowsEffectAutoPlayback & 1) != 0 || (-[CKChatItem IMChatItem](self, "IMChatItem"), v4 = objc_claimAutoreleasedReturnValue(), [v4 effectStyleID], v5 = objc_claimAutoreleasedReturnValue(), v4, -[CKMessageStatusChatItem effectsControlStatusTextForEffectStyleID:](self, "effectsControlStatusTextForEffectStyleID:", v5), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    v7 = CKFrameworkBundle(allowsEffectAutoPlayback);
    v6 = [v7 localizedStringForKey:@"REPLAY_BUTTON_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  }

  v31[0] = *MEMORY[0x1E69DB648];
  v8 = +[CKUIBehavior sharedBehaviors];
  transcriptBoldFont = [v8 transcriptBoldFont];
  v32[0] = transcriptBoldFont;
  v31[1] = *MEMORY[0x1E69DB650];
  v10 = +[CKUIBehavior sharedBehaviors];
  theme = [v10 theme];
  transcriptReplayTextColor = [theme transcriptReplayTextColor];
  v32[1] = transcriptReplayTextColor;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v14 = MEMORY[0x1E69DCAD8];
  v15 = +[CKUIBehavior sharedBehaviors];
  theme2 = [v15 theme];
  transcriptReplayTextColor2 = [theme2 transcriptReplayTextColor];
  v30 = transcriptReplayTextColor2;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  v19 = [v14 configurationWithPaletteColors:v18];

  v20 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v21 = [v19 configurationByApplyingConfiguration:v20];

  v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"arrow.counterclockwise" withConfiguration:v21];
  v23 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v22];
  v24 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttachment:v23 attributes:v13];
  v25 = objc_alloc(MEMORY[0x1E696AAB0]);
  v26 = [@" " stringByAppendingString:v6];
  v27 = [v25 initWithString:v26 attributes:v13];

  [v24 appendAttributedString:v27];
  v28 = [v24 copy];

  return v28;
}

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

  layoutType = [v14 layoutType];
  if (layoutType > 0x13)
  {
    goto LABEL_18;
  }

  if (((1 << layoutType) & 0xDE002) == 0)
  {
    if (((1 << layoutType) & 0x60) != 0)
    {
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 smallTranscriptSpace];
LABEL_13:
      v18 = v23;
      goto LABEL_14;
    }

    if (layoutType == 8)
    {
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 largeTranscriptSpace];
      goto LABEL_13;
    }

LABEL_18:
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        *v31 = 138412546;
        *&v31[4] = v27;
        *&v31[12] = 2112;
        *&v31[14] = objc_opt_class();
        v28 = *&v31[14];
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "CKChatItem_Layout: %@ shouldn't follow %@", v31, 0x16u);
      }
    }

    v29 = [CKUIBehavior sharedBehaviors:*v31];
    [v29 smallTranscriptSpace];
    v18 = v30;

    goto LABEL_15;
  }

  v16 = +[CKUIBehavior sharedBehaviors];
  [v16 smallTranscriptSpace];
  v18 = v17;

  if ([v14 hasTail])
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isRoundTailedBalloonShapeEnabled = [mEMORY[0x1E69A8070] isRoundTailedBalloonShapeEnabled];

    if ((isRoundTailedBalloonShapeEnabled & 1) == 0)
    {
      v21 = +[CKUIBehavior sharedBehaviors];
      [v21 balloonMaskTailSizeForTailShape:1];
      v18 = v18 + v22;
LABEL_14:
    }
  }

LABEL_15:
  v24 = [CKChatItemLayoutUtilities transcriptVerticalEdgeSpacingForChatItem:self previousChatItem:v14 topSpacing:v18 bottomSpacing:0.0];

  return v24;
}

@end