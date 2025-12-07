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
  purgeableCopy = purgeable;
  v6 = purgeableCopy;
  if (purgeableCopy && label->var0)
  {
    label->var0 |= 0x10005uLL;
    v7 = open([purgeableCopy fileSystemRepresentation], 0);
    v8 = v7;
    if ((v7 & 0x80000000) != 0)
    {
      v12 = PPSLogAPFS(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v20 = *&label->var2;
        *v24 = *&label->var0;
        *&v24[16] = v20;
        *&v24[32] = *&label->var4;
        v14 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
        v21 = strerror(v8);
        *v24 = 138413058;
        *&v24[4] = v6;
        *&v24[12] = 2112;
        *&v24[14] = v14;
        *&v24[22] = 1024;
        *&v24[24] = v8;
        *&v24[28] = 2080;
        *&v24[30] = v21;
        v17 = "Failed to open file handle for '%@' to apply purgeable status: '%@' (error %d = '%s')";
        goto LABEL_16;
      }
    }

    else
    {
      v9 = ffsctl(v7, 0xC0304A6FuLL, label, 0);
      v10 = close(v8);
      v11 = PPSLogAPFS(v10);
      v12 = v11;
      if (!v9)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v22 = *&label->var2;
          *v24 = *&label->var0;
          *&v24[16] = v22;
          *&v24[32] = *&label->var4;
          v23 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
          *v24 = 138412546;
          *&v24[4] = v6;
          *&v24[12] = 2112;
          *&v24[14] = v23;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Marked file '%@' as purgeable with label: '%@'", v24, 0x16u);
        }

        v18 = 1;
        goto LABEL_13;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *&label->var2;
        *v24 = *&label->var0;
        *&v24[16] = v13;
        *&v24[32] = *&label->var4;
        v14 = [PPSFileUtilities _debugStringForPurgeableLabel:v24];
        v15 = __error();
        v16 = strerror(*v15);
        *v24 = 138413058;
        *&v24[4] = v6;
        *&v24[12] = 2112;
        *&v24[14] = v14;
        *&v24[22] = 1024;
        *&v24[24] = v9;
        *&v24[28] = 2080;
        *&v24[30] = v16;
        v17 = "Failed to mark file '%@' as purgeable with label: '%@' (error %d = '%s')";
LABEL_16:
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v17, v24, 0x26u);
      }
    }

    v18 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v18 = 0;
LABEL_14:

  return v18;
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
  if (qword_100015A10 != -1)
  {
    sub_100007B10();
  }

  return byte_100015A08;
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

  return _objc_release_x1(timeIntervalSince1970);
}

+ (id)containerPath
{
  if (qword_100015A18 != -1)
  {
    sub_100007B24();
  }

  v3 = off_100015748;

  return v3;
}

@end