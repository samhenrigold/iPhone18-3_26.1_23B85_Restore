@interface APTNANDataSessionGenerateDiversifiedPIN
@end

@implementation APTNANDataSessionGenerateDiversifiedPIN

intptr_t ___APTNANDataSessionGenerateDiversifiedPIN_block_invoke(void *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = -6753;
  }

  else
  {
    v5 = 0;
  }

  *(*(a1[5] + 8) + 24) = v5;
  v6 = a1[5];
  v7 = *(*(v6 + 8) + 24);
  if (v7)
  {
    v8 = 90;
  }

  else
  {
    v8 = 50;
  }

  if (v8 >= gLogCategory_APTNANDataSession)
  {
    if (gLogCategory_APTNANDataSession == -1)
    {
      v10 = _LogCategory_Initialize();
      v6 = a1[5];
      if (!v10)
      {
        goto LABEL_14;
      }

      v7 = *(*(v6 + 8) + 24);
    }

    if (v7)
    {
      v9 = 33554522;
    }

    else
    {
      v9 = 33554482;
    }

    LogPrintF(&gLogCategory_APTNANDataSession, "OSStatus _APTNANDataSessionGenerateDiversifiedPIN(APTNANDataSessionRef, CFStringRef *)_block_invoke", v9, "NANDS [%{ptr}] diversified PIN callback called%?{end} with err=%#m", a1[7], v7 == 0, v7);
    v6 = a1[5];
  }

LABEL_14:
  if (!*(*(v6 + 8) + 24))
  {
    *(*(a1[6] + 8) + 40) = a3;
  }

  v11 = a1[4];

  return dispatch_semaphore_signal(v11);
}

@end