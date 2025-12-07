@interface PTTraceConfig
+ (BOOL)isInRecordingWorkflow;
+ (BOOL)resetConfig;
+ (PTTraceConfig)configWithDictionary:(id)dictionary;
+ (PTTraceConfig)configWithTemplate:(unint64_t)template;
+ (PTTraceConfig)configWithTracePlanName:(id)name;
+ (PTTraceConfig)configWithTracePlanURL:(id)l;
+ (id)_defaultTraceRecordConfig;
+ (id)getCurrentConfig;
- (BOOL)storeConfig;
- (PTTraceConfig)initWithCoder:(id)coder;
- (id)_getRemoteObjectProxy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_initConnection;
- (void)_invalidateSession;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PTTraceConfig

+ (PTTraceConfig)configWithTemplate:(unint64_t)template
{
  v4 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v4 setSymbolicate:1];
  [(PTTraceConfig *)v4 setCallstackSamplingRateMS:1];
  [(PTTraceConfig *)v4 setTraceType:1];
  v5 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
  [(PTTraceConfig *)v4 setTraceDirectoryURL:v5];

  [(PTTraceConfig *)v4 setTraceName:0];
  v6 = [NSMutableArray arrayWithObjects:&off_10001A670, &off_10001A688, &off_10001A6A0, &off_10001A6B8, &off_10001A6D0, 0];
  [(PTTraceConfig *)v4 setTraceGroups:v6];

  [(PTTraceConfig *)v4 setCompressWhenFinished:1];
  [(PTTraceConfig *)v4 setIncludeOSLogs:1];
  [(PTTraceConfig *)v4 setIncludeOSSignposts:1];
  [(PTTraceConfig *)v4 setTraceTimeoutS:0];
  [(PTTraceConfig *)v4 setUseTraceRecord:0];
  [(PTTraceConfig *)v4 setTraceDurationSecs:0];
  [(PTTraceConfig *)v4 setSkipNotification:0];
  [(PTTraceConfig *)v4 setIncludeKernelStacks:1];
  [(PTTraceConfig *)v4 setEnableSwiftUITracing:0];
  [(PTTraceConfig *)v4 setTraceRecordArgs:0];
  [(PTTraceConfig *)v4 setKernelBufferSizeMB:sysconf(57) << 6];
  if ([(PTTraceConfig *)v4 kernelBufferSizeMB]<= 0x7F)
  {
    [(PTTraceConfig *)v4 setKernelBufferSizeMB:128];
  }

  if ([(PTTraceConfig *)v4 kernelBufferSizeMB]>= 0x401)
  {
    [(PTTraceConfig *)v4 setKernelBufferSizeMB:1024];
  }

  [(PTTraceConfig *)v4 setKernelBufferDrainQoS:25];
  v7 = [(PTTraceConfig *)v4 setKernelBufferDrainRateMS:500];
  if (template - 1 < 2)
  {
    [NSMutableArray arrayWithObjects:&off_10001A670, &off_10001A688, &off_10001A6A0, &off_10001A6B8, &off_10001A6D0, 0];
    v8 = LABEL_9:;
    [(PTTraceConfig *)v4 setTraceGroups:v8];
    goto LABEL_12;
  }

  if (template == 3)
  {
    [NSMutableArray arrayWithObjects:&off_10001A6E8, &off_10001A688, &off_10001A6D0, 0, v13, v14];
    goto LABEL_9;
  }

  v8 = sub_10000AF70(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10000F470();
  }

LABEL_12:

  [(PTTraceConfig *)v4 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v4 ownerPID], buffer, 0x21u);
  v9 = [NSString stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v9];

  ownerName = [(PTTraceConfig *)v4 ownerName];

  if (!ownerName)
  {
    v11 = [NSString stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v11];
  }

  [(PTTraceConfig *)v4 setSource:4];

  return v4;
}

+ (PTTraceConfig)configWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [NSException raise:NSInvalidArgumentException format:@"traceConfigurationDictionary is not a valid dictionary."];
  }

  v4 = [dictionaryCopy valueForKey:@"traceTemplate"];

  if (!v4)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v5 = [dictionaryCopy valueForKey:@"traceTemplate"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [NSException raise:NSInvalidArgumentException format:@"traceTemplate is not a string."];
  }

  v7 = [dictionaryCopy valueForKey:@"traceTemplate"];
  v8 = traceConfigTemplateForString(v7);

  if (v8)
  {
    v9 = v8;
LABEL_10:
    v10 = [PTTraceConfig configWithTemplate:v9];
    goto LABEL_12;
  }

  v11 = [dictionaryCopy valueForKey:@"traceTemplate"];
  [NSException raise:NSInvalidArgumentException format:@"%@ is not a valid trace template.", v11];

  v10 = 0;
