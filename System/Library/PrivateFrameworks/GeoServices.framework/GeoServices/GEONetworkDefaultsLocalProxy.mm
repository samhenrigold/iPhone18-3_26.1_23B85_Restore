@interface GEONetworkDefaultsLocalProxy
@end

@implementation GEONetworkDefaultsLocalProxy

uint64_t __55___GEONetworkDefaultsLocalProxy__updateNetworkDefaults__block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if (*(*(result + 32) + 52) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    *(v1 + 24) = 0;
    *(*(result + 32) + 52) = 1;
  }

  return result;
}

void __55___GEONetworkDefaultsLocalProxy__updateNetworkDefaults__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(*(*(a1 + 64) + 8) + 40) _incompleteTaskMetrics];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  v13 = v9;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = GEOGetNetworkDefaultsLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = objc_opt_class();
        _os_log_impl(&dword_18660C000, v14, OS_LOG_TYPE_ERROR, "Invalid response class: %{public}@", buf, 0xCu);
      }

      if (!v13)
      {
        v15 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-11];
        v7 = 0;
        goto LABEL_8;
      }

      v7 = 0;
    }
  }

  v15 = v13;
LABEL_8:
  [*(a1 + 32) requestCompleted:v15];
  [*(a1 + 40) _processNetworkDefaultsResponse:v8 data:v7 error:v13 request:*(a1 + 48)];
  v16 = [v10 _geo_clientMetrics];
  v17 = GEOApplicationIdentifierOrProcessName();
  [GEONetworkEventDataRecorder recordNetworkEventDataForDataRequestKind:6 usedBackgroundURL:MEMORY[0x1E695E110] requestAppIdentifier:v17 appMajorVersion:0 appMinorVersion:0 error:v13 clientMetrics:v16 additionalStates:0];

  [*(a1 + 56) invalidateAndCancel];
}

@end