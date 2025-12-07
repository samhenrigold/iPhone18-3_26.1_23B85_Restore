@interface PKPeerPaymentSiriSnippetContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPeerPaymentSiriSnippetContentView)initWithBalloonView:(id)view;
- (double)_balloonMaxWidthForBoundsWidth:(double)width;
- (id)_memoBalloonViewWithText:(id)text;
- (void)layoutSubviews;
- (void)setMemoText:(id)text;
- (void)setRecipient:(id)recipient;
- (void)setToFieldText:(id)text;
@end

@implementation PKPeerPaymentSiriSnippetContentView

- (PKPeerPaymentSiriSnippetContentView)initWithBalloonView:(id)view
{
  viewCopy = view;
  v26.receiver = self;
  v26.super_class = PKPeerPaymentSiriSnippetContentView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(PKPeerPaymentSiriSnippetContentView *)&v26 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v10 = +[UIColor clearColor];
    [(PKPeerPaymentSiriSnippetContentView *)height setBackgroundColor:v10];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    toLabel = height->_toLabel;
    height->_toLabel = v11;

    v13 = height->_toLabel;
    v14 = +[UIColor labelColor];
    [(UILabel *)v13 setTextColor:v14];

    v15 = height->_toLabel;
    v16 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:2 options:0];
    v17 = [UIFont fontWithDescriptor:v16 size:0.0];
    [(UILabel *)v15 setFont:v17];

    [(UILabel *)height->_toLabel setNumberOfLines:1];
    v18 = height->_toLabel;
    v19 = +[UIColor clearColor];
    [(UILabel *)v18 setBackgroundColor:v19];

    [(PKPeerPaymentSiriSnippetContentView *)height addSubview:height->_toLabel];
    objc_storeStrong(&height->_peerPaymentBalloonView, view);
    [(PKPeerPaymentSiriSnippetContentView *)height addSubview:viewCopy];
    v20 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    toFieldStackView = height->_toFieldStackView;
    height->_toFieldStackView = v20;

    [(UIStackView *)height->_toFieldStackView setAxis:0];
    [(UIStackView *)height->_toFieldStackView setSpacing:16.0];
    LODWORD(v22) = 1148846080;
    [(UILabel *)height->_toLabel setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UILabel *)height->_toLabel setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1132068864;
    [(UILabel *)height->_toLabel setContentHuggingPriority:0 forAxis:v24];
    [(UIStackView *)height->_toFieldStackView addArrangedSubview:height->_toLabel];
    [(PKPeerPaymentSiriSnippetContentView *)height addSubview:height->_toFieldStackView];
  }

  return height;
}

