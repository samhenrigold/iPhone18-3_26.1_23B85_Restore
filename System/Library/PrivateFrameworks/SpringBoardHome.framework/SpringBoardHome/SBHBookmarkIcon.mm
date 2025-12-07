@interface SBHBookmarkIcon
- (BOOL)canBeAddedToMultiItemDrag;
- (BOOL)canBeAddedToSubfolder;
- (BOOL)displaysAppStoreURLShortcutItem;
- (BOOL)displaysShareBookmarkShortcutItem;
- (BOOL)isWebAppIcon;
- (SBHBookmarkIcon)initWithBookmark:(id)bookmark;
- (id)_sbhIconLibraryOverrideCollationSectionTitle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)draggingUserActivity;
- (id)uninstallAlertBody;
- (id)uninstallAlertTitle;
- (uint64_t)_isSaneURL;
- (void)setBookmark:(id)bookmark;
@end

@implementation SBHBookmarkIcon

- (SBHBookmarkIcon)initWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  identifier = [bookmarkCopy identifier];
  v9.receiver = self;
  v9.super_class = SBHBookmarkIcon;
  v7 = [(SBLeafIcon *)&v9 initWithLeafIdentifier:identifier applicationBundleID:0];

  if (v7)
  {
    objc_storeStrong(&v7->_bookmark, bookmark);
    [(SBLeafIcon *)v7 addIconDataSource:bookmarkCopy];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  bookmark = self->_bookmark;

  return [v4 initWithBookmark:bookmark];
}

- (void)setBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  if (self->_bookmark != bookmarkCopy)
  {
    v6 = bookmarkCopy;
    [(SBLeafIcon *)self removeIconDataSource:?];
    objc_storeStrong(&self->_bookmark, bookmark);
    [(SBLeafIcon *)self addIconDataSource:self->_bookmark];
    [(SBIcon *)self _notifyImageDidUpdate];
    [(SBIcon *)self _notifyAccessoriesDidUpdate];
    bookmarkCopy = v6;
  }
}

- (BOOL)displaysShareBookmarkShortcutItem
{
  if (![(SBHBookmarkIcon *)self _isSaneURL])
  {
    return 0;
  }

  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 1;
  }

  webClip = [(SBHBookmarkIcon *)self webClip];
  applicationBundleIdentifier = [webClip applicationBundleIdentifier];

  if (applicationBundleIdentifier)
  {
    v3 = [applicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (BOOL)displaysAppStoreURLShortcutItem
{
  if (![(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 0;
  }

  appClip = [(SBHBookmarkIcon *)self appClip];
  fullAppStoreURL = [appClip fullAppStoreURL];

  v5 = fullAppStoreURL != 0;
  return v5;
}

- (BOOL)canBeAddedToMultiItemDrag
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBHBookmarkIcon;
  return [(SBIcon *)&v4 canBeAddedToMultiItemDrag];
}

- (BOOL)canBeAddedToSubfolder
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = SBHBookmarkIcon;
  return [(SBIcon *)&v4 canBeAddedToSubfolder];
}

- (id)uninstallAlertTitle
{
  isAppClipIcon = [(SBHBookmarkIcon *)self isAppClipIcon];
  if (isAppClipIcon)
  {
    v4 = SBHBundle(isAppClipIcon);
    v5 = v4;
    v6 = @"UNINSTALL_APPCLIP_TITLE";
  }

  else
  {
    isWebAppIcon = [(SBHBookmarkIcon *)self isWebAppIcon];
    if (isWebAppIcon)
    {
      v8 = MEMORY[0x1E696AEC0];
      v5 = SBHBundle(isWebAppIcon);
      v9 = [v5 localizedStringForKey:@"UNINSTALL_WEBAPP_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      displayName = [(SBIcon *)self displayName];
      v11 = [v8 stringWithFormat:v9, displayName];

      goto LABEL_7;
    }

    v4 = SBHBundle(isWebAppIcon);
    v5 = v4;
    v6 = @"UNINSTALL_BOOKMARK_TITLE";
  }

  v11 = [v4 localizedStringForKey:v6 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
LABEL_7:

  return v11;
}

- (id)uninstallAlertBody
{
  isAppClipIcon = [(SBHBookmarkIcon *)self isAppClipIcon];
  if (isAppClipIcon)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = SBHBundle(isAppClipIcon);
    v6 = v5;
    v7 = @"UNINSTALL_APPCLIP_BODY_DELETE_DATA";
  }

  else
  {
    isWebAppIcon = [(SBHBookmarkIcon *)self isWebAppIcon];
    if (isWebAppIcon)
    {
      v6 = SBHBundle(isWebAppIcon);
      v9 = [v6 localizedStringForKey:@"UNINSTALL_WEBAPP_BODY_DELETE_DATA" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E696AEC0];
    v5 = SBHBundle(isWebAppIcon);
    v6 = v5;
    v7 = @"UNINSTALL_BOOKMARK_BODY_DELETE_DATA";
  }

  v10 = [v5 localizedStringForKey:v7 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  displayName = [(SBIcon *)self displayName];
  v9 = [v4 stringWithFormat:v10, displayName];

LABEL_7:

  return v9;
}

- (id)draggingUserActivity
{
  if ([(SBHBookmarkIcon *)self isAppClipIcon])
  {
    bookmark = [(SBHBookmarkIcon *)self bookmark];
    webClip = [bookmark webClip];
    appClipUserActivity = [webClip appClipUserActivity];
  }

  else
  {
    appClipUserActivity = 0;
  }

  return appClipUserActivity;
}

- (BOOL)isWebAppIcon
{
  webClip = [(SBHBookmarkIcon *)self webClip];
  if (objc_opt_respondsToSelector())
  {
    webClip2 = [(SBHBookmarkIcon *)self webClip];
    needsWebAppDeletionStrings = [webClip2 needsWebAppDeletionStrings];
  }

  else
  {
    needsWebAppDeletionStrings = 0;
  }

  return needsWebAppDeletionStrings;
}

- (id)_sbhIconLibraryOverrideCollationSectionTitle
{
  webClip = [(SBHBookmarkIcon *)self webClip];
  isAppClip = [webClip isAppClip];

  if (isAppClip)
  {
    _sbhIconLibraryOverrideCollationSectionTitle = *MEMORY[0x1E69DE3E0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBHBookmarkIcon;
    _sbhIconLibraryOverrideCollationSectionTitle = [(SBIcon *)&v7 _sbhIconLibraryOverrideCollationSectionTitle];
  }

  return _sbhIconLibraryOverrideCollationSectionTitle;
}

- (uint64_t)_isSaneURL
{
  if (!self)
  {
    return 0;
  }

  webClip = [self webClip];
  pageURL = [webClip pageURL];

  v3 = [pageURL isFileURL] ^ 1;
  return v3;
}

@end