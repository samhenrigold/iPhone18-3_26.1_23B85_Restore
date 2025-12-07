BOOL start()
{
  v0 = objc_autoreleasePoolPush();
  if (dword_100008010 <= 50 && (dword_100008010 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_100008010, "int main(int, const char **)", 33554482, "airplayd starting");
  }

  bzero(v5, 0x400uLL);
  _set_user_dir_suffix();
  if (confstr(65537, v5, 0x400uLL))
  {
    if (dword_100008010 <= 50 && (dword_100008010 != -1 || _LogCategory_Initialize()))
    {
      getprogname();
      LogPrintF(&dword_100008010, "void setupTempDirectory(const char *)", 33554482, "%s: will use temp directory '%s'");
    }
  }

  else if (dword_100008010 <= 90 && (dword_100008010 != -1 || _LogCategory_Initialize()))
  {
    getprogname();
    v1 = __error();
    strerror(*v1);
    LogPrintF(&dword_100008010, "void setupTempDirectory(const char *)", 33554522, "%s: failed to initialize temp directory: %s");
  }

  FigCommonMediaProcessInitialization();
  FigServer_SetAllowProcName();
  LogSetAppID();
  if (IsAppleInternalBuild())
  {
    LogControl();
  }

  else
  {
    LogControl();
    v2 = dlsym(0xFFFFFFFFFFFFFFFFLL, "MediaControlSenderLogControl");
    if (v2)
    {
      v2("?.*:output2=");
    }
  }

  LogControl();
  v3 = AirPlayXPCServicesStart();
  if (v3)
  {
    APSLogErrorAt();
    APSLogErrorAt();
    if (dword_100008010 <= 90 && (dword_100008010 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100008010, "int main(int, const char **)", 33554522, "Error encountered on launch: %d", v3);
    }
  }

  else
  {
    [+[NSRunLoop currentRunLoop](NSRunLoop run];
  }

  objc_autoreleasePoolPop(v0);
  return v3 != 0;
}