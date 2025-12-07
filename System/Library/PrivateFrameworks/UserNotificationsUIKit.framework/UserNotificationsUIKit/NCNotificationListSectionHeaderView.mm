@interface NCNotificationListSectionHeaderView
+ (CGSize)_clearButtonPreferredSize;
+ (CGSize)_collapseButtonPreferredSize;
+ (double)headerHeightWithWidth:(double)width title:(id)title isShowingCollapseButton:(BOOL)button;
- (BOOL)adjustForContentSizeCategoryChange;
- (NCNotificationListSectionHeaderView)initWithFrame:(CGRect)frame;
- (NCNotificationListSectionHeaderViewDelegate)delegate;
- (id)_legibilitySettings;
- (id)containerViewForToggleControlClickInteractionPresentedContent:(id)content;
- (void)_configureClearButtonIfNecessary;
- (void)_configureCollapseButtonIfNecessary;
- (void)_configureHeaderTitleViewIfNecessary;
- (void)_handleClearAll:(id)all;
- (void)_handleClearButtonPrimaryActionTriggered:(id)triggered;
- (void)_handleClearButtonTouchUpInside:(id)inside;
- (void)_handleCollapseActionTriggered:(id)triggered;
- (void)_layoutClearButton;
- (void)_layoutCollapseButton;
- (void)_layoutHeaderTitleView;
- (void)_resetClearButtonStateAnimated:(BOOL)animated;
- (void)_updateHeaderTitleViewWithLegibilitySettings:(id)settings;
- (void)adjustForLegibilitySettingsChange:(id)change;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setTitle:(id)title;
- (void)toggleControlDidBeginClickInteraction:(id)interaction;
- (void)toggleControlDidDismssClickInteractionPresentedContent:(id)content;
- (void)toggleControlDidPresentClickInteractionPresentedContent:(id)content;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NCNotificationListSectionHeaderView

