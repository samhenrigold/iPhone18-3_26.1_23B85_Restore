@interface WCM_AriCoexCommandHandlerV2
- (WCM_AriCoexCommandHandlerV2)init;
- (void)setCellularMiscConfigToSubId:(unsigned int)id uwbInactThre_ms:(unsigned int)thre_ms clientSRSPowerLimit:(unsigned int)limit;
- (void)setDefaultMiscConfig;
- (void)setScanFreq:(id)freq SubId:(unsigned int)id;
@end

@implementation WCM_AriCoexCommandHandlerV2

- (WCM_AriCoexCommandHandlerV2)init
{
  v4.receiver = self;
  v4.super_class = WCM_AriCoexCommandHandlerV2;
  v2 = [(WCM_AriCoexCommandHandler *)&v4 init];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Init the WCM_AriCoexCommandHandlerV2"];
  return v2;
}

- (void)setScanFreq:(id)freq SubId:(unsigned int)id
{
  v4 = *&id;
  xarray = freq;
  count = xpc_array_get_count(xarray);
  if (count >= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = count;
  }

  v19[0] = v6;
  if (count)
  {
    v7 = 0;
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v20;
    do
    {
      v10 = xpc_array_get_value(xarray, v7);
      int64 = xpc_dictionary_get_int64(v10, "kWCMCellularScanFreqBandFilter_CenterFreq");
      v12 = xpc_dictionary_get_int64(v10, "kWCMCellularScanFreqBandFilter_Bandwidth");
      uint64 = xpc_dictionary_get_uint64(v10, "kWCMCellularScanFreqBandFilter_Band");
      v14 = xpc_dictionary_get_uint64(v10, "kWCMCellularScanFreqBandFilter_Rat ");
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Scan Frequency Config--freq[%d]: band=%llu, RAT=%llu, frequency=%lldMHz, BW=%lldMHz", v4, v7, uint64, v14, int64, v12];
      *v9 = 1000 * int64;
      *(v9 + 1) = 1000 * v12;
      *(v9 - 2) = uint64;
      *(v9 - 2) = v14;
      *(v9 + 2) = 1;

      ++v7;
      v9 = (v9 + 20);
    }

    while (v8 != v7);
  }

  AriSdk::ARI_UtaIdcRTSetScanFreqReqV3_SDK::ARI_UtaIdcRTSetScanFreqReqV3_SDK(v17);
  v16 = v4;
  sub_10001B2B0(&v18, &v16);
}

- (void)setDefaultMiscConfig
{
  [(WCM_AriCoexCommandHandlerV2 *)self setCellularMiscConfigToSubId:0 uwbInactThre_ms:100 clientSRSPowerLimit:504];

  [(WCM_AriCoexCommandHandlerV2 *)self setCellularMiscConfigToSubId:1 uwbInactThre_ms:100 clientSRSPowerLimit:504];
}

- (void)setCellularMiscConfigToSubId:(unsigned int)id uwbInactThre_ms:(unsigned int)thre_ms clientSRSPowerLimit:(unsigned int)limit
{
  idCopy = id;
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Misc Config: uwbInactThre_ms = %u, clientSRSPowerLimit = 0x%X", *&id, *&thre_ms, *&limit];
  thre_msCopy = thre_ms;
  limitCopy = limit;
  AriSdk::ARI_UtaIdcConfigMiscParamReqV3_SDK::ARI_UtaIdcConfigMiscParamReqV3_SDK(v7);
  sub_10001B2B0(&v8, &idCopy);
}

@end