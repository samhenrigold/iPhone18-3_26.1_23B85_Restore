@interface NSFileManager(VoiceServices)
- (uint64_t)directorySize:()VoiceServices;
- (void)cleanDirectory:()VoiceServices withDateOlderThan:;
- (void)cleanDirectory:()VoiceServices withLRULimit:;
- (void)removeDirectory:()VoiceServices;
@end

@implementation NSFileManager(VoiceServices)

- (void)cleanDirectory:()VoiceServices withDateOlderThan:
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:a3];
  v8 = *MEMORY[0x277CBE7A8];
  v34[0] = *MEMORY[0x277CBE7A8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  selfCopy = self;
  v21 = v7;
  v10 = [self contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v9 options:5 error:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        v24 = 0;
        [v16 getResourceValue:&v24 forKey:v8 error:0];
        v17 = v24;
        [v17 timeIntervalSinceDate:v6];
        if (v18 <= 0.0)
        {
          v23 = 0;
          [selfCopy removeItemAtURL:v16 error:&v23];
          v19 = v23;
          if (v19)
          {
            v20 = VSGetLogDefault();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v30 = v16;
              v31 = 2112;
              v32 = v19;
              _os_log_error_impl(&dword_272850000, v20, OS_LOG_TYPE_ERROR, "Can't remove file '%@', error: %@", buf, 0x16u);
            }
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v13);
  }
}

- (void)cleanDirectory:()VoiceServices withLRULimit:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = mach_absolute_time();
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v37[0] = *MEMORY[0x277CBE7A8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
  v10 = [self contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v9 options:5 error:0];

  if ([v10 count] >= a4)
  {
    v21 = v7;
    v25 = v8;
    v26 = v6;
    [v10 sortedArrayUsingComparator:&__block_literal_global_347];
    v24 = v10;
    v23 = v22 = a4;
    v11 = [v23 subarrayWithRange:{0, objc_msgSend(v10, "count") - a4}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v27 = 0;
          [self removeItemAtURL:v16 error:&v27];
          v17 = v27;
          if (v17)
          {
            v18 = VSGetLogDefault();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v33 = v16;
              v34 = 2112;
              v35[0] = v17;
              _os_log_error_impl(&dword_272850000, v18, OS_LOG_TYPE_ERROR, "Can't remove file '%@', error: %@", buf, 0x16u);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v13);
    }

    v19 = VSGetLogDefault();
    v8 = v25;
    v6 = v26;
    v10 = v24;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = mach_absolute_time() - v21;
      if (VSAbsoluteTimeToSecond_onceToken != -1)
      {
        dispatch_once(&VSAbsoluteTimeToSecond_onceToken, &__block_literal_global_7);
      }

      *buf = 138412802;
      v33 = v26;
      v34 = 1024;
      LODWORD(v35[0]) = v22;
      WORD2(v35[0]) = 2048;
      *(v35 + 6) = *&VSAbsoluteTimeToSecond_clockFactor * v20;
      _os_log_debug_impl(&dword_272850000, v19, OS_LOG_TYPE_DEBUG, "Cleaned directory: '%@', LRU limit: %d, latency: %f", buf, 0x1Cu);
    }
  }
}

- (void)removeDirectory:()VoiceServices
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  v3 = [self contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:4 error:0];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self removeItemAtURL:*(*(&v9 + 1) + 8 * v8++) error:{0, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (uint64_t)directorySize:()VoiceServices
{
  v43[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v6 = *MEMORY[0x277CBE7D0];
  v43[0] = *MEMORY[0x277CBE7D0];
  v7 = 0x277CBE000uLL;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
  v36 = 0;
  v9 = [self contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v8 options:4 error:&v36];
  v10 = v36;

  if (v10)
  {
    code = [v10 code];
    v12 = VSGetLogDefault();
    v13 = v12;
    if (code == 260)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v4;
        _os_log_impl(&dword_272850000, v13, OS_LOG_TYPE_INFO, "No cache directory from which to get the size: %@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v40 = v4;
      v41 = 2112;
      v42 = v10;
      _os_log_error_impl(&dword_272850000, v13, OS_LOG_TYPE_ERROR, "Error getting cache path: %@, error: %@", buf, 0x16u);
    }

    goto LABEL_20;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (!v14)
  {
    v10 = 0;
LABEL_20:
    v25 = 0;
    goto LABEL_21;
  }

  v15 = v14;
  v27 = v9;
  v28 = v4;
  v10 = 0;
  v30 = 0;
  v16 = *v33;
  obj = v13;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      v18 = v10;
      if (*v33 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v32 + 1) + 8 * i);
      v37 = v6;
      v20 = v7;
      v21 = [*(v7 + 2656) arrayWithObjects:&v37 count:{1, v27, v28}];
      v31 = v10;
      v22 = [v19 resourceValuesForKeys:v21 error:&v31];
      v10 = v31;

      if (v10)
      {
        v23 = VSGetLogDefault();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          path = [v19 path];
          *buf = 138412546;
          v40 = path;
          v41 = 2112;
          v42 = v10;
          _os_log_error_impl(&dword_272850000, v23, OS_LOG_TYPE_ERROR, "Unable to get URL: %@, URL resources: %@", buf, 0x16u);
        }
      }

      else
      {
        v23 = [v22 objectForKeyedSubscript:v6];
        v30 += [v23 longLongValue];
      }

      v7 = v20;
    }

    v13 = obj;
    v15 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  }

  while (v15);
  v9 = v27;
  v4 = v28;
  v25 = v30;
LABEL_21:

  return v25;
}

@end