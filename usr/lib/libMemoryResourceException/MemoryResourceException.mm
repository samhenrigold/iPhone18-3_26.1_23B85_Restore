@interface MemoryResourceException
+ (id)resourceExceptionFromLogFileHandle:(id)handle error:(id *)error;
+ (id)resourceExceptionFromTask:(unsigned int)task error:(id *)error;
+ (void)extractExecNameAndBundleIDMinimal:(unsigned int)minimal execNameOut:(id *)out bundleIDOut:(id *)dOut;
- (BOOL)generateMemoryGraphWithContentLevel:(unsigned int)level memgraphFailedReasonOut:(unint64_t *)out;
- (BOOL)isFirstParty;
- (id)_symbolOwners;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createLiteMetaDataDict;
- (id)createMetaDataDict;
- (id)prettyPrintBacktrace:(BOOL)backtrace;
- (id)prettyPrintBinaryImages;
- (id)prettyPrintIOAccelMemoryInfo;
- (id)prettyPrintIOSurfaceInfo;
- (int64_t)_saveLogFileWithHandle:(id)handle error:(id *)error;
- (void)_generateMemgraphWithContentLevel:(unsigned int)level timeoutSecs:(unint64_t)secs memgraphFailedReasonOut:(unint64_t *)out;
- (void)_populateAddtionalMetadataWithOptions:(unint64_t)options timeoutSecs:(unint64_t)secs;
- (void)dealloc;
- (void)populateAdditionalMetadataWithDiagnostics:(BOOL)diagnostics;
- (void)releaseAnalyzedTask;
@end

@implementation MemoryResourceException

- (void)releaseAnalyzedTask
{
  suspensionToken = self->_suspensionToken;
  if (suspensionToken)
  {
    task_resume2(suspensionToken);
    self->_suspensionToken = 0;
  }

  task = self->_task;
  if (task)
  {
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], task, 0, -1);
    self->_task = 0;
  }
}

- (id)createMetaDataDict
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v4 = [MEMORY[0x29EDBA070] numberWithInteger:self->_version];
  [v3 setObject:v4 forKeyedSubscript:qword_2A13A53C0];

  v5 = [MEMORY[0x29EDBA070] numberWithInt:self->_pid];
  [v3 setObject:v5 forKeyedSubscript:qword_2A13A53C8];

  v6 = [MEMORY[0x29EDBA070] numberWithInt:self->_ppid];
  [v3 setObject:v6 forKeyedSubscript:qword_2A13A53D0];

  v7 = qword_2A13A53E0;
  v8 = self->_execPath;
  [v3 setObject:v8 forKeyedSubscript:v7];
  [v3 setObject:self->_execName forKeyedSubscript:qword_2A13A53D8];
  [v3 setObject:self->_bundleID forKeyedSubscript:qword_2A13A53E8];
  [v3 setObject:self->_coalitionBundleID forKeyedSubscript:qword_2A13A53F0];
  v9 = [MEMORY[0x29EDBA070] numberWithLongLong:self->_upTime];
  [v3 setObject:v9 forKeyedSubscript:qword_2A13A5420];

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_dirtyFlags];
  [v3 setObject:v10 forKeyedSubscript:qword_2A13A5430];

  v11 = [MEMORY[0x29EDBA070] numberWithBool:self->_is64Bit];
  [v3 setObject:v11 forKeyedSubscript:qword_2A13A5428];

  v12 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_limitValue];
  [v3 setObject:v12 forKeyedSubscript:qword_2A13A5408];

  v13 = [MEMORY[0x29EDBA070] numberWithInteger:self->_exceptionType];
  [v3 setObject:v13 forKeyedSubscript:qword_2A13A53F8];

  [v3 setObject:self->_memgraphError forKeyedSubscript:qword_2A13A5400];
  [v3 setObject:self->_hwModel forKeyedSubscript:qword_2A13A5410];
  [v3 setObject:self->_osVersion forKeyedSubscript:qword_2A13A5418];
  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprint];
  [v3 setObject:v14 forKeyedSubscript:qword_2A13A5458];

  v15 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprintPeak];
  [v3 setObject:v15 forKeyedSubscript:qword_2A13A5460];

  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerInternal];
  [v3 setObject:v16 forKeyedSubscript:qword_2A13A5468];

  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerInternalCompressed];
  [v3 setObject:v17 forKeyedSubscript:qword_2A13A5470];

  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerAlternateAccounting];
  [v3 setObject:v18 forKeyedSubscript:qword_2A13A5478];

  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerAlternateAccountingCompressed];
  [v3 setObject:v19 forKeyedSubscript:qword_2A13A5480];

  v20 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPurgeableNonvolatile];
  [v3 setObject:v20 forKeyedSubscript:qword_2A13A5488];

  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPurgeableNonvolatileCompressed];
  [v3 setObject:v21 forKeyedSubscript:qword_2A13A5490];

  v22 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerIOKitMapped];
  [v3 setObject:v22 forKeyedSubscript:qword_2A13A54A0];

  v23 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPageTable];
  [v3 setObject:v23 forKeyedSubscript:qword_2A13A5498];

  v24 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerWiredMem];
  [v3 setObject:v24 forKeyedSubscript:qword_2A13A54A8];

  v25 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerNetworkNonvolatile];
  [v3 setObject:v25 forKeyedSubscript:qword_2A13A54B0];

  v26 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerNetworkNonvolatileCompressed];
  [v3 setObject:v26 forKeyedSubscript:qword_2A13A54B8];

  [v3 setObject:self->_footprintOutput forKeyedSubscript:qword_2A13A5450];
  [v3 setObject:self->_executionStack forKeyedSubscript:qword_2A13A5438];
  [v3 setObject:self->_osLogs forKeyedSubscript:qword_2A13A5440];
  [v3 setObject:self->_ioSurfaceInfo forKeyedSubscript:qword_2A13A54C0];
  [v3 setObject:self->_ioAccelMemoryInfo forKeyedSubscript:qword_2A13A54C8];
  [v3 setObject:self->_ioAccelMemoryInfoErrors forKeyedSubscript:qword_2A13A54D0];
  objc_storeStrong(&self->_cachedMetaDataDict, v3);

  return v3;
}