+ (CGSize)_clearButtonPreferredSize
{
  v3 = *(&__clearButtonPreferredSize + 1);
  v2 = *&__clearButtonPreferredSize;
  if (*&__clearButtonPreferredSize == 0.0 && *(&__clearButtonPreferredSize + 1) == 0.0)
  {
    v4 = NCUserNotificationsUIKitFrameworkBundle(self);
    v5 = [v4 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
    v6 = [NCToggleControl dismissControlWithMaterialRecipe:0 clearAllText:v5];

    [v6 setAdjustsFontForContentSizeCategory:1];
    [v6 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    *&__clearButtonPreferredSize = v7;
    *(&__clearButtonPreferredSize + 1) = v8;

    v3 = *(&__clearButtonPreferredSize + 1);
    v2 = *&__clearButtonPreferredSize;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)_collapseButtonPreferredSize
{
  v3 = *(&__collapseButtonPreferredSize + 1);
  v2 = *&__collapseButtonPreferredSize;
  if (*&__collapseButtonPreferredSize == 0.0 && *(&__collapseButtonPreferredSize + 1) == 0.0)
  {
    v4 = objc_alloc(MEMORY[0x277D75220]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = MEMORY[0x277D755D0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    v8 = [v6 configurationWithFont:v7 scale:1];

    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down" withConfiguration:v8];
    [v5 setImage:v9 forState:0];
    [v5 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
    *&__collapseButtonPreferredSize = v10;
    *(&__collapseButtonPreferredSize + 1) = v11;

    v3 = *(&__collapseButtonPreferredSize + 1);
    v2 = *&__collapseButtonPreferredSize;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (double)headerHeightWithWidth:(double)width title:(id)title isShowingCollapseButton:(BOOL)button
{
  v64[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D76620];
  v10 = *MEMORY[0x277D76620];
  titleCopy = title;
  preferredContentSizeCategory = [v10 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  if (IsAX)
  {
    goto LABEL_23;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v17 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
  buttonCopy = button;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (([*v9 activeInterfaceOrientation] - 1) >= 2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    if ([currentTraitCollection verticalSizeClass] != 2)
    {
LABEL_4:
      v18 = v9;
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom])
      {
        v20 = 0;
        v21 = 1;
        v22 = 50.0;
      }

      else
      {
        v65.origin.x = NCMainScreenReferenceBounds(0, v19);
        v20 = 0;
        v24 = CGRectGetHeight(v65) <= 568.0;
        v22 = 50.0;
        if (!v24)
        {
          v22 = 54.0;
        }

        v21 = 1;
      }

      goto LABEL_15;
    }
  }

  v18 = v9;
  userInterfaceIdiom = [MEMORY[0x277D75418] currentDevice];
  if ([userInterfaceIdiom userInterfaceIdiom])
  {
    v21 = 0;
    v20 = 1;
    v22 = 52.0;
  }

  else
  {
    v66.origin.x = NCMainScreenReferenceBounds(0, v23);
    v21 = 0;
    v24 = CGRectGetHeight(v66) <= 568.0;
    v22 = 52.0;
    if (!v24)
    {
      v22 = 56.0;
    }

    v20 = 1;
  }

LABEL_15:
  [v14 _scaledValueForValue:v22 + -8.0];
  [v14 lineHeight];
  if (v21)
  {

    if ((v20 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (v20)
  {
LABEL_19:
  }

LABEL_20:
  v9 = v18;
  if (v17 != 1)
  {
  }

  button = buttonCopy;
LABEL_23:
  __clearButtonPreferredSize = *MEMORY[0x277CBF3A8];
  __collapseButtonPreferredSize = __clearButtonPreferredSize;
  [self _clearButtonPreferredSize];
  v26 = v25;
  [self _collapseButtonPreferredSize];
  v28 = v27;
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice3 userInterfaceIdiom];

  v31 = userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL;
  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v32 = ([*v9 activeInterfaceOrientation] - 1) < 2;
  }

  else
  {
    currentDevice3 = [MEMORY[0x277D75C80] currentTraitCollection];
    v32 = [currentDevice3 verticalSizeClass] == 2;
  }

  v33 = 6.0;
  if (v32)
  {
    v33 = 10.0;
  }

  v34 = width - v33;
  if (!IsAX)
  {
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice4 userInterfaceIdiom];

    v37 = userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [*v9 activeInterfaceOrientation];
      v38 = v26 + 0.0;
      if (!button)
      {
        v34 = v34 - v38;
        goto LABEL_45;
      }

      v39 = v9;
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75C80] currentTraitCollection];
      [currentDevice4 verticalSizeClass];
      v38 = v26 + 0.0;
      if (!button)
      {
        v34 = v34 - v38;
LABEL_44:

        goto LABEL_45;
      }

      v39 = v9;
    }

    currentDevice5 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice5 userInterfaceIdiom];

    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      activeInterfaceOrientation = [*v39 activeInterfaceOrientation];
      v43 = 6.0;
      if ((activeInterfaceOrientation - 1) < 2)
      {
        v43 = 10.0;
      }

      v34 = v34 - (v38 + v28 + v43);
    }

    else
    {
      currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
      verticalSizeClass = [currentTraitCollection2 verticalSizeClass];
      v46 = 6.0;
      if (verticalSizeClass == 2)
      {
        v46 = 10.0;
      }

      v34 = v34 - (v38 + v28 + v46);
    }

    if (v37 != 1)
    {
      goto LABEL_44;
    }
  }

LABEL_45:
  if (v31 != 1)
  {
  }

  v63 = *MEMORY[0x277D740A8];
  v64[0] = v14;
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  [titleCopy boundingRectWithSize:1 options:v47 attributes:0 context:{v34, 0.0}];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v67.origin.x = v49;
  v67.origin.y = v51;
  v67.size.width = v53;
  v67.size.height = v55;
  CGRectGetHeight(v67);

  if (!IsAX)
  {
    v56 = [v14 _scaledValueForValue:8.0];
  }

  _NCMainScreenScale(v56, v57);
  UICeilToScale();
  v59 = v58;

  return v59;
}

- (NCNotificationListSectionHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = NCNotificationListSectionHeaderView;
  v3 = [(NCNotificationListSectionHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(NCNotificationListSectionHeaderView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  [(NCNotificationListSectionHeaderView *)self _configureClearButtonIfNecessary];
  [(PLGlyphControl *)self->_clearButton setMaterialGroupNameBase:baseCopy];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView setTitle:titleCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListSectionHeaderView;
  [(NCNotificationListSectionHeaderView *)&v3 layoutSubviews];
  [(NCNotificationListSectionHeaderView *)self _configureHeaderTitleViewIfNecessary];
  [(NCNotificationListSectionHeaderView *)self _configureClearButtonIfNecessary];
  [(NCNotificationListSectionHeaderView *)self _configureCollapseButtonIfNecessary];
  [(NCNotificationListSectionHeaderView *)self _layoutClearButton];
  [(NCNotificationListSectionHeaderView *)self _layoutHeaderTitleView];
  [(NCNotificationListSectionHeaderView *)self _layoutCollapseButton];
}

- (id)containerViewForToggleControlClickInteractionPresentedContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained containerViewForHeaderViewPreviewInteractionPresentedContent:self];

  return v5;
}

- (void)toggleControlDidBeginClickInteraction:(id)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionHeaderViewDidBeginForceTouchInteraction:self];
}

- (void)toggleControlDidPresentClickInteractionPresentedContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionHeaderViewDidPresentForceTouchView:self];
}

