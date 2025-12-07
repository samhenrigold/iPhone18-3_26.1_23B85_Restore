@interface AirPodsCrashReportObjc
+ (id)generateReportWithBinary:(id)binary testMode:(BOOL)mode productId:(unsigned int)id applicationInfo:(id)info description:(id)description;
- (AirPodsCrashReportObjc)init;
@end

@implementation AirPodsCrashReportObjc

+ (id)generateReportWithBinary:(id)binary testMode:(BOOL)mode productId:(unsigned int)id applicationInfo:(id)info description:(id)description
{
  v11 = sub_1D9849DB4();
  if (info)
  {
    info = sub_1D9849DB4();
  }

  if (description)
  {
    v12 = sub_1D9849DF4();
    description = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = _sSo22AirPodsCrashReportObjcC15CoreDiagnosticsE08generateD010withBinary8testMode9productId15applicationInfo11description10Foundation4DataVSgSDySSALG_Sbs6UInt32VSDyS2SGSgSSSgtFZ_0(v11, mode, id, info, v12, description);
  v16 = v15;

  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v18 = sub_1D98499F4();
    sub_1D98279AC(v14, v16);
    v17 = v18;
  }

  return v17;
}

- (AirPodsCrashReportObjc)init
{
  v3.receiver = self;
  v3.super_class = AirPodsCrashReportObjc;
  return [(AirPodsCrashReportObjc *)&v3 init];
}

@end