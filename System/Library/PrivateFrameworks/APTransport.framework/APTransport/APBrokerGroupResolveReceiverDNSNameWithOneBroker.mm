@interface APBrokerGroupResolveReceiverDNSNameWithOneBroker
@end

@implementation APBrokerGroupResolveReceiverDNSNameWithOneBroker

void ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke(void *a1, uint64_t a2, CFTypeRef cf)
{
  v6 = a1[6];
  v7 = gLogCategory_APBrokerGroup;
  if (gLogCategory_APBrokerGroup <= 50)
  {
    v8 = a1[5];
    v9 = a1[7];
    if (gLogCategory_APBrokerGroup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v7 = gLogCategory_APBrokerGroup;
    }

    if (v7 > 30)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_APBrokerGroup, "void _APBrokerGroupHandleConnectivityInfo(void *, APBrokerGroupOperationStatus *, OSStatus, void *, CFDictionaryRef)", 33554482, "[%{ptr}] [%{ptr}] Got connectivity info callback from broker [%{ptr}] with error: %#m%?{end} and response: %@\n", v8, v6, v9, a2, v10, cf);
  }

LABEL_11:
  if (a2)
  {
    ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke_cold_1(a2);
LABEL_20:
    *(v6 + 4) = a2;
    goto LABEL_15;
  }

  if (!cf)
  {
    ___APBrokerGroupResolveReceiverDNSNameWithOneBroker_block_invoke_cold_2();
    LODWORD(a2) = -6705;
    goto LABEL_20;
  }

  *v6 = 1;
  *(v6 + 4) = 0;
  v11 = *(v6 + 8);
  *(v6 + 8) = cf;
  CFRetain(cf);
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_15:
  (*(a1[4] + 16))();
  v12 = a1[4];

  _Block_release(v12);
}

@end