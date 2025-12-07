@interface SUScriptDonationViewController
- (SUScriptDonationViewController)initWithCharityIdentifier:(id)identifier;
- (id)newNativeViewController;
@end

@implementation SUScriptDonationViewController

- (SUScriptDonationViewController)initWithCharityIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = SUScriptDonationViewController;
  v4 = [(SUScriptObject *)&v6 init];
  if (v4)
  {
    v4->_charityIdentifier = [identifier copy];
  }

  return v4;
}

- (id)newNativeViewController
{
  v3 = ISUIMobileStoreUIFramework(self, a2);
  v4 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuidonationvi.isa v3))];
  v6 = ISUIMobileStoreUIFramework(v4, v5);
  [v4 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v6), "defaultContext")}];
  return v4;
}

@end