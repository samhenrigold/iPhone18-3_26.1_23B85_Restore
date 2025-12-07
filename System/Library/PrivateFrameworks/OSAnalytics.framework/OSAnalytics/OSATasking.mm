@interface OSATasking
+ (BOOL)preference:(id)preference alreadySetInInstructions:(id)instructions;
+ (BOOL)shouldApplyPreference:(id)preference forSamplingKey:(const char *)key;
+ (const)samplingKey;
+ (id)applyTasking:(id)tasking taskId:(id)id fromBlob:(id)blob;
+ (id)defaultTasking;
+ (id)getInstalledTaskIds;
+ (id)normalizeInstructions:(id)instructions forSamplingKey:(const char *)key;
+ (id)proxyTasking:(id)tasking taskId:(id)id usingConfig:(id)config fromBlob:(id)blob;
+ (id)randomizedCRKey;
+ (void)checkTaskingRelevance;
+ (void)samplingKey;
@end

@implementation OSATasking

+ (id)proxyTasking:(id)tasking taskId:(id)id usingConfig:(id)config fromBlob:(id)blob
{
  v44[2] = *MEMORY[0x1E69E9840];
  taskingCopy = tasking;
  idCopy = id;
  configCopy = config;
  blobCopy = blob;
  v13 = [blobCopy length];
  if ((v13 != 0) != [(__CFString *)idCopy isEqualToString:@"-1"])
  {
    if ([blobCopy length])
    {
      if (blobCopy)
      {
        v14 = 0;
LABEL_9:
        if ([taskingCopy isEqualToString:@"ca1"])
        {
          identifier = blobCopy;
          v33 = 0;
          goto LABEL_13;
        }

        v34 = 0;
        identifier = [MEMORY[0x1E696AE40] propertyListWithData:blobCopy options:0 format:0 error:&v34];
        v18 = v34;
        v19 = v18;
        if (v14 & 1 | (identifier != 0))
        {
          v33 = v18;
LABEL_13:
          v43[0] = @"taskingID";
          v20 = idCopy;
          if ((v14 & 1) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v19;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Tasking blob was not encodable: %@", buf, 0xCu);
        }

        v21 = +[OSASystemConfiguration sharedInstance];
        appleInternal = [v21 appleInternal];

        if (appleInternal)
        {
          v23 = MEMORY[0x1E696AEC0];
          identifier = [configCopy identifier];
          taskingCopy = [v23 stringWithFormat:@"/tmp/bad_%@_%@.blob", identifier, taskingCopy];
          [blobCopy writeToFile:taskingCopy atomically:1];
          v15 = MEMORY[0x1E695E0F8];
LABEL_27:

LABEL_30:
          goto LABEL_31;
        }

LABEL_29:
        v15 = MEMORY[0x1E695E0F8];
        goto LABEL_30;
      }
    }

    else
    {
      v16 = [(__CFString *)idCopy isEqualToString:@"-1"];
      v14 = v16;
      if (blobCopy)
      {
        goto LABEL_9;
      }

      if (v16)
      {
        identifier = 0;
        v33 = 0;
        v43[0] = @"taskingID";
        v14 = 1;
LABEL_21:
        v20 = @"-1";
LABEL_22:
        v44[0] = v20;
        v43[1] = @"proxyingDeviceTimeAtReceipt";
        v25 = MEMORY[0x1E696AD98];
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSinceReferenceDate];
        v27 = [v25 numberWithDouble:?];
        v44[1] = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
        taskingCopy = [v28 mutableCopy];

        if ((v14 & 1) == 0)
        {
          [taskingCopy setObject:identifier forKeyedSubscript:@"payload"];
        }

        logPath = [configCopy logPath];
        taskingCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tasking.%@.proxy", taskingCopy];
        v31 = [logPath stringByAppendingPathComponent:taskingCopy2];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v31;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "saving proxy tasking as %@", buf, 0xCu);
        }

        [taskingCopy writeToFile:v31 atomically:1];
        v41[0] = @"action";
        v41[1] = @"taskId";
        v42[0] = @"staged";
        v42[1] = idCopy;
        v41[2] = @"blob";
        v42[2] = v31;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

        v19 = v33;
        goto LABEL_27;
      }
    }

    v19 = 0;
    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v36 = taskingCopy;
    v37 = 2112;
    v38 = idCopy;
    v39 = 2048;
    v40 = [blobCopy length];
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "proxy %@ taskId %@ with rawblob (%lu bytes) is inconsistent", buf, 0x20u);
  }

  v15 = MEMORY[0x1E695E0F8];
