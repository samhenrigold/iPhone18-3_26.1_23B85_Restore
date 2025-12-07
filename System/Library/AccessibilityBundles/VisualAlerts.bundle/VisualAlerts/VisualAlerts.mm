void sub_EF0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = +[AXSubsystemVisualAlerts sharedInstance];
    v13 = [v12 ignoreLogging];

    if ((v13 & 1) == 0)
    {
      v14 = +[AXSubsystemVisualAlerts identifier];
      v15 = AXLoggerForFacility();

      v16 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = AXColorizeFormatLog();
        v18 = _AXStringForArgs();
        if (os_log_type_enabled(v15, v16))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_0, v15, v16, "%{public}@", &buf, 0xCu);
        }
      }
    }

    objc_end_catch();
    JUMPOUT(0xDE8);
  }

  _Unwind_Resume(a1);
}

void sub_12A8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = +[AXSubsystemVisualAlerts sharedInstance];
    v13 = [v12 ignoreLogging];

    if ((v13 & 1) == 0)
    {
      v14 = +[AXSubsystemVisualAlerts identifier];
      v15 = AXLoggerForFacility();

      v16 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = AXColorizeFormatLog();
        v18 = _AXStringForArgs();
        if (os_log_type_enabled(v15, v16))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_0, v15, v16, "%{public}@", &buf, 0xCu);
        }
      }
    }

    objc_end_catch();
    JUMPOUT(0x11A0);
  }

  _Unwind_Resume(a1);
}