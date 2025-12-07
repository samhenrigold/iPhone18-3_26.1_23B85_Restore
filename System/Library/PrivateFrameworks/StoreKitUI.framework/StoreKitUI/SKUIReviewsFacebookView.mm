@interface SKUIReviewsFacebookView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SKUIReviewsFacebookView)initWithClientContext:(id)context;
- (UIEdgeInsets)contentInsets;
- (id)_composedStringForNames:(id)names userLiked:(BOOL)liked;
- (void)_reloadFriendNamesLabel;
- (void)_reloadLikeButtonState;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setFriendNames:(id)names;
- (void)setUserLiked:(BOOL)liked;
@end

@implementation SKUIReviewsFacebookView

- (SKUIReviewsFacebookView)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewsFacebookView initWithClientContext:];
  }

  v41.receiver = self;
  v41.super_class = SKUIReviewsFacebookView;
  v6 = [(SKUIReviewsFacebookView *)&v41 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v8;

    v10 = v7->_titleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    v12 = v7->_titleLabel;
    if (contextCopy)
    {
      [contextCopy localizedStringForKey:@"REVIEWS_FACEBOOK_TITLE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TITLE" inBundles:0 inTable:@"ProductPage"];
    }
    v13 = ;
    [(UILabel *)v12 setText:v13];

    v14 = v7->_titleLabel;
    secondaryTextColor = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)v14 setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v14 setTextColor:blackColor];
    }

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_titleLabel];
    v17 = objc_alloc_init(MEMORY[0x277D756B8]);
    friendsLabel = v7->_friendsLabel;
    v7->_friendsLabel = v17;

    [(UILabel *)v7->_friendsLabel setNumberOfLines:5];
    v19 = v7->_friendsLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v19 setBackgroundColor:clearColor];

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_friendsLabel];
    [(SKUIReviewsFacebookView *)v7 _reloadFriendNamesLabel];
    v21 = objc_alloc_init(MEMORY[0x277D75220]);
    likeButton = v7->_likeButton;
    v7->_likeButton = v21;

    v23 = v7->_likeButton;
    secondaryTextColor2 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UIButton *)v23 setTitleColor:secondaryTextColor2 forState:0];
    }

    else
    {
      tintColor = [(SKUIReviewsFacebookView *)v7 tintColor];
      [(UIButton *)v23 setTitleColor:tintColor forState:0];
    }

    [(UIButton *)v7->_likeButton setShowsTouchWhenHighlighted:1];
    titleLabel = [(UIButton *)v7->_likeButton titleLabel];
    v27 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [titleLabel setFont:v27];

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_likeButton];
    [(SKUIReviewsFacebookView *)v7 _reloadLikeButtonState];
    v28 = objc_alloc(MEMORY[0x277D755E8]);
    v29 = MEMORY[0x277D755B8];
    v31 = SKUIBundle(v28, v30);
    v32 = [v29 imageNamed:@"ProductViewReviewsFacebookIcon" inBundle:v31];
    v33 = [v28 initWithImage:v32];
    logoImageView = v7->_logoImageView;
    v7->_logoImageView = v33;

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_logoImageView];
    v35 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v7->_separatorView;
    v7->_separatorView = v35;

    v37 = v7->_separatorView;
    v38 = objc_msgSend_primaryTextColor(v7->_colorScheme);
    if (v38)
    {
      [(UIView *)v37 setBackgroundColor:v38];
    }

    else
    {
      v39 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
      [(UIView *)v37 setBackgroundColor:v39];
    }

    [(SKUIReviewsFacebookView *)v7 addSubview:v7->_separatorView];
  }

  return v7;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v15 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    titleLabel = self->_titleLabel;
    secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }

    separatorView = self->_separatorView;
    v10 = objc_msgSend_primaryTextColor(self->_colorScheme);
    if (v10)
    {
      [(UIView *)separatorView setBackgroundColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.200000003];
      [(UIView *)separatorView setBackgroundColor:v11];
    }

    likeButton = self->_likeButton;
    secondaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UIButton *)likeButton setTitleColor:secondaryTextColor2 forState:0];
    }

    else
    {
      tintColor = [(SKUIReviewsFacebookView *)self tintColor];
      [(UIButton *)likeButton setTitleColor:tintColor forState:0];
    }

    [(SKUIReviewsFacebookView *)self _reloadFriendNamesLabel];
    schemeCopy = v15;
  }
}