LABEL_31:

  return v15;
}

+ (id)applyTasking:(id)tasking taskId:(id)id fromBlob:(id)blob
{
  v140 = *MEMORY[0x1E69E9840];
  taskingCopy = tasking;
  idCopy = id;
  blobCopy = blob;
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy_;
  v106 = __Block_byref_object_dispose_;
  v107 = MEMORY[0x1E695E0F8];
  v86 = blobCopy;
  v9 = [blobCopy length];
  v85 = idCopy;
  if ((v9 != 0) != [idCopy isEqualToString:@"-1"])
  {
    if ([v86 length])
    {
      v84 = 0;
    }

    else
    {
      v84 = [idCopy isEqualToString:@"-1"];
    }

    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v86 length];
      *buf = 138413058;
      *&buf[4] = taskingCopy;
      *&buf[12] = 2112;
      *&buf[14] = idCopy;
      *&buf[22] = 1024;
      LODWORD(v138) = v16;
      WORD2(v138) = 1024;
      *(&v138 + 6) = v84;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "applyTasking routing %@ id %@ length %d; untasked %d", buf, 0x22u);
    }

    if ([taskingCopy isEqualToString:@"da3"])
    {
      v17 = MEMORY[0x1E695E0F0];
      if (v84)
      {
        v18 = 0;
        v19 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v101 = 0;
        v19 = selectConfigFromBlob(v86, &v101);
        v29 = v101;
        v18 = v29;
        if (!v19)
        {
          if (v29)
          {
            v129 = @"error";
            localizedDescription = [v29 localizedDescription];
            v130 = localizedDescription;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
            v54 = v103[5];
            v103[5] = v53;
          }

          else
          {
            v18 = v103[5];
            v103[5] = &unk_1F241ECE8;
          }

LABEL_31:

          goto LABEL_86;
        }
      }

      v30 = +[OSATasking defaultTasking];
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v17;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[OSATasking applyTasking:taskId:fromBlob:];
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[OSATasking applyTasking:taskId:fromBlob:];
      }

      v32 = [v31 arrayByAddingObjectsFromArray:v19];
      v33 = +[OSATasking normalizeInstructions:forSamplingKey:](OSATasking, "normalizeInstructions:forSamplingKey:", v32, +[OSATasking samplingKey]);

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        +[OSATasking applyTasking:taskId:fromBlob:];
      }

      v132[0] = idCopy;
      v131[0] = @"TaskingID";
      v131[1] = @"TaskingOS";
      v34 = +[OSASystemConfiguration sharedInstance];
      buildVersion = [v34 buildVersion];
      v131[2] = @"TaskingPayload";
      v132[1] = buildVersion;
      v132[2] = v33;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v132 forKeys:v131 count:3];

      v97[0] = MEMORY[0x1E69E9820];
      v97[1] = 3221225472;
      v97[2] = __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke;
      v97[3] = &unk_1E7A27208;
      v37 = v36;
      v98 = v37;
      v100 = &v102;
      v99 = v85;
      __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke(v97);

      goto LABEL_31;
    }

    if ([taskingCopy isEqualToString:@"ca1"])
    {
      *&v109 = 0;
      *(&v109 + 1) = &v109;
      *&v110 = 0x2020000000;
      BYTE8(v110) = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&v138 = __Block_byref_object_copy_;
      *(&v138 + 1) = __Block_byref_object_dispose_;
      v139 = 0;
      v20 = +[OSASystemConfiguration sharedInstance];
      pathCATasking = [v20 pathCATasking];
      v22 = [pathCATasking stringByAppendingPathComponent:@"taskedConfig.json"];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v133 = 138543362;
        v134 = v22;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "The location of the CA taskedConfig is %{public}@", v133, 0xCu);
      }

      if (v22)
      {
        if (v84)
        {
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v24 = [defaultManager fileExistsAtPath:v22];

          if (v24)
          {
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v26 = *&buf[8];
            obj = *(*&buf[8] + 40);
            v27 = [defaultManager2 removeItemAtPath:v22 error:&obj];
            objc_storeStrong((v26 + 40), obj);
            *(*(&v109 + 1) + 24) = v27;

            v28 = v22;
            v22 = @"untasked";
          }

          else
          {
            v127[0] = @"action";
            v127[1] = @"taskId";
            v128[0] = @"n/a";
            v128[1] = v85;
            v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v128 forKeys:v127 count:2];
            v28 = v103[5];
            v103[5] = v58;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v133 = 138412290;
            v134 = v22;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "saving ca1 tasking as %@", v133, 0xCu);
          }

          v91[0] = MEMORY[0x1E69E9820];
          v91[1] = 3221225472;
          v91[2] = __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke_101;
          v91[3] = &unk_1E7A27230;
          v94 = &v109;
          v92 = v86;
          v22 = v22;
          v93 = v22;
          v95 = buf;
          __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke_101(v91);

          v28 = v92;
        }
      }

      if (*(*(&v109 + 1) + 24) == 1)
      {
        v125[0] = @"action";
        v125[1] = @"taskId";
        v126[0] = @"saved";
        v126[1] = v85;
        v125[2] = @"blob";
        v126[2] = v22;
        v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:3];
        v60 = v103[5];
        v103[5] = v59;

        v123[0] = @"TaskingID";
        v123[1] = @"savedAs";
        v124[0] = v85;
        v124[1] = v22;
        localizedDescription2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v124 forKeys:v123 count:2];
        v62 = +[OSASystemConfiguration sharedInstance];
        [v62 setPrefsKey:@"CATaskingID" value:localizedDescription2 forDomain:@"com.apple.OTACrashCopier" withSync:1];

        AnalyticsNotifyTaskingAvailable();
      }

      else
      {
        if (v103[5])
        {
          goto LABEL_65;
        }

        v121 = @"error";
        v63 = *(*&buf[8] + 40);
        if (v63)
        {
          localizedDescription2 = [*(*&buf[8] + 40) localizedDescription];
        }

        else
        {
          localizedDescription2 = @"unknown failure to apply ca1 tasking";
        }

        v122 = localizedDescription2;
        v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v78 = v103[5];
        v103[5] = v77;

        if (!v63)
        {
          goto LABEL_65;
        }
      }

