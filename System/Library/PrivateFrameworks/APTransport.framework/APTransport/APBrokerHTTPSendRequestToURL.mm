@interface APBrokerHTTPSendRequestToURL
@end

@implementation APBrokerHTTPSendRequestToURL

void ___APBrokerHTTPSendRequestToURL_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    v6 = NSErrorToOSStatus();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = 4294960596;
    }

    if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
    {
      ___APBrokerHTTPSendRequestToURL_block_invoke_cold_1(v5, v7);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a3 statusCode];
    }

    else
    {
      v9 = 0;
    }

    if (gLogCategory_APBrokerHTTPUtils <= 30 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APBrokerHTTPUtils, "void _APBrokerHTTPHandlerDataTaskCompletion(APBrokerHTTPRequestData *, NSData * _Nullable, NSURLResponse * _Nullable, NSError * _Nullable)", 33554462, "[%{ptr}] Data task callback success. Response code: %ld\n", *v5, v9);
    }

    if (a2 && v9 == 200 && [a2 length])
    {
      if (IsAppleInternalBuild())
      {
        IntWithDefault = APSSettingsGetIntWithDefault();
      }

      else
      {
        IntWithDefault = 0x100000;
      }

      if ([a2 length] <= IntWithDefault)
      {
        [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:0 error:0];
        objc_opt_class();
        objc_opt_isKindOfClass();
      }

      else if (gLogCategory_APBrokerHTTPUtils <= 90 && (gLogCategory_APBrokerHTTPUtils != -1 || _LogCategory_Initialize()))
      {
        ___APBrokerHTTPSendRequestToURL_block_invoke_cold_2(v5, a2, IntWithDefault);
      }
    }
  }

  (*(v5[7] + 16))();

  _APBrokerHTTPReleaseRequestData(v5);
}

@end