- (void)setFriendNames:(id)names
{
  if (self->_friendNames != names)
  {
    v4 = [names copy];
    friendNames = self->_friendNames;
    self->_friendNames = v4;

    [(SKUIReviewsFacebookView *)self _reloadFriendNamesLabel];
  }
}

- (void)setUserLiked:(BOOL)liked
{
  if (self->_userLiked != liked)
  {
    self->_userLiked = liked;
    [(SKUIReviewsFacebookView *)self _reloadLikeButtonState];
    [(SKUIReviewsFacebookView *)self _reloadFriendNamesLabel];

    [(SKUIReviewsFacebookView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIReviewsFacebookView *)self bounds];
  v57 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(UIImageView *)self->_logoImageView frame];
  v55 = v10;
  titleLabel = self->_titleLabel;
  v12 = 15.0;
  v13 = 15.0;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeToFit];
    frame = [(UILabel *)self->_titleLabel frame];
    v16 = v15;
    v17 = self->_titleLabel;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, 11.0, v7 + -30.0, v15, v57, v5, v7, v9, frame, v18);
    [(UILabel *)v17 setFrame:?];
    v59.origin.x = 15.0;
    v59.origin.y = 11.0;
    v59.size.width = v7 + -30.0;
    v59.size.height = v16;
    v13 = CGRectGetMaxY(v59) + -4.0 + 10.0;
  }

  logoImageView = self->_logoImageView;
  if (logoImageView)
  {
    frame2 = [(UIImageView *)logoImageView frame];
    v22 = v21;
    v24 = v23;
    v25 = self->_logoImageView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, v13, v21, v23, v57, v5, v7, v9, frame2, v26);
    [(UIImageView *)v25 setFrame:?];
    v60.origin.x = 15.0;
    v60.origin.y = v13;
    v60.size.width = v22;
    v60.size.height = v24;
    v12 = CGRectGetMaxX(v60) + 10.0;
  }

  v27 = v7 + -15.0;
  likeButton = self->_likeButton;
  v29 = v7 + -15.0;
  if (likeButton)
  {
    v30 = [(UIButton *)likeButton imageForState:0];
    [(UIButton *)self->_likeButton sizeToFit];
    [(UIButton *)self->_likeButton frame];
    v56 = v9;
    v31 = v5;
    v33 = v32;
    titleLabel = [(UIButton *)self->_likeButton titleLabel];
    [titleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v36 = v35;
    [v30 size];
    v38 = v36 + v37 + 6.0;

    v39 = (v55 - v33) * 0.5;
    v40 = v13 + roundf(v39);
    v41 = self->_likeButton;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v27 - v38, v40, v38, v33, v57, v31, v7, v56, v42, v43);
    [(UIButton *)v41 setFrame:?];
    v61.origin.x = v27 - v38;
    v61.origin.y = v40;
    v61.size.width = v38;
    v61.size.height = v33;
    v5 = v31;
    v9 = v56;
    v29 = CGRectGetMinX(v61) + -7.0;
  }

  if (self->_friendsLabel)
  {
    [(SKUIReviewsFacebookView *)self bringSubviewToFront:?];
    [(UILabel *)self->_friendsLabel frame];
    v44 = [(UILabel *)self->_friendsLabel sizeThatFits:v29 - v12, 1.79769313e308];
    friendsLabel = self->_friendsLabel;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v12, v13 + -5.0, v47, v9 - v13 + -15.0 + 5.0 + 3.0, v57, v5, v7, v9, v44, v46);
    [(UILabel *)friendsLabel setFrame:?];
  }

  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(UIView *)separatorView frame];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v51 = 1.0 / v50;

    v52 = self->_separatorView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, v9 - v51, v27, v51, v57, v5, v7, v9, v53, v54);

    [(UIView *)v52 setFrame:?];
  }
}

