@interface SAUtilities
+ (id)breakCommaSeparatedStringToComponents:(id)components;
+ (id)createCommaSeparatedString:(id)string;
+ (id)splitArray:(id)array into:(int)into;
+ (int)killSADaemon;
+ (int)loadSADaemon;
+ (void)getFileSize:(id)size reply:(id)reply;
+ (void)processArrayConcurrently:(id)concurrently number:(int)number queue:(id)queue group:(id)group block:(id)block;
@end

@implementation SAUtilities

+ (id)splitArray:(id)array into:(int)into
{
  arrayCopy = array;
  v6 = arrayCopy;
  if (!arrayCopy)
  {
    v8 = SALog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SAUtilities splitArray:v8 into:?];
    }

    goto LABEL_18;
  }

  v7 = [arrayCopy count];
  if (v7 < into)
  {
    v8 = SALog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SAUtilities *)v6 splitArray:into into:v8];
    }

LABEL_18:

    v9 = 0;
    goto LABEL_19;
  }

  if (into <= 0)
  {
    v8 = SALog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SAUtilities splitArray:into into:v8];
    }

    goto LABEL_18;
  }

  v9 = objc_opt_new();
  v10 = [v6 count];
  v11 = 0;
  v12 = 0;
  v13 = v10 / into;
  do
  {
    if (v13 >= v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = v13;
    }

    if (v12 >= into - 1)
    {
      v14 = v10;
    }

    v15 = [v6 subarrayWithRange:{v11, v14}];
    [v9 addObject:v15];

    v11 += v13;
    ++v12;
    v10 -= v13;
  }

  while (into != v12);
LABEL_19:

  return v9;
}

+ (void)getFileSize:(id)size reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v6 = MEMORY[0x277CBEBC0];
  replyCopy = reply;
  v8 = [v6 fileURLWithPath:sizeCopy];
  v18 = 0;
  v9 = *MEMORY[0x277CBE7D0];
  v17 = 0;
  [v8 getResourceValue:&v18 forKey:v9 error:&v17];
  v10 = v18;
  v11 = v17;
  v12 = v11;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (v13)
  {
    v14 = SALog(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (v12)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@" with error %@", v12];
      }

      else
      {
        v16 = &stru_287BC9EA8;
      }

      *buf = 138412546;
      v20 = sizeCopy;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_26B26B000, v14, OS_LOG_TYPE_ERROR, "Failed to get physical size for file (%@)%@", buf, 0x16u);
      if (v12)
      {
      }
    }

    unsignedLongValue = 0;
  }

  else
  {
    unsignedLongValue = [v10 unsignedLongValue];
  }

  replyCopy[2](replyCopy, unsignedLongValue, v12);
}

+ (void)processArrayConcurrently:(id)concurrently number:(int)number queue:(id)queue group:(id)group block:(id)block
{
  v10 = *&number;
  v32 = *MEMORY[0x277D85DE8];
  concurrentlyCopy = concurrently;
  queueCopy = queue;
  groupCopy = group;
  blockCopy = block;
  v15 = [SAUtilities splitArray:concurrentlyCopy into:v10];
  v22 = concurrentlyCopy;
  obj = v15;
  if (v15)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v27 + 1) + 8 * i);
          dispatch_group_enter(groupCopy);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __65__SAUtilities_processArrayConcurrently_number_queue_group_block___block_invoke;
          block[3] = &unk_279CD6D70;
          block[4] = v20;
          v26 = blockCopy;
          v25 = groupCopy;
          dispatch_async(queueCopy, block);
        }

        v17 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v21 = SALog(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SAUtilities processArrayConcurrently:concurrentlyCopy number:v10 queue:v21 group:? block:?];
    }
  }
}

void __65__SAUtilities_processArrayConcurrently_number_queue_group_block___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v8 != v5)
      {
        objc_enumerationMutation(v2);
      }

      if (!(*(*(a1 + 48) + 16))(*(a1 + 48)))
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (id)createCommaSeparatedString:(id)string
{
  allObjects = [string allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_localizedCaseInsensitiveCompare_];

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

+ (id)breakCommaSeparatedStringToComponents:(id)components
{
  v3 = [components componentsSeparatedByString:{@", "}];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (int)killSADaemon
{
  v2 = objc_opt_new();
  [v2 setLaunchPath:@"/usr/bin/pkill"];
  [v2 setArguments:&unk_287BCCB50];
  [v2 launchAndReturnError:0];
  [v2 waitUntilExit];
  terminationStatus = [v2 terminationStatus];

  return terminationStatus;
}

+ (int)loadSADaemon
{
  v2 = objc_opt_new();
  [v2 setLaunchPath:@"/bin/launchctl"];
  [v2 setArguments:&unk_287BCCB68];
  [v2 launchAndReturnError:0];
  [v2 waitUntilExit];
  terminationStatus = [v2 terminationStatus];

  return terminationStatus;
}

+ (void)splitArray:(int)a1 into:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[SAUtilities splitArray:into:]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_26B26B000, a2, OS_LOG_TYPE_ERROR, "%s: number of parts (%d) must be > 0", &v2, 0x12u);
}

+ (void)splitArray:(NSObject *)a3 into:.cold.2(void *a1, int a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "+[SAUtilities splitArray:into:]";
  v6 = 1024;
  v7 = a2;
  v8 = 1024;
  v9 = [a1 count];
  _os_log_error_impl(&dword_26B26B000, a3, OS_LOG_TYPE_ERROR, "%s: number of parts (%d) is higher than the supplied array count (%d). can't split array", &v4, 0x18u);
}

+ (void)splitArray:(os_log_t)log into:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[SAUtilities splitArray:into:]";
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "%s: supplied array in nil", &v1, 0xCu);
}

+ (void)processArrayConcurrently:(NSObject *)a3 number:queue:group:block:.cold.1(void *a1, int a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134218240;
  v6 = [a1 count];
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_26B26B000, a3, OS_LOG_TYPE_ERROR, "Failed to split array (count: %lu) to %d parts. Bailing out", &v5, 0x12u);
}

@end