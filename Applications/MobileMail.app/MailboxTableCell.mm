@interface MailboxTableCell
+ (double)defaultRowHeight;
+ (double)twoLineTopBottomPadding;
+ (id)log;
+ (id)subtitleFont;
+ (id)titleFont;
+ (void)invalidateCachedLayoutInformation;
- (BOOL)_shouldUnreadCountBeVisible;
- (BOOL)isCellEnabled;
- (CGPoint)destinationPointForAnimation;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MailboxTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIImageView)expansionAccessoryImageView;
- (UIImageView)expansionEditingAccessoryImageView;
- (id)_countQueryLabelForMailbox:(id)mailbox;
- (id)_createMailboxesFromUids:(id)uids;
- (id)_expansionAccessoryImageView;
- (id)_scriptingInfo;
- (void)_doCleanupExpansionAccessoryViews;
- (void)_doRefreshExpansionAccessoryImageView;
- (void)_preferredContentSizeCategoryDidChange:(id)change;
- (void)_removeUnreadCount;
- (void)_resetDebouncer;
- (void)_setMailboxes:(id)mailboxes observeCount:(BOOL)count unreadCountIncludesRead:(BOOL)read;
- (void)_setUnreadCount:(unint64_t)count;
- (void)_setUnreadCountMailboxes:(id)mailboxes unreadCountIncludesRead:(BOOL)read;
- (void)_updateContentSizeSettings;
- (void)_updateMailboxName;
- (void)_updateUnreadCountLabelVisibilityAnimated:(BOOL)animated;
- (void)_updateViewConfigurationsWithState:(unint64_t)state;
- (void)dealloc;
- (void)layoutSubviews;
- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change;
- (void)prepareForReuse;
- (void)setCellEnabled:(BOOL)enabled;
- (void)setDetailsDisclosureButton:(id)button;
- (void)setDisabledForEditing:(BOOL)editing;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExpandable:(BOOL)expandable;
- (void)setExpanded:(BOOL)expanded;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setIcon:(id)icon withOffset:(CGPoint)offset;
- (void)setLegacyMailboxes:(id)mailboxes showUnreadCount:(BOOL)count unreadCountIncludesRead:(BOOL)read;
- (void)setMailboxes:(id)mailboxes observeCount:(BOOL)count;
- (void)setPreferredSubtitleFont:(id)font;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation MailboxTableCell

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100104038;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD020 != -1)
  {
    dispatch_once(&qword_1006DD020, block);
  }

  v2 = qword_1006DD018;

  return v2;
}

+ (void)invalidateCachedLayoutInformation
{
  v3 = qword_1006DD028;
  qword_1006DD028 = 0;

  v4 = qword_1006DD030;
  qword_1006DD030 = 0;

  qword_1006DD038 = 0;
  qword_1006DD040 = 0;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"_MailboxTableCellLayoutValuesDidChange" object:self];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];
}

+ (double)defaultRowHeight
{
  result = *&qword_1006DD038;
  if (*&qword_1006DD038 == 0.0)
  {
    [self twoLineTopBottomPadding];
    *&qword_1006DD038 = v4 + v4;
    titleFont = [self titleFont];
    [titleFont capHeight];
    *&qword_1006DD038 = v6 + *&qword_1006DD038;

    subtitleFont = [self subtitleFont];
    [subtitleFont capHeight];
    *&qword_1006DD038 = v8 + *&qword_1006DD038;

    subtitleFont2 = [self subtitleFont];
    [subtitleFont2 _bodyLeading];
    *&qword_1006DD038 = UIRoundToViewScale(v10 * 7.0 * 0.0625) + *&qword_1006DD038;

    qword_1006DD038 = UIRoundToViewScale(*&qword_1006DD038);
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:self selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];

    return *&qword_1006DD038;
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    [*(&self->_iconOffset.y + 1) sizeThatFits:{width, height}];
    v9 = v8;
    v10 = sub_10024BCE0(*(&self->_detailsDisclosureButton + 1));
    v15.receiver = self;
    v15.super_class = MailboxTableCell;
    [(MailboxTableCell *)&v15 sizeThatFits:width - (v9 + v10), height];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MailboxTableCell;
    [(MailboxTableCell *)&v14 sizeThatFits:width, height];
    width = v12;
  }

  v13 = width;
  result.height = v11;
  result.width = v13;
  return result;
}

+ (double)twoLineTopBottomPadding
{
  v2 = qword_1006DD040;
  if (*&qword_1006DD040 == 0.0)
  {
    subtitleFont = [self subtitleFont];
    [subtitleFont _bodyLeading];
    v2 = UIRoundToViewScale(v4 * 0.5);

    qword_1006DD040 = v2;
  }

  return *&v2;
}

+ (id)titleFont
{
  v2 = qword_1006DD028;
  if (!qword_1006DD028)
  {
    if (+[UIScreen mui_isLargeFormatPad])
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:v3];
    v5 = [UIFont fontWithDescriptor:v4 size:0.0];
    v6 = qword_1006DD028;
    qword_1006DD028 = v5;

    v2 = qword_1006DD028;
  }

  return v2;
}

+ (id)subtitleFont
{
  v2 = qword_1006DD030;
  if (!qword_1006DD030)
  {
    if (+[UIScreen mui_isLargeFormatPad])
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody addingSymbolicTraits:0x8000 options:v3];
    v5 = [UIFont fontWithDescriptor:v4 size:0.0];
    v6 = qword_1006DD030;
    qword_1006DD030 = v5;

    v2 = qword_1006DD030;
  }

  return v2;
}

