@interface _PMPasswordAutoFillPocketViewController
- (_ASPasswordManagerIconController)iconController;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithCoder:(id)coder;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)persona appID:(id)d credentialTypes:(int64_t)types promptString:(id)string promptStringWhenPasskeysAreAvailable:(id)available serviceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings savedAccountStore:(id)self0 suggestedDomainForNewAccount:(id)self1 localizedHostAppNameForNewAccount:(id)self2 bundleIDForFallbackIconForNewAccount:(id)self3 autoFillQuirksManager:(id)self4 shouldShowAutoFillPasskeys:(BOOL)self5 currentWebFrameIdentifierForAutoFillPasskeys:(id)self6 connectedAppAuditToken:(id *)self7 isConnectedAppAWebBrowser:(BOOL)self8 initialSearchQuery:(id)self9 savedAccountToInitiallyShowDetailsFor:(id)for shouldAllowAddingNewPasswords:(BOOL)passwords bypassLockoutPolicy:(BOOL)policy authenticatedContext:(id)context savedAccountContext:(id)accountContext didSelectAccountHandler:(id)handler didSelectTextToInsertHandler:(id)insertHandler;
- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)persona appID:(id)d credentialTypes:(int64_t)types promptString:(id)string promptStringWhenPasskeysAreAvailable:(id)available serviceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings savedAccountStore:(id)self0 suggestedDomainForNewAccount:(id)self1 localizedHostAppNameForNewAccount:(id)self2 bundleIDForFallbackIconForNewAccount:(id)self3 autoFillQuirksManager:(id)self4 shouldShowAutoFillPasskeys:(BOOL)self5 currentWebFrameIdentifierForAutoFillPasskeys:(id)self6 connectedAppAuditToken:(id *)self7 isConnectedAppAWebBrowser:(BOOL)self8 initialSearchQuery:(id)self9 savedAccountToInitiallyShowDetailsFor:(id)for shouldAllowAddingNewPasswords:(BOOL)passwords bypassLockoutPolicy:(BOOL)policy authenticatedContext:(id)context savedAccountContext:(id)accountContext savedAccountForHistorySection:(id)section didSelectHistoryItem:(id)aBlock didSelectAccountHandler:(id)handler didSelectTextToInsertHandler:(id)insertHandler;
- (id)searchQuery;
- (void)loadView;
- (void)setAuthenticatedContext:(id)context;
- (void)setSearchQuery:(id)query;
- (void)updateHintStringsWithServiceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings suggestedDomainForNewAccount:(id)account;
@end

@implementation _PMPasswordAutoFillPocketViewController

