@interface WLKAppInstallSession
@end

@implementation WLKAppInstallSession

void __53___WLKAppInstallSession_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [*(a1 + 40) installProgress];
    [v2 fractionCompleted];
    (*(v1 + 16))(v1);
  }
}

void __54___WLKAppInstallSession_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [*(a1 + 40) installProgress];
    [v2 fractionCompleted];
    (*(v1 + 16))(v1);
  }
}

void __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke(uint64_t a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *(*(a1 + 32) + 32);
  v9 = [v8 appAdamIDs];
  NSLog(&cfstr_InstallingAppF.isa, v8, v9);

  v10 = [*(*(a1 + 32) + 32) appAdamIDs];
  v11 = [v10 firstObject];

  v12 = *(a1 + 32);
  v13 = v12[5];
  if (v13)
  {
    v14 = [v13 buyParameters];
    [v12 _doPurchaseWithAppAdamID:v11 offerBuyParams:v14];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CEE570]);
    v16 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
    v17 = [v15 initWithType:0 clientIdentifier:@"com.tv.videosui" clientVersion:@"1" bag:v16];

    v22[0] = v11;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v17 setItemIdentifiers:v18];

    v19 = [v17 perform];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke_2;
    v20[3] = &unk_279E5FC58;
    v20[4] = *(a1 + 32);
    v21 = v11;
    [v19 addFinishBlock:v20];
  }
}

void __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    NSLog(&cfstr_Wlkappinstalle_3.isa, v5);
    [*(a1 + 32) _sendCompletionWithError:v6];
  }

  v7 = [WLKAMSMediaProxy alloc];
  v8 = [v17 responseDictionary];
  v9 = [(WLKAMSMediaProxy *)v7 initWithDictionary:v8];

  v10 = [(WLKAMSMediaProxy *)v9 buyParameters];
  v11 = [v10 count];

  if (v11)
  {
    NSLog(&cfstr_Wlkappinstalle_5.isa);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [(WLKAMSMediaProxy *)v9 buyParameters];
    v15 = [v14 firstObject];
    [v12 _doPurchaseWithAppAdamID:v13 offerBuyParams:v15];
  }

  else
  {
    NSLog(&cfstr_Wlkappinstalle_4.isa);
    v16 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
    [v16 _sendCompletionWithError:v14];
  }
}

void __65___WLKAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_RedownloadFail.isa, *(a1 + 32), v6);
    v8 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA7E8];
    v18[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:v9];

    [*(a1 + 40) _sendCompletionWithError:v10];
  }

  else
  {
    if (![v5 success])
    {
      NSLog(&cfstr_RedownloadCanc.isa, *(a1 + 32));
      [*(a1 + 40) _sendCompletionWithError:0];
      goto LABEL_4;
    }

    v11 = [v5 items];
    if ([v11 count])
    {
      v12 = [v5 items];
      v10 = [v12 firstObject];

      if (v10 && ([v10 success] & 1) == 0)
      {
        v13 = [v10 error];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
        }

        v16 = v15;

        NSLog(&cfstr_RedownloadFail.isa, *(a1 + 32), v16);
        [*(a1 + 40) _sendCompletionWithError:v16];

        goto LABEL_3;
      }
    }

    else
    {

      v10 = 0;
    }

    NSLog(&cfstr_RedownloadComp.isa, *(a1 + 32));
  }

LABEL_3:

LABEL_4:
}

void __50___WLKAppInstallSession__sendCompletionWithError___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2743D2DF0](*(*(a1 + 32) + 8));
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50___WLKAppInstallSession__sendCompletionWithError___block_invoke_2;
    v8[3] = &unk_279E5F6A8;
    v10 = v2;
    v9 = *(a1 + 40);
    dispatch_async(v3, v8);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

@end