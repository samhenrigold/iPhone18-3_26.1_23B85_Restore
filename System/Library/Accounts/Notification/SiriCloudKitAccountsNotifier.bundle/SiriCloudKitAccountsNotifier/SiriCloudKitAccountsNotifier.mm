id AFLogDirectory()
{
  v0 = MEMORY[0x29ED4BAB0]();
  v1 = [v0 stringByAppendingPathComponent:@"/Library/Logs/CrashReporter/Assistant/"];

  return v1;
}

id AFSpeechLogsDirectory()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = AFLogDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"SpeechLogs"];

  v2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v7 = 0;
  v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AFSpeechLogsDirectory";
      v10 = 2114;
      v11 = v1;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_29C916000, v5, OS_LOG_TYPE_ERROR, "%s Couldn't create speech log directory at path %{public}@ %{public}@", buf, 0x20u);
    }
  }

  return v1;
}

id AFAnalyticsLogsDirectory()
{
  v14 = *MEMORY[0x29EDCA608];
  v0 = AFLogDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Analytics"];

  v2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v7 = 0;
  v3 = [v2 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:&v7];
  v4 = v7;

  if ((v3 & 1) == 0)
  {
    v5 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v9 = "AFAnalyticsLogsDirectory";
      v10 = 2114;
      v11 = v1;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_29C916000, v5, OS_LOG_TYPE_ERROR, "%s Couldn't create analytics log directory at path %{public}@ %{public}@", buf, 0x20u);
    }
  }

  return v1;
}

void AFClearInternalLogFiles()
{
  v41 = *MEMORY[0x29EDCA608];
  if (AFIsInternalInstall())
  {
    v0 = [MEMORY[0x29EDB8DB0] date];
    v1 = [v0 dateByAddingTimeInterval:-1296000.0];

    v2 = objc_alloc_init(MEMORY[0x29EDB9FB8]);
    AFSpeechLogsDirectory();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = v29[1] = 0;
    v27 = v2;
    v3 = [v2 contentsOfDirectoryAtPath:? error:?];
    v4 = 0;
    obj = v3;
    v5 = [v3 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v5)
    {
      v7 = v5;
      v23 = 0;
      v8 = *v31;
      v24 = *MEMORY[0x29EDB9E40];
      *&v6 = 136315650;
      v20 = v6;
      v21 = v1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [v10 pathExtension];
          if (![v11 compare:@"opx" options:1] || !objc_msgSend(v11, "compare:options:", @"pcm", 1))
          {
            v12 = [v26 stringByAppendingPathComponent:v10];
            v29[0] = v4;
            v13 = [v27 attributesOfItemAtPath:v12 error:v29];
            v14 = v29[0];

            if (!v14)
            {
              v15 = [v13 objectForKey:v24];
              if ([v15 compare:v1] == -1)
              {
                v28 = 0;
                v22 = [v27 removeItemAtPath:v12 error:&v28];
                v14 = v28;
                v16 = AFSiriLogContextUtility;
                if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
                {
                  *buf = v20;
                  v17 = &stru_2A23DDB30;
                  if (!v22)
                  {
                    v17 = v14;
                  }

                  v35 = "AFClearInternalLogFiles";
                  v36 = 2112;
                  v37 = v10;
                  v38 = 2112;
                  v39 = v17;
                  _os_log_impl(&dword_29C916000, v16, OS_LOG_TYPE_INFO, "%s Removing speech log %@ %@", buf, 0x20u);
                }

                ++v23;
                v1 = v21;
              }

              else
              {
                v14 = 0;
              }
            }

            v4 = v14;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v7);
    }

    else
    {
      v23 = 0;
    }

    v19 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "AFClearInternalLogFiles";
      v36 = 2048;
      v37 = v23;
      _os_log_impl(&dword_29C916000, v19, OS_LOG_TYPE_INFO, "%s Finished, and removed %ld files", buf, 0x16u);
    }
  }

  else
  {
    v18 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v35 = "AFClearInternalLogFiles";
      _os_log_impl(&dword_29C916000, v18, OS_LOG_TYPE_INFO, "%s Nothing to do on non-internal install", buf, 0xCu);
    }
  }
}

void AFLogInitIfNeeded()
{
  if (qword_2A1797ED8 != -1)
  {
    dispatch_once(&qword_2A1797ED8, &unk_2A23DD990);
  }
}