- (BOOL)generateMemoryGraphWithContentLevel:(unsigned int)level memgraphFailedReasonOut:(unint64_t *)out
{
  v5 = *&level;
  v33 = *MEMORY[0x29EDCA608];
  if (!self->_task && !self->_gcoreCapture)
  {
    return 0;
  }

  v7 = VMUGetFlagsForAllVMRegionStatistics();
  if (!self->_gcoreCapture)
  {
    0x5C000 = [objc_alloc(MEMORY[0x29EDC6DA8]) initWithTask:self->_task options:v7 | 0x5C000];
    if (!0x5C000)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  if (!self->_gcoreFilePath || ([MEMORY[0x29EDB9FB8] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", self->_gcoreFilePath), v8, (v9 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      gcoreFilePath = self->_gcoreFilePath;
      *buf = 138412546;
      *v32 = gcoreFilePath;
      *&v32[8] = 1024;
      *&v32[10] = 4;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Invalid gcore file path (%@). Aborting memgraph generation. (RME Error #%i: MREMemgraphFailedReasonFailedGCoreGeneration)", buf, 0x12u);
      if (!out)
      {
        return 0;
      }
    }

    else if (!out)
    {
      return 0;
    }

    v20 = 0;
    *out = 4;
    return v20;
  }

  v10 = objc_alloc(MEMORY[0x29EDC6DA0]);
  v11 = self->_gcoreFilePath;
  v30 = 0;
  v12 = [v10 initWithCorePath:v11 originalBinaryPaths:0 error:&v30];
  v13 = v30;
  if (v13 || !v12)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v32 = 5;
      *&v32[4] = 2112;
      *&v32[6] = v13;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error generating VMUTask from gcore. Aborting memgraph generation. (RME Error #%i: MREMemgraphFailedReasonFailedGCoreTaskMemoryScanner) Error: %@", buf, 0x12u);
      if (!out)
      {
        goto LABEL_43;
      }
    }

    else if (!out)
    {
LABEL_43:

      return 0;
    }

    *out = 5;
    goto LABEL_43;
  }

  0x5C000 = [objc_alloc(MEMORY[0x29EDC6DA8]) initWithVMUTask:v12 options:v7 | 0x5C000];

  if (!0x5C000)
  {
LABEL_9:
    if (out)
    {
      v15 = 2;
      if (self->_gcoreCapture)
      {
        v15 = 5;
      }

      *out = v15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *v32 = 2;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error generating VMUTaskMemoryScanner. Aborting memgraph generation. (%lu: MREMemgraphFailedReasonFailedCreateTaskMemoryScanner)", buf, 0xCu);
    }

    return 0;
  }

LABEL_16:
  [0x5C000 setScanningMask:VMUScanningMaskForAllReferences()];
  [0x5C000 setExactScanningEnabled:1];
  [0x5C000 setAbandonedMarkingEnabled:0];
  [0x5C000 setMaxInteriorOffset:*MEMORY[0x29EDCA6D0]];
  [0x5C000 setObjectContentLevel:v5];
  if ((v5 & 0xFFFFFFFE) == 2)
  {
    v16 = os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT);
    if (v5 == 3)
    {
      if (v16)
      {
        v17 = sub_297E279C8(self);
        *buf = 138412290;
        *v32 = v17;
        v18 = MEMORY[0x29EDCA988];
        v19 = "Generating fullContent memgraph for %@";
LABEL_26:
        _os_log_impl(&dword_297E24000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
      }
    }

    else if (v16)
    {
      v17 = sub_297E279C8(self);
      *buf = 138412290;
      *v32 = v17;
      v18 = MEMORY[0x29EDCA988];
      v19 = "Generating readOnlyContent memgraph for %@";
      goto LABEL_26;
    }

    v21 = 7;
    goto LABEL_28;
  }

  v21 = 5;
LABEL_28:
  v29 = 0;
  v22 = [0x5C000 addAllNodesFromTaskWithError:&v29];
  v23 = v29;
  if (v22)
  {
    v24 = [0x5C000 processSnapshotGraphWithOptions:v21];
    v20 = v24 != 0;
    if (v24)
    {
      if (!self->_gcoreCapture)
      {
        [0x5C000 detachFromTask];
      }

      objc_storeStrong(&self->_memoryGraph, v24);
    }

    else
    {
      [0x5C000 detachFromTask];
      if (out)
      {
        v26 = 3;
        if (self->_gcoreCapture)
        {
          v26 = 6;
        }

        *out = v26;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *v32 = 3;
        _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error generating VMUProcessObjectGraph. Aborting memgraph generation. (%lu: MREMemgraphFailedReasonFailedCreateObjectGraph)", buf, 0xCu);
      }
    }
  }

  else
  {
    if (out)
    {
      v25 = 3;
      if (self->_gcoreCapture)
      {
        v25 = 6;
      }

      *out = v25;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      *v32 = 3;
      *&v32[8] = 2112;
      *&v32[10] = v23;
      _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error adding nodes to VMUTaskMemoryScanner. Aborting memgraph generation. (%lu: MREMemgraphFailedReasonFailedCreateObjectGraph) Error: %@", buf, 0x16u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)_symbolOwners
{
  v31 = *MEMORY[0x29EDCA608];
  v2 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5518];
  v3 = v2;
  if (v2)
  {
    [MEMORY[0x29EDB8E00] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v23 = v22 = v3;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v27;
      v8 = *MEMORY[0x29EDB8ED8];
      v9 = *MEMORY[0x29EDC0E50];
      v24 = *MEMORY[0x29EDC0E50];
      v25 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v12 = CFUUIDCreateFromString(v8, v11);
          if (v12)
          {
            v13 = v12;
            v14 = [v4 objectForKeyedSubscript:v11];
            v15 = [v14 objectForKeyedSubscript:v9];

            if (v15 && (v16 = CFURLCreateWithFileSystemPath(v8, v15, kCFURLPOSIXPathStyle, 0)) != 0)
            {
              v17 = v16;
              v18 = CFRetain(v16);
              v19 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
              *v19 = 0;
              v19[1] = 0;
              CSSymbolicatorForeachSymbolicatorWithURL();
              CFRelease(v17);
              if (v18)
              {
                CFRelease(v18);
              }

              CFRelease(v13);
              if (CSIsNull())
              {
                free(v19);
              }

              else
              {
                v20 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytesNoCopy:v19 length:16 deallocator:&unk_2A1E8F930];
                [v23 setObject:v20 forKeyedSubscript:v11];
              }

              v9 = v24;
              v7 = v25;
            }

            else
            {
              CFRelease(v13);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v6);
    }

    v3 = v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)prettyPrintBacktrace:(BOOL)backtrace
{
  backtraceCopy = backtrace;
  array = [MEMORY[0x29EDB8DE8] array];
  v6 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5500];
  v38 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5508];
  v46 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5518];
  v7 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5510];
  if (backtraceCopy)
  {
    _symbolOwners = [(MemoryResourceException *)self _symbolOwners];
  }

  else
  {
    _symbolOwners = 0;
  }

  if ([v6 count])
  {
    v8 = 0;
    v44 = array;
    v45 = *MEMORY[0x29EDC0E58];
    selfCopy = self;
    v36 = v7;
    v37 = v6;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v9 = [v38 objectAtIndex:v8];
      if ([v9 length])
      {
        v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Thread %d name:  %@", v8, v9];
        [array addObject:v10];
      }

      v11 = MEMORY[0x29EDBA0F8];
      v39 = v9;
      if (v7)
      {
        integerValue = [v7 integerValue];
        v13 = &stru_2A1E8FC50;
        if (integerValue == v8)
        {
          v13 = @" Attributed";
        }
      }

      else
      {
        v13 = &stru_2A1E8FC50;
      }

      v14 = [v11 stringWithFormat:@"Thread %d%@:", v8, v13];
      [array addObject:v14];

      v41 = v8;
      v15 = [v6 objectAtIndex:v8];
      if ([v15 count])
      {
        break;
      }

LABEL_41:
      [array addObject:&stru_2A1E8FC50];

      objc_autoreleasePoolPop(context);
      v8 = v41 + 1;
      v6 = v37;
      v7 = v36;
      if ([v37 count] <= (v41 + 1))
      {
        goto LABEL_44;
      }
    }

    v16 = 0;
    v48 = v15;
    while (1)
    {
      v17 = [v15 objectAtIndex:v16];
      v18 = [v17 objectForKey:qword_2A13A54D8];
      unsignedLongLongValue = [v18 unsignedLongLongValue];

      v19 = [v17 objectForKeyedSubscript:qword_2A13A54F8];
      if (!v19)
      {
        break;
      }

      v20 = [v46 objectForKeyedSubscript:v19];
      v21 = v20;
      if (!v20)
      {
        goto LABEL_20;
      }

      v22 = [v20 objectForKey:v45];
      if (!v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      if ([(__CFString *)v22 length]< 0x1F)
      {
        v25 = [(__CFString *)v22 stringByPaddingToLength:30 withString:@" " startingAtIndex:0];
      }

      else
      {
        v23 = MEMORY[0x29EDBA0F8];
        v24 = [(__CFString *)v22 substringFromIndex:[(__CFString *)v22 length]- 27];
        v25 = [v23 stringWithFormat:@"...%@", v24];

        v22 = v24;
      }

      v26 = [v21 objectForKey:@"StartAddress"];
      unsignedLongLongValue2 = [v26 unsignedLongLongValue];

      v28 = [v17 objectForKey:qword_2A13A54E8];
      v29 = [v17 objectForKey:qword_2A13A54E0];
      unsignedLongLongValue3 = [v29 unsignedLongLongValue];

      if (!v28)
      {
        if (v19)
        {
          v31 = [_symbolOwners objectForKeyedSubscript:v19];
          [v31 bytes];
        }

        if (CSIsNull() & 1) != 0 || (v43 = unsignedLongLongValue2 - CSSymbolOwnerGetBaseAddress(), CSSymbolOwnerGetSymbolWithAddress(), (CSIsNull()) || (Name = CSSymbolGetName()) == 0 || ([MEMORY[0x29EDBA0F8] stringWithUTF8String:Name], v28 = objc_claimAutoreleasedReturnValue(), unsignedLongLongValue3 = CSSymbolGetRange() + v43, !v28))
        {
          v28 = @"???";
        }

        array = v44;
      }

      if (unsignedLongLongValue3)
      {
        if (selfCopy->_is64Bit)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#018qx %@ + %qd%@", v16, v25, unsignedLongLongValue, v28, unsignedLongLongValue - unsignedLongLongValue3, &stru_2A1E8FC50];
        }

        else
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#010lx %@ + %ld%@", v16, v25, unsignedLongLongValue, v28, unsignedLongLongValue - unsignedLongLongValue3, &stru_2A1E8FC50];
        }
      }

      else if (selfCopy->_is64Bit)
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#018qx %#qx + %qd%@", v16, v25, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue - unsignedLongLongValue2, &stru_2A1E8FC50];
      }

      else
      {
        [MEMORY[0x29EDBA0F8] stringWithFormat:@"%-3d %@\t%#010lx %#lx + %ld%@", v16, v25, unsignedLongLongValue, unsignedLongLongValue2, unsignedLongLongValue - unsignedLongLongValue2, &stru_2A1E8FC50];
      }
      v33 = ;
      [array addObject:v33];

      ++v16;
      v15 = v48;
      if ([v48 count] <= v16)
      {
        goto LABEL_41;
      }
    }

    v21 = 0;
