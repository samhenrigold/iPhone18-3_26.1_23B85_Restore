@interface SFPasswordServiceViewController
- (void)_willAppearInRemoteViewController;
@end

@implementation SFPasswordServiceViewController

- (void)_willAppearInRemoteViewController
{
  sf_safariAccentColor = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  view = [(SFPasswordServiceViewController *)self view];
  window = [view window];
  [window setTintColor:sf_safariAccentColor];

  objc_msgSend__hostAuditToken(self);
  v6 = WBSApplicationIdentifierFromAuditToken();
  applicationIdentifier = self->_applicationIdentifier;
  self->_applicationIdentifier = v6;

  v9 = self->_applicationIdentifier;
  if (v9)
  {
    if (![(NSString *)v9 length])
    {
      v11 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(0, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(SFPasswordServiceViewController *)v11 _willAppearInRemoteViewController];
      }
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAppPasswordAutoFill(0, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(SFPasswordServiceViewController *)v12 _willAppearInRemoteViewController];
    }
  }
}

@end