uint64_t sub_29C917518()
{
  v0 = os_log_create("com.apple.siri", kAFLogContextConnection);
  v1 = AFSiriLogContextConnection;
  AFSiriLogContextConnection = v0;

  v2 = os_log_create("com.apple.siri", kAFLogContextClientFlow);
  v3 = AFSiriLogContextClientFlow;
  AFSiriLogContextClientFlow = v2;

  v4 = os_log_create("com.apple.siri", kAFLogContextDaemon);
  v5 = AFSiriLogContextDaemon;
  AFSiriLogContextDaemon = v4;

  v6 = os_log_create("com.apple.siri", kAFLogContextPersisted);
  v7 = AFSiriLogContextPersisted;
  AFSiriLogContextPersisted = v6;

  v8 = os_log_create("com.apple.siri", kAFLogContextSession);
  v9 = AFSiriLogContextSession;
  AFSiriLogContextSession = v8;

  v10 = os_log_create("com.apple.siri", kAFLogContextSpeech);
  v11 = AFSiriLogContextSpeech;
  AFSiriLogContextSpeech = v10;

  v12 = os_log_create("com.apple.siri", kAFLogContextFides);
  v13 = AFSiriLogContextFides;
  AFSiriLogContextFides = v12;

  v14 = os_log_create("com.apple.siri", kAFLogContextLocation);
  v15 = AFSiriLogContextLocation;
  AFSiriLogContextLocation = v14;

  v16 = os_log_create("com.apple.siri", kAFLogContextDaemonAce);
  v17 = AFSiriLogContextDaemonAce;
  AFSiriLogContextDaemonAce = v16;

  v18 = os_log_create("com.apple.siri", kAFLogContextService);
  v19 = AFSiriLogContextService;
  AFSiriLogContextService = v18;

  v20 = os_log_create("com.apple.siri", kAFLogContextPlugin);
  v21 = AFSiriLogContextPlugin;
  AFSiriLogContextPlugin = v20;

  v22 = os_log_create("com.apple.siri", kAFLogContextUtility);
  v23 = AFSiriLogContextUtility;
  AFSiriLogContextUtility = v22;

  v24 = os_log_create("com.apple.siri", kAFLogContextAnalysis);
  v25 = AFSiriLogContextAnalysis;
  AFSiriLogContextAnalysis = v24;

  v26 = os_log_create("com.apple.siri", kAFLogContextPerformance);
  v27 = AFSiriLogContextPerformance;
  AFSiriLogContextPerformance = v26;

  v28 = os_log_create("com.apple.siri", kAFLogContextIDS);
  v29 = AFSiriLogContextIDS;
  AFSiriLogContextIDS = v28;

  v30 = os_log_create("com.apple.siri", kAFLogContextProxy);
  v31 = AFSiriLogContextProxy;
  AFSiriLogContextProxy = v30;

  v32 = os_log_create("com.apple.siri", kAFLogContextDispatch);
  v33 = AFSiriLogContextDispatch;
  AFSiriLogContextDispatch = v32;

  v34 = os_log_create("com.apple.siri", kAFLogContextAnalytics);
  v35 = AFSiriLogContextAnalytics;
  AFSiriLogContextAnalytics = v34;

  v36 = os_log_create("com.apple.siri", kAFLogContextTinyCDB);
  v37 = AFSiriLogContextTinyCDB;
  AFSiriLogContextTinyCDB = v36;

  v38 = os_log_create("com.apple.siri", kAFLogContextMediaSupport);
  v39 = AFSiriLogContextMediaSupport;
  AFSiriLogContextMediaSupport = v38;

  v40 = os_log_create("com.apple.siri", kAFLogContextMockServer);
  v41 = AFSiriLogContextMockServer;
  AFSiriLogContextMockServer = v40;

  v42 = os_log_create("com.apple.siri", kAFLogContextMusicIndexer);
  v43 = AFSiriLogContextMusicIndexer;
  AFSiriLogContextMusicIndexer = v42;

  v44 = os_log_create("com.apple.siri", kAFLogContextDatabase);
  v45 = AFSiriLogContextDatabase;
  AFSiriLogContextDatabase = v44;

  v46 = os_log_create("com.apple.siri", kAFLogContextSync);
  v47 = AFSiriLogContextSync;
  AFSiriLogContextSync = v46;

  v48 = os_log_create("com.apple.siri", kAFLogContextDeviceSync);
  v49 = AFSiriLogContextDeviceSync;
  AFSiriLogContextDeviceSync = v48;

  v50 = os_log_create("com.apple.siri", kAFLogContextInternalAuth);
  v51 = AFSiriLogContextInternalAuth;
  AFSiriLogContextInternalAuth = v50;

  v52 = os_log_create("com.apple.siri", kAFLogContextMyriad);
  v53 = AFSiriLogContextMyriad;
  AFSiriLogContextMyriad = v52;

  v54 = os_log_create("com.apple.siri", kAFLogContextPower);
  v55 = AFSiriLogContextPower;
  AFSiriLogContextPower = v54;

  v56 = os_log_create("com.apple.siri", AFLogContextNetworkingFunctional);
  v57 = AFNetworkingLogContextFunctional;
  AFNetworkingLogContextFunctional = v56;

  AFNetworkingLogContextPerformance = os_log_create("com.apple.siri", AFLogContextNetworkingPerformance);

  return MEMORY[0x2A1C71028]();
}