LABEL_65:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v109, 8);
      goto LABEL_86;
    }

    if (![taskingCopy isEqualToString:@"awd"])
    {
      __assert_rtn("+[OSATasking applyTasking:taskId:fromBlob:]", "OSATasking.m", 410, "0 && Unsupported routing used in tasking");
    }

    if (v84)
    {
      v80 = 0;
      v82 = 0;
    }

    else
    {
      v90 = 0;
      v38 = selectConfigFromBlob(v86, &v90);
      v39 = v90;
      v82 = v38;
      if (!v38)
      {
        if (v39)
        {
          v113 = @"error";
          v81 = v39;
          localizedDescription3 = [v39 localizedDescription];
          v114 = localizedDescription3;
          v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
          v57 = v103[5];
          v103[5] = v56;

          goto LABEL_86;
        }

        v80 = v103[5];
        v103[5] = &unk_1F241ED60;
        goto LABEL_85;
      }

      v80 = v39;
    }

    v40 = +[OSASystemConfiguration sharedInstance];
    pathAWDTasking = [v40 pathAWDTasking];
    v42 = [pathAWDTasking stringByAppendingPathComponent:taskingCopy];
    v83 = [v42 stringByAppendingPathExtension:@"plist"];

    if (!v83)
    {
      goto LABEL_75;
    }

    v79 = v83;
    v43 = [MEMORY[0x1E695DEC8] arrayWithContentsOfFile:?];
    if (isConfigValid(v43))
    {
      mEMORY[0x1E69B7BD8] = [MEMORY[0x1E69B7BD8] sharedClient];
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v88 = v43;
      v44 = [v88 countByEnumeratingWithState:&v109 objects:buf count:16];
      if (v44)
      {
        v45 = *v110;
        v46 = 1;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v110 != v45)
            {
              objc_enumerationMutation(v88);
            }

            v48 = *(*(&v109 + 1) + 8 * i);
            v49 = [v48 objectForKey:@"Key"];
            v50 = [v48 objectForKey:@"User"];
            v51 = [v48 objectForKey:@"Domain"];
            if (([mEMORY[0x1E69B7BD8] deletePreference:v49 forUser:v50 inDomain:v51] & 1) == 0)
            {
              v46 = 0;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                *v133 = 138412546;
                v134 = v51;
                v135 = 2112;
                v136 = v49;
                _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Could not delete preference for domain,key: %@, %@", v133, 0x16u);
                v46 = 0;
              }
            }
          }

          v44 = [v88 countByEnumeratingWithState:&v109 objects:buf count:16];
        }

        while (v44);

        if ((v46 & 1) == 0)
        {

LABEL_75:
          v67 = &unk_1F241ED38;
          goto LABEL_83;
        }
      }

      else
      {
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      if ([defaultManager3 fileExistsAtPath:v79])
      {
        v108 = 0;
        v65 = [defaultManager3 removeItemAtPath:v79 error:&v108];
        v66 = v108;
        if ((v65 & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v133 = 138412546;
            v134 = v79;
            v135 = 2112;
            v136 = v66;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Couldn't delete file for awd task at %@: %@", v133, 0x16u);
          }

          goto LABEL_75;
        }
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
    }

    if (v84)
    {
      v119[0] = @"action";
      v119[1] = @"taskId";
      v120[0] = @"n/a";
      v120[1] = v85;
      v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
    }

    else
    {
      if (installAwdTasking(v82, v79))
      {
        v117[0] = @"action";
        v117[1] = @"taskId";
        v118[0] = @"installed";
        v118[1] = v85;
        v117[2] = @"blob";
        v118[2] = v79;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:3];
        v69 = v103[5];
        v103[5] = v68;

        v115[0] = @"TaskingID";
        v115[1] = @"TaskingOS";
        v116[0] = v85;
        v70 = +[OSASystemConfiguration sharedInstance];
        buildVersion2 = [v70 buildVersion];
        v116[1] = buildVersion2;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];

        v73 = +[OSASystemConfiguration sharedInstance];
        [v73 setPrefsKey:@"AWDTaskingID" value:v72 forDomain:@"com.apple.OTACrashCopier" withSync:1];

        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterPostNotification(DarwinNotifyCenter, @"logging tasks have changed", 0, 0, 0);
LABEL_84:

LABEL_85:
        goto LABEL_86;
      }

      v67 = &unk_1F241ED10;
    }

