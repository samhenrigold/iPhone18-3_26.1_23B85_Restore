@interface FPTask
+ (BOOL)exec:(id)exec error:(id *)error;
+ (BOOL)exec:(id)exec stdoutString:(id *)string stderrString:(id *)stderrString error:(id *)error;
+ (id)sanitizeStringForFilename:(id)filename;
+ (id)simulatorRoot;
+ (id)taskWithArguments:(id)arguments;
+ (id)taskWithCommand:(id)command;
+ (id)taskWithCommandWithArguments:(id)arguments;
+ (id)taskWithRedirectedOutputAndCommand:(id)command;
- (FPTask)init;
- (const)newPreparedArgvArray;
- (int)_prepareRedirections:(void *)redirections;
- (int)exec;
- (int)execAsync;
- (void)exec;
- (void)execAsync;
- (void)resetRedirect;
- (void)setCommand:(id)command;
- (void)setCommandWithArguments:(id)arguments;
@end

@implementation FPTask

+ (id)simulatorRoot
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  environment = [processInfo environment];

  v4 = [environment objectForKeyedSubscript:@"SIMULATOR_ROOT"];

  return v4;
}

- (FPTask)init
{
  v7.receiver = self;
  v7.super_class = FPTask;
  v2 = [(FPTask *)&v7 init];
  v3 = v2;
  if (v2)
  {
    standardOutput = v2->_standardOutput;
    v2->_standardOutput = 0;

    standardError = v3->_standardError;
    v3->_standardError = 0;
  }

  return v3;
}

+ (id)taskWithRedirectedOutputAndCommand:(id)command
{
  v4 = MEMORY[0x1E696AEC0];
  commandCopy = command;
  v6 = [[v4 alloc] initWithFormat:commandCopy arguments:&v12];

  v7 = [self taskWithCommandWithArguments:v6];

  fileHandleWithStandardError = [MEMORY[0x1E696AC00] fileHandleWithStandardError];
  [v7 setStandardError:fileHandleWithStandardError];

  fileHandleWithStandardOutput = [MEMORY[0x1E696AC00] fileHandleWithStandardOutput];
  [v7 setStandardOutput:fileHandleWithStandardOutput];

  return v7;
}

+ (id)taskWithCommand:(id)command
{
  v4 = MEMORY[0x1E696AEC0];
  commandCopy = command;
  v6 = [[v4 alloc] initWithFormat:commandCopy arguments:&v10];

  v7 = [self taskWithCommandWithArguments:v6];

  return v7;
}

+ (id)taskWithCommandWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v4 = objc_alloc_init(FPTask);
  [(FPTask *)v4 setCommandWithArguments:argumentsCopy];

  return v4;
}

+ (id)taskWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v5 = objc_alloc_init(self);
  [v5 setArgv:argumentsCopy];

  return v5;
}

