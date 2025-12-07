@interface STYAbcHelper
- (void)shareSeedDiagnosticsWithABC:(id)c tailspinFilenamePrefix:(id)prefix;
@end

@implementation STYAbcHelper

- (void)shareSeedDiagnosticsWithABC:(id)c tailspinFilenamePrefix:(id)prefix
{
  cCopy = c;
  prefixCopy = prefix;
  v7 = +[STYFrameworkHelper sharedHelper];
  sharedSerialQueueAtUtility = [v7 sharedSerialQueueAtUtility];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__STYAbcHelper_shareSeedDiagnosticsWithABC_tailspinFilenamePrefix___block_invoke;
  v11[3] = &unk_279B9B4C0;
  v12 = cCopy;
  v13 = prefixCopy;
  v9 = prefixCopy;
  v10 = cCopy;
  dispatch_async(sharedSerialQueueAtUtility, v11);
}

void __67__STYAbcHelper_shareSeedDiagnosticsWithABC_tailspinFilenamePrefix___block_invoke(uint64_t a1)
{
  v22[7] = *MEMORY[0x277D85DE8];
  v21[0] = *MEMORY[0x277D82D38];
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 32) scenario];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "appProcessID")}];
  v5 = *MEMORY[0x277D82D00];
  v6 = MEMORY[0x277CBEC38];
  v22[0] = v4;
  v22[1] = MEMORY[0x277CBEC38];
  v7 = *MEMORY[0x277D82CF0];
  v21[1] = v5;
  v21[2] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "scenarioStartTime")}];
  v22[2] = v8;
  v21[3] = *MEMORY[0x277D82CD8];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 32), "scenarioEndTime")}];
  v10 = *MEMORY[0x277D82CC8];
  v22[3] = v9;
  v22[4] = v6;
  v11 = *MEMORY[0x277D82D08];
  v21[4] = v10;
  v21[5] = v11;
  v21[6] = *MEMORY[0x277D82D18];
  v22[5] = *(a1 + 40);
  v22[6] = v6;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];

  v13 = [*(a1 + 32) symptomsSignatureForReport];
  v14 = *MEMORY[0x277D6B130];
  v18 = v12;
  v19 = v14;
  v17 = @"com.apple.DiagnosticExtensions.tailspin";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20 = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  _reportToAbc(v13, v16);
}

@end