LABEL_12:
  v12 = [dictionaryCopy valueForKey:@"callstackSamplingRateMS"];

  if (v12)
  {
    v13 = [dictionaryCopy valueForKey:@"callstackSamplingRateMS"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if ((v14 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"callstackSamplingRateMS"];
    }

    v15 = [dictionaryCopy valueForKey:@"callstackSamplingRateMS"];
    -[PTTraceConfig setCallstackSamplingRateMS:](v10, "setCallstackSamplingRateMS:", [v15 unsignedLongValue]);
  }

  v16 = [dictionaryCopy valueForKey:@"traceName"];

  if (v16)
  {
    v17 = [dictionaryCopy valueForKey:@"traceName"];
    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    if ((v18 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a string type.", @"traceName"];
    }

    v19 = [dictionaryCopy valueForKey:@"traceName"];
    v20 = [v19 copy];
    [(PTTraceConfig *)v10 setTraceName:v20];
  }

  v21 = [dictionaryCopy valueForKey:@"compressWhenFinished"];

  if (v21)
  {
    v22 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"compressWhenFinished"];
    }

    v24 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
    if ([v24 unsignedLongValue])
    {
      v25 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
      unsignedLongValue = [v25 unsignedLongValue];

      if (unsignedLongValue != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"compressWhenFinished"];
      }
    }

    else
    {
    }

    v27 = [dictionaryCopy valueForKey:@"compressWhenFinished"];
    -[PTTraceConfig setCompressWhenFinished:](v10, "setCompressWhenFinished:", [v27 BOOLValue]);
  }

  v28 = [dictionaryCopy valueForKey:@"includeOSLogs"];

  if (v28)
  {
    v29 = [dictionaryCopy valueForKey:@"includeOSLogs"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if ((v30 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSLogs"];
    }

    v31 = [dictionaryCopy valueForKey:@"includeOSLogs"];
    if ([v31 unsignedLongValue])
    {
      v32 = [dictionaryCopy valueForKey:@"includeOSLogs"];
      unsignedLongValue2 = [v32 unsignedLongValue];

      if (unsignedLongValue2 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSLogs"];
      }
    }

    else
    {
    }

    v34 = [dictionaryCopy valueForKey:@"includeOSLogs"];
    -[PTTraceConfig setIncludeOSLogs:](v10, "setIncludeOSLogs:", [v34 BOOLValue]);
  }

  v35 = [dictionaryCopy valueForKey:@"includeOSSignposts"];

  if (v35)
  {
    v36 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if ((v37 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSSignposts"];
    }

    v38 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
    if ([v38 unsignedLongValue])
    {
      v39 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
      unsignedLongValue3 = [v39 unsignedLongValue];

      if (unsignedLongValue3 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeOSSignposts"];
      }
    }

    else
    {
    }

    v41 = [dictionaryCopy valueForKey:@"includeOSSignposts"];
    -[PTTraceConfig setIncludeOSSignposts:](v10, "setIncludeOSSignposts:", [v41 BOOLValue]);
  }

  v42 = [dictionaryCopy valueForKey:@"traceTimeoutS"];

  if (v42)
  {
    v43 = [dictionaryCopy valueForKey:@"traceTimeoutS"];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if ((v44 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"traceTimeoutS"];
    }

    v45 = [dictionaryCopy valueForKey:@"traceTimeoutS"];
    -[PTTraceConfig setTraceTimeoutS:](v10, "setTraceTimeoutS:", [v45 unsignedLongValue]);
  }

  v46 = [dictionaryCopy valueForKey:@"useTraceRecord"];

  if (v46)
  {
    v47 = [dictionaryCopy valueForKey:@"useTraceRecord"];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if ((v48 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"useTraceRecord"];
    }

    v49 = [dictionaryCopy valueForKey:@"useTraceRecord"];
    if ([v49 unsignedLongValue])
    {
      v50 = [dictionaryCopy valueForKey:@"useTraceRecord"];
      unsignedLongValue4 = [v50 unsignedLongValue];

      if (unsignedLongValue4 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"useTraceRecord"];
      }
    }

    else
    {
    }

    v52 = [dictionaryCopy valueForKey:@"useTraceRecord"];
    -[PTTraceConfig setUseTraceRecord:](v10, "setUseTraceRecord:", [v52 BOOLValue]);
  }

  v53 = [dictionaryCopy valueForKey:@"traceDurationSecs"];

  if (v53)
  {
    v54 = [dictionaryCopy valueForKey:@"traceDurationSecs"];
    objc_opt_class();
    v55 = objc_opt_isKindOfClass();

    if ((v55 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"traceDurationSecs"];
    }

    v56 = [dictionaryCopy valueForKey:@"traceDurationSecs"];
    -[PTTraceConfig setTraceDurationSecs:](v10, "setTraceDurationSecs:", [v56 unsignedLongValue]);
  }

  v57 = [dictionaryCopy valueForKey:@"skipNotification"];

  if (v57)
  {
    v58 = [dictionaryCopy valueForKey:@"skipNotification"];
    objc_opt_class();
    v59 = objc_opt_isKindOfClass();

    if ((v59 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"skipNotification"];
    }

    v60 = [dictionaryCopy valueForKey:@"skipNotification"];
    if ([v60 unsignedLongValue])
    {
      v61 = [dictionaryCopy valueForKey:@"skipNotification"];
      unsignedLongValue5 = [v61 unsignedLongValue];

      if (unsignedLongValue5 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"skipNotification"];
      }
    }

    else
    {
    }

    v63 = [dictionaryCopy valueForKey:@"skipNotification"];
    -[PTTraceConfig setSkipNotification:](v10, "setSkipNotification:", [v63 BOOLValue]);
  }

  v64 = [dictionaryCopy valueForKey:@"includeKernelStacks"];

  if (v64)
  {
    v65 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
    objc_opt_class();
    v66 = objc_opt_isKindOfClass();

    if ((v66 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeKernelStacks"];
    }

    v67 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
    if ([v67 unsignedLongValue])
    {
      v68 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
      unsignedLongValue6 = [v68 unsignedLongValue];

      if (unsignedLongValue6 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"includeKernelStacks"];
      }
    }

    else
    {
    }

    v70 = [dictionaryCopy valueForKey:@"includeKernelStacks"];
    -[PTTraceConfig setIncludeKernelStacks:](v10, "setIncludeKernelStacks:", [v70 BOOLValue]);
  }

  v71 = [dictionaryCopy valueForKey:@"kernelBufferSizeMB"];

  if (v71)
  {
    v72 = [dictionaryCopy valueForKey:@"kernelBufferSizeMB"];
    objc_opt_class();
    v73 = objc_opt_isKindOfClass();

    if ((v73 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"kernelBufferSizeMB"];
    }

    v74 = [dictionaryCopy valueForKey:@"kernelBufferSizeMB"];
    -[PTTraceConfig setKernelBufferSizeMB:](v10, "setKernelBufferSizeMB:", [v74 unsignedLongValue]);
  }

  v75 = [dictionaryCopy valueForKey:@"kernelBufferDrainRateMS"];

  if (v75)
  {
    v76 = [dictionaryCopy valueForKey:@"kernelBufferDrainRateMS"];
    objc_opt_class();
    v77 = objc_opt_isKindOfClass();

    if ((v77 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned long type.", @"kernelBufferDrainRateMS"];
    }

    v78 = [dictionaryCopy valueForKey:@"kernelBufferDrainRateMS"];
    -[PTTraceConfig setKernelBufferDrainRateMS:](v10, "setKernelBufferDrainRateMS:", [v78 unsignedLongValue]);
  }

  v79 = [dictionaryCopy valueForKey:@"kernelBufferDrainQoS"];

  if (v79)
  {
    v80 = [dictionaryCopy valueForKey:@"kernelBufferDrainQoS"];
    objc_opt_class();
    v81 = objc_opt_isKindOfClass();

    if ((v81 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an unsigned integer type.", @"kernelBufferDrainQoS"];
    }

    v82 = [dictionaryCopy valueForKey:@"kernelBufferDrainQoS"];
    -[PTTraceConfig setKernelBufferDrainQoS:](v10, "setKernelBufferDrainQoS:", [v82 unsignedIntValue]);
  }

  v83 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];

  if (v83)
  {
    v84 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
    objc_opt_class();
    v85 = objc_opt_isKindOfClass();

    if ((v85 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"enableSwiftUITracing"];
    }

    v86 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
    if ([v86 unsignedLongValue])
    {
      v87 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
      unsignedLongValue7 = [v87 unsignedLongValue];

      if (unsignedLongValue7 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"enableSwiftUITracing"];
      }
    }

    else
    {
    }

    v89 = [dictionaryCopy valueForKey:@"enableSwiftUITracing"];
    -[PTTraceConfig setEnableSwiftUITracing:](v10, "setEnableSwiftUITracing:", [v89 BOOLValue]);
  }

  v90 = [dictionaryCopy valueForKey:@"traceRecordArgs"];

  if (v90)
  {
    v128 = v10;
    v91 = [dictionaryCopy valueForKey:@"traceRecordArgs"];
    objc_opt_class();
    v92 = objc_opt_isKindOfClass();

    if ((v92 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not an array type.", @"traceRecordArgs"];
    }

    [dictionaryCopy valueForKey:@"traceRecordArgs"];
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v93 = v136 = 0u;
    v94 = [v93 countByEnumeratingWithState:&v133 objects:v138 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v134;
      do
      {
        for (i = 0; i != v95; ++i)
        {
          if (*v134 != v96)
          {
            objc_enumerationMutation(v93);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [NSException raise:NSInvalidArgumentException format:@"%@ is not an array of strings.", @"traceRecordArgs"];
          }
        }

        v95 = [v93 countByEnumeratingWithState:&v133 objects:v138 count:16];
      }

      while (v95);
    }

    v10 = v128;
    [(PTTraceConfig *)v128 setTraceRecordArgs:v93];
  }

  if ([(PTTraceConfig *)v10 useTraceRecord])
  {
    [(PTTraceConfig *)v10 setSymbolicate:0];
    [(PTTraceConfig *)v10 setOverrideSymbolicate:0];
  }

  v98 = [dictionaryCopy valueForKey:@"symbolicate"];

  if (v98)
  {
    v99 = [dictionaryCopy valueForKey:@"symbolicate"];
    objc_opt_class();
    v100 = objc_opt_isKindOfClass();

    if ((v100 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"symbolicate"];
    }

    v101 = [dictionaryCopy valueForKey:@"symbolicate"];
    if ([v101 unsignedLongValue])
    {
      v102 = [dictionaryCopy valueForKey:@"symbolicate"];
      unsignedLongValue8 = [v102 unsignedLongValue];

      if (unsignedLongValue8 != 1)
      {
        [NSException raise:NSInvalidArgumentException format:@"%@ is not a BOOLean type.", @"symbolicate"];
      }
    }

    else
    {
    }

    v104 = [dictionaryCopy valueForKey:@"symbolicate"];
    -[PTTraceConfig setSymbolicate:](v10, "setSymbolicate:", [v104 BOOLValue]);
  }

  v105 = [dictionaryCopy valueForKey:@"traceDirectoryURL"];

  if (v105)
  {
    v106 = [dictionaryCopy valueForKey:@"traceDirectoryURL"];
    objc_opt_class();
    v107 = objc_opt_isKindOfClass();

    if ((v107 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"traceDirectoryURL is not a string type."];
    }

    v108 = [dictionaryCopy valueForKey:@"traceDirectoryURL"];
    v109 = [NSURL fileURLWithPath:v108];
    [(PTTraceConfig *)v10 setTraceDirectoryURL:v109];
  }

  v110 = [dictionaryCopy valueForKey:@"traceType"];

  if (v110)
  {
    v111 = [dictionaryCopy valueForKey:@"traceType"];
    objc_opt_class();
    v112 = objc_opt_isKindOfClass();

    if ((v112 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"traceType is not a string type."];
    }

    v113 = [dictionaryCopy valueForKey:@"traceType"];
    [(PTTraceConfig *)v10 setTraceType:traceTypeForString(v113)];
  }

  v114 = [dictionaryCopy valueForKey:@"traceGroups"];

  if (v114)
  {
    v115 = [dictionaryCopy valueForKey:@"traceGroups"];
    objc_opt_class();
    v116 = objc_opt_isKindOfClass();

    if ((v116 & 1) == 0)
    {
      [NSException raise:NSInvalidArgumentException format:@"traceGroups is not an NSArray type."];
    }

    v117 = [dictionaryCopy valueForKey:@"traceGroups"];
    v118 = +[NSMutableArray array];
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v119 = v117;
    v120 = [v119 countByEnumeratingWithState:&v129 objects:v137 count:16];
    if (v120)
    {
      v121 = v120;
      v122 = *v130;
      do
      {
        for (j = 0; j != v121; j = j + 1)
        {
          if (*v130 != v122)
          {
            objc_enumerationMutation(v119);
          }

          v124 = *(*(&v129 + 1) + 8 * j);
          if (v124 && traceGroupForString(*(*(&v129 + 1) + 8 * j)))
          {
            v125 = [NSNumber numberWithUnsignedInteger:traceGroupForString(v124)];
            [v118 addObject:v125];
          }
        }

        v121 = [v119 countByEnumeratingWithState:&v129 objects:v137 count:16];
      }

      while (v121);
    }

    if ([v118 count])
    {
      [(PTTraceConfig *)v10 setTraceGroups:v118];
    }
  }

  [(PTTraceConfig *)v10 setSource:4];
  v126 = v10;

  return v10;
}

+ (id)_defaultTraceRecordConfig
{
  v2 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v2 setUseTraceRecord:1];
  [(PTTraceConfig *)v2 setTraceType:1];
  v3 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/PerformanceTraces/"];
  [(PTTraceConfig *)v2 setTraceDirectoryURL:v3];

  [(PTTraceConfig *)v2 setTraceName:0];
  [(PTTraceConfig *)v2 setSkipNotification:0];
  [(PTTraceConfig *)v2 setCompressWhenFinished:1];
  [(PTTraceConfig *)v2 setKernelBufferSizeMB:0];
  [(PTTraceConfig *)v2 setOverrideIncludeOSSignposts:0];
  [(PTTraceConfig *)v2 setOverrideIncludeOSLogs:0];
  [(PTTraceConfig *)v2 setOverrideSymbolicate:0];
  [(PTTraceConfig *)v2 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v2 ownerPID], buffer, 0x21u);
  v4 = [NSString stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v2 setOwnerName:v4];

  ownerName = [(PTTraceConfig *)v2 ownerName];

  if (!ownerName)
  {
    v6 = [NSString stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v2 setOwnerName:v6];
  }

  return v2;
}