LABEL_20:
    v22 = @"???";
    goto LABEL_21;
  }

  [array addObject:@"Backtrace not available"];
LABEL_44:
  v34 = [array componentsJoinedByString:@"\n"];

  return v34;
}

- (id)prettyPrintBinaryImages
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = [(NSDictionary *)self->_executionStack objectForKeyedSubscript:qword_2A13A5518];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v30 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v3, "count") + 1}];
    [v30 addObject:@"Binary Images:"];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v27 = v3;
    obj = [v3 allValues];
    v4 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v37;
      v33 = *MEMORY[0x29EDC0E48];
      v28 = *MEMORY[0x29EDC0E50];
      v29 = *MEMORY[0x29EDC0E58];
      do
      {
        v7 = 0;
        v31 = v5;
        do
        {
          if (*v37 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v36 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          v10 = [v8 objectForKey:@"StartAddress"];
          if (v10)
          {
            v11 = [v8 objectForKey:v33];
            v12 = [v11 stringByReplacingOccurrencesOfString:@"-" withString:&stru_2A1E8FC50];

            lowercaseString = [v12 lowercaseString];

            if (lowercaseString)
            {
              unsignedLongLongValue = [v10 unsignedLongLongValue];
              v15 = [v8 objectForKey:v29];
              v16 = [v8 objectForKey:@"Size"];
              v35 = v9;
              unsignedLongLongValue2 = [v16 unsignedLongLongValue];

              v34 = MEMORY[0x29EDBA0F8];
              v18 = unsignedLongLongValue + unsignedLongLongValue2 - 1;
              v19 = v6;
              if (v15)
              {
                v20 = v15;
              }

              else
              {
                v20 = @"???";
              }

              v21 = [v8 objectForKey:qword_2A13A54F0];
              v22 = [v8 objectForKey:v28];
              v26 = v20;
              v6 = v19;
              v23 = [v34 stringWithFormat:@"%p - %p %@ %@  <%@> %@", unsignedLongLongValue, v18, v26, v21, lowercaseString, v22];
              [v30 addObject:v23];

              v5 = v31;
              v9 = v35;
            }
          }

          objc_autoreleasePoolPop(v9);
          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v5);
    }

    v24 = [v30 componentsJoinedByString:@"\n"];

    v3 = v27;
  }

  else
  {
    v24 = @"Binary Images not found";
  }

  return v24;
}