- (void)setBackgroundColor:(id)color
{
  likeButton = self->_likeButton;
  colorCopy = color;
  [(UIButton *)likeButton setBackgroundColor:colorCopy];
  [(UIImageView *)self->_logoImageView setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIReviewsFacebookView;
  [(SKUIReviewsFacebookView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel sizeThatFits:fits.width, fits.height];
    v8 = v7 + -4.0 + -4.0 + 10.0 + 30.0;
  }

  else
  {
    v8 = 30.0;
  }

  v10 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);
  logoImageView = self->_logoImageView;
  v12 = v9;
  v13 = *MEMORY[0x277CBF3A8];
  if (logoImageView)
  {
    [(UIImageView *)logoImageView frame];
    v13 = v14;
    v12 = v15 + 2.0;
  }

  likeButton = self->_likeButton;
  if (likeButton)
  {
    titleLabel = [(UIButton *)likeButton titleLabel];
    [titleLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v19 = v18;
    v9 = v20;

    v21 = [(UIButton *)self->_likeButton imageForState:0];
    [v21 size];
    v10 = v19 + v22 + 6.0;
  }

  friendsLabel = self->_friendsLabel;
  if (friendsLabel)
  {
    [(UILabel *)friendsLabel sizeThatFits:width + -30.0 - v13 + -10.0 + -7.0 - v10, height];
    v25 = v24 + -5.0 + -3.0;
  }

  else
  {
    v25 = 0.0;
  }

  if (v12 >= v25)
  {
    v25 = v12;
  }

  if (v25 < v9)
  {
    v25 = v9;
  }

  v26 = v8 + v25;
  v27 = width;
  result.height = v26;
  result.width = v27;
  return result;
}

- (id)_composedStringForNames:(id)names userLiked:(BOOL)liked
{
  likedCopy = liked;
  namesCopy = names;
  v7 = [namesCopy count];
  v8 = v7;
  if (!likedCopy)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        clientContext = self->_clientContext;
        if (clientContext)
        {
          [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TWO_FRIENDS_LIKE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_TWO_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v25 = MEMORY[0x277CCACA8];
        firstObject = [namesCopy objectAtIndex:0];
        goto LABEL_50;
      }

      if (v7 == 3)
      {
        v12 = self->_clientContext;
        if (v12)
        {
          [(SKUIClientContext *)v12 localizedStringForKey:@"REVIEWS_FACEBOOK_THREE_FRIENDS_LIKE" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_THREE_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v34 = MEMORY[0x277CCACA8];
        v17 = [namesCopy objectAtIndex:0];
        v28 = [namesCopy objectAtIndex:1];
        firstObject2 = [namesCopy objectAtIndex:2];
        [v34 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@%@" error:0, v17, v28, firstObject2];
        v33 = LABEL_43:;
LABEL_44:

LABEL_51:
        goto LABEL_52;
      }
    }

    else
    {
      if (!v7)
      {
        v9 = self->_clientContext;
        if (v9)
        {
          v10 = @"REVIEWS_FACEBOOK_FIRST_LIKE";
          goto LABEL_26;
        }

        v27 = @"REVIEWS_FACEBOOK_FIRST_LIKE";
LABEL_46:
        v21 = [SKUIClientContext localizedStringForKey:v27 inBundles:0 inTable:@"ProductPage"];
        goto LABEL_47;
      }

      if (v7 == 1)
      {
        v11 = self->_clientContext;
        if (v11)
        {
          [(SKUIClientContext *)v11 localizedStringForKey:@"REVIEWS_FACEBOOK_ONE_FRIEND_LIKES" inTable:@"ProductPage"];
        }

        else
        {
          [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_ONE_FRIEND_LIKES" inBundles:0 inTable:@"ProductPage"];
        }
        v15 = ;
        v23 = MEMORY[0x277CCACA8];
        firstObject3 = [namesCopy objectAtIndex:0];
        goto LABEL_40;
      }
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 2];
    v17 = [v15 stringFromNumber:v19];

    v20 = self->_clientContext;
    if (v20)
    {
      [(SKUIClientContext *)v20 localizedStringForKey:@"REVIEWS_FACEBOOK_MANY_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_MANY_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v28 = ;
    v31 = MEMORY[0x277CCACA8];
    firstObject2 = [namesCopy objectAtIndex:0];
    v32 = [namesCopy objectAtIndex:1];
    v33 = [v31 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@%@" error:0, firstObject2, v32, v17];

    goto LABEL_44;
  }

  if (v7 == 2)
  {
    v14 = self->_clientContext;
    if (v14)
    {
      [(SKUIClientContext *)v14 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_TWO_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_TWO_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v15 = ;
    v25 = MEMORY[0x277CCACA8];
    firstObject = [namesCopy firstObject];
LABEL_50:
    v17 = firstObject;
    v28 = [namesCopy objectAtIndex:1];
    v33 = [v25 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@%@" error:0, v17, v28];
    goto LABEL_51;
  }

  if (v7 != 1)
  {
    if (!v7)
    {
      v9 = self->_clientContext;
      if (v9)
      {
        v10 = @"REVIEWS_FACEBOOK_YOU_LIKE";
LABEL_26:
        v21 = [(SKUIClientContext *)v9 localizedStringForKey:v10 inTable:@"ProductPage"];
LABEL_47:
        v33 = v21;
        goto LABEL_53;
      }

      v27 = @"REVIEWS_FACEBOOK_YOU_LIKE";
      goto LABEL_46;
    }

    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v15 setNumberStyle:1];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v8 - 1];
    v17 = [v15 stringFromNumber:v16];

    v18 = self->_clientContext;
    if (v18)
    {
      [(SKUIClientContext *)v18 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_MANY_FRIENDS_LIKE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_MANY_FRIENDS_LIKE" inBundles:0 inTable:@"ProductPage"];
    }
    v28 = ;
    v29 = MEMORY[0x277CCACA8];
    firstObject2 = [namesCopy firstObject];
    [v29 stringWithValidatedFormat:v28 validFormatSpecifiers:@"%@%@" error:0, firstObject2, v17, v36];
    goto LABEL_43;
  }

  v13 = self->_clientContext;
  if (v13)
  {
    [(SKUIClientContext *)v13 localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_ONE_FRIEND_LIKE" inTable:@"ProductPage"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_YOU_AND_ONE_FRIEND_LIKE" inBundles:0 inTable:@"ProductPage"];
  }
  v15 = ;
  v23 = MEMORY[0x277CCACA8];
  firstObject3 = [namesCopy firstObject];
LABEL_40:
  v17 = firstObject3;
  v33 = [v23 stringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:0, firstObject3];
LABEL_52:

LABEL_53:

  return v33;
}

- (void)_reloadFriendNamesLabel
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D74240]);
  [v3 setMaximumLineHeight:16.0];
  [v3 setMinimumLineHeight:16.0];
  [v3 setLineBreakMode:4];
  v13[0] = *MEMORY[0x277D740A8];
  v4 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
  v5 = *MEMORY[0x277D74118];
  v14[0] = v4;
  v14[1] = v3;
  v6 = *MEMORY[0x277D740C0];
  v13[1] = v5;
  v13[2] = v6;
  v7 = objc_msgSend_primaryTextColor(self->_colorScheme);
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.800000012];
  }

  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (!v7)
  {
  }

  v10 = objc_alloc(MEMORY[0x277CCA898]);
  v11 = [(SKUIReviewsFacebookView *)self _composedStringForNames:self->_friendNames userLiked:self->_userLiked];
  v12 = [v10 initWithString:v11 attributes:v9];

  [(UILabel *)self->_friendsLabel setAttributedText:v12];
  [(SKUIReviewsFacebookView *)self setNeedsLayout];
}

- (void)_reloadLikeButtonState
{
  likeButton = self->_likeButton;
  if (self->_userLiked)
  {
    [(UIButton *)self->_likeButton setImage:0 forState:0];
    v4 = self->_likeButton;
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_FACEBOOK_UNLIKE_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_UNLIKE_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v11 = ;
    [(UIButton *)v4 setTitle:v11 forState:0];

    v12 = self->_likeButton;
    v13 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v15 = *(MEMORY[0x277D768C8] + 16);
    v16 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v7 = SKUIBundle(self, a2);
    v8 = [v6 imageNamed:@"ProductViewReviewsFacebookLikeIcon" inBundle:v7];
    [(UIButton *)likeButton setImage:v8 forState:0];

    v9 = self->_likeButton;
    v10 = self->_clientContext;
    if (v10)
    {
      [(SKUIClientContext *)v10 localizedStringForKey:@"REVIEWS_FACEBOOK_LIKE_BUTTON" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_FACEBOOK_LIKE_BUTTON" inBundles:0 inTable:@"ProductPage"];
    }
    v17 = ;
    [(UIButton *)v9 setTitle:v17 forState:0];

    ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(v18, v19);
    v13 = 0.0;
    v14 = 6.0;
    if (ShouldReverseLayoutDirection)
    {
      v16 = 6.0;
    }

    else
    {
      v16 = 0.0;
    }

    if (ShouldReverseLayoutDirection)
    {
      v14 = 0.0;
    }

    v12 = self->_likeButton;
    v15 = 0.0;
  }

  [(UIButton *)v12 setTitleEdgeInsets:v13, v14, v15, v16];

  [(SKUIReviewsFacebookView *)self setNeedsLayout];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewsFacebookView initWithClientContext:]";
}

@end