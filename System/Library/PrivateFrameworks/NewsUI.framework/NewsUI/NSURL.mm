@interface NSURL
@end

@implementation NSURL

void __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 key_window];
  v23 = [v3 rootViewController];

  v5 = NUBundle(v4);
  v6 = [v5 localizedStringForKey:@"“%@” wants to open “%@”" value:&stru_286E03B58 table:0];

  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] mainBundle];
  v9 = [v8 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
  v10 = [*(a1 + 32) localizedName];
  v11 = [v7 stringWithFormat:v6, v9, v10];

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v11 message:0 preferredStyle:1];
  inited = objc_initWeak(&location, v12);
  v14 = MEMORY[0x277D750F8];
  v15 = NUBundle(inited);
  v16 = [v15 localizedStringForKey:@"Cancel" value:&stru_286E03B58 table:0];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_2;
  v26[3] = &unk_2799A3F80;
  objc_copyWeak(&v27, &location);
  v17 = [v14 actionWithTitle:v16 style:0 handler:v26];

  v18 = MEMORY[0x277D750F8];
  v20 = NUBundle(v19);
  v21 = [v20 localizedStringForKey:@"Open" value:&stru_286E03B58 table:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_3;
  v24[3] = &unk_2799A3FA8;
  objc_copyWeak(&v25, &location);
  v24[4] = *(a1 + 40);
  v22 = [v18 actionWithTitle:v21 style:0 handler:v24];

  [v12 addAction:v22];
  [v12 addAction:v17];
  [v12 setPreferredAction:v17];
  [v23 presentViewController:v12 animated:1 completion:0];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

void __47__NSURL_NewsUI__nu_handleExternalURLWithPrompt__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];

  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 openURL:*(a1 + 32) options:MEMORY[0x277CBEC10] completionHandler:0];
}

@end