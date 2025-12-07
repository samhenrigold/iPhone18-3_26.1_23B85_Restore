@interface BLSHTailspinLogWriter
+ (BOOL)isTailspinAvailable;
- (BLSHTailspinLogWriter)initWithReason:(id)reason;
- (void)writeTailspinLogWithCompletion:(id)completion;
@end

@implementation BLSHTailspinLogWriter

- (BLSHTailspinLogWriter)initWithReason:(id)reason
{
  reasonCopy = reason;
  v9.receiver = self;
  v9.super_class = BLSHTailspinLogWriter;
  v5 = [(BLSHTailspinLogWriter *)&v9 init];
  if (v5)
  {
    v6 = [reasonCopy copy];
    reason = v5->_reason;
    v5->_reason = v6;

    if (initWithReason__onceToken != -1)
    {
      [BLSHTailspinLogWriter initWithReason:];
    }
  }

  return v5;
}

void __40__BLSHTailspinLogWriter_initWithReason___block_invoke()
{
  v2 = dispatch_get_global_queue(25, 0);
  v0 = dispatch_queue_create_with_target_V2("com.apple.backlightservices.tailspinLogWriter", 0, v2);
  v1 = __queue;
  __queue = v0;
}

+ (BOOL)isTailspinAvailable
{
  if (isTailspinAvailable_onceToken != -1)
  {
    +[BLSHTailspinLogWriter isTailspinAvailable];
  }

  return isTailspinAvailable___tailspinAvailable;
}

void __44__BLSHTailspinLogWriter_isTailspinAvailable__block_invoke()
{
  isTailspinAvailable___tailspinAvailable = dlopen_preflight("/usr/lib/libtailspin.dylib");
  if ((isTailspinAvailable___tailspinAvailable & 1) == 0)
  {
    v0 = bls_diagnostics_log();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_21FD11000, v0, OS_LOG_TYPE_INFO, "dlopen_preflight failed - libtailspin is not available", v1, 2u);
    }
  }
}

- (void)writeTailspinLogWithCompletion:(id)completion
{
  v39[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (self->_completion)
  {
    [(BLSHTailspinLogWriter *)a2 writeTailspinLogWithCompletion:?];
  }

  v6 = completionCopy;
  if (!completionCopy)
  {
    [(BLSHTailspinLogWriter *)a2 writeTailspinLogWithCompletion:?];
  }

  v7 = [completionCopy copy];
  completion = self->_completion;
  self->_completion = v7;

  date = [MEMORY[0x277CBEAA8] date];
  bls_fileNameString = [date bls_fileNameString];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"BacklightServices-%@.tailspin", bls_fileNameString];
  _tailspinFilesDirectory = [(BLSHTailspinLogWriter *)self _tailspinFilesDirectory];
  v13 = [_tailspinFilesDirectory stringByAppendingPathComponent:v11];
  v14 = [v13 cStringUsingEncoding:4];
  if (v14)
  {
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v37 = 0;
    v17 = [v16 createDirectoryAtPath:_tailspinFilesDirectory withIntermediateDirectories:1 attributes:0 error:&v37];
    v18 = v37;
    if ((v17 & 1) == 0)
    {
      v19 = bls_diagnostics_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(BLSHTailspinLogWriter *)_tailspinFilesDirectory writeTailspinLogWithCompletion:v18, v19];
      }
    }

    v33 = v18;
    v20 = open(v15, 1538, 432);
    if (v20 < 0)
    {
      v25 = bls_diagnostics_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(BLSHTailspinLogWriter *)v13 writeTailspinLogWithCompletion:v20, v25];
      }

      [(BLSHTailspinLogWriter *)self _finish:0];
      goto LABEL_23;
    }

    v32 = v16;
    p_isa = self->_reason;
    v22 = [(NSString *)p_isa length];
    if (v22)
    {
      if (v22 < 0x8D)
      {
LABEL_20:
        v26 = *MEMORY[0x277D82D30];
        v38[0] = *MEMORY[0x277D82D10];
        v38[1] = v26;
        v39[0] = p_isa;
        v39[1] = MEMORY[0x277CBEC28];
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
        v28 = bls_diagnostics_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21FD11000, v28, OS_LOG_TYPE_DEFAULT, "dumping tailspin", buf, 2u);
        }

        v29 = self->_reason;
        v34 = v13;
        v35 = v29;
        v30 = v29;
        selfCopy = self;
        tailspin_dump_output_with_options();

        v16 = v32;
LABEL_23:

        goto LABEL_24;
      }

      v23 = [(NSString *)p_isa substringToIndex:139];
    }

    else
    {
      v23 = @"BLS Watchdog";
    }

    p_isa = &v23->isa;
    goto LABEL_20;
  }

  v24 = bls_diagnostics_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [(BLSHTailspinLogWriter *)v13 writeTailspinLogWithCompletion:v24];
  }

  [(BLSHTailspinLogWriter *)self _finish:0];
LABEL_24:
}

void __56__BLSHTailspinLogWriter_writeTailspinLogWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = bls_diagnostics_log();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEFAULT, "Wrote tailspin file to path %{public}@ for reason %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __56__BLSHTailspinLogWriter_writeTailspinLogWithCompletion___block_invoke_cold_1(a1, v6);
  }

  close(*(a1 + 56));
  [v4 _finish:a2];
}

void __33__BLSHTailspinLogWriter__finish___block_invoke(uint64_t a1)
{
  (*(*(*(a1 + 32) + 16) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

- (void)writeTailspinLogWithCompletion:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"can't call writeTailspinLogWithCompletion while we have a tailspin in flight"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"BLSHTailspinLogWriter.m";
    v10 = 1024;
    v11 = 65;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)writeTailspinLogWithCompletion:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "failed to create dir %@:%@", &v3, 0x16u);
}

- (void)writeTailspinLogWithCompletion:(os_log_t)log .cold.3(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_21FD11000, log, OS_LOG_TYPE_ERROR, "Failed to open file descriptor for diagnostics:%d, %{public}@", v3, 0x12u);
}

- (void)writeTailspinLogWithCompletion:(uint64_t)a1 .cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "Could not get filepath for %@", &v2, 0xCu);
}

- (void)writeTailspinLogWithCompletion:(const char *)a1 .cold.5(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"BLSHTailspinLogWriter requires a completion"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_1();
    v9 = @"BLSHTailspinLogWriter.m";
    v10 = 1024;
    v11 = 66;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __56__BLSHTailspinLogWriter_writeTailspinLogWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_21FD11000, a2, OS_LOG_TYPE_ERROR, "Failed to write tailspin file to path %{public}@ for reason %{public}@", &v4, 0x16u);
}

@end