@interface PSGCertTrustSettings
- (id)isFullTrustEnabled:(id)enabled;
- (id)specifierForTrustSettings:(__SecCertificate *)settings isRestricted:(BOOL)restricted;
- (id)specifiers;
- (id)trustAssetVersionString:(id)string;
- (id)trustVersionString:(id)string;
- (void)setFullTrustEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PSGCertTrustSettings

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PSGCertTrustSettings;
  [(PSGCertTrustSettings *)&v4 viewDidLoad];
  v3 = PSG_LocalizedString(@"CERT_TRUST_SETTINGS");
  [(PSGCertTrustSettings *)self setTitle:v3];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = PSGCertTrustSettings;
  [(PSGCertTrustSettings *)&v14 viewWillAppear:appear];
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v6 = *MEMORY[0x277D26148];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__PSGCertTrustSettings_viewWillAppear___block_invoke;
  v11 = &unk_278325098;
  objc_copyWeak(&v12, &location);
  v7 = [defaultCenter addObserverForName:v6 object:0 queue:mainQueue usingBlock:&v8];
  [(PSGCertTrustSettings *)self setProfileListChangedNotificationObserver:v7, v8, v9, v10, v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __39__PSGCertTrustSettings_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = PSGCertTrustSettings;
  [(PSGCertTrustSettings *)&v6 viewDidDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  profileListChangedNotificationObserver = [(PSGCertTrustSettings *)self profileListChangedNotificationObserver];
  [defaultCenter removeObserver:profileListChangedNotificationObserver];

  [(PSGCertTrustSettings *)self setProfileListChangedNotificationObserver:0];
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v35 = 0;
    v7 = [mEMORY[0x277D262A0] lockedDownRootCertificatesWithOutLocalizedSourceDescription:&v35];
    v8 = v35;

    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v34 = v8;
    [emptyGroupSpecifier setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
    [v5 addObject:emptyGroupSpecifier];
    v10 = emptyGroupSpecifier;
    v11 = PSG_BundleForGeneralSettingsUIFramework(v10);
    v12 = [v11 localizedStringForKey:&stru_282E88A90 value:&stru_282E88A90 table:0];

    v14 = PSG_BundleForGeneralSettingsUIFramework(v13);
    v15 = [v14 localizedStringForKey:@"TRUST_STORE_VERSION" value:&stru_282E88A90 table:0];

    v33 = v15;
    v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:self set:0 get:sel_trustVersionString_ detail:0 cell:4 edit:0];
    v17 = *MEMORY[0x277D3FFB8];
    [v16 setProperty:@"TRUST_STORE_VERSION" forKey:*MEMORY[0x277D3FFB8]];
    v32 = v16;
    [v5 addObject:v16];
    v18 = MEMORY[0x277D3FAD8];
    v19 = PSG_LocalizedStringForGeneral(@"TRUST_ASSET_VERSION");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:sel_trustAssetVersionString_ detail:0 cell:4 edit:0];

    v21 = v20;
    [v20 setProperty:@"TRUST_ASSET_VERSION" forKey:v17];
    [v5 addObject:v20];
    SecTrustStoreForDomain();
    SecTrustStoreCopyAll();
    v22 = PSG_LocalizedStringForGeneral(@"TRUST_STORE_ABOUT");
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    [v10 setProperty:v24 forKey:*MEMORY[0x277D3FF48]];

    [v10 setProperty:v22 forKey:*MEMORY[0x277D3FF70]];
    v37.length = [v22 length];
    v37.location = 0;
    v25 = NSStringFromRange(v37);
    [v10 setProperty:v25 forKey:*MEMORY[0x277D3FF58]];

    v26 = MEMORY[0x277CBEBC0];
    v27 = PSG_LocalizedStringForGeneral(@"TRUST_STORE_URL");
    v28 = [v26 URLWithString:v27];
    [v10 setProperty:v28 forKey:*MEMORY[0x277D3FF78]];

    v29 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
    v30 = v5;

    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (id)isFullTrustEnabled:(id)enabled
{
  [enabled propertyForKey:@"certName"];
  SecTrustStoreForDomain();
  SecTrustStoreCopyUsageConstraints();
  v3 = [MEMORY[0x277CCABB0] numberWithBool:0];

  return v3;
}

- (void)setFullTrustEnabled:(id)enabled forSpecifier:(id)specifier
{
  v35[2] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  enabledCopy = enabled;
  v8 = [specifierCopy propertyForKey:@"certName"];
  intValue = [enabledCopy intValue];

  if (intValue)
  {
    v10 = MEMORY[0x277D75110];
    v11 = PSG_LocalizedStringForGeneral(@"ROOT_CERTIFICATE");
    v12 = PSG_LocalizedStringForGeneral(@"ROOT_CERTIFICATE_MESSAGE");
    v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

    v14 = MEMORY[0x277D750F8];
    v15 = PSG_LocalizedStringForGeneral(@"CONTINUE");
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __57__PSGCertTrustSettings_setFullTrustEnabled_forSpecifier___block_invoke;
    v30[3] = &__block_descriptor_40_e23_v16__0__UIAlertAction_8l;
    v30[4] = v8;
    v16 = [v14 actionWithTitle:v15 style:0 handler:v30];
    [v13 addAction:v16];

    v17 = MEMORY[0x277D750F8];
    v18 = PSG_LocalizedStringForGeneral(@"CANCEL");
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __57__PSGCertTrustSettings_setFullTrustEnabled_forSpecifier___block_invoke_2;
    v27 = &unk_2783250E0;
    selfCopy = self;
    v29 = specifierCopy;
    v19 = [v17 actionWithTitle:v18 style:1 handler:&v24];
    [v13 addAction:{v19, v24, v25, v26, v27, selfCopy}];

    [(PSGCertTrustSettings *)self presentViewController:v13 animated:1 completion:0];
LABEL_5:

    goto LABEL_6;
  }

  SSL = SecPolicyCreateSSL(1u, 0);
  if (SSL)
  {
    v21 = SSL;
    v33[0] = @"kSecTrustSettingsPolicy";
    v33[1] = @"kSecTrustSettingsResult";
    v34[0] = SSL;
    v34[1] = &unk_282E8FDE8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v35[0] = v22;
    v31 = @"kSecTrustSettingsResult";
    v32 = &unk_282E8FE00;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v35[1] = v23;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];

    SecTrustStoreForDomain();
    SecTrustStoreSetTrustSettings();
    CFRelease(v21);
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t __57__PSGCertTrustSettings_setFullTrustEnabled_forSpecifier___block_invoke(uint64_t a1)
{
  SecTrustStoreForDomain();

  return SecTrustStoreSetTrustSettings();
}

- (id)specifierForTrustSettings:(__SecCertificate *)settings isRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  v7 = SecCertificateCopyCommonNames();
  if ([v7 count] && (objc_msgSend(v7, "firstObject"), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v8 target:self set:sel_setFullTrustEnabled_forSpecifier_ get:sel_isFullTrustEnabled_ detail:0 cell:6 edit:0];
    [v10 setProperty:settings forKey:@"certName"];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:!restrictedCopy];
    [v10 setProperty:v11 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)trustVersionString:(id)string
{
  if (SecTrustStoreGetSettingsVersionNumber())
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", 0];
  }

  return v3;
}

- (id)trustAssetVersionString:(id)string
{
  if (SecTrustStoreGetSettingsAssetVersionNumber())
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", 0];
  }

  return v3;
}

@end