void AFLogParsedCommandObject(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = *MEMORY[0x29EDCA608];
  v10 = a1;
  v11 = a2;
  v12 = AFLogDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"CommandLogs"];

  v14 = [MEMORY[0x29EDB9FB8] defaultManager];
  v28 = 0;
  v15 = [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v28];
  v16 = v28;

  if (v15)
  {
    v27 = 0;
    v17 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v10 format:200 options:0 error:&v27];
    v18 = v27;

    if (v17)
    {
      v26[1] = &a9;
      v19 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:v11 arguments:&a9];
      v20 = [v13 stringByAppendingPathComponent:v19];
      v21 = [v20 stringByAppendingPathExtension:@"plist"];

      v26[0] = v18;
      v22 = [v17 writeToFile:v21 options:1 error:v26];
      v16 = v26[0];

      if ((v22 & 1) == 0)
      {
        v23 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v30 = "AFLogParsedCommandObject";
          v31 = 2112;
          v32 = v21;
          v33 = 2112;
          v34 = v16;
          _os_log_impl(&dword_29C916000, v23, OS_LOG_TYPE_INFO, "%s Couldn't write to %@: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      v25 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v30 = "AFLogParsedCommandObject";
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_29C916000, v25, OS_LOG_TYPE_INFO, "%s Couldn't serialize: %@", buf, 0x16u);
      }

      v16 = v18;
    }
  }

  else
  {
    v24 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "AFLogParsedCommandObject";
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_29C916000, v24, OS_LOG_TYPE_INFO, "%s Couldn't create %@: %@", buf, 0x20u);
    }
  }
}

unint64_t AFTruncateMachTimeToTenthOfASecond(uint64_t a1)
{
  if (qword_2A1797EE8 != -1)
  {
    dispatch_once(&qword_2A1797EE8, &unk_2A23DD9B0);
  }

  return 1000000000 * dword_2A1797EE0 * a1 / *algn_2A1797EE4 / 0x3B9ACA00 * *algn_2A1797EE4 / dword_2A1797EE0;
}