- (id)prettyPrintIOSurfaceInfo
{
  v36 = *MEMORY[0x29EDCA608];
  if (self->_ioSurfaceInfo)
  {
    string = [MEMORY[0x29EDBA050] string];
    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IOSurface info for %@ [%d] (Count: %lu):\n", self->_execName, self->_pid, -[NSArray count](self->_ioSurfaceInfo, "count")];
    v25 = string;
    [string appendString:v4];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->_ioSurfaceInfo;
    v26 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (!v26)
    {
      goto LABEL_14;
    }

    v24 = *v32;
    while (1)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:qword_2A13A5520];
        v8 = [v6 objectForKeyedSubscript:qword_2A13A5530];
        v9 = [v6 objectForKeyedSubscript:qword_2A13A5538];
        v10 = [v6 objectForKeyedSubscript:qword_2A13A5548];
        v11 = [v6 objectForKeyedSubscript:qword_2A13A5540];
        v12 = [v6 objectForKeyedSubscript:qword_2A13A5528];
        v29 = v10;
        unsignedIntValue = [v10 unsignedIntValue];
        v14 = unsignedIntValue;
        v15 = HIBYTE(unsignedIntValue);
        if ((unsignedIntValue & 0x80000000) != 0)
        {
          if (__maskrune(HIBYTE(unsignedIntValue), 0x800uLL))
          {
LABEL_9:
            __str[0] = v15;
            __str[1] = BYTE2(v14);
            __str[2] = BYTE1(v14);
            __str[3] = v14;
            __str[4] = 0;
            goto LABEL_12;
          }
        }

        else if ((*(MEMORY[0x29EDCA600] + 4 * v15 + 60) & 0x800) != 0)
        {
          goto LABEL_9;
        }

        snprintf(__str, 5uLL, "%4d", v14);
LABEL_12:
        v16 = MEMORY[0x29EDBA0F8];
        intValue = [v7 intValue];
        v28 = v7;
        intValue2 = [v8 intValue];
        v27 = v8;
        intValue3 = [v9 intValue];
        [v11 unsignedLongLongValue];
        v20 = NSLocalizedFileSizeDescription();
        v21 = [v16 stringWithFormat:@"  Surface ID: %08x, dims: %4d x %4d, fmt: %s, size: %7s, name: %-40.40s\n", intValue, intValue2, intValue3, __str, objc_msgSend(v20, "UTF8String"), objc_msgSend(v12, "UTF8String")];

        [v25 appendString:v21];
      }

      v26 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (!v26)
      {
LABEL_14:

        goto LABEL_16;
      }
    }
  }

  v25 = 0;
LABEL_16:

  return v25;
}

- (id)prettyPrintIOAccelMemoryInfo
{
  v58 = *MEMORY[0x29EDCA608];
  ioAccelMemoryInfo = self->_ioAccelMemoryInfo;
  if (ioAccelMemoryInfo && [(NSArray *)ioAccelMemoryInfo count])
  {
    string = [MEMORY[0x29EDBA050] string];
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"IOAccel Memory info for %@ [%d] (Count: %lu):\n", self->_execName, self->_pid, -[NSArray count](self->_ioAccelMemoryInfo, "count")];
    [string appendString:v5];

    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s %s %s %s %s %s\n", "Size      ", "Resident  ", "Dirty     ", "IOSurfaceID", "     State", "Description"];
    v34 = string;
    [string appendString:v6];

    v7 = [@"\n" stringByPaddingToLength:57 withString:@" " startingAtIndex:0];
    [(NSArray *)self->_ioAccelMemoryInfo sortedArrayUsingComparator:&unk_2A1E8F950];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v55 = 0u;
    v35 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v35)
    {
      v33 = *v53;
      do
      {
        v8 = 0;
        do
        {
          if (*v53 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v46 = v8;
          v9 = *(*(&v52 + 1) + 8 * v8);
          v10 = [v9 objectForKeyedSubscript:qword_2A13A5568];
          v11 = [v9 objectForKeyedSubscript:qword_2A13A5578];
          v47 = [v9 objectForKeyedSubscript:qword_2A13A5570];
          v12 = [v9 objectForKeyedSubscript:qword_2A13A5550];
          v13 = [v9 objectForKeyedSubscript:qword_2A13A5580];
          v14 = [v9 objectForKeyedSubscript:qword_2A13A5588];
          v15 = [v9 objectForKeyedSubscript:qword_2A13A5558];
          if ([v12 unsignedLongLongValue])
          {
            v42 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", objc_msgSend(v12, "unsignedLongLongValue")];
          }

          else
          {
            v42 = @"-";
          }

          v16 = objc_msgSend_BOOLValue(v13);
          v17 = @"Wired";
          if ((v16 & 1) == 0)
          {
            v18 = objc_msgSend_BOOLValue(v14);
            v17 = @"Normal";
            if (v18)
            {
              v17 = @"Purgeable";
            }
          }

          v41 = v17;
          v43 = v14;
          v44 = v13;
          v45 = v12;
          string2 = [MEMORY[0x29EDBA050] string];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v20 = v15;
          v21 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v49;
            v24 = 1;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v49 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v26 = *(*(&v48 + 1) + 8 * i);
                if ((v24 & 1) == 0)
                {
                  [string2 appendString:v7];
                }

                [string2 appendString:v26];
                v24 = 0;
              }

              v22 = [v20 countByEnumeratingWithState:&v48 objects:v56 count:16];
              v24 = 0;
            }

            while (v22);
          }

          v38 = MEMORY[0x29EDBA0F8];
          [v10 unsignedLongLongValue];
          v37 = NSLocalizedFileSizeDescription();
          uTF8String = [v37 UTF8String];
          [v11 unsignedLongLongValue];
          NSLocalizedFileSizeDescription();
          v27 = v40 = v10;
          uTF8String2 = [v27 UTF8String];
          [v47 unsignedLongLongValue];
          NSLocalizedFileSizeDescription();
          v29 = v39 = v11;
          v30 = [v38 stringWithFormat:@"%-*s %-*s %-*s %*s %*s %s\n", 10, uTF8String, 10, uTF8String2, 10, objc_msgSend(v29, "UTF8String"), 11, -[__CFString UTF8String](v42, "UTF8String"), 10, -[__CFString UTF8String](v41, "UTF8String"), objc_msgSend(string2, "UTF8String")];

          [v34 appendString:v30];
          v8 = v46 + 1;
        }

        while (v46 + 1 != v35);
        v35 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v35);
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)createLiteMetaDataDict
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  [v3 setObject:self->_execName forKeyedSubscript:qword_2A13A53D8];
  [v3 setObject:self->_bundleID forKeyedSubscript:qword_2A13A53E8];
  v4 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprint];
  [v3 setObject:v4 forKeyedSubscript:qword_2A13A5458];

  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_ledgerPhysFootprintPeak];
  [v3 setObject:v5 forKeyedSubscript:qword_2A13A5460];

  v6 = [MEMORY[0x29EDBA070] numberWithInteger:self->_exceptionType];
  [v3 setObject:v6 forKeyedSubscript:qword_2A13A53F8];

  v7 = [MEMORY[0x29EDBA070] numberWithBool:self->_isMSLEnabled];
  [v3 setObject:v7 forKeyedSubscript:qword_2A13A5448];

  return v3;
}

