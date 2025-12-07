@interface CellularReachability
+ (unint64_t)cellularStatus;
@end

@implementation CellularReachability

+ (unint64_t)cellularStatus
{
  v2 = +[PSCellularDataSettingsDetail deviceSupportsCellularData];
  if (v2)
  {
    v3 = +[PSCellularDataSettingsDetail isEnabled];
    v4 = v3;
    v5 = MAPSGetDeviceConnectionLog(v3);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Fetching cellular data policy from CT...", buf, 2u);
      }

      if (qword_96CD0)
      {
        goto LABEL_16;
      }

      v10 = MAPSGetDeviceConnectionLog(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "Creating CT server connection for cellular data request...", buf, 2u);
      }

      qword_96CD0 = _CTServerConnectionCreateOnTargetQueue();
      if (qword_96CD0)
      {
LABEL_16:
        v11 = +[NSBundle mainBundle];
        [v11 bundleIdentifier];
        v12 = _CTServerConnectionCopyCellularUsagePolicy();

        v13 = 0;
        v14 = v12;
        v15 = v12 >> 32;
      }

      else
      {
        v16 = MAPSGetDeviceConnectionLog(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "No CT server connection; cannot fetch cellular data policy.", buf, 2u);
        }

        v14 = 0;
        v15 = 0;
      }

      v17 = MAPSGetDeviceConnectionLog(v13);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v19 = v14;
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Could not fetch a cellular data usage policy from CT (domain: %lu, error: %lu)", buf, 0x16u);
      }

      return 2;
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "Global cellular data setting is disabled", buf, 2u);
      }

      return 1;
    }
  }

  else
  {
    v8 = MAPSGetDeviceConnectionLog(v2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Device does not support cellular data", buf, 2u);
    }

    return 0;
  }
}

@end