- (MailboxTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = MailboxTableCell;
  v7 = [(MailboxTableCell *)&v18 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"_invalidateLayout" name:@"_MailboxTableCellLayoutValuesDidChange" object:objc_opt_class()];

    textLabel = [(MailboxTableCell *)v7 textLabel];
    titleFont = [objc_opt_class() titleFont];
    [textLabel setFont:titleFont];

    detailTextLabel = [(MailboxTableCell *)v7 detailTextLabel];
    subtitleFont = [objc_opt_class() subtitleFont];
    [detailTextLabel setFont:subtitleFont];

    imageView = [(MailboxTableCell *)v7 imageView];
    [imageView setContentMode:4];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"_preferredContentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

    [(MailboxTableCell *)v7 _updateContentSizeSettings];
    traitCollection = [(MailboxTableCell *)v7 traitCollection];
    LOBYTE(subtitleFont) = [traitCollection mf_useSplitViewStyling];

    if ((subtitleFont & 1) == 0)
    {
      v16 = objc_alloc_init(UIView);
      [(MailboxTableCell *)v7 setSelectedBackgroundView:v16];
    }

    [(MailboxTableCell *)v7 _resetDebouncer];
  }

  return v7;
}

- (void)_resetDebouncer
{
  if (pthread_main_np() != 1)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MailboxTableCell.m" lineNumber:184 description:@"Current thread must be main"];
  }

  v4 = *(&self->_unreadCountToken + 1);
  if (v4)
  {
    [v4 cancel];
    v5 = *(&self->_unreadCountToken + 1);
    *(&self->_unreadCountToken + 1) = 0;
  }

  if ([(MailboxTableCell *)self shouldShowUnreadCount])
  {
    objc_initWeak(&location, self);
    v6 = [EFDebouncer alloc];
    v7 = +[EFScheduler mainThreadScheduler];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100104960;
    v11[3] = &unk_10064FE38;
    objc_copyWeak(v12, &location);
    v12[1] = a2;
    v8 = [v6 initWithTimeInterval:v7 scheduler:1 startAfter:v11 block:0.2];
    v9 = *(&self->_unreadCountToken + 1);
    *(&self->_unreadCountToken + 1) = v8;

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

- (void)_preferredContentSizeCategoryDidChange:(id)change
{
  [(MailboxTableCell *)self _updateContentSizeSettings];
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      icon = 0;
    }

    else
    {
      icon = [anyObject icon];
    }

    [(MailboxTableCell *)self setIcon:icon];
    if (!IsAccessibilityCategory)
    {
    }
  }

  v8 = +[MailboxTableCell titleFont];
  [*(&self->_iconOffset.y + 1) setFont:v8];

  [(MailboxTableCell *)self setNeedsLayout];
}

- (void)_updateContentSizeSettings
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  textLabel = [(MailboxTableCell *)self textLabel];
  [textLabel setNumberOfLines:v4];

  preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
  v5 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel setNumberOfLines:v6];
}

- (void)dealloc
{
  [*(&self->_expansionEditingAccessoryImageView + 1) cancel];
  [*(&self->_unreadCountToken + 1) cancel];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v4 dealloc];
}

- (void)setMailboxes:(id)mailboxes observeCount:(BOOL)count
{
  countCopy = count;
  v6 = *(&self->super._shouldDisableWhileEditing + 1);
  *(&self->super._shouldDisableWhileEditing + 1) = 0;
  mailboxesCopy = mailboxes;

  [(MailboxTableCell *)self _setMailboxes:mailboxesCopy observeCount:countCopy unreadCountIncludesRead:0];
}

- (void)_setMailboxes:(id)mailboxes observeCount:(BOOL)count unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  countCopy = count;
  mailboxesCopy = mailboxes;
  v8 = [mailboxesCopy copy];
  v9 = *(&self->_legacyMailboxes + 1);
  *(&self->_legacyMailboxes + 1) = v8;

  [(MailboxTableCell *)self setShouldShowUnreadCount:1];
  if (countCopy)
  {
    if ([*(&self->_legacyMailboxes + 1) count])
    {
      v10 = mailboxesCopy;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  [(MailboxTableCell *)self _setUnreadCountMailboxes:v10 unreadCountIncludesRead:readCopy];
}

- (void)_setUnreadCountMailboxes:(id)mailboxes unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  mailboxesCopy = mailboxes;
  unreadCountToken = [(MailboxTableCell *)self unreadCountToken];
  [unreadCountToken cancel];

  [(MailboxTableCell *)self setUnreadCountToken:0];
  if (mailboxesCopy && [mailboxesCopy count])
  {
    v20 = [EMMessageListItemPredicates predicateForMessagesInMailboxes:*(&self->_legacyMailboxes + 1)];
    if (readCopy)
    {
      v8 = v20;
    }

    else
    {
      v9 = +[EMMessageListItemPredicates predicateForUnreadMessages];
      v22[0] = v20;
      v22[1] = v9;
      v10 = [NSArray arrayWithObjects:v22 count:2];
      v8 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];
    }

    firstObject = [mailboxesCopy firstObject];
    v12 = [(MailboxTableCell *)self _countQueryLabelForMailbox:firstObject];

    v13 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v8 sortDescriptors:&__NSArray0__struct queryOptions:0 label:v12];
    v14 = [mailboxesCopy ef_mapSelector:"objectID"];
    v15 = [EMMailboxScope mailboxScopeForMailboxObjectIDs:v14 forExclusion:0];

    v16 = +[UIApplication sharedApplication];
    daemonInterface = [v16 daemonInterface];
    messageRepository = [daemonInterface messageRepository];
    v19 = [messageRepository startCountingQuery:v13 includingServerCountsForMailboxScope:v15 withObserver:self];
    [(MailboxTableCell *)self setUnreadCountToken:v19];
  }

  [(MailboxTableCell *)self _resetDebouncer];
}

- (id)_countQueryLabelForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  name = [mailboxCopy name];
  if (([mailboxCopy descriptionUsesRealName] & 1) == 0)
  {
    v5 = [EFPrivacy fullyOrPartiallyRedactedStringForString:name];

    v6 = [[NSString alloc] initWithFormat:@"Generic mailbox %@", v5];
    name = v6;
  }

  v7 = [NSString alloc];
  accountIdentifier = [mailboxCopy accountIdentifier];
  v9 = [v7 initWithFormat:@"%@ (accountID: %@)", name, accountIdentifier];

  return v9;
}