- (int64_t)_saveLogFileWithHandle:(id)handle error:(id *)error
{
  v18[1] = *MEMORY[0x29EDCA608];
  handleCopy = handle;
  if (handleCopy)
  {
    memoryGraph = self->_memoryGraph;
    if (memoryGraph)
    {
      v8 = [(VMUProcessObjectGraph *)memoryGraph plistRepresentationWithOptions:1];
      if (v8)
      {
        v9 = [MEMORY[0x29EDBA0C0] propertyListWithData:v8 options:1 format:0 error:error];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v9)
          {
            v10 = 0;
LABEL_17:
            createMetaDataDict = [(MemoryResourceException *)self createMetaDataDict];
            [v9 setObject:createMetaDataDict forKeyedSubscript:qword_2A13A53B8];

            v14 = [MEMORY[0x29EDBA0C0] dataWithPropertyList:v9 format:200 options:0 error:error];
            if (v14)
            {
              [handleCopy writeData:v14];
            }

            else
            {
              v10 = 2;
            }

            goto LABEL_21;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error converting serialized plist data to an NSDictionary object!", buf, 2u);
          }
        }

LABEL_16:
        v9 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        v10 = 1;
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Error serializing memgraph to plist representation!", buf, 2u);
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  if (error)
  {
    v11 = MEMORY[0x29EDB9FA0];
    v12 = MREErrorDomain;
    v17 = *MEMORY[0x29EDB9ED8];
    v18[0] = @"File handle is nil";
    v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v11 errorWithDomain:v12 code:2 userInfo:v9];
    v10 = 2;
LABEL_21:

    goto LABEL_22;
  }

  v10 = 2;
LABEL_22:

  return v10;
}

- (void)dealloc
{
  [(MemoryResourceException *)self releaseAnalyzedTask];
  v3.receiver = self;
  v3.super_class = MemoryResourceException;
  [(MemoryResourceException *)&v3 dealloc];
}

+ (id)resourceExceptionFromTask:(unsigned int)task error:(id *)error
{
  v57 = *MEMORY[0x29EDCA608];
  if (task - 1 >= 0xFFFFFFFE)
  {
    if (error)
    {
      v7 = MEMORY[0x29EDB9FA0];
      v8 = MREErrorDomain;
      v9 = 9;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v6 = MEMORY[0x29EDCA6B0];
  if (mach_port_mod_refs(*MEMORY[0x29EDCA6B0], task, 0, 1))
  {
    if (error)
    {
      v7 = MEMORY[0x29EDB9FA0];
      v8 = MREErrorDomain;
      v9 = 3;
LABEL_7:
      [v7 errorWithDomain:v8 code:v9 userInfo:0];
      *error = v10 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  suspend_token = 0;
  if (task_suspend2(task, &suspend_token))
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:MREErrorDomain code:3 userInfo:0];
    }

    mach_port_mod_refs(*v6, task, 0, -1);
    goto LABEL_12;
  }

  v12 = [MemoryResourceException alloc];
  if (!v12)
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v13 = suspend_token;
  v14 = [(MemoryResourceException *)v12 init];
  v10 = v14;
  if (v14)
  {
    *(v14 + 136) = 1;
    *(v14 + 20) = task;
    *(v14 + 24) = v13;
    if (qword_2A18A6018 != -1)
    {
      dispatch_once(&qword_2A18A6018, &unk_2A1E8F970);
    }

    objc_storeStrong((v10 + 120), qword_2A18A6008);
    objc_storeStrong((v10 + 128), qword_2A18A6010);
    buffer[0].tv_sec = 0;
    *&buffer[0].tv_usec = 0;
    if (!gettimeofday(buffer, 0))
    {
      v15 = sub_297E280B0(buffer[0].tv_sec, buffer[0].tv_usec);
      v16 = *(v10 + 192);
      *(v10 + 192) = v15;
    }

    v17 = *(v10 + 20);
    buffer[0].tv_sec = MEMORY[0x29EDCA5F8];
    *&buffer[0].tv_usec = 3221225472;
    buffer[1].tv_sec = sub_297E284D4;
    *&buffer[1].tv_usec = &unk_29EE848F8;
    v56 = v10;
    if (sub_297E278A4(v17, buffer))
    {
      [*(v10 + 192) timeIntervalSinceDate:*(v10 + 184)];
      v19 = v18;
      if (v18 <= 0.0)
      {
        v19 = -1;
      }

      *(v10 + 112) = v19;
      v20 = *(v10 + 200);
      if (!v20)
      {
        goto LABEL_44;
      }

      if (v20 >> 61 != 3)
      {
        goto LABEL_43;
      }

      v21 = (v20 >> 58) & 7;
      if (v21 == 1)
      {
        if ((v20 & 0xFF000000) != 0)
        {
          v20 = 2;
        }

        else
        {
          v20 = 4;
        }

        if ((*(v10 + 36) & 0xD) == 1)
        {
          ++v20;
        }

        goto LABEL_44;
      }

      if (v21 == 2)
      {
        v20 = 7;
      }

      else
      {
LABEL_43:
        v20 = 8;
      }

LABEL_44:
      *(v10 + 96) = v20;
      v35 = sub_297E28120(*(v10 + 176));
      v41 = sub_297E28198(*(v10 + 32), *(v10 + 72), v35);
      v42 = *(v10 + 80);
      *(v10 + 80) = v41;

      v43 = sub_297E282C8(v35);
      v44 = *(v10 + 88);
      *(v10 + 88) = v43;

      v45 = sub_297E28364(*(v10 + 20), *(v10 + 28), *(v10 + 64));
      *(v10 + 17) = v45;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
      {
        v46 = *(v10 + 28);
        *buf = 136315650;
        v50 = "[MemoryResourceException extractCorpseInfo]";
        v51 = 1024;
        v52 = v46;
        v53 = 1024;
        v54 = v45;
        _os_log_debug_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s - for pid (%i), isMSLEnabled = %{BOOL}d", buf, 0x18u);
      }

LABEL_46:

      goto LABEL_13;
    }

    v22 = *(v10 + 20);
    if (v22 && !pid_for_task(v22, (v10 + 28)) && !proc_get_dirty(*(v10 + 28), (v10 + 36)))
    {
      v23 = sub_297E27F50(*(v10 + 28));
      v24 = *(v10 + 72);
      *(v10 + 72) = v23;

      lastPathComponent = [*(v10 + 72) lastPathComponent];
      v26 = *(v10 + 64);
      *(v10 + 64) = lastPathComponent;

      v27 = sub_297E27FE0(*(v10 + 28));
      if (v27)
      {
        v28 = v27;
        *(v10 + 32) = v27[140];
        v29 = sub_297E280B0(*v27, v27[2]);
        v30 = *(v10 + 184);
        *(v10 + 184) = v29;

        [*(v10 + 192) timeIntervalSinceDate:*(v10 + 184)];
        v32 = v31;
        if (v31 <= 0.0)
        {
          v32 = -1;
        }

        *(v10 + 112) = v32;
        *(v10 + 16) = (v28[32] & 4) != 0;
        free(v28);
      }

      *(v10 + 96) = 0;
      v33 = *(v10 + 28);
      v56 = 0;
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo(v33, 20, 1uLL, buffer, 40) == 40)
      {
        tv_sec = buffer[0].tv_sec;
      }

      else
      {
        tv_sec = 1;
      }

      *(v10 + 176) = tv_sec;
      v35 = sub_297E28120(tv_sec);
      v36 = sub_297E28198(*(v10 + 32), *(v10 + 72), v35);
      v37 = *(v10 + 80);
      *(v10 + 80) = v36;

      v38 = sub_297E282C8(v35);
      v39 = *(v10 + 88);
      *(v10 + 88) = v38;

      v40 = sub_297E28364(*(v10 + 20), *(v10 + 28), *(v10 + 64));
      *(v10 + 17) = v40;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG))
      {
        v47 = *(v10 + 28);
        LODWORD(buffer[0].tv_sec) = 136315650;
        *(&buffer[0].tv_sec + 4) = "[MemoryResourceException extractTaskInfo]";
        *(&buffer[0].tv_usec + 2) = 1024;
        *(&buffer[0].tv_usec + 6) = v47;
        WORD1(buffer[1].tv_sec) = 1024;
        HIDWORD(buffer[1].tv_sec) = v40;
        _os_log_debug_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEBUG, "%s - for pid (%i), isMSLEnabled = %{BOOL}d", buffer, 0x18u);
      }

      *(v10 + 18) = 0;
      goto LABEL_46;
    }
  }

