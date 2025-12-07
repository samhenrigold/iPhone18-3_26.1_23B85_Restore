@interface MSDIpInterface
+ (id)getIpv4Interfaces;
@end

@implementation MSDIpInterface

+ (id)getIpv4Interfaces
{
  v22 = 0;
  v2 = objc_opt_new();
  v3 = getifaddrs(&v22);
  if (v3)
  {
    sub_1000C4FA4(v3);
LABEL_31:
    if (v22)
    {
      freeifaddrs(v22);
    }

    v19 = 0;
    goto LABEL_21;
  }

  v4 = v22;
  if (!v22)
  {
    goto LABEL_20;
  }

  do
  {
    v5 = sub_100063A54(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sa_family = v4->ifa_addr->sa_family;
      *buf = 136315394;
      *&buf[4] = "+[MSDIpInterface getIpv4Interfaces]";
      v26 = 1024;
      LODWORD(v27) = sa_family;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s - Address family:  %d", buf, 0x12u);
    }

    ifa_addr = v4->ifa_addr;
    if (ifa_addr->sa_family == 2)
    {
      v7 = inet_ntop(2, &ifa_addr->sa_data[2], v28, 0x10u);
      if (!v7)
      {
        sub_1000C51CC(v28);
        goto LABEL_31;
      }

      v8 = [NSString stringWithUTF8String:v7];
      v9 = sub_100063A54(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "+[MSDIpInterface getIpv4Interfaces]";
        v26 = 2114;
        v27 = v8;
        _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s - Address:  %{public}@", buf, 0x16u);
      }

      if ([v8 isEqualToString:@"127.0.0.1"])
      {
        goto LABEL_16;
      }

      v10 = inet_ntop(2, &v4->ifa_netmask->sa_data[2], v28, 0x10u);
      if (v10)
      {
        v11 = [NSString stringWithUTF8String:v10];
        v12 = inet_ntop(2, &v4->ifa_dstaddr->sa_data[2], v28, 0x10u);
        if (v12)
        {
          v13 = [NSString stringWithUTF8String:v12];
          v14 = [NSString stringWithUTF8String:v4->ifa_name];
          v15 = v14;
          if (v14)
          {
            v23[0] = @"name";
            v23[1] = @"address";
            v24[0] = v14;
            v24[1] = v8;
            v23[2] = @"netMask";
            v23[3] = @"broadcastAddr";
            v24[2] = v11;
            v24[3] = v13;
            v16 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];
            v17 = sub_100063A54(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "+[MSDIpInterface getIpv4Interfaces]";
              v26 = 2114;
              v27 = v16;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "%s - interface:  %{public}@", buf, 0x16u);
            }

            [v2 addObject:v16];
LABEL_16:

            goto LABEL_17;
          }

          v21 = sub_100063A54(0);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000C5040(buf, &buf[1], v21);
          }
        }

        else
        {
          sub_1000C5080(0);
        }
      }

      else
      {
        sub_1000C511C(buf);
        v11 = *buf;
      }

      goto LABEL_31;
    }

LABEL_17:
    v4 = v4->ifa_next;
  }

  while (v4);
  if (v22)
  {
    freeifaddrs(v22);
  }

LABEL_20:
  v19 = v2;
LABEL_21:

  return v19;
}

@end