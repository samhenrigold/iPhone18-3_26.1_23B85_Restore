@interface SFReaderExtractor
@end

@implementation SFReaderExtractor

void __45___SFReaderExtractor__scheduleLoadingTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXReaderExtraction(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Loading page for Reader data extraction timed out", v6, 2u);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:4 userInfo:0];
    [v3 _finishWithContent:0 error:v5];
  }
}

void __58___SFReaderExtractor__scheduleReaderDataExtractionTimeout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXReaderExtraction(WeakRetained, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D4644000, v4, OS_LOG_TYPE_DEFAULT, "Exctracting Reader data timed out", v6, 2u);
    }

    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.safariservices.readerExtractorErrorDomain" code:5 userInfo:0];
    [v3 _finishWithContent:0 error:v5];
  }
}

@end