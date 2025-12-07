@interface ACDAutoBugCapture
+ (void)triggerAutoBugCaptureWithType:(id)type subType:(id)subType subtypeContext:(id)context detectedProcess:(id)process;
@end

@implementation ACDAutoBugCapture

+ (void)triggerAutoBugCaptureWithType:(id)type subType:(id)subType subtypeContext:(id)context detectedProcess:(id)process
{
  v24 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  processCopy = process;
  if (triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__onceToken != -1)
  {
    +[ACDAutoBugCapture triggerAutoBugCaptureWithType:subType:subtypeContext:detectedProcess:];
  }

  v13 = triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter;
  if (processCopy)
  {
    v14 = [triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter signatureWithDomain:@"Accounts" type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:processCopy triggerThresholdValues:0];
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v14 = [v13 signatureWithDomain:@"Accounts" type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:processName triggerThresholdValues:0];
  }

  v17 = [triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter snapshotWithSignature:v14 duration:0 event:0 payload:&__block_literal_global_20 reply:15.0];
  v18 = v17;
  v19 = _ACDLogSystem(v17);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v20)
    {
      v22 = 138412290;
      v23 = v14;
      v21 = "Diagnostic Reporter sent snapshot for signature %@";
LABEL_11:
      _os_log_impl(&dword_221D2F000, v19, OS_LOG_TYPE_DEFAULT, v21, &v22, 0xCu);
    }
  }

  else if (v20)
  {
    v22 = 138412290;
    v23 = v14;
    v21 = "Diagnostic Reporter failed to send snapshot for signature %@";
    goto LABEL_11;
  }
}

uint64_t __90__ACDAutoBugCapture_triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess___block_invoke()
{
  triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess__diagnosticReporter = objc_alloc_init(MEMORY[0x277D6AFC8]);

  return MEMORY[0x2821F96F8]();
}

void __90__ACDAutoBugCapture_triggerAutoBugCaptureWithType_subType_subtypeContext_detectedProcess___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ACDLogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_221D2F000, v3, OS_LOG_TYPE_DEFAULT, "Received response from Diagnostic Reporter - %@", &v4, 0xCu);
  }
}

@end