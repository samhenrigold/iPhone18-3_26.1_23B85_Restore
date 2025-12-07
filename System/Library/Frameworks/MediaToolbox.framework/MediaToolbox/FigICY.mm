@interface FigICY
@end

@implementation FigICY

uint64_t __FigICY_ResumeHTTP_block_invoke(uint64_t a1)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    while (CFArrayGetCount(*(DerivedStorage + 360)) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 360), 0);
      v4 = ValueAtIndex;
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      DataLength = CMBlockBufferGetDataLength(v4);
      v6 = *(DerivedStorage + 360);
      *(DerivedStorage + 368) -= DataLength;
      CFArrayRemoveValueAtIndex(v6, 0);
      if (!*(DerivedStorage + 377) || CFArrayGetCount(*(DerivedStorage + 360)))
      {
        v7 = 0;
      }

      else
      {
        *(DerivedStorage + 377) = 0;
        v7 = 1;
      }

      v8 = CMBlockBufferGetDataLength(v4);
      FigICY_HTTPCommonCallback(Owner, v4, 0, v8, v7, 0);
      if (v4)
      {
        CFRelease(v4);
      }

      if (FigRetainProxyIsInvalidated() || !*(DerivedStorage + 19))
      {
        goto LABEL_16;
      }
    }

    if (!*(DerivedStorage + 320))
    {
      *(DerivedStorage + 376) = 0;
      v10 = *(DerivedStorage + 96);
      if (*(DerivedStorage + 208))
      {
        FigICY_CreateHTTPRequest(Owner, v10, 1);
      }

      else
      {
        FigICY_CreateHTTPRequest(Owner, v10, 0);
        *(DerivedStorage + 21) = 1;
      }
    }
  }

LABEL_16:
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();

  return FigRetainProxyRelease();
}

@end