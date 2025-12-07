@interface DKAudioOutputMonitor
@end

@implementation DKAudioOutputMonitor

uint64_t __29___DKAudioOutputMonitor_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 primaryValue];
  v7 = [v5 primaryValue];
  v8 = [v6 isEqual:v7];

  if (v8 && ([v4 metadata], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CFE180], "identifier"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, objc_msgSend(v5, "metadata"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CFE180], "identifier"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKeyedSubscript:", v13), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, LOBYTE(v12) = objc_msgSend(v11, "isEqual:", v14), v14, v11, (v12 & 1) != 0))
  {
    v15 = 0;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

void __56___DKAudioOutputMonitor_onAudioRouteChangeNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = [*(*(*(a1 + 32) + 8) + 40) portType];
  if ([v7 isEqualToString:*MEMORY[0x277CB8198]])
  {
  }

  else
  {
    v8 = [*(*(*(a1 + 32) + 8) + 40) portType];
    v9 = [v8 isEqualToString:*MEMORY[0x277CB81A0]];

    if ((v9 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

@end