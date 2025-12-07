@interface STXPCClient
@end

@implementation STXPCClient

void __41___STXPCClient_synchronousTranslatorPeer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogSTMultiprocess(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __41___STXPCClient_synchronousTranslatorPeer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained invalidate];
  }
}

void __48___STXPCClient__setUpXPCConnectionWithDelegate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogSTMultiprocess(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "client: %{public}@ interrupted", &v5, 0xCu);
    }

    [v3 invalidate];
  }
}

void __48___STXPCClient__setUpXPCConnectionWithDelegate___block_invoke_6(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = _LTOSLogSTMultiprocess(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_26B5BC000, v4, OS_LOG_TYPE_INFO, "client: %{public}@ invalidated", &v5, 0xCu);
    }

    [v3 invalidate];
  }
}

void __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogSTMultiprocess(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __42___STXPCClient__fetchRemoteTranslatorPeer__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained invalidate];
  }
}

@end