- (_ASPasswordManagerIconController)iconController
{
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_21C95C78C();

  return v2;
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)persona appID:(id)d credentialTypes:(int64_t)types promptString:(id)string promptStringWhenPasskeysAreAvailable:(id)available serviceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings savedAccountStore:(id)self0 suggestedDomainForNewAccount:(id)self1 localizedHostAppNameForNewAccount:(id)self2 bundleIDForFallbackIconForNewAccount:(id)self3 autoFillQuirksManager:(id)self4 shouldShowAutoFillPasskeys:(BOOL)self5 currentWebFrameIdentifierForAutoFillPasskeys:(id)self6 connectedAppAuditToken:(id *)self7 isConnectedAppAWebBrowser:(BOOL)self8 initialSearchQuery:(id)self9 savedAccountToInitiallyShowDetailsFor:(id)for shouldAllowAddingNewPasswords:(BOOL)passwords bypassLockoutPolicy:(BOOL)policy authenticatedContext:(id)context savedAccountContext:(id)accountContext didSelectAccountHandler:(id)handler didSelectTextToInsertHandler:(id)insertHandler
{
  v76 = *&token->var0[2];
  v77 = *token->var0;
  v72 = *&token->var0[6];
  v73 = *&token->var0[4];
  v68 = _Block_copy(handler);
  v69 = _Block_copy(insertHandler);
  v28 = sub_21CB855C4();
  v74 = v29;
  v75 = v28;
  if (string)
  {
    v30 = sub_21CB855C4();
    v70 = v31;
    v71 = v30;
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  if (available)
  {
    v32 = sub_21CB855C4();
    v66 = v33;
    v67 = v32;
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v65 = sub_21CB85824();
  v64 = sub_21CB85824();
  if (account)
  {
    v34 = sub_21CB855C4();
    v61 = v35;
    v62 = v34;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  storeCopy = store;
  newAccountCopy = newAccount;
  forNewAccountCopy = forNewAccount;
  managerCopy = manager;
  fillPasskeysCopy = fillPasskeys;
  queryCopy = query;
  forCopy = for;
  contextCopy = context;
  accountContextCopy = accountContext;
  if (newAccountCopy)
  {
    v41 = sub_21CB855C4();
    v56 = v42;
    v57 = v41;

    if (forNewAccountCopy)
    {
LABEL_12:
      v43 = sub_21CB855C4();
      v54 = v44;
      v55 = v43;

      goto LABEL_15;
    }
  }

  else
  {
    v56 = 0;
    v57 = 0;
    if (forNewAccountCopy)
    {
      goto LABEL_12;
    }
  }

  v54 = 0;
  v55 = 0;
LABEL_15:
  if (queryCopy)
  {
    v45 = sub_21CB855C4();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v68;
  v49 = swift_allocObject();
  *(v49 + 16) = v69;
  HIBYTE(v53) = policy;
  LOBYTE(v53) = passwords;
  *(&v52 + 1) = v61;
  *&v52 = v62;
  v50 = sub_21CB0165C(persona, v75, v74, types, v71, v70, v67, v66, v65, v64, storeCopy, v52, v57, v56, v55, v54, managerCopy, passkeys, fillPasskeysCopy, v77, v76, v73, v72, browser, v45, v47, forCopy, v53, contextCopy, accountContextCopy, sub_21CB03008, v48, sub_21CB03004, v49);

  return v50;
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithPersona:(int64_t)persona appID:(id)d credentialTypes:(int64_t)types promptString:(id)string promptStringWhenPasskeysAreAvailable:(id)available serviceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings savedAccountStore:(id)self0 suggestedDomainForNewAccount:(id)self1 localizedHostAppNameForNewAccount:(id)self2 bundleIDForFallbackIconForNewAccount:(id)self3 autoFillQuirksManager:(id)self4 shouldShowAutoFillPasskeys:(BOOL)self5 currentWebFrameIdentifierForAutoFillPasskeys:(id)self6 connectedAppAuditToken:(id *)self7 isConnectedAppAWebBrowser:(BOOL)self8 initialSearchQuery:(id)self9 savedAccountToInitiallyShowDetailsFor:(id)for shouldAllowAddingNewPasswords:(BOOL)passwords bypassLockoutPolicy:(BOOL)policy authenticatedContext:(id)context savedAccountContext:(id)accountContext savedAccountForHistorySection:(id)section didSelectHistoryItem:(id)aBlock didSelectAccountHandler:(id)handler didSelectTextToInsertHandler:(id)insertHandler
{
  v75 = *&token->var0[2];
  v76 = *token->var0;
  v73 = *&token->var0[6];
  v74 = *&token->var0[4];
  v64 = _Block_copy(aBlock);
  v66 = _Block_copy(handler);
  v68 = _Block_copy(insertHandler);
  v30 = sub_21CB855C4();
  v71 = v31;
  v72 = v30;
  if (string)
  {
    v32 = sub_21CB855C4();
    v69 = v33;
    v70 = v32;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  if (available)
  {
    v67 = sub_21CB855C4();
    v65 = v34;
  }

  else
  {
    v67 = 0;
    v65 = 0;
  }

  v63 = sub_21CB85824();
  v62 = sub_21CB85824();
  if (account)
  {
    v35 = sub_21CB855C4();
    v60 = v36;
    v61 = v35;
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  storeCopy = store;
  newAccountCopy = newAccount;
  forNewAccountCopy = forNewAccount;
  managerCopy = manager;
  fillPasskeysCopy = fillPasskeys;
  queryCopy = query;
  forCopy = for;
  contextCopy = context;
  accountContextCopy = accountContext;
  sectionCopy = section;
  if (newAccountCopy)
  {
    v54 = sub_21CB855C4();
    v52 = v40;

    if (forNewAccountCopy)
    {
LABEL_12:
      v41 = sub_21CB855C4();
      v43 = v42;

      goto LABEL_15;
    }
  }

  else
  {
    v54 = 0;
    v52 = 0;
    if (forNewAccountCopy)
    {
      goto LABEL_12;
    }
  }

  v41 = 0;
  v43 = 0;
LABEL_15:
  if (queryCopy)
  {
    v44 = sub_21CB855C4();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = swift_allocObject();
  *(v47 + 16) = v64;
  v48 = swift_allocObject();
  *(v48 + 16) = v66;
  v49 = swift_allocObject();
  *(v49 + 16) = v68;
  return _PMPasswordAutoFillPocketViewController.init(persona:appID:credentialTypes:promptString:promptStringWhenPasskeysAreAvailable:serviceNameHintStrings:domainNameHintStrings:savedAccountStore:suggestedDomainForNewAccount:localizedHostAppNameForNewAccount:bundleIDForFallbackIconForNewAccount:autoFillQuirksManager:shouldShowAutoFillPasskeys:currentWebFrameIdentifierForAutoFillPasskeys:connectedAppAuditToken:isConnectedAppAWebBrowser:initialSearchQuery:savedAccountToInitiallyShowDetailsFor:shouldAllowAddingNewPasswords:bypassLockoutPolicy:authenticatedContext:savedAccountContext:savedAccountForHistorySection:didSelectHistoryItem:didSelectAccountHandler:didSelectTextToInsertHandler:)(persona, v72, v71, types, v70, v69, v67, v65, v63, v62, storeCopy, v61, v60, v54, v52, v41, v43, managerCopy, passkeys, fillPasskeysCopy, v76, HIDWORD(v76), v75, HIDWORD(v75), v74, HIDWORD(v74), v73, HIDWORD(v73), browser, v44, v46, forCopy, passwords, policy, contextCopy, accountContextCopy, sectionCopy, sub_21CB02D88, v47, sub_21CB02D90, v48, sub_21CB02DA4, v49);
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_savedAccountForHistorySection;
  v5 = type metadata accessor for PMAccount(0);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v6 = (&self->super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_didSelectHistoryItem);
  *v6 = 0;
  v6[1] = 0;
  result = sub_21CB861C4();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_21CAFFD7C();
}

- (void)setAuthenticatedContext:(id)context
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController_pickerModel);
  v4 = *(v3 + 352);
  *(v3 + 352) = context;
}

- (id)searchQuery
{
  swift_getKeyPath(byte_21CBC91F8, a2);
  swift_getKeyPath(byte_21CBC9220);
  selfCopy = self;

  sub_21CB81DB4();

  v4 = sub_21CB85584();

  return v4;
}

- (void)setSearchQuery:(id)query
{
  v4 = sub_21CB855C4();
  v6 = v5;
  selfCopy = self;

  sub_21C7A6110(v4, v6);
}

- (void)updateHintStringsWithServiceNameHintStrings:(id)strings domainNameHintStrings:(id)hintStrings suggestedDomainForNewAccount:(id)account
{
  v7 = sub_21CB85824();
  v8 = sub_21CB85824();
  if (account)
  {
    v9 = sub_21CB855C4();
    account = v10;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  sub_21CB00354(v7, v8, v9, account);
}

- (_TtC17PasswordManagerUI39_PMPasswordAutoFillPocketViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end