LABEL_83:
    v72 = v103[5];
    v103[5] = v67;
    goto LABEL_84;
  }

  v10 = v103[5];
  v103[5] = &unk_1F241ED88;

  v11 = MEMORY[0x1E69E9C10];
  v12 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v86 length];
    *buf = 138412802;
    *&buf[4] = taskingCopy;
    *&buf[12] = 2112;
    *&buf[14] = idCopy;
    *&buf[22] = 2048;
    *&v138 = v13;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%@ taskId %@ with rawblob (%lu bytes) is inconsistent", buf, 0x20u);
  }

LABEL_86:
  v75 = v103[5];
  _Block_object_dispose(&v102, 8);

  return v75;
}

void __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke(void *a1)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 setPrefsKey:@"ScheduledTasking" value:a1[4] forDomain:@"com.apple.OTACrashCopier" withSync:1];

  if (v3)
  {
    v14[0] = @"action";
    v14[1] = @"taskId";
    v4 = a1[5];
    v15[0] = @"scheduled";
    v15[1] = v4;
    v14[2] = @"blob";
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"defaults://%@/%@", @"com.apple.OTACrashCopier", @"ScheduledTasking"];
    v15[2] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "Saved da3 tasking for deferred installation";
  }

  else
  {
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = &unk_1F241ECC0;

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = MEMORY[0x1E69E9C10];
    v10 = "deferring da3 task failed";
  }

  _os_log_impl(&dword_1AE4F7000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
}

