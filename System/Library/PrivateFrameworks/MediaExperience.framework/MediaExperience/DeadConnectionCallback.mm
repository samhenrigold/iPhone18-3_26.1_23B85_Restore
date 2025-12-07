@interface DeadConnectionCallback
@end

@implementation DeadConnectionCallback

void __remoteXPCRoutingContext_DeadConnectionCallback_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(gFigRoutingContextRemoteObject_0, *(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __routingSessionManagerRemote_DeadConnectionCallback_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = FigCFDictionaryCopyArrayOfValues();
  CFDictionaryRemoveAllValues(*(DerivedStorage + 24));
  FigSimpleMutexUnlock();
  if (v3)
  {
    if (CFArrayGetCount(v3) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
        routingSessionManagerRemote_runOneCallback(ValueAtIndex, 4294951902);
        ++v4;
      }

      while (v4 < CFArrayGetCount(v3));
    }

    CFRelease(v3);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    CFRelease(v6);
  }
}

@end