- (void)setRecipient:(id)recipient
{
  recipientCopy = recipient;
  v5 = objc_alloc_init(CNContactStore);
  contactIdentifier = [recipientCopy contactIdentifier];

  v41 = contactIdentifier;
  v7 = [NSArray arrayWithObjects:&v41 count:1];
  v8 = [CNContact predicateForContactsWithIdentifiers:v7];

  v40 = CNContactThumbnailImageDataKey;
  v9 = [NSArray arrayWithObjects:&v40 count:1];
  v35 = 0;
  v10 = [v5 unifiedContactsMatchingPredicate:v8 keysToFetch:v9 error:&v35];
  v11 = v35;
  if (v11)
  {
    firstObject = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSiriSnippetContentView Error fetching contacts: %@", buf, 0xCu);
    }
  }

  else
  {
    firstObject = [v10 firstObject];
    if (firstObject)
    {
      v34 = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.MobileSMS" format:2];
      v13 = objc_alloc_init(off_10000CBD0());
      [v13 setCropStyle:1];
      v30 = v13;
      v14 = [v13 setPosition:2];
      v15 = objc_alloc_init(off_10000CBD8(v14));
      [v15 setBadgeStyleSettings:v13];
      v37 = firstObject;
      [NSArray arrayWithObjects:&v37 count:1];
      v16 = v31 = v10;
      v29 = v15;
      [v15 setContacts:v16];

      [v15 setBadgeImage:v34];
      view = [v15 view];
      recipientBadgedAvatarView = self->_recipientBadgedAvatarView;
      self->_recipientBadgedAvatarView = view;

      LODWORD(v19) = 1148846080;
      [(UIView *)self->_recipientBadgedAvatarView setContentCompressionResistancePriority:0 forAxis:v19];
      LODWORD(v20) = 1148846080;
      [(UIView *)self->_recipientBadgedAvatarView setContentCompressionResistancePriority:1 forAxis:v20];
      LODWORD(v21) = 1148846080;
      [(UIView *)self->_recipientBadgedAvatarView setContentHuggingPriority:0 forAxis:v21];
      [(UIView *)self->_recipientBadgedAvatarView setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [(UIView *)self->_recipientBadgedAvatarView widthAnchor];
      [widthAnchor constraintEqualToConstant:64.0];
      v23 = v32 = v9;
      v36[0] = v23;
      [(UIView *)self->_recipientBadgedAvatarView heightAnchor];
      v33 = v8;
      v25 = v24 = v5;
      v26 = [v25 constraintEqualToConstant:64.0];
      v36[1] = v26;
      v27 = [NSArray arrayWithObjects:v36 count:2];
      [NSLayoutConstraint activateConstraints:v27];

      v28 = v34;
      v5 = v24;
      v8 = v33;

      v9 = v32;
      v10 = v31;
      [(UIStackView *)self->_toFieldStackView insertArrangedSubview:self->_recipientBadgedAvatarView atIndex:0];
      [(PKPeerPaymentSiriSnippetContentView *)self setNeedsLayout];
    }

    else
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "PKPeerPaymentSiriSnippetContentView Error no results from contacts query for image data", buf, 2u);
      }
    }
  }
}

- (void)setToFieldText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_toFieldText] & 1) == 0)
  {
    v4 = [textCopy copy];
    toFieldText = self->_toFieldText;
    self->_toFieldText = v4;

    [(UILabel *)self->_toLabel setText:textCopy];
    [(PKPeerPaymentSiriSnippetContentView *)self setNeedsLayout];
  }
}