void __43__OSATasking_applyTasking_taskId_fromBlob___block_invoke_101(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 writeToFile:v3 options:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

+ (void)checkTaskingRelevance
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = +[OSASystemConfiguration sharedInstance];
  v3 = [v2 getPrefsKey:@"ScheduledTasking" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  v4 = [v3 objectForKeyedSubscript:@"TaskingOS"];
  v5 = +[OSASystemConfiguration sharedInstance];
  buildVersion = [v5 buildVersion];
  v7 = [v4 isEqualToString:buildVersion];

  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[OSASystemConfiguration sharedInstance];
      buildVersion2 = [v8 buildVersion];
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = buildVersion2;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "removing outdated da tasking (and restoring hotship) %@ -> %@", &v11, 0x16u);
    }

    v10 = [OSATasking applyTasking:@"da3" taskId:@"-1" fromBlob:0];
  }
}

+ (id)getInstalledTaskIds
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 getPrefsKey:@"ScheduledTasking" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:@"TaskingID"];
    [dictionary setObject:v5 forKeyedSubscript:@"da3"];
  }

  else
  {
    [dictionary setObject:@"-1" forKeyedSubscript:@"da3"];
  }

  v6 = +[OSASystemConfiguration sharedInstance];
  v7 = [v6 getPrefsKey:@"AWDTaskingID" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  if (v7)
  {
    v8 = [v7 objectForKeyedSubscript:@"TaskingID"];
    [dictionary setObject:v8 forKeyedSubscript:@"awd"];
  }

  else
  {
    [dictionary setObject:@"-1" forKeyedSubscript:@"awd"];
  }

  v9 = +[OSASystemConfiguration sharedInstance];
  v10 = [v9 getPrefsKey:@"CATaskingID" forDomain:@"com.apple.OTACrashCopier" withOptions:0];

  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"TaskingID"];
    [dictionary setObject:v11 forKeyedSubscript:@"ca1"];
  }

  else
  {
    [dictionary setObject:@"-1" forKeyedSubscript:@"ca1"];
  }

  return dictionary;
}

+ (BOOL)shouldApplyPreference:(id)preference forSamplingKey:(const char *)key
{
  v5 = [preference objectForKeyedSubscript:@"Sample"];
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v5 count] != 2)
  {
    goto LABEL_6;
  }

  v6 = [v5 objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = [v5 objectAtIndexedSubscript:1];
  unsignedIntegerValue2 = [v8 unsignedIntegerValue];

  if (!unsignedIntegerValue2)
  {
    goto LABEL_15;
  }

  if (unsignedIntegerValue2 == 1)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (unsignedIntegerValue >= unsignedIntegerValue2)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_7;
  }

  v12 = crc32(0, 0, 0);
  v13 = crc32(v12, key, 8u);
  v14 = 0xFFFFFFFF / unsignedIntegerValue2 * unsignedIntegerValue;
  v16 = v13 >= v14;
  v15 = v13 - v14;
  v16 = !v16 || v15 >= 0xFFFFFFFF / unsignedIntegerValue2;
  v10 = !v16;