- (void)toggleControlDidDismssClickInteractionPresentedContent:(id)content
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained sectionHeaderViewDidDismissForceTouchView:self];
}

- (id)_legibilitySettings
{
  legibilitySettings = self->_legibilitySettings;
  if (!legibilitySettings)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained legibilitySettingsForSectionHeaderView:self];
    v6 = self->_legibilitySettings;
    self->_legibilitySettings = v5;

    legibilitySettings = self->_legibilitySettings;
  }

  return legibilitySettings;
}

- (void)adjustForLegibilitySettingsChange:(id)change
{
  changeCopy = change;
  if (([changeCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, change);
    [(NCNotificationListSectionHeaderView *)self _updateHeaderTitleViewWithLegibilitySettings:self->_legibilitySettings];
    collapseButton = self->_collapseButton;
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)collapseButton setTintColor:primaryColor];
  }
}

- (void)_updateHeaderTitleViewWithLegibilitySettings:(id)settings
{
  if (settings)
  {
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForLegibilitySettingsChange:?];
  }
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    categoryCopy = category;
    self->_adjustsFontForContentSizeCategory = category;
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView setAdjustsFontForContentSizeCategory:?];
    [(NCToggleControl *)self->_clearButton setAdjustsFontForContentSizeCategory:categoryCopy];
    if (self->_adjustsFontForContentSizeCategory)
    {

      [(NCNotificationListSectionHeaderView *)self adjustForContentSizeCategoryChange];
    }
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  if ([(NCNotificationListSectionHeaderView *)self adjustsFontForContentSizeCategory])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

    preferredContentSizeCategory2 = [(NCNotificationListSectionHeaderView *)self preferredContentSizeCategory];
    v6 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v6 & 1) == 0)
    {
      [(NCNotificationListSectionHeaderView *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
      clearButton = self->_clearButton;
      preferredContentSizeCategory3 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
      if (_NCSizeCategoryIsAX(preferredContentSizeCategory3))
      {
        v9 = 0;
      }

      else
      {
        v9 = 2;
      }

      [(NCToggleControl *)clearButton setAnchorEdge:v9];
    }

    adjustForContentSizeCategoryChange = [(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForContentSizeCategoryChange];
    adjustForContentSizeCategoryChange2 = [(NCToggleControl *)self->_clearButton adjustForContentSizeCategoryChange];
    if ([(NCNotificationListSectionHeaderView *)self showCollapseButton]&& (v12 = self->_collapseButton) != 0)
    {
      [(UIButton *)v12 removeFromSuperview];
      collapseButton = self->_collapseButton;
      self->_collapseButton = 0;
    }

    else if ((((adjustForContentSizeCategoryChange2 || adjustForContentSizeCategoryChange) | v6 ^ 1) & 1) == 0)
    {
      v14 = 0;
      goto LABEL_14;
    }

    [(NCNotificationListSectionHeaderView *)self setNeedsLayout];
    v14 = 1;
LABEL_14:

    return v14;
  }

  return 0;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NCNotificationListSectionHeaderView;
  changeCopy = change;
  [(NCNotificationListSectionHeaderView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NCNotificationListSectionHeaderView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(NCNotificationListSectionHeaderView *)self _contentSizeCategoryDidChange];
  }

  [(NCNotificationListSectionHeaderView *)self setNeedsLayout];
}

- (void)_resetClearButtonStateAnimated:(BOOL)animated
{
  clearButton = self->_clearButton;
  if (animated)
  {
    v5 = clearButton;
    v6 = objc_opt_class();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__NCNotificationListSectionHeaderView__resetClearButtonStateAnimated___block_invoke;
    v8[3] = &unk_27836F6A8;
    v9 = v5;
    v7 = v5;
    [v6 performWithDefaultExpansionAnimation:v8 completion:0];
  }

  else
  {

    [(NCToggleControl *)clearButton setExpanded:?];
  }
}

uint64_t __70__NCNotificationListSectionHeaderView__resetClearButtonStateAnimated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setExpanded:0];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_configureClearButtonIfNecessary
{
  if (!self->_clearButton)
  {
    v3 = NCUserNotificationsUIKitFrameworkBundle(self);
    v4 = [v3 localizedStringForKey:@"NOTIFICATION_LIST_CLEAR_ALL" value:&stru_282FE84F8 table:0];
    v5 = [NCToggleControl dismissControlWithMaterialRecipe:1 clearAllText:v4];
    clearButton = self->_clearButton;
    self->_clearButton = v5;

    [(NCToggleControl *)self->_clearButton addTarget:self action:sel__handleClearButtonTouchUpInside_ forControlEvents:64];
    [(NCToggleControl *)self->_clearButton addTarget:self action:sel__handleClearButtonPrimaryActionTriggered_ forControlEvents:0x2000];
    [(NCToggleControl *)self->_clearButton addTarget:self forPreviewInteractionPresentedContentWithAction:sel__handleClearAll_];
    [(NCToggleControl *)self->_clearButton setDelegate:self];
    v7 = self->_clearButton;
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    if (_NCSizeCategoryIsAX(preferredContentSizeCategory))
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    [(NCToggleControl *)v7 setAnchorEdge:v9];

    [(NCToggleControl *)self->_clearButton setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    clearButton = [(NCNotificationListSectionHeaderView *)self clearButton];
    [(NCNotificationListSectionHeaderView *)self addSubview:clearButton];
  }
}

- (void)_configureHeaderTitleViewIfNecessary
{
  if (!self->_headerTitleView)
  {
    v3 = [NCNotificationListHeaderTitleView alloc];
    [(NCNotificationListSectionHeaderView *)self bounds];
    v4 = [(NCNotificationListHeaderTitleView *)v3 initWithFrame:?];
    headerTitleView = self->_headerTitleView;
    self->_headerTitleView = v4;

    [(NCNotificationListHeaderTitleView *)self->_headerTitleView setPrimary:1];
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView setTitle:self->_title];
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView adjustForLegibilitySettingsChange:self->_legibilitySettings];
    [(NCNotificationListHeaderTitleView *)self->_headerTitleView setAdjustsFontForContentSizeCategory:self->_adjustsFontForContentSizeCategory];
    [(NCNotificationListSectionHeaderView *)self addSubview:self->_headerTitleView];
    v6 = self->_headerTitleView;

    [(NCNotificationListSectionHeaderView *)self sendSubviewToBack:v6];
  }
}

