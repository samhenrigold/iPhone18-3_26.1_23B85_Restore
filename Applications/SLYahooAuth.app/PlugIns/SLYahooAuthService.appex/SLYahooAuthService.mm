void sub_100001358(id a1, BOOL a2)
{
  v2 = [NSNumber numberWithBool:a2];
  _SLLog();
}

int main(int argc, const char **argv, const char **envp)
{
  v4 = *&argc;
  v5 = NSClassFromString(@"PKService");
  if (!v5)
  {
    if (!dlopen("/System/Library/PrivateFrameworks/PlugInKit.framework/PlugInKit", 1))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100001498();
      }

      exit(1);
    }

    v5 = NSClassFromString(@"PKService");
  }

  if (!v5)
  {
    sub_10000146C();
  }

  return [(objc_class *)v5 _defaultRun:v4 arguments:argv];
}