LABEL_13:

  return v10;
}

- (void)populateAdditionalMetadataWithDiagnostics:(BOOL)diagnostics
{
  diagnosticsCopy = diagnostics;
  [(MemoryResourceException *)self _populateAddtionalMetadataWithOptions:0 timeoutSecs:60];
  if (diagnosticsCopy)
  {

    MEMORY[0x2A1C70FE8](self, sel__generateMemgraphWithContentLevel_timeoutSecs_memgraphFailedReasonOut_);
  }
}

- (void)_populateAddtionalMetadataWithOptions:(unint64_t)options timeoutSecs:(unint64_t)secs
{
  optionsCopy = options;
  v116 = *MEMORY[0x29EDCA608];
  v79 = sub_297E279C8(self);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v79;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Generating footprint for %@", buf, 0xCu);
  }

  if (self && self->_task)
  {
    [FPFootprint setBreakDownPhysFootprint:1];
    [FPFootprint setSharingAnalysisDisabled:1];
    [FPFootprint setVmRegionInfoFlags:1];
    v4 = sub_297E2E0BC([FPCorpseProcess alloc], self->_task, self->_pid, self->_execName, self->_dirtyFlags, self->_procFlags);
    v5 = v4;
    if (v4)
    {
      ledgerPageTable = self->_ledgerPageTable;
      v107 = *&self->_ledgerPhysFootprint;
      v108 = 0;
      v109 = 0;
      *thread_info_outCnt = ledgerPageTable;
      [v4 addLedgerData:thread_info_outCnt count:5];
      v7 = [FPFootprint alloc];
      v112 = v5;
      v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v112 count:1];
      v9 = [(FPFootprint *)v7 initWithProcesses:v8];

      [(FPFootprint *)v9 gatherData:1];
      [(FPFootprint *)v9 analyzeData];
      sub_297E36E10(FPSharedCache);
      v10 = sub_297E39E48(v9, 1);
      if (v10)
      {
        v111 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_297E380A4(FPFootprint, v10, buf);
        v11 = objc_alloc_init(MREOutputFormatterInMemory);
        p_isa = &v11->super.isa;
        if (v11)
        {
          [(MREOutputFormatterInMemory *)v11 printSummaryCategories:v10 total:buf hadErrors:0];
          objc_storeStrong(&self->_footprintOutput, p_isa[2]);
        }
      }
    }
  }

  dsema = dispatch_semaphore_create(0);
  if ((optionsCopy & 2) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v79;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Starting IOAccel memory info collection (asynchronous) for %@", buf, 0xCu);
    }

    v13 = MEMORY[0x29EDC55A0];
    v14 = dispatch_get_global_queue(0, 0);
    v103[0] = MEMORY[0x29EDCA5F8];
    v103[1] = 3221225472;
    v103[2] = sub_297E2B808;
    v103[3] = &unk_29EE84980;
    v103[4] = self;
    v104 = dsema;
    [v13 collectDataWithCompletionQueue:v14 completionBlock:v103];
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v79;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Generating backtrace info for %@", buf, 0xCu);
  }

  if (!self)
  {
    goto LABEL_72;
  }

  v89 = [objc_alloc(MEMORY[0x29EDC6D98]) initWithPID:self->_pid task:self->_task processName:self->_execName is64Bit:self->_is64Bit options:64];
  sampleAllThreadsOnce = [v89 sampleAllThreadsOnce];
  v85 = [sampleAllThreadsOnce count];
  if (!v85)
  {
    goto LABEL_71;
  }

  [v89 symbolicator];
  if (!CSIsNull())
  {
    CSRetain();
    goto LABEL_25;
  }

  CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData();
  CSSymbolicatorCreateWithTaskFlagsAndNotification();
  if (!CSIsNull())
  {
LABEL_25:
    v83 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v85];
    v84 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:v85];
    v96 = objc_alloc_init(MEMORY[0x29EDB8E00]);
    v15 = 0;
    v87 = -1;
    v81 = *MEMORY[0x29EDC0E58];
    v82 = *MEMORY[0x29EDC0E48];
    v80 = *MEMORY[0x29EDC0E50];
    while (1)
    {
      v90 = v15;
      v94 = [sampleAllThreadsOnce objectAtIndexedSubscript:?];
      thread = [v94 thread];
      v17 = thread;
      if (self->_crashedThreadId && (v87 & 0x80000000) != 0)
      {
        memset(buf, 0, 24);
        thread_info_outCnt[0] = 6;
        v18 = thread_info(thread, 4u, buf, thread_info_outCnt);
        v19 = *buf;
        if (v18)
        {
          v19 = -1;
        }

        if (v19 == self->_crashedThreadId)
        {
          v20 = v90;
        }

        else
        {
          v20 = v87;
        }

        v87 = v20;
      }

      v92 = [v89 threadNameForThread:v17];
      v21 = [v92 length];
      v91 = [v89 dispatchQueueNameForSerialNumber:{objc_msgSend(v94, "dispatchQueueSerialNumber")}];
      v22 = [v91 length];
      v93 = objc_alloc_init(MEMORY[0x29EDBA050]);
      if (v21)
      {
        [v93 appendString:v92];
        if (v22)
        {
          [v93 appendString:@"  "];
LABEL_38:
          [v93 appendFormat:@"Dispatch queue: %@", v91];
        }
      }

      else if (v22)
      {
        goto LABEL_38;
      }

      [v84 addObject:v93];
      backtrace = [v94 backtrace];
      backtraceLength = [v94 backtraceLength];
      for (i = [MEMORY[0x29EDB8DE8] arrayWithCapacity:backtraceLength];
      {
        v26 = *backtrace;
        dictionary = [MEMORY[0x29EDB8E00] dictionary];
        v28 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:v26];
        [dictionary setObject:v28 forKeyedSubscript:qword_2A13A54D8];

        CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
        v29 = v96;
        v30 = dictionary;
        if ((CSIsNull() & 1) == 0)
        {
          CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
          if (CFUUIDBytes && (v32 = CFUUIDCreateFromUUIDBytes(0, *CFUUIDBytes)) != 0)
          {
            v33 = CFUUIDCreateString(0, v32);
            CFRelease(v32);
            if (v33)
            {
              [v30 setObject:v33 forKeyedSubscript:qword_2A13A54F8];
              v34 = [v29 objectForKeyedSubscript:v33];
              v35 = v34 == 0;

              if (v35)
              {
                v95 = objc_alloc_init(MEMORY[0x29EDB8E00]);
                [v95 setObject:v33 forKeyedSubscript:v82];
                [v29 setObject:v95 forKeyedSubscript:v33];
                Name = CSSymbolOwnerGetName();
                if (Name)
                {
                  v37 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:Name];
                  v38 = v37;
                  if (v37)
                  {
                    v39 = v37;
                  }

                  else
                  {
                    v39 = @"nonprintable-binary";
                  }

                  [v95 setObject:v39 forKeyedSubscript:v81];
                }

                Path = CSSymbolOwnerGetPath();
                if (Path)
                {
                  v41 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:Path];
                  stringByStandardizingPath = [v41 stringByStandardizingPath];

                  if (stringByStandardizingPath)
                  {
                    v43 = stringByStandardizingPath;
                  }

                  else
                  {
                    v43 = @"nonprintable-path";
                  }

                  [v95 setObject:v43 forKeyedSubscript:v80];
                }

                Architecture = CSSymbolOwnerGetArchitecture();
                v45 = macho_arch_name_for_cpu_type(Architecture, SHIDWORD(Architecture));
                if (v45)
                {
                  v46 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v45];
                }

                else
                {
                  v46 = @"unknown-arch";
                }

                if (v46)
                {
                  v47 = v46;
                }

                else
                {
                  v47 = @"nonprintable-arch";
                }

                [v95 setObject:v47 forKeyedSubscript:qword_2A13A54F0];
                *thread_info_outCnt = 0;
                *&v107 = thread_info_outCnt;
                *(&v107 + 1) = 0x2020000000;
                v108 = 0;
                v112 = 0;
                v113 = &v112;
                v114 = 0x2020000000;
                v115 = 0;
                *buf = MEMORY[0x29EDCA5F8];
                *&buf[8] = 3221225472;
                *&buf[16] = sub_297E2D314;
                *&buf[24] = &unk_29EE849A8;
                *&v111 = thread_info_outCnt;
                *(&v111 + 1) = &v112;
                CSSymbolOwnerForeachSegment();
                if (*(v107 + 24) || v113[3])
                {
                  v48 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:?];
                  [v95 setObject:v48 forKeyedSubscript:@"StartAddress"];

                  v49 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v113[3] - *(v107 + 24) + 1];
                  [v95 setObject:v49 forKeyedSubscript:@"Size"];
                }

                _Block_object_dispose(&v112, 8);
                _Block_object_dispose(thread_info_outCnt, 8);
              }
            }
          }

          else
          {
            v33 = 0;
          }
        }

        [i addObject:v30];
        ++backtrace;
      }

      [v83 addObject:i];

      v15 = v90 + 1;
      if (v90 + 1 == v85)
      {
        CSRelease();
        v50 = objc_alloc_init(MEMORY[0x29EDB8E00]);
        [(NSDictionary *)v50 setObject:v83 forKeyedSubscript:qword_2A13A5500];
        [(NSDictionary *)v50 setObject:v84 forKeyedSubscript:qword_2A13A5508];
        v51 = [MEMORY[0x29EDBA070] numberWithInt:v87];
        [(NSDictionary *)v50 setObject:v51 forKeyedSubscript:qword_2A13A5510];

        [(NSDictionary *)v50 setObject:v96 forKeyedSubscript:qword_2A13A5518];
        executionStack = self->_executionStack;
        self->_executionStack = v50;

        goto LABEL_71;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to create symbolicator", buf, 2u);
  }