- (void)setLegacyMailboxes:(id)mailboxes showUnreadCount:(BOOL)count unreadCountIncludesRead:(BOOL)read
{
  readCopy = read;
  countCopy = count;
  mailboxesCopy = mailboxes;
  if (([mailboxesCopy isEqualToSet:*(&self->super._shouldDisableWhileEditing + 1)] & 1) == 0)
  {
    v10 = +[NSNotificationCenter defaultCenter];
    v11 = MFMailboxUidWasRenamedNotification;
    [v10 removeObserver:self name:MFMailboxUidWasRenamedNotification object:0];

    unreadCountToken = [(MailboxTableCell *)self unreadCountToken];
    [unreadCountToken cancel];

    [(MailboxTableCell *)self setUnreadCountToken:0];
    objc_storeStrong((&self->super._shouldDisableWhileEditing + 1), mailboxes);
    [(MailboxTableCell *)self setShouldShowUnreadCount:countCopy];
    if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
    {
      anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
      icon = [anyObject icon];
      [(MailboxTableCell *)self setIcon:icon];

      v15 = +[MailChangeManager sharedChangeManager];
      *(&self->_detailsDisclosureButton + 1) = [v15 levelForMailbox:anyObject];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 addObserver:self selector:"_updateMailboxName" name:v11 object:anyObject];
    }

    [(MailboxTableCell *)self _removeUnreadCount];
    if ([(MailboxTableCell *)self shouldShowUnreadCount]&& *(&self->super._shouldDisableWhileEditing + 1))
    {
      allObjects = [mailboxesCopy allObjects];
      v18 = [(MailboxTableCell *)self _createMailboxesFromUids:allObjects];

      if (![v18 count])
      {
        v19 = +[MailboxTableCell log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          v20 = +[UIApplication sharedApplication];
          mailboxProvider = [v20 mailboxProvider];
          sub_100488468(mailboxProvider, v22, v19, v20);
        }
      }

      [(MailboxTableCell *)self _setMailboxes:v18 observeCount:1 unreadCountIncludesRead:readCopy];
    }

    else
    {
      [(MailboxTableCell *)self _resetDebouncer];
    }
  }

  [(MailboxTableCell *)self _updateMailboxName];
  [(MailboxTableCell *)self setNeedsLayout];
}

- (id)_createMailboxesFromUids:(id)uids
{
  uidsCopy = uids;
  v4 = +[UIApplication sharedApplication];
  mailboxProvider = [v4 mailboxProvider];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001056D4;
  v9[3] = &unk_10064FEA8;
  v10 = mailboxProvider;
  v6 = mailboxProvider;
  v7 = [uidsCopy ef_compactMap:v9];

  return v7;
}

- (BOOL)_shouldUnreadCountBeVisible
{
  if ([(MailboxTableCell *)self isEditing])
  {
    v3 = ![(MailboxTableCell *)self hideUnreadCountForEditing];
  }

  else
  {
    v3 = 1;
  }

  if ([(MailboxTableCell *)self isExpandable])
  {
    v3 &= ![(MailboxTableCell *)self isExpanded];
  }

  return v3;
}

- (void)_updateUnreadCountLabelVisibilityAnimated:(BOOL)animated
{
  if (*(&self->_iconOffset.y + 1))
  {
    animatedCopy = animated;
    _shouldUnreadCountBeVisible = [(MailboxTableCell *)self _shouldUnreadCountBeVisible];
    v6 = *(&self->_iconOffset.y + 1);
    if (_shouldUnreadCountBeVisible)
    {
      superview = [v6 superview];

      if (!superview)
      {
        [*(&self->_iconOffset.y + 1) setAlpha:0.0];
        contentView = [(MailboxTableCell *)self contentView];
        [contentView addSubview:*(&self->_iconOffset.y + 1)];
      }

      [*(&self->_iconOffset.y + 1) alpha];
      if (v9 != 1.0)
      {
        v10 = v16;
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v11 = sub_100105924;
        goto LABEL_9;
      }
    }

    else
    {
      [v6 alpha];
      if (v12 != 0.0)
      {
        v10 = v15;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v11 = sub_10010593C;
LABEL_9:
        v10[2] = v11;
        v10[3] = &unk_10064C7E8;
        v10[4] = self;
        v13 = objc_retainBlock(v10);
        v14 = v13;
        if (v13)
        {
          if (animatedCopy)
          {
            +[UIView inheritedAnimationDuration];
            [UIView animateWithDuration:v14 animations:0 completion:?];
          }

          else
          {
            (v13[2])(v13);
          }
        }

        goto LABEL_14;
      }
    }

    v14 = 0;
LABEL_14:
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v17.receiver = self;
  v17.super_class = MailboxTableCell;
  [MailboxTableCell setEditing:"setEditing:animated:" animated:?];
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0)
  {
    if (editingCopy)
    {
      if ((BYTE5(self->_detailsDisclosureButton) & 2) != 0)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }

      [(MailboxTableCell *)self setSelectionStyle:v9];
      traitCollection2 = +[UIColor clearColor];
      selectedBackgroundView = [(MailboxTableCell *)self selectedBackgroundView];
      [selectedBackgroundView setBackgroundColor:traitCollection2];
    }

    else
    {
      [(MailboxTableCell *)self setSelectionStyle:3];
      traitCollection2 = [(MailboxTableCell *)self traitCollection];
      selectedBackgroundView = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [traitCollection2 userInterfaceLevel]);
      selectedBackgroundView2 = [(MailboxTableCell *)self selectedBackgroundView];
      [selectedBackgroundView2 setBackgroundColor:selectedBackgroundView];
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100105B4C;
  v14[3] = &unk_100650640;
  v15 = editingCopy;
  v16 = animatedCopy;
  v14[4] = self;
  v13 = objc_retainBlock(v14);
  [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:animatedCopy];
  (v13[2])(v13, *(&self->_unreadCountLabel + 1));
}