+ (id)sanitizeStringForFilename:(id)filename
{
  filenameCopy = filename;
  if (filenameCopy)
  {
    v4 = filenameCopy;
    v5 = [filenameCopy stringByReplacingOccurrencesOfString:@"/" withString:@":"];

    v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:@"'""];
    v7 = ;

    v8 = [v7 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

    if (![(__CFString *)v8 length])
    {

      v8 = @"empty-string";
    }
  }

  else
  {
    v8 = @"nil";
  }

  return v8;
}

- (void)setCommand:(id)command
{
  v4 = MEMORY[0x1E696AEC0];
  commandCopy = command;
  v6 = [[v4 alloc] initWithFormat:commandCopy arguments:&v7];

  [(FPTask *)self setCommandWithArguments:v6];
}

- (void)setCommandWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  array = [MEMORY[0x1E695DF70] array];
  if (![argumentsCopy length])
  {
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = 1;
  do
  {
    v11 = [argumentsCopy characterAtIndex:v6];
    if (v11 != 39 || (v8 & 1) != 0)
    {
      if ((v11 != 34) | v5 & 1)
      {
        v13 = v11 != 32;
        v12 = argumentsCopy;
        if ((v13 | v5 | v8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = argumentsCopy;
        if ((v8 & 1) == 0)
        {
          v5 = 0;
          v8 = 1;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = argumentsCopy;
      if ((v5 & 1) == 0)
      {
        v8 = 0;
        v5 = 1;
LABEL_17:
        v9 = v6;
LABEL_18:
        v17 = v10;
        goto LABEL_19;
      }
    }

    if (v10 != 1)
    {
      v14 = [v12 substringWithRange:{v7, v10 - 1}];
      v15 = v14;
      if (v9 != -1)
      {
        v16 = [v14 stringByReplacingCharactersInRange:v9 - v7 withString:{1, &stru_1F1F94B20}];

        v15 = v16;
      }

      [array addObject:v15];

      v12 = argumentsCopy;
    }

    v5 = 0;
    v8 = 0;
    v17 = 0;
    v7 += v10;
    v9 = -1;
LABEL_19:
    v10 = v17 + 1;
    ++v6;
  }

  while (v6 < [v12 length]);
  if (v17)
  {
    v18 = [argumentsCopy substringWithRange:{v7, v17}];
    [array addObject:v18];
  }

LABEL_22:
  [(FPTask *)self setArgv:array];
}

- (int)_prepareRedirections:(void *)redirections
{
  v13 = *MEMORY[0x1E69E9840];
  standardOutput = [(FPTask *)self standardOutput];

  if (standardOutput)
  {
    standardOutput2 = [(FPTask *)self standardOutput];
    LODWORD(standardError) = posix_spawn_file_actions_adddup2(redirections, [standardOutput2 fileDescriptor], 1);

    if (standardError)
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  standardError = [(FPTask *)self standardError];

  if (standardError)
  {
    standardError2 = [(FPTask *)self standardError];
    LODWORD(standardError) = posix_spawn_file_actions_adddup2(redirections, [standardError2 fileDescriptor], 2);

    if (standardError)
    {
      v8 = fp_current_or_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        v11 = 136315138;
        v12 = strerror(standardError);
        _os_log_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to perform spawn action (%s).", &v11, 0xCu);
      }

LABEL_9:
    }
  }

  return standardError;
}

- (const)newPreparedArgvArray
{
  argv = [(FPTask *)self argv];
  v4 = malloc_type_malloc(8 * [argv count] + 8, 0x50040EE9192B6uLL);

  argv2 = [(FPTask *)self argv];
  v6 = [argv2 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      argv3 = [(FPTask *)self argv];
      v9 = [argv3 objectAtIndexedSubscript:v7];

      if ([v9 hasPrefix:@"~"])
      {
        stringByExpandingTildeInPath = [v9 stringByExpandingTildeInPath];
        v4[v7] = [stringByExpandingTildeInPath fileSystemRepresentation];
      }

      else
      {
        v4[v7] = [v9 UTF8String];
      }

      ++v7;
      argv4 = [(FPTask *)self argv];
      v12 = [argv4 count];
    }

    while (v7 < v12);
  }

  argv5 = [(FPTask *)self argv];
  v4[[argv5 count]] = 0;

  return v4;
}

- (int)execAsync
{
  v30 = *MEMORY[0x1E69E9840];
  argv = [(FPTask *)self argv];
  if (![argv count])
  {
    [FPTask execAsync];
  }

  v25 = 0;

  newPreparedArgvArray = [(FPTask *)self newPreparedArgvArray];
  v24 = 0;
  v5 = posix_spawn_file_actions_init(&v24);
  if (v5)
  {
    v6 = v5;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = strerror(v6);
      *buf = 136315138;
      v27 = v8;
      v9 = "[WARNING] Unable to initialize the file actions properly (%s).";
LABEL_8:
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v10 = [(FPTask *)self _prepareRedirections:&v24];
  v11 = fp_current_or_default_log();
  v7 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = strerror(v10);
      *buf = 136315138;
      v27 = v12;
      v9 = "[WARNING] Unable to setup redirections properly (%s).";
      goto LABEL_8;
    }

LABEL_9:

    v13 = 0;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(FPTask *)self execAsync];
  }

  v19 = posix_spawnp(&v25, *newPreparedArgvArray, &v24, 0, newPreparedArgvArray, *MEMORY[0x1E69E97E8]);
  if (v19)
  {
    v20 = v19;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      argv2 = [(FPTask *)self argv];
      v22 = [argv2 componentsJoinedByString:{@", "}];
      v23 = strerror(v20);
      *buf = 138412546;
      v27 = v22;
      v28 = 2080;
      v29 = v23;
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to spawn a new process (argv: [%@], error: %s).", buf, 0x16u);
    }

    goto LABEL_9;
  }

  v13 = 1;
LABEL_10:
  free(newPreparedArgvArray);
  v14 = posix_spawn_file_actions_destroy(&v24);
  if (v14)
  {
    v15 = v14;
    v16 = fp_current_or_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = strerror(v15);
      *buf = 136315138;
      v27 = v17;
      _os_log_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to destroy the file actions properly (%s).", buf, 0xCu);
    }
  }

  if (v13)
  {
    return v25;
  }

  else
  {
    return -1;
  }
}

