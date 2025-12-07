@interface ASAgentCredentialExchangeListener
@end

@implementation ASAgentCredentialExchangeListener

void __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 4);
    v5 = *&v2[6]._os_unfair_lock_opaque;
    if (!v5)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v3, v4);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      goto LABEL_10;
    }

    v6 = v5;
    v7 = [v6 importerConnection];
    if (v7)
    {
    }

    else
    {
      v16 = [v6 viewServiceConnection];

      if (!v16)
      {
        v17 = *&v2[6]._os_unfair_lock_opaque;
        *&v2[6]._os_unfair_lock_opaque = 0;

        goto LABEL_9;
      }
    }

    [v6 setExporterConnection:0];
LABEL_9:

LABEL_10:
    os_unfair_lock_unlock(v2 + 4);
  }
}

void __76___ASAgentCredentialExchangeListener__setUpImporterConnection_forOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 4);
    v2 = *&v3[6]._os_unfair_lock_opaque;
    *&v3[6]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(v3 + 4);
    WeakRetained = v3;
  }
}

void __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock(v4 + 4);
  v7 = *(*(a1 + 32) + 24);
  if (v7)
  {
    v8 = *(a1 + 40);
    if (v8 == v7)
    {
      v9 = [v8 exportedCredentialData];

      if (v9)
      {
        v12 = WBS_LOG_CHANNEL_PREFIXAuthenticationServicesAgent(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&dword_1B1C8D000, v12, OS_LOG_TYPE_DEFAULT, "Exported data was not consumed for five minutes, deleting", v23, 2u);
        }
      }

      v13 = *(a1 + 32);
      v14 = *(v13 + 24);
      *(v13 + 24) = 0;
    }
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCredentialExchange(v5, v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  os_unfair_lock_unlock(v4 + 4);
}

void __76___ASAgentCredentialExchangeListener__setUpExporterConnection_forOperation___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener _setUpExporterConnection:forOperation:]_block_invoke";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __86___ASAgentCredentialExchangeListener_continueExportWithCredentials_completionHandler___block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[_ASAgentCredentialExchangeListener continueExportWithCredentials:completionHandler:]_block_invoke";
  OUTLINED_FUNCTION_0_5(&dword_1B1C8D000, a1, a3, "Called %{public}s with no current operation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end