@interface LTClientConnection
@end

@implementation LTClientConnection

void __57___LTClientConnection_initWithConnection_server_trusted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained cleanupOnDisconnect];
    WeakRetained = v2;
  }
}

uint64_t __57___LTClientConnection_initWithConnection_server_trusted___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = _LTOSLogXPC(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __57___LTClientConnection_initWithConnection_server_trusted___block_invoke_2_cold_1();
  }

  return (*(*(a1 + 32) + 16))();
}

void __56___LTClientConnection_translate_withContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __56___LTClientConnection_translate_withContext_completion___block_invoke_2(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (!v3 && !*(*(a1[5] + 8) + 40))
  {
    v10 = _LTOSLogTranslationEngine(0, v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*(a1[6] + 8) + 40);
      v12 = 138739971;
      v13 = v11;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "_LTTranslationService completed successfully for paragraphResult %{sensitive}@", &v12, 0xCu);
    }

    v7 = a1[4];
    v8 = *(*(a1[6] + 8) + 40);
    goto LABEL_10;
  }

  v6 = _LTOSLogTranslationEngine(v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __56___LTClientConnection_translate_withContext_completion___block_invoke_2_cold_1(a1, v5, v6);
  }

  v7 = a1[4];
  v8 = *(*(a1[6] + 8) + 40);
  v9 = v5;
  if (!v5)
  {
LABEL_10:
    v9 = *(*(a1[5] + 8) + 40);
  }

  (*(v7 + 16))(v7, v8, v9);
}

void __80___LTClientConnection_startLanguageStatusChangeObservation_taskHint_completion___block_invoke_2(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = (*(a1[6] + 16))();
  v4 = _LTOSLogAssetObservation(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = v4;
    v7 = _LTTranslationTaskHintString();
    v8 = a1[5];
    v9 = 138543874;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Stopping language observations for client %{public}@; taskHint: %{public}@; identifier: %{public}@", &v9, 0x20u);
  }
}

void __56___LTClientConnection_translate_withContext_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v5 = 138740483;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "_LTTranslationService for paragraphResult %{sensitive}@; got error: %@; paragraphError: %@", &v5, 0x20u);
}

@end