- (int)exec
{
  v38 = *MEMORY[0x1E69E9840];
  argv = [(FPTask *)self argv];
  if (![argv count])
  {
    [FPTask exec];
  }

  newPreparedArgvArray = [(FPTask *)self newPreparedArgvArray];
  v33 = 0;
  v5 = posix_spawn_file_actions_init(&v33);
  if (v5)
  {
    v6 = v5;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = strerror(v6);
      *buf = 136315138;
      v35 = v8;
      _os_log_impl(&dword_1AAAE1000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to initialize the file actions properly (%s).", buf, 0xCu);
    }
  }

  v9 = [(FPTask *)self _prepareRedirections:&v33];
  if (v9)
  {
    v10 = v9;
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = strerror(v10);
      *buf = 136315138;
      v35 = v12;
      _os_log_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to setup redirections properly (%s).", buf, 0xCu);
    }
  }

  else
  {
    v31 = 0;
    v13 = signal(20, 0);
    v32 = 2;
    pthread_sigmask(1, &v32, 0);
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(FPTask *)self execAsync];
    }

    v15 = posix_spawnp(&v31, *newPreparedArgvArray, &v33, 0, newPreparedArgvArray, *MEMORY[0x1E69E97E8]);
    if (v15)
    {
      v10 = v15;
      v16 = fp_current_or_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        argv2 = [(FPTask *)self argv];
        v18 = [argv2 componentsJoinedByString:{@", "}];
        v19 = strerror(v10);
        *buf = 138412546;
        v35 = v18;
        v36 = 2080;
        v37 = v19;
        _os_log_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to spawn a new process (argv: [%@], error: %s).", buf, 0x16u);
      }

      self->_waitStatus = 0;
    }

    else
    {
      v20 = dispatch_get_global_queue(0, 0);
      v21 = dispatch_source_create(MEMORY[0x1E69E9700], 2uLL, 0, v20);

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __14__FPTask_exec__block_invoke;
      v29[3] = &unk_1E793DE38;
      v30 = v31;
      v29[4] = self;
      dispatch_source_set_event_handler(v21, v29);
      dispatch_resume(v21);
      while (waitpid(v31, &self->_waitStatus, 0) < 0)
      {
        if (*__error() != 4)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [FPTask exec];
          }

          break;
        }
      }

      waitStatus = self->_waitStatus;
      if ((waitStatus & 0x7F) != 0)
      {
        v10 = 0;
      }

      else
      {
        v10 = BYTE1(waitStatus);
      }

      dispatch_source_cancel(v21);
    }

    pthread_sigmask(2, &v32, 0);
    if (v13 != -1)
    {
      signal(20, v13);
    }
  }

  free(newPreparedArgvArray);
  v24 = posix_spawn_file_actions_destroy(&v33);
  if (v24)
  {
    v25 = v24;
    v26 = fp_current_or_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = strerror(v25);
      *buf = 136315138;
      v35 = v27;
      _os_log_impl(&dword_1AAAE1000, v26, OS_LOG_TYPE_DEFAULT, "[WARNING] Unable to destroy the file actions properly (%s).", buf, 0xCu);
    }
  }

  return v10;
}

void __14__FPTask_exec__block_invoke(uint64_t a1)
{
  fwrite("\b\b", 2uLL, 1uLL, *MEMORY[0x1E69E9848]);
  kill(*(a1 + 40), 9);
  v2 = [*(a1 + 32) standardError];

  if (v2)
  {
    v3 = [*(a1 + 32) standardError];
    dprintf([v3 fileDescriptor], "\n\n === Aborted by user");
  }
}