LABEL_71:

LABEL_72:
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v79;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Collecting IOSurface info for %@", buf, 0xCu);
  }

  surfaceDescriptions = [MEMORY[0x29EDBB120] surfaceDescriptions];
  v53 = [MEMORY[0x29EDBA070] numberWithInt:self->_pid];
  v98 = [surfaceDescriptions objectForKeyedSubscript:v53];

  if (v98)
  {
    v54 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v98, "count")}];
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v55 = v98;
    v56 = [v55 countByEnumeratingWithState:&v99 objects:v105 count:16];
    if (v56)
    {
      v57 = *v100;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v100 != v57)
          {
            objc_enumerationMutation(v55);
          }

          v59 = *(*(&v99 + 1) + 8 * j);
          objc_opt_self();
          dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
          v61 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v59, "surfaceID")}];
          [dictionary2 setObject:v61 forKeyedSubscript:qword_2A13A5520];

          v62 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v59, "pixelFormat")}];
          [dictionary2 setObject:v62 forKeyedSubscript:qword_2A13A5548];

          name = [v59 name];
          [dictionary2 setObject:name forKeyedSubscript:qword_2A13A5528];

          v64 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v59, "width")}];
          [dictionary2 setObject:v64 forKeyedSubscript:qword_2A13A5530];

          v65 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v59, "height")}];
          [dictionary2 setObject:v65 forKeyedSubscript:qword_2A13A5538];

          v66 = MEMORY[0x29EDBA070];
          allocationSize = [v59 allocationSize];

          v68 = [v66 numberWithUnsignedLongLong:allocationSize];
          [dictionary2 setObject:v68 forKeyedSubscript:qword_2A13A5540];

          [(NSArray *)v54 addObject:dictionary2];
        }

        v56 = [v55 countByEnumeratingWithState:&v99 objects:v105 count:16];
      }

      while (v56);
    }

    ioSurfaceInfo = self->_ioSurfaceInfo;
    self->_ioSurfaceInfo = v54;
  }

  if ((optionsCopy & 2) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Waiting for IOAccel memory info collection to finish...", buf, 2u);
    }

    v70 = dispatch_time(0, 1000000000 * secs);
    dispatch_semaphore_wait(dsema, v70);
    v71 = MEMORY[0x29EDCA988];
    v72 = MEMORY[0x29EDCA988];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      ioAccelMemoryInfo = self->_ioAccelMemoryInfo;
      if (ioAccelMemoryInfo)
      {
        v74 = [(NSArray *)ioAccelMemoryInfo count];
      }

      else
      {
        v74 = 0;
      }

      v75 = sub_297E279C8(self);
      *buf = 134218242;
      *&buf[4] = v74;
      *&buf[12] = 2112;
      *&buf[14] = v75;
      _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "IOAccel memory info collection complete. Found a total of %lu entries for %@", buf, 0x16u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[MemoryResourceException _populateAddtionalMetadataWithOptions:timeoutSecs:]";
    *&buf[12] = 2112;
    *&buf[14] = v79;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Finished %s for %@", buf, 0x16u);
  }
}

