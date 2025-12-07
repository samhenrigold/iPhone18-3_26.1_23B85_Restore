@interface NSDictionary(HFAdditions)
- (uint64_t)hf_appendJSONLToURL:()HFAdditions error:;
- (uint64_t)hf_writeJSONToURL:()HFAdditions error:;
@end

@implementation NSDictionary(HFAdditions)

- (uint64_t)hf_appendJSONLToURL:()HFAdditions error:
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [v4 URLByDeletingLastPathComponent];
  v29 = 0;
  [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v29];
  v7 = v29;

  if (!v7)
  {
    v28 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:self options:0 error:&v28];
    v8 = v28;
    if (v8)
    {
      v11 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v8;
        _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Failed to serialize log entry to JSON: %@", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_26;
    }

    v11 = [v10 mutableCopy];
    v12 = [@"\n" dataUsingEncoding:4];
    [v11 appendData:v12];

    path = [v4 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      v27 = 0;
      v15 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v4 error:&v27];
      v16 = v27;
      if (v16)
      {
        v17 = v16;
        v18 = HFLogForCategory(0x17uLL);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
LABEL_23:
          v9 = 0;
LABEL_24:

          goto LABEL_25;
        }

        *buf = 138412290;
        v31 = v17;
        v19 = "Could not create file handle for existing file: %@";
LABEL_29:
        _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
        goto LABEL_23;
      }

      [v15 seekToEndOfFile];
    }

    else
    {
      path2 = [v4 path];
      [defaultManager createFileAtPath:path2 contents:0 attributes:0];

      v26 = 0;
      v15 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v4 error:&v26];
      v21 = v26;
      if (v21)
      {
        v17 = v21;
        domain = [v21 domain];
        if ([domain isEqualToString:*MEMORY[0x277CCA050]])
        {
          code = [v17 code];

          if (code == 260)
          {
            v9 = 0;
LABEL_25:

LABEL_26:
            goto LABEL_27;
          }
        }

        else
        {
        }

        v18 = HFLogForCategory(0x17uLL);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_23;
        }

        *buf = 138412290;
        v31 = v17;
        v19 = "Could not create file handle for new file: %@";
        goto LABEL_29;
      }
    }

    [v15 writeData:v11];
    [v15 closeFile];
    v18 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      path3 = [v4 path];
      *buf = 138412290;
      v31 = path3;
      _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "Appended JSONL to '%@'", buf, 0xCu);
    }

    v17 = 0;
    v9 = 1;
    goto LABEL_24;
  }

  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v31 = v7;
    _os_log_error_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_ERROR, "Failed to create debug log directory: %@", buf, 0xCu);
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (uint64_t)hf_writeJSONToURL:()HFAdditions error:
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByDeletingLastPathComponent = [v6 URLByDeletingLastPathComponent];
  v25 = 0;
  [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
  v9 = v25;

  if (!v9)
  {
    v24 = 0;
    v13 = [MEMORY[0x277CCAAA0] dataWithJSONObject:self options:1 error:&v24];
    v14 = v24;
    if (v14)
    {
      v15 = HFLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v14;
        _os_log_error_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_ERROR, "Failed to serialize log entry to JSON: %@", buf, 0xCu);
      }

      if (a4)
      {
        v16 = v14;
        v12 = 0;
        *a4 = v14;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_21;
    }

    v23 = 0;
    v12 = [v13 writeToURL:v6 options:1 error:&v23];
    v17 = v23;
    v18 = v17;
    if (v12)
    {
      v19 = HFLogForCategory(0);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      path = [v6 path];
      *buf = 138412290;
      v27 = path;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Wrote JSON to '%@'", buf, 0xCu);
    }

    else
    {
      if (a4)
      {
        v21 = v17;
        *a4 = v18;
      }

      v19 = HFLogForCategory(0);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      path = [v18 localizedDescription];
      *buf = 138412290;
      v27 = path;
      _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Write failed: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  v10 = HFLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "Failed to create debug log directory: %@", buf, 0xCu);
  }

  if (a4)
  {
    v11 = v9;
    v12 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_22:

  return v12;
}

@end