void AFDispatchSyncLogged(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = a2;
  label = dispatch_queue_get_label(v9);
  v12 = AFSiriLogContextDispatch;
  if (os_log_type_enabled(AFSiriLogContextDispatch, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "AFDispatchSyncLogged";
    v22 = 2080;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    v26 = 2080;
    v27 = label;
    _os_log_impl(&dword_29C916000, v12, OS_LOG_TYPE_INFO, "%s Queue block at %s line %lu (queue: %s)", buf, 0x2Au);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C917E2C;
  block[3] = &unk_29F333368;
  v17 = a4;
  v18 = label;
  v19 = a5;
  v15 = v10;
  v16 = a3;
  v13 = v10;
  dispatch_sync(v9, block);
}

void sub_29C917E2C(void *a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = AFSiriLogContextDispatch;
  if (os_log_type_enabled(AFSiriLogContextDispatch, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = v2;
    v7 = mach_absolute_time();
    v8 = sub_29C917FDC(v7 - a1[8]);
    v17 = 136316162;
    v18 = "AFDispatchSyncLogged_block_invoke";
    v19 = 2080;
    v20 = v3;
    v21 = 2048;
    v22 = v4;
    v23 = 2080;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_29C916000, v6, OS_LOG_TYPE_INFO, "%s Enter block at %s line %lu (queue: %s, waitingTime: %llums)", &v17, 0x34u);
  }

  v9 = mach_absolute_time();
  (*(a1[4] + 16))();
  v10 = AFSiriLogContextDispatch;
  if (os_log_type_enabled(AFSiriLogContextDispatch, OS_LOG_TYPE_INFO))
  {
    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[7];
    v14 = v10;
    v15 = mach_absolute_time();
    v16 = sub_29C917FDC(v15 - v9);
    v17 = 136316162;
    v18 = "AFDispatchSyncLogged_block_invoke";
    v19 = 2080;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2080;
    v24 = v13;
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&dword_29C916000, v14, OS_LOG_TYPE_INFO, "%s Leave block at %s line %lu (queue: %s, executionTime: %llums)", &v17, 0x34u);
  }
}

unint64_t sub_29C917FDC(uint64_t a1)
{
  if (qword_2A1797EF8 != -1)
  {
    dispatch_once(&qword_2A1797EF8, &unk_2A23DD9D0);
  }

  return dword_2A1797EF0 * a1 / *algn_2A1797EF4 / 0xF4240;
}

void AFDispatchAsyncLogged(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x29EDCA608];
  v9 = a1;
  v10 = a2;
  label = dispatch_queue_get_label(v9);
  v12 = AFSiriLogContextDispatch;
  if (os_log_type_enabled(AFSiriLogContextDispatch, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "AFDispatchAsyncLogged";
    v22 = 2080;
    v23 = a3;
    v24 = 2048;
    v25 = a4;
    v26 = 2080;
    v27 = label;
    _os_log_impl(&dword_29C916000, v12, OS_LOG_TYPE_INFO, "%s Queue block at %s line %lu (queue: %s)", buf, 0x2Au);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29C9181D8;
  block[3] = &unk_29F333368;
  v17 = a4;
  v18 = label;
  v19 = a5;
  v15 = v10;
  v16 = a3;
  v13 = v10;
  dispatch_async(v9, block);
}

void sub_29C9181D8(void *a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = AFSiriLogContextDispatch;
  if (os_log_type_enabled(AFSiriLogContextDispatch, OS_LOG_TYPE_INFO))
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = v2;
    v7 = mach_absolute_time();
    v8 = sub_29C917FDC(v7 - a1[8]);
    v17 = 136316162;
    v18 = "AFDispatchAsyncLogged_block_invoke";
    v19 = 2080;
    v20 = v3;
    v21 = 2048;
    v22 = v4;
    v23 = 2080;
    v24 = v5;
    v25 = 2048;
    v26 = v8;
    _os_log_impl(&dword_29C916000, v6, OS_LOG_TYPE_INFO, "%s Enter block at %s line %lu (queue: %s, waitingTime: %llums)", &v17, 0x34u);
  }

  v9 = mach_absolute_time();
  (*(a1[4] + 16))();
  v10 = AFSiriLogContextDispatch;
  if (os_log_type_enabled(AFSiriLogContextDispatch, OS_LOG_TYPE_INFO))
  {
    v11 = a1[5];
    v12 = a1[6];
    v13 = a1[7];
    v14 = v10;
    v15 = mach_absolute_time();
    v16 = sub_29C917FDC(v15 - v9);
    v17 = 136316162;
    v18 = "AFDispatchAsyncLogged_block_invoke";
    v19 = 2080;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    v23 = 2080;
    v24 = v13;
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&dword_29C916000, v14, OS_LOG_TYPE_INFO, "%s Leave block at %s line %lu (queue: %s, executionTime: %llums)", &v17, 0x34u);
  }
}

void sub_29C9184E0(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *v8 = 136315138;
    *&v8[4] = "[SiriCloudKitAccountsNotifier account:didChangeWithType:inStore:oldAccount:]_block_invoke";
    _os_log_impl(&dword_29C916000, v2, OS_LOG_TYPE_INFO, "%s Responding to CloudKit Account Update", v8, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(a1 + 32))
  {
    if (*(a1 + 33))
    {
      return;
    }

    v4 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *v8 = 136315138;
    *&v8[4] = "[SiriCloudKitAccountsNotifier account:didChangeWithType:inStore:oldAccount:]_block_invoke";
    v5 = "%s Disabling Siri Cloud Sync.";
    goto LABEL_10;
  }

  if (!*(a1 + 33))
  {
    return;
  }

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *v8 = 136315138;
    *&v8[4] = "[SiriCloudKitAccountsNotifier account:didChangeWithType:inStore:oldAccount:]_block_invoke";
    v5 = "%s Enabling Siri Cloud Sync.";
LABEL_10:
    _os_log_impl(&dword_29C916000, v4, OS_LOG_TYPE_INFO, v5, v8, 0xCu);
  }

LABEL_11:
  v6 = v3 == 0;
  v7 = [MEMORY[0x29EDBFAA0] sharedPreferences];
  [v7 setCloudSyncEnabled:v6];
}