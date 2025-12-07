@interface PPSFileUtilities
+ (BOOL)markAsPurgeable:(id)purgeable label:(apfs_label_purgeable_request *)label;
+ (BOOL)markAsPurgeable:(id)purgeable urgency:(unint64_t)urgency startDate:(id)date;
+ (BOOL)supportsEnhancedAPFS;
+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)urgency startDate:(unint64_t)date;
+ (id)containerPath;
@end

@implementation PPSFileUtilities

+ (BOOL)markAsPurgeable:(id)purgeable label:(apfs_label_purgeable_request *)label
{
  v24 = *MEMORY[0x277D85DE8];
  purgeableCopy = purgeable;
  v6 = purgeableCopy;
  if (purgeableCopy && label->var0)
  {
    label->var0 |= 0x10005uLL;
    v7 = open([purgeableCopy fileSystemRepresentation], 0);
    v8 = v7;
    if (v7 < 0)
    {
      v11 = PPSLogAPFS();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = *&label->var2;
        *v23 = *&label->var0;
        *&v23[16] = v19;
        *&v23[32] = *&label->var4;
        v13 = [PPSFileUtilities _debugStringForPurgeableLabel:v23];
        v20 = strerror(v8);
        *v23 = 138413058;
        *&v23[4] = v6;
        *&v23[12] = 2112;
        *&v23[14] = v13;
        *&v23[22] = 1024;
        *&v23[24] = v8;
        *&v23[28] = 2080;
        *&v23[30] = v20;
        v16 = "Failed to open file handle for '%@' to apply purgeable status: '%@' (error %d = '%s')";
        goto LABEL_16;
      }
    }

    else
    {
      v9 = ffsctl(v7, 0xC0304A6FuLL, label, 0);
      close(v8);
      v10 = PPSLogAPFS();
      v11 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v21 = *&label->var2;
          *v23 = *&label->var0;
          *&v23[16] = v21;
          *&v23[32] = *&label->var4;
          v22 = [PPSFileUtilities _debugStringForPurgeableLabel:v23];
          *v23 = 138412546;
          *&v23[4] = v6;
          *&v23[12] = 2112;
          *&v23[14] = v22;
          _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "Marked file '%@' as purgeable with label: '%@'", v23, 0x16u);
        }

        v17 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = *&label->var2;
        *v23 = *&label->var0;
        *&v23[16] = v12;
        *&v23[32] = *&label->var4;
        v13 = [PPSFileUtilities _debugStringForPurgeableLabel:v23];
        v14 = __error();
        v15 = strerror(*v14);
        *v23 = 138413058;
        *&v23[4] = v6;
        *&v23[12] = 2112;
        *&v23[14] = v13;
        *&v23[22] = 1024;
        *&v23[24] = v9;
        *&v23[28] = 2080;
        *&v23[30] = v15;
        v16 = "Failed to mark file '%@' as purgeable with label: '%@' (error %d = '%s')";
LABEL_16:
        _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, v16, v23, 0x26u);
      }
    }

    v17 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v17 = 0;
LABEL_14:

  return v17;
}

+ (BOOL)markAsPurgeable:(id)purgeable urgency:(unint64_t)urgency startDate:(id)date
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  purgeableCopy = purgeable;
  objc_msgSend__purgeableLabelWithUrgency_startDate_(PPSFileUtilities);
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v6 = [PPSFileUtilities markAsPurgeable:purgeableCopy label:v8];

  return v6;
}

+ (BOOL)supportsEnhancedAPFS
{
  if (qword_2811F7E28 != -1)
  {
    dispatch_once(&qword_2811F7E28, &__block_literal_global_5);
  }

  return _MergedGlobals_106;
}

uint64_t __46__PPSFileUtilities_APFS__supportsEnhancedAPFS__block_invoke()
{
  result = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/filesystems");
  if (result)
  {
    v1 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"e-apfs", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      _MergedGlobals_106 = 1;
    }

    return IOObjectRelease(v1);
  }

  return result;
}

+ (apfs_label_purgeable_request)_purgeableLabelWithUrgency:(SEL)urgency startDate:(unint64_t)date
{
  v10 = a5;
  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  retstr->var5 = 0;
  retstr->var0 = date;
  timeIntervalSince1970 = +[PPSFileUtilities supportsEnhancedAPFS];
  if (v10 && timeIntervalSince1970)
  {
    retstr->var2 = 0x80000;
    timeIntervalSince1970 = [v10 timeIntervalSince1970];
    retstr->var4 = 1000000000 * v8;
  }

  return MEMORY[0x2821F96F8](timeIntervalSince1970);
}

+ (id)containerPath
{
  if (containerPath_onceToken != -1)
  {
    dispatch_once(&containerPath_onceToken, &__block_literal_global_59);
  }

  v3 = containerPath_containerPath;

  return v3;
}

void __33__PPSFileUtilities_containerPath__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
    v3 = containerPath_containerPath;
    containerPath_containerPath = v2;

    free(v1);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v5 = 1;
    _os_log_error_impl(&dword_21A4C6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error fetching group container systemgroup.com.apple.powerlog : %llu", buf, 0xCu);
  }
}

@end