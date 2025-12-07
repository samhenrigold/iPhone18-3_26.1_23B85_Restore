@interface PHMediaFormatConversionImplementation
@end

@implementation PHMediaFormatConversionImplementation

void __112__PHMediaFormatConversionImplementation_MediaConversionService_performImageConversionRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2 == 1)
  {
    [*(a1 + 32) setDestination:*(a1 + 40)];
    v9 = *(a1 + 32);
    v10 = 4;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v8;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Image format conversion failed: %@", &v11, 0xCu);
    }

    [*(a1 + 32) setError:v8];
    v9 = *(a1 + 32);
    v10 = 5;
  }

  [v9 setStatus:v10];
  (*(*(a1 + 48) + 16))();
}

void __133__PHMediaFormatConversionImplementation_MediaConversionService_submitSinglePassVideoConversionRequest_destination_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  [*(a1 + 32) stopObserving];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      [WeakRetained setStatus:4];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video format conversion failed: %@", buf, 0xCu);
      }

      [v8 setStatus:5];
      if (a2 == 4)
      {
        v9 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA7E8];
        v13 = v6;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v11 = [v9 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:3 userInfo:v10];

        v6 = v11;
      }

      [v8 setError:v6];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __136__PHMediaFormatConversionImplementation_MediaConversionService_submitNonSinglePassVideoConversionRequest_destination_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 == 1)
    {
      [WeakRetained setDestination:*(a1 + 32)];
      [v8 setStatus:4];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v15 = v6;
        _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video format conversion failed: %@", buf, 0xCu);
      }

      [v8 setStatus:5];
      if (a2 == 4)
      {
        v9 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA7E8];
        v13 = v6;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
        v11 = [v9 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:3 userInfo:v10];

        v6 = v11;
      }

      [v8 setError:v6];
    }
  }

  (*(*(a1 + 40) + 16))();
}

@end