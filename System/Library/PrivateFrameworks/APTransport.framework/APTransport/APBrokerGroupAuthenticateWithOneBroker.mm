@interface APBrokerGroupAuthenticateWithOneBroker
@end

@implementation APBrokerGroupAuthenticateWithOneBroker

void ___APBrokerGroupAuthenticateWithOneBroker_block_invoke(void *a1, uint64_t a2, CFTypeRef cf)
{
  v6 = a1[6];
  v7 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    v8 = a1[5];
    v9 = a1[7];
    if (gLogCategory_APBrokerGroup != -1)
    {
LABEL_3:
      if (v7 > 30)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7 == -1 && _LogCategory_Initialize() == 0;
      }

      LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupHandleBrokerAuthentication(void *, APBrokerGroupOperationStatus *, OSStatus, void *, CFDictionaryRef)", 33554482, "[%{ptr}] [%{ptr}] Got authentication callback from broker [%{ptr}] with error: %#m%?{end} and response: %@\n", v8, v6, v9, a2, v10, cf);
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      v7 = gLogCategory_APBrokerGroup;
      goto LABEL_3;
    }
  }

LABEL_11:
  if (a2 == -6754)
  {
    *(v6 + 4) = -6754;
  }

  else if (a2)
  {
    *(v6 + 4) = a2;
  }

  else
  {
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
  }

  (*(a1[4] + 16))();
  v12 = a1[4];

  _Block_release(v12);
}

@end