- (void)setDisabledForEditing:(BOOL)editing
{
  if (editing)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  BYTE5(self->_detailsDisclosureButton) = BYTE5(self->_detailsDisclosureButton) & 0xFD | v3;
}

- (BOOL)isCellEnabled
{
  if ([(MailboxTableCell *)self isEditing])
  {
    return (BYTE5(self->_detailsDisclosureButton) & 2) == 0;
  }

  if (BYTE5(self->_detailsDisclosureButton))
  {
    return 0;
  }

  anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
  if (anyObject)
  {
    anyObject2 = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    isStore = [anyObject2 isStore];
  }

  else
  {
    isStore = 1;
  }

  return isStore;
}

- (void)setIcon:(id)icon withOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  iconCopy = icon;
  imageView = [(MailboxTableCell *)self imageView];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v10 = 0;
  }

  else
  {
    v10 = iconCopy;
  }

  [imageView setImage:v10];

  [(MailboxTableCell *)self setIconOffset:x, y];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(MailboxTableCell *)self textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(MailboxTableCell *)self textLabel];
  v6 = +[MailboxTableCell titleFont];
  [textLabel2 setFont:v6];

  [(MailboxTableCell *)self setSubtitle:0];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  preferredSubtitleFont = [(MailboxTableCell *)self preferredSubtitleFont];
  v5 = preferredSubtitleFont;
  if (preferredSubtitleFont)
  {
    v6 = preferredSubtitleFont;
  }

  else
  {
    v6 = +[MailboxTableCell subtitleFont];
  }

  v7 = v6;

  detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel setText:subtitleCopy];

  detailTextLabel2 = [(MailboxTableCell *)self detailTextLabel];
  v10 = +[UIColor secondaryLabelColor];
  [detailTextLabel2 setTextColor:v10];

  detailTextLabel3 = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel3 setFont:v7];

  [(MailboxTableCell *)self setNeedsLayout];
}

- (void)setDetailsDisclosureButton:(id)button
{
  buttonCopy = button;
  v6 = *(&self->_unreadCountLabel + 1);
  v9 = buttonCopy;
  if (v6 != buttonCopy)
  {
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(&self->_unreadCountLabel + 1);
      *(&self->_unreadCountLabel + 1) = 0;
    }

    if (v9)
    {
      objc_storeStrong((&self->_unreadCountLabel + 1), button);
      contentView = [(MailboxTableCell *)self contentView];
      [contentView addSubview:*(&self->_unreadCountLabel + 1)];
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v5 setUserInteractionEnabled:?];
  [(MailboxTableCell *)self setCellEnabled:enabledCopy];
}

- (void)setCellEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  BYTE5(self->_detailsDisclosureButton) = BYTE5(self->_detailsDisclosureButton) & 0xFE | !enabled;
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0)
  {
    if (enabledCopy)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    [(MailboxTableCell *)self setSelectionStyle:v7];
  }

  if (enabledCopy)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(MailboxTableCell *)self setTintAdjustmentMode:v8];
}

- (void)setPreferredSubtitleFont:(id)font
{
  fontCopy = font;
  if (([*(&self->_extraIndentLevel + 1) isEqual:?] & 1) == 0)
  {
    objc_storeStrong((&self->_extraIndentLevel + 1), font);
    detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
    [detailTextLabel setFont:fontCopy];
  }
}

- (void)_removeUnreadCount
{
  v3 = *(&self->_iconOffset.y + 1);
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *(&self->_iconOffset.y + 1);
    *(&self->_iconOffset.y + 1) = 0.0;
  }
}

- (void)_setUnreadCount:(unint64_t)count
{
  if (count)
  {
    if (!*(&self->_iconOffset.y + 1))
    {
      v5 = objc_alloc_init(UILabel);
      v6 = *(&self->_iconOffset.y + 1);
      *(&self->_iconOffset.y + 1) = v5;

      v7 = +[UIColor clearColor];
      [*(&self->_iconOffset.y + 1) setBackgroundColor:v7];

      v8 = +[UIColor secondaryLabelColor];
      [*(&self->_iconOffset.y + 1) setTextColor:v8];

      v9 = +[MailboxTableCell titleFont];
      [*(&self->_iconOffset.y + 1) setFont:v9];

      [*(&self->_iconOffset.y + 1) setTextAlignment:2];
      [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
    }

    v10 = [NSNumberFormatter ef_formatUnsignedInteger:count withGrouping:0];
    [*(&self->_iconOffset.y + 1) setText:v10];

    [(MailboxTableCell *)self setNeedsLayout];
  }

  else
  {

    [(MailboxTableCell *)self _removeUnreadCount];
  }
}

- (void)_updateMailboxName
{
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    v3 = +[MailChangeManager sharedChangeManager];
    anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v5 = [v3 displayNameUsingSpecialNamesForMailbox:anyObject];

    [(MailboxTableCell *)self setTitle:v5];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v11.receiver = self;
  v11.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v11 setHighlighted:highlighted animated:animated];
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if ((mf_useSplitViewStyling & 1) == 0 && ([(MailboxTableCell *)self isEditing]& 1) == 0)
  {
    if (highlightedCopy)
    {
      v8 = +[UIColor _tertiaryFillColor];
      traitCollection2 = v8;
    }

    else
    {
      traitCollection2 = [(MailboxTableCell *)self traitCollection];
      v8 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [traitCollection2 userInterfaceLevel]);
    }

    selectedBackgroundView = [(MailboxTableCell *)self selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v8];

    if (!highlightedCopy)
    {
    }
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = MailboxTableCell;
  [(MFTableViewCell *)&v3 prepareForReuse];
  [(MailboxTableCell *)self setExpandable:0];
  [(MailboxTableCell *)self setExpanded:0];
  [(MailboxTableCell *)self setExtraIndentLevel:0];
  [(MailboxTableCell *)self setFlattenHierarchy:0];
  [(MailboxTableCell *)self _doCleanupExpansionAccessoryViews];
  [(MailboxTableCell *)self setCellEnabled:1];
  [(MailboxTableCell *)self setDisabledForEditing:0];
  [(MailboxTableCell *)self setTitleColor:0];
  [(MailboxTableCell *)self setDetailsDisclosureButton:0];
  [(MailboxTableCell *)self setSubtitle:0];
}