- (void)setMemoText:(id)text
{
  textCopy = text;
  if (([textCopy isEqualToString:self->_memoText] & 1) == 0)
  {
    v4 = [textCopy copy];
    memoText = self->_memoText;
    self->_memoText = v4;

    [(CKTextBalloonView *)self->_memoBalloonView removeFromSuperview];
    memoBalloonView = self->_memoBalloonView;
    self->_memoBalloonView = 0;

    if ([(NSString *)self->_memoText length])
    {
      v7 = [(PKPeerPaymentSiriSnippetContentView *)self _memoBalloonViewWithText:textCopy];
      v8 = self->_memoBalloonView;
      self->_memoBalloonView = v7;

      [(PKPeerPaymentSiriSnippetContentView *)self addSubview:self->_memoBalloonView];
    }

    [(PKPeerPaymentSiriSnippetContentView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(PKPeerPaymentSiriSnippetContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIStackView *)self->_toFieldStackView setFrame:15.0, 8.0, v3 + -30.0, 64.0];
  [(UILabel *)self->_toLabel sizeToFit];
  [(UIStackView *)self->_toFieldStackView frame];
  v7 = CGRectGetMaxY(v26) + 8.0;
  [(PKPeerPaymentSiriSnippetContentView *)self _balloonMaxWidthForBoundsWidth:v4];
  v9 = v8;
  bubbleView = [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView bubbleView];
  [bubbleView sizeThatFits:{v9, v6 - v7 + -12.0}];
  v12 = v11;
  v14 = v13;

  v15 = v4 - v12 + -10.0;
  if (v15 < 0.0)
  {
    v15 = 0.0;
  }

  [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView setFrame:v15, v7, v12, v14];
  memoBalloonView = self->_memoBalloonView;
  if (memoBalloonView)
  {
    [(CKTextBalloonView *)memoBalloonView setOrientation:1];
    [(CKTextBalloonView *)self->_memoBalloonView prepareForDisplayIfNeeded];
    [(CKTextBalloonView *)self->_memoBalloonView sizeThatFits:v9, 1.79769313e308];
    v18 = v17;
    v20 = v19;
    v21 = v4 - v17 + -10.0;
    if (v21 >= 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0.0;
    }

    [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView frame];
    MaxY = CGRectGetMaxY(v27);
    v24 = self->_memoBalloonView;

    [(CKTextBalloonView *)v24 setFrame:v22, MaxY + 8.0, v18, v20];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UILabel *)self->_toLabel sizeThatFits:fits.width + -30.0 + -64.0, fits.height + -16.0];
  v7 = v6;
  [(PKPeerPaymentSiriSnippetContentView *)self _balloonMaxWidthForBoundsWidth:width];
  v9 = v8;
  bubbleView = [(PKPeerPaymentMessageBalloonView *)self->_peerPaymentBalloonView bubbleView];
  [bubbleView sizeThatFits:{v9, height + -80.0 + -12.0}];
  v12 = v11;
  v14 = v13;

  v15 = v14 + 80.0;
  memoBalloonView = self->_memoBalloonView;
  if (memoBalloonView)
  {
    v17 = v15 + 8.0;
    [(CKTextBalloonView *)memoBalloonView sizeThatFits:v9, 1.79769313e308];
    v15 = v17 + v19;
  }

  else
  {
    v18 = CGSizeZero.width;
  }

  v20 = v7 + 30.0;
  v21 = v18 + 20.0;
  if (v7 + 30.0 <= v12 + 20.0)
  {
    v20 = v12 + 20.0;
  }

  if (v20 > v21)
  {
    v21 = v20;
  }

  v22 = v15 + 12.0;
  result.height = v22;
  result.width = v21;
  return result;
}

- (id)_memoBalloonViewWithText:(id)text
{
  textCopy = text;
  v4 = +[CKUIBehavior sharedBehaviors];
  objc_opt_class();
  v5 = CKBalloonViewForClass();
  [v5 setHasTail:1];
  [v5 setBalloonCorners:-1];
  [v5 setColor:5];
  [v5 setCanUseOpaqueMask:0];
  v6 = [[NSMutableAttributedString alloc] initWithString:textCopy];
  if ([v4 hyphenatesTextContent])
  {
    v7 = +[NSParagraphStyle defaultParagraphStyle];
    v8 = [v7 mutableCopy];

    LODWORD(v9) = 1.0;
    [v8 setHyphenationFactor:v9];
    [v6 addAttribute:NSParagraphStyleAttributeName value:v8 range:{0, objc_msgSend(v6, "length")}];
  }

  v10 = [v6 length];
  if ([textCopy __ck_shouldUseBigEmoji])
  {
    [v4 bigEmojiFont];
  }

  else
  {
    [v4 balloonTextFont];
  }
  v11 = ;
  [v6 addAttribute:NSFontAttributeName value:v11 range:{0, v10}];
  v12 = +[CKUIBehavior sharedBehaviors];
  theme = [v12 theme];
  v14 = [theme balloonTextColorForColorType:{objc_msgSend(v5, "color")}];
  [v6 addAttribute:NSForegroundColorAttributeName value:v14 range:{0, v10}];

  [v5 setAttributedText:v6];
  [v5 prepareForDisplay];

  return v5;
}

- (double)_balloonMaxWidthForBoundsWidth:(double)width
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 balloonMaxWidthForTranscriptWidth:0 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:width shouldCoverSendButton:{0.0, 10.0, 0.0, 10.0}];
  v6 = v5;

  result = width + -20.0;
  if (v6 < width + -20.0)
  {
    return v6;
  }

  return result;
}

@end