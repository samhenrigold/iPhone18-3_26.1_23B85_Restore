@interface SUICKPCATExecutor
- (void)responseProtoFromCATModel:(id)model completion:(id)completion;
@end

@implementation SUICKPCATExecutor

- (void)responseProtoFromCATModel:(id)model completion:(id)completion
{
  v25[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v24 = @"locale";
  v6 = MEMORY[0x277CBEAF8];
  modelCopy = model;
  currentLocale = [v6 currentLocale];
  languageCode = [currentLocale languageCode];
  v25[0] = languageCode;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

  catIdentifier = [modelCopy catIdentifier];
  bundleIdentifier = [modelCopy bundleIdentifier];
  v13 = bundleIdentifier;
  v14 = @"com.apple.siri.DialogEngine";
  if (bundleIdentifier)
  {
    v14 = bundleIdentifier;
  }

  v15 = v14;

  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:v15];

  v17 = MEMORY[0x277CCAAA0];
  params = [modelCopy params];

  v23 = 0;
  v19 = [v17 JSONObjectWithData:params options:0 error:&v23];
  v20 = v23;

  if (v20)
  {
    v21 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      [SUICKPCATExecutor responseProtoFromCATModel:v21 completion:v20];
    }

    v22 = objc_alloc_init(MEMORY[0x277D05278]);
    completionCopy[2](completionCopy, v22, v20);
  }

  else
  {
    [MEMORY[0x277D05260] execute:v16 catId:catIdentifier parameters:v19 globals:v10 callback:0 options:*MEMORY[0x277D05258] completion:completionCopy];
  }
}

- (void)responseProtoFromCATModel:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_264EDF000, v3, OS_LOG_TYPE_ERROR, "Error decoding CAT Params: %@", &v5, 0xCu);
}

@end