- (void)_updateViewConfigurationsWithState:(unint64_t)state
{
  traitCollection = [(MailboxTableCell *)self traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  if (mf_useSplitViewStyling)
  {
    if ([(MailboxTableCell *)self isExpandable])
    {
      [_UIBackgroundViewConfiguration defaultOutlineParentCellConfigurationForState:state];
    }

    else
    {
      [_UIBackgroundViewConfiguration defaultOutlineCellConfigurationForState:state];
    }
    v7 = ;
    [v7 setEdgesAddingLayoutMarginsToBackgroundInsets:10];
    [v7 setBackgroundInsets:{0.0, -8.0, 0.0, -8.0}];
    [(MailboxTableCell *)self _setBackgroundViewConfiguration:v7];
  }
}

- (id)_expansionAccessoryImageView
{
  v2 = [UIImage systemImageNamed:MFImageGlyphFavoriteExpandMailbox];
  v3 = [UIImage mf_symbolConfigurationForView:10];
  [v2 size];
  v6 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, v4 + -6.0, v5}];
  [v6 setImage:v2];
  [v6 setPreferredSymbolConfiguration:v3];
  [v6 setContentMode:4];
  v7 = +[UIColor tertiaryLabelColor];
  [v6 setTintColor:v7];

  return v6;
}

- (UIImageView)expansionAccessoryImageView
{
  v3 = *(&self->_preferredSubtitleFont + 1);
  if (!v3)
  {
    _expansionAccessoryImageView = [(MailboxTableCell *)self _expansionAccessoryImageView];
    v5 = *(&self->_preferredSubtitleFont + 1);
    *(&self->_preferredSubtitleFont + 1) = _expansionAccessoryImageView;

    v3 = *(&self->_preferredSubtitleFont + 1);
  }

  return v3;
}

- (UIImageView)expansionEditingAccessoryImageView
{
  v3 = *(&self->_expansionAccessoryImageView + 1);
  if (!v3)
  {
    _expansionAccessoryImageView = [(MailboxTableCell *)self _expansionAccessoryImageView];
    v5 = *(&self->_expansionAccessoryImageView + 1);
    *(&self->_expansionAccessoryImageView + 1) = _expansionAccessoryImageView;

    v3 = *(&self->_expansionAccessoryImageView + 1);
  }

  return v3;
}

- (void)_doCleanupExpansionAccessoryViews
{
  if (*(&self->_preferredSubtitleFont + 1))
  {
    [(MailboxTableCell *)self setAccessoryView:0];
    [(MailboxTableCell *)self setExpansionAccessoryImageView:0];
  }

  if (*(&self->_expansionAccessoryImageView + 1))
  {
    [(MailboxTableCell *)self setEditingAccessoryView:0];

    [(MailboxTableCell *)self setExpansionEditingAccessoryImageView:0];
  }
}