- (void)_configureCollapseButtonIfNecessary
{
  if ([(NCNotificationListSectionHeaderView *)self showCollapseButton]&& !self->_collapseButton)
  {
    v5 = objc_alloc(MEMORY[0x277D75220]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    collapseButton = self->_collapseButton;
    self->_collapseButton = v6;

    v8 = MEMORY[0x277D755D0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
    v13 = [v8 configurationWithFont:v9 scale:1];

    v10 = [MEMORY[0x277D755B8] systemImageNamed:@"chevron.down" withConfiguration:v13];
    [(UIButton *)self->_collapseButton setImage:v10 forState:0];
    v11 = self->_collapseButton;
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
    [(UIButton *)v11 setTintColor:primaryColor];

    [(UIButton *)self->_collapseButton addTarget:self action:sel__handleCollapseActionTriggered_ forControlEvents:64];
    [(UIButton *)self->_collapseButton _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(NCNotificationListSectionHeaderView *)self addSubview:self->_collapseButton];

    v4 = v13;
  }

  else
  {
    if ([(NCNotificationListSectionHeaderView *)self showCollapseButton])
    {
      return;
    }

    v3 = self->_collapseButton;
    if (!v3)
    {
      return;
    }

    [(UIButton *)v3 removeFromSuperview];
    v4 = self->_collapseButton;
    self->_collapseButton = 0;
  }
}

- (void)_layoutClearButton
{
  [(NCNotificationListSectionHeaderView *)self bounds];
  rect = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(NCToggleControl *)self->_clearButton sizeThatFits:v6, v8];
  BSRectWithSize();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = MEMORY[0x277D76620];
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  v21 = IsAX ^ [(NCNotificationListSectionHeaderView *)self _shouldReverseLayoutDirection];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (!IsAX)
  {
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [*v18 activeInterfaceOrientation];
    }

    else
    {
      currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
      [currentTraitCollection verticalSizeClass];
    }

    v24 = 0.0;
    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (([*v18 activeInterfaceOrientation] - 1) >= 2)
    {
      v24 = 6.0;
    }

    else
    {
      v24 = 10.0;
    }

    if (v21)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection2 verticalSizeClass] == 2)
  {
    v24 = 10.0;
  }

  else
  {
    v24 = 6.0;
  }

  if ((v21 & 1) == 0)
  {
LABEL_18:
    v33.origin.x = rect;
    v33.origin.y = v5;
    v33.size.width = v7;
    v33.size.height = v9;
    v27 = CGRectGetMaxX(v33) - v24;
    v34.origin.x = v11;
    v34.origin.y = v13;
    v34.size.width = v15;
    v34.size.height = v17;
    v24 = round(v27 - CGRectGetWidth(v34));
  }