- (void)_generateMemgraphWithContentLevel:(unsigned int)level timeoutSecs:(unint64_t)secs memgraphFailedReasonOut:(unint64_t *)out
{
  v6 = *&level;
  v13 = *MEMORY[0x29EDCA608];
  v8 = sub_297E279C8(self);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Generating memgraph for %@", &v9, 0xCu);
  }

  [(MemoryResourceException *)self generateMemoryGraphWithContentLevel:v6 memgraphFailedReasonOut:out];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[MemoryResourceException _generateMemgraphWithContentLevel:timeoutSecs:memgraphFailedReasonOut:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Finished %s for %@", &v9, 0x16u);
  }
}

- (BOOL)isFirstParty
{
  execName = self->_execName;
  if (!execName || [(NSString *)execName hasPrefix:@"com.apple.WebKit."])
  {
    return 0;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    v6 = @"com.apple.";
  }

  else
  {
    bundleID = self->_execPath;
    if (!bundleID)
    {
      return 0;
    }

    v6 = @"/System/";
  }

  return [(NSString *)bundleID hasPrefix:v6];
}

+ (id)resourceExceptionFromLogFileHandle:(id)handle error:(id *)error
{
  v38[1] = *MEMORY[0x29EDCA608];
  handleCopy = handle;
  v6 = handleCopy;
  if (handleCopy)
  {
    v7 = [handleCopy readDataToEndOfFileAndReturnError:error];
    if (v7)
    {
      v8 = [MEMORY[0x29EDBA0C0] propertyListWithData:v7 options:0 format:0 error:error];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
LABEL_27:

          goto LABEL_28;
        }

        v14 = MEMORY[0x29EDBA0F8];
        localizedDescription = [*error localizedDescription];
        v9 = [v14 stringWithFormat:@"File is malformed - %@", localizedDescription];

        v16 = MEMORY[0x29EDB9FA0];
        v17 = MREErrorDomain;
        v35 = *MEMORY[0x29EDB9ED8];
        v36 = v9;
        v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v16 errorWithDomain:v17 code:1 userInfo:v10];
        *error = v11 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v9 = [objc_alloc(MEMORY[0x29EDC6D90]) initWithPlistRepresentation:v7];
      v10 = [v8 objectForKeyedSubscript:qword_2A13A53B8];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
LABEL_25:
            v11 = 0;
            goto LABEL_26;
          }

          v23 = MEMORY[0x29EDB9FA0];
          v24 = MREErrorDomain;
          v33 = *MEMORY[0x29EDB9ED8];
          v34 = @"Metadata is malformed";
          v25 = MEMORY[0x29EDB8DC0];
          v26 = &v34;
          v27 = &v33;
LABEL_24:
          v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
          *error = [v23 errorWithDomain:v24 code:1 userInfo:v28];

          goto LABEL_25;
        }

        v11 = sub_297E2BEF0([MemoryResourceException alloc], v10, v9, error);
      }

      else
      {
        v11 = [MemoryResourceException alloc];
        v18 = v9;
        if (v11)
        {
          v30.receiver = v11;
          v30.super_class = MemoryResourceException;
          v11 = objc_msgSendSuper2(&v30, sel_init);
          if (v11)
          {
            processName = [v18 processName];
            execName = v11->_execName;
            v11->_execName = processName;

            v11->_pid = [v18 pid];
            executablePath = [v18 executablePath];
            execPath = v11->_execPath;
            v11->_execPath = executablePath;

            v11->_upTime = -1;
            *&v11->_exceptionType = xmmword_297E40720;
            v11->_ledgerPhysFootprint = [v18 physicalFootprint];
            v11->_ledgerPhysFootprintPeak = [v18 physicalFootprintPeak];
            objc_storeStrong(&v11->_memoryGraph, v9);
            v11->_task = 0;
          }
        }
      }

      if (!error || v11)
      {
        goto LABEL_26;
      }

      if (*error)
      {
        goto LABEL_25;
      }

      v23 = MEMORY[0x29EDB9FA0];
      v24 = MREErrorDomain;
      v31 = *MEMORY[0x29EDB9ED8];
      v32 = @"Unable to analyze diagnostic";
      v25 = MEMORY[0x29EDB8DC0];
      v26 = &v32;
      v27 = &v31;
      goto LABEL_24;
    }

    v11 = 0;
  }

  else
  {
    if (!error)
    {
      v11 = 0;
      goto LABEL_29;
    }

    v12 = MEMORY[0x29EDB9FA0];
    v13 = MREErrorDomain;
    v37 = *MEMORY[0x29EDB9ED8];
    v38[0] = @"File does not exist";
    v7 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    [v12 errorWithDomain:v13 code:11 userInfo:v7];
    *error = v11 = 0;
  }

LABEL_28:

LABEL_29:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  createMetaDataDict = [(MemoryResourceException *)self createMetaDataDict];
  v5 = self->_memoryGraph;
  v6 = sub_297E2BEF0([MemoryResourceException alloc], createMetaDataDict, v5, 0);

  return v6;
}

+ (void)extractExecNameAndBundleIDMinimal:(unsigned int)minimal execNameOut:(id *)out bundleIDOut:(id *)dOut
{
  *out = 0;
  *dOut = 0;
  x = 0;
  if (!pid_for_task(minimal, &x))
  {
    v7 = sub_297E27F50(x);
    *out = [v7 lastPathComponent];
    v8 = sub_297E27FE0(x);
    if (v8)
    {
      v9 = v8[140];
      v14 = 0;
      memset(buffer, 0, sizeof(buffer));
      if (proc_pidinfo(x, 20, 1uLL, buffer, 40) == 40)
      {
        v10 = *&buffer[0];
      }

      else
      {
        v10 = 1;
      }

      v11 = sub_297E28120(v10);
      *dOut = sub_297E28198(v9, v7, v11);
    }
  }
}

@end