- (void)_doRefreshExpansionAccessoryImageView
{
  if ([(MailboxTableCell *)self isExpandable])
  {
    accessoryView = [(MailboxTableCell *)self accessoryView];
    expansionAccessoryImageView = [(MailboxTableCell *)self expansionAccessoryImageView];

    if (accessoryView != expansionAccessoryImageView)
    {
      expansionAccessoryImageView2 = [(MailboxTableCell *)self expansionAccessoryImageView];
      [(MailboxTableCell *)self setAccessoryView:expansionAccessoryImageView2];
    }

    editingAccessoryView = [(MailboxTableCell *)self editingAccessoryView];
    expansionEditingAccessoryImageView = [(MailboxTableCell *)self expansionEditingAccessoryImageView];

    if (editingAccessoryView != expansionEditingAccessoryImageView)
    {
      expansionEditingAccessoryImageView2 = [(MailboxTableCell *)self expansionEditingAccessoryImageView];
      [(MailboxTableCell *)self setEditingAccessoryView:expansionEditingAccessoryImageView2];
    }

    _shouldReverseLayoutDirection = [(MailboxTableCell *)self _shouldReverseLayoutDirection];
    v10 = -1.57079633;
    *&v11 = -1;
    *(&v11 + 1) = -1;
    *&v18.c = v11;
    *&v18.tx = v11;
    if (_shouldReverseLayoutDirection)
    {
      v10 = 1.57079633;
    }

    *&v18.a = v11;
    CGAffineTransformMakeRotation(&v18, v10);
    if ([(MailboxTableCell *)self isExpanded])
    {
      v12 = *&CGAffineTransformIdentity.c;
      *&v18.a = *&CGAffineTransformIdentity.a;
      *&v18.c = v12;
      *&v18.tx = *&CGAffineTransformIdentity.tx;
    }

    v17 = v18;
    accessoryView2 = [(MailboxTableCell *)self accessoryView];
    v16 = v17;
    [accessoryView2 setTransform:&v16];

    v15 = v18;
    editingAccessoryView2 = [(MailboxTableCell *)self editingAccessoryView];
    v16 = v15;
    [editingAccessoryView2 setTransform:&v16];
  }

  else
  {

    [(MailboxTableCell *)self _doCleanupExpansionAccessoryViews];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (LOBYTE(self->_level) != expanded)
  {
    LOBYTE(self->_level) = expanded;
    [(MailboxTableCell *)self _doRefreshExpansionAccessoryImageView];

    [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
  }
}

- (void)setExpandable:(BOOL)expandable
{
  if (HIBYTE(self->_detailsDisclosureButton) != expandable)
  {
    HIBYTE(self->_detailsDisclosureButton) = expandable;
    [(MailboxTableCell *)self _doRefreshExpansionAccessoryImageView];

    [(MailboxTableCell *)self _updateUnreadCountLabelVisibilityAnimated:0];
  }
}

- (void)layoutSubviews
{
  imageView = [(MailboxTableCell *)self imageView];
  image = [imageView image];

  if (*(&self->_iconOffset.y + 1))
  {
    _shouldUnreadCountBeVisible = [(MailboxTableCell *)self _shouldUnreadCountBeVisible];
  }

  else
  {
    _shouldUnreadCountBeVisible = 0;
  }

  if (([(MailboxTableCell *)self isEditing]& 1) != 0 || ![(MailboxTableCell *)self accessoryType])
  {
    if ([(MailboxTableCell *)self isEditing])
    {
      v6 = [(MailboxTableCell *)self editingAccessoryType]!= 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  effectiveUserInterfaceLayoutDirection = [(MailboxTableCell *)self effectiveUserInterfaceLayoutDirection];
  if ([(MailboxTableCell *)self flattenHierarchy])
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(&self->_detailsDisclosureButton + 1) + *(&self->_titleColor + 1));
  }

  v9 = sub_10024BCE0(v8);
  v181.receiver = self;
  v181.super_class = MailboxTableCell;
  [(MailboxTableCell *)&v181 layoutSubviews];
  contentView = [(MailboxTableCell *)self contentView];
  [contentView bounds];
  v177 = v12;
  rect = v11;
  v14 = v13;
  v16 = v15;

  contentView2 = [(MailboxTableCell *)self contentView];
  [contentView2 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  if ([(MailboxTableCell *)self isExpandable])
  {
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    v28 = 12.5;
    if (!effectiveUserInterfaceLayoutDirection)
    {
      v28 = 0.0;
    }

    v29 = v19 - v28;
    if (IsAccessibilityCategory)
    {
      v30 = v19;
    }

    else
    {
      v30 = v29;
    }

    if (IsAccessibilityCategory)
    {
      v31 = v23;
    }

    else
    {
      v31 = v23 + 12.5;
    }

    contentView3 = [(MailboxTableCell *)self contentView];
    [contentView3 setFrame:{v30, v21, v31, v25}];

    accessoryView = [(MailboxTableCell *)self accessoryView];
    [accessoryView frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;

    if (effectiveUserInterfaceLayoutDirection)
    {
      v40 = 8.0;
    }

    else
    {
      v40 = v31;
    }

    accessoryView2 = [(MailboxTableCell *)self accessoryView];
    [accessoryView2 setFrame:{v40, v35, v37, v39}];
  }

  if (image && ([UIApp preferredContentSizeCategory], v42 = objc_claimAutoreleasedReturnValue(), v43 = UIContentSizeCategoryIsAccessibilityCategory(v42), v42, !v43))
  {
    imageView2 = [(MailboxTableCell *)self imageView];
    [imageView2 frame];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v58 = sub_10024BD78(v8);
    v182.origin.x = v51;
    v182.origin.y = v53;
    v182.size.width = v55;
    v182.size.height = v57;
    Width = CGRectGetWidth(v182);
    v60 = UIRoundToViewScale(v58 + Width * -0.5) + *(&self->_mailboxes + 1);
    if (effectiveUserInterfaceLayoutDirection)
    {
      v183.origin.y = v177;
      v183.origin.x = rect;
      v183.size.width = v14;
      v183.size.height = v16;
      v61 = CGRectGetWidth(v183);
      v184.origin.x = v60;
      v184.origin.y = v53;
      v184.size.width = v55;
      v184.size.height = v57;
      v60 = v61 - CGRectGetMaxX(v184);
    }

    imageView3 = [(MailboxTableCell *)self imageView];
    [imageView3 setFrame:{v60, v53, v55, v57}];
  }

  else
  {
    preferredContentSizeCategory2 = [UIApp preferredContentSizeCategory];
    v45 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory2);

    if (v45)
    {
      preferredContentSizeCategory3 = [UIApp preferredContentSizeCategory];
      v47 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory3);

      if (image)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      goto LABEL_38;
    }

    v9 = v9 - sub_10024BCE0(v8);
    if (v9 < 8.0)
    {
      v48 = 1;
      v9 = 8.0;
      goto LABEL_38;
    }
  }

  v48 = 0;
LABEL_38:
  contentView4 = [(MailboxTableCell *)self contentView];
  [contentView4 bounds];
  MaxX = CGRectGetMaxX(v185);

  if ([(MailboxTableCell *)self isExpandable])
  {
    v65 = 14.0;
  }

  else
  {
    v65 = 20.0;
  }

  if (effectiveUserInterfaceLayoutDirection)
  {
    v186.origin.y = v177;
    v186.origin.x = rect;
    v186.size.width = v14;
    v186.size.height = v16;
    MinX = CGRectGetMinX(v186);
    if (v6)
    {
      v67 = MinX;
    }

    else
    {
      v67 = v65 + MinX;
    }
  }

  else if (v6)
  {
    v67 = MaxX;
  }

  else
  {
    v67 = MaxX - v65;
  }

  v68 = *(&self->_iconOffset.y + 1);
  if (v68)
  {
    [v68 sizeToFit];
    [*(&self->_iconOffset.y + 1) frame];
    v73 = v70;
    v74 = v71;
    v75 = v72;
    if (effectiveUserInterfaceLayoutDirection)
    {
      v76 = v67 + 10.0;
    }

    else
    {
      v76 = v67 - CGRectGetWidth(*&v69) + -10.0;
    }

    v187.origin.x = UIRoundToViewScale(v76);
    x = v187.origin.x;
    v187.origin.y = v73;
    v187.size.width = v74;
    v187.size.height = v75;
    Height = CGRectGetHeight(v187);
    y = UIRoundToViewScale((v16 - Height) * 0.5);
    v178 = x;
    [*(&self->_iconOffset.y + 1) setFrame:x];
  }

  else
  {
    y = CGRectZero.origin.y;
    v178 = CGRectZero.origin.x;
    v74 = CGRectZero.size.width;
    v75 = CGRectZero.size.height;
  }

  v79 = *(&self->_unreadCountLabel + 1);
  if (v79)
  {
    v80 = v9;
    [v79 frame];
    v85 = v82;
    v86 = v83;
    v87 = v84;
    if (effectiveUserInterfaceLayoutDirection)
    {
      [*(&self->_iconOffset.y + 1) frame];
      v88 = CGRectGetMaxX(v188) + 10.0;
      if (*(&self->_iconOffset.y + 1))
      {
        v89 = v88 + 10.0;
      }

      else
      {
        v89 = v88;
      }
    }

    else
    {
      v89 = v67 - CGRectGetWidth(*&v81) + -10.0;
      v90 = *(&self->_iconOffset.y + 1);
      if (v90)
      {
        [v90 frame];
        v89 = v89 - (CGRectGetWidth(v189) + 10.0);
      }
    }

    v190.origin.x = UIRoundToViewScale(v89);
    v91 = v190.origin.x;
    v190.origin.y = v85;
    v190.size.width = v86;
    v190.size.height = v87;
    v92 = CGRectGetHeight(v190);
    [*(&self->_unreadCountLabel + 1) setFrame:{v91, UIRoundToViewScale((v16 - v92) * 0.5), v86, v87}];
    v9 = v80;
  }

  traitCollection = [(MailboxTableCell *)self traitCollection];
  _splitViewControllerContext = [traitCollection _splitViewControllerContext];

  _viewConfigurationState = [(MailboxTableCell *)self _viewConfigurationState];
  recta = v75;
  if ([(MailboxTableCell *)self isExpandable])
  {
    textLabel4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline addingSymbolicTraits:0x8000 options:0];
    textLabel = [(MailboxTableCell *)self textLabel];
    v98 = [UIFont fontWithDescriptor:textLabel4 size:0.0];
    [textLabel setFont:v98];

    textLabel2 = [(MailboxTableCell *)self textLabel];
    v100 = +[UIColor mailAccountCellTitleColor];
    [textLabel2 setTextColor:v100];

    textLabel3 = [(MailboxTableCell *)self textLabel];
    v102 = +[UIColor clearColor];
    [textLabel3 setBackgroundColor:v102];

    v9 = 8.0;
  }

  else if ([(MailboxTableCell *)self isCellEnabled])
  {
    v103 = *(&self->_userInfo + 1);
    if (v103)
    {
      textLabel4 = [(MailboxTableCell *)self textLabel];
      [textLabel4 setTextColor:v103];
      goto LABEL_69;
    }

    traitCollection2 = [(MailboxTableCell *)self traitCollection];
    v169 = [traitCollection2 mf_useSplitViewStyling] & ((_viewConfigurationState & 4) != 0);

    if (v169 != 1 || _splitViewControllerContext == 2)
    {
      textLabel4 = +[UIColor labelColor];
      textLabel3 = [(MailboxTableCell *)self textLabel];
      [textLabel3 setTextColor:textLabel4];
    }

    else
    {
      v170 = +[UIColor systemWhiteColor];
      textLabel5 = [(MailboxTableCell *)self textLabel];
      [textLabel5 setTextColor:v170];

      textLabel4 = +[UIColor systemWhiteColor];
      textLabel3 = [(MailboxTableCell *)self imageView];
      [textLabel3 setTintColor:textLabel4];
    }
  }

  else
  {
    textLabel4 = [(MailboxTableCell *)self textLabel];
    textLabel3 = +[UIColor secondaryLabelColor];
    [textLabel4 setTextColor:textLabel3];
  }

LABEL_69:
  textLabel6 = [(MailboxTableCell *)self textLabel];
  [textLabel6 frame];
  v106 = v105;
  v108 = v107;

  v172 = v74;
  if (!effectiveUserInterfaceLayoutDirection)
  {
    if (_shouldUnreadCountBeVisible)
    {
      v193.origin.y = y;
      v193.origin.x = v178;
      v193.size.width = v74;
      v193.size.height = v75;
      v111 = CGRectGetMinX(v193) - v9 + -5.0;
      if (v48)
      {
        goto LABEL_76;
      }
    }

    else
    {
      contentView5 = [(MailboxTableCell *)self contentView];
      [contentView5 bounds];
      v111 = CGRectGetMaxX(v196) - v9 + -5.0;

      if (v48)
      {
        goto LABEL_76;
      }
    }

LABEL_78:
    v174 = v108;
    v175 = v106;
    v112 = v9;
    v113 = v9;
    v114 = v111;
    goto LABEL_79;
  }

  v109 = 5.0;
  if (_shouldUnreadCountBeVisible)
  {
    v191.origin.y = y;
    v191.origin.x = v178;
    v191.size.width = v74;
    v191.size.height = v75;
    v109 = CGRectGetMaxX(v191) + 5.0;
  }

  contentView6 = [(MailboxTableCell *)self contentView];
  [contentView6 bounds];
  v111 = CGRectGetMaxX(v192) - v109 - v9;

  v9 = v109;
  if (!v48)
  {
    goto LABEL_78;
  }

LABEL_76:
  v112 = v9;
  v194.origin.x = v9;
  v194.origin.y = v106;
  v194.size.width = v111;
  v194.size.height = v108;
  v195 = CGRectInset(v194, 12.0, 0.0);
  v113 = v195.origin.x;
  v174 = v195.size.height;
  v175 = v195.origin.y;
  v114 = v195.size.width;
LABEL_79:
  detailTextLabel = [(MailboxTableCell *)self detailTextLabel];
  [detailTextLabel frame];
  v118 = v117;
  v120 = v119;
  v122 = v121;
  v124 = v123;

  if (-[MailboxTableCell style](self, "style") == 3 || ([UIApp preferredContentSizeCategory], v125 = objc_claimAutoreleasedReturnValue(), v126 = UIContentSizeCategoryIsAccessibilityCategory(v125), v125, v126))
  {
    v122 = v111;
  }

  else
  {
    v112 = v118;
  }

  preferredContentSizeCategory4 = [UIApp preferredContentSizeCategory];
  v128 = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory4);

  textLabel7 = [(MailboxTableCell *)self textLabel];
  v130 = textLabel7;
  if (v128)
  {
    v131 = +[MailboxTableCell titleFont];
    [v131 lineHeight];
    [v130 sizeThatFits:{v111, v132 + v132}];
    v134 = v133;

    v135 = v134 + 0.0;
    v197.origin.y = 0.0;
    v197.origin.x = v113;
    v197.size.width = v114;
    v197.size.height = v134;
    v204.origin.x = v112;
    v204.origin.y = v134 + 0.0;
    v204.size.width = v122;
    v204.size.height = v124;
    v198 = CGRectUnion(v197, v204);
    v136 = v198.size.height;
    [(MailboxTableCell *)self bounds:v198.origin.x];
    v138 = ceil((v137 - v136) * 0.5);
    v199.origin.y = 0.0;
    v199.origin.x = v113;
    v199.size.width = v114;
    v199.size.height = v134;
    v200 = CGRectOffset(v199, 0.0, v138);
    v139 = v200.origin.x;
    v200.origin.x = v112;
    v140 = v200.origin.y;
    v141 = v200.size.width;
    v142 = v200.size.height;
    v200.origin.y = v135;
    v200.size.width = v122;
    v200.size.height = v124;
    v201 = CGRectOffset(v200, 0.0, v138);
    v143 = v201.origin.x;
    v144 = v201.origin.y;
    v145 = v201.size.width;
    v146 = v201.size.height;
    textLabel8 = [(MailboxTableCell *)self textLabel];
    [textLabel8 setFrame:{v139, v140, v141, v142}];

    detailTextLabel2 = [(MailboxTableCell *)self detailTextLabel];
    [detailTextLabel2 setFrame:{v143, v144, v145, v146}];

    textLabel9 = [(MailboxTableCell *)self textLabel];
    [textLabel9 _firstLineBaselineFrameOriginY];
    v151 = v150;
    v152 = +[MailboxTableCell titleFont];
    [v152 capHeight];
    v154 = v151 + v153 * -0.5;

    if (*(&self->_iconOffset.y + 1))
    {
      v202.origin.y = y;
      v202.origin.x = v178;
      v202.size.width = v173;
      v202.size.height = recta;
      v155 = CGRectGetHeight(v202);
      [*(&self->_iconOffset.y + 1) setFrame:{v178, v154 - UIRoundToViewScale(v155 * 0.5), v173, recta}];
    }

    accessoryView3 = [(MailboxTableCell *)self accessoryView];
    detailTextLabel3 = accessoryView3;
    if (accessoryView3)
    {
      [accessoryView3 frame];
      v158 = v203.origin.x;
      v159 = v203.size.width;
      v160 = v203.size.height;
      v161 = CGRectGetHeight(v203);
      [detailTextLabel3 setFrame:{v158, v154 - UIRoundToViewScale(v161 * 0.5), v159, v160}];
    }
  }

  else
  {
    [textLabel7 setFrame:{v113, v175, v114, v174}];

    detailTextLabel3 = [(MailboxTableCell *)self detailTextLabel];
    [detailTextLabel3 setFrame:{v112, v120, v122, v124}];
  }

  traitCollection3 = [(MailboxTableCell *)self traitCollection];
  if ([traitCollection3 mf_useSplitViewStyling])
  {
    goto LABEL_90;
  }

  isEditing = [(MailboxTableCell *)self isEditing];

  if ((isEditing & 1) == 0)
  {
    isHighlighted = [(MailboxTableCell *)self isHighlighted];
    v165 = isHighlighted;
    if (isHighlighted)
    {
      v166 = +[UIColor _tertiaryFillColor];
      traitCollection3 = v166;
    }

    else
    {
      traitCollection3 = [(MailboxTableCell *)self traitCollection];
      v166 = +[UIColor mailCellSelectionStateColorForInterfaceLevel:](UIColor, "mailCellSelectionStateColorForInterfaceLevel:", [traitCollection3 userInterfaceLevel]);
    }

    selectedBackgroundView = [(MailboxTableCell *)self selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v166];

    if ((v165 & 1) == 0)
    {
    }

LABEL_90:
  }
}

