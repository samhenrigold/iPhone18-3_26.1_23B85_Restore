@interface ARRecordingTechniquePublic
@end

@implementation ARRecordingTechniquePublic

void __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_initWeak(&location, *(a1 + 32));
  if (a2 == 3)
  {
    v4 = v9;
    v5 = &v10;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v6 = __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_2;
  }

  else
  {
    v4 = v7;
    v5 = &v8;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v6 = __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_3;
  }

  v4[2] = v6;
  v4[3] = &unk_278BCD6B0;
  objc_copyWeak(v5, &location);
  v4[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v4);

  objc_destroyWeak(v5);
  objc_destroyWeak(&location);
}

void __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained copyVideoToPhotoLibrary:*(a1 + 32)];
}

void __72__ARRecordingTechniquePublic_ARKitAdditions___saveVideoInPhotosLibrary___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved video to file at %@, but not in the photo library because the permission has not been granted.", *(a1 + 32)];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [v4 setObject:v3 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v5 = ARErrorWithCodeAndUserInfo();
    [v6 _fail:v5];

    WeakRetained = v6;
  }
}

void __70__ARRecordingTechniquePublic_ARKitAdditions__copyVideoToPhotoLibrary___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    if (_ARLogTechnique_onceToken != -1)
    {
      __70__ARRecordingTechniquePublic_ARKitAdditions__copyVideoToPhotoLibrary___block_invoke_2_cold_1();
    }

    v6 = _ARLogTechnique_logObj;
    if (os_log_type_enabled(_ARLogTechnique_logObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138543874;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_23D3AE000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Saved video to file at %@ and to the photo library.", buf, 0x20u);
    }

    [*(a1 + 32) _finish:0];
  }

  else
  {
    v16[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Saved video to file at %@, but not in the photo library because of an error.", *(a1 + 40)];
    v16[1] = *MEMORY[0x277CCA7E8];
    v17[0] = v12;
    v17[1] = v5;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v14 = *(a1 + 32);
    v15 = ARErrorWithCodeAndUserInfo();
    [v14 _fail:v15];
  }
}

@end