@interface APCarPlayAudioFormatsCopyFormattingDesc
@end

@implementation APCarPlayAudioFormatsCopyFormattingDesc

uint64_t ___APCarPlayAudioFormatsCopyFormattingDesc_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  CFDictionaryGetValue(*(*(a1 + 40) + 56), a2);
  CFDictionaryGetValue(*(*(a1 + 40) + 64), a2);
  AppendPrintF(*(*(a1 + 32) + 8) + 24, "\n\t%@ = <", a2);
  CFDictionaryApplyBlock();
  return AppendPrintF(*(*(a1 + 32) + 8) + 24, "\n\t>");
}

uint64_t ___APCarPlayAudioFormatsCopyFormattingDesc_block_invoke_2(uint64_t a1, const void *a2, const __CFArray *a3)
{
  AppendPrintF(*(*(a1 + 32) + 8) + 24, "\n\t\t%@ = <", a2);
  if (CFArrayGetCount(a3) < 1)
  {
    AppendPrintF(*(*(a1 + 32) + 8) + 24, "\n\t\t\t[No Formats Specified]", v14);
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 40), a2);
    BytePtr = CFDataGetBytePtr(Value);
    v8 = CFDictionaryGetValue(*(a1 + 48), a2);
    v9 = CFDataGetBytePtr(v8);
    v10 = *(*(a1 + 32) + 8);
    ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
    AppendPrintF(v10 + 24, "\n\t\t\t%@\n\t\t\tHAL Description: %{asbd}, Input Latency = %u samples, Output Latency = %u samples", ValueAtIndex, BytePtr, *(v9 + 1), *(v9 + 2));
  }

  v12 = *(*(a1 + 32) + 8) + 24;

  return AppendPrintF(v12, "\n\t\t>");
}

@end