@interface FigPWDKeyExchangeSenderAOCP
@end

@implementation FigPWDKeyExchangeSenderAOCP

intptr_t __FigPWDKeyExchangeSenderAOCP_getCertificate_block_invoke(void *a1, CFTypeRef cf, void *a3)
{
  if (a3)
  {
    *(*(a1[5] + 8) + 24) = [a3 code];
  }

  else
  {
    v4 = a1[6];
    v5 = *(v4 + 88);
    *(v4 + 88) = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

void __FigPWDKeyExchangeSenderAOCP_createSenderSPCAndProcessCKC_block_invoke(uint64_t a1)
{
  FigPWDKeyExchangeSenderAOCP_callCallback(*(a1 + 32), 0, *(a1 + 40), 1);
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __FigPWDKeyExchangeSenderAOCP_requestCKCFromServerAfterSendingSPC_block_invoke(uint64_t a1, __CFDictionary *a2, void *a3)
{
  if (a3)
  {
    v5 = [a3 code] == 0;
  }

  else
  {
    [sPWDKeyExchangeTelemetryHelper setTimeRange:*(a1 + 32) end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960EA8]];
    v5 = 1;
  }

  v6 = *(a1 + 40);
  value = 0;
  FigPWDKeyExchangeSenderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!v5)
  {
    v10 = 0;
    a2 = 0;
    v16 = 4294947751;
    goto LABEL_15;
  }

  v8 = DerivedStorage;
  if (!a2)
  {
    goto LABEL_27;
  }

  CFDataFromBase64EncodedString = FigJSONObjectCreateWithData();
  if (CFDataFromBase64EncodedString)
  {
LABEL_24:
    v16 = CFDataFromBase64EncodedString;
    v10 = 0;
    a2 = 0;
    goto LABEL_15;
  }

  if (!FigCFDictionaryGetValue())
  {
    goto LABEL_28;
  }

  FigCFDictionaryGetValue();
  a2 = FigCFArrayGetFirstValue();
  if (!a2)
  {
LABEL_27:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v13;
LABEL_29:
    v10 = 0;
    goto LABEL_31;
  }

  FigCFDictionaryGetIntIfPresent();
  if (!FigCFDictionaryGetValue())
  {
LABEL_28:
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v16 = v14;
    a2 = 0;
    goto LABEL_29;
  }

  CFDataFromBase64EncodedString = FigCreateCFDataFromBase64EncodedString();
  if (CFDataFromBase64EncodedString)
  {
    goto LABEL_24;
  }

  a2 = OUTLINED_FUNCTION_1_155();
  v10 = OUTLINED_FUNCTION_1_155();
  ZZUDP2EEn9tLDQ();
  if (v11 || (FigCFDictionarySetInt64(), FigCFDictionarySetInt64(), CFDictionarySetValue(a2, @"RulIk", 0), v11 = gojqbvrX305gQO(a2, v10), v11))
  {
    v16 = v11;
    OUTLINED_FUNCTION_429();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_15;
  }

  FigCFDictionaryGetInt64IfPresent();
  OUTLINED_FUNCTION_429();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  v16 = v15;
LABEL_31:
  if (!v16)
  {
    [sPWDKeyExchangeTelemetryHelper setTimeRange:*(v8 + 152) end:FigGetUpTimeNanoseconds() forKey:*MEMORY[0x1E6960EF8]];
    v16 = 0;
  }

LABEL_15:
  FigPWDKeyExchangeSenderAOCP_callCallback(v6, 0, v16, 1);
  if (value)
  {
    CFRelease(value);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
  }
}

@end