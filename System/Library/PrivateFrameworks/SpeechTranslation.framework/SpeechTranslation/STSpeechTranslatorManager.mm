@interface STSpeechTranslatorManager
@end

@implementation STSpeechTranslatorManager

uint64_t __44___STSpeechTranslatorManager_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(_STSpeechTranslatorManager);

  return MEMORY[0x2821F96F8]();
}

void __72___STSpeechTranslatorManager__remoteObjectProxyForConnection_isPrimary___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 48));
    v5 = v3;
    if (v3)
    {
      v6 = _LTOSLogSTMultiprocess(v3, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138543362;
        v8 = v5;
        _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "primary connection: %{public}@ exiting", &v7, 0xCu);
      }
    }

    [WeakRetained _cleanUpPrimaryClientPeerWithKey:*(a1 + 32)];
  }
}

uint64_t __74___STSpeechTranslatorManager__makeClientListWithConfiguration_clientPeer___block_invoke(void *a1)
{
  [*(a1[4] + 16) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = a1[5];
  v3 = *(a1[4] + 24);
  v4 = a1[7];

  return [v3 setObject:v2 forKeyedSubscript:v4];
}

uint64_t __86___STSpeechTranslatorManager__addToClientListWithIdentifier_clientPeer_xpcConnection___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x2821F96F8]();
}

void __63___STSpeechTranslatorManager__cleanUpPrimaryClientPeerWithKey___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:v5];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1[4] + 16) setObject:0 forKeyedSubscript:v5];
  [*(a1[4] + 24) setObject:0 forKeyedSubscript:a1[5]];
}

@end