LABEL_19:
  [(NCNotificationListSectionHeaderView *)self bounds];
  CGRectGetHeight(v35);
  v36.origin.x = v24;
  v36.origin.y = v13;
  v36.size.width = v15;
  v36.size.height = v17;
  CGRectGetHeight(v36);
  _NCMainScreenScale(v28, v29);
  UIRectIntegralWithScale();
  clearButton = self->_clearButton;

  [(NCToggleControl *)clearButton setFrame:?];
}

- (void)_layoutHeaderTitleView
{
  [(NCNotificationListSectionHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView sizeThatFits:v7, v9];
  BSRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  _shouldReverseLayoutDirection = [(NCNotificationListSectionHeaderView *)self _shouldReverseLayoutDirection];
  v20 = MEMORY[0x277D76620];
  rect = v10;
  v67 = v14;
  if (_shouldReverseLayoutDirection)
  {
    v72.origin.x = v4;
    v72.origin.y = v6;
    v72.size.width = v8;
    v72.size.height = v10;
    Width = CGRectGetWidth(v72);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v24 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
    if (v24 == 1)
    {
      v25 = ([*v20 activeInterfaceOrientation] - 1) < 2;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75C80] currentTraitCollection];
      v25 = [currentDevice verticalSizeClass] == 2;
    }

    v29 = 6.0;
    if (v25)
    {
      v29 = 10.0;
    }

    v30 = Width - v29;
    v73.origin.x = v12;
    v73.origin.y = v14;
    v73.size.width = v16;
    v73.size.height = v18;
    v31 = v30 - CGRectGetWidth(v73);
    if (v24 != 1)
    {
    }

    v28 = v31;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      if (([*v20 activeInterfaceOrientation] - 1) >= 2)
      {
        v28 = 6.0;
      }

      else
      {
        v28 = 10.0;
      }
    }

    else
    {
      currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
      if ([currentTraitCollection verticalSizeClass] == 2)
      {
        v28 = 10.0;
      }

      else
      {
        v28 = 6.0;
      }
    }
  }

  preferredContentSizeCategory = [*v20 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  [objc_opt_class() _clearButtonPreferredSize];
  v70 = v18;
  v36 = v16;
  v68 = v28;
  if (!IsAX)
  {
    v37 = v35;
    v74.origin.x = v4;
    v74.origin.y = v6;
    v74.size.width = v8;
    v74.size.height = rect;
    v38 = CGRectGetWidth(v74);
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

    v41 = userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v42 = ([*v20 activeInterfaceOrientation] - 1) < 2;
    }

    else
    {
      currentDevice3 = [MEMORY[0x277D75C80] currentTraitCollection];
      v42 = [currentDevice3 verticalSizeClass] == 2;
    }

    v43 = 6.0;
    if (v42)
    {
      v43 = 10.0;
    }

    v44 = v38 - v43;
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    v47 = userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL;
    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [*v20 activeInterfaceOrientation];
    }

    else
    {
      currentDevice4 = [MEMORY[0x277D75C80] currentTraitCollection];
      [currentDevice4 verticalSizeClass];
    }

    v48 = v44 - (v37 + 0.0);
    if ([(NCNotificationListSectionHeaderView *)self showCollapseButton])
    {
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

      v51 = userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL;
      if (v51 == 1)
      {
        v52 = ([*v20 activeInterfaceOrientation] - 1) < 2;
      }

      else
      {
        currentDevice5 = [MEMORY[0x277D75C80] currentTraitCollection];
        v52 = [currentDevice5 verticalSizeClass] == 2;
      }

      v53 = v52 ? 10.0 : 6.0;
      [(UIButton *)self->_collapseButton sizeThatFits:v8, rect];
      v48 = v48 - (v53 + v54);
      if (v51 != 1)
      {
      }
    }

    if (v47 != 1)
    {
    }

    if (v41 != 1)
    {
    }

    headerTitleView = self->_headerTitleView;
    [(NCNotificationListSectionHeaderView *)self bounds];
    [(NCNotificationListHeaderTitleView *)headerTitleView sizeThatFits:v48, CGRectGetHeight(v75)];
    BSRectWithSize();
    v28 = v56;
    v36 = v57;
    v18 = v58;
  }

  v66 = v18;
  v59 = v16;
  preferredContentSizeCategory2 = [*v20 preferredContentSizeCategory];
  v61 = 12.0;
  if (!_NCSizeCategoryIsAX(preferredContentSizeCategory2))
  {
    v76.origin.x = v4;
    v76.origin.y = v6;
    v76.size.width = v8;
    v76.size.height = rect;
    v62 = CGRectGetHeight(v76) + -8.0;
    v77.origin.y = v67;
    v77.origin.x = v68;
    v77.size.width = v59;
    v77.size.height = v70;
    v61 = v62 - CGRectGetHeight(v77);
  }

  if (!IsAX)
  {
    v78.origin.x = v4;
    v78.origin.y = v6;
    v78.size.width = v8;
    v78.size.height = rect;
    CGRectGetHeight(v78);
    v79.origin.x = v28;
    v79.origin.y = v61;
    v79.size.width = v36;
    v79.size.height = v66;
    CGRectGetHeight(v79);
  }

  _NCMainScreenScale(v63, v64);
  UIRectIntegralWithScale();
  v65 = self->_headerTitleView;

  [(NCNotificationListHeaderTitleView *)v65 setFrame:?];
}