LABEL_7:

  return v10;
}

+ (id)defaultTasking
{
  v2 = +[OSASystemConfiguration sharedInstance];
  if ([v2 appleInternal])
  {
    v3 = @"/AppleInternal/Library/OSAnalytics/defaultTasking.plist";
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v4 pathForResource:@"defaultTasking" ofType:@"plist"];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithContentsOfFile:v3];

  return v5;
}

+ (const)samplingKey
{
  v2 = +[OSASystemConfiguration sharedInstance];
  crashReporterKey = [v2 crashReporterKey];

  if ([crashReporterKey hasPrefix:@"baadbaadbaaadbaaaadbaadbaadbaaadbaaaad"])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      +[OSATasking samplingKey];
    }

    v4 = +[OSATasking randomizedCRKey];

    crashReporterKey = v4;
  }

  uTF8String = [crashReporterKey UTF8String];

  return uTF8String;
}

+ (id)normalizeInstructions:(id)instructions forSamplingKey:(const char *)key
{
  v22 = *MEMORY[0x1E69E9840];
  instructionsCopy = instructions;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [instructionsCopy reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    v11 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([OSATasking shouldApplyPreference:v13 forSamplingKey:key])
        {
          if ([OSATasking preference:v13 alreadySetInInstructions:v6])
          {
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              [(OSATasking *)v20 normalizeInstructions:v13 forSamplingKey:&v20[4]];
            }
          }

          else
          {
            [v6 insertObject:v13 atIndex:0];
          }
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          [(OSATasking *)buf normalizeInstructions:v13 forSamplingKey:&buf[4]];
        }
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (BOOL)preference:(id)preference alreadySetInInstructions:(id)instructions
{
  v28 = *MEMORY[0x1E69E9840];
  preferenceCopy = preference;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = instructions;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v20 = 0;
    v22 = *v24;
    v18 = preferenceCopy;
    do
    {
      v8 = 0;
      v19 = v7;
      do
      {
        if (*v24 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v8);
        v10 = [preferenceCopy objectForKeyedSubscript:@"User"];
        v11 = [v9 objectForKeyedSubscript:@"User"];
        if ([v10 isEqualToString:v11])
        {
          v12 = [preferenceCopy objectForKeyedSubscript:@"Domain"];
          v13 = [v9 objectForKeyedSubscript:@"Domain"];
          if ([v12 isEqualToString:v13])
          {
            v14 = [preferenceCopy objectForKeyedSubscript:@"Key"];
            v15 = [v9 objectForKeyedSubscript:@"Key"];
            v16 = [v14 isEqualToString:v15];

            preferenceCopy = v18;
            v7 = v19;
            v20 |= v16;
          }
        }

        ++v8;
      }

      while (v7 != v8);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

+ (id)randomizedCRKey
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  date = [MEMORY[0x1E695DF00] date];
  v6 = [v2 stringWithFormat:@"%@%@", uUIDString, date];

  *md = 0;
  v10 = 0;
  v11 = 0;
  CC_SHA1([v6 UTF8String], objc_msgSend(v6, "length"), md);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", md[0], md[1], md[2], md[3], md[4], md[5], md[6], md[7], v10, BYTE1(v10), BYTE2(v10), BYTE3(v10), BYTE4(v10), BYTE5(v10), BYTE6(v10), HIBYTE(v10), v11, BYTE1(v11), BYTE2(v11), HIBYTE(v11)];

  return v7;
}

+ (void)samplingKey
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "samplingKey [randomizing due to failure] was %{public}@", v0, 0xCu);
}

+ (void)normalizeInstructions:(void *)a3 forSamplingKey:.cold.1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Not applying %@ as it is sampled and this device isn't IN", buf, 0xCu);
}

+ (void)normalizeInstructions:(void *)a3 forSamplingKey:.cold.2(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "Not applying %@ as it has already been set", buf, 0xCu);
}

@end