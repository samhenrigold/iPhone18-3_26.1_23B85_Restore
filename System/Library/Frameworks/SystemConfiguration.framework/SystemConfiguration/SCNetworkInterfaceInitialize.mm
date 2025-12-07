@interface SCNetworkInterfaceInitialize
@end

@implementation SCNetworkInterfaceInitialize

void ____SCNetworkInterfaceInitialize_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_init(&lock_1, 0);
  __kSCNetworkInterfaceTypeID = _CFRuntimeRegisterClass();
  _CFRuntimeInitStaticInstance();
  qword_1ED4C3C08 = @"IPv4";
  qword_1ED4C3C28 = @"ipv4";
  _CFRuntimeInitStaticInstance();
  qword_1ED4C3A70 = @"Loopback";
  qword_1ED4C3A90 = @"loopback";
  qword_1ED4C3AD0 = CFRetain(@"lo0");
  qword_1ED4C3AE0 = @"Loopback";
  bundle = _SC_CFBundleGet();
  v0 = MEMORY[0x1B26F45E0](0, &masterPort);
  if (v0)
  {
    v1 = v0;
    v2 = __log_SCNetworkConfiguration();
    v3 = _SC_syslog_os_log_mapping(5);
    if (__SC_log_enabled(5, v2, v3))
    {
      v4 = _os_log_pack_size();
      v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = __error();
      v7 = _os_log_pack_fill(v5, v4, *v6, &dword_1AD2AD000, "could not get IOMainPort, kr = %d", v8);
      *v7 = 67109120;
      v7[1] = v1;
      __SC_log_send(5, v2, v3, v5);
    }
  }
}

@end