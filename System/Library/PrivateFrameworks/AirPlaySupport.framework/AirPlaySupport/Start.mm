@interface Start
@end

@implementation Start

void __dataSource_Start_block_invoke(uint64_t a1)
{
  if (gLogCategory_APSPSGDataSource <= 50 && (gLogCategory_APSPSGDataSource != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APSPSGDataSource, "OSStatus dataSource_Start(APSPSGDataSourceRef)_block_invoke", 33554482, "[%{ptr}] Pref changed\n", *(a1 + 32));
  }

  v2 = *(a1 + 32);

  dataSource_updateDevicePSGInfos(v2, 1);
}

@end