- (void)_layoutCollapseButton
{
  if (!self->_collapseButton)
  {
    return;
  }

  [(NCNotificationListSectionHeaderView *)self bounds];
  v60 = v4;
  v61 = v3;
  v58 = v6;
  v59 = v5;
  [(NCNotificationListHeaderTitleView *)self->_headerTitleView frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(NCToggleControl *)self->_clearButton frame];
  v62 = v16;
  v63 = v15;
  v18 = v17;
  v20 = v19;
  collapseButton = self->_collapseButton;
  [(NCNotificationListSectionHeaderView *)self bounds];
  [(UIButton *)collapseButton sizeThatFits:v22, v23];
  v25 = v24;
  _shouldReverseLayoutDirection = [(NCNotificationListSectionHeaderView *)self _shouldReverseLayoutDirection];
  v27 = MEMORY[0x277D76620];
  v28 = v8;
  v29 = v10;
  v30 = v12;
  v31 = v14;
  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMinX(*&v28);
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v35 = [*v27 activeInterfaceOrientation] - 1;
      v36 = 6.0;
      if (v35 < 2)
      {
        v36 = 10.0;
      }

      v37 = MinX - v36 - v25;
      goto LABEL_19;
    }

    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    verticalSizeClass = [currentTraitCollection verticalSizeClass];
    v45 = 6.0;
    if (verticalSizeClass == 2)
    {
      v45 = 10.0;
    }

    v37 = MinX - v45 - v25;
LABEL_18:

    goto LABEL_19;
  }

  MaxX = CGRectGetMaxX(*&v28);
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
    verticalSizeClass2 = [currentTraitCollection verticalSizeClass];
    v47 = 6.0;
    if (verticalSizeClass2 == 2)
    {
      v47 = 10.0;
    }

    v37 = MaxX + v47;
    goto LABEL_18;
  }

  v41 = [*v27 activeInterfaceOrientation] - 1;
  v42 = 6.0;
  if (v41 < 2)
  {
    v42 = 10.0;
  }

  v37 = MaxX + v42;
