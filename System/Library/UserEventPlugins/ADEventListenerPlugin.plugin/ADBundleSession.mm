@interface ADBundleSession
+ (void)initialize;
- (id)copyBasicInfoSinceLastCheckAsXpcObject;
- (id)initBundle:(id)bundle;
- (void)dealloc;
- (void)updateState:(unsigned int)state at:(double)at fromPid:(int)pid;
@end

@implementation ADBundleSession

+ (void)initialize
{
  if (!qword_4EA8)
  {
    v2[0] = &off_4DE8;
    v2[1] = &off_4E00;
    v3[0] = @"unknown";
    v3[1] = @"terminated";
    v2[2] = &off_4E18;
    v2[3] = &off_4E30;
    v3[2] = @"backgroundTaskSuspended";
    v3[3] = @"backgroundRunning";
    v2[4] = &off_4E48;
    v2[5] = &off_4E60;
    v3[4] = @"foregroundRunning";
    v3[5] = @"processServer";
    v2[6] = &off_4E78;
    v3[6] = @"foregroundRunningObscured";
    qword_4EA8 = [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:7];
  }
}

- (id)initBundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = ADBundleSession;
  v4 = [(ADBundleSession *)&v9 init];
  if (v4)
  {
    v4->_bundleID = bundle;
    v4->appstate.state = 1;
    v5 = [LSApplicationProxy applicationProxyForIdentifier:bundle];
    v4->_bundleVers = [v5 bundleVersion];
    v4->_shortVers = [v5 shortVersionString];
    v4->_adamID = [v5 itemID];
    v6 = gADEventListenerLogObject;
    if (os_log_type_enabled(gADEventListenerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      bundleID = [(ADBundleSession *)v4 bundleID];
      *buf = 138412290;
      v11 = bundleID;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Tracking %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)updateState:(unsigned int)state at:(double)at fromPid:(int)pid
{
  v7 = *&state;
  state = self->appstate.state;
  if (pid && state == 1)
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    memset(buffer, 0, sizeof(buffer));
    if (!proc_pid_rusage(pid, 0, buffer))
    {
      uuid_copy(self->appstate.uuid, buffer);
    }

    size = 0;
    *v31 = 0xE00000001;
    v32 = 1;
    pidCopy = pid;
    if ((sysctl(v31, 4u, 0, &size, 0, 0) & 0x80000000) == 0)
    {
      v10 = malloc_type_malloc(size, 0xF1BE4FEEuLL);
      if (v10)
      {
        v11 = v10;
        if ((sysctl(v31, 4u, v10, &size, 0, 0) & 0x80000000) == 0)
        {
          if ((v11[8] & 4) != 0)
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          self->appstate.arch = v12;
        }

        free(v11);
      }
    }

    state = self->appstate.state;
  }

  if (state != v7)
  {
    v13 = gADEventListenerLogObject;
    if (os_log_type_enabled(gADEventListenerLogObject, OS_LOG_TYPE_DEBUG))
    {
      bundleID = [(ADBundleSession *)self bundleID];
      v22 = [qword_4EA8 objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", self->appstate.state)}];
      v23 = [qword_4EA8 objectForKeyedSubscript:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v7)}];
      LODWORD(buffer[0]) = 138413058;
      *(buffer + 4) = bundleID;
      WORD2(buffer[1]) = 1024;
      *(&buffer[1] + 6) = pid;
      WORD1(buffer[2]) = 2112;
      *(&buffer[2] + 4) = v22;
      WORD2(buffer[3]) = 2112;
      *(&buffer[3] + 6) = v23;
      _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "AppStateChange: %@ (%d) %@ => %@", buffer, 0x26u);
    }

    if (v7 == 8)
    {
      if (self->appstate.state == 1)
      {
        [@"appLaunchCount." stringByAppendingString:{-[ADBundleSession bundleID](self, "bundleID")}];
        ADClientAddValueForScalarKey();
      }

      v14 = @"appActivationCount.";
    }

    else
    {
      if (v7 != 4)
      {
        goto LABEL_25;
      }

      v15 = self->appstate.state;
      if (v15 != 1)
      {
        goto LABEL_26;
      }

      v14 = @"appLaunchBackgroundCount.";
    }

    [(__CFString *)v14 stringByAppendingString:[(ADBundleSession *)self bundleID]];
    ADClientAddValueForScalarKey();
LABEL_25:
    v15 = self->appstate.state;
LABEL_26:
    v16 = rint(at - self->appstate.abs_time);
    if (v15 == 8)
    {
      v17 = @"appActiveTime.";
    }

    else
    {
      if (v15 != 4 || !v16)
      {
LABEL_32:
        v18 = @"foreground";
        v19 = @"foreground";
        if (v7 != 8)
        {
          if (v7 != 4)
          {
            goto LABEL_37;
          }

          v19 = @"background";
        }

        v29[0] = @"bundleID";
        v30[0] = [(ADBundleSession *)self bundleID];
        v30[1] = v19;
        v29[1] = @"position";
        v29[2] = @"count";
        v30[2] = &off_4E00;
        [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
        AnalyticsSendEvent();
        v20 = self->appstate.state;
        if (v20 != 1)
        {
LABEL_38:
          if (v20 == 8 || v20 == 4)
          {
            if (v20 != 8)
            {
              v18 = @"background";
            }

            v25[0] = @"bundleID";
            v26[0] = [(ADBundleSession *)self bundleID];
            v26[1] = v18;
            v25[1] = @"position";
            v25[2] = @"count";
            v26[2] = &off_4E00;
            v25[3] = @"duration";
            v26[3] = [NSNumber numberWithUnsignedInt:v16];
            [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
            AnalyticsSendEvent();
          }

          goto LABEL_43;
        }

        v27[0] = @"bundleID";
        v28[0] = [(ADBundleSession *)self bundleID];
        v28[1] = v19;
        v27[1] = @"position";
        v27[2] = @"count";
        v28[2] = &off_4E00;
        [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
        AnalyticsSendEvent();
LABEL_37:
        v20 = self->appstate.state;
        goto LABEL_38;
      }

      v17 = @"appBackgroundActiveTime.";
    }

    [(__CFString *)v17 stringByAppendingString:[(ADBundleSession *)self bundleID]];
    ADClientAddValueForScalarKey();
    goto LABEL_32;
  }

LABEL_43:
  self->appstate.state = v7;
  self->appstate.abs_time = at;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ADBundleSession;
  [(ADBundleSession *)&v3 dealloc];
}

- (id)copyBasicInfoSinceLastCheckAsXpcObject
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3)
  {
    if ([(ADBundleSession *)self shortVers])
    {
      if ([(ADBundleSession *)self bundleVers])
      {
        bundleVers = [(ADBundleSession *)self bundleVers];
      }

      else
      {
        bundleVers = @"???";
      }

      bundleVers2 = [NSString stringWithFormat:@"%@ (%@)", bundleVers, [(ADBundleSession *)self shortVers]];
    }

    else
    {
      if (![(ADBundleSession *)self bundleVers])
      {
        v6 = @"???";
        goto LABEL_10;
      }

      bundleVers2 = [(ADBundleSession *)self bundleVers];
    }

    v6 = bundleVers2;
LABEL_10:
    xpc_dictionary_set_string(v3, "bundle_id", [(NSString *)[(ADBundleSession *)self bundleID] UTF8String]);
    xpc_dictionary_set_string(v3, "version", [(__CFString *)v6 UTF8String]);
    xpc_dictionary_set_int64(v3, "adam_id", [(NSNumber *)[(ADBundleSession *)self adamID] intValue]);
    xpc_dictionary_set_uuid(v3, "uuid", self->appstate.uuid);
    xpc_dictionary_set_int64(v3, "arch", self->appstate.arch);
  }

  return v3;
}

@end