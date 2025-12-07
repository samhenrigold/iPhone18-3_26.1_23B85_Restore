@interface SBFolderViewAssertion
- (SBFolderViewAssertion)initWithAssertionType:(int64_t)type folderView:(id)view extraInfo:(id)info;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBFolderViewAssertion

- (SBFolderViewAssertion)initWithAssertionType:(int64_t)type folderView:(id)view extraInfo:(id)info
{
  viewCopy = view;
  infoCopy = info;
  v16.receiver = self;
  v16.super_class = SBFolderViewAssertion;
  v11 = [(SBFolderViewAssertion *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_assertionType = type;
    objc_storeStrong(&v11->_folderView, view);
    v13 = [infoCopy copy];
    extraInfo = v12->_extraInfo;
    v12->_extraInfo = v13;
  }

  return v12;
}

- (void)dealloc
{
  isInvalidated = [(SBFolderViewAssertion *)self isInvalidated];
  if ((isInvalidated & 1) == 0)
  {
    v4 = SBLogCommon(isInvalidated);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_INFO, "SBFolderViewAssertion deallocated but not invalidated!", buf, 2u);
    }

    [(SBFolderViewAssertion *)self invalidate];
  }

  v5.receiver = self;
  v5.super_class = SBFolderViewAssertion;
  [(SBFolderViewAssertion *)&v5 dealloc];
}

- (void)invalidate
{
  if (![(SBFolderViewAssertion *)self isInvalidated])
  {
    folderView = [(SBFolderViewAssertion *)self folderView];
    [folderView removeAssertion:self];

    [(SBFolderViewAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFolderViewAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFolderViewAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBFolderViewAssertion *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendInteger:-[SBFolderViewAssertion assertionType](self withName:{"assertionType"), @"assertionType"}];
  extraInfo = [(SBFolderViewAssertion *)self extraInfo];
  v7 = [succinctDescriptionBuilder appendObject:extraInfo withName:@"extraInfo"];

  folderView = [(SBFolderViewAssertion *)self folderView];
  v9 = [succinctDescriptionBuilder appendPointer:folderView withName:@"folderView"];

  return succinctDescriptionBuilder;
}

@end