- (CGPoint)destinationPointForAnimation
{
  [(MailboxTableCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  textLabel = [(MailboxTableCell *)self textLabel];
  [textLabel frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  traitCollection = [(MailboxTableCell *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  MidY = CGRectGetMidY(v28);
  v29.origin.x = v13;
  v29.origin.y = v15;
  v29.size.width = v17;
  v29.size.height = v19;
  MidX = CGRectGetMidX(v29);
  v24 = 3.0;
  if (horizontalSizeClass == 1)
  {
    v24 = 2.0;
  }

  v25 = v8 / v24;
  if (v25 >= MidX)
  {
    MidX = v25;
  }

  v26 = MidY;
  result.y = v26;
  result.x = MidX;
  return result;
}

- (id)_scriptingInfo
{
  v8.receiver = self;
  v8.super_class = MailboxTableCell;
  _scriptingInfo = [(MailboxTableCell *)&v8 _scriptingInfo];
  if ([*(&self->super._shouldDisableWhileEditing + 1) count] == 1)
  {
    v4 = +[MailChangeManager sharedChangeManager];
    anyObject = [*(&self->super._shouldDisableWhileEditing + 1) anyObject];
    v6 = [v4 displayNameUsingSpecialNamesForMailbox:anyObject];

    [_scriptingInfo setValue:v6 forKey:@"ID"];
  }

  return _scriptingInfo;
}

- (void)messageRepository:(id)repository query:(id)query countDidChange:(int64_t)change
{
  v5 = [EFScheduler mainThreadScheduler:repository];
  [v5 performBlock:&v6];
}

@end