+ (BOOL)exec:(id)exec stdoutString:(id *)string stderrString:(id *)stderrString error:(id *)error
{
  v64[1] = *MEMORY[0x1E69E9840];
  execCopy = exec;
  pipe = [MEMORY[0x1E696AE00] pipe];
  pipe2 = [MEMORY[0x1E696AE00] pipe];
  v10 = [FPTask taskWithCommandWithArguments:execCopy];
  fileHandleForWriting = [pipe fileHandleForWriting];
  [v10 setStandardOutput:fileHandleForWriting];

  fileHandleForWriting2 = [pipe2 fileHandleForWriting];
  [v10 setStandardError:fileHandleForWriting2];

  execAsync = [v10 execAsync];
  fileHandleForWriting3 = [pipe fileHandleForWriting];
  [fileHandleForWriting3 closeFile];

  fileHandleForWriting4 = [pipe2 fileHandleForWriting];
  [fileHandleForWriting4 closeFile];

  if ((execAsync & 0x80000000) == 0)
  {
    v16 = dispatch_queue_create("queue for reading the task output and error streams concurrently", MEMORY[0x1E69E96A8]);
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__24;
    v55 = __Block_byref_object_dispose__24;
    v56 = 0;
    if (string)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__FPTask_exec_stdoutString_stderrString_error___block_invoke;
      block[3] = &unk_1E793AA20;
      v50 = &v51;
      v49 = pipe;
      dispatch_async(v16, block);
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__24;
    v46 = __Block_byref_object_dispose__24;
    v47 = 0;
    if (stderrString)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53;
      v39[3] = &unk_1E793AA20;
      v41 = &v42;
      v40 = pipe2;
      dispatch_async(v16, v39);
    }

    dispatch_barrier_sync(v16, &__block_literal_global_47);
    if (string)
    {
      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      *string = [v17 initWithData:v52[5] encoding:4];
    }

    if (stderrString)
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      *stderrString = [v18 initWithData:v43[5] encoding:4];
    }

    v38 = 0;
    while (waitpid(execAsync, &v38, 0) < 0)
    {
      if (*__error() != 4)
      {
        v19 = fp_current_or_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *__error();
          v21 = __error();
          v22 = strerror(*v21);
          [FPTask exec:v22 stdoutString:buf stderrString:v20 error:v19];
        }

        if (error)
        {
          [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error()];
          *error = v23 = 0;
          goto LABEL_36;
        }

        goto LABEL_35;
      }
    }

    v25 = v38 & 0x7F;
    if (v25 == 127)
    {
      v25 = (v38 >> 8);
    }

    else if ((v38 & 0x7F) == 0)
    {
      v26 = BYTE1(v38);
      if (error && BYTE1(v38))
      {
        v59 = *MEMORY[0x1E696A578];
        v34 = BYTE1(v38);
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task finished with exit code %d", BYTE1(v38)];
        v60 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v35 = [v28 mutableCopy];

        if (string)
        {
          [v35 setObject:*string forKeyedSubscript:@"stdout"];
        }

        if (stderrString)
        {
          [v35 setObject:*stderrString forKeyedSubscript:@"stderr"];
        }

        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"FPTaskErrorDomain" code:2 userInfo:v35];

        v26 = v34;
      }

      v23 = v26 == 0;
LABEL_36:
      _Block_object_dispose(&v42, 8);

      _Block_object_dispose(&v51, 8);
      goto LABEL_37;
    }

    v29 = fp_current_or_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v62 = v25;
      _os_log_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_INFO, "[INFO] command terminated due to signal %d", buf, 8u);
    }

    if (error)
    {
      v30 = MEMORY[0x1E696ABC0];
      v57 = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Task terminated due to signal %d", v25];
      v58 = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [v30 errorWithDomain:@"FPTaskErrorDomain" code:3 userInfo:v32];
    }

LABEL_35:
    v23 = 0;
    goto LABEL_36;
  }

  if (error)
  {
    v24 = MEMORY[0x1E696ABC0];
    v63 = *MEMORY[0x1E696A578];
    v64[0] = @"Failed to spawn task";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
    [v24 errorWithDomain:@"FPTaskErrorDomain" code:-1 userInfo:v16];
    *error = v23 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v23 = 0;
LABEL_38:

  return v23;
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fileHandleForReading];
  v8 = 0;
  v3 = [v2 readDataToEndOfFileAndReturnError:&v8];
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_cold_1(v4);
    }
  }
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53(uint64_t a1)
{
  v2 = [*(a1 + 32) fileHandleForReading];
  v8 = 0;
  v3 = [v2 readDataToEndOfFileAndReturnError:&v8];
  v4 = v8;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  if (v4)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53_cold_1(v4);
    }
  }
}

+ (BOOL)exec:(id)exec error:(id *)error
{
  v6 = 0;
  v7 = 0;
  v4 = [FPTask exec:exec stdoutString:&v7 stderrString:&v6 error:error];

  return v4;
}

- (void)resetRedirect
{
  [(FPTask *)self setStandardOutput:0];

  [(FPTask *)self setStandardError:0];
}

- (void)execAsync
{
  argv = [self argv];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_9(&dword_1AAAE1000, v2, v3, "[DEBUG] Spawning FPTask with command '%@'", v4, v5, v6, v7);
}

- (void)exec
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

+ (void)exec:(uint64_t)a1 stdoutString:(uint8_t *)buf stderrString:(int)a3 error:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109378;
  *(buf + 1) = a3;
  *(buf + 4) = 2080;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_ERROR, "[ERROR] waitpid() failed with errno %d, %s", buf, 0x12u);
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __47__FPTask_exec_stdoutString_stderrString_error___block_invoke_53_cold_1(void *a1)
{
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end