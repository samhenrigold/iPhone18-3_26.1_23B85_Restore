@interface DUInformationExtractor
+ (id)sharedExtractor;
+ (id)supportedLanguages;
- (id)mockAttributes;
- (void)requestExtractionOfPersonalIDFromDocument:(id)document completion:(id)completion;
@end

@implementation DUInformationExtractor

- (void)requestExtractionOfPersonalIDFromDocument:(id)document completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  documentCopy = document;
  completionCopy = completion;
  if (+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isFoundInUseLLMEnabled])
  {
    mockAttributes = [(DUInformationExtractor *)self mockAttributes];
    if (mockAttributes)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[DUInformationExtractor] Returns DUMockPersonalIDResult from user defaults, skipping XPC call to textunderstandingd", buf, 2u);
      }

      v9 = -[DUPersonalIDResult initWithResultType:attributes:isPartialExtraction:]([DUPersonalIDResult alloc], "initWithResultType:attributes:isPartialExtraction:", [documentCopy type], mockAttributes, 0);
      completionCopy[2](completionCopy, v9, 0);
    }

    else
    {
      v12 = +[DUXPCClient sharedInstance];
      v13 = getpid();
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_249D1F0F0;
      v14[3] = &unk_278FB5158;
      v15 = completionCopy;
      [v12 requestExtractionOfPersonalIDFromDocument:documentCopy pid:v13 completion:v14];

      v9 = v15;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "[DUInformationExtractor] FoundInUseLLM disabled, skipping XPC call to textunderstandingd", buf, 2u);
    }

    v10 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Extraction feature is not enabled";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    mockAttributes = [v10 errorWithDomain:@"DUInformationExtractorErrorDomain" code:0 userInfo:v11];

    (completionCopy)[2](completionCopy, 0, mockAttributes);
  }
}

- (id)mockAttributes
{
  if (qword_280D9DE30 != -1)
  {
    dispatch_once(&qword_280D9DE30, &unk_285CF0750);
  }

  v3 = qword_27EF1AAC0;

  return v3;
}

+ (id)sharedExtractor
{
  if (qword_280D9DE28 != -1)
  {
    dispatch_once(&qword_280D9DE28, &unk_285CF0730);
  }

  v3 = qword_280D9DE20;

  return v3;
}

+ (id)supportedLanguages
{
  if (qword_280D9DE18 != -1)
  {
    dispatch_once(&qword_280D9DE18, &unk_285CF0710);
  }

  v3 = qword_280D9DE10;

  return v3;
}

@end