LABEL_19:
  preferredContentSizeCategory = [*v27 preferredContentSizeCategory];
  IsAX = _NCSizeCategoryIsAX(preferredContentSizeCategory);

  if ([(NCNotificationListSectionHeaderView *)self _shouldReverseLayoutDirection])
  {
    if (v37 >= 0.0)
    {
      goto LABEL_30;
    }

LABEL_23:
    if ([(NCNotificationListSectionHeaderView *)self _shouldReverseLayoutDirection])
    {
      if (IsAX)
      {
        goto LABEL_25;
      }
    }

    else if (!IsAX)
    {
LABEL_25:
      v66.size.width = v62;
      v66.origin.x = v63;
      v66.origin.y = v18;
      v66.size.height = v20;
      CGRectGetMinX(v66);
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

      if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
LABEL_26:
        [*v27 activeInterfaceOrientation];
        goto LABEL_30;
      }

LABEL_29:
      currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
      [currentTraitCollection2 verticalSizeClass];

      goto LABEL_30;
    }

    v67.size.width = v62;
    v67.origin.x = v63;
    v67.origin.y = v18;
    v67.size.height = v20;
    CGRectGetMaxX(v67);
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

    if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v65.origin.y = v60;
  v65.origin.x = v61;
  v65.size.height = v58;
  v65.size.width = v59;
  if (v25 + v37 > CGRectGetWidth(v65))
  {
    goto LABEL_23;
  }

LABEL_30:
  v55 = UIRectCenteredYInRect();
  _NCMainScreenScale(v55, v56);
  UIRectIntegralWithScale();
  v57 = self->_collapseButton;

  [(UIButton *)v57 setFrame:?];
}

- (void)_handleClearButtonTouchUpInside:(id)inside
{
  insideCopy = inside;
  clearButton = [(NCNotificationListSectionHeaderView *)self clearButton];

  if (clearButton == insideCopy && ![(NCToggleControl *)self->_clearButton isExpanded])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained sectionHeaderViewDidTransitionToClearState:self];
  }
}

- (void)_handleClearButtonPrimaryActionTriggered:(id)triggered
{
  [(NCNotificationListSectionHeaderView *)self _resetClearButtonStateAnimated:1];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  sectionIdentifier = [(NCNotificationListSectionHeaderView *)self sectionIdentifier];
  [WeakRetained sectionHeaderView:self didReceiveClearActionForSectionIdentifier:sectionIdentifier];
}

- (void)_handleClearAll:(id)all
{
  delegate = [(NCNotificationListSectionHeaderView *)self delegate];
  [delegate sectionHeaderViewDidReceiveClearAllAction:self];

  clearButton = self->_clearButton;

  [(NCToggleControl *)clearButton dismissModalFullScreenIfNeeded];
}

- (void)_handleCollapseActionTriggered:(id)triggered
{
  delegate = [(NCNotificationListSectionHeaderView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate sectionHeaderViewDidRequestCollapsing:self];
    collapseButton = [(NCNotificationListSectionHeaderView *)self collapseButton];
    memset(&v16, 0, sizeof(v16));
    _shouldReverseLayoutDirection = [(NCNotificationListSectionHeaderView *)self _shouldReverseLayoutDirection];
    v7 = -1.57;
    if (_shouldReverseLayoutDirection)
    {
      v7 = 1.57;
    }

    CGAffineTransformMakeRotation(&v16, v7);
    v8 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__NCNotificationListSectionHeaderView__handleCollapseActionTriggered___block_invoke;
    v13[3] = &unk_278370CA8;
    v9 = collapseButton;
    v15 = v16;
    v14 = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__NCNotificationListSectionHeaderView__handleCollapseActionTriggered___block_invoke_2;
    v11[3] = &unk_278370CD0;
    v12 = v9;
    v10 = v9;
    [v8 animateWithDuration:0 delay:v13 options:v11 animations:0.3 completion:0.0];
  }
}

uint64_t __70__NCNotificationListSectionHeaderView__handleCollapseActionTriggered___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __70__NCNotificationListSectionHeaderView__handleCollapseActionTriggered___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (NCNotificationListSectionHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end