+ (PTTraceConfig)configWithTracePlanName:(id)name
{
  nameCopy = name;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  [v4 setPlanNameOrPath:nameCopy];

  return v4;
}

+ (PTTraceConfig)configWithTracePlanURL:(id)l
{
  lCopy = l;
  v4 = +[PTTraceConfig _defaultTraceRecordConfig];
  path = [lCopy path];

  [v4 setPlanNameOrPath:path];

  return v4;
}

+ (id)getCurrentConfig
{
  v3 = sub_10000AF70(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Getting Current Config", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x3032000000;
  v12 = sub_10000C758;
  v13 = sub_10000C768;
  v14 = objc_alloc_init(PTTraceConfig);
  connection = [*(v10 + 5) connection];

  if (!connection)
  {
    [*(v10 + 5) _initConnection];
  }

  _getRemoteObjectProxy = [*(v10 + 5) _getRemoteObjectProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000C770;
  v8[3] = &unk_100018D98;
  v8[4] = buf;
  v8[5] = self;
  [_getRemoteObjectProxy getCurrentStoredConfig:v8];

  [*(v10 + 5) _invalidateSession];
  v6 = *(v10 + 5);
  _Block_object_dispose(buf, 8);

  return v6;
}

+ (BOOL)resetConfig
{
  v2 = sub_10000AF70(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Resetting config", buf, 2u);
  }

  v3 = objc_alloc_init(PTTraceConfig);
  connection = [(PTTraceConfig *)v3 connection];

  if (!connection)
  {
    [(PTTraceConfig *)v3 _initConnection];
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  _getRemoteObjectProxy = [(PTTraceConfig *)v3 _getRemoteObjectProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000C98C;
  v7[3] = &unk_100018640;
  v7[4] = buf;
  [_getRemoteObjectProxy resetConfig:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(_getRemoteObjectProxy) = v9[24];
  _Block_object_dispose(buf, 8);

  return _getRemoteObjectProxy;
}

+ (BOOL)isInRecordingWorkflow
{
  v2 = sub_10000AF70(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Getting recording state config", buf, 2u);
  }

  v3 = objc_alloc_init(PTTraceConfig);
  connection = [(PTTraceConfig *)v3 connection];

  if (!connection)
  {
    [(PTTraceConfig *)v3 _initConnection];
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  _getRemoteObjectProxy = [(PTTraceConfig *)v3 _getRemoteObjectProxy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CB94;
  v7[3] = &unk_100018DC0;
  v7[4] = buf;
  [_getRemoteObjectProxy isInRecordingWorkflow:v7];

  [(PTTraceConfig *)v3 _invalidateSession];
  LOBYTE(_getRemoteObjectProxy) = v9[24];
  _Block_object_dispose(buf, 8);

  return _getRemoteObjectProxy;
}

- (BOOL)storeConfig
{
  v3 = sub_10000AF70(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Storing config", buf, 2u);
  }

  connection = [(PTTraceConfig *)self connection];

  if (!connection)
  {
    [(PTTraceConfig *)self _initConnection];
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 0;
  _getRemoteObjectProxy = [(PTTraceConfig *)self _getRemoteObjectProxy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000CDDC;
  v8[3] = &unk_100018640;
  v8[4] = buf;
  [_getRemoteObjectProxy applyConfig:self withError:v8];

  [(PTTraceConfig *)self _invalidateSession];
  v6 = v10[24];
  _Block_object_dispose(buf, 8);
  return v6;
}

- (void)_initConnection
{
  v5 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.PerformanceTrace.PerformanceTraceService"];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PTServiceInterface];
  [v5 setRemoteObjectInterface:v3];
  [v5 setInvalidationHandler:&stru_100018DE0];
  [v5 setInterruptionHandler:&stru_100018E00];
  [(PTTraceConfig *)self setConnection:v5];
  connection = [(PTTraceConfig *)self connection];
  [connection resume];
}

- (id)_getRemoteObjectProxy
{
  connection = [(PTTraceConfig *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&stru_100018E20];

  return v3;
}

- (void)_invalidateSession
{
  connection = [(PTTraceConfig *)self connection];

  if (connection)
  {
    connection2 = [(PTTraceConfig *)self connection];
    [connection2 invalidate];
  }
}

- (PTTraceConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PTTraceConfig *)self init];
  if (v5)
  {
    -[PTTraceConfig setSymbolicate:](v5, "setSymbolicate:", [coderCopy decodeBoolForKey:@"symbolicate"]);
    -[PTTraceConfig setCallstackSamplingRateMS:](v5, "setCallstackSamplingRateMS:", [coderCopy decodeIntForKey:@"callstackSamplingRateMS"]);
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"traceGroups"];
    v9 = [NSMutableArray arrayWithArray:v8];
    [(PTTraceConfig *)v5 setTraceGroups:v9];

    -[PTTraceConfig setTraceType:](v5, "setTraceType:", [coderCopy decodeIntForKey:@"traceType"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceDirectoryURL"];
    [(PTTraceConfig *)v5 setTraceDirectoryURL:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traceName"];
    [(PTTraceConfig *)v5 setTraceName:v11];

    -[PTTraceConfig setCompressWhenFinished:](v5, "setCompressWhenFinished:", [coderCopy decodeBoolForKey:@"compressWhenFinished"]);
    -[PTTraceConfig setIncludeOSLogs:](v5, "setIncludeOSLogs:", [coderCopy decodeBoolForKey:@"includeOSLogs"]);
    -[PTTraceConfig setIncludeOSSignposts:](v5, "setIncludeOSSignposts:", [coderCopy decodeBoolForKey:@"includeOSSignposts"]);
    -[PTTraceConfig setTraceTimeoutS:](v5, "setTraceTimeoutS:", [coderCopy decodeIntForKey:@"traceTimeoutS"]);
    -[PTTraceConfig setSkipNotification:](v5, "setSkipNotification:", [coderCopy decodeBoolForKey:@"skipNotification"]);
    -[PTTraceConfig setIncludeKernelStacks:](v5, "setIncludeKernelStacks:", [coderCopy decodeBoolForKey:@"includeKernelStacks"]);
    -[PTTraceConfig setKernelBufferSizeMB:](v5, "setKernelBufferSizeMB:", [coderCopy decodeIntForKey:@"kernelBufferSizeMB"]);
    -[PTTraceConfig setKernelBufferDrainQoS:](v5, "setKernelBufferDrainQoS:", [coderCopy decodeIntForKey:@"kernelBufferDrainQoS"]);
    -[PTTraceConfig setKernelBufferDrainRateMS:](v5, "setKernelBufferDrainRateMS:", [coderCopy decodeIntForKey:@"kernelBufferDrainRateMS"]);
    -[PTTraceConfig setOwnerPID:](v5, "setOwnerPID:", [coderCopy decodeIntForKey:@"ownerPID"]);
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
    [(PTTraceConfig *)v5 setOwnerName:v12];

    -[PTTraceConfig setSource:](v5, "setSource:", [coderCopy decodeIntForKey:@"source"]);
    -[PTTraceConfig setTraceDurationSecs:](v5, "setTraceDurationSecs:", [coderCopy decodeIntForKey:@"traceDurationSecs"]);
    -[PTTraceConfig setUseTraceRecord:](v5, "setUseTraceRecord:", [coderCopy decodeBoolForKey:@"useTraceRecord"]);
    -[PTTraceConfig setEnableSwiftUITracing:](v5, "setEnableSwiftUITracing:", [coderCopy decodeBoolForKey:@"enableSwiftUITracing"]);
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"traceRecordArgs"];
    v16 = [NSMutableArray arrayWithArray:v15];
    [(PTTraceConfig *)v5 setTraceRecordArgs:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"planNameOrPath"];
    [(PTTraceConfig *)v5 setPlanNameOrPath:v17];

    -[PTTraceConfig setOverrideSymbolicate:](v5, "setOverrideSymbolicate:", [coderCopy decodeBoolForKey:@"overrideSymbolicate"]);
    -[PTTraceConfig setOverrideIncludeOSSignposts:](v5, "setOverrideIncludeOSSignposts:", [coderCopy decodeBoolForKey:@"overrideIncludeOSSignposts"]);
    -[PTTraceConfig setOverrideIncludeOSLogs:](v5, "setOverrideIncludeOSLogs:", [coderCopy decodeBoolForKey:@"overrideIncludeOSLogs"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[PTTraceConfig symbolicate](self forKey:{"symbolicate"), @"symbolicate"}];
  [coderCopy encodeInt:-[PTTraceConfig callstackSamplingRateMS](self forKey:{"callstackSamplingRateMS"), @"callstackSamplingRateMS"}];
  traceGroups = [(PTTraceConfig *)self traceGroups];
  [coderCopy encodeObject:traceGroups forKey:@"traceGroups"];

  [coderCopy encodeInt:-[PTTraceConfig traceType](self forKey:{"traceType"), @"traceType"}];
  traceDirectoryURL = [(PTTraceConfig *)self traceDirectoryURL];
  [coderCopy encodeObject:traceDirectoryURL forKey:@"traceDirectoryURL"];

  traceName = [(PTTraceConfig *)self traceName];
  [coderCopy encodeObject:traceName forKey:@"traceName"];

  [coderCopy encodeBool:-[PTTraceConfig compressWhenFinished](self forKey:{"compressWhenFinished"), @"compressWhenFinished"}];
  [coderCopy encodeBool:-[PTTraceConfig includeOSLogs](self forKey:{"includeOSLogs"), @"includeOSLogs"}];
  [coderCopy encodeBool:-[PTTraceConfig includeOSSignposts](self forKey:{"includeOSSignposts"), @"includeOSSignposts"}];
  [coderCopy encodeInt:-[PTTraceConfig traceTimeoutS](self forKey:{"traceTimeoutS"), @"traceTimeoutS"}];
  [coderCopy encodeBool:-[PTTraceConfig skipNotification](self forKey:{"skipNotification"), @"skipNotification"}];
  [coderCopy encodeBool:-[PTTraceConfig includeKernelStacks](self forKey:{"includeKernelStacks"), @"includeKernelStacks"}];
  [coderCopy encodeInt:-[PTTraceConfig kernelBufferSizeMB](self forKey:{"kernelBufferSizeMB"), @"kernelBufferSizeMB"}];
  [coderCopy encodeInt:-[PTTraceConfig kernelBufferDrainQoS](self forKey:{"kernelBufferDrainQoS"), @"kernelBufferDrainQoS"}];
  [coderCopy encodeInt:-[PTTraceConfig kernelBufferDrainRateMS](self forKey:{"kernelBufferDrainRateMS"), @"kernelBufferDrainRateMS"}];
  [coderCopy encodeInt:-[PTTraceConfig ownerPID](self forKey:{"ownerPID"), @"ownerPID"}];
  ownerName = [(PTTraceConfig *)self ownerName];
  [coderCopy encodeObject:ownerName forKey:@"ownerName"];

  [coderCopy encodeInt:-[PTTraceConfig source](self forKey:{"source"), @"source"}];
  [coderCopy encodeInt:-[PTTraceConfig traceDurationSecs](self forKey:{"traceDurationSecs"), @"traceDurationSecs"}];
  [coderCopy encodeBool:-[PTTraceConfig useTraceRecord](self forKey:{"useTraceRecord"), @"useTraceRecord"}];
  [coderCopy encodeBool:-[PTTraceConfig enableSwiftUITracing](self forKey:{"enableSwiftUITracing"), @"enableSwiftUITracing"}];
  traceRecordArgs = [(PTTraceConfig *)self traceRecordArgs];
  [coderCopy encodeObject:traceRecordArgs forKey:@"traceRecordArgs"];

  planNameOrPath = [(PTTraceConfig *)self planNameOrPath];
  [coderCopy encodeObject:planNameOrPath forKey:@"planNameOrPath"];

  [coderCopy encodeBool:-[PTTraceConfig overrideSymbolicate](self forKey:{"overrideSymbolicate"), @"overrideSymbolicate"}];
  [coderCopy encodeBool:-[PTTraceConfig overrideIncludeOSSignposts](self forKey:{"overrideIncludeOSSignposts"), @"overrideIncludeOSSignposts"}];
  [coderCopy encodeBool:-[PTTraceConfig overrideIncludeOSLogs](self forKey:{"overrideIncludeOSLogs"), @"overrideIncludeOSLogs"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PTTraceConfig);
  [(PTTraceConfig *)v4 setSymbolicate:[(PTTraceConfig *)self symbolicate]];
  [(PTTraceConfig *)v4 setCallstackSamplingRateMS:[(PTTraceConfig *)self callstackSamplingRateMS]];
  traceGroups = [(PTTraceConfig *)self traceGroups];
  v6 = [traceGroups copy];
  [(PTTraceConfig *)v4 setTraceGroups:v6];

  [(PTTraceConfig *)v4 setTraceType:[(PTTraceConfig *)self traceType]];
  traceDirectoryURL = [(PTTraceConfig *)self traceDirectoryURL];
  v8 = [traceDirectoryURL copy];
  [(PTTraceConfig *)v4 setTraceDirectoryURL:v8];

  traceName = [(PTTraceConfig *)self traceName];
  v10 = [traceName copy];
  [(PTTraceConfig *)v4 setTraceName:v10];

  [(PTTraceConfig *)v4 setCompressWhenFinished:[(PTTraceConfig *)self compressWhenFinished]];
  [(PTTraceConfig *)v4 setIncludeOSLogs:[(PTTraceConfig *)self includeOSLogs]];
  [(PTTraceConfig *)v4 setIncludeOSSignposts:[(PTTraceConfig *)self includeOSSignposts]];
  [(PTTraceConfig *)v4 setTraceTimeoutS:[(PTTraceConfig *)self traceTimeoutS]];
  [(PTTraceConfig *)v4 setSkipNotification:[(PTTraceConfig *)self skipNotification]];
  [(PTTraceConfig *)v4 setIncludeKernelStacks:[(PTTraceConfig *)self includeKernelStacks]];
  [(PTTraceConfig *)v4 setKernelBufferSizeMB:[(PTTraceConfig *)self kernelBufferSizeMB]];
  [(PTTraceConfig *)v4 setKernelBufferDrainQoS:[(PTTraceConfig *)self kernelBufferDrainQoS]];
  [(PTTraceConfig *)v4 setKernelBufferDrainRateMS:[(PTTraceConfig *)self kernelBufferDrainRateMS]];
  [(PTTraceConfig *)v4 setUseTraceRecord:[(PTTraceConfig *)self useTraceRecord]];
  [(PTTraceConfig *)v4 setEnableSwiftUITracing:[(PTTraceConfig *)self enableSwiftUITracing]];
  traceRecordArgs = [(PTTraceConfig *)self traceRecordArgs];
  v12 = [traceRecordArgs copy];
  [(PTTraceConfig *)v4 setTraceRecordArgs:v12];

  [(PTTraceConfig *)v4 setOwnerPID:getpid()];
  proc_name([(PTTraceConfig *)v4 ownerPID], buffer, 0x21u);
  v13 = [NSString stringWithCString:buffer encoding:4];
  [(PTTraceConfig *)v4 setOwnerName:v13];

  ownerName = [(PTTraceConfig *)v4 ownerName];

  if (!ownerName)
  {
    v15 = [NSString stringWithCString:buffer encoding:1];
    [(PTTraceConfig *)v4 setOwnerName:v15];
  }

  [(PTTraceConfig *)v4 setSource:4];
  return v4;
}

@end