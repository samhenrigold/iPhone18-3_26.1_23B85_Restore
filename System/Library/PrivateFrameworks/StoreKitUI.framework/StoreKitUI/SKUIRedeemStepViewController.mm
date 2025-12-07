@interface SKUIRedeemStepViewController
- (BOOL)shouldShowPassbookLearnMore;
- (SKUIRedeemStepDelegate)redeemStepDelegate;
- (void)shouldShowPassbookLearnMore;
@end

@implementation SKUIRedeemStepViewController

- (BOOL)shouldShowPassbookLearnMore
{
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    has_internal_content = _os_feature_enabled_impl();
    if (has_internal_content)
    {
      has_internal_content = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (has_internal_content)
      {
        [SKUIRedeemStepViewController shouldShowPassbookLearnMore];
      }
    }
  }

  v5 = SKUIPassKitCoreFramework(has_internal_content, v4);
  v6 = SKUIWeakLinkedClassForString(&cfstr_Pkpasslibrary.isa, v5);
  configuration = [(SKUIRedeemStepViewController *)self configuration];
  iTunesPassConfiguration = [configuration ITunesPassConfiguration];

  if (!iTunesPassConfiguration)
  {
    return 0;
  }

  if (![v6 isPassLibraryAvailable])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 0;
  }

  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (iTunesPassSerialNumber)
  {
    v16 = objc_alloc_init(v6);
    v17 = [v16 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
    v11 = v17 == 0;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (SKUIRedeemStepDelegate)redeemStepDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_redeemStepDelegate);

  return WeakRetained;
}

- (void)shouldShowPassbookLearnMore
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIRedeemStepViewController shouldShowPassbookLearnMore]";
}

@end