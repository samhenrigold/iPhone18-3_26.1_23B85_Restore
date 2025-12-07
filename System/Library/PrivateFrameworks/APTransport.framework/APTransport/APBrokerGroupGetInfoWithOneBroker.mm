@interface APBrokerGroupGetInfoWithOneBroker
@end

@implementation APBrokerGroupGetInfoWithOneBroker

void ___APBrokerGroupGetInfoWithOneBroker_block_invoke(void *a1, uint64_t a2, CFTypeRef cf)
{
  v6 = a1[6];
  v7 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    v8 = a1[5];
    v9 = a1[7];
    if (gLogCategory_APBrokerGroup != -1)
    {
      goto LABEL_3;
    }

    if (_LogCategory_Initialize())
    {
      v7 = gLogCategory_APBrokerGroup;
LABEL_3:
      if (v7 > 30)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7 == -1 && _LogCategory_Initialize() == 0;
      }

      LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupHandleBrokerGetInfo(void *, APBrokerGroupOperationStatus *, OSStatus, void *, CFDictionaryRef)", 33554482, "[%{ptr}] [%{ptr}] Got GetInfo callback from broker [%{ptr}] with error: %#m%?{end} and response: %@\n", v8, v6, v9, a2, v10, cf);
      if (!a2)
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  if (!a2)
  {
LABEL_12:
    *(v6 + 4) = 0;
    *v6 = 1;
    if (cf)
    {
      v11 = CFRetain(cf);
    }

    else
    {
      v11 = 0;
    }

    *(v6 + 8) = v11;
    goto LABEL_16;
  }

LABEL_8:
  *(v6 + 4) = a2;
LABEL_16:
  (*(a1[4] + 16))();
  v12 = a1[4];

  _Block_release(v12);
}

@end