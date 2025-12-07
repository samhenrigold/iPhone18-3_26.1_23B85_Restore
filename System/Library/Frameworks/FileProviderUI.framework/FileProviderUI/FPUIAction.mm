@interface FPUIAction
- (FPUIAction)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action;
- (FPUIAction)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action fpProviderDomain:(id)self0;
@end

@implementation FPUIAction

- (FPUIAction)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action
{
  v10.receiver = self;
  v10.super_class = FPUIAction;
  result = [(UIDocumentBrowserActionDescriptor *)&v10 initWithIdentifier:identifier uiActionProviderIdentifier:providerIdentifier fileProviderIdentifier:fileProviderIdentifier displayName:name predicate:predicate displayInline:name != 0];
  if (result)
  {
    result->_isNonUIAction = action;
  }

  return result;
}

- (FPUIAction)initWithIdentifier:(id)identifier uiActionProviderIdentifier:(id)providerIdentifier fileProviderIdentifier:(id)fileProviderIdentifier displayName:(id)name predicate:(id)predicate displayInline:(BOOL)inline isNonUIAction:(BOOL)action fpProviderDomain:(id)self0
{
  inlineCopy = inline;
  domainCopy = domain;
  v21.receiver = self;
  v21.super_class = FPUIAction;
  v18 = [(UIDocumentBrowserActionDescriptor *)&v21 initWithIdentifier:identifier uiActionProviderIdentifier:providerIdentifier fileProviderIdentifier:fileProviderIdentifier displayName:name predicate:predicate displayInline:inlineCopy];
  v19 = v18;
  if (v18)
  {
    v18->_isNonUIAction = action;
    objc_storeStrong(&v18->_fpProviderDomain, domain);
  }

  return v19;
}

@end